unit UntClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DBCtrls, Mask, ExtCtrls,
  ComCtrls, ToolWin, DB, dbcgrids, Menus, ResourceLocalizer;

type
  TFrmClientes = class(TForm)
    Panel1: TPanel;
    DBGrid4: TDBGrid;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    SpeedButton27: TSpeedButton;
    PnlSearchCust: TPanel;
    ToolBar2: TToolBar;
    ToolButton5: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    TlBtnRefresh: TToolButton;
    TBSearchCust: TToolButton;
    ToolButton20: TToolButton;
    ToolButton23: TToolButton;
    TlBtnPost: TToolButton;
    TlBtnCancel: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    PopupMenuCentralCred: TPopupMenu;
    ToolButtonCentralCred: TToolButton;
    EstadodeCuentas1: TMenuItem;
    BalanceGlobal1: TMenuItem;
    DebitoContraCredito1: TMenuItem;
    ToolButton13: TToolButton;
    Arreglarbalances1: TMenuItem;
    BalanceporCliente1: TMenuItem;
    EdtSearch: TEdit;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    ToolBar1: TToolBar;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid4TitleClick(Column: TColumn);
    procedure TBSearchCustClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure TlBtnPostClick(Sender: TObject);
    procedure TlBtnCancelClick(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
    procedure ToolButton23Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure BalanceGlobal1Click(Sender: TObject);
    procedure DebitoContraCredito1Click(Sender: TObject);
    procedure EstadodeCuentas1Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure Arreglarbalances1Click(Sender: TObject);
    procedure BalanceporCliente1Click(Sender: TObject);
    procedure EdtSearchKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSearchExit(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure ToolButton19Click(Sender: TObject);
    procedure ToolButton21Click(Sender: TObject);
    procedure ToolButton22Click(Sender: TObject);
    procedure language;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmClientes: TFrmClientes;

implementation

uses UntDMMidas, UntEditCustomer, UntQueries, untMain, UntCustOrdPay,
  SqlExpr, UntSelAuspicio, UntWebTrans, UntBalanceInicial, UntAjustes,
  UntCalcularAusp, UntDMCentralCredit, UntEstadoCuentaCC, UntEscojaFecha,
  UntDMFixCredit, Math, UntSearchNoSocio, UntCommon,
  UntCommonPOS, UntEscojaEC, UntEditCars, UntCarsTransactions;

{$R *.dfm}

procedure TFrmClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
Var
  MyRes: TModalResult;
begin
  {If TlBtnPost.Enabled then
  begin
    MyRes := MessageDlg('Clientes - Hay cambios pendientes, ¿desea guardar?',mtConfirmation,[mbYes,mbNo,mbCancel],0);
    If MyRes = mrCancel then
      Action := caNone
    else
    begin
      If MyRes = mrYes then
      begin
        If DMMidas.CDSClientes.ApplyUpdates(-1) = 0 then
        begin
          DMMidas.CDSClientes.Active := False;
          Action := caFree;
          FrmClientes := NIL;
        end
        else
        begin
          Action := caNone;
        end;
      end
      else
      begin
        DMMidas.CDSClientes.CancelUpdates;
        DMMidas.CDSClientes.Active := False;
        Action := caFree;
        FrmClientes := NIL;
      end;
    end;
  end
  else
  begin}
    DMMidas.CDSClientes.Active := False;
    Action := caFree;
    FrmClientes := NIL;
  //end;
end;

procedure TFrmClientes.SpeedButton1Click(Sender: TObject);
begin
  With Sender as TSpeedButton do
    DMMidas.CDSClientes.Locate('APELLIDOPATERNO',Caption,[LoPartialKey]);
end;

procedure TFrmClientes.DBGrid4TitleClick(Column: TColumn);
Var
  NCust: Integer;
begin
  NCust := DMMidas.CDSClientesNUMEROCLIENTE.Value;
  Case Column.Index of
    0:
    begin
      With DMMidas.CDSClientes do
      begin
        Active := False;
        CommandText := 'Select * from Pacientes with (NOLOCK) order by NUMEROCLIENTE';
        Active := True;
      end;
    end;
    1:
    begin
      With DMMidas.CDSClientes do
      begin
        Active := False;
        CommandText := 'Select * from Pacientes with (NOLOCK) order by APELLIDOPATERNO, APELLIDOMATERNO, NOMBRE';
        Active := True;
      end;
    end;
    2:
    begin
      With DMMidas.CDSClientes do
      begin
        Active := False;
        CommandText := 'Select * from Pacientes with (NOLOCK) order by TELEFONO';
        Active := True;
      end;
    end;
  end;
  DMMidas.CDSClientes.Locate('NUMEROCLIENTE',NCust,[])
end;

procedure TFrmClientes.TBSearchCustClick(Sender: TObject);
Var
  NCust: Integer;
begin
  PnlSearchCust.Visible := TBSearchCust.Down;
  If PnlSearchCust.Visible then
  begin
    EdtSearch.SetFocus
  end
  else
  begin
    With DMMidas do
    begin
      NCust := CDSClientesNUMEROCLIENTE.Value;
      CDSClientes.Active := False;
      CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK)';
      CDSClientes.Active := True;
      CDSClientes.Locate('NUMEROCLIENTE',NCust,[])
    end;
    DBGrid4.SetFocus;
  end;
end;

procedure TFrmClientes.FormCreate(Sender: TObject);
begin
  if DMMidas.CDSSetupAUTOMOVIL_APP.Value = True then
  begin
    Panel3.Visible := True;
    DBGrid1.Visible := True;
    DBGrid4.Align := alTop;
  end
  else
  begin
    Panel3.Visible := False;
    DBGrid1.Visible := False;
    DBGrid4.Align := alClient;
  end;

  if FrmMain.sbMain.Panels.Items[0].Text = 'LEXA' then ToolButton13.Visible := True;
  if CommonPOS.User = 'Noe' then
    ToolButton12.Visible := True
  else
    ToolButton12.Visible := False;
end;

procedure TFrmClientes.FormShow(Sender: TObject);
begin
  if FrmMain.LanguageStr = 'English' then
    language;
end;

procedure TFrmClientes.language;
begin
  DBGrid4.Columns[0].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 053);
  DBGrid4.Columns[1].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 054);
  DBGrid4.Columns[2].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 055);
  DBGrid4.Columns[3].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 056);
  DBGrid4.Columns[4].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 057);
  DBGrid4.Columns[6].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 058);
  DBGrid4.Columns[7].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 059);
  ToolButton5.Hint := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 060);
  ToolButton16.Hint := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 061);
  ToolButton17.Hint := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 062);
  TlBtnRefresh.Hint := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 063);
  TBSearchCust.Hint := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 064);
  ToolButton23.Hint := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 065);
  ToolButton1.Hint := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 066);
  ToolButton2.Hint := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 067);
