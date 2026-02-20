unit UntSetup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, Buttons, StdCtrls, DBCtrls, DB,
  Mask,  ComCtrls, Printers, Wlccdll, Variants, Math,
  Registry, ToolWin, jpeg, ImgList, menus, Spin, ResourceLocalizer;


type
  TFrmSetup = class(TForm)
    Panel3: TPanel;
    OpenDialog1: TOpenDialog;
    Button1: TButton;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    TBPost: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton10: TToolButton;
    TabSheet1: TTabSheet;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label22: TLabel;
    ComboBox1: TComboBox;
    Label19: TLabel;
    DBEdit18: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    EditPoleDisplayPort: TEdit;
    Label1: TLabel;
    ComboBox3: TComboBox;
    Label23: TLabel;
    Label18: TLabel;
    DBEdit20: TDBEdit;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    Label17: TLabel;
    DBEdit3: TDBEdit;
    Label21: TLabel;
    DBEdit5: TDBEdit;
    Label20: TLabel;
    DBEdit4: TDBEdit;
    Label24: TLabel;
    ComboBoxVendor: TComboBox;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    SpinEdit1: TSpinEdit;
    GroupBox2: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Label30: TLabel;
    CheckBox5: TCheckBox;
    CheckBox1: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox13: TCheckBox;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    CheckBox14: TCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    GroupBox3: TGroupBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    GroupBox4: TGroupBox;
    Label40: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label42: TLabel;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    ComboBox21: TComboBox;
    ComboBox22: TComboBox;
    ComboBox5: TComboBox;
    GroupBox5: TGroupBox;
    dbCBSalestechSA: TDBCheckBox;
    EditSalesTechSADataBase: TEdit;
    TabSheet3: TTabSheet;
    CheckBox9: TCheckBox;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    Label12: TLabel;
    Label14: TLabel;
    EditServerNameCC: TEdit;
    Label16: TLabel;
    EditServerNameFarmatecCC: TEdit;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    RadioGroupBusqueda: TRadioGroup;
    TabSheet6: TTabSheet;
    DBCheckBox6: TDBCheckBox;
    Label35: TLabel;
    DBEdit14: TDBEdit;
    Label34: TLabel;
    DBEdit12: TDBEdit;
    Label36: TLabel;
    DBEdit15: TDBEdit;
    Label37: TLabel;
    DBEdit16: TDBEdit;
    Label38: TLabel;
    DBComboBox1: TDBComboBox;
    Label39: TLabel;
    DBComboBox2: TDBComboBox;
    Label41: TLabel;
    DBComboBox3: TDBComboBox;
    DBCheckBox5: TDBCheckBox;
    Label43: TLabel;
    SpinEditCreditCard: TSpinEdit;
    DBEdit17: TDBEdit;
    SpinEditNoCaja: TSpinEdit;
    pcMain: TPageControl;
    DBComboBox4: TDBComboBox;
    DBCheckBox7: TDBCheckBox;
    TabSheet7: TTabSheet;
    GroupBox6: TGroupBox;
    CheckBox12: TCheckBox;
    CheckBoxBarcodeNoRx: TCheckBox;
    CheckBox8: TCheckBox;
    CBFirmaElectronica: TCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBImage1: TDBImage;
    SpeedButton2: TSpeedButton;
    TabSheet8: TTabSheet;
    GroupBox7: TGroupBox;
    Label2: TLabel;
    ComboBox4: TComboBox;
    Label33: TLabel;
    ComboBox6: TComboBox;
    ComboBoxFontSize: TComboBox;
    Label5: TLabel;
    Label45: TLabel;
    cbKitchenPrinter: TComboBox;
    Label46: TLabel;
    cbPrinterID: TComboBox;
    cbPrintToScreen: TCheckBox;
    DBEdit19: TDBEdit;
    Label47: TLabel;
    Label48: TLabel;
    DBEdit21: TDBEdit;
    Label49: TLabel;
    DBEdit22: TDBEdit;
    DBCheckBox12: TDBCheckBox;
    cbPOS_RESTAURANT: TCheckBox;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    TabSheet9: TTabSheet;
    Label50: TLabel;
    DBEdit25: TDBEdit;
    Label51: TLabel;
    DBEdit26: TDBEdit;
    Label52: TLabel;
    DBEdit27: TDBEdit;
    DBCheckBox18: TDBCheckBox;
    DBEdit28: TDBEdit;
    Label32: TLabel;
    DBMemo1: TDBMemo;
    Label53: TLabel;
    DBCheckBox19: TDBCheckBox;
    TabSheet10: TTabSheet;
    DBCheckBox20: TDBCheckBox;
    cbEnforceSignatureonPickup: TCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    DBImage2: TDBImage;
    SpeedButton5: TSpeedButton;
    Label56: TLabel;
    Label57: TLabel;
    DBCheckBox24: TDBCheckBox;
    cbPrintBarCode_PartNo: TComboBox;
    Label58: TLabel;
    DBEdit31: TDBEdit;
    Label59: TLabel;
    DBEdit32: TDBEdit;
    Label60: TLabel;
    DBComboBox5: TDBComboBox;
    Label61: TLabel;
    EditPrinterIP: TEdit;
    EditPrinterPort: TEdit;
    Label62: TLabel;
    Label63: TLabel;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    DBEdit33: TDBEdit;
    Label64: TLabel;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    GroupBox8: TGroupBox;
    Label55: TLabel;
    DBEdit30: TDBEdit;
    Label54: TLabel;
    DBEdit29: TDBEdit;
    GroupBox9: TGroupBox;
    Label65: TLabel;
    DBEdit34: TDBEdit;
    SpinEditCash: TSpinEdit;
    Label70: TLabel;
    Label44: TLabel;
    Label71: TLabel;
    SpinEditCredit: TSpinEdit;
    Label72: TLabel;
    SpinEditLayaway: TSpinEdit;
    Label73: TLabel;
    SpinEditDebitCard: TSpinEdit;
    Label74: TLabel;
    SpinEditPayPal: TSpinEdit;
    Label75: TLabel;
    SpinEditCheck: TSpinEdit;
    Label76: TLabel;
    SpinEditDelivery: TSpinEdit;
    Label77: TLabel;
    SpinEditUtil: TSpinEdit;
    Label78: TLabel;
    SpinEditNoCharge: TSpinEdit;
    cbPoleDisplayPort: TComboBox;
    EditSaServerName: TEdit;
    checkBoxStandalone: TCheckBox;
    cbExtendedPOSform: TCheckBox;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBMemo2: TDBMemo;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    DBCheckBox30: TDBCheckBox;
    GroupBox10: TGroupBox;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    cbActivePin: TCheckBox;
    EditPinIp: TEdit;
    EditPinTid: TEdit;
    EditPinPortNum: TEdit;
    EditPinStationNum: TEdit;
    DBCheckBox29: TDBCheckBox;
    GroupBox12: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    CheckBoxIVULOTO_ACTIVE: TCheckBox;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    EditIVULOTO_TERMINALID: TEdit;
    EditTxportIP: TEdit;
    GroupBox11: TGroupBox;
    lblAPIKey: TLabel;
    lblMerchantId: TLabel;
    lblTerminalId: TLabel;
    Label84: TLabel;
    ChkSpinPOS: TCheckBox;
    edtAPIKey: TEdit;
    edtMerchantId: TEdit;
    edtTerminalId: TEdit;
    DBEdit39: TDBEdit;
    EditMaxPullout: TEdit;
    Label85: TLabel;
    procedure ComboBox1Change(Sender: TObject);
    procedure TBPostClick(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure TlBtnRefreshClick(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton1Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ComboBox21Change(Sender: TObject);
    procedure ComboBox22Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
    procedure ComboBoxFontSizeChange(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
    procedure CheckBox12Click(Sender: TObject);
    procedure CheckBox13Click(Sender: TObject);
    procedure CheckBox14Click(Sender: TObject);
    procedure CheckBoxIVULOTO_ACTIVEClick(Sender: TObject);
    procedure cxSpinEdit1PropertiesChange(Sender: TObject);
    procedure EditTxportIPChange(Sender: TObject);
    procedure ComboBoxVendorChange(Sender: TObject);
    procedure CheckBoxBarcodeNoRxClick(Sender: TObject);
    procedure CBFirmaElectronicaClick(Sender: TObject);
    procedure ComboBox6Change(Sender: TObject);
    procedure SpinEditNoCajaChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbPrinterIDChange(Sender: TObject);
    procedure cbPrintToScreenClick(Sender: TObject);
    procedure cbKitchenPrinterChange(Sender: TObject);
    procedure cbPOS_RESTAURANTClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure cbPrintBarCode_PartNoChange(Sender: TObject);
    procedure cbActivePinClick(Sender: TObject);
    procedure language;
    procedure getSerialPorts;
    procedure FormActivate(Sender: TObject);
    procedure ChkSpinPOSClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FrmSetup: TFrmSetup;
  //MyReg : TRegistry;
  MyPrinter: TPrinter;

implementation

uses untMain,  UntDMMidas, UntCommonPOS;

{$R *.DFM}

procedure TFrmSetup.ComboBox1Change(Sender: TObject);
begin
  {With MyReg do
  begin
    RootKey := HKEY_LOCAL_MACHINE;
    OpenKey('\FarmaTec2000\Opcion', True);
    try
      WriteString('ComPort', IntToStr(ComboBox1.ItemIndex));
    except
    end;
    CloseKey;
  end; }
end;

procedure TFrmSetup.TBPostClick(Sender: TObject);
Var
  Registro: TRegistry;
begin
  With DMMidas do
  begin
    if (DSSetup.State = dsEdit) or (DSSetup.State = dsInsert) then
    begin
      CDSSetup.Post;
    end;
    if (dsCounters.State = dsEdit) or (dsCounters.State = dsInsert) then
    begin
      cdsCounters.Post;
    end;
  end;
  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_LOCAL_MACHINE;
  Registro.OpenKey('\SOFTWARE\WOW6432Node\FarmaTec2000', True);
  Registro.WriteString('ServerNameMSSQL', EditServerNameFarmatecCC.Text);
  try
    Registro.WriteString('ServerNamePOS', EditSaServerName.Text);
  except
  end;
  try
    Registro.WriteBool('StandalonePOS', checkBoxStandalone.Checked);
  except
    //
  end;
  try
    Registro.WriteBool('ExtendedPosForm', cbExtendedPOSform.Checked);
  except
    //
  end;
  try
  begin
    if EditMaxPullout.Text > '' then
      Registro.WriteString('MaxPulloutAmnt', EditMaxPullout.Text)
    else
      Registro.WriteString('MaxPulloutAmnt', '0')
  end;
  except
    //
  end;
  try
    Registro.WriteString('DatabaseNamePOS', EditSalesTechSADataBase.Text);
  except
  end;
    try
      Registro.WriteBool('PrintToScreen', cbPrintToScreen.Checked);
      Registro.WriteString('Caja#', IntToStr(SpinEditNoCaja.Value ));
      COMmonPOS.RegisterNo := IntToStr(SpinEditNoCaja.Value );
      //Registro.WriteString('SkinName', ComboBoxSkinName.Text);
      Registro.WriteString('Vendor', Trim(ComboBoxVendor.Text));
      Registro.WriteBool('BarcodeNoReceta', CheckBoxBarcodeNoRx.Checked);
      Registro.WriteString('BarcodePrinter', ComboBox6.Text);
      Registro.WriteString('ServerNameSalesTech', EditSalesTechSADataBase.Text);
      Registro.WriteString('PrinterID', Trim(cbPrinterID.Text));
      Registro.WriteBool('POS_RESTAURANT', cbPOS_RESTAURANT.Checked);
      CommonPOS.Restaurant := cbPOS_RESTAURANT.Checked;
    except
    end;
  With Registro do
  begin
    //RootKey := HKEY_LOCAL_MACHINE;
    OpenKey('\SOFTWARE\WOW6432Node\FarmaTec2000\Opciones', True);
    WriteBool('Credito', CheckBox3.Checked);
    WriteBool('ActivePin', cbActivePin.Checked);
    WriteString('pinIp', Trim(EditPinIp.Text));
    WriteString('pinTid', Trim(EditPinTid.Text));
    WriteString('pinPortNum', Trim(EditPinPortNum.Text));
    WriteString('pinStationNum', Trim(EditPinStationNum.Text));
    //[2025/11/19 jb] set spinPOS
    WriteBool('SpinPOSactive', chkSpinPOS.Checked);
    WriteString('SpinPOSApiKey', Trim(edtAPIKey.Text));
    WriteString('SpinPOSTPN', Trim(edtMerchantId.Text));
    WriteString('SpinPOSReg', Trim(edtTerminalId.Text));

    WriteBool('CreditoCentralizado', CheckBox9.Checked);
    FrmMain.LargeRec[0] := CheckBox3.Checked;
    //OpenKey('\FarmaTec2000\Opciones', True);
    WriteBool('Otros', CheckBox2.Checked);
    FrmMain.LargeRec[2] := CheckBox2.Checked;
    WriteBool('Lay Away', CheckBox4.Checked);
    FrmMain.LargeRec[1] := CheckBox4.Checked;
    WriteInteger('No Facturas', SpinEdit1.Value);
    FrmMain.NumFacturas := SpinEdit1.Value;
    WriteBool('Factura', CheckBox1.Checked);
    WriteBool('Entregas', CheckBox5.Checked);
    FrmMain.PromptDelivery := CheckBox5.Checked;
    WriteBool('RecetasPharmaTech', CheckBox8.Checked);
    FrmMain.RecetasPharmaTech := CheckBox8.Checked;
    WriteBool('Balance en pagos', CheckBox7.Checked);

    FrmMain.BalanceOnPayment := CheckBox7.Checked;
    WriteBool('Imprimir Balance', CheckBox6.Checked);
    //WriteBool('Touch Screen', CheckBox10.Checked);
    WriteBool('Screen800x600', CheckBox10.Checked);
    FrmMain.PrintBalance := CheckBox6.Checked;
    WriteInteger('PoleDisplayPort', StrToInt(EditPoleDisplayPort.Text));
    CommonPOS.PoleDisplayPort := StrToInt(EditPoleDisplayPort.Text);
    WriteBool('ConsiderarQty', CheckBox11.Checked);
    CommonPOS.ConsiderarQty := CheckBox11.Checked;
    WriteBool('RxRecibo', CheckBox12.Checked);
    WriteString('ServerNameCC', EditServerNameCC.Text);
    WriteBool('CheckNoSocio', CheckBox13.Checked);
    WriteInteger('MaximosDiasPagoCredito', SpinEdit2.Value);
    WriteInteger('MaximosDiasPagoLayaway', SpinEdit3.Value);
    WriteBool('ConsiderarCambioPrecio', CheckBox14.Checked);
    WriteString('IVULOTO_TERMINALID', EditIVULOTO_TERMINALID.Text);
    WriteBool('IVULOTO_ACTIVO', CheckBoxIVULOTO_ACTIVE.Checked);
    WriteInteger('OpciondeBusqueda', RadioGroupBusqueda.ItemIndex);
    CommonPOS.OpcionBusqueda := RadioGroupBusqueda.ItemIndex;
    WriteString('txportIP', EditTxportIP.Text);
    WriteBool('FirmaElectronica', CBFirmaElectronica.Checked);
    WriteString('ComPort', IntToStr(ComboBox1.ItemIndex));
    WriteInteger('Tipo Display', ComboBox3.ItemIndex);
    WriteString('PrinterFontSize', ComboBoxFontSize.Text);
    WriteString('Printer Recibo', Trim(ComboBox4.Text));
    WriteString('Kitchen Printer', Trim(cbKitchenPrinter.Text));
    WriteBool('EnforceSignatureonPickup', cbEnforceSignatureonPickup.Checked);
    WriteString('PrinterPort', Trim(EditPrinterPort.Text));
    WriteString('PrinterIP', Trim(EditPrinterIP.Text));

    WriteInteger('NUMERO_DE_RECIBOS_CREDITCARD', SpinEditCreditCard.Value);
    WriteInteger('NUMERO_DE_RECIBOS_DEBITCARD', SpinEditDebitCard.Value);
    WriteInteger('NUMERO_DE_RECIBOS_CREDIT', SpinEditCredit.Value);
    WriteInteger('NUMERO_DE_RECIBOS_LAYAWAY', SpinEditLayaway.Value);
    WriteInteger('NUMERO_DE_RECIBOS_CASH', SpinEditCash.Value);
    WriteInteger('NUMERO_DE_RECIBOS_PAYPAL', SpinEditPayPal.Value);
    WriteInteger('NUMERO_DE_RECIBOS_CHECK', SpinEditCheck.Value);
    WriteInteger('NUMERO_DE_RECIBOS_DELIVERY', SpinEditDelivery.Value);
    WriteInteger('NUMERO_DE_RECIBOS_UTILITY', SpinEditUtil.Value);
    WriteInteger('NUMERO_DE_RECIBOS_NOCHARGE', SpinEditNoCharge.Value);
    WriteString('POLE_DISPLAY_PORT', cbPoleDisplayPort.Items[cbPoleDisplayPort.ItemIndex]);
    CloseKey;
  end;

  //Registro := TRegistry.Create;
  //Registro.RootKey := HKEY_LOCAL_MACHINE;

  Registro.CloseKey;
  Registro.Free;
  CommonPOS.MaximosDiasPagoCredito := SpinEdit2.Value;
  CommonPOS.poleDispPort := cbPoleDisplayPort.Items[cbPoleDisplayPort.ItemIndex];
  //CommonPOS.maximodiasPagoLayaway := SpinEdit3.Value;
end;

procedure TFrmSetup.ToolButton16Click(Sender: TObject);
begin
  DMMidas.CDSSetup.Edit;
end;

procedure TFrmSetup.ToolButton5Click(Sender: TObject);
begin
  if DMMidas.CDSSetup.RecordCount = 1 then
  begin
    if FrmMain.LanguageStr = 'English' then
      ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 315))
    else
    ShowMessage('No Puede añadir mas de un registro...')
  end
  else
    DMMidas.CDSSetup.Append;
end;

procedure TFrmSetup.TlBtnRefreshClick(Sender: TObject);
begin
  DMMidas.CDSSetup.Refresh;
end;

procedure TFrmSetup.ToolButton17Click(Sender: TObject);
Var
  Mensage: String;
begin
  if FrmMain.LanguageStr = 'English' then
    FrmMain.msgD := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 296)
  else
    FrmMain.msgD := 'Desea borrar este Registro?';
  if MessageDlg(FrmMain.msgD,
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        DMMidas.CDSSetup.Delete;
      end;
end;

procedure TFrmSetup.FormActivate(Sender: TObject);
begin
  With DMMidas do
  begin
    cdsCounters.Active := true;
  end;
end;

procedure TFrmSetup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TBPost.Click;
  DMMidas.CDSSetup.Refresh;
  CommonPOS.NO_RECIBOS_CREDIT_CARD := SpinEditCreditCard.Value;
  CommonPOS.NO_RECIBOS_DEBIT_CARD := SpinEditDebitCard.Value;
  CommonPOS.NO_RECIBOS_CASH := SpinEditCash.Value;
  CommonPOS.NO_RECIBOS_CREDITSALE := SpinEditCredit.Value;
  CommonPOS.NO_RECIBOS_LAYAWAY := SpinEditLayaway.Value;
  CommonPOS.NO_RECIBOS_PAYPAL := SpinEditPayPal.Value;
  CommonPOS.NO_RECIBOS_DELIVERY := SpinEditDelivery.Value;
  CommonPOS.NO_RECIBOS_UTILITIES := SpinEditUtil.Value;
  CommonPOS.NO_RECIBOS_CHECK := SpinEditCheck.Value;
  CommonPOS.NO_RECIBOS_NOCHARGE := SpinEditNoCharge.Value;

  if (DMMidas.CDSSetup.ChangeCount > 0) then DMMidas.CDSSetup.ApplyUpdates(0);
  CommonPOS.TaxRate := DMMidas.CDSSetupTAX_RATE.Value;
  if dbCBSalestechSA.Checked then
    CommonPOS.SelectSalesTechMobile(CommonPOS.ServerNameSalesTech)
   else
     CommonPOS.SelectSalesTechLocal;
  FrmMain.FormCreate(nil);
end;

procedure TFrmSetup.ToolButton1Click(Sender: TObject);
begin
  DMMidas.CDSSetup.Cancel;
end;

procedure TFrmSetup.ComboBox3Change(Sender: TObject);
Var
  MyReg: TRegistry;
begin
  With MyReg do
  begin
    RootKey := HKEY_LOCAL_MACHINE;
    //OpenKey('\SOFTWARE\WOW6432Node\FarmaTec2000', True);
    OpenKey('\SOFTWARE\WOW6432Node\FarmaTec2000\Opciones', True);
    try
      WriteInteger('Tipo Display', ComboBox3.ItemIndex);
    except
    end;
    CloseKey;
  end;
end;

procedure TFrmSetup.FormDestroy(Sender: TObject);
begin
  //MyReg.Free;
  MyPrinter.Free;
end;

procedure TFrmSetup.FormShow(Sender: TObject);
Var
  Registro: TRegistry;
  i2: Integer;
begin
  if FrmMain.LanguageStr = 'English' then
  begin
    CommonPOS.LanguageIndex := 0;
    FrmMain.LanguageResOffset := 1000;
  end;
  MyPrinter := TPrinter.Create;
  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_LOCAL_MACHINE;
  Registro.OpenKey('\SOFTWARE\WOW6432Node\FarmaTec2000', TRUE);
  With Registro do
  begin
    try
      checkBoxStandalone.Checked := ReadBool('StandalonePOS');
    Except
      checkBoxStandalone.Checked := False;
    end;
    try
      cbExtendedPOSform.Checked := ReadBool('ExtendedPosForm');
    Except
      cbExtendedPOSform.Checked := False;
    end;
    Try
      EditMaxPullout.Text := ReadString('MaxPulloutAmnt');
    Except
      EditMaxPullout.Text := '0';
    End;
    Try
      EditSalesTechSADataBase.Text := ReadString('DataBaseNamePOS');
    Except
      EditSalesTechSADataBase.Text := '';
    end;
    Try
      EditSaServerName.Text := ReadString('ServerNamePOS');
    Except
      EditSaServerName.Text := '';
    end;
    try
      SpinEditNoCaja.Value := StrToInt(ReadString('Caja#'));
    except
      SpinEditNoCaja.Value  := 0;
    end;
    cbPrinterID.Text := ReadString('PrinterID');
    ComboBox21.Text := ReadString('DirEntradaMerc');
    ComboBox22.Text := ReadString('DirTranferenciaMerc');
    ComboBox5.Text := ReadString('DirReportes');
    cbPrintToScreen.Checked := CommonPOS.PrintToScreen;
    CloseKey;
    RootKey := HKEY_LOCAL_MACHINE;
    OpenKey('\SOFTWARE\WOW6432Node\FarmaTec2000\Opciones', True);
    Try
      EditServerNameCC.Text := ReadString('ServerNameCC');
      EditServerNameFarmatecCC.Text := ReadString('ServerNameFarmatecCC');
      CheckBox2.Checked := ReadBool('Otros');
      CheckBox3.Checked := ReadBool('Credito');
      CheckBox4.Checked := ReadBool('Lay Away');
      CheckBox5.Checked := ReadBool('Entregas');
      CheckBox1.Checked := ReadBool('Factura');
      CheckBox6.Checked := ReadBool('Imprimir Balance');
      CheckBox7.Checked := ReadBool('Balance en pagos');
      CheckBox8.Checked := ReadBool('RecetasPharmaTech');
      SpinEdit1.Value := ReadInteger('No Facturas');
      CheckBox9.Checked := ReadBool('CreditoCentralizado');
      CheckBox10.Checked := ReadBool('Screen800x600');
      EditPoleDisplayPort.Text := IntToStr(ReadInteger('PoleDisplayPort'));
      CheckBox11.Checked := ReadBool('ConsiderarQty');
      CheckBox12.Checked := ReadBool('RxRecibo');
      CheckBox13.Checked := ReadBool('CheckNoSocio');
      SpinEdit2.Value := ReadInteger('MaximosDiasPagoCredito');
      SpinEdit3.Value := ReadInteger('MaximosDiasPagoLayaway');
      CheckBox14.Checked := ReadBool('ConsiderarCambioPrecio');
      EditIVULOTO_TERMINALID.Text := ReadString('IVULOTO_TERMINALID');
      CheckBoxIVULOTO_ACTIVE.Checked := ReadBool('IVULOTO_ACTIVO');
      try
        SpinEditCreditCard.Value := ReadInteger('NUMERO_DE_RECIBOS_CREDITCARD');
      except
        SpinEditCreditCard.Value := 1;
      end;
      try
        SpinEditDebitCard.Value := ReadInteger('NUMERO_DE_RECIBOS_DEBITCARD');
      Except
        SpinEditDebitCard.Value := 1;
      end;
      try
        SpinEditCash.Value := ReadInteger('NUMERO_DE_RECIBOS_CASH');
      Except
        SpinEditCash.Value := 1;
      end;
      try
        SpinEditCredit.Value := ReadInteger('NUMERO_DE_RECIBOS_CREDIT');
      Except
        SpinEditCredit.Value := 1;
      end;
      try
        SpinEditLayaway.Value := ReadInteger('NUMERO_DE_RECIBOS_LAYAWAY');
      Except
        SpinEditLayaway.Value := 1;
      end;
      try
        SpinEditPayPal.Value := ReadInteger('NUMERO_DE_RECIBOS_PAYPAL');
      Except
        SpinEditPayPal.Value := 1;
      end;
      try
        SpinEditCheck.Value := ReadInteger('NUMERO_DE_RECIBOS_CHECK');
      Except
        SpinEditCheck.Value := 1;
      end;
      try
        SpinEditDelivery.Value := ReadInteger('NUMERO_DE_RECIBOS_DELIVERY');
      Except
        SpinEditDelivery.Value := 1;
      end;
      try
        SpinEditUtil.Value := ReadInteger('NUMERO_DE_RECIBOS_UTILITY');
      Except
        SpinEditUtil.Value := 1;
      end;
      try
        SpinEditNoCharge.Value := ReadInteger('NUMERO_DE_RECIBOS_NOCHARGE');
      Except
        SpinEditNoCharge.Value := 1;
      end;

      RadioGroupBusqueda.ItemIndex := ReadInteger('OpciondeBusqueda');
      EditTxportIP.Text := ReadString('txportIP');
      CBFirmaElectronica.Checked := ReadBool('FirmaElectronica');
      try
        cbEnforceSignatureonPickup.Checked := ReadBool('EnforceSignatureonPickup');
      Except
        cbEnforceSignatureonPickup.Checked := False;
      end;
      ComboBox1.ItemIndex := StrToInt(ReadString('ComPort'));
      ComboBox3.ItemIndex := ReadInteger('Tipo Display');
      Try
        ComboBoxFontSize.Text := ReadString('PrinterFontSize');
      Except
        ComboBoxFontSize.Text := '8';
      end;

      Try
        cbActivePin.Checked := ReadBool('ActivePin');
      Except
        cbActivePin.Checked := False;
      end;
      //--[2025/10/19 jb] get spinpos cred
      Try
        ChkSpinPOS.Checked := ReadBool('SpinPOSactive');
      Except
        ChkSpinPOS.Checked := False;
      End;

      Try
        edtAPIKey.Text := ReadString('SpinPOSApiKey');
      Except
        edtAPIKey.Text := '';
      End;

      Try
        edtMerchantId.Text := ReadString('SpinPOSTPN');
      Except
        edtMerchantId.Text := '';
      end;

      Try
        edtTerminalId.Text := ReadString('SpinPOSReg');
      Except
        edtTerminalId.Text := '';
      end;
      Try
        EditPinIp.Text := ReadString('pinIp');
      Except
        EditPinIp.Text := '';
      end;
      Try
        EditPinTid.Text := ReadString('pinTid');
      Except
        EditPinTid.Text := '';
      end;
      Try
        EditPinPortNum.Text := ReadString('pinPortNum');
      Except
        EditPinPortNum.Text := '';
      end;
      Try
        EditPinStationNum.Text := ReadString('pinStationNum');
      Except
        EditPinStationNum.Text := '';
      end;


      ComboBox4.Items := MyPrinter.Printers;
      Try
        ComboBox4.Text := ReadString('Printer Recibo');
      Except
        ComboBox4.Text := '';
      End;
      except;
      end;
      cbKitchenPrinter.Items := MyPrinter.Printers;
     If Length(ReadString('Printer Recibo')) > 0 then
        cbKitchenPrinter.Text := ReadString('Kitchen Printer')
      else
        cbKitchenPrinter.ItemIndex := 0;
      try
        EditPrinterIP.Text := ReadString('PrinterIP');
      Except
        EditPrinterIP.Text := '';
      end;
      Try
        EditPrinterPort.Text := ReadString('PrinterPort');
      Except
        EditPrinterPort.Text := '';
      End;
      Try
      begin
        getSerialPorts;
        if cbPoleDisplayPort.Items.Count > 0 then
        begin
          for i2 := 0 to cbPoleDisplayPort.Items.Count do
          begin
            if cbPoleDisplayPort.Items[i2] = ReadString('POLE_DISPLAY_PORT') then
              cbPoleDisplayPort.ItemIndex := i2
          end;
        end;
      end;
      Except
        cbPoleDisplayPort.ItemIndex := -1;
      End;
    CloseKey;
  end;
  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_LOCAL_MACHINE;
  Registro.OpenKey('\SOFTWARE\WOW6432Node\FarmaTec2000', True);
  With Registro do
  begin
    EditServerNameFarmatecCC.Text := ReadString('ServerNameMSSQL');
    //ComboBoxSkinName.Text := Registro.ReadString('SkinName');
    CheckBoxBarcodeNoRx.Checked := Registro.ReadBool('BarcodeNoReceta');

     ComboBox6.Items := MyPrinter.Printers;
    If Length(ReadString('BarcodePrinter')) > 0 then
        ComboBox6.Text := ReadString('BarcodePrinter')
    else
        ComboBox6.ItemIndex := 0;
    Try
      EditSalesTechSADataBase.Text := ReadString('DataBaseNamePOS');
    Finally
      //
    End;
    cbPrinterID.Text := ReadString('PrinterID');
    cbPOS_RESTAURANT.Checked := ReadBool('POS_RESTAURANT');
    CloseKey;
    Free;
  end;
  DMMidas.CDSSetup.Edit;
  DMMidas.cdsCounters.Open;
  DMMidas.cdsCounters.Edit;
  cbPrintBarCode_PartNo.Text := Copy(DMMidas.CDSSetupPRINT_BARCODE_PARTNUMBER.Value,1,1);
  pcMain.TabIndex := 0;
  if FrmMain.LanguageStr = 'English' then
    language;
end;

procedure TFrmSetup.getSerialPorts;
begin
  cbPoleDisplayPort.Items.Clear;
  FrmMain.ZylSerialPort1.GetExistingCommPortNames(cbPoleDisplayPort.Items);
end;

procedure TFrmSetup.language;
begin
  FrmSetup.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 052);
  //Conf//
  TabSheet1.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 013);
  label8.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 000);
  label9.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 001);
  label10.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 002);
  label11.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 003);
  label13.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 004);
  label22.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 005);
  label19.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 006);
  label5.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 007);
  label1.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 008);
  label23.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 009);
  label17.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 010);
  label21.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 011);
  label24.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 012);
  //options//
  TabSheet2.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 014);
  GroupBox1.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 015);
  GroupBox2.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 016);
  GroupBox4.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 017);
  CheckBox3.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 018);
  CheckBox2.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 019);
  Label3.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 020);
  CheckBox1.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 021);
  CheckBox5.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 022);
  DBCheckBox3.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 023);
  CheckBox11.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 024);
  CheckBox13.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 025);
  CheckBox14.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 026);
  DBCheckBox4.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 027);
  label25.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 028);
  Label26.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 029);
  Label30.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 030);
  Label40.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 031);
  Label42.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 032);
  Label4.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 033);
  CheckBox7.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 034);
  //Centr credit//
  TabSheet3.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 035);
  CheckBox9.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 036);
  Label7.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 037);
  //Search options//
  TabSheet5.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 038);
  RadioGroupBusqueda.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 039);
  RadioGroupBusqueda.Items[0] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 040);
  RadioGroupBusqueda.Items[1] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 041);
  RadioGroupBusqueda.Items[2] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 042);
  RadioGroupBusqueda.Items[3] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 043);
  RadioGroupBusqueda.Items[4] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 044);
  //Farmatec//
  CheckBox12.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 045);
  CheckBoxBarcodeNoRx.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 046);
  CheckBox8.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 047);
  CBFirmaElectronica.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 048);
  DBCheckBox1.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 049);
  DBCheckBox2.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 050);
  DBCheckBox8.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 051);
  //Printers and Receipts//
  label59.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 003);

