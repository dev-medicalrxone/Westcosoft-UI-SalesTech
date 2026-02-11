unit UntPickup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, ExtCtrls, Keyboard, Mask, DBCtrls,
  StdCtrls, Buttons, Grids, DBGrids, db, Math, ResourceLocalizer;

type
  TFrmPickup = class(TForm)
    TouchKeyboard1: TTouchKeyboard;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    EditSearch: TEdit;
    GBDate: TGroupBox;
    LabelBagNumbers: TLabel;
    DBText2: TDBText;
    GBPaciente: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    ToolBar2: TToolBar;
    tbPIckup: TToolButton;
    BtneSignature: TToolButton;
    ToolButton1: TToolButton;
    tbSelectAll: TToolButton;
    Panel2: TPanel;
    ButtonOk: TButton;
    Button1: TButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    tbSearchTag: TToolButton;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    TimerStopTagSearch: TTimer;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    ToolButton2: TToolButton;
    ToolButton5: TToolButton;
    procedure EditSearchExit(Sender: TObject);
    procedure EditSearchKeyPress(Sender: TObject; var Key: Char);
    procedure tbPIckupClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure tbSelectAllClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BtneSignatureClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbSearchTagClick(Sender: TObject);
    procedure TimerStopTagSearchTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
  private
    procedure RecordLog(UserNo: Integer; Module, Description: String;
      BagNumber: Integer; RxNumber: LargeInt);
    procedure Pickup;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPickup: TFrmPickup;

implementation

uses UntDMWC, UntCommonPOS, UntDMMidas, UntQueries, UntSearchCust2, UntCommon,
  UntRxDetail, untMain, UntWillCallAvailables, UntSignatureCapture,
  UntWillCallStatus, UntDMCentralCredit, UntPrescriptions;

{$R *.dfm}

procedure TFrmPickup.BtneSignatureClick(Sender: TObject);
Var
  NoRx, BagNumber: String;
  EnableSignatureButton: Boolean;
  ModalRes: Boolean;
begin
  ModalRes := False;
  With DMwc do
  begin
    cdsWillCall.First;
    while not cdsWillCall.Eof do
    begin
      if cdsWillCallPOS_PICKUP.Value = True then EnableSignatureButton := True;
      if cdsWillCallRX_NUMBER.Value > 0 then NoRx := cdsWillCallRX_NUMBER.asString;
      cdsWillCall.Next;
    end;
    if EnableSignatureButton = true then
    begin
      dmmidas.CDSOTC.close;
      FrmeSignatureCapture := TFrmeSignatureCapture.Create(nil);
      With FrmeSignatureCapture do
      begin
        ESearchPat.Enabled := False;
        serchbarcode.Enabled := False;
        BagNumber :=  cdsWillCall_StatusBAG_NUMBER.AsString;//cdsWillCallBAG_NUMBER.Value;
        BtnOk.Enabled := False;
        FrmeSignatureCapture.Tag := StrToInt(BagNumber);
        ShowModal;
        if FrmeSignatureCapture.ModalResult = mrOk then
        begin
          ModalRes := True;
          Pickup;
        end
        else
        begin
          ModalRes := False;
          ButtonDeleteAll.Click;
        end;

        if FrmeSignatureCapture.ModalResult = mrOk then
        begin
          cdsOTC2.Close;
          With DMMidas do
          begin
            CDSPrescriptions.Close;
            CDSPrescriptions2.Close;
            CDSOTC.Close;
            CDSOTC2.Close;
            CDSClientes.Close;
          end;
        end;
        FrmeSignatureCapture := Nil;
        FrmeSignatureCapture.Free;
      end;
    end
    else
    begin
      if FrmMain.LanguageStr = 'English' then
        ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 332))
      else
      ShowMessage('Debe seleccionar las recetas para continuar!');
    end;
  end;
end;

