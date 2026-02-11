unit UntPOSTS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ImgList,
  ExtCtrls, Grids, DBGrids,
  Keyboard, Mask, DBCtrls, DB,
  ComCtrls, Buttons, jpeg, registry, pngimage, System.ImageList, Vcl.Menus;

type
  TFrmPOSTS = class(TForm)
    ImageList1: TImageList;
    Panel1: TPanel;
    Panel2: TPanel;
    LabelRecibido: TLabel;
    DBGrid2: TDBGrid;
    StatusBar1: TStatusBar;
    TouchKeyboard1: TTouchKeyboard;
    Label5: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    LabelCambio: TLabel;
    Bevel3: TBevel;
    LabelHeading: TLabel;
    ImageListBotones: TImageList;
    Label2: TLabel;
    EditSearchProd: TEdit;
    ImageList2: TImageList;
    EditSubTotal: TEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    cxDBCurrencyEdit1: TDBEdit;
    cxPageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Button35: TSpeedButton;
    Button50: TSpeedButton;
    Button65: TSpeedButton;
    Button80: TSpeedButton;
    Button36: TSpeedButton;
    Button51: TSpeedButton;
    Button66: TSpeedButton;
    Button81: TSpeedButton;
    Button37: TSpeedButton;
    Button52: TSpeedButton;
    Button67: TSpeedButton;
    Button82: TSpeedButton;
    Button38: TSpeedButton;
    Button53: TSpeedButton;
    Button68: TSpeedButton;
    Button83: TSpeedButton;
    Button39: TSpeedButton;
    Button54: TSpeedButton;
    Button69: TSpeedButton;
    Button84: TSpeedButton;
    Button40: TSpeedButton;
    Button55: TSpeedButton;
    Button70: TSpeedButton;
    Button85: TSpeedButton;
    Button41: TSpeedButton;
    Button56: TSpeedButton;
    Button71: TSpeedButton;
    Button86: TSpeedButton;
    Button42: TSpeedButton;
    Button57: TSpeedButton;
    Button72: TSpeedButton;
    Button87: TSpeedButton;
    Button43: TSpeedButton;
    Button58: TSpeedButton;
    Button73: TSpeedButton;
    Button88: TSpeedButton;
    Button44: TSpeedButton;
    Button59: TSpeedButton;
    Button74: TSpeedButton;
    Button89: TSpeedButton;
    Button45: TSpeedButton;
    Button60: TSpeedButton;
    Button75: TSpeedButton;
    Button90: TSpeedButton;
    Button46: TSpeedButton;
    Button61: TSpeedButton;
    Button76: TSpeedButton;
    Button91: TSpeedButton;
    Button47: TSpeedButton;
    Button62: TSpeedButton;
    Button77: TSpeedButton;
    Button92: TSpeedButton;
    Button48: TSpeedButton;
    Button63: TSpeedButton;
    Button78: TSpeedButton;
    Button93: TSpeedButton;
    Button49: TSpeedButton;
    Button64: TSpeedButton;
    Button79: TSpeedButton;
    Button94: TSpeedButton;
    Button95: TButton;
    Button34: TSpeedButton;
    Button33: TSpeedButton;
    Button32: TSpeedButton;
    Button31: TSpeedButton;
    Button30: TSpeedButton;
    Button29: TSpeedButton;
    Button28: TSpeedButton;
    Button27: TSpeedButton;
    Button26: TSpeedButton;
    Button25: TSpeedButton;
    Button24: TSpeedButton;
    Button23: TSpeedButton;
    Button22: TSpeedButton;
    Button21: TSpeedButton;
    StatusBar2: TStatusBar;
    MainMenu1: TMainMenu;
    ActivateButtons1: TMenuItem;
    ActivateButtons2: TMenuItem;
    Setbuttonsvisiblefalse1: TMenuItem;
    GridPanel1: TGridPanel;
    BtnCash: TButton;
    RzBitBtn16: TButton;
    cxButton24: TButton;
    Button6: TSpeedButton;
    BtnATH: TButton;
    RzBitBtn7: TButton;
    cxButton25: TButton;
    Button7: TSpeedButton;
    BtnVisa: TButton;
    BtnAuspicio: TButton;
    cxButton26: TButton;
    Button8: TSpeedButton;
    BtnCheck: TButton;
    cxButton31: TButton;
    cxButton27: TButton;
    Button9: TSpeedButton;
    BtnCredit: TButton;
    RzBitBtn3: TButton;
    cxButton28: TButton;
    Button10: TSpeedButton;
    BtnTarjetaFam: TButton;
    cxButton33: TButton;
    cxButton29: TButton;
    Button11: TSpeedButton;
    BtnLayAway: TButton;
    cxButton34: TButton;
    cxButton2: TButton;
    Button12: TSpeedButton;
    BLimpiar: TButton;
    cxButton35: TButton;
    cxButton3: TButton;
    Button13: TSpeedButton;
    BBorrar: TButton;
    BPrecio1: TButton;
    cxButton4: TButton;
    Button14: TSpeedButton;
    cxButton6: TButton;
    cxButton18: TButton;
    cxButton5: TButton;
    Button15: TSpeedButton;
    BPrecio: TButton;
    Button96: TButton;
    Button1: TSpeedButton;
    Button16: TSpeedButton;
    cxButton16: TButton;
    cxButton1: TButton;
    Button2: TSpeedButton;
    Button17: TSpeedButton;
    RzBitBtn23: TButton;
    cxButton21: TButton;
    Button3: TSpeedButton;
    Button18: TSpeedButton;
    BQty: TButton;
    cxButton22: TButton;
    Button4: TSpeedButton;
    Button19: TSpeedButton;
    BSalir: TButton;
    cxButton23: TButton;
    Button5: TSpeedButton;
    Button20: TSpeedButton;
    Panel3: TPanel;
    EditProd: TEdit;
    procedure EditSearchProdExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Change(Sender: TObject);
    procedure BtnCashClick(Sender: TObject);
    procedure PayTransaction(PyType: String);
    procedure BBorrarClick(Sender: TObject);
    procedure BtnATHClick(Sender: TObject);
    procedure BtnCheckClick(Sender: TObject);
    procedure BtnVisaClick(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit4Enter(Sender: TObject);
    procedure RzBitBtn8Click(Sender: TObject);
    procedure BSalirClick(Sender: TObject);
    procedure BBuscarClick(Sender: TObject);
    procedure RzBitBtn9Click(Sender: TObject);
    procedure BPrecioClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BQtyClick(Sender: TObject);
    procedure BLimpiarClick(Sender: TObject);
    procedure RzBitBtn16Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnCreditClick(Sender: TObject);
    procedure RzBitBtn19Click(Sender: TObject);
    procedure RzBitBtn20Click(Sender: TObject);
    procedure RzBitBtn21Click(Sender: TObject);
    procedure ButtonGroupSalesClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure RzBitBtn10Click(Sender: TObject);
    procedure RzBitBtn7Click(Sender: TObject);
    procedure RzBitBtn17Click(Sender: TObject);
    procedure RzBitBtn18Click(Sender: TObject);
    procedure RzBitBtn23Click(Sender: TObject);
    procedure BtnLayAwayClick(Sender: TObject);
    procedure RzBitBtn24Click(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure RzBitBtn25Click(Sender: TObject);
    procedure RzBitBtn26Click(Sender: TObject);
    procedure RzBitBtn27Click(Sender: TObject);
    procedure RzBitBtn28Click(Sender: TObject);
    procedure RzBitBtn29Click(Sender: TObject);
    procedure EditSearchProdPropertiesChange(Sender: TObject);
    procedure BtnAuspicioClick(Sender: TObject);
    procedure EditSearchProdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure BtnTarjetaFamClick(Sender: TObject);

    procedure RzBitBtn5Click(Sender: TObject);
    procedure RzBitBtn6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    Procedure EditButton1(Button_1: TSpeedButton);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button71Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure Button39Click(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure Button49Click(Sender: TObject);
    procedure Button70Click(Sender: TObject);
    procedure Button40Click(Sender: TObject);
    procedure Button50Click(Sender: TObject);
    procedure Button51Click(Sender: TObject);
    procedure Button52Click(Sender: TObject);
    procedure Button53Click(Sender: TObject);
    procedure Button54Click(Sender: TObject);
    procedure Button55Click(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure Button44Click(Sender: TObject);
    procedure Button45Click(Sender: TObject);
    procedure Button46Click(Sender: TObject);
    procedure Button47Click(Sender: TObject);
    procedure Button48Click(Sender: TObject);
    procedure Button56Click(Sender: TObject);
    procedure Button57Click(Sender: TObject);
    procedure Button58Click(Sender: TObject);
    procedure Button59Click(Sender: TObject);
    procedure Button60Click(Sender: TObject);
    procedure Button61Click(Sender: TObject);
    procedure Button62Click(Sender: TObject);
    procedure Button63Click(Sender: TObject);
    procedure Button64Click(Sender: TObject);
    procedure Button65Click(Sender: TObject);
    procedure Button66Click(Sender: TObject);
    procedure Button67Click(Sender: TObject);
    procedure Button68Click(Sender: TObject);
    procedure Button69Click(Sender: TObject);
    procedure Button75Click(Sender: TObject);
    procedure Button72Click(Sender: TObject);
    procedure Button73Click(Sender: TObject);
    procedure Button74Click(Sender: TObject);
    procedure Button76Click(Sender: TObject);
    procedure Button77Click(Sender: TObject);
    procedure Button78Click(Sender: TObject);
    procedure Button79Click(Sender: TObject);
    procedure Button80Click(Sender: TObject);
    procedure Button81Click(Sender: TObject);
    procedure Button82Click(Sender: TObject);
    procedure Button83Click(Sender: TObject);
    procedure Button84Click(Sender: TObject);
    procedure Button85Click(Sender: TObject);
    procedure Button86Click(Sender: TObject);
    procedure Button87Click(Sender: TObject);
    procedure Button88Click(Sender: TObject);
    procedure Button89Click(Sender: TObject);
    procedure Button90Click(Sender: TObject);
    procedure Button91Click(Sender: TObject);
    procedure Button92Click(Sender: TObject);
    procedure Button93Click(Sender: TObject);
    procedure Button94Click(Sender: TObject);
    procedure cxDBCurrencyEdit1Change(Sender: TObject);
    procedure EditSubTotalChange(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure LoadButtons;
    function findButton(BtnName, BtnCaption: String; Tag: integer): Boolean;
    procedure EditButton(BtnName: String);
    procedure ActivateButtons2Click(Sender: TObject);
    procedure Setbuttonsvisiblefalse1Click(Sender: TObject);
    procedure SetButtonsVisibleFalse(FT: Boolean);
    procedure Addon;
  private
    Customer, HeldCust: Integer;
    CrPay, LaPay, HeldCrPay, HeldLaPay: Boolean;
    Perc, HeldPerc: Single;
    CrPayAmnt, LaPayAmnt, HeldCrPayAmnt, HeldLaPayAmnt: Currency;
    CustomerSSN, CrSignature: String;
    CounterBagID: Integer;
  public
    Group_Counter, Header: Integer;
    PayType, BARCODEALTERNO1, BARCODEALTERNO2, NoRx: String;
    { Public declarations }
  end;

var
  FrmPOSTS: TFrmPOSTS;
  User, Devolucion, Paidout, AbonoLayaway, Layaway, Credito: String;
  Visa, MC, AmEx, Discover, Checking, Savings, Verbiage, Abono: String;
  EndSequesceNo, SequenceNo, NoTransaction, NoTrans, NoCliente,
  CounterNextMessage,  I, PatientFound: Integer;
  BatchNumber, ProcessingCode, Cajero, Customer, NoArticulo: String;
  PreAuthorization, Adjustment, Return, Reversal, Void, CanClose, Force: Boolean;
  PreAuthComp, EditFactura: Boolean;
  Numero, Words, Nu1, Nu2, Nu3, Nu4, Nu5, Nu6, Convercion: String;
  No1: Double;
  NoToStr, NoToStr2, Number, Number2, FinalNumber, No: String;
  Number1, PrecioV: Double;
  PorcientoDescuento: Double;
  AbonoCredito, Check, Descuento: Boolean;

implementation

uses UntDMMidas, UntCommon, UntCommonPOS, untMain, Wlccdll, UntQueries,
  UntAddUtility, UntEnterNumber, UntManualSale, UntVentasenGrupo,
  UntDMCentralCredit, UntSearchInv2, UntCheckOut, Math, UntCombo, UntPickup,
  UntBotones, UntDMWC, UntSignatureCapture, UntPaymentType, UntEditarBotones,
  UntBotonesModifiers;

{$R *.dfm}


Procedure TFrmPOSTS.EditButton1(Button_1: TSpeedButton);
Var
  TaxMunicipal, TaxEstatal, AuthUser: String;
  AddProduct: Boolean;
  PrecioVenta: Double;
  ModalRes: Boolean;
  Qty: Double;
begin
  ModalRes := False;
  AddProduct := True;
  AuthUser := CommonPOS.User;
  With DMMidas do
  begin
    //CDSBotones.Close;
    //CDSBotones.CommandText := 'Select * from Botones where button_number = ' + IntToStr(Button_1.Tag);
   // CDSBotones.Open;
    if CDSBotonesProductNO.Value > 0 then
    begin
      if Trim(CDSBotonesPROCEDURE_ADD_ON.Value) > '' then
      begin
        if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'DELIVERY' then
        begin
          if CommonPOS.isAuthorized('GUARDAR_TRANSACCIONES',UserRights.GUARDAR_TRANSACCIONES, true) then
          begin
            CommonPOS.SaveTransaction(True);
            cxPageControl1.ActivePageIndex := 0;
            EditSearchProd.SetFocus;
          end;
        end;
        if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'SERVICIO' then
        begin
          CommonPOS.Servicios(1);
          EditSearchProd.SetFocus;
          EditProd.Text := 'Servicio' + '   Qty: ' + DMMidas.CDSTransShowQTY.AsString + '   Price: ' + Format('%m', [DMMidas.CDSTransShowPRICE.AsFloat]);
        end;
        if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'STOP TAG' then
        begin
          With DMwc do
          begin
            SQLQuery1.SQL.Text := 'Update WILLCALL_TAG_NUMBERS set SEARCH = 0';
            SQLQuery1.ExecSQL();
          end;
        end;

        if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'ESIGNATURE' then
        begin
          if CommonPOS.FirmaElectronica = True then
          begin
            With DMwc do
            begin
              FrmeSignatureCapture := TFrmeSignatureCapture.Create(nil);
              With FrmeSignatureCapture do
              begin
                  With DMMidas do
                  begin
                    if DMMidas.CDSTransShowTRANSACTIONNUMBER.Value > 0  then
                    begin
                      SQLQuery1.Close;
                      SQLQuery1.sql.Text := 'SELECT SUBSTRING(UPc,1,2) AS RX, SUBSTRING(UPc,3,10) AS RXNUMBER, TRANSACTIONNUMBER FROM TRANSACTIONDETAIL_TEMP where upc Like ' + CHR(39) + 'RX%' + CHR(39) +
                      ' AND TRANSACTIONNUMBER = ' + DMMidas.CDSTransShowTRANSACTIONNUMBER.AsString;
                      SQLQuery1.Open;
                      if SQLQuery1.FieldByName('RXNUMBER').Value > 0 then
                      begin
                        NoRx := SQLQuery1.FieldByName('RXNUMBER').asString;
                        FindRxByNoName(SQLQuery1.FieldByName('RXNUMBER').asString, False, True);
                      end;
                    end;
                  end;
                FrmeSignatureCapture.Tag := 0;
                ShowModal;
                if ModalResult = mrOk then ModalRes := True;
                NoRx := '';
                cdsOTC2.Close;
                With DMMidas do
                begin
                  CDSPrescriptions.Close;
                  CDSPrescriptions2.Close;
                  CDSOTC.Close;
                  CDSOTC2.Close;
                  CDSClientes.Close;
                end;
                FrmeSignatureCapture := Nil;
                FrmeSignatureCapture.Free;
              end;
            end;
          end;
        end;
      end;
      if Trim(CDSBotonesPROCEDURE_ADD_ON.Value) > '' then
      begin
        if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'BAG PICKUP' then
        begin
          FrmPickup := TFrmPickup.Create(nil);
          With FrmPickup do
          begin
            //DMMidas.SQLConnection1.Close;
            //DMMidas.SQLConnection1.Open;
            if CDSSetupSALESTECH_STAND_ALONE.Value = True then
            begin
              //DMMidas.SQLConnectionSA.Close;
              //DMMidas.SQLConnectionSA.Open;
            end;
            DMMidas.CDSClientes.Close;
            CommonPOS.OpenWillCall_Status('0');
            CommonPOS.OpenWillCallBag('0');
            ShowModal;
            FrmPickup := Nil;
            FrmPickup.Free;
            With DMMidas do
            begin
              CDSPrescriptions.Close;
              CDSPrescriptions2.Close;
              CDSOTC.Close;
              CDSOTC2.Close;
              CDSClientes.Close;
            end;
          end;
        end;
        if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'RECETAS' then
        begin
          CommonPOS.FindRx('', True, True, 'NORX', false);
          EditSearchProd.SetFocus;
        end;

        if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'OTC' then
        begin
          CommonPOS.FindOTC('');
          EditSearchProd.SetFocus;
        end;
      end
      else
      begin
        //CDSBotones.Close.
        //CDSBotones.CommandText := 'Select * from botones where BUTTON_NUMBER = ' +

        CDSInventarioPiso.Close;
        CDSInventarioPiso.CommandText := 'Select * from InventarioPiso where ProductNO = ' + IntToStr(Button_1.Tag); //  + CDSBotonesProductNO.asString;
        CDSInventarioPiso.Open;

        if CDSInventarioPiso.RecordCount > 1 then
        begin
          FrmSearchInv2 := TFrmSearchInv2.Create(application);
          With FrmSearchInv2 do
          Begin
            ShowModal;
            If ModalResult = mrOK then
            begin
             AddProduct := True;
            end
            else
              AddProduct := False;
            Free;
          end;
        end;

        if Trim(CDSInventarioPisoDescripcion.Value) > '' then
        begin
          if AddProduct = True then
          begin
            if (CDSInventarioPisoTAXABLE.Value = '1') then TaxMunicipal := 'T' ELSE TaxMunicipal := 'F';
            if (CDSInventarioPisoTAXABLE_ESTATAL.Value = '1') then TaxEstatal := 'T' Else TaxEstatal := 'F';
            if CommonPOS.WICActivo = True then
            begin
              PrecioVenta := CDSInventarioPisoPRECIOVENTA2.asFloat;
              TaxMunicipal := 'F';
              TaxEstatal := 'F';
            end
            else
            begin
              PrecioVenta := CDSInventarioPisoPRECIO.asFloat;
            end;
            If  CommonPOS.RefundPOS = False then
              Qty := CDSBotonesQty.asFloat
            else
              Qty := -1;
            {CommonPOS.AddProduct('F',CDSInventarioPisoCodigoBarra.Value,  CDSInventarioPisoDescripcion.Value, CDSInventarioPisoDESCDEPT.Value,'F','',
                 CommonPOS.User, TaxMunicipal, TaxEstatal, PrecioVenta,
                 (CDSInventarioPisoCOSTO.asFloat * Qty), Perc, CDSInventarioPisoCOSTO.asFloat, Qty, CDSInventarioPisoNUMEROSUPLIDOR.Value, CommonPOS.Turno, CommonPOS.ID, CDSInventarioPisoPRODUCTNO.Value, CDSInventarioPisoSUB_DEPARTAMENTO.Value,0,0,false,false,'',0,false,0,CDSInventarioPisoPROCESSED_FOOD.Value);
            }
          end;
        end;
      end;
    end;
  end;
  EditSearchProd.SetFocus;
end;


procedure TFrmPOSTS.EditSearchProdExit(Sender: TObject);
begin
  With DMMidas do
  begin
    IF EditSearchProd.Text > '' then
    begin
      BARCODEALTERNO1 := '';
      BARCODEALTERNO2 := '';
      if DMMidas.CDSTransShow.Active = True then
      begin
        if (Copy(CDSTransShowUPC.Value, 1,2) <> 'RX') and (CommonPOS.VeteranoActivo = 0) then
        begin
          if CDSTransShowDISCOUNT.asFloat = 0 then
          begin
            if ((CDSTransShow.RecordCount > 0) and (CDSTransShowPRICE.AsFloat = 0))
            and (CDSSetupPERMIT_ZERO_MANUALSALE.Value = False) then
            begin

              CommonPOS.ShowMessageStr('No puede dejar el precio del ultimo producto en cero!', 12, clBlack);
              EditSearchProd.Text := '';
              EditSearchProd.SetFocus;
              exit;
            end;
          end;
        end;
      end;
      CommonPOS.FindProduct(EditSearchProd.Text,1,0,false, false);
      if DMMidas.CDSInventarioPisoDESCRIPCION.Value > '' then
      begin
        EditSearchProd.text := '';
        EditProd.Text := Trim(DMMidas.CDSInventarioPisoDESCRIPCION.Value) + '   Qty: ' + DMMidas.CDSTransShowQTY.AsString + '   Price: ' + Format('%m', [DMMidas.CDSTransShowPRICE.AsFloat]);
      end;
      EditSearchProd.SetFocus;
    end;
  end;
end;

procedure TFrmPOSTS.FormKeyPress(Sender: TObject; var Key: Char);
begin
  CommonForm.Enter2tab(Self,Key);
end;

procedure TFrmPOSTS.FormShow(Sender: TObject);
Var
  MyComp: TComponent;
begin;
  With DMMidas do
  begin
    CDSBotones.Close;
    CDSBotones.Open;
    CDSBotones.First;
    while not CDSBotones.Eof do
    begin
      MyComp := FindComponent(DMMidas.CDSBotonesBUTTON_NAME.asString.Trim);
      if Assigned(MyComp) then CommonPOS.ShowMessageStr('Found', 12,clBlack);
      CDSBotones.Next;
    end;
  end;
  StatusBar2.Panels[0].Text := 'CAJA NUMERO: ' + CommonPOS.RegisterNo;
  StatusBar2.Panels[3].Text := DateToStr(Date);
  FrmPOSTS.Caption := 'POS SalesTech, Licenced to: ' + DMMidas.CDSSetupStoreName.Value;
  FrmPOSTS.Refresh;
end;

procedure TFrmPOSTS.DBEdit1Change(Sender: TObject);
begin
  //LMDLEDLabel1.Caption := Format('%8s', [DBEdit1.Text]);
  //LMDLEDLabel1.Caption := Format('%m', [DMMidas.CDSTransHeadTOTAL.AsFloat]);
//  cxCurrencyEdit1.Value := DMMidas.CDSTransHeadTOTAL.asFloat;
end;

procedure TFrmPOSTS.BtnCashClick(Sender: TObject);
begin
  With DMMidas do
  begin
    if CDSTransHead.RecordCount > 0  then
    begin
      FrmPaymentType := TFrmPaymentType.Create(FrmPOSTS);
      With FrmPaymentType do
      begin
        ShowModal;
      end;
    end;
  end;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSTS.PayTransaction(PyType: String);
Var
  TTaxMunicipal, NTotal: Double;
  TranNo: String;
begin
  With DMMidas do
  begin
    TranNo := CDSTransHeadTRANSACTIONNUMBER.asString;
    if (CDSTransShowPRODDESCRIPTION.Value > '') then
    begin
     StatusBar1.Panels[4].Text := PyType;
     FrmCheckOut := TFrmCheckOut.Create(Self);
     With FrmCheckOut do
     begin
       Edit4.Visible := True;
       Edit4.TabStop := True;
       if PyType = 'TFAM' then
       begin
         QCalcTarjetaFamilia.Close;
         QCalcTarjetaFamilia.ParamByName('TN').AsInteger := CDSTransHeadTRANSACTIONNUMBER.Value;
         QCalcTarjetaFamilia.Open;
         if QCalcTarjetaFamilia.FieldByName('Total').asFloat < 999.99 then
           Edit4.Text := Format('%.2f', [QCalcTarjetaFamilia.FieldByName('Total').asFloat])
         else
           Edit4.Text := FloatToStr(QCalcTarjetaFamilia.FieldByName('Total').asFloat);
         PayType := 'TFAM';
       end
       else
       begin
         if CDSTransHeadBalance.Value < 999.99 then
           Edit4.Text := Format('%.2f', [CDSTransHeadBalance.Value])
         else
           Edit4.Text := FloatToStr(CDSTransHeadBalance.Value);
           PayType := '';
       end;
       CommonPOS.SendToPole('Total: ' + Format('%m',[StrToFloat(Edit4.Text)]), 'GRACIAS             ');
       FrmCheckOut.PayType := PyType;
       ShowModal;
       Free;
     end;
     EditSearchProd.SetFocus;
    end;
  end;
end;


procedure TFrmPOSTS.ActivateButtons2Click(Sender: TObject);
begin
  if CommonPOS.isAuthorized('POS_ADD_BUTTONS',UserRights.POS_ADD_BUTTONS,true) = True then
  begin
    Self.Tag := 0;
    SetButtonsVisibleFalse(True);
    LoadButtons;
  end;
end;

procedure TFrmPOSTS.Addon;
Var
  ModalRes: Boolean;
  AuthUser: String;
begin
  With DMMidas do
  begin
    if Trim(CDSBotonesPROCEDURE_ADD_ON.Value) > '' then
    begin
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'DELIVERY' then
      begin
        If FrmMain.IsAuthorized(CommonPOS.User,39) then
        begin
          CommonPOS.SaveTransaction(True);
          cxPageControl1.ActivePageIndex := 0;
          EditSearchProd.SetFocus;
        end;
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'SERVICIO' then
      begin
        CommonPOS.Servicios(1);
        EditSearchProd.SetFocus;
        EditProd.Text := 'Servicio' + '   Qty: ' + DMMidas.CDSTransShowQTY.AsString + '   Price: ' + Format('%m', [DMMidas.CDSTransShowPRICE.AsFloat]);
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'STOP TAG' then
      begin
        With DMwc do
        begin
          SQLQuery1.SQL.Text := 'Update WILLCALL_TAG_NUMBERS set SEARCH = 0';
          SQLQuery1.ExecSQL();
        end;
      end;

      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'ESIGNATURE' then
      begin
        if CommonPOS.FirmaElectronica = True then
        begin
          With DMwc do
          begin
            FrmeSignatureCapture := TFrmeSignatureCapture.Create(nil);
            With FrmeSignatureCapture do
            begin
                With DMMidas do
                begin
                  if DMMidas.CDSTransShowTRANSACTIONNUMBER.Value > 0  then
                  begin
                    SQLQuery1.Close;
                    SQLQuery1.sql.Text := 'SELECT SUBSTRING(UPc,1,2) AS RX, SUBSTRING(UPc,3,10) AS RXNUMBER, TRANSACTIONNUMBER FROM TRANSACTIONDETAIL_TEMP where upc Like ' + CHR(39) + 'RX%' + CHR(39) +
                    ' AND TRANSACTIONNUMBER = ' + DMMidas.CDSTransShowTRANSACTIONNUMBER.AsString;
                    SQLQuery1.Open;
                    if SQLQuery1.FieldByName('RXNUMBER').Value > 0 then
                    begin
                      NoRx := SQLQuery1.FieldByName('RXNUMBER').asString;
                      FindRxByNoName(SQLQuery1.FieldByName('RXNUMBER').asString, False, True);
                    end;
                  end;
                end;
              FrmeSignatureCapture.Tag := 0;
              ShowModal;
              if ModalResult = mrOk then ModalRes := True;
              NoRx := '';
              cdsOTC2.Close;
              With DMMidas do
              begin
                CDSPrescriptions.Close;
                CDSPrescriptions2.Close;
                CDSOTC.Close;
                CDSOTC2.Close;
                CDSClientes.Close;
              end;
              FrmeSignatureCapture := Nil;
              FrmeSignatureCapture.Free;
            end;
          end;
        end;
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'BAG PICKUP' then
      begin
        FrmPickup := TFrmPickup.Create(nil);
        With FrmPickup do
        begin
          //DMMidas.SQLConnection1.Close;
          //DMMidas.SQLConnection1.Open;
          if CDSSetupSALESTECH_STAND_ALONE.Value = True then
          begin
            //DMMidas.SQLConnectionSA.Close;
            //DMMidas.SQLConnectionSA.Open;
          end;
          DMMidas.CDSClientes.Close;
          CommonPOS.OpenWillCall_Status('0');
          CommonPOS.OpenWillCallBag('0');
          ShowModal;
          FrmPickup := Nil;
          FrmPickup.Free;
          With DMMidas do
          begin
            CDSPrescriptions.Close;
            CDSPrescriptions2.Close;
            CDSOTC.Close;
            CDSOTC2.Close;
            CDSClientes.Close;
          end;
        end;
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'RECETAS' then
      begin
        CommonPOS.FindRx('', True, True, 'RXNO', False);
        EditSearchProd.SetFocus;
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'OTC' then
      begin
        CommonPOS.FindOTC('');
        EditSearchProd.SetFocus;
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'VENTA CREDITO' then
      begin
        If FrmMain.IsAuthorized(CommonPOS.User,30) then
        begin
          CrSignature := CommonPOS.User;
          If CommonPOS.Customer = 0 then
            PayTransaction('CRED');
        end;
        EditSearchProd.SetFocus;
      end;
    end;
  end;
end;

procedure TFrmPOSTS.BBorrarClick(Sender: TObject);
Var
  IDNo, TranNo: Integer;
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  IDNo := DMMidas.CDSTransShowIDNUMBER.Value;
  TranNo := DMMidas.CDSTransShowTRANSACTIONNUMBER.Value;
  If (FrmMain.IsAuthorized(AuthUser,12)) and (IDNo > 0) then
  begin
    CommonPOS.BorrarProducto(TranNo, IDNo);
  end;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSTS.BtnATHClick(Sender: TObject);
begin
  PayTransaction('ATH');
end;

procedure TFrmPOSTS.BtnCheckClick(Sender: TObject);
begin
  PayTransaction('CHK');
end;

procedure TFrmPOSTS.BtnVisaClick(Sender: TObject);
begin
  PayTransaction('VISA');
end;

procedure TFrmPOSTS.Edit4Exit(Sender: TObject);
Var
  Total: Double;
begin
{  Total := StrToFloat(Edit4.Text);
  if (Edit4.Value > 0) or (CommonPOS.Refund = True) then
  begin
    CommonPOS.CheckOut(Edit4.Value, SPTransType.Caption, True);
    if DMMidas.CDSTransHeadTOTAL.asFloat < 1000 then
      Edit4.Text := Format('%.2f',[DMMidas.CDSTransHeadBalance.Value]);
    CommonPOS.Refund := False;
    SPRefund.Visible := False;
    SPDescuento.Visible := False;
    SPHold.Visible := False;
    Edit4.Text := '';
  end;
  Edit4.Visible := False;
  EditSearchProd.SetFocus;}
end;

procedure TFrmPOSTS.Edit4Enter(Sender: TObject);
begin
{  if CommonPOS.Refund = true then Edit4.Properties.ReadOnly := True
  else
    Edit4.Properties.ReadOnly := False;
  LabelRecibido.Visible := True;
  LabelCambio.Visible := True;
  Edit4.Visible := True;
  Keyboard1.LinkedControl := Edit4;}
end;

procedure TFrmPOSTS.RzBitBtn8Click(Sender: TObject);
begin
//  CommonPOS.FindRx('', True, True);
//  EditSearchProd.SetFocus;
end;

procedure TFrmPOSTS.BSalirClick(Sender: TObject);
begin
  FrmPOSTS.Close;
end;

procedure TFrmPOSTS.BBuscarClick(Sender: TObject);
begin
  if Trim(EditSearchProd.text) > '' then
  begin
    CommonPOS.FindProduct('A',1,0,false,false);
    if DMMidas.CDSInventarioPisoDESCRIPCION.Value > '' then
    begin
      EditSearchProd.text := '';
      EditProd.Text := DMMidas.CDSInventarioPisoDESCRIPCION.Value;
    end;
  end;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSTS.RzBitBtn9Click(Sender: TObject);
begin
  CommonPOS.FindOTC('');
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSTS.Setbuttonsvisiblefalse1Click(Sender: TObject);
begin
  if CommonPOS.isAuthorized('POS_ADD_BUTTONS',UserRights.POS_ADD_BUTTONS,true) = True then
  begin
    Self.Tag := 1;
    SetButtonsVisibleFalse(False);
    LoadButtons;
  end;
end;

procedure TFrmPOSTS.Button70Click(Sender: TObject);
begin
  EditButton(Button70.Name);
end;

procedure TFrmPOSTS.BPrecioClick(Sender: TObject);
begin
  CommonPOS.CambioPrecio;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSTS.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  If DMMidas.CDSTransShowPRICE.AsFloat <> DMMidas.CDSTransShowREGPRICE.AsFloat then
  Begin
    with (Sender as TDBGrid) do Canvas.Brush.Color := clYellow;
    with (Sender as TDBGrid) do Canvas.FillRect(Rect);
    With (Sender as TDBGrid) do Canvas.Font.Color := clRed;
  end;
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

procedure TFrmPOSTS.BQtyClick(Sender: TObject);
begin
  CommonPOS.CambioQty;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSTS.BLimpiarClick(Sender: TObject);
begin
  CommonPOS.CancelTrans(DMMidas.CDSTransHeadTRANSACTIONNUMBER.Value);
  FrmPOSTS.StatusBar2.Panels[1].Text := '';
  EditProd.Text := DMMidas.CDSSetupSTORENAME.Value;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSTS.RzBitBtn16Click(Sender: TObject);
Var
AuthUser : String;
begin
  AuthUser := CommonPOS.User;
  If FrmMain.IsAuthorized(AuthUser,42) then
  begin
    if StatusBar1.Panels[6].Text = 'HOLD' then StatusBar1.Panels[6].Text := '' else
    begin
      StatusBar1.Panels[6].Text := 'HOLD';
    end;
    CommonPOS.HoldTransaction;
    EditSearchProd.SetFocus;
  end;
end;


procedure TFrmPOSTS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if CommonPOS.CanClose = true then
  begin
    CommonPOS.SendToPole(CommonPOS.CenterString(DMMidas.CDSSetupSTORENAME.Value,20),CommonPOS.CenterString('SALESTEC EXPRESS',20));
    //FrmMain.elSerialPort1.Close;
    Action := caFree;
    FrmPOSTS := NIL;
  end
  else
  begin
    Action := caNone;
    EditSearchProd.SetFocus;
  end;
end;

procedure TFrmPOSTS.FormCreate(Sender: TObject);
Var
  MyReg: TRegistry;
  Counter: Integer;
  //P: TdxPNGImage;
  Image: String;
  PNGImage: TPNGImage;// TJPEGImage;
  Image2: TBitmap;
  BlobStream: TStream;
begin
  Self.Tag := 1;
  LoadButtons;
  CommonPOS.VeteranoActivo := 0;
  {Try
    if CommonPOS.PoleDisplayPort > 1 then FrmMain.elSerialPort1.Open
  Except
    //
  End;}
  LabelHeading.Caption := DMMidas.CDSSetupStoreName.Value;
  CommonPOS.DisconnectFromDatabase;
  With DMMIDAS.POS_DELETE_OPEN_TRANSACTIONS do
  begin
    Prepare;
    ParamByName('@REGISTER').Value := StrToInt(CommonPOS.RegisterNo);
    ExecProc;
  end;
  {
  With DMMidas do
  begin
    SQLQuery1SA.SQL.Text := 'delete from TRANSACTIONHEADER_TEMP where REGISTER = ' + COMmonPOS.RegisterNo + ' and OPENED <> ' + chr(39) + 'S' + chr(39);
    SQLQuery1SA.ExecSQL();
    SQLQuery1SA.SQL.Text := 'delete from TRANSACTIONdetail_TEMP where REGISTER = ' + COMmonPOS.RegisterNo + ' and OPENED <> ' + chr(39) + 'S' + chr(39);
    SQLQuery1SA.ExecSQL();
  end;
  }
  CommonPOS.Supervisor := '';
  CommonPOS.NoTaxCharge := True;
  RzBitBtn3.Caption := 'CHARGE TAX';
  With DMMidas do
  begin
    With CDSTrHeadAdHoc2 do
    begin
      Close;
      CommandText := 'Select StartBank, ID from DailyTotals Where EmployNumber = ' + chr(39) +
                      CommonPos.User + chr(39) + ' AND Status_Caja = ' +
                      #39 + 'O' + #39 + ' and Register = ' + Trim(CommonPOS.RegisterNo);
                      {'Select StartBank, ID from DailyTotals Where EmployNumber = ''' +
                    CommonPOS.User + ''' AND Status_Caja = ' +
                    #39 + 'O' + #39 + ' and Register = ' +  CommonPOS.RegisterNo;}
      Active := True;
    end;
    //SetBounds( 0, 0, Screen.Width, Screen.Height);
    //CommonPOS.FormCreate;
    EditProd.Text := DMMidas.CDSSetupStoreName.Value;
    StatusBar1.Panels[1].Text := 'PETTY CASH: ' + Format('%m',[DMMidas.CDSTrHeadAdHoc2.FieldByName('STARTBANK').asFloat]);
    StatusBar1.Panels[0].Text := FrmMain.sbMain.Panels[0].Text;
    StatusBar1.Panels[2].Text := 'NO. CAJA: ' + CommonPOS.RegisterNo;
    StatusBar1.Panels[3].Text := 'CUADRE ID: ' + DMMidas.CDSTrHeadAdHoc2.fieldbyName('ID').AsString;
    CommonPOS.ID := DMMidas.CDSTrHeadAdHoc2.fieldbyName('ID').asInteger;
    CommonPOS.RefundPOS := False;
    //if FrmMain.RecetasPharmaTech = False then
    if DMMidas.CDSSetupFARMACIA.Value <> 'T' then
    begin
      //RzBitBtn8.Visible := False;
      //RzBitBtn9.Visible := False;
    end;

    With DMMidas do
    begin
      //TRANSACTIONDETAIL_DELETE.ParamByName('@REGISTER').AsInteger := StrToInt(CommonPOS.RegisterNo);
      //TRANSACTIONDETAIL_DELETE.ParamByName('@TNUMBER').AsInteger := 0;
      //TRANSACTIONDETAIL_DELETE.ExecProc;
      CDSBotones.Close;
      CDSBotones.CommandText := 'Select * from Botones order by button_number';
      CDSBotones.Open;
      Counter := CDSBotones.RecordCount;
      //for I := 0 to CDSBotones.RecordCount - 1 do
      while not CDSBotones.eof do
      begin

       { if Trim(CDSBotonesPROCEDURE_ADD_ON.Value) = 'Recetas' then
        begin

            P := TdxPNGImage.Create;
            try
              P.LoadFromFile('..\Images\recetas.png');
              case  CDSBotonesBUTTON_NUMBER.Value of
              1: Button1.Glyph := P.GetAsBitmap;
              2: Button2.Glyph := P.GetAsBitmap;
              3: Button3.Glyph := P.GetAsBitmap;
              end;
            finally
              P.Free;
            end;
        end;
         if Trim(CDSBotonesPROCEDURE_ADD_ON.Value) = 'OTC' then
        begin
            P := TdxPNGImage.Create;
            try
              P.LoadFromFile('..\Images\otc.png');
              case  CDSBotonesBUTTON_NUMBER.Value of
              1: Button1.Glyph := P.GetAsBitmap;
              2: Button2.Glyph := P.GetAsBitmap;
              3: Button3.Glyph := P.GetAsBitmap;
              end;
            finally
              P.Free;
            end;
        end;
        if Trim(CDSBotonesPROCEDURE_ADD_ON.Value) = 'Bag Pickup' then
        begin
            //P := TdxPNGImage.Create;
            try
              button1.Glyph := Image1.Picture.Bitmap;
             // P.GetAsBitmap := Image1;
             // P.LoadFromFile('..\Images\bag.png');
              case  CDSBotonesBUTTON_NUMBER.Value of
              1: Button1.Glyph := Image1.Picture.Bitmap;
              2: Button2.Glyph := Image1.Picture.Bitmap;
              3: Button3.Glyph := Image1.Picture.Bitmap;
              end;
            finally
              P.Free;
            end;
        end;
        if Trim(CDSBotonesPROCEDURE_ADD_ON.Value) = 'eSignature' then
        begin
            P := TdxPNGImage.Create;
            try
              P.LoadFromFile('..\Images\bag.png');
              case  CDSBotonesBUTTON_NUMBER.Value of
              1: Button1.Glyph := P.GetAsBitmap;
              2: Button2.Glyph := P.GetAsBitmap;
              3: Button3.Glyph := P.GetAsBitmap;
              end;
            finally
              P.Free;
            end;
        end; }

       {
       if CDSBotonesButton_Number.Value = 1 then
        begin
          Button1.Visible := True;
          Button1.Caption := CDSBotonesDescription.Value;
          Button1.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 2 then
        begin
          Button2.Visible := True;
          Button2.Caption := CDSBotonesDescription.Value;
          Button2.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 3 then
        begin
          Button3.Visible := True;
          Button3.Caption := CDSBotonesDescription.Value;
          Button3.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 4 then
        begin
          Button4.Visible := True;
          Button4.Caption := CDSBotonesDescription.Value;
          Button4.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 5 then
        begin
          Button5.Visible := True;
          Button5.Caption := CDSBotonesDescription.Value;
          Button5.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 6 then
        begin
          Button6.Visible := True;
          Button6.Caption := CDSBotonesDescription.Value;
          Button6.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 7 then
        begin
          Button7.Visible := True;
          Button7.Caption := CDSBotonesDescription.Value;
          Button7.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 8 then
        begin
          Button8.Visible := True;
          Button8.Caption := CDSBotonesDescription.Value;
          Button8.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 9 then
        begin
          Button9.Visible := True;
          Button9.Caption := CDSBotonesDescription.Value;
          Button9.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 10 then
        begin
          Button10.Visible := True;
          Button10.Caption := CDSBotonesDescription.Value;
          Button10.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 11 then
        begin
          Button11.Visible := True;
          Button11.Caption := CDSBotonesDescription.Value;
          Button11.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 12 then
        begin
          Button12.Visible := True;
          Button12.Caption := CDSBotonesDescription.Value;
          Button12.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 13 then
        begin
          Button13.Visible := True;
          Button13.Caption := CDSBotonesDescription.Value;
          Button13.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 14 then
        begin
          Button14.Visible := True;
          Button14.Caption := CDSBotonesDescription.Value;
          Button14.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 15 then
        begin
          Button15.Visible := True;
          Button15.Caption := CDSBotonesDescription.Value;
          Button15.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 16 then
        begin
          Button16.Visible := True;
          Button16.Caption := CDSBotonesDescription.Value;
          Button16.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 17 then
        begin
          Button17.Visible := True;
          Button17.Caption := CDSBotonesDescription.Value;
          Button17.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 18 then
        begin
          Button18.Visible := True;
          Button18.Caption := CDSBotonesDescription.Value;
          Button18.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 19 then
        begin
          Button19.Visible := True;
          Button19.Caption := CDSBotonesDescription.Value;
          Button19.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 20 then
        begin
          Button20.Visible := True;
          Button20.Caption := CDSBotonesDescription.Value;
          Button20.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 21 then
        begin
          Button21.Visible := True;
          Button21.Caption := CDSBotonesDescription.Value;
          Button21.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 22 then
        begin
          Button22.Visible := True;
          Button22.Caption := CDSBotonesDescription.Value;
          Button22.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 23 then
        begin
          Button23.Visible := True;
          Button23.Caption := CDSBotonesDescription.Value;
          Button23.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 24 then
        begin
          Button24.Visible := True;
          Button24.Caption := CDSBotonesDescription.Value;
          Button24.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 25 then
        begin
          Button25.Visible := True;
          Button25.Caption := CDSBotonesDescription.Value;
          Button25.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 26 then
        begin
          Button26.Visible := True;
          Button26.Caption := CDSBotonesDescription.Value;
          Button26.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 27 then
        begin
          Button27.Visible := True;
          Button27.Caption := CDSBotonesDescription.Value;
          Button27.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 28 then
        begin
          Button28.Visible := True;
          Button28.Caption := CDSBotonesDescription.Value;
          Button28.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 29 then
        begin
          Button29.Visible := True;
          Button29.Caption := CDSBotonesDescription.Value;
          Button29.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 30 then
        begin
          Button30.Visible := True;
          Button30.Caption := CDSBotonesDescription.Value;
          Button30.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 31 then
        begin
          Button31.Visible := True;
          Button31.Caption := CDSBotonesDescription.Value;
          Button31.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 32 then
        begin
          Button32.Visible := True;
          Button32.Caption := CDSBotonesDescription.Value;
          Button32.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 33 then
        begin
          Button33.Visible := True;
          Button33.Caption := CDSBotonesDescription.Value;
          Button33.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 34 then
        begin
          Button34.Visible := True;
          Button34.Caption := CDSBotonesDescription.Value;
          Button34.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 35 then
        begin
          Button35.Visible := True;
          Button35.Caption := CDSBotonesDescription.Value;
          Button35.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 36 then
        begin
          Button36.Visible := True;
          Button36.Caption := CDSBotonesDescription.Value;
          Button36.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 37 then
        begin
          Button37.Visible := True;
          Button37.Caption := CDSBotonesDescription.Value;
          Button37.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 38 then
        begin
          Button38.Visible := True;
          Button38.Caption := CDSBotonesDescription.Value;
          Button38.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 39 then
        begin
          Button39.Visible := True;
          Button39.Caption := CDSBotonesDescription.Value;
          Button39.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 40 then
        begin
          Button40.Visible := True;
          Button40.Caption := CDSBotonesDescription.Value;
          Button40.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 41 then
        begin
          Button41.Visible := True;
          Button41.Caption := CDSBotonesDescription.Value;
          Button41.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 42 then
        begin
          Button42.Visible := True;
          Button42.Caption := CDSBotonesDescription.Value;
          Button42.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 43 then
        begin
          Button43.Visible := True;
          Button43.Caption := CDSBotonesDescription.Value;
          Button43.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 44 then
        begin
          Button44.Visible := True;
          Button44.Caption := CDSBotonesDescription.Value;
          Button44.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 45 then
        begin
          Button45.Visible := True;
          Button45.Caption := CDSBotonesDescription.Value;
          Button45.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 46 then
        begin
          Button46.Visible := True;
          Button46.Caption := CDSBotonesDescription.Value;
          Button46.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 47 then
        begin
          Button47.Visible := True;
          Button47.Caption := CDSBotonesDescription.Value;
          Button47.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 48 then
        begin
          Button48.Visible := True;
          Button48.Caption := CDSBotonesDescription.Value;
          Button48.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 49 then
        begin
          Button49.Visible := True;
          Button49.Caption := CDSBotonesDescription.Value;
          Button49.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 51 then
        begin
          Button51.Visible := True;
          Button51.Caption := CDSBotonesDescription.Value;
          Button51.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 52 then
        begin
          Button52.Visible := True;
          Button52.Caption := CDSBotonesDescription.Value;
          Button52.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 53 then
        begin
          Button53.Visible := True;
          Button53.Caption := CDSBotonesDescription.Value;
          Button53.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 54 then
        begin
          Button54.Visible := True;
          Button54.Caption := CDSBotonesDescription.Value;
          Button54.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 55 then
        begin
          Button55.Visible := True;
          Button55.Caption := CDSBotonesDescription.Value;
          Button55.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 56 then
        begin
          Button56.Visible := True;
          Button56.Caption := CDSBotonesDescription.Value;
          Button56.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 57 then
        begin
          Button57.Visible := True;
          Button57.Caption := CDSBotonesDescription.Value;
          Button57.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 58 then
        begin
          Button58.Visible := True;
          Button58.Caption := CDSBotonesDescription.Value;
          Button58.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 59 then
        begin
          Button59.Visible := True;
          Button59.Caption := CDSBotonesDescription.Value;
          Button59.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 60 then
        begin
          Button60.Visible := True;
          Button60.Caption := CDSBotonesDescription.Value;
          Button60.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 61 then
        begin
          Button61.Visible := True;
          Button61.Caption := CDSBotonesDescription.Value;
          Button61.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 62 then
        begin
          Button62.Visible := True;
          Button62.Caption := CDSBotonesDescription.Value;
          Button62.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 63 then
        begin
          Button63.Visible := True;
          Button63.Caption := CDSBotonesDescription.Value;
          Button63.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 64 then
        begin
          Button64.Visible := True;
          Button64.Caption := CDSBotonesDescription.Value;
          Button64.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 65 then
        begin
          Button65.Visible := True;
          Button65.Caption := CDSBotonesDescription.Value;
          Button65.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 66 then
        begin
          Button66.Visible := True;
          Button66.Caption := CDSBotonesDescription.Value;
          Button66.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 67 then
        begin
          Button67.Visible := True;
          Button67.Caption := CDSBotonesDescription.Value;
          Button67.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 68 then
        begin
          Button68.Visible := True;
          Button68.Caption := CDSBotonesDescription.Value;
          Button68.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 69 then
        begin
          Button69.Visible := True;
          Button69.Caption := CDSBotonesDescription.Value;
          Button69.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 70 then
        begin
          Button70.Visible := True;
          Button70.Caption := CDSBotonesDescription.Value;
          Button70.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 71 then
        begin
          Button71.Visible := True;
          Button71.Caption := CDSBotonesDescription.Value;
          Button71.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 72 then
        begin
          Button72.Visible := True;
          Button72.Caption := CDSBotonesDescription.Value;
          Button72.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 73 then
        begin
          Button73.Visible := True;
          Button73.Caption := CDSBotonesDescription.Value;
          Button73.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 74 then
        begin
          Button74.Visible := True;
          Button74.Caption := CDSBotonesDescription.Value;
          Button74.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 75 then
        begin
          Button75.Visible := True;
          Button75.Caption := CDSBotonesDescription.Value;
          Button75.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 76 then
        begin
          Button76.Visible := True;
          Button76.Caption := CDSBotonesDescription.Value;
          Button76.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 77 then
        begin
          Button77.Visible := True;
          Button77.Caption := CDSBotonesDescription.Value;
          Button77.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 78 then
        begin
          Button78.Visible := True;
          Button78.Caption := CDSBotonesDescription.Value;
          Button78.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 79 then
        begin
          Button79.Visible := True;
          Button79.Caption := CDSBotonesDescription.Value;
          Button79.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 80 then
        begin
          Button80.Visible := True;
          Button80.Caption := CDSBotonesDescription.Value;
          Button80.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 81 then
        begin
          Button81.Visible := True;
          Button81.Caption := CDSBotonesDescription.Value;
          Button81.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 82 then
        begin
          Button82.Visible := True;
          Button82.Caption := CDSBotonesDescription.Value;
          Button82.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 83 then
        begin
          Button83.Visible := True;
          Button83.Caption := CDSBotonesDescription.Value;
          Button83.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 84 then
        begin
          Button84.Visible := True;
          Button84.Caption := CDSBotonesDescription.Value;
          Button84.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 85 then
        begin
          Button85.Visible := True;
          Button85.Caption := CDSBotonesDescription.Value;
          Button85.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 86 then
        begin
          Button86.Visible := True;
          Button86.Caption := CDSBotonesDescription.Value;
          Button86.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 87 then
        begin
          Button87.Visible := True;
          Button87.Caption := CDSBotonesDescription.Value;
          Button87.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 88 then
        begin
          Button88.Visible := True;
          Button88.Caption := CDSBotonesDescription.Value;
          Button88.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 89 then
        begin
          Button89.Visible := True;
          Button89.Caption := CDSBotonesDescription.Value;
          Button89.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 90 then
        begin
          Button90.Visible := True;
          Button90.Caption := CDSBotonesDescription.Value;
          Button90.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 91 then
        begin
          Button91.Visible := True;
          Button91.Caption := CDSBotonesDescription.Value;
          Button91.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 92 then
        begin
          Button92.Visible := True;
          Button92.Caption := CDSBotonesDescription.Value;
          Button92.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 93 then
        begin
          Button50.Visible := True;
          Button50.Caption := CDSBotonesDescription.Value;
          Button50.Tag := CDSBotonesProductNo.Value;
        end;
        if CDSBotonesButton_Number.Value = 94 then
        begin
          Button94.Visible := True;
          Button94.Caption := CDSBotonesDescription.Value;
          Button94.Tag := CDSBotonesProductNo.Value;
        end;
        }
        CDSBotones.Next;
      end;

    end;
  end;

  {With DMMidas do
  begin
    CDSBotones.First;
    while not CDSBotones.Eof do
    begin
      SQLQuery1.Close;
      SQLQuery1.SQL.Text := 'Select BUTTON_IMAGE from Botones where Button_Number = ' + CDSBotonesBUTTON_NUMBER.asString;
      SQLQuery1.Open;

        if (not SQLQuery1.FieldByName('BUTTON_IMAGE').IsNull) then
        begin
          BlobStream := SQLQuery1.CreateBlobStream(SQLQuery1.FieldByName('BUTTON_IMAGE'),bmRead);
          Image2 := TBitmap.Create;
          //PNGImage := TPNGImage.Create;
          try
            Image2.LoadFromStream(BlobStream);
            //PNGImage.LoadFromStream(BlobStream);
            case CDSBotonesBUTTON_NUMBER.Value of
              1: Button1.Glyph.Assign(Image2);
              2: Button2.Glyph.Assign(Image2);
              3: Button3.Glyph.Assign(Image2);
              4: Button4.Glyph.Assign(Image2);
            end;
          finally
            Image2.Free;
            BlobStream.Free;
          end;
        end;
      CDSBotones.Next;

    end;
  end;
  }

end;

procedure TFrmPOSTS.BtnCreditClick(Sender: TObject);
Var
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  If FrmMain.IsAuthorized(AuthUser,30) then
  begin
    CrSignature := AuthUser;
    If CommonPOS.Customer = 0 then
      PayTransaction('CRED');
  end;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSTS.RzBitBtn19Click(Sender: TObject);
Var
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  If FrmMain.IsAuthorized(AuthUser,17) then
    CommonPOS.OpenDrawer;
  EditSearchProd.SetFocus;
  cxPageControl1.ActivePageIndex := 0;
end;

procedure TFrmPOSTS.RzBitBtn20Click(Sender: TObject);
begin
  CommonPOS.ReprintReceipt;
  EditSearchProd.SetFocus;
  cxPageControl1.ActivePageIndex := 0;
end;

procedure TFrmPOSTS.RzBitBtn21Click(Sender: TObject);
Var
  Taxable: String;
begin
  FrmAddUtility := TFrmAddUtility.Create(Self);
  With FrmAddUtility do
  begin
    ShowModal;
    If ModalResult = mrOK then
    begin
      //Taxable := DMMidas.CDSUtilitiesTAXABLE.Value;
      if Trim(Taxable) = '' then Taxable := 'F';
     { If StrToFloat(Edit1.Text) >= 0.01 then
        CommonPOS.AddProduct('F','99999999995','PAGO UTILIDAD ' + DMMidas.CDSUtilitiesNAME.Value ,'UTILIDAD','F', DMMidas.CDSUtilitiesNAME.Value,  //ComboBox1.Text
                   CommonPOS.User, Taxable, Taxable,StrtoFloat(Edit1.text),
                   StrtoFloat(Edit1.text), 0, 0,1,0,CommonPOS.Turno, CommonPOS.ID, 0, 0,0,0,true,false,'',0,false,0,false);
      If StrToFloat(Edit2.Text) >= 0.01 then
        CommonPOS.AddProduct('F','99999999994','CARGO UTILIDAD ' + DMMidas.CDSUtilitiesNAME.Value,'OTROS CARGOS','F',DMMidas.CDSUtilitiesNAME.Value,
                   CommonPOS.User, Taxable, Taxable,StrtoFloat(Edit2.text),
                   StrtoFloat(Edit2.text), 0, 0,1,0,CommonPOS.Turno, CommonPOS.ID, 0, 0,0,0,true,false,'',0,false,0,false);  }
    end;
    Release;
  end;
  cxPageControl1.ActivePageIndex := 0;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSTS.Button10Click(Sender: TObject);
begin
  //EditButton(Button10);
  EditButton(Button10.Name);
end;

procedure TFrmPOSTS.Button11Click(Sender: TObject);
begin
  EditButton(Button11.Name);
end;

procedure TFrmPOSTS.Button71Click(Sender: TObject);
begin
  EditButton(Button71.Name);

end;

procedure TFrmPOSTS.Button72Click(Sender: TObject);
begin
  EditButton(Button72.Name);
end;

procedure TFrmPOSTS.Button73Click(Sender: TObject);
begin
  EditButton(Button73.Name);
end;

procedure TFrmPOSTS.Button74Click(Sender: TObject);
begin
  EditButton(Button74.Name);
end;

procedure TFrmPOSTS.Button75Click(Sender: TObject);
begin
  EditButton(Button75.Name);
end;

procedure TFrmPOSTS.Button76Click(Sender: TObject);
begin
  EditButton(Button76.Name);
end;

procedure TFrmPOSTS.Button77Click(Sender: TObject);
begin
  EditButton(Button77.Name);
end;

procedure TFrmPOSTS.Button78Click(Sender: TObject);
begin
  EditButton(Button78.Name);
end;

procedure TFrmPOSTS.Button79Click(Sender: TObject);
begin
  EditButton(Button79.Name);
end;

procedure TFrmPOSTS.Button12Click(Sender: TObject);
begin
  EditButton(Button12.Name);
end;

procedure TFrmPOSTS.Button13Click(Sender: TObject);
begin
  EditButton(Button13.Name);
end;

procedure TFrmPOSTS.Button14Click(Sender: TObject);
begin
  EditButton(Button14.Name);
end;

procedure TFrmPOSTS.Button15Click(Sender: TObject);
begin
  EditButton(Button15.Name);
end;

procedure TFrmPOSTS.Button16Click(Sender: TObject);
begin
  EditButton(Button16.Name);
end;

procedure TFrmPOSTS.Button17Click(Sender: TObject);
begin
  EditButton(Button17.Name);
end;

procedure TFrmPOSTS.Button18Click(Sender: TObject);
begin
  EditButton(Button18.Name);
end;

procedure TFrmPOSTS.Button19Click(Sender: TObject);
begin
  EditButton(Button19.Name);
end;

procedure TFrmPOSTS.Button1Click(Sender: TObject);
begin
  EditButton(Button1.Name);
end;

procedure TFrmPOSTS.Button20Click(Sender: TObject);
begin
  EditButton(Button20.Name);
end;

procedure TFrmPOSTS.Button21Click(Sender: TObject);
begin
  EditButton(Button21.Name);

end;

procedure TFrmPOSTS.Button22Click(Sender: TObject);
begin
  EditButton(Button22.Name);

end;

procedure TFrmPOSTS.Button23Click(Sender: TObject);
begin
  EditButton(Button23.Name);

end;

procedure TFrmPOSTS.Button24Click(Sender: TObject);
begin
  EditButton(Button24.Name);

end;

procedure TFrmPOSTS.Button25Click(Sender: TObject);
begin
  EditButton(Button25.Name);

end;

procedure TFrmPOSTS.Button26Click(Sender: TObject);
begin
  EditButton(Button26.Name);

end;

procedure TFrmPOSTS.Button27Click(Sender: TObject);
begin
  EditButton(Button27.Name);

end;

procedure TFrmPOSTS.Button28Click(Sender: TObject);
begin
  EditButton(Button28.Name);

end;

procedure TFrmPOSTS.Button29Click(Sender: TObject);
begin
  EditButton(Button29.Name);

end;

procedure TFrmPOSTS.Button2Click(Sender: TObject);
begin
  EditButton(Button2.Name);
end;

procedure TFrmPOSTS.Button30Click(Sender: TObject);
begin
  EditButton(Button30.Name);
end;

procedure TFrmPOSTS.Button31Click(Sender: TObject);
begin
  EditButton(Button31.Name);
end;

procedure TFrmPOSTS.Button32Click(Sender: TObject);
begin
  EditButton(Button32.Name);
end;

procedure TFrmPOSTS.Button33Click(Sender: TObject);
begin
  EditButton(Button33.Name);
end;

procedure TFrmPOSTS.Button34Click(Sender: TObject);
begin
  EditButton(Button34.Name);
end;

procedure TFrmPOSTS.Button35Click(Sender: TObject);
begin
  EditButton(Button35.Name);
end;

procedure TFrmPOSTS.Button36Click(Sender: TObject);
begin
  EditButton(Button36.Name);
end;

procedure TFrmPOSTS.Button37Click(Sender: TObject);
begin
  EditButton(Button37.Name);
end;

procedure TFrmPOSTS.Button38Click(Sender: TObject);
begin
  EditButton(Button38.Name);
end;

procedure TFrmPOSTS.Button39Click(Sender: TObject);
begin
  EditButton(Button39.Name);
end;

procedure TFrmPOSTS.Button3Click(Sender: TObject);
begin
  //EditButton(Button3);
  EditButton(Button3.Name);
end;

procedure TFrmPOSTS.Button40Click(Sender: TObject);
begin
  EditButton(Button40.Name);
end;

procedure TFrmPOSTS.Button41Click(Sender: TObject);
begin
  EditButton(Button41.Name);
end;

procedure TFrmPOSTS.Button42Click(Sender: TObject);
begin
  EditButton(Button42.Name);

end;

procedure TFrmPOSTS.Button43Click(Sender: TObject);
begin
  EditButton(Button5.Name);
end;

procedure TFrmPOSTS.Button44Click(Sender: TObject);
begin
  EditButton(Button44.Name);
end;

procedure TFrmPOSTS.Button45Click(Sender: TObject);
begin
  EditButton(Button45.Name);
end;

procedure TFrmPOSTS.Button46Click(Sender: TObject);
begin
  EditButton(Button46.Name);
end;

procedure TFrmPOSTS.Button47Click(Sender: TObject);
begin
  EditButton(Button47.Name)
end;

procedure TFrmPOSTS.Button48Click(Sender: TObject);
begin
  EditButton(Button48.Name)
end;

procedure TFrmPOSTS.Button49Click(Sender: TObject);
begin
  EditButton(Button49.Name);
end;

procedure TFrmPOSTS.Button4Click(Sender: TObject);
begin
  //EditButton(Button4);
  EditButton(Button4.Name);
end;

procedure TFrmPOSTS.Button50Click(Sender: TObject);
begin
  EditButton(Button50.Name);
end;

procedure TFrmPOSTS.Button51Click(Sender: TObject);
begin
 EditButton(Button51.Name);
end;

procedure TFrmPOSTS.Button52Click(Sender: TObject);
begin
 EditButton(Button52.Name);
end;

procedure TFrmPOSTS.Button53Click(Sender: TObject);
begin
  EditButton(Button53.Name);
end;

procedure TFrmPOSTS.Button54Click(Sender: TObject);
begin
  EditButton(Button54.Name);
end;

procedure TFrmPOSTS.Button55Click(Sender: TObject);
begin
  EditButton(Button55.Name);
end;

procedure TFrmPOSTS.Button56Click(Sender: TObject);
begin
  EditButton(Button56.Name)
end;

procedure TFrmPOSTS.Button57Click(Sender: TObject);
begin
  EditButton(Button57.Name);
end;

procedure TFrmPOSTS.Button58Click(Sender: TObject);
begin
  EditButton(Button58.Name);
end;

procedure TFrmPOSTS.Button59Click(Sender: TObject);
begin
  EditButton(Button59.Name);
end;

procedure TFrmPOSTS.Button5Click(Sender: TObject);
begin
  //EditButton(Button5);
  EditButton(Button5.Name);
end;

procedure TFrmPOSTS.Button60Click(Sender: TObject);
begin
  EditButton(Button60.Name);
end;

procedure TFrmPOSTS.Button61Click(Sender: TObject);
begin
  EditButton(Button61.Name);
end;

procedure TFrmPOSTS.Button62Click(Sender: TObject);
begin
  EditButton(Button62.Name)
end;

procedure TFrmPOSTS.Button63Click(Sender: TObject);
begin
  EditButton(Button63.Name)
end;

procedure TFrmPOSTS.Button64Click(Sender: TObject);
begin
  EditButton(Button64.Name)
end;

procedure TFrmPOSTS.Button65Click(Sender: TObject);
begin
  EditButton(Button65.Name)
end;

procedure TFrmPOSTS.Button66Click(Sender: TObject);
begin
  EditButton(Button66.Name)
end;

procedure TFrmPOSTS.Button67Click(Sender: TObject);
begin
  EditButton(Button67.Name)
end;

procedure TFrmPOSTS.Button68Click(Sender: TObject);
begin
  EditButton(Button68.Name)
end;

procedure TFrmPOSTS.Button69Click(Sender: TObject);
begin
  EditButton(Button69.Name)
end;

procedure TFrmPOSTS.Button6Click(Sender: TObject);
begin
  EditButton(Button6.Name);
end;

procedure TFrmPOSTS.Button7Click(Sender: TObject);
begin
  EditButton(Button7.Name);
end;

procedure TFrmPOSTS.Button80Click(Sender: TObject);
begin
  EditButton(Button80.Name);
end;

procedure TFrmPOSTS.Button81Click(Sender: TObject);
begin
  EditButton(Button81.Name);
end;

procedure TFrmPOSTS.Button82Click(Sender: TObject);
begin
  EditButton(Button82.Name);
end;

procedure TFrmPOSTS.Button83Click(Sender: TObject);
begin
  EditButton(Button83.Name);
end;

procedure TFrmPOSTS.Button84Click(Sender: TObject);
begin
  EditButton(Button84.Name);
end;

procedure TFrmPOSTS.Button85Click(Sender: TObject);
begin
  EditButton(Button85.Name);
end;

procedure TFrmPOSTS.Button86Click(Sender: TObject);
begin
  EditButton(Button86.Name);
end;

procedure TFrmPOSTS.Button87Click(Sender: TObject);
begin
  EditButton(Button87.Name);
end;

procedure TFrmPOSTS.Button88Click(Sender: TObject);
begin
  EditButton(Button88.Name);
end;

procedure TFrmPOSTS.Button89Click(Sender: TObject);
begin
  EditButton(Button89.Name);
end;

procedure TFrmPOSTS.Button8Click(Sender: TObject);
begin
  //EditButton(Button8);
    EditButton(Button8.Name);
end;

procedure TFrmPOSTS.Button90Click(Sender: TObject);
begin
  EditButton(Button90.Name);
end;

procedure TFrmPOSTS.Button91Click(Sender: TObject);
begin
  EditButton(Button91.Name);
end;

procedure TFrmPOSTS.Button92Click(Sender: TObject);
begin
  EditButton(Button92.Name);
end;

procedure TFrmPOSTS.Button93Click(Sender: TObject);
begin
  EditButton(Button93.Name);
end;

procedure TFrmPOSTS.Button94Click(Sender: TObject);
begin
  EditButton(Button94.Name);
end;

procedure TFrmPOSTS.Button9Click(Sender: TObject);
begin
    EditButton(Button9.Name);
end;

procedure TFrmPOSTS.ButtonGroupSalesClick(Sender: TObject);
begin
  FrmGroupSales := TFrmGroupSales.Create(self);
  FrmGroupSales.Tag := 1;
  with FrmGroupSales do
  begin
    ShowModal;
    Free;
  end;
  cxPageControl1.ActivePageIndex := 0;
  EditSearchProd.SetFocus;
end;


procedure TFrmPOSTS.DBEdit1Exit(Sender: TObject);
begin
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSTS.RzBitBtn10Click(Sender: TObject);
Var
AuthUser : String;
begin
  AuthUser := CommonPOS.User;
  If FrmMain.IsAuthorized(AuthUser,43) then
  begin
    CommonPOS.VentaManual(1);
    EditSearchProd.SetFocus;
    EditProd.Text := 'VENTA MANUAL' + '   Qty: ' + DMMidas.CDSTransShowQTY.AsString + '   Price: ' + Format('%m', [DMMidas.CDSTransShowPRICE.AsFloat]);
  end;
end;

procedure TFrmPOSTS.RzBitBtn7Click(Sender: TObject);
Var
  AuthUser: String;
begin
  if CommonPOS.RefundPOS <> True then
  begin
    AuthUser := CommonPOS.User;
    If (FrmMain.IsAuthorized(AuthUser,11)) then
    begin
      if CommonPOS.RefundPOS = False then
      begin
        //StatusBar2.Panels[2].
        StatusBar2.Panels[2].Text := 'Refund Active';
        //StatusBar2.Panels[2].PanelStyle.Color := clRed;
        //SPRefund.Caption := 'Refund Active';
        //SPRefund.Visible := True;
        CommonPOS.RefundPOS := True;
      end
      else
      begin
        StatusBar2.Panels[2].Text := 'Refund Inactive';
        //StatusBar2.Panels[2].PanelStyle.Color := clBtnFace;
        //SPRefund.Visible := False;
        CommonPOS.RefundPOS := False;
      end;
    end;
  end
  else
  begin
    StatusBar2.Panels[2].Text := 'Refund Inactive';
    //StatusBar2.Panels[2].PanelStyle.Color := clBtnFace;
    //SPRefund.Visible := False;
    CommonPOS.RefundPOS := False;
  end;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSTS.RzBitBtn17Click(Sender: TObject);
begin
  if DMMidas.CDSTransShow.Active = False then
  begin
    CommonPos.PagoCredito(True);
    EditSearchProd.SetFocus;
  end
  else
    CommonPOS.ShowMessageStr('Debe terminar las transacciones pendientes antes de hacer un abono a la cuenta! Gracias...', 12,clBlack);
end;

procedure TFrmPOSTS.RzBitBtn18Click(Sender: TObject);
begin
  CommonPos.PayOut(True);
  cxPageControl1.ActivePageIndex := 0;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSTS.RzBitBtn23Click(Sender: TObject);
begin
  if StatusBar1.Panels[6].Text = '' then
    CommonPOS.Discount(False)
  else
    CommonPOS.Discount(True);
  EditSearchProd.SetFocus;  
end;

procedure TFrmPOSTS.BtnLayAwayClick(Sender: TObject);
begin
  If Customer = 0 then
    PayTransaction('LWAY');
end;

procedure TFrmPOSTS.RzBitBtn24Click(Sender: TObject);
Var
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  If FrmMain.IsAuthorized(AuthUser,26) then
    PayTransaction('NCHG');
  cxPageControl1.ActivePageIndex := 0;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSTS.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  CommonForm.Enter2tab(Self,Key);
end;

procedure TFrmPOSTS.RzBitBtn25Click(Sender: TObject);
begin
  CommonPOS.AbonoLayaway;
  cxPageControl1.ActivePageIndex := 0;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSTS.RzBitBtn26Click(Sender: TObject);
begin
  CommonPOS.PickUp;
  cxPageControl1.ActivePageIndex := 0;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSTS.RzBitBtn27Click(Sender: TObject);
begin
  CommonPOS.Assemblies(0);
  cxPageControl1.ActivePageIndex := 0;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSTS.RzBitBtn28Click(Sender: TObject);
begin
  CommonPOS.CambioCheque;
  cxPageControl1.ActivePageIndex := 0;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSTS.RzBitBtn29Click(Sender: TObject);
begin
  CommonPos.Comisiones;
  cxPageControl1.ActivePageIndex := 0;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSTS.EditSearchProdPropertiesChange(Sender: TObject);
begin
  FrmMain.TimerPoleDisplayHeader.Enabled := False;
end;

procedure TFrmPOSTS.EditSubTotalChange(Sender: TObject);
begin
 // EditSubTotalChange := Format('%m' [EditSubTotalChange.text]);
end;

procedure TFrmPOSTS.BtnAuspicioClick(Sender: TObject);
begin
  CommonPOS.Auspicio;
  if DMMidas.CDSClientesINFOADICIONAL.Value > '' then
    CommonPOS.ShowMessageStr(DMMidas.CDSClientesINFOADICIONAL.Value, 12,clBlack);
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSTS.EditSearchProdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    vk_F1: PayTransaction('CASH');
    vk_F2: BtnCredit.Click;
    vk_F3: BtnATH.Click;
    vk_F4: BtnCheck.Click;
    vk_F5: BtnVisa.Click;
    vk_F6: BtnLayAway.Click;
    vk_F7: BBorrar.Click;
    vk_F8: BLimpiar.Click;
    vk_F9: BQty.Click;
    vk_F10: BPrecio.Click;
    //vk_F11: BLimpiar.Click;
    vk_F12: BSalir.Click;
    vk_escape:
  end;
end;

procedure TFrmPOSTS.RzBitBtn1Click(Sender: TObject);
var
  AuthUser: String;
  PID: Integer;
begin
  AuthUser := CommonPOS.User;
  If FrmMain.IsAuthorized(AuthUser,39) then
  begin
    CommonPOS.SaveTransaction(False);
    cxPageControl1.ActivePageIndex := 0;
    EditSearchProd.SetFocus;
  end;  
end;

procedure TFrmPOSTS.RzBitBtn2Click(Sender: TObject);
Var
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  //If FrmMain.IsAuthorized(AuthUser,40) then
  begin
    if DMMidas.CDSTransHeadTOTAL.asFloat = 0 then
    begin
      CommonPOS.RecallTransaction(0);
      cxPageControl1.ActivePageIndex := 0;
      EditSearchProd.SetFocus;
    end
    else
    begin
      CommonPOS.ShowMessageStr('Debe terminar la transacción corriente antes de traer a pantalla una transacción archivada!', 12,clBlack);
      cxPageControl1.ActivePageIndex := 0;
      EditSearchProd.SetFocus;
    end;
  end;
end;

procedure TFrmPOSTS.RzBitBtn3Click(Sender: TObject);
Var
  IDNo, TranNo: Integer;
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  If (FrmMain.IsAuthorized(AuthUser,37)) then
  begin
     if CommonPOS.NoTaxCharge = True then
     begin
       CommonPOS.NoTaxCharge := False;
       RzBitBtn3.Caption := 'DO NOT CHARGE TAX';
     end
     else
     begin
       CommonPOS.NoTaxCharge := True;
       RzBitBtn3.Caption := 'CHARGE TAX';
     end;
 end
 else
   CommonPOS.ShowMessageStr('Usuario no autorizado...', 12,clRed);
 EditSearchProd.SetFocus;
end;

procedure TFrmPOSTS.RzBitBtn4Click(Sender: TObject);
begin
  FrmSearchInv2 := TFrmSearchInv2.Create(self);
  With FrmSearchInv2 do
  begin
    Tag := 1;
    ShowModal;
    Free;
  end;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSTS.BtnTarjetaFamClick(Sender: TObject);
begin
  PayTransaction('TFAM');
end;



procedure TFrmPOSTS.cxButton1Click(Sender: TObject);
Var
  TaxMunicipal, TaxEstatal: String;
begin
  FrmCombo := TFrmCombo.Create(Self);
  With FrmCombo do
  begin
    ToolButton1.Enabled := False;
    ToolButton2.Enabled := False;
    ToolButton7.Enabled := False;
    ToolButton8.Enabled := False;
    ToolButton9.Enabled := False;
    ToolButton11.Enabled := False;

    ToolBar2.Enabled := False;
    Edit1.Enabled := True;
    DBGrid1.ReadOnly := True;
    DBGrid2.ReadOnly := True;

    ShowModal;
    if ModalResult = mrOk then
    begin
      With DMMidas do
      begin
        CDSCombo_Detail.First;
        while not CDSCombo_Detail.eof do
        begin
            CDSInventarioPiso.Close;
            CDSInventarioPiso.CommandText := 'Select * from InventarioPiso where ProductNo = ' + CDSCombo_detailProductNo.AsString;
            CDSInventarioPiso.Open;

            if (CDSInventarioPisoTAXABLE.Value = '1') then TaxMunicipal := 'T' ELSE TaxMunicipal := 'F';
            if (CDSInventarioPisoTAXABLE_ESTATAL.Value = '1') then TaxEstatal := 'T' Else TaxEstatal := 'F';

            {CommonPOS.AddProduct('F',CDSInventarioPisoCodigoBarra.Value,  CDSCombo_detailProduct.Value, CDSInventarioPisoDESCDEPT.Value,'F','',
                 CommonPOS.User, TaxMunicipal, TaxEstatal, CDSCombo_detailPrice.Value,
                 (CDSInventarioPisoCOSTO.asFloat * CDSCombo_detailQuantity.Value), Perc, 0, CDSCombo_detailQuantity.Value ,0, CommonPOS.Turno, CommonPOS.ID, CDSInventarioPisoPRODUCTNO.Value, CDSInventarioPisoSUB_DEPARTAMENTO.Value,0,0,false,false,'',0,false,0,CDSInventarioPisoPROCESSED_FOOD.Value);
               }
          CDSCombo_Detail.Next;
        end;
      end;
    end;
    Free;
  end;
end;

procedure TFrmPOSTS.cxButton2Click(Sender: TObject);
begin
  CommonPOS.Veterano;
  if DMMidas.CDSClientesINFOADICIONAL.Value > '' then
    CommonPOS.ShowMessageStr(DMMidas.CDSClientesINFOADICIONAL.Value, 12,clBlack);
  cxPageControl1.ActivePageIndex := 0;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSTS.cxButton3Click(Sender: TObject);
begin
  CommonPOS.WIC;
  cxPageControl1.ActivePageIndex := 0;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSTS.cxButton4Click(Sender: TObject);
begin
  PayTransaction('WIC');
  cxPageControl1.ActivePageIndex := 0;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSTS.cxButton5Click(Sender: TObject);
begin
  CommonPOS.Servicios(1);
  EditSearchProd.SetFocus;
  EditProd.Text := 'Servicio' + '   Qty: ' + DMMidas.CDSTransShowQTY.AsString + '   Price: ' + Format('%m', [DMMidas.CDSTransShowPRICE.AsFloat]);
  cxPageControl1.ActivePageIndex := 0;
end;

procedure TFrmPOSTS.cxDBCurrencyEdit1Change(Sender: TObject);
begin
  With DMMidas do
  begin
    EditSubTotal.Text := Format('%f', [DMMidas.CDSTransHeadTOTAL.asFloat - (CDSTransHeadTAX.asFloat + CDSTransHeadTAX_ESTATAL.asFloat + CDSTransHeadTAX_SERVICIO.asFloat)]);
  end;

  if Trim(cxDBCurrencyEdit1.Text) = '' then
  begin
    CommonPOS.Supervisor := '';
  end;
end;

procedure TFrmPOSTS.RzBitBtn5Click(Sender: TObject);
begin
  CommonPOS.Patrocinio(0);
  if DMMidas.CDSClientesINFOADICIONAL.Value > '' then
    CommonPOS.ShowMessageStr(DMMidas.CDSClientesINFOADICIONAL.Value, 12,clBlack);
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSTS.RzBitBtn6Click(Sender: TObject);
Var
AuthUser : String;
begin
  AuthUser := CommonPOS.User;
  If FrmMain.IsAuthorized(AuthUser,44) then
  begin
    CommonPOS.RedimirAuspicio;
    DMMidas.CDSClientes.Refresh;
    cxPageControl1.ActivePageIndex := 0;
    EditSearchProd.SetFocus;
  end;
end;

procedure TFrmPOSTS.LoadButtons;
begin
  With DMMidas do
  begin
    CDSBotones.Close;
    CDSBotones.CommandText := 'Select * from Botones order by BUTTON_NUMBER';
    CDSBotones.Open;
    CDSBotones.First;
    while not CDSBotones.Eof do
    begin
      findButton(CDSBotonesBUTTON_NAME.AsString.Trim, CDSBotonesDESCRIPTION.asString.Trim, CDSBotonesPRODUCTNO.Value);
      CDSBotones.Next;
    end;
  end;

end;

function TFrmPOSTS.findButton(BtnName, BtnCaption: String; Tag: integer): Boolean;
Var
  pnl: TComponent;
  BlobStream: TStream;
  Image2: TBitmap;
  SpaceLoc: Integer;
begin
  {SpaceLoc := POS(' ',BtnCaption);
  if SpaceLoc > 1 then
  begin
    BtnCaption := Trim(copy(BtnCaption,1,SpaceLoc-1) + chr(13) + copy(BtnCaption,SpaceLoc+1,20));
  end;}
  pnl := FindComponent(BtnName);
  if pnl is TSpeedButton then
  begin
    TSpeedButton(pnl).Visible := True;
    TSpeedButton(pnl).Tag := Tag;
    if (not DMMidas.CDSBotonesBUTTON_IMAGE.IsNull) then
    begin
      BlobStream := DMMidas.CDSBotones.CreateBlobStream(DMMidas.CDSBotones.FieldByName('BUTTON_IMAGE'),bmRead);
      Image2 := TBitmap.Create;
      try
        Image2.LoadFromStream(BlobStream);
        TSpeedButton(pnl).Glyph.Assign(Image2);
      finally
        Image2.Free;
        BlobStream.Free;
      end;
      //TSpeedButton(pnl).Caption := '';
      TSpeedButton(pnl).Caption := BtnCaption;
    end
    else
    begin
      TSpeedButton(pnl).Caption := BtnCaption;
    end;
  end;
end;

procedure TFrmPOSTS.EditButton(BtnName: String);
begin
  With DMMidas do
  begin
    if (Self.Tag = 0) then
    begin
      FrmBotonesEdit := TFrmBotonesEdit.Create(self);
      With FrmBotonesEdit do
      begin
        CDSBotones.Close;
        CDSBotones.CommandText := 'Select * from Botones where Button_Name = ' + chr(39) + BtnName + chr(39);
        CDSBotones.Open;
        if CDSBotones.RecordCount = 0 then
        begin
          CDSBotones.Append;
          CDSBotonesQTY.asFloat := 1;
          CDSBotonesBUTTON_NAME.Value := BtnName;
        end
        else
         CDSBotones.Edit;
        ShowModal;
      end;
      LoadButtons;
    end
    else
    begin
      if (Copy(BtnName,1,5) <> 'sbCat') then
      begin
        CDSBotones.Close;
        CDSBotones.CommandText := 'Select * from Botones where Button_Name = ' + chr(39) + BtnName + chr(39);
        CDSBotones.Open;
        if Trim(CDSBotonesPROCEDURE_ADD_ON.Value) > '' then
        begin
          Addon;
        end
        else
        begin
          if CDSBotonesASSEMBLY_YN.Value = False then
            CommonPOS.FindProduct(CDSBotonesPRODUCTNO.asString, CDSBotonesQTY.asFloat,0,false,false)
          else
          begin
            CommonPOS.Assemblies(CDSBotonesPRODUCTNO.Value);
          end;
          if CDSInventarioPisoHAS_MODIFIER.Value = True then
          begin
            FrmModifiers := TFrmModifiers.Create(nil);
            With FrmModifiers do
            begin
              Main_Course_ID := CommonPOS.Main_Course_ID;
              cdsMainCourse.Close;
              cdsMainCourse.CommandText := 'Select * from TransactionDetail_Temp where Main_course_id = ' + IntToStr(CommonPOS.Main_Course_ID) + ' order by IDNumber';
              cdsMainCourse.Open;
              ShowModal;
              FrmModifiers := nil;
              Free;
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TFrmPOSTS.SetButtonsVisibleFalse(FT: Boolean);
var
  i: Integer;
  comp: TComponent;
  sb: TSpeedButton;
const
  NamePrefix = 'Button';
  NamePrefix2 = 'sbCat';

begin
  Try
    for i := 1 to (ComponentCount+1) do
    begin
      sb := FindComponent(NamePrefix + IntToStr(i)) as TSpeedButton;
      if sb <> nil then
      begin
        sb.Visible := FT;
      end;
    end;
  Except

  End;
  {i := 0;
  for i := 1 to ComponentCount+1 do
  begin
    sb := FindComponent(NamePrefix2 + IntToStr(i)) as TSpeedButton;
    if sb <> nil then
    begin
      sb.Visible := FT;
    end;
  end; }
end;

end.
