unit UntCheckOut;

interface

uses
  Windows, Messages, SysUtils, Math, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus,  EncdDecd,
  xmldom, XMLIntf, msxmldom, XMLDoc, Mask, DBCtrls, StdCtrls, ExtCtrls, Spin,
  Keyboard, Vcl.Buttons, ResourceLocalizer;

type
  TFrmCheckOut = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    LabelRecibido: TLabel;
    TouchKeyboard1: TTouchKeyboard;
    Edit4: TEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Panel3: TPanel;
    ButtonClose: TButton;
    EditTIP: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Editemail: TEdit;
    Panel4: TPanel;
    Label2: TLabel;
    seNoRecibos: TSpinEdit;
    Label5: TLabel;
    CBFacturaRecibo: TCheckBox;
    rgReceiptType: TRadioGroup;
    MemoCheckout: TMemo;
    btnTip1: TSpeedButton;
    btnTip2: TSpeedButton;
    btnTip3: TSpeedButton;
    btnNoTip: TSpeedButton;
    Label8: TLabel;
    EditTotalwTip: TEdit;
    btnManual: TButton;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure ButtonCloseClick(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit4Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MemoCheckoutChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure EditTIPChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnTip1Click(Sender: TObject);
    procedure btnTip2Click(Sender: TObject);
    procedure btnTip3Click(Sender: TObject);
    procedure btnNoTipClick(Sender: TObject);
    procedure UPDATE_TRANSACTION;
    procedure EditTotalwTipChange(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure btnManualClick(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure language;
  private
    canCloseGlobal: Boolean;
    { Private declarations }
  public
    { Public declarations }
    PayType: String;
    activatePinpad: Boolean;
  end;

var
  FrmCheckOut: TFrmCheckOut;
  Tip: Double;

implementation

uses UntCommon, UntCommonPOS, UntPOSTS, UntDMMidas, untMain, UntPOSRest,
  UntQueries, untEvertec, UntPaymentType, untPaymentCardLog, UntSpinPOSForm;

{$R *.dfm}

procedure TFrmCheckOut.cxButton1Click(Sender: TObject);
begin
  Edit4.Text := '1.00';
  if canCloseGlobal = True then
    ButtonClose.Click
  else
    canCloseGlobal := True;
end;

procedure TFrmCheckOut.cxButton2Click(Sender: TObject);
begin
  Edit4.Text := '5.00';
  if canCloseGlobal = True then
    ButtonClose.Click
  else
    canCloseGlobal := True;
end;

procedure TFrmCheckOut.cxButton3Click(Sender: TObject);
begin
  Edit4.Text := '10.00';
  if canCloseGlobal = True then
    ButtonClose.Click
  else
    canCloseGlobal := True;
end;

procedure TFrmCheckOut.cxButton4Click(Sender: TObject);
begin
  Edit4.Text := '20.00';
  if canCloseGlobal = True then
    ButtonClose.Click
  else
    canCloseGlobal := True;
end;

procedure TFrmCheckOut.cxButton5Click(Sender: TObject);
begin
  Edit4.Text := '50.00';
  if canCloseGlobal = True then
    ButtonClose.Click
  else
    canCloseGlobal := True;
end;

procedure TFrmCheckOut.btnManualClick(Sender: TObject);
begin
 if (PayType = 'VISA') then
 begin
   FrmEvertec := TFrmEvertec.Create(Nil);
   FrmEvertec.manualTrans := '1';
   FrmEvertec.ShowModal;
   FrmEvertec.Free;
   FrmEvertec := nil;
 end
 else
  showMessage('Transaction not allowed.');
end;

procedure TFrmCheckOut.btnNoTipClick(Sender: TObject);
begin
  Tip := 0;
  EditTIP.Text := '0.00';
  EditTotalwTip.Text := format('%m',  [dmmidas.CDSTransHeadTOTAL.asFloat]);
end;
procedure TFrmCheckOut.btnTip1Click(Sender: TObject);
begin
  With DMMidas do
  begin
    Tip := (CDSTransHeadTOTAL.asFloat * CDSSetupTIP_PERCENTAGE1.asFloat);
    EditTIP.Text := Format('%n', [Tip]);
    EditTotalwTip.Text := format('%m',  [Tip + CDSTransHeadTOTAL.asFloat]);
  end;
end;

procedure TFrmCheckOut.Button6Click(Sender: TObject);
begin
  edit4.Text := '0.00'
end;

procedure TFrmCheckOut.ButtonCloseClick(Sender: TObject);
var
  TypePayment: String;
begin
  if ((CommonPOS.activePin = True) OR (CommonPOS.SpinPOSActive = True)) and ((StrToFloat(edit4.Text) > 0) or (CommonPOS.RefundPOS = True)) then
  begin
    if ((PayType = 'ATH') or (PayType = 'VISA') or (PayType = 'ATHM')
    or (CommonPOS.TransactionType = 'TFAM') or (CommonPOS.TransactionType = 'CASH') or (CommonPOS.TransactionType = 'TSSS') or
       (CommonPOS.TransactionType = 'POUT')) then
    begin
        if (CommonPOS.activePin = True)  then
        begin
            FrmEvertec := TFrmEvertec.Create(Nil);
            FrmEvertec.FormStyle := fsStayOnTop;
            FrmEvertec.manualTrans := '0';
            FrmEvertec.ShowModal;
            FrmEvertec.Free;
            FrmEvertec := nil;
        end;

        if (CommonPOS.SpinPOSActive = True) then
        begin
           if PayType = 'CASH' then
           begin
            TypePayment := 'CASH';
            exit;
           end;
           if (PayType = 'ATH') then TypePayment := 'DEBIT';
           if (PayType = 'TFAM') then TypePayment := 'EBT_CASH';
           if (PayType = 'VISA') or (PayType = 'FSA') then TypePayment := 'CREDIT';     //[2025/12/05 jb] added
           frmMainSPOS := TfrmSpinPOS.Create(nil);
           frmMainSPOS.TypePayment := TypePayment;
           if PayType = 'FSA' then                   //[2025/12/05 jb] added
             frmMainSPOS.ProcessNum  := 4  //FSA     //[2025/12/05 jb] added
           else
              frmMainSPOS.ProcessNum  := 1;    //process Sale

           frmMainSPOS.ShowModal;
           frmMainSPOS.Free;
           frmMainSPOS := nil;
        end;

    end
  end
  else
    Self.Close;
end;

procedure TFrmCheckOut.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then   ButtonClose.Click;
end;

procedure TFrmCheckOut.EditTIPChange(Sender: TObject);
var
  tmp : integer;
begin
  if CommonPOS.IsNumber(EditTIP.Text) then
  begin
    EditTIP.Color := clWhite;
    With DMMidas do
    begin
      Tip := StrToFloat(EditTIP.Text);
      EditTotalwTip.Text := format('%m',  [Tip + CDSTransHeadTOTAL.asFloat]);
    end;
  end
  else
    EditTIP.Color := clred;
end;

procedure TFrmCheckOut.EditTotalwTipChange(Sender: TObject);
begin
  Edit4.Text := format('%n',  [Tip + dmmidas.CDSTransHeadTOTAL.asFloat]);
end;

procedure TFrmCheckOut.FormClose(Sender: TObject;
  var Action: TCloseAction);
Var
  //SubTotal: Double;
  NTotal: Double;
  TTaxEstatal, TTAxMunicipal: Double;
  TranNo: String;
  Continuar: Boolean;
  CashBack: Double;
  NoRecibos: Integer;
begin

  ///Enter card details////
  if DMMidas.SoftwareName <> 'SalesTech' then
  begin
    if (PayType = 'TFAM') or (PayType = 'ATH') or (PayType = 'VISA') then
    begin
      if (CommonPOS.activePin = False) and (CommonPOS.SpinPOSActive = False)  then
      begin
        FrmPaymentCardLog := TFrmPaymentCardLog.Create(Application);
        With FrmPaymentCardLog do
        begin
          lblTransNo.Caption := IntToStr(CommonPOS.TransNo);
          ShowModal;
          If ModalResult = mrOK then
          begin
            CommonPOS.otccard := False;
            with dmmidas do
            begin
              try
                FDQuery1.SQL.Text := 'insert into PAYMENT_CARD_LOG (transNo, cardType, lastFour, authNo) values(' +
                chr(39) + lblTransNo.Caption + chr(39) + ', ' + chr(39) + ComboBox1.Text + chr(39) + ', ' +
                chr(39) + Edit1.Text + chr(39) + ', ' + chr(39) + Edit2.Text + chr(39) + ')';
                fdquery1.execSQl;
              except
                CommonPOS.ShowMessageStr('An error occurred while trying to save the info.', 12, clRed)
              end;
            end;
          end
          else
          begin
            CommonPOS.otccard := False;
            Edit4.Text := '0';
          end;
        end;
      end;
    end;
  end;
  ///End card details///
  if (CommonPOS.RefundPOS = True) and (StrToFloat(Edit4.Text) = 0)  then
  exit;
  Continuar := True;
  CommonPOS.MemoStr := Trim(MemoCheckout.Text);
  //if (StrToFloat(Edit4.Text) > 0) or (CommonPOS.RefundPOS = True) or (CommonPOS.VeteranoActivo > 0) then
  if ((StrToFloat(Edit4.Text) > 0) or (CommonPOS.RefundPOS = True) or (CommonPOS.VeteranoActivo > 0))
    or  ((Copy(dmmidas.CDSTransShowUPC.Value,1,2) = 'RX') and (StrToFloat(Edit4.Text) = 0)) then
  begin
    if (PayType = 'TFAM') and (StrToFloat(Edit4.Text) > 0) and (CommonPOS.unicaCard = False) then
    begin
      With DMMidas do
      begin
        TranNo := CDSTransHeadTRANSACTIONNUMBER.AsString;
        CommonPOS.DisconnectFromDatabase;
        With POS_UPDATE_TAX_TFAM do
        begin
          Prepare;
          parambyName('@TRANS_NO').Value := StrToInt(TranNo);
          ExecProc;
        end;
        Queries.OpentTransHeader(StrToInt(TranNo),false);
        {CDSTransHead.Close;
        CDSTransHead.Params.ParamByName('NoTrans').asInteger := StrToInt(TranNo);
        CDSTransHead.Open;}
      end;
    end;
    //SubTotal := DMMidas.CDSTransHeadTOTAL.AsFloat - (DMMidas.CDSTransHeadTAX.AsFloat + DMMidas.CDSTransHeadTAX_ESTATAL.AsFloat);
    //=======CREDIT TRANSACTION ======================
    if PayType = 'CRED' then
    begin
      Continuar := CommonPOS.CreditTransaction(StrToFloat(Edit4.Text));
    end;
    //========Layaway Transaction=====================
    if (PayType = 'LWAY') or (AbonoLayawayCR = True) then
    begin
      Continuar := CommonPOS.Layaway(StrToFloat(Edit4.Text));
    end;
    //===========Cash back=============================
    if (PayType = 'CHK')
    or (PayType = 'ATH')
    or (PayType = 'VISA')
    or (PayType = 'PPAL')
    or (PayType = 'TFAM') then
    begin
      With DMMidas do
      begin
        CashBack := (CDSTransHeadTOTAL.asFloat + (CDSTransHeadTotal_Tip.asFloat + StrToFloat(EditTIP.Text))) - (CDSTransHeadPAYAMOUNT1.asFloat + (StrToFloat(Edit4.Text)));
        if CashBack < -0.01 then
        begin
          if CDSSetupmax_cashback.value = 0 then
          begin
            CommonPOS.ShowMessageStr('No cashback amount allowed!',12, clRed);
            exit;
          end;

          if Abs(CashBack) > CDSSetupmax_cashback.value then
          begin
            CommonPOS.ShowMessageStr('Maximum cashback value allowed is: ' + Format('%m', [CDSSetupmax_cashback.asFloat]), 12, clRed);
            canClose := False;
            //exit;
          end
          else
          begin
            CommonPOS.AddProduct('F','99999999997','CASHBACK','CASB','F','',
                               CommonPOS.User, 'F', 'F', CashBack,
                               CashBack, 0, 0,1,0,CommonPOS.Turno, CommonPOS.ID, 0,0,0,0,false,false,'',0,false,0,false, false);
          end;
        end;
      end;
    end;

    //=================================================
    if Continuar = True then
    begin
      NoRecibos := 0;
      if (PayType = 'CASH') then NoRecibos := CommonPOS.NO_RECIBOS_CASH;
      if (PayType = 'CHK') Then NoRecibos := CommonPOS.NO_RECIBOS_CHECK;
      if (PayType = 'ATH') or
         (PayType = 'ATHM') or
         (PayType = 'TFAM') then NoRecibos := CommonPOS.NO_RECIBOS_DEBIT_CARD;
      if (PayType = 'VISA') then NoRecibos := CommonPOS.NO_RECIBOS_CREDIT_CARD;
      if (PayType = 'PPAL') then NoRecibos := CommonPOS.NO_RECIBOS_PAYPAL;
      if (PayType = 'LWAY') then NoRecibos := CommonPOS.NO_RECIBOS_LAYAWAY;
      if (PayType = 'CRED') then NoRecibos := CommonPOS.NO_RECIBOS_CREDITSALE;
      if (PayType = 'NCHG') then NoRecibos := CommonPOS.NO_RECIBOS_NOCHARGE;
      if CommonPOS.delivery = true then NoRecibos := CommonPOS.NO_RECIBOS_DELIVERY;
      if CommonPOS.Utility = true then NoRecibos := CommonPOS.NO_RECIBOS_UTILITIES;


      if CommonPOS.TripleS_ApprovedAmount > 0 then NoRecibos := 2;
      //if (PayType = 'CRED') then NoRecibos := 2;

      if  trim(Editemail.Text) > '' then
        CommonPOS.email := Trim(Editemail.Text);
      CommonPOS.CheckOut(StrToFloat(EditTip.Text),
      CommonPOS.RoundingUserDefineDecaimalPart(StrToFloat(Edit4.Text), 2),
      DMMidas.CDSTransHeadTOTAL.AsFloat - (DMMidas.CDSTransHeadTAX.AsFloat + DMMidas.CDSTransHeadTAX_ESTATAL.AsFloat), PayType,
      IntToStr(rgReceiptType.ItemIndex), True, NoRecibos, CBFacturaRecibo.Checked);
      if DMMidas.CDSTransHeadTOTAL.AsFloat < 1000 then
        Edit4.Text := Format('%.2f',[DMMidas.CDSTransHeadBalance.AsFloat]);
      CommonPOS.RefundPOS := False;
      FrmPOSRest.LabelCustomer.Caption := '';//'Refund Inactive';
      CommonPOS.RefundPOS := False;
      CommonPOS.WICActivo := False;
      CommonPOS.recalledTrans := False;
    end;
    Edit4.Visible := False;
  end;
end;


procedure TFrmCheckOut.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
Var
  Difference: Double;
begin
  if (Edit4.Text = '0') or (Edit4.Text = '0.00') then
    canclose := True
  else
  begin
    With DMMidas do
    begin
      if CDSTransHeadPAYAMOUNT1.asFloat > 0 then
      begin
        //if CommonPOS.RoundingUserDefineDecaimalPart(StrToFloat(Edit4.Text), 2) < CDSTransHeadBalance.AsBCD then
        Difference := CommonPOS.RoundingUserDefineDecaimalPart(CDSTransHeadBalance.AsFloat,2) - CommonPOS.RoundingUserDefineDecaimalPart(StrToFloat(Edit4.Text), 2);
        //Difference := CommonPOS.RoundingUserDefineDecaimalPart(Difference,2);
        //if (CommonPOS.RoundingUserDefineDecaimalPart(StrToFloat(Edit4.Text), 2) - CDSTransHeadBalance.AsBCD) < 0.01 then
        //if (Difference > 0.02 ) or (Difference < -0.02 ) then

        //if CommonPOS.RoundingUserDefineDecaimalPart(StrToFloat(Edit4.Text), 2) < CDSTransHeadBalance.AsBCD then
        if (CommonPOS.RoundingUserDefineDecaimalPart(StrToFloat(Edit4.Text), 2) < CommonPOS.RoundingUserDefineDecaimalPart(CDSTransHeadBalance.AsFloat,2)) then
        begin
          if Difference > 0.01 then
          begin
            Edit4.Text := FloatToStr(CDSTransHeadBalance.Value);
            ShowMessage('Amount must be ' + CDSTransHeadBalance.asString + ' or greater');
            Edit4.SetFocus;
            CanClose := False;
          end
          else
          begin
            CanClose := true;
          end;
        end;
      end;
      if CommonPOS.TripleS_ApprovedAmount > 0 then
      begin
        if StrToFloat(Edit4.Text) <= 0 then
        begin
          if FrmMain.LanguageStr = 'English' then
            CommonPOS.ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 294), 12, clBlack)
          else
          CommonPOS.ShowMessageStr('Debe entrar un valor sugerido para poder continuar!', 12, clRed);
          Edit4.SetFocus;
          CanClose := False;
        end;
      end;
    end;
  end;
end;

procedure TFrmCheckOut.FormCreate(Sender: TObject);
begin
  With DMMidas do
  begin
    btnTip1.Caption := Format('%n', [CDSSetupTIP_PERCENTAGE1.AsFloat]) + '%';
    btnTip2.Caption := Format('%n', [CDSSetupTIP_PERCENTAGE2.AsFloat]) + '%';
    btnTip3.Caption := Format('%n', [CDSSetupTIP_PERCENTAGE3.AsFloat]) + '%';
    if CDSSetupPOS_ACTIVE_TIP.Value = False then
    Begin
      EditTIP.Visible := False;
    End;
    seNoRecibos.Value := 1;
    Editemail.Text := Trim(CommonPOS.email);
    if CommonPOS.activePin = True then
      btnManual.Visible := True
    else
      btnManual.Visible := False;
  end;
end;

{begin
  FrmPOSTS.Edit4.Value := FrmCheckOut.Edit4.Value;
end;}

procedure TFrmCheckOut.Edit4Change(Sender: TObject);
var
  tmp : integer;
  total, editTotal: Double;
begin
  if CommonPOS.IsNumber(Edit4.Text) then
  begin
    Edit4.Color := clWhite;
    if StrToFloat(Edit4.Text) > 2000000 then
    begin
      Edit4.Text := '';
      ShowMessage('Incorrect value, must be lower than 10,000!');
    end;
    if Edit4.text > '' then
    begin
      total := 0;
      editTotal := StrToFloat(Edit4.Text);
      editTotal := RoundTo(editTotal, -2);
      total := editTotal - DMMidas.CDSTransHeadTOTAL.asFloat;

      if (PayType = 'ATH') or (PayType = 'VISA') or (PayType = 'ATHM') or (PayType = 'TFAM')
           or (PayType = 'TSSS') then
      begin
        if total > DMMidas.CDSSetupmax_cashback.Value then
        begin
          CommonPOS.ShowMessageStr('Max cashback exceeded!', 14, clRed);
          canCloseGlobal := False;
          Edit4.Text := DMMidas.CDSTransHeadTOTAL.asString;
          Edit4.SetFocus;
        end;
      end;
    end;
  end
  else
    Edit4.Color := clred;
end;

procedure TFrmCheckOut.Edit4Enter(Sender: TObject);
begin
  if CommonPOS.RefundPOS = true then Edit4.ReadOnly := True
  else
    Edit4.ReadOnly := False;
  if (Copy(dmmidas.CDSTransShowUPC.Value,1,2) = 'RX') and (dmmidas.CDSTransHeadTOTAL.Value = 0) then
  begin
    FrmCheckOut.Edit4.ReadOnly := true;
  end;
end;

procedure TFrmCheckOut.Edit4Exit(Sender: TObject);
Var
  loc: Integer;
begin
    loc := Pos('.', Edit4.Text);
    Edit4.Text := Copy(Edit4.Text,1,loc+2);
end;

procedure TFrmCheckOut.FormShow(Sender: TObject);
Var
  SendStr: String;
  XML_REQUEST: IXMLNode;
  TROUTD: String;
  RESULT: String;
  AUTH_CODE: String;
  REFERENCE: String;
  AVS_CODE: String;
  TRANS_DATE: String;
  AUTORIZAM: String;
  TRANS_ID: String;
  EBT_BAL: String;
  CASH_BAL: String;
  SEQ_TR: String;
  ENTRYM: String;
  ACCOUNTTYPE: String;
  PRINTDATA: String;
  //PrintDataDefine: String;
  PositionStr: Integer;
  lStringList: TStringList;
begin
  if FrmMain.LanguageStr = 'English' then
    language;
  FrmCheckOut.Caption := 'Check Out: ' + PayType;
  With DMMidas do
  begin
    if (PayType = 'CRED')  then
    begin
      Edit4.Enabled := False;
      ButtonClose.SetFocus;
      ButtonClose.Click;
    end;
    //seNoRecibos.Value := CommonPOS.NUMERO_DE_RECIBOS;
    if DMMidas.CDSSetupFACTURARECIBO.Value = 'F' then
      CBFacturaRecibo.Checked := True
    else
      CBFacturaRecibo.Checked := False;

    if ((PayType = 'VISA') or (PayType = 'ATH')) and (CDSSetupCD_ACTIVE.Value = True) then
    begin
      //ShowMessage(Trim(CDSSetupCD_MERCHANT_ID.Value)+ '|'+Trim(CDSSetupCD_TERMINAL_ID.Value)+ '|1|'+ IntToStr(CommonPOS.TransNo) + '|'+ Trim(Edit4.Text)+'|0|'+ formatdatetime('d/m/y', Date))+'|'+ '1234234234'+ '|0|' + Trim(CDSSetupCD_COMUNICATION_PORT.Value) + '|' + Trim(CDSSetupCD_SERVER_IP.Value)+'|'+ Trim(CDSSetupCD_SECUREDEVICE_EMV.Value)+'|'+ Trim(CDSSetupCD_SECURE_DEVICE.Value)+'|'+ Trim(CDSSetupCD_PINPAD_TYPE.Value);
      SendStr := Trim(CDSSetupCD_MERCHANT_ID.Value)+ '|';    //MERCHANT ID
      SendStr := SendStr + Trim(CDSSetupCD_TERMINAL_ID.Value); //TERMINAL ID
      if (PayType = 'VISA') then SendStr := SendStr + '|1|';  //COMMAND OR TRANSACTION TYPE
      if (PayType = 'ATH') then SendStr := SendStr + '|41|';  //COMMAND OR TRANSACTION TYPE
      SendStr := SendStr + IntToStr(CommonPOS.TransNo) + '|'; // TRANSACTION NUMBER
      SendStr := SendStr + Trim(Edit4.Text);  //AMOUNT
      SendStr := SendStr +'|0|'; //CASH BACK
      SendStr := SendStr + formatdatetime('d/m/y', Date)+'|'; // DATE
      SendStr := SendStr + ' ';
      if CDSSetupCD_LOG_ACTIVATION.Value = True then
        SendStr := SendStr + '|1|'
      else
        SendStr := SendStr + '|0|';
      SendStr := SendStr + Trim(CDSSetupCD_COMUNICATION_PORT.Value)+ '|';
      SendStr := SendStr + Trim(CDSSetupCD_SERVER_IP.Value)+'|';
      SendStr := SendStr + Trim(CDSSetupCD_SECUREDEVICE_EMV.Value)+'|';
      SendStr := SendStr + Trim(CDSSetupCD_SECURE_DEVICE.Value)+'|';
      SendStr := SendStr + Trim(CDSSetupCD_PINPAD_TYPE.Value) + '|';



      SendStr := CommonPOS.base64encode(SendStr);
      FrmMain.XMLDocument1.XML.Text := CommonPOS.CD_PROCESSING(SendStr, extractfilepath(application.exename));
      FrmMain.XMLDocument1.Active := True;
       Try
         XML_REQUEST := FrmMain.XMLDocument1.DocumentElement;
         TROUTD := XML_REQUEST.ChildNodes['TROUTD'].Text;
         RESULT := XML_REQUEST.ChildNodes['RESULT'].Text;
         AUTH_CODE := XML_REQUEST.ChildNodes['AUTH_CODE'].Text;
         REFERENCE := XML_REQUEST.ChildNodes['REFERENCE'].Text;
         AVS_CODE := XML_REQUEST.ChildNodes['AVS_CODE'].Text;
         TRANS_DATE := XML_REQUEST.ChildNodes['TRANS_DATE'].Text;
         AUTORIZAM := XML_REQUEST.ChildNodes['AUTORIZAM'].Text;
         TRANS_ID := XML_REQUEST.ChildNodes['TRANS_ID'].Text;
         EBT_BAL := XML_REQUEST.ChildNodes['EBT_BAL'].Text;
         CASH_BAL := XML_REQUEST.ChildNodes['CASH_BAL'].Text;
         SEQ_TR := XML_REQUEST.ChildNodes['SEQ_TR'].Text;
         ENTRYM := XML_REQUEST.ChildNodes['ENTRYM'].Text;
         ACCOUNTTYPE := XML_REQUEST.ChildNodes['ACCOUNTTYPE'].Text;
         PRINTDATA := XML_REQUEST.ChildNodes['PRINTDATA'].Text;


       Finally
         FrmMain.XMLDocument1.Active := False;
       End;
       if RESULT = 'Approved' then
       begin
         With INSERT_TROUTD do
         begin
           {ParamByName('@TROUTD').Value := Trim(COPY(TROUTD,1,40));
           ParamByName('@AUTH_CODE').Value := Trim(COPY(AUTH_CODE,1,20));
           ParamByName('@REFERENCE').Value := Trim(COPY(REFERENCE,1,20));
           ParamByName('@SEQ_TR').Value := Trim(COPY(SEQ_TR,1,20));
           ParamByName('@AVS_CODE').Value := Trim(COPY(AVS_CODE,1,30));
           ParamByName('@TRANSACTIONNUMBER').Value := CommonPOS.TransNo;
           ExecProc;}
           //========Define Printing Data========================
           CommonPOS.PrintDataDefine := PRINTDATA;
           CommonPOS.CDApproved := True;
           Edit4.Enabled := False;
           //ButtonClose.Click;
           FrmCheckOut.Close;
         end;

       end
       else
       begin
         CommonPOS.PrintDataDefine := '';
         CommonPOS.CDApproved := False;
       end;
    end;
  end;

end;

procedure TFrmCheckOut.language;
begin
  label1.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 010);
  label4.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 011);
  label7.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 205);
  CBFacturaRecibo.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 231);
  label2.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 230);