end;

procedure TFrmClientes.ToolButton5Click(Sender: TObject);
Var
  NoSocio: String;
begin
  if CommonPOS.CheckNoSocio = True then
  begin
    FrmSearchNoSocio := TFrmSearchNoSocio.Create(Self);
    With FrmSearchNoSocio do
    begin
      ShowModal;
      NoSocio := FrmSearchNoSocio.EditSearch.Text;
      if Trim(NoSocio) > '' then
      begin
        With DMMidas do
        begin
          CDSClientes.Close;
          CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where Socio = ' + chr(39) + NoSocio + chr(39);
          CDSClientes.Open;
          if CDSClientesNOMBRE.Value > '' then
          begin
            if FrmMain.LanguageStr = 'English' then
              ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 273))
            else
            ShowMessage('Cliente existe...');
            exit;
          end;
        end;
      end;
      Free;
    end;
  end;
  if DMMidas.CDSClientes.Active = False then DMMidas.CDSClientes.Active := True;
  FrmEditCustomer := TFrmEditCustomer.Create(Self);
  With FrmEditCustomer, DMMidas.CDSClientes do
  begin
    DBEdit15.ReadOnly := True;
    DBEdit14.ReadOnly := False;
    Append;
    DMMidas.CDSClientesSOCIO.Value := NoSocio;    
    ShowModal;
    If ModalResult = mrOK then
    begin
      Post;
      TlBtnPost.Enabled := True;
      TlBtnCancel.Enabled := True;
      TlBtnRefresh.Enabled := False;
    end
    else
      cancel;
    Release;
  end;
end;

procedure TFrmClientes.TlBtnPostClick(Sender: TObject);
begin
  If DMMidas.CDSClientes.ApplyUpdates(-1) = 0 then
  begin
    TlBtnPost.Enabled := False;
    TlBtnCancel.Enabled := False;
    TlBtnRefresh.Enabled := True;
  end;
end;

procedure TFrmClientes.TlBtnCancelClick(Sender: TObject);
begin
  DMMidas.CDSClientes.CancelUpdates;
  TlBtnPost.Enabled := False;
  TlBtnCancel.Enabled := False;
  TlBtnRefresh.Enabled := True;
end;

procedure TFrmClientes.ToolButton16Click(Sender: TObject);
Var
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  if CommonPOS.isAuthorized('',UserRights.CUST_EDIT, false) then
  begin
    FrmEditCustomer := TFrmEditCustomer.Create(Self);
    With FrmEditCustomer, DMMidas.CDSClientes do
    begin
      Edit;
      ShowModal;
      If ModalResult = mrOK then
      begin
        Try
          Post;
        Except on e: exception do
          showMessage(e.Message)
        end;
        TlBtnPost.Enabled := True;
        TlBtnCancel.Enabled := True;
        TlBtnRefresh.Enabled := False;
      end
      else
        cancel;
      Release;
    end;
  end;
end;