end;

procedure TFrmSetup.ComboBox4Change(Sender: TObject);
begin
  CommonPOS.ReceiptPrinter := ComboBox4.Text;
end;

procedure TFrmSetup.SpeedButton4Click(Sender: TObject);
begin
  If OpenDialog1.Execute then
    ComboBox21.Text := (OpenDialog1.FileName);
end;

procedure TFrmSetup.SpeedButton5Click(Sender: TObject);
var
  ImageStr, dir: string;
  ID: String;
begin
  With DMMidas do
  begin
    ID := CDSSetupID.AsString;
    TBPost.Click;
    If OpenDialog1.Execute then
      ImageStr := (OpenDialog1.FileName);
    With FDQuery1 do
    begin
      sql.Text := 'UPDATE CREDITDEBITSETUP SET QR_CODE = ' +
       ' (SELECT BulkColumn FROM OPENROWSET (BULK ' + chr(39) + ImageStr + chr(39) + ', SINGLE_BLOB) a)' +
      ' WHERE ID = ' + ID;
      ExecSQL();
    end;
    CDSSetup.Refresh;
  end;
end;

procedure TFrmSetup.SpinEditNoCajaChange(Sender: TObject);
Var
  MyReg: TRegistry;
begin
  myReg := TRegistry.Create;
  With MyReg do
  begin
    RootKey := HKEY_LOCAL_MACHINE;
    OpenKey('\SOFTWARE\WOW6432Node\FarmaTec2000', True);
    try
      WriteString('Caja#', IntToStr(SpinEditNoCaja.Value));
      COMmonPOS.RegisterNo := IntToStr(SpinEditNoCaja.Value);
    except
    end;
    CloseKey;
  end;
  myReg.Free;