procedure TFrmPickup.DBGrid1DblClick(Sender: TObject);
begin
  CommonPOS.DisconnectFromDatabase;
  With DMwc.WC_PICKUP_TF do
  begin
      Prepare;
      if DMWC.cdsWillCallPOS_PICKUP.Value = True then
      begin
        ParamByName('@TF').Value := 0;
      end
      else
      begin
        ParamByName('@TF').Value := 1;
      end;
      ParamByName('@OTCNUMBER').Value := DMWC.cdsWillCallOTC_NUMBER.Value;
      ParamByName('@TN').Value := DMWC.cdsWillCallTRANSACTION_NUMBER.Value;
      ParamByName('@DBName').Value := CommonPOS.DataBaseNameRx;
      ExecProc;
      DMWC.cdsWillCall.Refresh;
  end;
end;

procedure TFrmPickup.EditSearchExit(Sender: TObject);
Var
  SearchStr, Token1, Token2, Token3: String;
  BagNumber: Integer;
begin
  SearchStr := Trim(EditSearch.Text);
  With DMMidas do
  begin
    FrmWillCallAvailables := TFrmWillCallAvailables.Create(nil);
    With FrmWillCallAvailables do
    begin
      if Trim(SearchStr) > '' then
      begin
        CommonPOS.DeactivateTagSearch;

        if (Copy(SearchStr ,1,1) = '*') or
           (Copy(SearchStr ,1,2) = 'RX') or
           (Copy(SearchStr ,1,2) = 'PN') then
        begin
          if (Copy(SearchStr ,1,1) = '*') then
          begin
            BagNumber := StrToInt(Trim(Copy(SearchStr,2,10)));
          end;
          if (Copy(SearchStr ,1,2) = 'RX') then
          begin
            BagNumber := StrToInt(Queries.WillCallOpenRx(Trim(Copy(SearchStr,3,7)) ,''));
          end;
          if (Copy(SearchStr ,1,2) = 'PN') then
          begin
            BagNumber := StrToInt(Queries.WillCallOpenRx('',Trim(Copy(SearchStr,3,7))));
          end;
          if BagNumber > 0 then
          begin
            Queries.OpenWillCall_Status(IntToStr(BagNumber));
            Queries.OpenWillCallBag(IntToStr(BagNumber));
            //Queries.OpenPatient_Rx('', DMwc.cdsWillCall_StatusCUSTOMER_NUMBER.Value);
            Queries.OpenWC_Patient('where NumeroCliente = ' + DMwc.cdsWillCall_StatusCUSTOMER_NUMBER.asString);
          end
          else
          begin
            Queries.OpenWillCall_Status('0');
            Queries.OpenPatient_Rx('', 9999999);
          end;
        end
        else
        begin
          Queries.OpenPatientWC(Trim(SearchStr),0);
          ShowModal;
          tbSearchTag.Click;
        end;
      end;
      FrmWillCallAvailables := Nil;
      FrmWillCallAvailables.Free;
    end;
  end;
  EditSearch.Text := '';

end;


procedure TFrmPickup.EditSearchKeyPress(Sender: TObject; var Key: Char);
begin
  CommonForm.Enter2tab(Self,Key);
end;

procedure TFrmPickup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TimerStopTagSearch.Enabled := False;
  CommonPOS.BagNumber := DMwc.cdsWillCall_StatusBag_Number.Value;
  CommonPOS.DeactivateTagSearch;
  DMMidas.qPacientes.Connection := DMMidas.FDConnection1;
end;

procedure TFrmPickup.FormCreate(Sender: TObject);
begin
  TimerStopTagSearch.Interval := DMMidas.CDSSetupWC_STOP_TAG_SEARCH_INTERVAL.Value;
  if CommonPOS.EnforceSignatureonPickup = True then
  begin
    tbPIckup.Enabled := False;
    ButtonOk.Enabled := False;
  end;

end;

