unit UntDailyTotals;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, ToolWin, DB, Vcl.StdCtrls, Vcl.ExtCtrls, ResourceLocalizer;

type
  TFrmDailyTotals = class(TForm)
    DBGrid4: TDBGrid;
    Panel1: TPanel;
    ToolButton10: TButton;
    TlBtnPrevious: TButton;
    TlBtnNext: TButton;
    ToolButton16: TButton;
    ToolButton17: TButton;
    TlBtnRefresh: TButton;
    ToolButton23: TButton;
    ToolButton6: TButton;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    BtnTips: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure TlBtnPostClick(Sender: TObject);
    procedure TlBtnCancelClick(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure TlBtnPreviousClick(Sender: TObject);
    procedure TlBtnNextClick(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
    procedure ToolButton23Click(Sender: TObject);
    procedure TlBtnRefreshClick(Sender: TObject);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtnTipsClick(Sender: TObject);
    procedure language;
    procedure FormShow(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    procedure PostDailyTotals(ID: Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDailyTotals: TFrmDailyTotals;

implementation

uses UntDMMidas, UntEditDailyTotals, UntRecapDetail, untMain, UntQueries,
  UntCommon, UntCommonPOS, UntSecurity, UntTips;

{$R *.dfm}

procedure TFrmDailyTotals.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  begin
    DMMidas.CDSDailyTotals.Active := False;
    Action := caFree;
    FrmDailyTotals := NIL;
  end;
end;

procedure TFrmDailyTotals.FormCreate(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSPasswords.Close;
    CDSPasswords.CommandText := 'Select * from passwords order by username';
    CDSPasswords.Open;
    DateTimePicker1.Date := Date;
    DateTimePicker1Change(Self);
    //if CDSPasswordsPOS_CUADRE_ADMINISTRADOR.Value = True then
    if CommonPOS.isAuthorized('',UserRights.TOT_EDITOLD,false) then
    begin
      DateTimePicker1.Enabled := True;
      TlBtnPrevious.Enabled :=  True;
      TlBtnNext.Enabled := True;
    end
    else
    begin
      DateTimePicker1.Enabled := False;
      TlBtnPrevious.Enabled :=  False;
      TlBtnNext.Enabled := False;
    end;
    //if CDSPasswordsPOS_VER_TOTAL_CASH.Value = False then
    if CommonPOS.isAuthorized('',UserRights.POS_VER_TOTAL_CASH,false) = False then
    begin
      DBGrid4.Columns[6].Visible := False;
      DBGrid4.Columns[5].Visible := False;
      DBGrid4.Columns[4].Visible := False;
    end;
  end;
end;

procedure TFrmDailyTotals.FormShow(Sender: TObject);
begin
  if FrmMain.LanguageStr = 'English' then
    language;
end;

procedure TFrmDailyTotals.language;
begin
  DBGrid4.Columns[1].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 193);
  DBGrid4.Columns[2].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 194);
  DBGrid4.Columns[3].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 195);
  DBGrid4.Columns[4].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 196);
  DBGrid4.Columns[5].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 197);
  DBGrid4.Columns[8].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 198);
  DBGrid4.Columns[9].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 199);
end;