end;

procedure TFrmSetup.SpeedButton3Click(Sender: TObject);
begin
  If OpenDialog1.Execute then
    ComboBox22.Text := (OpenDialog1.FileName);
end;

procedure TFrmSetup.ComboBox21Change(Sender: TObject);
Var
  Registro: TRegistry;
begin
  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_LOCAL_MACHINE;
  Registro.OpenKey('\SOFTWARE\WOW6432Node\FarmaTec2000', True);
  try
    Registro.WriteString('DirEntradaMerc', ComboBox21.Text);
    //Prescription.DirEntradaMerc := Trim(ComboBox21.Text);
  except
  end;
  Registro.Free;
end;

procedure TFrmSetup.ComboBox22Change(Sender: TObject);
Var
  Registro: TRegistry;
begin
  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_LOCAL_MACHINE;
  Registro.OpenKey('\SOFTWARE\WOW6432Node\FarmaTec2000', True);
  try
    Registro.WriteString('DirTranferenciaMerc', ComboBox22.Text);
    //Prescription.DirTransferenciaMerc := Trim(ComboBox22.Text);
  except
  end;
  Registro.Free;
end;

procedure TFrmSetup.SpeedButton1Click(Sender: TObject);
begin
  If OpenDialog1.Execute then
    ComboBox5.Text := (OpenDialog1.FileName);