procedure TFrmPickup.FormShow(Sender: TObject);
begin
  FrmPickup.ModalResult := mrOk;
  if DMMidas.CDSSetupSP_SELECTALL.Value = True  then tbSelectAll.Enabled := True else tbSelectAll.Enabled := False;
  if CommonPOS.FirmaElectronica = False then BtneSignature.Enabled := False;
end;

procedure TFrmPickup.SpeedButton1Click(Sender: TObject);
Var
  DateToReturn: String;
begin
  begin
    CommonPOS.WC_Availables(true);
    {With DMwc do
    begin
      cdsWC_PATIENTS.Close;
      cdsWC_PATIENTS.CommandText := 'Select * from WC_PATIENTS ORDER BY APELLIDOPATERNO, APELLIDOMATERNO, NOMBRE';
      cdsWC_PATIENTS.Open;
      FrmWillCallAvailables := TFrmWillCallAvailables.Create(nil);
      With FrmWillCallAvailables do
      begin
        ShowModal;
        //Label2.Caption := cdsWC_PATIENTSNOTIFICATION_MODE2_TELEPHONE.Value;
        FrmWillCallAvailables := Nil;
        FrmWillCallAvailables.Free;
        tbSearchTag.Click;
      end;
    end;}
  end;
end;

procedure TFrmPickup.tbPIckupClick(Sender: TObject);
begin
  Pickup;
end;

procedure TFrmPickup.TimerStopTagSearchTimer(Sender: TObject);
begin
  TimerStopTagSearch.Enabled := False;
  CommonPOS.DeactivateTagSearch;
end;

procedure TFrmPickup.ToolButton1Click(Sender: TObject);
Var
  BagNumber: Integer;
begin
   if CommonPOS.isAuthorized('WC_LOAD',UserRights.WC_LOAD,true) then
   begin
     if dmwc.cdsWillCallRx_Number.Value  > 0 then
     begin
       FrmRxDetail := TFrmRxDetail.Create(self);
       With FrmRxDetail do
       begin
         ShowModal;
          With DMwc do
          begin
            if (dsWillCall.State = dsEdit) or (dsWillCall.State = dsInsert) then
            begin
              if cdsWillCallSTATUS.Value = 2 then //2 = RTS
              begin
                 //if cdsWillCallQUANTITY.Value > 0 then CommonRoutine.UpdateInventoryRTS(cdsWillCallQUANTITY.Value, Trim(cdsWillCallNDC.Value));
              end;
              CommonPOS.RecordLog(UserRights.UserNO, 'Pickup-View Rx', 'View/Edited Rx number: ' + cdsWillCallRX_NUMBER.AsString);
              BagNumber := cdsWillCallBAG_NUMBER.AsInteger;
              cdsWillCall.Post;
              CommonPOS.OpenWillCallBag(IntToStr(BagNumber));
            end;
            cdsWillCall.Refresh;
          end;
          Free;
       end;
     end;
   end;
end;

procedure TFrmPickup.ToolButton2Click(Sender: TObject);
begin
  With DMMidas do
  begin
    CommonPOS.PrescriptionsButNotBilled;
    if DMwc.cdsWillCallCUSTOMER_NUMBER.Value > 0 then
    begin
      {CDSOTC.Close;
      CDSOTC.CommandText := 'select * from OTC where '
                                +'(NUMEROCLIENTE = ' + DMwc.cdsWillCallCUSTOMER_NUMBER.AsString
                                + ')and (WF_CASHIER = ' + chr(39) + chr(39) + ' OR WF_CASHIER IS NULL) ORDER BY FECHAOTC desc';
      CDSOTC.Open;}
      FrmPrescriptions := TFrmPrescriptions.Create(nil);
      With FrmPrescriptions do
      begin
          Caption := 'Prescriptions for: ' + DMMidas.CDSClientesNombreCompleto2.Value; //DMwc.cdsWillCall_StatusNombreCompleto.Value;
          FrmPrescriptions.BagNumber := DMwc.cdsWillCallBAG_NUMBER.asInteger;
          ShowModal;
          FrmPrescriptions := nil;
          FrmPrescriptions.Free;
      end;
    end;
  end;