end;

procedure TFrmCheckOut.MemoCheckoutChange(Sender: TObject);
begin
  if Trim(MemoCheckout.Text) > '' then ButtonClose.Enabled := True;
end;

procedure TFrmCheckOut.btnTip2Click(Sender: TObject);
begin
  With DMMidas do
  begin
    Tip := (CDSTransHeadTOTAL.asFloat * CDSSetupTIP_PERCENTAGE2.asFloat);
    EditTIP.Text := Format('%n', [Tip]);
    EditTotalwTip.Text := format('%m',  [Tip + CDSTransHeadTOTAL.asFloat]);
  end;
end;

procedure TFrmCheckOut.btnTip3Click(Sender: TObject);
begin
  With DMMidas do
  begin
    Tip := (CDSTransHeadTOTAL.asFloat * CDSSetupTIP_PERCENTAGE3.asFloat);
    EditTIP.Text := Format('%n', [Tip]);
    EditTotalwTip.Text := format('%m',  [Tip + CDSTransHeadTOTAL.asFloat]);
  end;
end;

Procedure TFrmCheckOut.UPDATE_TRANSACTION;
begin
    {CommonPOS.DisconnectFromDatabase;
    With DMMidas.UPDATE_TRANSACTION_HEADER do
    begin
      Prepare;
      ParamByName('@TRANSNO').Value := CommonPOS.Header;
      ParamByName('@AMOUNT_TENDERED').Value := Amount;
      ParamByName('@PAYMENTTYPE').Value := '';
      ParamByName('@CUSTOMERID').Value := CommonPos.Customer;
      ParamByName('@TIP').Value := Tip;
      ExecProc;
      DMMidas.CDSTransHead.Close;
      With DMMidas do
      begin
        CDSTransHead.Close;
        CDSTransHead.Params.ParamByName('NoTrans').asInteger := Header;
        CDSTransHead.Open;
        Change := CDSTransHeadCHANGE.asFloat;
      end;
    end;}
end;

end.