end;

procedure TFrmSetup.SpeedButton2Click(Sender: TObject);
var
  ImageStr, dir: string;
  ID: String;
begin
  With DMMidas do
  begin
    ID := CDSSetupID.AsString;
    TBPost.Click;
    If OpenDialog1.Execute then
      ImageStr := (OpenDialog1.FileName);
    With FDQuery1 do
    begin
      sql.Text := 'UPDATE CREDITDEBITSETUP SET LOGO = ' +
       ' (SELECT BulkColumn FROM OPENROWSET (BULK ' + chr(39) + ImageStr + chr(39) + ', SINGLE_BLOB) a)' +
      ' WHERE ID = ' + ID;
      ExecSQL();
    end;
    CDSSetup.Refresh;
  end;
end;

procedure TFrmSetup.ComboBox5Change(Sender: TObject);
Var
  Registro: TRegistry;
begin
  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_LOCAL_MACHINE;
  Registro.OpenKey('\SOFTWARE\WOW6432Node\FarmaTec2000', True);
  try
    Registro.WriteString('DirReportes', ComboBox5.Text);
  except
  end;
  Registro.Free;
end;

procedure TFrmSetup.ComboBox6Change(Sender: TObject);
Var
  MyReg: TRegistry;
begin
  MyReg := TRegistry.Create;
  With MyReg do
  begin
    RootKey := HKEY_LOCAL_MACHINE;
    OpenKey('\SOFTWARE\WOW6432Node\FarmaTec2000', True);
    try
      WriteString('BarcodePrinter', ComboBox6.Text);
      CommonPOS.ReceiptPrinter := ComboBox6.Text;
    except
    end;
    CloseKey;
    MyReg.Free;
  end;