end;

procedure TFrmPickup.tbSelectAllClick(Sender: TObject);
begin
  CommonPOS.DisconnectFromDatabase;
  With DMwc.WC_PICKUP_TF do
  begin
      Prepare;
      DMwc.cdsWillCall.First;
      while not DMwc.cdsWillCall.Eof do
      begin
        if DMWC.cdsWillCallPOS_PICKUP.Value = True then
        begin
          ParamByName('@TF').Value := 0;
        end
        else
        begin
          ParamByName('@TF').Value := 1;
        end;
        ParamByName('@OTCNUMBER').Value := DMWC.cdsWillCallOTC_NUMBER.Value;
        ParamByName('@TN').Value := DMWC.cdsWillCallTRANSACTION_NUMBER.Value;
        ParamByName('@DBName').Value := CommonPOS.DataBaseNameRx;
        ExecProc;
        DMwc.cdsWillCall.Next;
      end;
      DMWC.cdsWillCall.Refresh;
  end;
end;


procedure TFrmPickup.ToolButton4Click(Sender: TObject);
begin
  With DMwc do
  begin
    if cdsWillCall_StatusBAG_NUMBER.Value > 0 then
    begin
      FrmWillCallStatus := TFrmWillCallStatus.Create(nil);
      With FrmWillCallStatus do
      begin
        Caption := 'WillCall Notification Status, ' + Trim(cdsWillCall_StatusBAG_NUMBER.AsString);
        With DMwc do
        begin
          cdsWillCall_Status.Close;
          cdsWillCall_Status.CommandText := 'Select * from WillCall_Status where Bag_number = ' + Trim(cdsWillCallBAG_NUMBER.Value);
          cdsWillCall_Status.Open;
        end;
        ShowModal;
      end;
      //TimerNotify.Enabled := True;
    end;
  end;

end;

procedure TFrmPickup.ToolButton5Click(Sender: TObject);
var
  BN, Mensage: String;
  OTCNumber, TransNo: Integer;