procedure TFrmDailyTotals.ToolButton6Click(Sender: TObject);
Var
  IDtmp: Integer;
  TotalTax: Double;
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  DMMidas.CDSPasswords.Refresh;
  DMMidas.CDSPasswords.First;
  If DMMidas.CDSPasswords.Locate('INICIALES', Trim(AuthUser), [loCaseInsensitive]) Then

  if DMMidas.CDSPasswordsTOT_EDITOLD.Value = true then
  begin
    With DMMidas.CDSDailyTotals do
    begin
      Active := False;
      CommandText := 'Select * from DailyTotals where CONVERT(VARCHAR(10),SalesDate,101) = ' + #39 + DateToStr(DateTimePicker1.Date) + #39 + ' and STATUS_CAJA = ' + chr(39) + 'C' + chr(39)  + ' order by ID';
      Active := True;
    end;

    With DMMidas.CDSDailyTotals do
    Begin
      while not DMMidas.CDSDailyTotals.eof do
      begin
        IDtmp := DMMidas.CDSDailyTotalsID.Value;
        CommonPOS.DisconnectFromDatabase;
        With DMMidas.CALC_DAILYTOTALS_READ_REST do
        begin
          Prepare;
          ParamByName('@ID').Value := IDtmp;
          ExecProc;
        end;
        DMMidas.FDQuery1.SQL.Text := 'Update DAILYTOTALS SET STATUS_CUADRE = ' + CHR(39) + 'C' + CHR(39) + ', STATUS_CAJA = ' + CHR(39) + 'C' + CHR(39) + ' Where ID = ' + IntToStr(IDtmp);
        DMMidas.FDQuery1.ExecSQL;
        DMMidas.CDSDailyTotals.Next;
      end;
      if FrmMain.LanguageStr = 'English' then
        ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 327))
      else
      ShowMessage('Las cajas fuerón automaticamente cuadradas!');
      With DMMidas.CDSDailyTotals do
      begin
        Active := False;
        CommandText := 'Select * from DailyTotals where SalesDate = ' + #39 + DateToStr(DateTimePicker1.Date) + #39 + ' order by ID';
        Active := True;
      end;
    end;
  End
  else
  begin
    if FrmMain.LanguageStr = 'English' then
      ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 273))
    else
    ShowMessage('Usuario no autorizado');
  end;
end;

procedure TFrmDailyTotals.ToolButton7Click(Sender: TObject);
begin
  CommonPOS.SelectSalesTechLocal;
  DateTimePicker1.OnChange(nil);
end;

procedure TFrmDailyTotals.ToolButton9Click(Sender: TObject);
begin
  CommonPOS.SelectSalesTechMobile(CommonPOS.ServerNameSalesTech);
  DateTimePicker1.OnChange(nil);
end;

procedure TFrmDailyTotals.TlBtnPostClick(Sender: TObject);
begin
  If DMMidas.CDSDailyTotals.ApplyUpdates(-1) = 0 then
  begin
    TlBtnPrevious.Enabled := True;
    TlBtnNext.Enabled := True;
  end;
end;

procedure TFrmDailyTotals.TlBtnCancelClick(Sender: TObject);
begin
  DMMidas.CDSDailyTotals.CancelUpdates;
  TlBtnPrevious.Enabled := True;
  TlBtnNext.Enabled := True;
end;

procedure TFrmDailyTotals.BtnTipsClick(Sender: TObject);
begin
  FrmTips := TFrmTips.Create(self);
  With FrmTips do
  begin
    ShowModal;
    Free;
  end;
end;

procedure TFrmDailyTotals.Button1Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmDailyTotals.DateTimePicker1Change(Sender: TObject);
begin
  With DMMidas.CDSDailyTotals do
  begin
    Active := False;
    CommandText := 'Select * from DailyTotals where CONVERT(VARCHAR(10),SalesDate,101)  = ' + #39 + DateToStr(DateTimePicker1.Date)+ #39 + ' order by ID';
    Active := True;
  end;
end;

procedure TFrmDailyTotals.TlBtnPreviousClick(Sender: TObject);
begin
  DateTimePicker1.Date := DateTimePicker1.Date - 1;
  DateTimePicker1Change(Self);
end;

procedure TFrmDailyTotals.TlBtnNextClick(Sender: TObject);
begin
  DateTimePicker1.Date := DateTimePicker1.Date + 1;
  DateTimePicker1Change(Self);
end;

procedure TFrmDailyTotals.ToolButton10Click(Sender: TObject);
Var
  Authorized: Boolean;
  Emploee: String;
  DateToSave: String;
  DTCurrent_Identity: Integer;