end;

procedure TFrmSetup.ComboBoxFontSizeChange(Sender: TObject);
begin
  FrmMain.PrinterFontSize := StrToInt(Trim(ComboBoxFontSize.Text));
end;

procedure TFrmSetup.ComboBoxVendorChange(Sender: TObject);
begin
  CommonPOS.Vendor := ComboBoxVendor.Text;
end;

procedure TFrmSetup.CheckBox9Click(Sender: TObject);
begin
  FrmMain.WebCredit := CheckBox9.Checked;
end;

procedure TFrmSetup.CheckBoxBarcodeNoRxClick(Sender: TObject);
begin
  CommonPOS.BarcodeNoReceta := CheckBoxBarcodeNoRx.Checked;
end;

procedure TFrmSetup.cbKitchenPrinterChange(Sender: TObject);
begin
  CommonPOS.FoodReceipt := cbKitchenPrinter.Text;
end;

procedure TFrmSetup.cbPOS_RESTAURANTClick(Sender: TObject);
begin
  CommonPOS.Restaurant := cbPOS_RESTAURANT.Checked;
end;

procedure TFrmSetup.cbPrintBarCode_PartNoChange(Sender: TObject);
begin
  DMMidas.CDSSetupPRINT_BARCODE_PARTNUMBER.Value := Copy(cbPrintBarCode_PartNo.Text,1,1);