procedure TFrmClientes.ToolButton17Click(Sender: TObject);
Var
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  //If FrmMain.IsAuthorized(AuthUser,21) then
  if CommonPOS.isAuthorized('',UserRights.CUST_DEL, false) then
  begin
    With DMMidas do
    begin
      if (FrmMain.WebCredit <> True) and (CDSClientesDEUDA.Value > 0)  then
      begin
        if FrmMain.LanguageStr = 'English' then
          ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 324))
        else
         ShowMessage('No puede borrar este paciente, tiene deuda.');
         Exit;
      end;
      CDSPrescriptions.Close;
      CDSPrescriptions.CommandText := 'Select * from Prescriptions with (NOLOCK) where numerocliente = ' + CDSClientesNUMEROCLIENTE.AsString;
      CDSPrescriptions.Open;
      if CDSPrescriptionsNUMERORECETA.Value > 0  then
      begin
        if FrmMain.LanguageStr = 'English' then
          ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 325))
        else
        ShowMessage('Este paciente tiene recetas y no puede ser borrado.');
        Exit;
      end;
      if FrmMain.LanguageStr = 'English' then
        FrmMain.msgD := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 296)
      else
        FrmMain.msgD := '¿Realmente quiere borrar?';
      If MessageDlg(FrmMain.msgD,mtConfirmation,[mbYes,mbNo],0) = mrYes then
      Begin
        CommonPOS.InsertLog('Patient deleted', 'D', '',
                  Copy(CommonPOS.User,1,3), '',
                  0, 0, 0, CDSClientesNUMEROCLIENTE.Value,
                  0, 0, 0, 0,'Patient ' + Trim(DMMidas.CDSClientesNombreCompleto2.Value) + ' was deleted by ' + CommonPOS.User ,false,true);
        CDSClientes.Delete;
        TlBtnPost.Enabled := True;
        TlBtnCancel.Enabled := True;
        TlBtnRefresh.Enabled := False;
      end;
    end;
  end;
end;

procedure TFrmClientes.ToolButton19Click(Sender: TObject);
begin
  DMMidas.cdsCars.Refresh;
end;

procedure TFrmClientes.ToolButton21Click(Sender: TObject);
begin
  FrmCarsTransactions := TFrmCarsTransactions.Create(self);
  With FrmCarsTransactions do
  begin
    cdsCars.Close;
    cdsCars.CommandText := 'Select * from Car where NumeroCliente = ' + DMMidas.CDSClientesNUMEROCLIENTE.AsString;
    cdsCars.Open;
    ShowModal;
  end;
end;

procedure TFrmClientes.ToolButton22Click(Sender: TObject);
Var
  Amount: String;
  Year, Month, Day: Word;
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  if CommonPOS.isAuthorized('',UserRights.CUST_IBAL, false) then
  begin
    DecodeDate(Date, Year, Month, Day);
    Amount := '0';
    If InputQuery('Patrociio inicial','Entre la cantidad',Amount) then
    begin
      Try
        {CommonPos.Customer := DMMidas.CDSClientesNUMEROCLIENTE.Value;
        CommonPOS.InsertCreditTrans('PC', StrToFloat(Amount), 0 );
        DMMidas.CDSClientes.Refresh; }
        With DMMidas.FDQuery1 do
        begin
          SQL.Text := 'Insert Into ClientTransactions (CODE, AMOUNT, DATEOFTRANS, ATTENDEDBY, CLIENTNO, TRANSNO, PAIDAMOUNT, BALANCE) ' +
                   		'Values (' + chr(39) + 'PC' + chr(39) +',' + AMOUNT +',' + chr(39) + DateToStr(Date) + chr(39) + ',' + chr(39) + CommonPOS.User + chr(39) + ',' +  DMMidas.CDSClientesNUMEROCLIENTE.AsString + ',' +  '0, 0, 0)';
          //QL.Clear;

          //SQL.Add('Execute Procedure INITIAL_BALANCE (''PC'', '+
          //                IntToStr(DMMidas.CDSClientesNUMEROCLIENTE.Value) + ', '
          //                + Amount + ', ''' +
          //                Format('%.2d/%.2d/%.4d',[Month,Day,Year]) + ''', ''' +
          //                CommonPOS.User + ''')');
          ExecSQL;
          DMMidas.CDSClientes.Refresh;
        end;
      except
      begin
        if FrmMain.LanguageStr = 'English' then
          ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 267))
        else
        ShowMessage('Cantidad inválida');
      end;
      end;
    end;
  end;
end;

procedure TFrmClientes.ToolButton23Click(Sender: TObject);
begin
  FrmCustOrdPay := TFrmCustOrdPay.Create(Self);
  With FrmCustOrdPay do
  begin
    ShowModal;
    Release;
  end;
end;