begin
  if CommonPOS.isAuthorized('POS_CUADRE_ADMINISTRADOR',UserRights.POS_CUADRE_ADMINISTRADOR, false) then
  begin
    With DMMidas do
    begin
      if CDSDailyTotals.Active = False then CDSDailyTotals.Active := True;
      SQLQuery.Close;
      SQLQuery.SQL.Text := 'select * from DAILYTOTALS Where (CONVERT(VARCHAR(10), SALESDATE,101) = ' + chr (39) + DateToStr(DateTimePicker1.Date) + chr(39) +        //Selects dailytotals available for EOD//
         ') and STATUS_CUADRE = ' + chr(39) + 'C' + chr(39) + ' and end_of_day = 0 and end_of_day_completed = 0';
      SQLQuery.Open;
      if SQLQuery.RecordCount = 0 then
      begin
        CommonPOS.ShowMessageStr('No records found for end of day.', 10, clBlack);
        exit
      end
      else
      begin
        if not CDSDailyTotals.Locate('REGISTER', 0,[]) then
        begin
          CommonPOS.DisconnectFromDatabase;
          With POS_INSERT_DAILYTOTALS do         //Inserts a daily total record wiht End of day = True(startbank = 0)//
          begin
            Prepare;
            ParamByName('@STARTBANK').Value := 0;
            ParamByName('@EMPLOYNUMBER').Value := Copy(CommonPOS.User,1,3);
            ParamByName('@REGISTER').Value := CommonPOS.RegisterNo;
            ExecProc;
            DTCurrent_Identity := ParamByName('@DTCurrent_Identity').Value;
          end;
          CDSDailyTotals.Close;
          CDSDailyTotals.CommandText := 'Select * from DAILYTOTALS where ID = ' + IntToStr(DTCurrent_Identity);
          CDSDailyTotals.Open;
          FrmMain.ValidPetty := True;
        end;
        CommonPOS.DisconnectFromDatabase;
        SQLQuery.Open;
        SQLQuery.First;
        while not SQLQuery.Eof do
        begin
          with CALC_DAILYTOTALS_READ do   //Adds values of daily totals available for this en
          begin
            Prepare;
            ParamByName('@ID').Value := DTCurrent_Identity;
            ParamByName('@TRANS_HEAD_ID').Value := SQLQuery.FieldByName('ID').Value;
            ParamByName('@TRANSACTIONDATE').Value := DateTimePicker1.Date;
            ExecProc;
          end;
          SQLQuery.Next;
        end;
        FrmEditDailyTotals := TFrmEditDailyTotals.Create(Self);
        With FrmEditDailyTotals, DMMidas.CDSDailyTotals do
        begin
          Edit;
          SpinEdit1.Value := FieldByName('Shift').asInteger;
          SpinEditNOCAJA.Value := FieldByName('Register').asInteger;
          ShowModal;
          If ModalResult = mrOK then
          begin
            FieldByName('Shift').asInteger := SpinEdit1.Value;
            FieldByName('Register').asInteger := SpinEditNOCAJA.Value;
            FieldByName('STATUS_CUADRE').asString := 'C';
            FieldByName('STATUS_CAJA').asString := 'C';
            With DMMidas do
            begin
              if (DTSDailyTotals.State = dsEdit) or (DTSDailyTotals.State = dsInsert) then     //post count fields//
                CDSDailyTotals.Post;
                CDSDailyTotals.ApplyUpdates(-1);
                SQLQuery.Close;
                SQLQuery.SQL.Text := 'update DAILYTOTALS set TOTAL_COUNT =  cashcount + athcount + PAYPALCOUNT + CCARDCOUNT + CHECKCOUNT + WICCOUNT - STARTBANK '+
                ' Where ID = ' + chr(39) + IntToStr(DTCurrent_Identity) + chr(39);
                SQLQuery.ExecSQL;

                SQLQuery.Close;
                SQLQuery.SQL.Text := 'update DAILYTOTALS set DIFFERENCE_AMOUNT = TOTAL_COUNT - TOTAL_READ' +
                ' Where ID = ' + chr(39) + IntToStr(DTCurrent_Identity) + chr(39);
                SQLQuery.ExecSQL;
                DateTimePicker1Change(Self);
            end;
          end
          else
            cancel;
        end;
        //Release;
        cdsDailytotals.Refresh;
      end;
    end;
  end;