end;

procedure TFrmSetup.cbPrinterIDChange(Sender: TObject);
begin
  //Prescription.PrinterID := Trim(cbPrinterID.Text);
end;

procedure TFrmSetup.cbPrintToScreenClick(Sender: TObject);
begin
  CommonPOS.PrintToScreen := cbPrintToScreen.Checked;
end;

procedure TFrmSetup.CheckBox10Click(Sender: TObject);
begin
  CommonPOS.Screen800x600 := CheckBox10.Checked;
end;

procedure TFrmSetup.CheckBox12Click(Sender: TObject);
begin
  CommonPOS.RxRecibo := CheckBox12.Checked;
end;

procedure TFrmSetup.CheckBox13Click(Sender: TObject);
begin
  CommonPOS.CheckNoSocio := CheckBox13.Checked;
end;

procedure TFrmSetup.CheckBox14Click(Sender: TObject);
begin
  CommonPOS.ConsiderarCambioPrecio := CheckBox14.Checked;
end;

procedure TFrmSetup.CheckBox1Click(Sender: TObject);
begin
  CommonPOS.Factura := CheckBox1.checked;
end;

procedure TFrmSetup.cbActivePinClick(Sender: TObject);
begin
  if cbActivePin.Checked = true then
  begin
    CheckBoxIVULOTO_ACTIVE.Checked := False;
    ChkSpinPOS.Checked := false;
  end;
  CommonPOS.SpinPOSactive := ChkSPINPOS.Checked;
  CommonPOS.IVULOTO_ACTIVO := CheckBoxIVULOTO_ACTIVE.Checked;