begin
  With DMwc do
  begin
    if CommonPOS.isAuthorized('WC_LOAD',UserRights.WC_LOAD,true) then
    begin
        if cdsWillCallRx_Number.Value  > 0 then Mensage := 'Do you wish to delete this Prescreiption from SmartPickup bag?: ' + cdsWillCallRX_NUMBER.asString + '?'
        else Mensage := 'Do you wish to delete this OTC from SmartPickup bag: ' + cdsWillCallOTC_NUMBER.asString + '?';
        if MessageDlg(Mensage,
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          TransNo := cdsWillCallTRANSACTION_NUMBER.Value;
          BN := cdsWillCallBAG_NUMBER.Value;
          OTCNumber := cdsWillCallOTC_NUMBER.Value;

          if cdsWillCallRx_Number.Value  > 0 then
            RecordLog(UserRights.USERNO , 'Load', 'Deleted Prescription : ' + cdsWillCallRX_NUMBER.AsString, cdsWillCallBAG_NUMBER.AsInteger, cdsWillCallRX_NUMBER.Value)
          else
            RecordLog(UserRights.USERNO , 'Load', 'Deleted OTC: ' + cdsWillCallOTC_NUMBER.AsString, cdsWillCallBAG_NUMBER.AsInteger, cdsWillCallOTC_NUMBER.Value);

          //cdsWillCall.Delete;
          //====================
          qForAll.SQL.Clear;
          qForAll.SQL.Text := 'Delete from WillCall where TRANSACTION_NUMBER = ' + cdsWillCallTRANSACTION_NUMBER.AsString;
          qForAll.ExecSQL;
          qForAll.SQL.Clear;
          qForAll.SQL.Text := 'Delete from TRANSACTIONDETAIL_TEMP where OTC_NUMBER = ' + IntToStr(OTCNumber);
          qForAll.ExecSQL;
          //====================
          CommonPOS.OpenWillCallBag(BN);
          if Trim(cdsWillCallBAG_NUMBER.Value) = ''  then
          begin
            QBorrarNonMatchedNDC.SQL.Text := 'Delete from WillCall_Status where Bag_Number = ' + Trim(BN);
            QBorrarNonMatchedNDC.ExecSQL();
            CommonPOS.OpenWillCall_Status('0');
          end;
        end
    end;
    dmmidas.FDConnection1.Connected := False;
  end;
end;

procedure TFrmPickup.tbSearchTagClick(Sender: TObject);
begin
  with DMwc do
  begin
    if cdsWillCall_StatusBAG_NUMBER.Value > 0 then
    begin
      if cdsTagNumbersBAG_NUMBER.Value > 0 then
      begin
        if tbSearchTag.Tag = 0 then
        begin
          SQLQuery1.SQL.Text := 'Update WILLCALL_TAG_NUMBERS set Search = 1 where BAG_Number = ' + cdsWillCall_StatusBAG_NUMBER.AsString;
          tbSearchTag.Tag := 1;
          tbSearchTag.Caption := 'Stop Search';
          tbSearchTag.ImageIndex := 17;
          IF DMMidas.CDSSetupWC_STOP_TAG_SEARCH_INTERVAL.Value > 0 then
          begin
            //ShowMessage(IntToStr(TimerStopTagSearch.Interval));
            TimerStopTagSearch.Enabled := True;
          end;
        end
        else
        begin
          IF DMMidas.CDSSetupWC_STOP_TAG_SEARCH_INTERVAL.Value > 0 then TimerStopTagSearch.Enabled := True;
          SQLQuery1.SQL.Text := 'Update WILLCALL_TAG_NUMBERS set Search = 0 where BAG_Number = ' + cdsWillCall_StatusBAG_NUMBER.AsString;
          tbSearchTag.Tag := 0;
          tbSearchTag.Caption := 'Tag Search';
          tbSearchTag.ImageIndex := 16;
          TimerStopTagSearch.Enabled := False;
        end;
        SQLQuery1.ExecSQL;
      end;
    end;
  end;
end;


procedure TFrmPickup.RecordLog(UserNo: Integer; Module, Description: String; BagNumber: Integer; RxNumber: LargeInt);
begin
  With DMwc do
  begin
    QInsertWCLog.Close;
    QInsertWCLog.SQL.Text := 'Insert into WILLCALL_LOG (user_no, Log_Date, Description, Module, BAG_NUMBER, RX_NUMBER) Values (' + IntToStr(UserNo) + ',' + #39 + DateTimeToStr(Date) + #39 + ',' + chr(39)
    + Copy(Description, 1,100) + chr(39) + ',' + #39 + Copy(Module,1,20) + chr(39) + ',' +
    IntToStr(BagNumber) + ',' + IntToStr(RxNumber) + ')';
    QInsertWCLog.ExecSQL();
  end;
end;

procedure TFrmPickup.Pickup;
Var
  I, BagNumber: Integer;
begin
  With DMwc do
  begin
    begin
      if (CommonPOS.EnforceSignatureonPickup = true) then
      begin
        if (CommonPOS.VerifyifPrescriptionsSignature('SmartPickup') = False) then
        begin
          exit;//CommonPOS.ShowMessageStr('Prescriptions are not signed!',12);
        end;
      end;
      BagNumber := cdsWillCall_StatusBAG_NUMBER.Value;
      CommonPOS.OpenWillCallBag(IntToStr(BagNumber));
      //CommonPOS.RecordLog(0, 'Pickup', 'Rx Pickedup for ' + Trim(cdsWillCall_StatusNombreCompleto.Value));
      cdsWillCall.First;
      CommonPOS.BagPickup('0');
      Self.ModalResult := mrOk;
      Self.Close;
    end;
  end;
end;



end.