end;

procedure TFrmDailyTotals.ToolButton16Click(Sender: TObject) ;
Var
  ExStep: Boolean;
  AuthUser: String;
  ID: Integer;
begin
  if DMMidas.CDSDailyTotalsREGISTER.Value > 0 then
  begin
    With DMMidas do
    begin
        Queries.OpenPasswordsIniciales(Trim(CDSDailyTotalsEMPLOYNUMBER.Value));
        //if CommonPOS.isPOS_Logedin('POS_LOGEADO', CDSPasswordsUSERNO.Value) = false then
        if (CDSPasswordsPOS_LOGEADO.Value = False) or (FormatDateTime('mm/dd/yyy', CDSDailyTotalsSALESDATE.AsDateTime) <> FormatDateTime('mm/dd/yyy', date)) then
        Begin
          if (DMMidas.CDSDailyTotalsSTATUS_CUADRE.Value = 'O') then
            ExStep := True
          else
          begin
            AuthUser := CommonPOS.User;
            ExStep := Trunc(DateTimePicker1.Date) = Date;
            If Not ExStep then
              ExStep := (DateTimePicker1.Date < Date) AND (CommonPOS.IsAuthorized('',UserRights.TOT_EDITOLD, false))
            else
              ExStep := (CommonPOS.IsAuthorized('',UserRights.TOT_EDIT, false));
          end;
          If (ExStep) then
          begin
            FrmEditDailyTotals := TFrmEditDailyTotals.Create(Self);
            With FrmEditDailyTotals, DMMidas.CDSDailyTotals do
            begin
              ID := CDSDailyTotalsID.Value;
              CommonPOS.DisconnectFromDatabase;
              if CDSDailyTotalsEND_OF_DAY.Value = True then
              begin
                CDSDailyTotals.close;
                CDSDailyTotals.CommandText := 'Select * from dailytotals where id = ' + chr(39) + IntToStr(id) + chr(39);
                CDSDailyTotals.Open ;
              end
              else
              begin
                With DMMidas.CALC_DAILYTOTALS_READ_REST do
                begin
                  Prepare;
                  ParamByName('@ID').Value := ID;
                  ExecProc;
                end;
              end;
              Edit;
              if CDSPASSWORDSPOS_MODIFY_PAYOUT.Value = false then
              begin
                //CDSDailyTotals.Refresh;
                CDSDailyTotalsPAYOUTCOUNT.Value :=  CDSDailyTotalsPAYOUTREAD.Value;
                DBEdit11.Enabled := False;
              end;
              SpinEdit1.Value := FieldByName('Shift').asInteger;
              SpinEditNOCAJA.Value := FieldByName('Register').asInteger;
              ShowModal;
              FieldByName('Shift').asInteger := SpinEdit1.Value;
              FieldByName('Register').asInteger := SpinEditNOCAJA.Value;
              If ModalResult = mrOK then
              begin
                FieldByName('STATUS_CUADRE').asString := 'C';
                FieldByName('STATUS_CAJA').asString := 'C';
              end
              else
              begin
                //FieldByName('STATUS_CUADRE').asString := 'O';
                //FieldByName('STATUS_CAJA').asString := 'O';
              end;
              if (DTSDailyTotals.State = dsEdit) or (DTSDailyTotals.State = dsInsert) then
              begin
                Queries.OpenPasswords('');
                CDSDailyTotals.Post;
                CDSDailyTotals.ApplyUpdates(-1);
                CDSDailyTotals.Refresh;
              end;
              if CDSDailyTotalsEND_OF_DAY.Value = True then
              begin
                DateTimePicker1Change(Self);
              end
              else
                PostDailyTotals(ID);
              CDSDailyTotals.Refresh;
              Release;
            end;
          end;
        end
        else
        begin
          if FrmMain.LanguageStr = 'English' then
            ShowMessage(DMMidas.CDSPasswordsUSERNAME.Value + ' ' + TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 328))
          else
          ShowMessage('Aviso: El usuario ' + DMMidas.CDSPasswordsUSERNAME.Value + ' esta logeado. No se puede cuadrar.');
        end;
    end;
  end;