end;

procedure TFrmSetup.CBFirmaElectronicaClick(Sender: TObject);
begin
  CommonPOS.FirmaElectronica := CBFirmaElectronica.Checked;
end;

procedure TFrmSetup.CheckBoxIVULOTO_ACTIVEClick(Sender: TObject);
begin
  if CheckBoxIVULOTO_ACTIVE.Checked = True then
  begin
    cbActivePin.Checked := False;
    ChkSpinPOS.Checked := false;
  end;
  CommonPOS.IVULOTO_ACTIVO := CheckBoxIVULOTO_ACTIVE.Checked;
  CommonPOS.SpinPOSactive := ChkSPINPOS.Checked;
end;

procedure TFrmSetup.ChkSpinPOSClick(Sender: TObject);
begin
  if ChkSpinPOS.Checked = True then
  begin
    cbActivePin.Checked := False;
    CheckBoxIVULOTO_ACTIVE.Checked := False;
  end;
  CommonPOS.SpinPOSactive := ChkSPINPOS.Checked;
end;

procedure TFrmSetup.cxSpinEdit1PropertiesChange(Sender: TObject);
begin
  //CommonPOS.NUMERO_DE_RECIBOS := cxSpinEdit1.Value;
end;

procedure TFrmSetup.EditTxportIPChange(Sender: TObject);
begin
  CommonPOS.txportIP := Trim(EditTxportIP.Text);
end;

end.