procedure TFrmClientes.ToolButton1Click(Sender: TObject);
Var
  Amount: String;
  Year, Month, Day: Word;
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  if CommonPOS.isAuthorized('',UserRights.CUST_IBAL, false) then
  begin
    DecodeDate(Date, Year, Month, Day);
    Amount := '0';
    If InputQuery('Balance inicial','Entre la cantidad',Amount) then
    begin
      if FrmMain.WebCredit = True then
      begin
        DM.CDSClientes2.Close;
        DM.CDSClientes2.CommandText := 'Select * from Clientes where SEGURO_SOCIAL = ' + #39 + DMMidas.CDSClientesCARDHOLDERID.Value + #39;
        DM.CDSClientes2.Open;
        if Trim(DM.CDSClientes2SEGURO_SOCIAL.Value) = '' then
        begin
          With DM do
          begin
            QBalanceInicial.Close;
            QBalanceInicial.ParamByName('NO_SEGURO_SOCIAL').asString := DMMidas.CDSClientesCARDHOLDERID.Value;
            QBalanceInicial.ParamByName('Balance').asFloat := StrToFloat(Amount);
            QBalanceInicial.ExecSQL();
          end;
        end;
        DM.CDSClientes.Refresh;
        Try
          With DM do
          begin
            CDSClientTransactions.Append;
            CDSClientTransactionsCODE.Value := 'DB';
            CDSClientTransactionsAMOUNT.Value := StrToFloat(Amount);
            CDSClientTransactionsDATEOFTRANS.AsString := DatetoStr(Date);
            CDSClientTransactionsATTENDEDBY.Value := CommonPOS.User;
            CDSClientTransactionsCLIENTNO.Value := DMMidas.CDSClientesNUMEROCLIENTE.Value;
            CDSClientTransactionsTRANSNO.Value := 1;//DMMidas.CDSTransHeadTRANSACTIONNUMBER.Value; //StrToInt(copy(SPTransNo.Caption, 11, 100));
            CDSClientTransactionsNO_SEGURO_SOCIAL.Value := DMMidas.CDSClientesCARDHOLDERID.Value;
            CDSClientTransactionsNO_FARMACIA.Value := DMMidas.CDSSetupNO_FARMACIA.Value;
            CDSClientTransactionsPAIDAMOUNT.Value := 0;
            CDSClientTransactions.Post;
            CDSClientes.Refresh;
            DMMidas.CDSClientes.Refresh;
          end;
        except
        begin
          if FrmMain.LanguageStr = 'English' then
            ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 267))
          else
          ShowMessage('Cantidad inválida');
        end;
        end;
      end
      else
      begin
          With DMMidas do
          begin
            if CDSClientTransactions.Active = False then CDSClientTransactions.Active := True;
            CDSClientTransactions.Insert;
            CDSClientTransactionsAMOUNT.asFloat := StrToFloat(Amount);
            CDSClientTransactionsCODE.Value := 'DB';
            CDSClientTransactionsDATEOFTRANS.AsString := DateToStr(Date);
            CDSClientTransactionsATTENDEDBY.Value := CommonPOS.User;
            CDSClientTransactionsCLIENTNO.Value := CDSClientesNUMEROCLIENTE.Value;
            CDSClientTransactionsPAIDAMOUNT.asFloat := 0;
            CDSClientTransactionsTRANSNO.Value := 1; //CDSTransHeadTRANSACTIONNUMBER.Value;
            CDSClientTransactions.Post;
            CDSClientes.Refresh;
          end;
      end;
    end;
  end;
end;

procedure TFrmClientes.DBGrid4DblClick(Sender: TObject);
begin
  ToolButton16.Click;
end;

procedure TFrmClientes.ToolButton2Click(Sender: TObject);
Var
  Amount: String;
  Year, Month, Day: Word;
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  if CommonPOS.isAuthorized('',UserRights.CUST_IBAL, false) then
  begin
    DecodeDate(Date, Year, Month, Day);
    Amount := '0';
    If InputQuery('Balance inicial','Entre la cantidad',Amount) then
    begin
      begin
        Try
          With DMMidas do
          begin
            if CDSClientTransactions.Active = False then CDSClientTransactions.Active := True;
            CDSClientTransactions.Insert;
            CDSClientTransactionsAMOUNT.asFloat := StrToFloat(Amount);
            CDSClientTransactionsCODE.Value := 'LD';
            CDSClientTransactionsDATEOFTRANS.AsString := DateToStr(Date);
            CDSClientTransactionsATTENDEDBY.Value := CommonPOS.User;
            CDSClientTransactionsCLIENTNO.Value := CDSClientesNUMEROCLIENTE.Value;
            CDSClientTransactionsPAIDAMOUNT.asFloat := 0;
            CDSClientTransactionsTRANSNO.Value := 1;//CDSTransHeadTRANSACTIONNUMBER.Value;
            CDSClientTransactions.Post;
            CDSClientes.Refresh;
          end;
        except
        begin
          if FrmMain.LanguageStr = 'English' then
            ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 267))
          else
          ShowMessage('Cantidad inválida');
        end;
        end;
      end;
    end;
  end;
end;