end;

procedure TFrmDailyTotals.PostDailyTotals(ID: Integer);
begin
  With DMMidas do
  begin
    CommonPOS.DisconnectFromDatabase;
    With DMMidas.CALC_DAILYTOTALS_READ_REST do
    begin
      Prepare;
      ParamByName('@ID').Value := ID;
      ExecProc;
    end;
    CommonPOS.DisconnectFromDatabase;
    With DMMidas.CALC_DAILYTOTALS_READ_REST do
    begin
      Prepare;
      ParamByName('@ID').Value := ID;
      ExecProc;
    end;
    CDSDailyTotals.Refresh;
  end;
end;

procedure TFrmDailyTotals.ToolButton17Click(Sender: TObject);
Var
  AuthUser, NoteStr: String;

begin
  AuthUser := CommonPOS.User;
  if CommonPOS.isAuthorized('',UserRights.TOT_DEL, false) then
  begin
    With DMMidas.CDSDailyTotals do
    begin
      NoteStr := 'Balance: ' + DMMidas.CDSDailyTotalsID.AsString + '  of daily totals was deleted by ' + Copy(CommonPOS.User,1,3);
      if FrmMain.LanguageStr = 'English' then
        FrmMain.msgD := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 296)
      else
        FrmMain.msgD := '¿Realmente quiere borrar?';
      If MessageDlg(FrmMain.msgD, mtConfirmation,[mbYes,mbNo],0) = mrYes then
      Begin
        CommonPOS.InsertLog('Daily Totals deleted', 'D', '',
                  Copy(CommonPOS.User,1,3), '',
                  0, DMMidas.CDSDailyTotalsID.Value, 0, 0,
                  0, 0, 0, 0,NoteStr,false,true);
        Delete;
      end;
    end;
  end;
end;

procedure TFrmDailyTotals.ToolButton23Click(Sender: TObject);
begin
  FrmRecapDetail := TFrmRecapDetail.Create(Self);
  With FrmRecapDetail do
  begin
    ShowModal;
    Release;
  end;
end;

procedure TFrmDailyTotals.TlBtnRefreshClick(Sender: TObject);
begin
  DMMidas.CDSDailyTotals.Refresh;
  DateTimePicker1Change(Self);
end;

procedure TFrmDailyTotals.DBGrid4DblClick(Sender: TObject);
var
  id: String;
begin
  with DMMidas do
  begin
    if (CDSDailyTotalsEND_OF_DAY.Value = True) then
    begin
      id := CDSDailyTotalsID.asString;
      CDSDailyTotals.Close;
      CDSDailyTotals.CommandText := 'select * from dailyTotals where id = ' + chr(39) + id + chr(39) + ' or EOD_LINK = ' + chr(39) + id + chr(39);
      CDSDailyTotals.Open;
    end
    else
      ToolButton16.Click;

  end;
end;

procedure TFrmDailyTotals.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  If (DMMidas.CDSDailyTotalsEND_OF_DAY.Value = True) then
  Begin
    with (Sender as TDBGrid) do Canvas.Brush.Color := clYellow;
    with (Sender as TDBGrid) do Canvas.FillRect(Rect);
    With (Sender as TDBGrid) do Canvas.Font.Color := clRed;

    if (gdSelected in State) then
    begin
      with (Sender as TDBGrid) do
      begin
        Canvas.Brush.Color := clNavy;
        Canvas.Font.Color := clWhite;
      end;
    end;
    with (Sender as TDBGrid) do DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

end.