procedure TFrmClientes.ToolButton3Click(Sender: TObject);
Var
  Amount: String;
  Year, Month, Day: Word;
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  if CommonPOS.isAuthorized('',UserRights.CUST_IBAL, false) then
  begin
    DecodeDate(Date, Year, Month, Day);
    Amount := '0';
    If InputQuery('Balance inicial','Entre la cantidad',Amount) then
    begin
      Try
        With DMMidas.CDSTrHeadAdHoc do
        begin
          SQL.Clear;
          SQL.Add('Execute Procedure INITIAL_BALANCE (''AU'', '+
                          IntToStr(DMMidas.CDSClientesNUMEROCLIENTE.Value) + ', '
                          + Amount + ', ''' +
                          Format('%.2d/%.2d/%.4d',[Month,Day,Year]) + ''', ''' +
                          CommonPOS.User + ''')');
          ExecSQL(True);
          DMMidas.CDSClientes.Refresh;
        end;
      except
      begin
        if FrmMain.LanguageStr = 'English' then
          ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 267))
        else
        ShowMessage('Cantidad inválida');
      end;
      end;
    end;
  end;
end;

procedure TFrmClientes.ToolButton4Click(Sender: TObject);
//Var
//  StartTime, EndTime, SelTxt, FromTxt, WhereTxt, GroupTxt: String;
// Day,Month, Year: Word;
//  MyFile: TextFile;
begin
  FrmCalcularAusp := TFrmCalcularAusp.Create(Self);
  with FrmCalcularAusp do
  begin
    ShowModal;
    Free;
  end;
end;

procedure TFrmClientes.ToolButton6Click(Sender: TObject);
begin
  FrmWebTrans := TFrmWebTrans.Create(Self);
  With FrmWebTrans do
  begin
    Caption := 'Credito de: ' + DMMidas.CDSClientesNombreCompleto2.Value;
    ShowModal;
    Free;
  end;
end;

procedure TFrmClientes.ToolButton8Click(Sender: TObject);
Var
  AuthUser, Code: String;
  TransNo: Integer;
  DeudaWeb: Double;
begin
  AuthUser := CommonPOS.User;
  if CommonPOS.isAuthorized('',UserRights.CUST_IBAL, false) then
  begin
    With DMMidas do
    begin
      CDSNoCliente.Close;
      CDSNoCliente.CommandText := 'SELECT GEN_ID(GEN_NO_TRANS, 1)FROM RDB$DATABASE';
      CDSNoCliente.Open;
      TransNo := CDSNoClienteGEN_ID.Value;
      FrmBalanceInicial := TFrmBalanceInicial.Create(Self);
      With FrmBalanceInicial do
      begin
        CDSBalanceInicial.Append;
        CDSBalanceInicialTRANS_NO.Value := TransNo;
        CDSBalanceInicialUSUARIO.Value := CommonPOS.User;
        ShowModal;
        if ModalResult = mrOk then
        begin
          if CDSBalanceInicialAMOUNT.Value > 0 then
          begin
            if FrmBalanceInicial.ComboBox1.ItemIndex = 0 then  Code := 'CR' else Code := 'DB';
            CDSBalanceInicialCODIGO.Value := Code;
            CDSBalanceInicial.Post;
            CDSBalanceInicial.Close;
            CDSBalanceInicial.CommandText := 'Select * from BalanceInicial where Trans_No = ' + IntToStr(TransNo);
            CDSBalanceInicial.Open;

            if CDSWebCredRep.Active = False then CDSWebCredRep.Active := True;
            CDSWebCredRep.Append;
            CDSWebCredRepSQL_COMMAND.Value := 'Insert into ClientTransactions (Code, Amount, DateOfTrans, AttendedBy, ClientNo, TransNo, NO_Seguro_Social) Values (' + #39 +code+ #39 +', '+ CDSBalanceInicialAMOUNT.AsString + ', ''' +
                                          DateToStr(Date) + ''', ''' + CommonPOS.User + ''', ' +
                                          CDSClientesNUMEROCLIENTE.AsString + ', ' + IntToStr(TransNo) + ', ' + #39 + Trim(CDSClientesCARDHOLDERID.Value) + #39 +  ')';
            CDSWebCredRep.Post;
            if Queries.InternetAvailable = True then
            begin
              DeudaWeb := Queries.CalcBalance(DMMidas.CDSClientesCARDHOLDERID.Value);
              CDSClientes.Edit;
              CDSClientesDEUDA_WEB.Value := DeudaWeb;
              CDSClientes.Post;
              //CDSClientes.Refresh;
            end;
          end
          else
          begin
            if FrmMain.LanguageStr = 'English' then
              ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 263))
            else
            ShowMessage('Cantidad incorrecta.');
            CDSBalanceInicial.Cancel;
          end
        end
        else
          CDSBalanceInicial.Cancel;
      Free;
      end;
    end;
  end;
end;

procedure TFrmClientes.ToolButton9Click(Sender: TObject);
begin
  FrmAjustes := TFrmAjustes.Create(Self);
  With FrmAjustes do
  begin
    ShowModal;
    Free;
  end;
end;

procedure TFrmClientes.ToolButton12Click(Sender: TObject);
Var
  Counter2, Counter: Integer;

begin
  Counter := 0;
  Counter2 := 0;
  With DMMidas do
  begin
    if CDSClientTransactions.Active = False then CDSClientTransactions.Active := True;
    CDSClientes.Close;
    CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK)';
    CDSClientes.Open;
    CDSClientes.First;
    while not CDSClientes.Eof do
    begin
      if CDSClientesDEUDA.Value > 0 then
      begin
        Counter2 := Counter2 + 1;
        CDSClientTransactions.Append;
        CDSClientTransactionsCODE.Value := 'DB';
        CDSClientTransactionsAMOUNT.asFloat := CDSClientesDEUDA.asFloat;
        CDSClientTransactionsDATEOFTRANS.AsString := DateToStr(Date);
        CDSClientTransactionsATTENDEDBY.Value := CommonPOS.User;
        CDSClientTransactionsCLIENTNO.Value := CDSClientesNUMEROCLIENTE.Value;
        CDSClientTransactionsPAIDAMOUNT.asFloat := 0;
        CDSClientTransactionsTRANSNO.Value := 1;//Counter2;
        CDSClientTransactions.Post;
      end;
      Counter := Counter + 1;
      FrmMain.sbMain.Panels[3].Text := IntToStr(Counter);
      FrmMain.sbMain.Refresh;
      CDSClientes.Next;
    end;
    if FrmMain.LanguageStr = 'English' then
      ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 326) + IntToStr(Counter2))
    else
    ShowMessage('El numero de transaccion de la caja tiene que ser mayor que ' + IntToStr(Counter2));
  end;
end;

procedure TFrmClientes.BalanceGlobal1Click(Sender: TObject);
begin
  DM.QTransDetail.Close;
  DM.QTransDetail.SQL.Text := 'Delete from ccrept';
  DM.QTransDetail.ExecSQL();
  FrmEstadoCuentaCC := TFrmEstadoCuentaCC.Create(Self);
  With FrmEstadoCuentaCC do
  begin
    DM.CDSCCREPT.Close;
    DM.CDSCCREPT.Active := True;
    //ShowMessage(DM.CDSCCREPTBALANCE.asString);
    CDSClientesCC.Close;
    CDSClientesCC.CommandText := 'Select * from Clientes where balance > 0 order by SEGURO_SOCIAL';
    CDSClientesCC.Open;
    While not CDSClientesCC.Eof do
    begin
      try
        DM.CDSCCREPT.Insert;
        DM.CDSCCREPTCLIENTE.Value := CDSClientesLocalNombreCompleto2.Value;
        DM.CDSCCREPTSSN.Value := CDSClientesLocalCARDHOLDERID.Value;
        DM.CDSCCREPTBALANCE.Value := CDSClientesCCBALANCE.Value;
        DM.CDSCCREPT.Post;
        DM.CDSCCREPT.Close;
        DM.CDSCCREPT.CommandText := 'Select * from CCREPT where Cliente > ' + #39 + #39 + ' order by Cliente';
        DM.CDSCCREPT.Open;
      except
        //
      end;
      CDSClientesCC.Next;
    end;
    //ppReportCCRept.Print;
    //ppReportEstadoCuenta.Print;
  end;
end;

procedure TFrmClientes.DebitoContraCredito1Click(Sender: TObject);
begin
  FrmEscojaFechas := TFrmEscojaFechas.Create(self);
  With FrmEscojaFechas do
  begin
    ShowModal;
    FrmEstadoCuentaCC :=  TFrmEstadoCuentaCC.Create(Self);
    With FrmEstadoCuentaCC do
    begin
      CDSTransCredito.Close;
      CDSTransCredito.CommandText := 'Select sum(amount) as TCredito  from CLIENTTRANSACTIONS where DATEOFTRANS between ' + #39 + DateToStr(FrmEscojaFechas.Desde.Date) + #39 + ' and ' + #39 + DateToStr(FrmEscojaFechas.Hasta.Date) + #39 + ' and code = ' + #39 + 'CR' + #39;
      CDSTransCredito.Open;
      CDSTransDebito.Close;
      CDSTransDebito.CommandText := 'Select sum(amount) as TDebito  from CLIENTTRANSACTIONS where DATEOFTRANS between ' + #39 + DateToStr(FrmEscojaFechas.Desde.Date) + #39 + ' and ' + #39 + DateToStr(FrmEscojaFechas.Hasta.Date) + #39 + ' and code = ' + #39 + 'DB' + #39;
      CDSTransDebito.Open;
      //ppLabel5.Caption := 'Total de transacciones debito contra credito en las fechas ' + FrmEscojaFechas.Desde.Text + ' y ' + DateToStr(FrmEscojaFechas.Hasta.Date);
      //ppReportCreditoContraDeb.Print;
    end;
    Free;
  end;
end;

procedure TFrmClientes.EdtSearchExit(Sender: TObject);
Var
  Token1, Token2, Token3: String;
  NCust: Integer;
begin
  if Trim(EdtSearch.Text) > '' then
  begin
    Queries.MultiToken(EdtSearch.Text, Token1, Token2, Token3);
    Queries.OpenPatient(Token1, Token2, Token3, 0);
    if DMMidas.CDSClientes.RecordCount = 0 then
    begin
      EdtSearch.SetFocus;
    end
    else
    begin
      EdtSearch.Text := '';
      DBGrid4.SetFocus;
    end;
  end;
end;

procedure TFrmClientes.EdtSearchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then                              { if it's an enter key }
  Begin
    Key := #0;                                 { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
  END;
end;

procedure TFrmClientes.EstadodeCuentas1Click(Sender: TObject);
var
  FechaDesde, FechaHasta: String;
begin
  FrmEstadoCuentaCC :=  TFrmEstadoCuentaCC.Create(Self);
  With FrmEstadoCuentaCC do
  begin
    FrmEscojaEC := TFrmEscojaEC.Create(Self);
    With FrmEscojaEC do
    begin
      ShowModal;
      if FrmEscojaEC.RadioGroup1.ItemIndex = 0 then
      begin
        CDSClientesLocal.Close;
        CDSClientesLocal.CommandText := 'Select * from Pacientes with (NOLOCK) where deuda > 0.01 and NumeroCliente =  '+ DMMidas.CDSClientesNUMEROCLIENTE.AsString + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
        CDSClientesLocal.Open;
      end
      else
      begin
        CDSClientesLocal.Close;
        CDSClientesLocal.CommandText := 'Select * from Pacientes with (NOLOCK) where deuda > 0.01 and CardholderID > ' + #39 + #39 + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
        CDSClientesLocal.Open;
      end;

       //ppReport1.Print;
       FrmEscojaEC.Free;
    end;
  end;
end;

procedure TFrmClientes.ToolButton13Click(Sender: TObject);
Var
  Mensage: String;
  PagoCredito: Double;
  NCliente: Integer;
begin
  if FrmMain.LanguageStr = 'English' then
    FrmMain.msgD := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 299)
  else
    FrmMain.msgD := 'Desea actualizar la data de credito de los clientes?';
  if MessageDlg(FrmMain.msgD,
  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
      DMFixCredit := TDMFixCredit.Create(Self);
    //With DMFixCredit do
    //begin
      DMFixCredit.CDSClientes.Close;
      DMFixCredit.CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) order by NumeroCliente';
      DMFixCredit.CDSClientes.Open;
      DMFixCredit.CDSClientes.First;
      While not DMFixCredit.CDSClientes.Eof do
      begin
        NCliente := DMFixCredit.CDSClientesNUMEROCLIENTE.Value;
        DMFixCredit.QDebitos.Close;
        DMFixCredit.QDebitos.ParamByName('NoCliente').AsInteger := NCliente;
        DMFixCredit.QDebitos.Open;
        DMFixCredit.QCreditos.Close;
        DMFixCredit.QCreditos.ParamByName('NoCliente').AsInteger := NCliente;
        DMFixCredit.QCreditos.Open;
        PagoCredito := DMFixCredit.QCreditosTCredit.Value;
        if DMFixCredit.QCreditosTCredit.Value > 0 then
        begin
          With DMMidas do
          begin
            CDSClientTransactions.Close;
            CDSClientTransactions.CommandText := 'Select * from ClientTransactions where CODE = ' + #39 + 'DB' + #39 + ' AND CLIENTNO = ' + IntToStr(NCliente) + ' order by TransNo'; //and Balance <= AMOUNT AND BALANCE <> 0
            CDSClientTransactions.Open;
            CDSClientTransactions.First;
            //ShowMessage(FloatToStr(PagoCredito) + ' No Clente: ' + IntToStr(ncliente));
            While not CDSClientTransactions.eof do
            begin
              //CDSClientTransactions.Edit;
                if PagoCredito > CDSClientTransactionsBALANCE.asFloat then
                begin
                  PagoCredito := PagoCredito - CDSClientTransactionsBALANCE.asFloat;
                  //CDSClientTransactionsBALANCE.Value := 0;
                  DMFixCredit.QUPDATECLIENTTRANS.SQL.Text := 'Update ClientTransactions set Balance = 0 where TransNo = ' + CDSClientTransactionsTRANSNO.AsString;
                  DMFixCredit.QUPDATECLIENTTRANS.ExecSQL(true);
                end
                else
                begin
                  DMFixCredit.QUPDATECLIENTTRANS.SQL.Text := 'Update ClientTransactions set Balance = ' + FloatToStr(CDSClientTransactionsBalance.asFloat - PagoCredito) + ' where TransNo = ' + CDSClientTransactionsTRANSNO.AsString;
                  DMFixCredit.QUPDATECLIENTTRANS.ExecSQL(true);
                  //CDSClientTransactionsBALANCE.Value := CDSClientTransactionsBalance.Value - PagoCredito;
                  PagoCredito := 0;
                end;
              //CDSClientTransactions.Post;
              if PagoCredito = 0 then CDSClientTransactions.Last;
              CDSClientTransactions.Next;
            end;
            PagoCredito := 0;
          end;
          //===========================================================================
        end;
        DMFixCredit.CDSClientes.Next;
      end;
    //end;
  end;
end;

procedure TFrmClientes.ToolButton14Click(Sender: TObject);
begin
  With DMMidas do
  begin
    cdsCars.Append;
    FrmEditCars := TFrmEditCars.Create(nil);
    With FrmEditCars do
    begin
      ShowModal;
      if ModalResult = mrOk then
        cdsCars.Post
      else
        cdsCars.Cancel;

      FrmCarsTransactions.Free;
      FrmCarsTransactions := Nil;
    end;
    cdsCars.Refresh;
  end;
end;

procedure TFrmClientes.ToolButton15Click(Sender: TObject);
begin
  With DMMidas do
  begin
    cdsCars.Edit;
    FrmEditCars := TFrmEditCars.Create(nil);
    With FrmEditCars do
    begin
      ShowModal;
      if ModalResult = mrOk then
        cdsCars.Post
      else
        cdsCars.Cancel;

      FrmCarsTransactions.Free;
      FrmCarsTransactions := Nil;
    end;
    cdsCars.Refresh;
  end;
end;

procedure TFrmClientes.Arreglarbalances1Click(Sender: TObject);
Var
  PagoCredito, Credito, Debito: double;
  Counter: Integer;
begin
  Counter := 0;
  With DM do
  begin
    //SQLQuery.SQL.Text := 'Update ClientTransactions set Balance = Amount';
    //SQLQuery.ExecSQL(True);
    
    CDSClientes.Close;
    CDSClientes.CommandText := 'Select * from Clientes';
    CDSClientes.Open;

    While not CDSClientes.eof do
    begin
      Counter := Counter + 1;
      FrmMain.sbMain.Panels[1].Text := IntToStr(counter);
      FrmMain.sbMain.Refresh;
      QCredito.SQL.Text := 'Select sum(Amount) as TotalCredito from ClientTransactions where NO_SEGURO_SOCIAL = ' + #39 + Trim(CDSClientesSEGURO_SOCIAL.Value) + #39 + ' and Code = ' + #39 + 'CR' + #39;
      QCredito.Open;
      PagoCredito := QCreditoTotalCredito.Value;
      CDSClientTransactions.Close;
      CDSClientTransactions.CommandText := 'Select * from ClientTransactions where CODE = ' + #39 + 'DB' + #39 + ' AND NO_SEGURO_SOCIAL = ' + #39 + Trim(CDSClientesSEGURO_SOCIAL.Value) + #39 + ' order by DATEOFTRANS';
      CDSClientTransactions.Open;
      // ShowMessage(CDSClientesSEGURO_SOCIAL.Value);
      CDSClientTransactions.First;
      While not CDSClientTransactions.eof do
      begin
        if PagoCredito > CDSClientTransactionsBALANCE.Value then
        begin
          PagoCredito := PagoCredito - CDSClientTransactionsBALANCE.Value;
          FIXDEBT.ParamByName('@AMOUNT').AsFloat := CDSClientTransactionsAMOUNT.Value;
          FIXDEBT.ParamByName('@SSN').AsString := Trim(CDSClientTransactionsNO_SEGURO_SOCIAL.Value);
          FIXDEBT.ParamByName('@FECHA').AsString := CDSClientTransactionsDATEOFTRANS.AsString;
          FIXDEBT.ParamByName('@BALANCE').AsFloat := 0;
          FIXDEBT.ExecProc;

        end
        else
        begin
          FIXDEBT.ParamByName('@AMOUNT').AsFloat := CDSClientTransactionsAMOUNT.Value;
          FIXDEBT.ParamByName('@SSN').AsString := Trim(CDSClientTransactionsNO_SEGURO_SOCIAL.Value);
          FIXDEBT.ParamByName('@FECHA').AsString := CDSClientTransactionsDATEOFTRANS.AsString;
          FIXDEBT.ParamByName('@BALANCE').AsFloat := CDSClientTransactionsBALANCE.Value - PagoCredito;
          FIXDEBT.ExecProc;
          PagoCredito := 0;
        end;
        if PagoCredito = 0 then CDSClientTransactions.Last;
        CDSClientTransactions.Next;
      end;
      CDSClientTransactions.Refresh;

      DMMidas.QUpdateTax.close;
      DMMidas.QUpdateTax.SQL.Text := 'Update Pacientes set deuda = ' + CDSClientesBALANCE.AsString + ' Where Cardholderid = ' + #39 + Trim(CDSClientesSEGURO_SOCIAL.Value) + #39;
      DMMidas.QUpdateTax.ExecSQL();
      CDSClientes.Next;
    end;
    ShowMessage('Finished');
  end;
end;
{With DM do
                begin
                  if CDSClientTransactions.Active = False then CDSClientTransactions.Open;
                  CDSClientTransactions.Close;
                  CDSClientTransactions.CommandText := 'Select * from ClientTransactions where CODE = ' + #39 + 'DB' + #39 + ' and Balance <= AMOUNT AND BALANCE <> 0 AND NO_SEGURO_SOCIAL = ' + #39 + Trim(CustomerSSN) + #39 + ' order by TransNo';
                  CDSClientTransactions.Open;
                  PagoCredito := CommonPOS.Trans_AbonoCredito;
                  While not CDSClientTransactions.eof do
                  begin
                    CDSClientTransactions.Edit;
                    if PagoCredito > CDSClientTransactionsBALANCE.Value then
                    begin
                      PagoCredito := PagoCredito - CDSClientTransactionsBALANCE.Value;
                      CDSClientTransactionsBALANCE.Value := 0;
                    end
                    else
                    begin
                      CDSClientTransactionsBALANCE.Value := CDSClientTransactionsBalance.Value - PagoCredito;
                      PagoCredito := 0;
                    end;
                    CDSClientTransactions.Post;
                    if PagoCredito = 0 then CDSClientTransactions.Last;
                    CDSClientTransactions.Next;
                  end;}
procedure TFrmClientes.BalanceporCliente1Click(Sender: TObject);
var
  FechaDesde, FechaHasta: String;
begin
  FrmEstadoCuentaCC :=  TFrmEstadoCuentaCC.Create(Self);
  With FrmEstadoCuentaCC do
  begin
    CDSClientesLocal.Close;
    CDSClientesLocal.CommandText := 'Select * from Pacientes with (NOLOCK) where deuda > 0 and CardholderID > ' + #39 + #39 + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
    CDSClientesLocal.Open;
    //ppReport2.Print;
  end;
end;

end.
