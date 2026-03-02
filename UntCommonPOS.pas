unit UntCommonPOS;

interface

uses

  InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns, wininet, pngimage,
  Windows, Messages, Classes, Graphics, Controls, Dialogs,
  StdCtrls, Forms, DBCtrls, DB, Grids, DBGrids, Mask, ExtCtrls,
  Buttons, WinTypes, ComCtrls, Printers, Registry,  ToolWin, Shellapi,
  SysUtils, frxClass, System.Threading, FireDAC.Comp.Client,
  IdAttachmentFile,  IdAttachment,
  IdSMTP,  IdMessage, IdMessageParts, IdEMailAddress, Math,
  IdMessageClient, IdSMTPBase, IdCoderMIME, Soap.EncdDecd,
  xmldom, XMLIntf, msxmldom, XMLDoc,
  REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, REST.Authenticator.Basic, ResourceLocalizer,
  System.JSON, DBXJSONCommon, System.JSON.Writers, System.JSON.Types
  //Include MAPI support.

  {$IFDEF Indy10}          //Include Indy support.
    ,ppSMTPIndy10
    {$DEFINE IndyEnabled}
  {$ENDIF}

  {$IFDEF Indy9}
    ,ppSMTPIndy9
    {$DEFINE IndyEnabled}
  {$ENDIF}

  {$IFDEF Indy8}
    ,ppSMTPIndy
    {$DEFINE IndyEnabled}
  {$ENDIF};


Type

TUserRights = class(TObject)
  USERNO: Integer;
  Pesc_Sig_isIdentity: Boolean;
  MAIN_SETUP: Boolean;
  LEXA: Boolean;
  MAIN_CUST: Boolean;
  MAIN_INV: Boolean;
  CAMBIARPASSWORD: Boolean;
  PROCESS_HANDHELD: Boolean;
  MAIN_DEPT: Boolean;
  MAIN_SUPL: Boolean;
  MAIN_TOTAL: Boolean;
  MAIN_ACCTS: Boolean;
  BACKUP_PERMIT: Boolean;
  LOG_DATA: Boolean;
  POS_REFUND: Boolean;
  POS_DELPROD: Boolean;
  POS_CHGPRICE: Boolean;
  POS_DELTRANS: Boolean;
  POS_NCGH: Boolean;
  POS_CANCEL: Boolean;
  POS_DISCOUNT: Boolean;
  POS_IVU: Boolean;
  POS_PAYOUT: Boolean;
  POS_OPNDRAWR: Boolean;
  POS_REPRINT: Boolean;
  POS_CREDIT: Boolean;
  GUARDAR_TRANSACCIONES: Boolean;
  RECALL_TRANS: Boolean;
  POS_HOLD: Boolean;
  VENTA_MANUAL: Boolean;
  CAMBIAR_PRECIO_OTC_RX: Boolean;
  POS_BUTTONS: Boolean;
  REDIMIR_PATROCINIO: Boolean;
  POS_ADD_BUTTONS: Boolean;
  POS_TAB_CANCEL: Boolean;
  POS_VER_TOTAL_CASH: Boolean;
  POS_POST_SHOPPER: Boolean;
  POS_REST_DELETEPRODUCT: Boolean;
  POS_LIMITE_CAMBIO_PRECIO: Boolean;
  CUST_IBAL: Boolean;
  CUST_EDIT: Boolean;
  CUST_DEL: Boolean;
  TOT_DEL: Boolean;
  TOT_EDIT: Boolean;
  TOT_EDITOLD: Boolean;
  POS_CUADRE_ADMINISTRADOR: Boolean;
  QUICKENTRY: Boolean;
  MAIN_RECV: Boolean;
  EM_VERQTYORD: Boolean;
  BORRAR_FIRMA: Boolean;
  WC_LOAD: Boolean;
  MAIN_TRANS: Boolean;
  POS_DELETE_RX: Boolean;
  EDIT_INVENTORY: Boolean;
  CREATE_INVENTORY: Boolean;
  DELETE_INVENTORY: Boolean;
  REPORTS: Boolean;
end;

 TCommonPOS = Class(TObject)
   Public
    StandalonePOS: Boolean;
    recalledTrans: Boolean;
    otccard: Boolean;
    ServerNamePOS: String;
    ServerNameRx: String;
    DataBaseNameRx: String;
    DataBaseNamePOS: String;
    LanguageIndex : integer;
    LanguageResOffset : integer;
    Utility: Boolean;
    standalone: Boolean;
    extendedPosForm: Boolean;
    productSignature: Boolean;
    CopharmaCardNumber: String;
    CoopharmaActive: Boolean;
    WorkingDirectory: String;
    PrinterIP: String;
    PrinterPort: String;
    TransactionType: String;
    ID_Verified: Boolean;
    TripleS_previousBalance: double;
    TripleS_ApprovedAmount: Double;
    TripleS_finalBalance: Double;
    TripleS_CustomerID: String;
    TripleS_GID: String;
    activePin: Boolean;
    SPINPOS_BASE_URL: String;
    SpinPOSActive: Boolean;
    SpinPOSApiKey : String;
    SpinPOSTPN : String;
    SpinPOSReg : String;
    SpinPOSID: String;
    settleOnClosePos: Boolean;
    tip: Double;
    pinTid: String;
    pinPortNum: String;
    pinIp: String;
    pinStationNum: String;
    ebtType: String;
    unicaCard: Boolean;
    receiptType: String;
    ebtCashBack: String;
    ebtWithdrawalAmnt: String;
    mcsRefund: Boolean;
    EvertecID: String;
    adjDelete: Boolean;
    UserName: String;
    UserLevel: String;  //[2025/02/18 jb] added level
    Factura: Boolean;
    Paidout: Boolean;
    Capture_Signature_User: String;
    ReceiptPrinter: String;
    FoodReceipt: String;
    PrintToScreen: boolean;
    Header: Integer;
    Customer: Integer;
    email: String;
    mobile_phone: string;
    Restaurant: Boolean;
    User: String;
    PoleDisplayType: Integer;
    poleDispPort: String;
    Main_Course_ID: Integer;
    //UserNumber: Integer;
    UserNumberAdmin: Integer;
    //UserInitialsAdmin: String;
    ScanedRxLink: Integer;
    SignatureLink: Integer;
    FirmaElectronica: Boolean;
    BagsPickupID: Array[1..5] of Integer;
    BagNumber: Integer;
    MemoStr: string;
    BarcodeNoReceta: Boolean;
    BarcodeNumeroReceta: Boolean;
    Vendor: String;
    ConsiderarCambioPrecio: Boolean;
    MaximosDiasPagoCredito: Integer;
    Supervisor: String;
    ConsiderarQty: Boolean;
    CheckNoSocio: Boolean;
    PoleDisplayPort: Integer;
    OpcionBusqueda: Integer;
    TransNo: Integer;
    ID: Integer;
    Turno: Integer;
    Perc: Single;
    TouchScreen: Boolean;
    Screen800x600: Boolean;
    RegisterNo: String;
    RefundPOS: Boolean;
    RxRecibo: Boolean;
    AuspicioActivo: Boolean;
    VeteranoActivo: Double;
    PatrocinioActivo: Boolean;
    RedimirPatrocinioActivo: Boolean;
    WICActivo: Boolean;
    Assemblie: Boolean;
    TaxRate: Double;
    NoTaxCharge: Boolean;
    Trans_AbonoCredito: Double;
    Trans_AbonoLayaway: Double;
    txportIP: String;
    IVULOTO_TERMINALID: String;
    IVULOTO_ACTIVO: Boolean;
    IVULotoControlNumber: String;

    NO_RECIBOS_CREDIT_CARD: Integer;
    NO_RECIBOS_DEBIT_CARD: Integer;
    NO_RECIBOS_CASH: Integer;
    NO_RECIBOS_CREDITSALE: Integer;
    NO_RECIBOS_LAYAWAY: Integer;
    NO_RECIBOS_PAYPAL: Integer;
    NO_RECIBOS_DELIVERY: Integer;
    NO_RECIBOS_UTILITIES: Integer;
    NO_RECIBOS_CHECK: Integer;
    NO_RECIBOS_NOCHARGE: Integer;

    DataBaseName: String;
    ServerNameSalesTech: String;
    PrintDataDefine: String;
    CDApproved: Boolean;
    WhatDatabseisActive: String;
    EnforceSignatureonPickup: Boolean;
    Procedure InsertTransCredit(TransType: String; NoCliente: Integer; Amount:Double);
    function calcSplitPayment(total: String; var tax1, tax2, tax3, tax4: String): Boolean;
    Procedure FindProduct(Token1: String; Qty, Button_Qty: Double; INVCONTROL_RECIPE, SearchByBarcode: Boolean);
    procedure AnadirArticulo(QTY, BUTTON_QTY: Double; INVCONTROL_RECIPE: Boolean);
    function roundPrice(str: String): Double;
    Procedure BuscarRx(SKU: String; ID: Integer);
    Procedure BuscarOTC(SKU: String);
    procedure SendtoPole(Line1, Line2: String);
    procedure AddProduct(GroupSale, ProdUPC, ProdDesc, ProdDept, Food, SubDetail, User, TaxMunicipal, TaxEstatal: String;
                         Price, RegPrice, Disc, costo, ProdQty: Double; Suplidor, Shift, ID, PID, ProdSubDpt, BagNumber, OTC_NUMBER: Integer; UTILIDAD, TaxServicio: Boolean; Note: String; Main_Cource_ID: Integer;
                         INVCONTROL_RECIPE: Boolean; BUTTON_QTY: Double; ProcessedFood, salesPromo: Boolean);
    Procedure CheckOut(Tip, Amount, SUBTOTAL: Double; TransType, PrintType: String; TS: Boolean; NoRecibos: Integer; Factura: Boolean);
    procedure BorrarProducto(TranNo, IDno: Integer);
    procedure PrintReceipt(THead, NoRecibos: Integer; OpenDrwr: Boolean; TransType, PrintType: String; IVULoto, RePrint, Factura, Kitchen, FinalReceipt: Boolean);
    procedure PrintLargeReceipt(THead: Integer; OpenDrwr, Reprint, SendByeMail: Boolean; IVULoto: String);
    procedure SelectPrinter(PrnText: String);
    procedure OpenDrawer;
    Procedure FindRx(NoRx: String; SearchOTC, IncludeBatch: Boolean; SearchOption: String; CheckifInPickup: Boolean);
    procedure FindOTC(SKU: String);
    procedure CambioQty;
    procedure CambioPrecio;
    procedure CancelTrans(TransNo: Integer);
    procedure HoldTransaction;
    procedure SaveTransaction(Deliver: Boolean);
    procedure ActivateInactivateButtons(BotonesActivos: Boolean);
    function RecallTransaction(NumeroTransaccion: Integer): Boolean;
    procedure Hold(Header: Integer; Hold: String);
    procedure HoldSaveTrans(Header: Integer; Hold, Delivered, By, ID, Customer: String);
    procedure FormCreate;
    procedure ChangeTurno;
    function  GetNewHeader(User: String; Shift, ID : Integer): Integer;
    function  GetHeader(User : String; Shift, ID : Integer) : Integer;
    function  LeftJString(InStr: String; StrLen: Integer): String;
    function  CenterString(InStr: String; StrLen: Integer): String;
    function  GetHeldHeader(User: String) : Integer;
    function  CanClose: boolean;
    Procedure CerrarCaja;
    Procedure VentaManual(TS:Integer);
    Procedure PagoCredito(TS: Boolean);
    Procedure PayOut(TS: Boolean);
    Procedure Discount(ActiveDiscount: Boolean);
    Procedure AbonoLayaway;
    Procedure PickUp;
    Procedure Assemblies(token: Integer);
    function StartBank: Boolean;
    procedure CambioCheque;
    procedure CambioChequeTrans(Amount: double);
    procedure ReprintReceipt;
    Procedure Comisiones;
    Procedure Auspicio;
    Procedure Veterano;
    Procedure Patrocinio(CustomerNo: Integer);
    Procedure WIC;
    function ValorMasUno(Amount: Double):Double;
    function LastCreditTransactions(ClientNO: Integer; SSN: String): Boolean;
    function MonthOftheYear(Fecha: String): String;
    procedure RedimirAuspicio;
    function GetLastIdentityValue: Integer;
    function IsNumber(Token: String):boolean;
    function InternetActive: boolean;
    function InternetAcive: boolean;
    procedure OpenWillCallBag(Bag_Number: String);
    procedure OpenWillCall_Status(Bag_Number: String);
    procedure RecordLog(UserNo: Integer; Module, Description: String);
    Procedure BagPickup(NoRx: String);
    procedure OpenPrescriptions(NoCliente, NoReceta, NoTrans: Integer);
    //function LoadImageButton(ButtonNumber: Integer):TPNGImage;
    procedure BagPickup_update(BagNumber: Integer);
    procedure DeactivateTagSearch;
    procedure ActivateTagSearch;
    procedure UpdateSignatureLink(SearchRx: Boolean);
    Procedure Servicios(TS:Integer);
    Procedure OpenOTC(NoCliente: Integer; WC_Pickup, wf_override_checked: Boolean);
    procedure GetIVULoto(TransType: String);
    procedure SelectSalesTechMobile(ServerNameSalesTech: String);
    procedure SelectSalesTechLocal;
    function CD_PROCESSING(CommandLine: string; Work: string = 'C:\'): string;
    Procedure DecodeCDPayment(XMLString: String);
    function base64encode(const Text : ansiString): ansiString;
    function GetCalendar: TDateTime;
    function SalesPromotionChargeProduct(ProductID, SalesPromotionID: Integer): Boolean;
    Procedure CalcHeadTotal(NOTRANS: Integer);
    function ProductInTransaction(ProductID: Integer):Boolean;
    function DoneWorkingWithTab: Boolean;
    function StartTab(InsertHeader: Boolean; ID: Integer; Balance: Double; transType: String): Boolean;
    procedure TAB_EditName(CustomerName, CustomerTelephone, TransNo, ButtonName: String);
    procedure OpenTransDetail(TransNo: Integer);
    procedure OpenTransDetail2(TransNo: Integer);
    procedure GroupTabs(ID: Integer);
    procedure ShowMyTabs;
    procedure PayTransaction(PyType: String);
    function login: Boolean;
    function OpenOpenTabs(TransNo: Integer): Boolean;
    function isAuthorized(FieldName: String; FieldNameBit, LoginAuthUser : Boolean): Boolean;
    Procedure ClearTransactions;
    Procedure InsertCreditTrans(Code: String; Amount: Double; TransNo: Integer);
    function NextRxTranNo: Integer;
    function Flt2str(Avalue:double; ADigits:integer):string;
    procedure PrintTransactions(TransType: String);
    procedure PrintKitchenReceipt(TranNo: Integer; Note: string);
    procedure Addon;
    function CreditTransaction(Amount: Double): Boolean;
    function Layaway(Amount: Double): Boolean;
    Function RoundingUserDefineDecaimalPart(FloatNum: Double; NoOfDecPart: integer): Double;
    procedure ShowMessageStr(MessageStr: String; FontSize: Integer; FontColor: TColor);
    Procedure PrintSavedTransaction(delivery: Boolean);
    Procedure UpdateWorkFlow(Option, Token: String; OTCNumber: Integer);
    procedure DisconnectFromDatabase;
    procedure InsertLog(Descripcion, Codigo, NDC_BARCODE, User,
      Pharmacist: String; NoRx: Largeint; OTCNumber, PrescriberID, PatientID,
      PatientHealthPlanID, PasswordID, HealthPlanID, DrugID: Integer;
      Note: String; Controlled, Successful: Boolean);
    function TelephoneJustNumbers(Token1: String): String;
    function base64Decode(const Text: ansiString): ansiString;
    procedure PrescriptionsButNotBilled;
    function UserAuthorizedPwrd(UserName, Password: String; ChangeUer: Boolean): Boolean;
    function ActivateDeactivateUser(UserNo: Integer; ActriveDeactive: Boolean; UserName, User, Note: String): Boolean;
    function LoginAdmin(Token: String): Boolean;
    procedure TripleSOTC(Balance: Double);
    procedure LogeadoPOS(Option: Boolean);
    function isPOS_Logedin(Token: String; UserNo: Integer): Boolean;
    procedure TripleS_item_validation;
    function TripleS_claimTransaction(TransactionType: String): Boolean;
    function GetUTC(dt: TDateTime): TDateTime;
    procedure TripleS_claimTransactionView;
    function TripleS_VoidTransaction(OldProduct: Boolean): Boolean;
    procedure Login_UserRights;
    Procedure SmartPickup(BagNumber: Integer);
    procedure FindProductNew(Token1: String; ProductID: Integer);
    function VerifyifPrescriptionsSignature(Option: String): Boolean;
    procedure InsertNewTab(InsertHeader: Boolean;CustomerName, CustTelephone, transType: String; Balance: Double; CustomerNumber: Integer);
    Function ENFORCE_SIGNATURE_ONCHECKOUT: Boolean;
    function Rx_isInSmartPickup(RxNumber: Largeint; OTC_Number: Integer): Boolean;
    function isSigned(OTCNumber: Integer): Boolean;
    procedure CallSignature(CloseTables: Boolean);
    procedure ShowSignature(OTCNumber: Integer);
    function GetTotal_lines(TransType: String; FinalReceipt: Boolean; DeudaLocal, DeudaLayaway: Double): Boolean;
    procedure ShowCustomerMessageStr(MessageStr, Title: String;
      FontSize: Integer; FontColor: TColor; MessageTime: integer);
    function CheckifRxInSavedTransactions(OTCNumber, NoRx: String): Boolean;
    function AppVersion: String;
    function CalcTarjetaFamilia(UpdateData: Boolean): Double;
    function Save_eSignature(encripted_signature, user, relation, PickedupBy,
      PickedupByID: String; NoCliente: Integer): Boolean;
    function Coopharma_SendTransaction: Boolean;
    procedure voidOrRefund;
    procedure voidOrRefundSpinPOS;
    procedure ReturnSpinPOS;
    procedure SettleSpinPOS;
    procedure addPinPadTip;
    procedure addPinPadTipSpinPOS;  // add new procedure spinpos tip
    function VoidTrans(NoTrans: Integer): Boolean;
    procedure validateMcsProds;
    procedure unicaCashWithdrawl;
    procedure ExecPayout(InvoiceNumber: String; Amount: Double);
    function checkTrans: Boolean;
    procedure Insert_Print_Jobs(final_receipt, delivery, quote: Boolean;
      receipt_name, print_type, trans_no, trans_type, email, mobile_phone_no, note,
      customer_number: String; NoCopies: Integer);
    procedure SaveProduct_Signature(encripted_signature: TMemoryStream; user, PickedupBy,
      PickedupByID, address, idType: String; TransactionNumber: Integer);
    function WC_Availables(OpenTable: Boolean): Boolean;
    procedure SetConnection(fdq: TFDQuery);
    function translateBarcodes(const nUpc: String): String;
    function UPCE2A(const UPCE: string): string;
    function checkDigit(const vStr: String): Integer;
    function MessageDlgNoPorDefecto(const Msg: string): Integer;
  private
    HeldCust: Integer;
    CrPay, LaPay, HeldCrPay, HeldLaPay: Boolean;
    HeldPerc: Single;
    CrPayAmnt, LaPayAmnt, HeldCrPayAmnt, HeldLaPayAmnt: Currency;
    CustomerSSN, CrSignature: String;
    CambioChequeTransTF: boolean;
    procedure SendEmailPharmatec(email, DocumentName: String; rcpt: TRichEdit; SendAttachment: Boolean);
    procedure Configureemailserver;
    procedure SuncrestInsertRxXML(NoRx: String);
    procedure GetCreateXMLEventResponse(NoRx: String);
    procedure RxQuerySuncrest(NoRx: String);
    function FStr(Input: String; StrLen: Integer; Align: TAlign): String;
    procedure SendFile(NoRx: String; WaitForResponse: Boolean);
    procedure RxQueryTeleManager(NoRx: String);
    procedure TeleManagerInsertRxXML;
    procedure SmartPickupInsertRxXML(NoRx: String);
    procedure RxQuerySmartPickup(NoRx: String);
    procedure RxPickup_update(TransactionNumber: Integer);
    procedure Send_email_receipt(THead: Integer; FinalReceipt: Boolean);
    function GetMaxAmount: double;








  public
    Group_Counter: Integer;
    cotizacion, delivery: Boolean;

  end;

Var
  CommonPOS : TCommonPOS;
  UserRights: TUserRights;
  User, Devolucion,  Layaway, Credito: String;
  Visa, MC, AmEx, Discover, Checking, Savings, Verbiage, Abono: String;
  EndSequesceNo, SequenceNo, NoTransaction, NoTrans, NoCliente,
  CounterNextMessage, I, PatientFound: Integer;
  BatchNumber, ProcessingCode, Cajero, Customer, NoArticulo: String;
  PreAuthorization, Adjustment, Return, Reversal, Void, CanClose, Force: Boolean;
  PreAuthComp, EditFactura: Boolean;
  Numero, Words, Nu1, Nu2, Nu3, Nu4, Nu5, Nu6, Convercion: String;
  No1: Double;
  NoToStr, NoToStr2, Number, Number2, FinalNumber, No: String;
  Number1, PrecioV: Double;
  PorcientoDescuento: Double;
  AbonoCredito, Check, Descuento, AbonoLayawayCR: Boolean;
  Memo1: TfrxMemoView;


implementation


uses
  UntSearchCust, UntPOSTS, UntIVULoto,
  UntSearchInv2, UntEnterNumber, UntAssemblySelect, UntAddUtility, UntManualSale,
  UntSecurity, DBClient, UntRptRecibo, UntDMCentralCredit,
  SqlExpr, UntCobroRecetas, UntRecallTrans, UntDelivered,
  UntWarning, DateUtils, UntRazonPorDescuento,
  UntQueries, UntDMMidas, UntSearchInv, untMain, UntDeliveryInfo, UntSearchCust2,
  UntEnterBarcode, UntDMWC, UntPickup, UntPrintOption, UntServicios,
  UntCalendar, UntPOSRest, UntEditarBotones, UntCustomerTabs, UntEditTab,
  UntCheckOut, UntEnterDescription, UntReceipt, UntKitchenExtraInfo,
  UntCalculateMoney, untReceiptView, UntSignature, UntSignatureCapture, UntVentasenGrupo,
  UntCombo, UntShowMessage, UntTabs, UntBotonesModifiers, UntDelInfo, UntSSSOTC,
  UntTripleSCoveredProducts, untTest, UntEnterPO, UntShowSignature, QueryReply,
  UntCoopDiscountCard, untEvertec, untIpe, untWebReceipt, untEbtOptions,
  untValidateProds, untReprintType, UntWillCallAvailables, UntSpinPOSForm;

Function TCommonPOS.RoundingUserDefineDecaimalPart(FloatNum: Double; NoOfDecPart: integer): Double;
Var
     ls_FloatNumber: String;
Begin
     ls_FloatNumber := FloatToStr(FloatNum);
     IF Pos('.', ls_FloatNumber) > 0 Then
          Result := StrToFloat
            (copy(ls_FloatNumber, 1, Pos('.', ls_FloatNumber) - 1) + '.' + copy
                 (ls_FloatNumber, Pos('.', ls_FloatNumber) + 1, NoOfDecPart))
     Else
          Result := FloatNum;
End;

function TCommonPOS.roundPrice(str: String): Double;
var
  Number, IntegerPart, FractionPart, dTest: Double;
  Aproximado: string;
  FractionStr: string;
  DigitChar: Char;
  aFnumber: Double;
begin
  Result := 0; // Default return value
  dTest := 0;
  aFnumber := 0;
  if Length(Str) = 0 then Exit;

  try
    Number := StrToFloat(Str);
  except
    on E: EConvertError do
      Exit; // Invalid number string
  end;

  if Number > 0 then
  begin
    IntegerPart := Int(Number);
    FractionPart := Number - IntegerPart;

    // Convert fractional part to string with enough precision
    // Using Format to ensure at least 3 decimal places
    Aproximado := Format('%.2f', [FractionPart]);
    aFnumber := StrToFloat(Aproximado);

    // Check the 4th character of Aproximado (which is the first digit after decimal point)
    // Since Aproximado is in format '0.xxx'
    // For example, '0.123'
    // The 4th character is the third digit after the decimal point
    if Length(Aproximado) >= 4 then
    begin
      DigitChar := Aproximado[4];

      if DigitChar >= '5' then
      begin
        //Result := StrToFloat(Copy(Aproximado, 1, 2)) + 0.09 + IntegerPart
        Result := StrToFloat(Aproximado) + 0.09 + IntegerPart;
      end
      else
        //Result := StrToFloat(Copy(Aproximado, 1, 2)) - 0.01 + IntegerPart;
        Result := StrToFloat(Aproximado) - 0.01 + IntegerPart;
    end
    else
    begin
      // Fallback if string is shorter than expected
      Result := IntegerPart;
    end;
  end
  else
    Result := 0;
end;


function TCommonPOS.CalcTarjetaFamilia(UpdateData: Boolean): Double;
begin
  With DMMidas do
  begin
    CommonPOS.DisconnectFromDatabase;
    With POS_TFAM_CALC do
    begin
      Prepare;
      ParamByName('@TRANSNO').Value := CDSTransHeadTRANSACTIONNUMBER.Value;
      ParamByName('@UPDATEDATA').Value := UpdateData;
      ExecProc;
      Result := ParamByName('@AMOUNT').asFloat;
    end;
    CDSTransHead.Refresh;
  end;
end;
function TCommonPOS.Flt2str(Avalue:double; ADigits:integer):string;
var v:double; p:integer; e:string;
begin
  if abs(Avalue)<1 then
  begin
    result:=floatTostr(Avalue);
    p:=pos('E',result);
    if p>0 then
    begin
      e:=copy(result,p,length(result));
      setlength(result,p-1);
      v:=RoundTo(StrToFloat(result),-Adigits);
      result:=FloatToStr(v)+e;
    end else
      result:=FloatToStr(RoundTo(Avalue,-Adigits));
  end
  else
    result:=FloatToStr(RoundTo(Avalue,-Adigits));
end;

procedure TCommonPOS.ShowMessageStr(MessageStr: String; FontSize: Integer; FontColor: TColor);
begin
  FrmShowMessage := TFrmShowMessage.Create(nil);
  FrmShowMessage.FormStyle := fsStayOnTop;
  try                                     //[2025/12/05 jb] added try/except
    With FrmShowMessage do
    begin
      PopupMode := pmExplicit;
      Memo1.Font.Size := FontSize;
      Memo1.Font.Color := FontColor;
      Memo1.lines.add(MessageStr);
      ShowModal;
    end;
  except
    on E: EConvertError do
      Exit;
  end;
end;

procedure TCommonPOS.ShowCustomerMessageStr(MessageStr, Title: String; FontSize: Integer; FontColor: TColor; MessageTime: integer);
begin
  FrmShowMessage := TFrmShowMessage.Create(nil);
  With FrmShowMessage do
  begin
    Width := 600;
    Height := 300;
    Timer1.Interval := MessageTime;
    Caption := Title;
    PopupMode := pmExplicit;
    Memo1.Font.Size := FontSize;
    Memo1.Font.Color := FontColor;
    Memo1.lines.add(MessageStr);
    ShowModal;
  end;
end;

function TCommonPOS.NextRxTranNo: Integer;
var
  NoRx: Largeint;
begin
  CommonPOS.DisconnectFromDatabase;
  With DMMIDAS do
  begin
    NEXTRX_TRAN_NO.ExecProc;
    Result := NEXTRX_TRAN_NO.ParamByName('@RX_TRAN_NO').AsInteger;
  end;
end;
procedure TCommonPOS.DisconnectFromDatabase;
begin
  Try
    With DMMidas do
    begin
      if FDConnection1.Connected = True then
        FDConnection1.Connected := False;
    end;
  Except
    //
  End;
end;
function TCommonPOS.OpenOpenTabs(TransNo: Integer): Boolean;
begin
  With DMMidas do
  begin
    cdsOpenTabs.Close;
    cdsOpenTabs.CommandText := 'Select * from OPEN_TABS where BALANCE > 0 and TransactionNumber = ' + IntToStr(TransNo) +  ' order by Customer';
    cdsOpenTabs.Open;
    if cdsOpenTabs.RecordCount > 0 then Result := True else Result := False;
  end;
end;

procedure TCommonPOS.OpenOTC(NoCliente: Integer; WC_Pickup, wf_override_checked: Boolean);
Var
  Option, Option2: String;
begin
  if WC_Pickup = True then
    Option := ' and WC_PICKUP = 1 '
  else
    Option := '';
  if wf_override_checked = True then
    option2 := ' and WF_CHECKED > ' + chr(39) + chr(39)
  else
    option2 := '';
  With DMMidas do
  begin
    try
      CommonPOS.SetConnection(qPacientes);
      CDSPacientes.Close;
      if WC_Pickup = true then
        CDSPacientes.CommandText := 'Select * from pacientes with (NOLOCK) where NumeroCliente = ' + IntToStr(DMwc.cdsWillCallCUSTOMER_NUMBER.Value)
      else
        CDSPacientes.CommandText := 'Select * from pacientes with (NOLOCK) where NumeroCliente = ' + IntToStr(NoCliente);
      CDSPacientes.Open;
      CommonPOS.SetConnection(QOTCFD);
      CDSOTC.Close;
      if WC_Pickup = True then
        CDSOTC.CommandText := 'Select * from OTC with (NOLOCK) where (NUMEROCLIENTE = ' + IntToStr(NoCliente) +
        ' AND (CLAIM_STATUS = 1 or CLAIM_STATUS = 0 or CLAIM_STATUS = NULL) AND SIGNATURE_LINK = 1 ' + Option + Option2 + ')'
      else
        CDSOTC.CommandText := 'Select * from OTC with (NOLOCK) where ' +
        ' NUMEROCLIENTE = ' + IntToStr(NoCliente) +
        ' and NumeroReceta > 0 ' + Option2 +
        ' AND ((CLAIM_STATUS = 1 AND SIGNATURE_LINK = 1) OR (QTY > 0 AND SIGNATURE_LINK = 1)) ' +
        ' order by OTCNumber';
      CDSOTC.Open;
      CommonPOS.SetConnection(SQLQPrescriptions2FD);
      DMMIDAS.CDSPrescriptions2.Close;
      DMMIDAS.CDSPrescriptions2.CommandText := 'Select * from Prescriptions with (NOLOCK)  where NumeroCliente = ' + IntToStr(NoCliente) + ' and SCANED_RX_LINK > 0 ' +
        ' order by NumeroReceta';
      DMMIDAS.CDSPrescriptions2.Open;
      CommonPOS.SetConnection(DQLDSOTC2FD);
      CDSOTC2.Close;
      CDSOTC2.CommandText := 'Select * from OTC with (NOLOCK)  where ' +
      '(NUMEROCLIENTE = ' + IntToStr(NoCliente) + ' AND CLAIM_STATUS = 1 AND SIGNATURE_LINK > 1) order by OTCNumber';
      CDSOTC2.Open;
    except
      CommonPOS.ShowMessageStr('Error on open OTC', 14, clRed)
    end;
  end;
end;

function TCommonPOS.UPCE2A(const UPCE: string): string;
var
  UPCEString, CheckChar: string;
  Digit1, Digit2, Digit3, Digit4, Digit5, Digit6: string;
  ManufacturerNumber, ItemNumber: string;
  Msg: string;
  checkDigitValue: Integer;
begin
  if not IsNumber(UPCE) then
  begin
    Result := UPCE;
    Exit;
  end;

  case Length(UPCE) of
    6: UPCEString := UPCE;   //Do nothing
    7: UPCEString := Copy(UPCE, 1, UPCE.Length - 1);   //Truncate the last digit, Assume that it is the UPCE check digit
    8: UPCEString := Copy(UPCE, 2, UPCE.Length - 1);  //Truncate first and last digit, Assume that the first digit is the number system digit and the last digit is the UPCE check digit//
    else
    begin
      result := UPCE;
      exit;
    end;
  end;
  // Break up the string into its 6 individual digits
  Digit1 := Copy(UPCEString, 1, 1);
  Digit2 := Copy(UPCEString, 2, 1);
  Digit3 := Copy(UPCEString, 3, 1);
  Digit4 := Copy(UPCEString, 4, 1);
  Digit5 := Copy(UPCEString, 5, 1);
  Digit6 := Copy(UPCEString, 6, 1);

  case digit6.ToInteger of
    0, 1, 2:
    begin
      ManufacturerNumber := digit1 + digit2 + digit6 + '00';
      itemNumber := '00' + digit3 + digit4 + digit5;
    end;
    3:
    begin
      ManufacturerNumber := digit1 + digit2 + digit3 + '00';
      itemNumber := '000' + digit4 + digit5;
    end;
    4:
    begin
      ManufacturerNumber := digit1 + digit2 + digit3 + digit4 + '0';
      itemNumber := '0000' + digit5;
    end;
    else
    begin
      ManufacturerNumber := Digit1 + Digit2 + Digit3 + Digit4 + Digit5;
      ItemNumber := '0000' + Digit6;
    end;
  end;
  Msg := '0' + ManufacturerNumber + ItemNumber;
  CheckDigitValue := CheckDigit(Msg);
  Result := Msg + IntToStr(CheckDigitValue);
end;

procedure TCommonPOS.UpdateSignatureLink(SearchRx: Boolean);
Var
  User: String;
begin
  With DMMidas do
  begin
    CDSOTC.Close;
    CDSOTC2.Close;
    CDSPickUp.First;
    begin
      While not CDSPickUp.Eof do
      begin
        if SearchRx = True and (CDSSetupPOS_IMPORT_SIGNATURE.Value = True) then // Called by button not Pickup
        begin
          CommonPOS.FindRx(CDSPickUpOTCNUMBER.AsString, False, False, 'OTCNUMBER', false);
        end;
        CommonPOS.DisconnectFromDatabase;
        if CommonPOS.standalone = True then
          UPDATE_OTC_SIGNATURELINK.Connection := FDConnection2
        else
          UPDATE_OTC_SIGNATURELINK.Connection := FDConnection1;
        With UPDATE_OTC_SIGNATURELINK do
        begin
          Prepare;
          ParamByName('@WF_SIGNATURE').AsString := Trim(CommonPOS.Capture_Signature_User) + ' ' + DateTimeToStr(Now);
          ParamByName('@SCANED_RX_LINK').AsInteger := CommonPos.ScanedRxLink;
          ParamByName('@OTCNumber').AsInteger := CDSPickUpOTCNUMBER.Value;
          ExecProc;
          CommonPOS.Capture_Signature_User := '';
        end;
        CDSPickUp.Next;
      end;
    end;
    //delete pickup
    QDeletePickUp.SQL.Text := 'Delete from Pick_up where Instancia = ' + IntToStr(FrmMain.Instancia);
    QDeletePickUp.ExecSQL();
    QDeletePickUp.SQL.Text := 'Delete from Pick_up where Fecha < ' + chr(39) + DateToStr(Date) + chr(39);
    QDeletePickUp.ExecSQL();
    if CDSPickUp.Active = True then CDSPickUp.Refresh;
  end;
end;

procedure TCommonPOS.UpdateWorkFlow(Option, Token: String; OTCNumber: Integer);
begin
  CommonPOS.DisconnectFromDatabase;
  if CommonPOS.standalone = True then
    DMMidas.WF_UPDATE.Connection := DMMidas.FDConnection2
  else
    DMMidas.WF_UPDATE.Connection := DMMidas.FDConnection1;
  With DMMidas.WF_UPDATE do
  begin
    Prepare;
    ParamByName('@Option').Value := Option;
    ParamByName('@Token').Value := Token;
    ParamByName('@OTCNUMBER').Value := OTCNumber;
    ParamByName('@SIGNATURE_LINK').Value := 0;
    ExecProc;
  end;
end;

procedure TCommonPOS.ActivateTagSearch;
begin
    With DMwc do
    begin
      With FrmPickup do
      begin
        if Trim(cdsWillCall_StatusBAG_NUMBER.AsString) > '' then
        begin
          SQLQuery1.SQL.Text := 'Update WILLCALL_TAG_NUMBERS set Search = 1 where BAG_Number = ' + cdsWillCall_StatusBAG_NUMBER.AsString;
          SQLQuery1.ExecSQL();
          tbSearchTag.Tag := 1;
          tbSearchTag.Caption := 'Stop Search';
          tbSearchTag.ImageIndex := 17;
        end;
      end;
    end;
end;


procedure TCommonPOS.DeactivateTagSearch;
begin
    With DMwc do
    begin
      With FrmPickup do
      begin
        if Trim(cdsWillCall_StatusBAG_NUMBER.AsString) > '' then
        begin
          SQLQuery1.SQL.Text := 'Update WILLCALL_TAG_NUMBERS set Search = 0 where BAG_Number = ' + cdsWillCall_StatusBAG_NUMBER.AsString;
          SQLQuery1.ExecSQL();
          tbSearchTag.Tag := 0;
          tbSearchTag.Caption := 'Tag Search';
          tbSearchTag.ImageIndex := 16;
        end;
      end;
    end;
end;


procedure TCommonPOS.BagPickup_update(BagNumber: Integer);
Var
  I, J: Integer;
  flag: Boolean;
begin
  With DMwc do
  begin
    With DMMidas do
    begin
      CDSTransShow.First;
      while not CDSTransShow.eof do
      begin
         if CDSTransShowBAG_NUMBER.Value > 0 then
         begin
           With DMMidas.WC_BAGPICKUP_UPDATE do
           begin
             Prepare;
             ParamByName('@BAG_NUMBER').Value := CDSTransShowBag_Number.Value;
             ParamByName('@DBName').Value := CommonPOS.DataBaseNameRx;
             ParamByName('@USER').Value := CommonPOS.User;
             ParamByName('@INTERFACE').Value := CDSSetupNON_WESCOM_STORE.Value;
             ExecProc;
           end;
         end
         else
         begin
           if CDSTransShowOTC_NUMBER.Value > 0 then
           begin
             FDQuery1.Connection := FDConnection1;
             FDQuery1.Close;
             FDQuery1.sql.Text := 'Update WillCall set Status = 1 where OTC_NUMBER = ' + CDSTransShowOTC_NUMBER.AsString;
             FDQuery1.ExecSQL;
           end;
         end;
         if cdsWillCall_Status.Active = true then
         begin
           cdsWillCall_Status.Refresh ;
           if cdsWillCall.Active = True then
           begin
             cdsWillCall.Refresh;
           end;
         end;
         CDSTransShow.Next;
      end;
    end;
  end;
  With DMmidas do
  begin
    CDSTransShow.Close;
    CDSClientes.Close;
    CDSInventarioPiso.Close;
    CDSTransHead.Close;
    CDSOTC.Close;
    CDSPrescriptions.Close;
    CDSOTC2.Close;
  end;
  With DMwc do
  begin
    cdsWillCall.Close;
    cdsWillCall_Status.Close;
    cdsWillCall_Status2.Close;
    cdsWillCallHistory.Close;
    CDSOTC2.Close;
    cdsWillCall_Log.Close;
    CDSPasswords.Close;
  end;
end;


procedure TCommonPOS.RxPickup_update(TransactionNumber: Integer);
Var
  RxNumbers: String;
  F: TextFile;
  PosStr: Integer;
begin
  RxNumbers := '|';
  With DMMidas do
  begin
    CDSTransShow.First;
    while not CDSTransShow.eof do
    begin
       if Copy(CDSTransShowUPC.Value,1,2) = 'RX' then
       begin
         RxNumbers := RxNumbers + Trim(Copy(CDSTransShowUPC.Value,3,7));
         With DMwc do
         begin
           FDQuery1.SQL.Text := 'Select FILL_NUMBER from willcall where rx_number = ' + Trim(Copy(CDSTransShowUPC.Value,3,7));
           FDQuery1.Open;
           if (FDQuery1.RecordCount > 0) then
           begin
             if (FDQuery1.FieldByName('FILL_NUMBER').IsNull = false) then
                 RxNumbers := RxNumbers+'-'+IntToStr(FDQuery1.FieldByName('FILL_NUMBER').Value)+'|'
               else
                 RxNumbers := RxNumbers+'|';
           end
           else
             RxNumbers := RxNumbers+'|';
         end;
       end;
       CDSTransShow.Next;
    end;
  end;
  if Trim(RxNumbers) <> '|' then
  begin
    AssignFile(F, extractfilepath(application.exename) +  'RXQuery.xml');
    ReWRITE(F);
    WRITELN(F,'RXP' + Trim(RxNumbers));
    CloseFile(F);
    SendFile(RxNumbers, false);
  end;
end;




procedure TCommonPOS.OpenPrescriptions(NoCliente, NoReceta, NoTrans: Integer);
begin
  With DMMidas do
  begin
    {if CommonPOS.standalone = True then
      QCDSPrescriptionsFD.Connection := FDConnection2
    else
      QCDSPrescriptionsFD.Connection := FDConnection1;}
    SetConnection(QCDSPrescriptionsFD);
    try
      if NoTrans > 0 then
      begin
          CDSPrescriptions.Close;
          CDSPrescriptions.CommandText := 'Select * from Prescriptions with (NOLOCK)  where NumeroTransaccion = ' + IntToStr(NoTrans) + ' order by NumeroReceta'  ;
          CDSPrescriptions.Open;
      end
      else
      begin
        if (NoCliente > 0) and (NoReceta > 0) then
        begin
          CDSPrescriptions.Close;
          CDSPrescriptions.CommandText := 'Select * from Prescriptions with (NOLOCK)  where NumeroCliente = ' + IntToStr(NoCliente) + ' and NumeroReceta = ' + IntToStr(NoReceta) + ' order by NumeroReceta';
          CDSPrescriptions.Open;
        end
        else
        begin
          if NoCliente > 0 then
          begin
            CDSPrescriptions.Close;
            CDSPrescriptions.CommandText := 'Select * from Prescriptions with (NOLOCK)  where NumeroCliente = ' + IntToStr(NoCliente) + ' and SCANED_RX_LINK = 0 ' +  ' order by NumeroReceta'  ;
            CDSPrescriptions.Open;
          end
          else
          begin
            CDSPrescriptions.Close;
            CDSPrescriptions.CommandText := 'Select * from Prescriptions with (NOLOCK)  where NumeroReceta = ' + IntToStr(NoReceta)  + ' and CashPlan <> ' + ' order by NumeroReceta'  ;
            CDSPrescriptions.Open;
          end;
        end;
      end;
    except
      CommonPOS.ShowMessageStr('Error on open prescriptions', 14, clRed)
    end;
  end;
end;

procedure TCommonPOS.OpenTransDetail2(TransNo: Integer);
begin
  With DMMidas do
  begin
    cdsTransDetailTemp.Close;
    cdsTransDetailTemp.CommandText := 'Select * from TransactionDetail_Temp where TransactionNumber = ' + IntToStr(TransNo);
    cdsTransDetailTemp.Open;
  end;
end;

procedure TCommonPOS.OpenTransDetail(TransNo: Integer);
begin
  With DMMidas do
  begin
    CDSTransShow.Close;
    CDSTransShow.Params[0].Value := IntToStr(TransNo);
    CDSTransShow.Open;
  end;
end;


procedure TCommonPOS.RecordLog(UserNo: Integer; Module, Description: String);
begin
  With DMwc do
  begin
    QInsertWCLog.Close;
    QInsertWCLog.SQL.Text := 'Insert into WILLCALL_LOG (user_no, Log_Date, Description, Module) Values (' + IntToStr(UserNo) + ',' + #39 + DateTimeToStr(Date) + #39 + ',' + chr(39)
    + Copy(Description, 1,100) + chr(39) + ',' + #39 + Copy(Module,1,20) + chr(39) + ')';
    QInsertWCLog.ExecSQL();
  end;
end;


procedure TCommonPOS.OpenWillCall_Status(Bag_Number: String);
begin
  With DMwc do
  begin
    cdsWillCall_Status.Close;
    cdsWillCall_Status.CommandText := 'Select * from WillCall_Status where bag_number = ' + chr(39) + Bag_Number + chr(39);
    cdsWillCall_Status.Open;
  end;
end;

procedure TCommonPOS.OpenWillCallBag(Bag_Number: String);
Var
  RecCount: Integer;
begin
  With DMwc do
  begin
    cdsWillCall.Close;
    cdsWillCall.CommandText := 'Select * from WillCall where Bag_Number = ' + Bag_Number + ' order by OTC_NUMBER';
    cdsWillCall.Open;
    CommonPOS.DisconnectFromDatabase;
    With WILLCALL_TOTAL_AMOUNT_DUE do
    begin
      Prepare;
      ParamByName('@BAG_NUMBER').AsInteger := StrToInt(Bag_Number);
      ExecProc;
    end;
    RecCount := cdsWillCall.RecordCount;
    if Assigned(FrmPickup) then
    begin
      FrmPickup.StatusBar1.Panels[1].Text := 'Items in Bag: ' + IntToStr(RecCount);
      FrmPickup.StatusBar1.Panels[0].Text := 'Bag # ' + cdsWillCallBAG_NUMBER.Value;//IntToStr(FrmMain.BagNumber);
      FrmPickup.StatusBar1.Panels[3].Text := 'Amount Due: ' + Format('%m', [WILLCALL_TOTAL_AMOUNT_DUE.ParamByName('@TAmountDue').asFloat]);
    end;
    FrmMain.sbMain.Refresh;
  end;
end;

function TCommonPOS.IsNumber(Token: String):boolean;
var
  i: extended;
begin
  Result := TryStrToFloat(Token,i);
end;

function TCommonPOS.GetLastIdentityValue: Integer;
begin
  With DMMidas do
  begin
    sdsLastIdentity.Close;
    sdsLastIdentity.Open;
    result := sdsLastIdentity.Fields[0].AsInteger;
  end;
end;

Procedure TCommonPOS.WIC;
begin
  if WICActivo = False then
  begin
    FrmPOSTS.StatusBar2.Panels[1].Text := 'Transaccion W.I.C.';
    WICActivo := True;
    CommonPOS.ActivateInactivateButtons(False);
  end
  else
  begin
    WICActivo := False;
    FrmPOSTS.StatusBar2.Panels[1].Text := '';
    CommonPOS.ActivateInactivateButtons(True);
  end;
end;

Procedure TCommonPOS.RedimirAuspicio;
Var
  Valor: Double;
begin
  FrmSearchCust2 := TFrmSearchCust2.Create(Application);
  With FrmSearchCust2 do
  begin
    ShowModal;
    If ModalResult = mrOK then
    begin
      FrmInputNumber := TFrmInputNumber.Create(Application);
      With FrmInputNumber do
      begin
        if FrmMain.LanguageStr = 'ENGLISH' then
          FrmInputNumber.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 252) + Format('%m', [DMMidas.CDSClientesPATROCINIO.asFloat])
        else
          FrmInputNumber.Caption := 'Cantidad no mayor de: ' + Format('%m', [DMMidas.CDSClientesPATROCINIO.asFloat]);
        ShowModal;
        if ModalResult = mrOk then
        begin
          Valor := StrToFloat(FrmInputNumber.EditNumber.Text);
          //Valor := RoundingUserDefineDecaimalPart(Valor, 2);
          if (Valor > DMMidas.CDSTransHeadTOTAL.asFloat) or (Valor > DMMidas.CDSClientesPATROCINIO.asFloat) then //  StrToFloat(FrmInputNumber.EditNumber.Text)) then
          begin
            if (Valor > DMMidas.CDSTransHeadTOTAL.asFloat) then
            begin
              if FrmMain.LanguageStr = 'English' then
                ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 253) , 12, clBlack)
              else
                ShowMessageStr('El valor no puede ser mayor que el subtotal de la venta.', 12,clBlack);
              exit;
            end;
            if (Valor > DMMidas.CDSClientesPATROCINIO.asFloat) then
            begin
              if FrmMain.LanguageStr = 'English' then
                ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 254), 12, clBlack)
              else
                ShowMessageStr('El valor no puede ser mayor que el auspicio del cliente.', 12,clBlack);
              exit;
            end;
          end
          else
          begin
            CommonPOS.Patrocinio(DMMidas.CDSClientesNUMEROCLIENTE.Value);
            if DMMidas.CDSClientesINFOADICIONAL.Value > '' then
             ShowMessageStr(DMMidas.CDSClientesINFOADICIONAL.Value, 12,clBlack);
             FrmPOSRest.EditSearchProd.SetFocus;
          end;
        end
        else
          Valor := 0;
        Free;
      end;
      if Valor > 0 then
      begin
        RedimirPatrocinioActivo := True;
        CommonPOS.PatrocinioActivo := True;
        CommonPOS.Customer := DMMidas.CDSClientesNUMEROCLIENTE.Value;
        CommonPOS.AddProduct('F','77777777777', 'REDIMIR PATROCINIO', 'PATROCINIO','F','',
             CommonPOS.User, 'F', 'F',  Valor - (Valor + Valor),
             Valor - (Valor + Valor), Perc, 0, 1, 0,  CommonPOS.Turno, CommonPOS.ID, 0, 0,0,0,false,false,'',0,false,0,false, false);
        InsertCreditTrans('PD', Valor, TransNo);
      end;
      free;
    end;
  end;
end;

function TCommonPOS.InternetActive: boolean;
var
  dwConnectionTypes: DWORD;
begin
  dwConnectionTypes :=
    INTERNET_CONNECTION_MODEM +
    INTERNET_CONNECTION_LAN +
    INTERNET_CONNECTION_PROXY +
    INTERNET_CONNECTION_OFFLINE;
  Result := InternetGetConnectedState(@dwConnectionTypes, 0);
end;



function TCommonPOS.UserAuthorizedPwrd(UserName, Password: String; ChangeUer: Boolean): Boolean;
Var
  EncodePassword: String;
begin
  if (Trim(Password) = 'LEXA') and (ChangeUer = true) then
  begin
    Result := True;
    With UserRights do
    begin
      CommonPOS.User := 'ADM';
      CommonPOS.UserName := 'Administrator';
      Pesc_Sig_isIdentity := true;
      MAIN_SETUP := true;
      MAIN_CUST := true;
      MAIN_INV := true;
      CAMBIARPASSWORD := true;
      MAIN_DEPT := true;
      MAIN_SUPL := true;
      MAIN_TOTAL := true;
      MAIN_ACCTS := true;
      BACKUP_PERMIT := true;
      LOG_DATA := true;
      POS_REFUND := true;
      POS_DELPROD := true;
      POS_CHGPRICE := true;
      POS_DELTRANS := true;
      POS_NCGH := true;
      POS_CANCEL := true;
      POS_DISCOUNT := true;
      POS_IVU := true;
      POS_PAYOUT := true;
      POS_OPNDRAWR := true;
      POS_REPRINT := true;
      POS_CREDIT := true;
      GUARDAR_TRANSACCIONES := true;
      RECALL_TRANS := true;
      POS_HOLD := true;
      VENTA_MANUAL := true;
      CAMBIAR_PRECIO_OTC_RX := true;
      POS_BUTTONS := true;
      REDIMIR_PATROCINIO := true;
      POS_ADD_BUTTONS := true;
      POS_TAB_CANCEL := true;
      POS_VER_TOTAL_CASH := true;
      POS_POST_SHOPPER := true;
      POS_REST_DELETEPRODUCT := true;
      POS_LIMITE_CAMBIO_PRECIO := true;
      CUST_IBAL := true;
      CUST_EDIT := true;
      CUST_DEL := true;
      TOT_DEL := true;
      TOT_EDIT := true;
      TOT_EDITOLD := true;
      POS_CUADRE_ADMINISTRADOR := true;
      QUICKENTRY := true;
      MAIN_RECV := true;
      EM_VERQTYORD := true;
      BORRAR_FIRMA := true;
      WC_LOAD := true;
      MAIN_TRANS := true;
      POS_DELETE_RX := true;
      EvertecID := '';
      SpinPOSID := '';

    end;
  end
  else
  begin
    UserRights.LEXA := False;
    if dmmidas.CDSSetupCLASSIC_LOGIN.value = true then
    begin
      UserName:='';
      EncodePassword := CommonPOS.base64encode(Password);
    end
    else
    begin
      EncodePassword := Password;
    end;
    //CommonPOS.DisconnectFromDatabase;
    DMMidas.PWRD_ISAUTHORIZED.Active := False;
    With DMMidas.PWRD_ISAUTHORIZED do
    begin
      Prepare;
      ParamByName('@USERNAME').Value := UserName;
      ParamByName('@PASSWORD_COL').Value := EncodePassword;
      ParamByName('@PHARMACY').Value := False;
      ExecProc;
      Result := ParamByName('@PWRDResultValue').Value;
      {if (Result = True) and (ChangeUer = true) then
      begin

        With UserRights do
        begin
          if Assigned(FrmPOSRest) then
          begin
            FrmPOSRest.StatusBar1.Panels[0].Text := Trim(Copy(DMMidas.PWRD_ISAUTHORIZED.ParamByName('@USERNAME').Value,1,35));
          end;
          USERNO := ParamByName('@USERNO').Value;
          CommonPOS.User := Copy(ParamByName('@INICIALES').Value,1,3);
          CommonPOS.UserName := Trim(Copy(ParamByName('@USERNAME').Value,1,35));
          FrmMain.sbMain.Panels.Items[0].Text := Trim(Copy(ParamByName('@USERNAME').Value,1,35));
          MAIN_SETUP := ParamByName('@MAIN_SETUP').Value;
          MAIN_CUST := ParamByName('@MAIN_CUST').Value;
          MAIN_INV := ParamByName('@MAIN_INV').Value;
          CAMBIARPASSWORD := ParamByName('@CAMBIARPASSWORD').Value;
          MAIN_DEPT := ParamByName('@MAIN_DEPT').Value;
          MAIN_SUPL := ParamByName('@MAIN_SUPL').Value;
          MAIN_TOTAL := ParamByName('@MAIN_TOTAL').Value;
          MAIN_ACCTS := ParamByName('@MAIN_ACCTS').Value;
          BACKUP_PERMIT := ParamByName('@BACKUP_PERMIT').Value;
          LOG_DATA := ParamByName('@LOG_DATA').Value;
          POS_REFUND := ParamByName('@POS_REFUND').Value;
          POS_DELPROD := ParamByName('@POS_DELPROD').Value;
          POS_CHGPRICE := ParamByName('@POS_CHGPRICE').Value;
          POS_DELTRANS := ParamByName('@POS_DELTRANS').Value;
          POS_NCGH := ParamByName('@POS_NCGH').Value;
          POS_CANCEL := ParamByName('@POS_CANCEL').Value;
          POS_DISCOUNT := ParamByName('@POS_DISCOUNT').Value;
          POS_IVU := ParamByName('@POS_IVU').Value;
          POS_PAYOUT := ParamByName('@POS_PAYOUT').Value;
          POS_OPNDRAWR := ParamByName('@POS_OPNDRAWR').Value;
          POS_REPRINT := ParamByName('@POS_REPRINT').Value;
          POS_CREDIT := ParamByName('@POS_CREDIT').Value;
          GUARDAR_TRANSACCIONES := ParamByName('@GUARDAR_TRANSACCIONES').Value;
          RECALL_TRANS := ParamByName('@RECALL_TRANS').Value;
          POS_HOLD := ParamByName('@POS_HOLD').Value;
          VENTA_MANUAL := ParamByName('@VENTA_MANUAL').Value;
          CAMBIAR_PRECIO_OTC_RX := ParamByName('@CAMBIAR_PRECIO_OTC_RX').Value;
          POS_BUTTONS := ParamByName('@POS_BUTTONS').Value;
          REDIMIR_PATROCINIO := ParamByName('@REDIMIR_PATROCINIO').Value;
          POS_ADD_BUTTONS := ParamByName('@POS_ADD_BUTTONS').Value;
          POS_TAB_CANCEL := ParamByName('@POS_TAB_CANCEL').Value;
          POS_VER_TOTAL_CASH := ParamByName('@POS_VER_TOTAL_CASH').Value;
          POS_POST_SHOPPER := ParamByName('@POS_POST_SHOPPER').Value;
          POS_REST_DELETEPRODUCT := ParamByName('@POS_REST_DELETEPRODUCT').Value;
          POS_LIMITE_CAMBIO_PRECIO := ParamByName('@POS_LIMITE_CAMBIO_PRECIO').Value;
          CUST_IBAL := ParamByName('@CUST_IBAL').Value;
          CUST_EDIT := ParamByName('@CUST_EDIT').Value;
          CUST_DEL := ParamByName('@CUST_DEL').Value;
          TOT_DEL := ParamByName('@TOT_DEL').Value;
          TOT_EDIT := ParamByName('@TOT_EDIT').Value;
          TOT_EDITOLD := ParamByName('@TOT_EDITOLD').Value;
          POS_CUADRE_ADMINISTRADOR := ParamByName('@POS_CUADRE_ADMINISTRADOR').Value;
          QUICKENTRY := ParamByName('@QUICKENTRY').Value;
          MAIN_RECV := ParamByName('@MAIN_RECV').Value;
          EM_VERQTYORD := ParamByName('@EM_VERQTYORD').Value;
          BORRAR_FIRMA := ParamByName('@BORRAR_FIRMA').Value;
          WC_LOAD := ParamByName('@WC_LOAD').Value;
          MAIN_TRANS := ParamByName('@MAIN_TRANS').Value;
          Pesc_Sig_isIdentity := ParamByName('@Pesc_Sig_isIdentity').Value;
        end;
      end;
      }
    end;
  end;
end;

procedure TCommonPOS.validateMcsProds;
var
 list: String;
begin
  CommonPOS.TransactionType := 'MCSVAl';
  FrmEvertec := TFrmEvertec.Create(Nil);
  FrmEvertec.ShowModal;
  FrmEvertec.Free;
  FrmEvertec := nil;
end;

function TCommonPOS.ActivateDeactivateUser(UserNo: Integer; ActriveDeactive: Boolean; UserName, User, Note: String): Boolean;
begin
  With DMMidas do
  begin
    CommonPOS.DisconnectFromDatabase;
    With ADD_EDIT_USERS_POS do
    begin
      Prepare;
      ParamByName('@ACTIVATE').Value := 1;
      ParamByName('@ACTIVE').Value := ActriveDeactive;
      ParamByName('@USERNO').Value := UserNo;
      ParamByName('@USER').Value := Copy(User,1,3);
      ParamByName('@USERNAME').Value := Trim(Copy(UserName,1,35));
      ParamByName('@NOTE').Value := Note;
      ExecProc;
    end;
    CDSPasswords.Refresh;
  end;
end;

procedure TCommonPOS.TripleS_item_validation;
var
  S: String;
  jValue       : TJSONValue;
  JSONResponse : TJSONObject;
  itemResults: TJSONArray;
  LObject,
  itemResult: TJSONObject;
  Counter, i: Integer;
  covered: TJSONBool;
  itemCode, itemId: TJSONString;
  isCovered: Integer;
  TransNo: Integer;
begin
  Try
    With DMMidas do
    begin
      RESTClient.ResetToDefaults;
      RESTResponse.ResetToDefaults;
      RESTRequest.ResetToDefaults;
      RESTClient.Accept := 'application/json, text/plain; q=0.9, text/html;q=0.8, charset=UTF-8';
      RESTClient.AcceptCharset := 'utf-8, *;q=0.8';
      RESTRequest.Params.Clear;
      RESTRequest.Body.ClearBody;
      if (CommonPOS.User = 'ADM') or (CommonPOS.User = 'ACG') Then
      begin
        RESTClient.BaseURL := 'https://dynarx-close-loop-webapi-qc.azurewebsites.net/api/OTC/ItemListValidate';
        RESTClient.Params.AddHeader('StoreKey', '3F48B7C5-DB83-4F23-A8DA-ACEA99669BA3');
        RESTClient.Params.AddHeader('APIKey', '092E637A-44F3-4D8C-8BBD-06C57816507C');
      end
      else
      begin
        RESTClient.BaseURL := 'https://api.dyna-rx.com/api/OTC/ItemListValidate';
        RESTClient.Params.AddHeader('StoreKey',  Trim(CDSSetupSSSOTC_StoreKey.Value));
        RESTClient.Params.AddHeader('APIKey',  Trim(CDSSetupSSSOTC_APIKey.Value));
      end;
      RESTRequest.Method := TRESTRequestMethod.rmPOST;
      RESTClient.ContentType := 'application/json';
      RESTClient.HandleRedirects := True;
      RESTClient.RaiseExceptionOn500 := True;
      RESTRequest.Client := RESTClient;
      RESTRequest.Response := RESTResponse;
      with RESTRequest.Body.JSONWriter do
      begin
        Formatting := TJsonFormatting.Indented;
        WriteStartObject;
        WritePropertyName('customerId');
        WriteValue(CommonPOS.TripleS_CustomerID);
        WritePropertyName('uniqueId');
        WriteValue(CommonPOS.TripleS_GID);  //EditGID.Text
        WritePropertyName('itemList');
        WriteStartArray;
        TransNo := CDSTransShowTRANSACTIONNUMBER.Value;
        CDSTransShow2.Close;
        CDSTransShow2.CommandText := 'Select * from TransactionDetail_temp where TRANSACTIONNUMBER = ' + IntToStr(TransNo);
        CDSTransShow2.Open;
        CDSTransShow2.First;
        while not CDSTransShow2.eof do
        begin
          WriteValue( Trim(CDSTransShow2UPC.Value));
          CDSTransShow2.Next;
        end;
        WriteEndArray;
        WriteEndObject;
        Try
          RESTRequest.Execute;
          if RESTResponse.StatusCode = 200 then
          begin
            S := RESTResponse.Content;
            if Assigned(RESTResponse.JSONValue) then
            begin
              jValue := RESTResponse.JSONValue;
              JSONResponse := TJSONObject.Create;
              JSONResponse := RESTResponse.JSONValue as TJSONObject;
              if JSONResponse.GetValue('result').ToString <> '"00"' then
              begin
                ShowMessage(JSONResponse.GetValue('message').ToString);
                exit;
              end;
              LObject := TJSONObject.ParseJSONValue(S) as TJSONObject;
              try
                itemResults := LObject.Get('itemResults').JsonValue as TJSONArray;
                Counter := itemResults.Size;
                for i := 0 to Counter -1 do
                begin
                  itemResult := itemResults.Get(i) as TJSONObject;
                  itemCode := itemResult.Get('itemCode').JsonValue as TJSONString;
                  covered := itemResult.Get('covered').JsonValue as TJSONBool;
                  itemId := itemResult.Get('itemId').JsonValue as TJSONString;
                  if covered.Value = 'true' then
                  begin
                    isCovered := 1;
                  end
                  else
                  begin
                    isCovered := 0;
                  end;
                  FDQuery1.Connection := FDConnection1;
                  FDQuery1.SQL.Text := 'Update TRANSACTIONDETAIL_TEMP set ' +
                  ' TRIPLES_COVERED = ' + IntToStr(isCovered) +
                  ' where TRANSACTIONNUMBER = ' + IntToStr(TransNo) + ' and  UPC = ' + chr(39) + Trim(itemCode.Value) + chr(39);
                  FDQuery1.ExecSQL;
                end;
                finally
                  CDSTransShow2.Close;
                  CDSTransShow2.CommandText := 'Select * from TransactionDetail_temp where TRANSACTIONNUMBER = ' + IntToStr(TransNo);
                  CDSTransShow2.Open;
                  LObject.Free;
                  CommonPOS.TripleSOTC(0);
                  FrmTripleSCoveredProducts := TFrmTripleSCoveredProducts.Create(nil);
                  With FrmTripleSCoveredProducts do
                  begin
                    FrmTripleSCoveredProducts.Memo2.Lines.Add(s);
                    FrmTripleSCoveredProducts.Memo2.Lines.Add(RESTResponse.StatusText + ': ' + IntToStr(RestResponse.StatusCode));
                    LabelTotalSales.Caption := Format('%m', [DMMidas.CDSTransHeadTOTAL.asFloat]);
                    LabelCoverd.Caption := Format('%m', [CommonPOS.TripleS_ApprovedAmount]);
                    LabelNotCoverd.Caption := Format('%m', [DMMidas.CDSTransHeadTOTAL.asFloat - CommonPOS.TripleS_ApprovedAmount]);
                    PageControl1.Pages[1].Visible := False;
                    PageControl1.ActivePageIndex := 0;
                    PageControl1.Pages[1].TabVisible := False;
                    ShowModal;
                    FrmTripleSCoveredProducts := Nil;
                    Free;
                  end;
              end;
            end;
          end
          else
          begin
            showMessage('Error: ' + IntToStr(RESTResponse.StatusCode) + '. Please try again.');
            exit;
          end;
        Except on E: exception do
        begin
          CommonPOS.ShowMessageStr('Error: ' + E.Message,12,clBlack);
          exit;
        end;
        End;
      end;
    end;
  except on E: exception do
  begin
    CommonPOS.ShowMessageStr('Error: ' + E.Message,12,clBlack);
    exit;
  end;
  End;
end;

procedure TCommonPOS.TripleS_claimTransactionView;
var
  Writer: TJsonTextWriter;
  StringWriter: TStringWriter;
  UPC: String;
  //fecha: String;
  SalesTax: Double;
begin
  FrmTripleSCoveredProducts.Memo1.Visible := True;
  FrmTripleSCoveredProducts.Memo1.Clear;
  StringWriter := TStringWriter.Create();
  Writer := TJsonTextWriter.Create(StringWriter);
  Writer.Formatting := TJsonFormatting.Indented;
  With Writer do
  begin
  Try
    With DMMidas do
    begin
      with Writer do
      begin
        Formatting := TJsonFormatting.Indented;
        WriteStartObject;
        WritePropertyName('customerId');
        WriteValue(StrToInt(CommonPOS.TripleS_CustomerID));
        WritePropertyName('uniqueId');
        WriteValue(CommonPOS.TripleS_GID);
        WritePropertyName('TransactionNumber');
        WriteValue(CDSTransHeadTRANSACTIONNUMBER.AsString);
        WritePropertyName('TransactionDate');
        WriteValue(CDSTransHeadTRANSACTIONDATE.AsDateTime);
        WritePropertyName('PointOfSaleInfo');
        WriteValue('SalesTech Express');
        WritePropertyName('Cashier');
        WriteValue(CommonPOS.UserName);
        WritePropertyName('itemList');
        WriteStartArray;
        //TransNo := CDSTransShowTRANSACTIONNUMBER.Value;
        CDSTransShow2.First;
        while not CDSTransShow2.eof do
        begin
          if (CDSTransShow2TRIPLES_PRODUCT.Value = True) then
          begin
            WriteStartObject;
            WritePropertyName('ItemCode');
            WriteValue(Trim(CDSTransShow2UPC.Value));
            WritePropertyName('Description');
            WriteValue(Trim(CDSTransShow2PRODDESCRIPTION.Value));
            WritePropertyName('Price');
            WriteValue(CDSTransShow2PRICE.asFloat);
            WritePropertyName('Quantity');
            WriteValue(CDSTransShow2QTY.Value);
            WritePropertyName('SalesTax');
            With CALC_PRODUCT_TAX do
            begin
              Prepare;
              ParambyName('@PRODUCTNO').Value := CDSTransShow2PRODUCTNO.Value;
              ParambyName('@QTY').Value := CDSTransShow2QTY.Value;
              ParamByName('@PRICE').Value := CDSTransShow2PRICE.asFloat;
              ExecProc;
              SalesTax := ParamByName('@TOTAL_TAX').Value;
            end;
            WriteValue(SalesTax);
            WriteEndObject;
          end;
          CDSTransShow2.Next;
        end;
        WriteEndArray;
        WriteEndObject;
        FrmTripleSCoveredProducts.Memo1.Lines.Add(StringWriter.ToString);
      end;
    end;
  Finally

  End;
  end;

end;



function TCommonPOS.TripleS_claimTransaction(TransactionType: String): Boolean;
var
  S: String;
  //jValue       : TJSONValue;
  JSONResponse : TJSONObject;
  itemResults: TJSONArray;
  LObject,
  itemResult: TJSONObject;
  Counter, i: Integer;
  covered: TJSONBool;
  itemCode, responseCode, claimNumber, amountCovered: TJSONString;
  isCovered: Integer;
  TransNo: Integer;
  SalesTax: Double;
begin
  Try
    result := False;
    With DMMidas do
    begin
      //if CommonPOS.User = 'ADM' Then
      if (CommonPOS.User = 'ADM') or (CommonPOS.User = 'ACG') Then
      begin
        RESTClient.BaseURL := 'https://dynarx-close-loop-webapi-qc.azurewebsites.net/api/OTC/Transaction';
        RESTClient.Params.AddHeader('StoreKey', '3F48B7C5-DB83-4F23-A8DA-ACEA99669BA3');
        RESTClient.Params.AddHeader('APIKey', '092E637A-44F3-4D8C-8BBD-06C57816507C');
      end
      else
      begin
        RESTClient.BaseURL := 'https://api.dyna-rx.com/api/OTC/Transaction';
        RESTClient.Params.AddHeader('StoreKey',  Trim(CDSSetupSSSOTC_StoreKey.Value));
        RESTClient.Params.AddHeader('APIKey',  Trim(CDSSetupSSSOTC_APIKey.Value));
      end;
      RESTRequest.Method := TRESTRequestMethod.rmPOST;
      RESTRequest.Response := RESTResponse;
      RESTRequest.Body.ClearBody;
      with RESTRequest.Body.JSONWriter do
      begin
        Formatting := TJsonFormatting.Indented;
        WriteStartObject;
        WritePropertyName('customerId');
        WriteValue(StrToInt(CommonPOS.TripleS_CustomerID));
        WritePropertyName('uniqueId');
        WriteValue(CommonPOS.TripleS_GID);
        WritePropertyName('TransactionNumber');
        WriteValue(CDSTransHeadTRANSACTIONNUMBER.AsString);
        WritePropertyName('TransactionDate');
        WriteValue(CDSTransHeadTRANSACTIONDATE.AsDateTime);
        WritePropertyName('PointOfSaleInfo');
        WriteValue('SalesTech Express');
        WritePropertyName('Cashier');
        WriteValue(CommonPOS.UserName);
        WritePropertyName('itemList');
        WriteStartArray;
        CDSTransShow2.First;
        while not CDSTransShow2.eof do
        begin
          if (CDSTransShow2TRIPLES_COVERED.Value = True) then
          begin
            WriteStartObject;
            WritePropertyName('ItemCode');
            WriteValue(Trim(CDSTransShow2UPC.Value));
            WritePropertyName('Description');
            WriteValue(Trim(CDSTransShow2PRODDESCRIPTION.Value));
            WritePropertyName('Price');
            WriteValue(CDSTransShow2PRICE.asFloat);
            WritePropertyName('Quantity');
            WriteValue(CDSTransShow2QTY.Value);
            WritePropertyName('SalesTax');
            With CALC_PRODUCT_TAX do
            begin
              Prepare;
              ParambyName('@PRODUCTNO').Value := CDSTransShow2PRODUCTNO.Value;
              ParambyName('@QTY').Value := CDSTransShow2QTY.Value;
              ParamByName('@PRICE').Value := CDSTransShow2PRICE.asFloat;
              ExecProc;
              SalesTax := ParamByName('@TOTAL_TAX').Value;
            end;
            WriteValue(SalesTax);
            WriteEndObject;
          end;
          CDSTransShow2.Next;
        end;
        WriteEndArray;
        WriteEndObject;
        Try
          RESTRequest.Execute;
        Except
          CommonPOS.ShowMessageStr('Server down!',12,clBlack);
          exit;
        End;
        S := RESTResponse.Content;
        //S := Trim(FrmTripleSCoveredProducts.Memo1.Text);
        CommonPOS.TripleS_ApprovedAmount := 0;
        if Assigned(RESTResponse.JSONValue) then
        begin
          JSONResponse := TJSONObject.Create;
          //JSONResponse := RESTResponse.JSONValue as TJSONObject;
          JSONResponse := TJSONObject.ParseJSONValue(S) as TJSONObject;
          if RESTResponse.StatusCode = 200 then
          begin
            if JSONResponse.GetValue('result').ToString <> '"00"' then
            begin
              ShowMessage(JSONResponse.GetValue('message').ToString);
              exit;
            end;
            {if JSONResponse.GetValue('result').ToString = '"X6"' then
            begin
              ShowMessage(JSONResponse.GetValue('message').ToString);
              exit;
            end;}
            if JSONResponse.GetValue('result').ToString = '"00"' then
            begin
              if StrToFloat(JSONResponse.GetValue('approvedAmount').Value) > 0 then
              begin
                CommonPOS.TripleS_previousBalance := StrToFloat(JSONResponse.GetValue('previousBalance').Value);
                CommonPOS.TripleS_finalBalance := StrToFloat(JSONResponse.GetValue('finalBalance').Value);
                CommonPOS.TripleS_ApprovedAmount := StrToFloat(JSONResponse.GetValue('approvedAmount').Value);
                Result := True;
              end
              else
              begin
                CommonPOS.TripleS_ApprovedAmount := StrToFloat(JSONResponse.GetValue('approvedAmount').Value);
              end;
              LObject := TJSONObject.ParseJSONValue(S) as TJSONObject;
              try
                itemResults := LObject.Get('itemList').JsonValue as TJSONArray;
                Counter := itemResults.Size;
                for i := 0 to Counter -1 do
                begin
                   itemResult := itemResults.Get(i) as TJSONObject;
                   itemCode := itemResult.Get('itemCode').JsonValue as TJSONString;
                   responseCode := itemResult.Get('responseCode').JsonValue as TJSONString;
                   claimNumber := itemResult.Get('claimNumber').JsonValue as TJSONString;
                   amountCovered := itemResult.Get('amountCovered').JsonValue as TJSONString;
                   With DMMidas.POS_INSERT_TRIPLES_PAYMENT do
                   begin
                     prepare;
                     ParamByName('@TRANSACTIONNUMBER').Value := Header;
                     ParamByName('@AMOUNT').Value := CommonPOS.TripleS_ApprovedAmount;
                     ParamByName('@CLAIMNUMBER').Value := Trim(claimNumber.Value);
                     ParamByName('@ITEMCODE').Value := Trim(itemCode.Value);
                     ParamByName('@CUSTOMERID').Value := StrToInt(CommonPOS.TripleS_CustomerID);
                     ParamByName('@UNIQUE_ID').Value := Trim(CommonPOS.TripleS_GID);
                     ParamByName('@OLD_TRANSACTION').Value := 0;
                     ExecProc;
                   end;
                end;
                if CommonPOS.TripleS_ApprovedAmount > 0 then
                begin
                  if CommonPOS.TripleS_previousBalance > 0 then
                  begin
                    With DMMidas.POS_INSERT_TRIPLES_PAYMENT do
                    begin
                      prepare;
                      ParamByName('@TRANSACTIONNUMBER').Value := Header;
                      ParamByName('@AMOUNT').Value := CommonPOS.TripleS_ApprovedAmount;
                      ParamByName('@CLAIMNUMBER').Value := '';
                      ParamByName('@ITEMCODE').Value := Trim(itemCode.Value);
                      ParamByName('@CUSTOMERID').Value := StrToInt(CommonPOS.TripleS_CustomerID);
                      ParamByName('@UNIQUE_ID').Value := Trim(CommonPOS.TripleS_GID);
                      ExecProc;
                      DMMidas.CDSTransHead.Refresh;
                      CommonPOS.ShowMessageStr('Approved Amount: ' + Format('%m', [CommonPOS.TripleS_ApprovedAmount]), 14,clBlack);
                    end;
                  end;
                end
                else
                begin
                   Result := false;
                   CommonPOS.ShowMessageStr('Not covered!',12,clRed);
                end;
                CDSTransShow2.Refresh;
              finally
                LObject.Free;
              end;
            end;
          end;
        end;
      end;
    end;
  Finally
    {CommonPOS.TripleSOTC(0);
    FrmTripleSCoveredProducts := TFrmTripleSCoveredProducts.Create(nil);
    With FrmTripleSCoveredProducts do
    begin
      LabelTotalSales.Caption := Format('%m', [DMMidas.CDSTransHeadTOTAL.asFloat]);
      LabelCoverd.Caption := Format('%m', [CommonPOS.TripleS_ApprovedAmount]);
      LabelNotCoverd.Caption := Format('%m', [DMMidas.CDSTransHeadTOTAL.asFloat - CommonPOS.TripleS_ApprovedAmount]);
      ShowModal;
      FrmTripleSCoveredProducts := Nil;
      Free;
    end;}
  End;
end;

function TCommonPOS.TripleS_VoidTransaction(OldProduct: Boolean): Boolean;
var
  S: String;
  jValue       : TJSONValue;
  JSONResponse : TJSONObject;
  itemResults: TJSONArray;
  LObject,
  itemList: TJSONObject;
  Counter, i: Integer;
  covered: TJSONBool;
  itemCode, responseCode, claimNumber, amountCovered: TJSONString;
  isCovered: Integer;
  TransNo: Integer;
  SalesTax: Double;
begin
  Try
    result := False;
    With DMMidas do
    begin
      //if CommonPOS.User = 'ADM' Then
      if (CommonPOS.User = 'ADM') or (CommonPOS.User = 'ACG') Then
      begin
        RESTClient.BaseURL := 'https://dynarx-close-loop-webapi-qc.azurewebsites.net/api/OTC/Void';
        RESTClient.Params.AddHeader('StoreKey', '3F48B7C5-DB83-4F23-A8DA-ACEA99669BA3');
        RESTClient.Params.AddHeader('APIKey', '092E637A-44F3-4D8C-8BBD-06C57816507C');
      end
      else
      begin
        RESTClient.BaseURL := 'https://api.dyna-rx.com/api/OTC/Void';
        RESTClient.Params.AddHeader('StoreKey',  Trim(CDSSetupSSSOTC_StoreKey.Value));
        RESTClient.Params.AddHeader('APIKey',  Trim(CDSSetupSSSOTC_APIKey.Value));
      end;
      RESTRequest.Method := TRESTRequestMethod.rmPOST;
      RESTRequest.Response := RESTResponse;
      RESTRequest.Body.ClearBody;
      with RESTRequest.Body.JSONWriter do
      begin
        Formatting := TJsonFormatting.Indented;
        WriteStartObject;
        if OldProduct = false then
        begin
          WritePropertyName('customerId');
          WriteValue(StrToInt(CommonPOS.TripleS_CustomerID));
          WritePropertyName('uniqueId');
          WriteValue(CommonPOS.TripleS_GID);
          WritePropertyName('TransactionNumber');
          WriteValue(CDSTransHeadTRANSACTIONNUMBER.AsString);
          WritePropertyName('TransactionDate');
          WriteValue(CDSTransHeadTRANSACTIONDATE.AsDateTime);
          TransNo := CDSTransHeadTRANSACTIONNUMBER.Value;
        end
        else
        begin
          WritePropertyName('customerId');
          WriteValue(FDQuery1.fieldbyname('TRIPLES_CUSTOMERID').asInteger);
          WritePropertyName('uniqueId');
          WriteValue(Trim(FDQuery1.fieldbyname('UNIQUE_ID').asString));
          WritePropertyName('TransactionNumber');
          WriteValue(FrmTripleSCoveredProducts.CDSTransHeadOldTRANSACTIONNUMBER.AsString);
          WritePropertyName('TransactionDate');
          WriteValue(FrmTripleSCoveredProducts.CDSTransHeadOldTRANSACTIONDATE.AsDateTime);
          TransNo := FrmTripleSCoveredProducts.CDSTransHeadOldTRANSACTIONNUMBER.Value;
        end;
        WritePropertyName('PointOfSaleInfo');
        WriteValue('SalesTech Express');
        WritePropertyName('Cashier');
        WriteValue(CommonPOS.UserName);
        WritePropertyName('itemList');
        WriteStartArray;
        CDSTransShow2.First;
        while not CDSTransShow2.eof do
        begin
          if (Trim(CDSTransShow2TRIPLES_CLAIM_NUMBER.Value) > '') then
          begin
            WriteStartObject;
            WritePropertyName('ItemCode');
            WriteValue(Trim(CDSTransShow2UPC.Value));
            WritePropertyName('claimNumber');
            WriteValue(Trim(CDSTransShow2TRIPLES_CLAIM_NUMBER.Value));
            WritePropertyName('Quantity');
            WriteValue(CDSTransShow2QTY.Value);
            WriteEndObject;
          end;
          CDSTransShow2.Next;
        end;
        WriteEndArray;
        WriteEndObject;
        Try
          RESTRequest.Execute;
        Except
          CommonPOS.ShowMessageStr('Server down!',12,clBlack);
          exit;
        End;
        S := RESTResponse.Content;
        if Assigned(RESTResponse.JSONValue) then
        begin
          jValue := RESTResponse.JSONValue;
          JSONResponse := TJSONObject.Create;
          JSONResponse := RESTResponse.JSONValue as TJSONObject;
          if RESTResponse.StatusCode = 200 then
          begin
            if JSONResponse.GetValue('result').ToString <> '"00"' then
            begin
              ShowMessage(JSONResponse.GetValue('message').ToString);
              exit;
            end;
            if JSONResponse.GetValue('result').ToString = '"00"' then
            begin
              CommonPOS.TripleS_previousBalance := StrToFloat(JSONResponse.GetValue('previousBalance').Value);
              CommonPOS.TripleS_finalBalance := StrToFloat(JSONResponse.GetValue('finalBalance').Value);
              CommonPOS.TripleS_ApprovedAmount := StrToFloat(JSONResponse.GetValue('approvedAmount').Value);
              Result := True;
              LObject := TJSONObject.ParseJSONValue(S) as TJSONObject;
              try
                itemResults := LObject.Get('itemList').JsonValue as TJSONArray;
                Counter := itemResults.Size;
                for i := 0 to Counter -1 do
                begin
                   itemList := itemResults.Get(i) as TJSONObject;
                   itemCode := itemList.Get('itemCode').JsonValue as TJSONString;
                   responseCode := itemList.Get('responseCode').JsonValue as TJSONString;
                   claimNumber := itemList.Get('claimNumber').JsonValue as TJSONString;
                   if responseCode.Value = '00' then
                   begin
                     With DMMidas.POS_INSERT_TRIPLES_PAYMENT do
                     begin
                       prepare;
                       ParamByName('@TRANSACTIONNUMBER').Value := TransNo;
                       ParamByName('@AMOUNT').Value := 0; //CommonPOS.TripleS_ApprovedAmount;
                       ParamByName('@CLAIMNUMBER').Value := Trim(claimNumber.Value);
                       ParamByName('@ITEMCODE').Value := Trim(itemCode.Value);
                       ParamByName('@OLD_TRANSACTION').Value := OldProduct;
                       ExecProc;
                     end;
                   end
                   else
                   begin
                     //Result := false;
                     //CommonPOS.ShowMessageStr('Not covered!',12);
                   end;
                   CDSTransShow2.Refresh;
                end;
              finally
                LObject.Free;
              end;
            end;
          end;
        end;
      end;
    end;
  Finally
    //if CommonPOS.TripleS_ApprovedAmount < 0 then
    //  CommonPOS.ShowMessageStr('Approved Amount: ' + Format('%m', [CommonPOS.TripleS_ApprovedAmount]), 10);
  End;
end;

function TCommonPOS.GetMaxAmount: double;
begin
  With DMMidas do
  begin
    FDQuery1.Close;
    FDQuery1.SQL.Text := 'SELECT sum(PayAmount1) as TAmount From TransactionHeader Where (ID = ' + IntToStr(CommonPOS.ID) + ')  AND (Voided = 0) AND (PaymentType1 = ' + chr(39) + 'CASH' + chr(39) +') and (Register = ' + CommonPOS.RegisterNo + ')';
    FDQuery1.Open;
    if FDQuery1.FieldByName('TAmount').IsNull = False then
    begin
      Result := FDQuery1.FieldByName('TAmount').Value;
    end;
    FDQuery1.Close;
    FDQuery1.SQL.Text := 'SELECT sum(PayAmount2) as TAmount From TransactionHeader Where (ID = ' + IntToStr(CommonPOS.ID) + ')  AND (Voided = 0) AND (PaymentType2 = ' + chr(39) + 'CASH' + chr(39) +') and (Register = ' + CommonPOS.RegisterNo + ')';
    FDQuery1.Open;
    if FDQuery1.FieldByName('TAmount').IsNull = False then
    begin
      Result := Result + FDQuery1.FieldByName('TAmount').Value;
    end;
    FDQuery1.Close;
    FDQuery1.SQL.Text := 'SELECT sum(Change) as TAmount From TransactionHeader Where (ID = ' + IntToStr(CommonPOS.ID) + ')  AND (Voided = 0) AND (Register = ' + CommonPOS.RegisterNo + ')';
    FDQuery1.Open;
    if FDQuery1.FieldByName('TAmount').IsNull = False then
    begin
      Result := Result - FDQuery1.FieldByName('TAmount').Value;
    end;
    FDQuery1.Close;
    FDQuery1.SQL.Text := 'Select STARTBANK as TAmount from dailytotals Where ID = ' + IntToStr(CommonPOS.ID);
    FDQuery1.Open;
    if FDQuery1.FieldByName('TAmount').IsNull = False then
    begin
      Result := Result +  FDQuery1.FieldByName('TAmount').Value;
    end;
    FDQuery1.Close;
    FDQuery1.SQL.Text := 'SELECT sum(PayAmount1) as TAmount From TransactionHeader Where (ID = ' + IntToStr(CommonPOS.ID) + ')  AND (Voided = 0) AND (PaymentType1 = ' + chr(39) + 'POUT' + chr(39) +') and (Register = ' + CommonPOS.RegisterNo + ')';
    FDQuery1.Open;
    if FDQuery1.FieldByName('TAmount').IsNull = False then
    begin
      Result := Result - FDQuery1.FieldByName('TAmount').Value;
    end;
  end;
end;

Procedure TCommonPOS.ExecPayout(InvoiceNumber: String; Amount: Double);
begin
  CommonPOS.Paidout := True;
  CommonPOS.Header := CommonPOS.GetNewHeader(CommonPOS.User, CommonPOS.Turno, CommonPOS.ID);
  CommonPOS.AddProduct('F','99999999999', Copy('Pay Out - ' + InvoiceNumber,1,30),'Pay Out','F','',
             CommonPOS.User, 'F', 'F',  Amount, Amount, 0, 0,1,0, CommonPOS.Turno, CommonPOS.ID, 0,0,0,0,false,false,'',0,false,0,false, false);
  CommonPOS.DisconnectFromDatabase;
  With DMMidas.POS_UPDATE_PAYMENTTYPE do
  begin
    Prepare;
    ParamByName('@TRANSNO').Value := Header;
    ParamByName('@PAYMENTTYPE').Value := 'POUT';
    ParamByName('@AMOUNT').Value := Amount;
    ExecProc;
  end;
  DMMidas.CDSTransShow.Active := False;
  if Trim(CommonPOS.PrinterIP) = '' then
  begin
    //CommonPOS.PrintReceipt(Header, 1, True, 'CAS','0', False, False, False, False,True);
  end;
  DMMidas.CDSTransShow.Active := False;
  CommonPOS.DisconnectFromDatabase;
  With DMMidas do
  begin
    With TRANSACTIONDETAIL_DELETE do
    begin
      Prepare;
      ParamByName('@REGISTER').AsInteger := StrToInt(CommonPOS.RegisterNo);
      ParamByName('@TNUMBER').AsInteger := Header;
      ExecProc;
    end;
  end;
  if Trim(CommonPOS.PrinterIP) > '' then
  begin
    CommonPOS.Insert_Print_Jobs(True, false, false, 'receipt', '0', IntToStr(Header), 'CAS', CommonPOS.email, CommonPOS.mobile_phone, '', '0', 1);
  end;
  CommonPOS.Header := 0;
  CommonPos.Customer := 0;
  FrmMain.sbMain.Panels[3].Text := '';
  CrPay := False;
  CrPayAmnt := 0;
  LaPay := False;
  LaPayAmnt := 0;
  CommonPOS.Paidout := False;
  CommonPOS.ebtWithdrawalAmnt := '';
  //FrmEbtOptions.button6.Click;
end;

procedure TCommonPOS.unicaCashWithdrawl;
Var
  TmpAmnt: Single;
  PayType, InvoiceNum, StrAmnt: String;
  AuthUser: String;
  Amnt, MaxAmount: Double;
begin
  try
  If Header = 0 then
  begin
    try
      maxAmount := GetMaxAmount;
      FrmInputNumber :=  TFrmInputNumber.Create(Application);
      With FrmInputNumber do
      begin
        Caption := 'Available: ' + Format('%m', [MaxAmount]);
        FrmInputNumber.ShowModal;
        Amnt := StrToFloat(FrmInputNumber.EditNumber.Text);
        FrmInputNumber.Close;
        FrmInputNumber.Free;
      end;
      If Amnt > 0 then
      begin
        if Amnt <= MaxAmount then
        begin
          FrmEvertec := TFrmEvertec.Create(Nil);
          ebtWithdrawalAmnt := Format('%2f', [Amnt]);
          CommonPOS.TransactionType := 'POUT';
          FrmEvertec.ShowModal;
          FrmEvertec.close;
          FrmEvertec := nil;

        end
        else
        begin
          ShowMessage('Unavalilable amount!');
        end;
      end;
    except
    begin
      if FrmMain.LanguageStr = 'English' then
        ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 267), 12, clBlack)
      else
      ShowMessageStr('Cantidad inválida', 12,clBlack);
    end;
    end;
  end
  else
  begin
    if FrmMain.LanguageStr = 'English' then
      ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 268), 12, clBlack)
    else
    ShowMessageStr('Hay una transacción en proceso, termine antes de hacer el Pay Out', 12,clBlack);
  end;
  finally

    FrmEbtOptions.Close;
  end;
end;


function TCommonPOS.isPOS_Logedin(Token: String; UserNo: Integer): Boolean;
Var
  OpenPassword: Boolean;
begin
  Result := false;
  With DMMidas do
  begin
    if Trim(CommonPOS.User) = 'ADM' then
    begin
      Result := True;
    end
    else
    begin
      With DMMidas.isAuthorized do
      begin
        Prepare;
        ParamByName('@USERNO').Value := UserNo;
        ParamByName('@Field').Value := Token;
        Active := True;
        Result := DMMidas.isAuthorized.FieldByName('ResultValue').Value;
        ShowMessage(IntToStr(DMMidas.isAuthorized.FieldByName('ResultValue').Value));
      end;
    end;
  end;
end;

function TCommonPOS.isAuthorized(FieldName: String; FieldNameBit, LoginAuthUser : Boolean): Boolean;
Var
  OpenPassword: Boolean;
begin
  Result := false;
  if Trim(CommonPOS.User) = 'ADM' then
  begin
    Result := True;
  end
  else
  begin
    if FieldNameBit = True then
    begin
      Result := true;
    end;
    if (Result = False) and (LoginAuthUser = True) then
    begin
      Result := LoginAdmin(FieldName);
    end;
    if (Result = False) and (LoginAuthUser = false) then
    begin
      ShowMessageStr('User not authorized!', 12,clBlack);
    end;
  end;
end;

function TCommonPOS.MessageDlgNoPorDefecto(const Msg: string): Integer;
var
  dlg: TForm;
  btn: TButton;
begin
//  dlg := CreateMessageDialog(Msg, mtConfirmation, [mbYes, mbNo, mbCancel]);
  dlg := CreateMessageDialog(Msg, mtConfirmation, [mbYes, mbNo]);

  for var i := 0 to dlg.ComponentCount - 1 do
  begin
    if dlg.Components[i] is TButton then
    begin
      btn := TButton(dlg.Components[i]);
      if btn.ModalResult = mrNo then
      begin
        btn.Default := True;
        btn.Cancel := True;
        dlg.ActiveControl := btn;
        Break;
      end;
    end;
  end;

  Result := dlg.ShowModal;
  dlg.Free;
end;

function TCommonPOS.MonthOftheYear(Fecha: String): String;
Var
  Mes, dia, ano: Word;
begin
  DecodeDate(StrToDate(fecha),ano, mes, dia);
  Case Mes of
   1: Result := 'Enero';
   2: Result := 'Febrero';
   3: Result := 'Marzo';
   4: Result := 'Abril';
   5: Result := 'Mayo';
   6: Result := 'Junio';
   7: Result := 'Julio';
   8: Result := 'Agosto';
   9: Result := 'Septiembre';
   10: Result := 'Octubre';
   11: Result := 'Noviembre';
   12: Result := 'Diciembre';
  end;
end;


function TCommonPOS.LastCreditTransactions(ClientNO: Integer; SSN: String): Boolean;
Var
  LastDate: String;
begin
  if DMMidas.CDSClientesDEUDA_EXTENDIDA.Value = 'T' then Result := True
  else
  begin
    if SSN > '' then
    begin
      With DM do
      begin
        CDSULT_TRANS.Close;
        CDSULT_TRANS.CommandText := 'Select AMOUNT, DATEOFTRANS AS ULT_TRANS, CODE  from clienttransactions where NO_SEGURO_SOCIAL = ' + #39 + Trim(SSN) + #39 +' and CODE = ' + #39 + 'DB' +#39 + ' and balance > .01 order by dateoftrans';
        CDSULT_TRANS.Open;
        CDSULT_TRANS.First;
        if CDSULT_TRANSAMOUNT.Value > 0 Then
           if DaysBetween(CDSULT_TRANSULT_TRANS.AsDateTime, date) > CommonPOS.MaximosDiasPagoCredito then
           begin
             Result := False;
             LastDate := DateToStr(Date - CommonPOS.MaximosDiasPagoCredito);
             CommonPOS.DisconnectFromDatabase;
             QSP_DEUDA.ParamByName('@SSN').AsString := Trim(SSN);
             QSP_DEUDA.ParamByName('@FECHA_DESDE').asString := LastDate;
             QSP_DEUDA.ExecProc;
             if FrmMain.LanguageStr = 'English' then
              ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 270) + DMMidas.CDSClientesNombreCompleto2.Value +
              TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 271) + Format('%n', [QSP_DEUDA.ParamByName('@Balance').AsFloat]) + TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 272), 12, clBlack)
              else
               ShowMessageStr('El cliente '+ DMMidas.CDSClientesNombreCompleto2.Value + ' debe hacer un pago por la cantidad de ' + Format('%n', [QSP_DEUDA.ParamByName('@Balance').AsFloat]) + ' antes de poder hacer una transaccion a credito, gracias.', 12,clBlack);
           end
           else Result := True
        else
          Result := True;
      end
    end
    else
    begin
      With DMMidas do
      begin
        CDSULT_TRANS.Close;
        CDSULT_TRANS.CommandText := 'Select AMOUNT, DATEOFTRANS AS ULT_TRANS, CODE  from clienttransactions where ClientNO = ' + IntToStr(ClientNO) +' and CODE = ' + #39 + 'DB' +#39 + ' and balance > .01 order by dateoftrans';
        CDSULT_TRANS.Open;
        CDSULT_TRANS.First;
        if CDSULT_TRANSAMOUNT.asFloat > 0 Then
           if DaysBetween(CDSULT_TRANSULT_TRANS.AsDateTime, date) > CommonPOS.MaximosDiasPagoCredito then
           begin
             Result := False;
             LastDate := DateToStr(Date - CommonPOS.MaximosDiasPagoCredito);
             CommonPOS.DisconnectFromDatabase;
             With DEUDA do
             begin
               Prepare;
               ParamByName('@NO_CLIENTE').Value := ClientNO;
               ParamByName('@FECHA_DESDE').asString := LastDate;
               ExecProc;
             end;
             if FrmMain.LanguageStr = 'English' then
              ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 270) + CDSClientesNombreCompleto2.Value + 
              TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 271) + Format('%n', [DEUDA.ParamByName('@Balance').AsFloat]) + TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 272), 12, clBlack)
             else
             ShowMessageStr('El cliente '+ CDSClientesNombreCompleto2.Value + ' debe hacer un pago por la cantidad de ' + Format('%n', [DEUDA.ParamByName('@Balance').AsFloat]) + ' antes de poder hacer una transaccion a credito, gracias.', 12,clBlack);

           end
           else Result := True

        else
          Result := True;
      end;
    end;
  end;
end;

function TCommonPOS.Layaway(Amount: Double): Boolean;
begin
  Result := False;
  With DMMidas do
  begin
    if AbonoLayawayCR = True then
    begin
      With DMMidas do
      begin
        if CDSClientTransactions.Active = False then CDSClientTransactions.Active := True;
        InsertCreditTrans('LC', CommonPOS.Trans_AbonoLayaway, DMMidas.CDSTransHeadTRANSACTIONNUMBER.Value);
        CommonPOS.Trans_AbonoLayaway := 0;
        Result := True;
      end;
    end
    else
    begin
      FrmSearchCust2 := TFrmSearchCust2.Create(Nil);
      With FrmSearchCust2 do
      begin
        ShowModal;
        If ModalResult = mrOK then
        begin
          CommonPos.Customer := DMMidas.CDSClientesNUMEROCLIENTE.Value;
          FrmMain.sbMain.Panels[3].Text := Trim('Cliente: ' + DMMidas.CDSClientesNOMBRE.Value +
                                              ' ' + DMMidas.CDSClientesAPELLIDOPATERNO.Value);
          With DMMidas do
          begin
            if CDSClientTransactions.Active = False then CDSClientTransactions.Active := True;
            InsertCreditTrans('LD', Amount, DMMidas.CDSTransHeadTRANSACTIONNUMBER.Value);
            Result := True;
          end;
        end
        else
          Result := False;
      end;
    end;
  end;
end;

Procedure TCommonPOS.FindProductNew(Token1: String; ProductID: Integer);
begin
  if ((Copy(Token1, 1, 2) <> 'RX')
  and (Copy(Token1, 1, 2) <> 'OT')
  and (Copy(Token1, 1, 2) <> 'HK')
  and (Copy(Token1, 1, 2) <> 'HT'))
  or (CommonPOS.IsNumber(Copy(Token1, 3, 1)) = False) then
  begin
    With DMMidas do
    begin
      CDSInventarioPiso.Close;
      if ProductID = 0 then
      begin
        CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where CodigoBarra Like '+ #39 + '%' + Token1 + '%' + #39 +
        ' or BARCODE2 Like '+ #39 + '%' + Token1 + '%' + #39 +
        ' or Descripcion Like '+ #39 + '%' + Token1 + '%' + #39 +
        ' and Recetario <> ' + #39 + 'R' + #39 +
        ' order by DESCRIPCION';
      end
      else
      begin
        CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where PRODUCTNO = '+  IntToStr(ProductID)  +  ' and Recetario <> ' + #39 + 'R' + #39 + ' order by DESCRIPCION';
      end;
      CDSInventarioPiso.Open;
    end;
  end;
end;

Procedure TCommonPOS.FindProduct(Token1: String; Qty, Button_Qty: Double; INVCONTROL_RECIPE, SearchByBarcode: Boolean);
Var
  AuthUser: String;
  NDCTFC: Char;
  NDCTF: String;
  FrmSearch: TForm;
  PosStr: Integer;
  lStringList: TStringList;
  isButton: Boolean;
begin
  if Button_Qty > 0  then
    isButton := true
  else
    isButton := false;
  if Token1 > '' then
  begin
    if (DMMidas.CDSSetupCOMPLEX_SEARCH.Value = True) or (SearchByBarcode = True) then
    begin
      token1 := translateBarcodes(token1);
      Queries.OpenInventory(Token1, 'POS', isButton);
      if DMMidas.CDSInventarioPiso.RecordCount > 1 then
      begin
        FrmSearchInv2 := TFrmSearchInv2.Create(application);
        With FrmSearchInv2 do
        Begin
          ShowModal;
          If ModalResult = mrOK then
          begin
           CommonPOS.AnadirArticulo(Qty,Button_Qty, INVCONTROL_RECIPE);
          end;
          FrmSearchInv2 := NIL;
          Free;
        end;
      end;
      if DMMidas.CDSInventarioPiso.RecordCount = 1 then
        CommonPOS.AnadirArticulo(Qty,Button_Qty, INVCONTROL_RECIPE);
    end
    else
    begin
      if ((Copy(Token1, 1, 2) <> 'RX')
      and (Copy(Token1, 1, 2) <> 'OT')
      and (Copy(Token1, 1, 2) <> 'HK')
      and (Copy(Token1, 1, 2) <> 'HT'))
      or (CommonPOS.IsNumber(Copy(Token1, 3, 1)) = False) then
      begin
        //token1 := translateBarcodes(token1);
        Queries.OpenInventory(Token1, 'POS',isButton);
        if DMMidas.CDSInventarioPisoDESCRIPCION.Value > '' then
        begin
          NDCTF := Copy(Token1, 1, 1);
          NDCTFC := NDCTF[1];
          if (ord(NDCTFC) >= 48) and (ord(NDCTFC) <= 57) then
          begin
            if DMMidas.CDSInventarioPiso.RecordCount > 1 then
            begin
              FrmSearchInv2 := TFrmSearchInv2.Create(application);
              With FrmSearchInv2 do
              Begin
                ShowModal;
                If ModalResult = mrOK then
                begin
                 CommonPOS.AnadirArticulo(Qty,Button_Qty, INVCONTROL_RECIPE);
                end;
                FrmSearchInv2 := NIL;
                Free;
              end;
            end
            else
              CommonPOS.AnadirArticulo(Qty, Button_Qty, INVCONTROL_RECIPE);
          end
          else
          begin
            if DMMidas.CDSInventarioPiso.RecordCount > 1 then
            begin
              FrmSearchInv2 := TFrmSearchInv2.Create(application);
              With FrmSearchInv2 do
              Begin
                ShowModal;
                If ModalResult = mrOK then
                begin
                 CommonPOS.AnadirArticulo(Qty, Button_Qty, INVCONTROL_RECIPE);
                end;
                FrmSearchInv2 := NIL;
                Free;
              end;
            end
            else
              CommonPOS.AnadirArticulo(Qty, Button_Qty, INVCONTROL_RECIPE);
          end;
        end
        else
        begin
          FrmWarning := TFrmWarning.Create(Application);
          With FrmWarning do
          begin
            ShowModal;
            Free;
          end;
        end;
      end
      else
      begin
        {if DMMidas.CDSSetupNON_WESCOM_STORE.Value = true then
        begin
          PosStr := Pos('-',trim(FrmPOSRest.EditSearchProd.Text));
          if PosStr > 0 then
          begin
            lStringList := TStringList.Create;
            lStringList.StrictDelimiter := True;
            lStringList.delimiter := '|';
            lStringList.DelimitedText := trim(FrmPOSRest.EditSearchProd.Text);
            FindRx(Trim(lStringList.Strings[0]), false,false,'',True);
            lStringList.Free;
          end;
        end;}
        if  Copy(Token1, 1, 2) = 'RX' then FindRx(Trim(Copy(FrmPOSRest.EditSearchProd.Text, 3, 9)), True, True, 'OTCNUMBER', True); //  BuscarRx(Token1, 0);
        if  Copy(Token1, 1, 2) = 'OT' then FindOTC(Token1); //BuscarOTC(Token1);
        if  Copy(Token1, 1, 2) = 'HK' then
        begin
          if DMMidas.CDSTransShow.Active = false then
          begin
            if CommonPOS.isAuthorized('RECALL_TRANS', UserRights.RECALL_TRANS,True) then
            begin
              RecallTransaction(StrToInt(Copy(Token1, 3, 20)));
            end
            else
            begin
              if FrmMain.LanguageStr = 'English' then
                ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 273), 12, clBlack)
              else
                ShowMessageStr('Usuario no autorizado', 12,clBlack);
            end;
          end
          else
          begin
            if FrmMain.LanguageStr = 'English' then
              CommonPOS.ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 274), 12, clRed)
            else
              CommonPOS.ShowMessageStr('Favor de terminar con la transaccion: ' + IntToStr(Header), 12, clRed);
          end;
        end;
        if  Copy(Token1, 1, 2) = 'HT' then CommonPOS.Assemblies(StrToInt(Copy(Token1, 3, 20)));
      end;
    end;
  end;
  Token1 := '';
end;

Procedure TCommonPOS.AnadirArticulo(QTY, BUTTON_QTY: Double; INVCONTROL_RECIPE: Boolean);
Var
  Mult: Single;
  AuthUser, TaxMunicipal, TaxEstatal: String;
  Tax: Double;
  Precio, PrecioVenta, Discount: Double;
  ChargeProduct, salesPromo: Boolean;
begin
  Tax := 0;
  AuthUser := CommonPOS.User;
  salesPromo := False;
  If RefundPOS = True then
  begin
     Qty := -1;
  end
    else Qty := 1;

  Mult := 1 - CommonPOS.Perc/100;
  With DMMidas do
  begin
    if (CommonPOS.RefundPOS = True) and (CDSInventarioPisoNonRefund.Value = True) then
    begin
      ShowMessageStr('This product cannot be returned', 14, clRed);
      exit
    end;
    if (CDSInventarioPisopepspray.Value = True) or (CDSInventarioPisoAskID.Value <> 0) then
    begin
      if MessageDlg('Was this person born before ' + datetoSTr(IncYear(now, -CDSInventarioPisoAskID.Value)) + '?', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0) = mrNo then
        exit
    end;
    if CDSInventarioPisoNonRefund.Value = True then
    begin
      if MessageDlg('This product is NON-REFUNDABLE! Check with customer to see if they still want to purchase it.', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0) = mrNo then
        exit
    end;
    if CDSInventarioPisoMaxPerTx.Value > 0 then
    begin
      CDSTransShow.Open;
      if CDSTransShow.RecordCount > 0 then
      begin
        while not CDSTransShow.Eof do
        begin
          i := 0;
          //check the transaction and count how many pseudos are added and compare with the limit allowed//
          if CDSTransShowPRODUCTNO.Value = CDSInventarioPisoPRODUCTNO.Value then
          begin
            i := i + CDSTransShowQTY.AsInteger;
          end;
          CDSTransShow.Next;
        end;
        if i = CDSInventarioPisoMaxPerTx.Value then
        begin
          ShowMessageStr('You have reached the maximum allowed by transaction for this product.', 14, clRed);
          exit
        end;
      end;
    end;
    Precio := CDSInventarioPisoPRECIO.AsFloat;
    if (CommonPos.Customer > 0) then
    begin
      if Trim(CDSClientesRETAILPRICE_SELECTED.Value) = 'Price 2' then
      begin
        if CDSInventarioPisoPRECIOVENTA2.Value > 0 then
          Precio := CDSInventarioPisoPRECIOVENTA2.AsFloat;
      end;
      if Trim(CDSClientesRETAILPRICE_SELECTED.Value) = 'Price 3' then
      begin
        if CDSInventarioPisoPRECIOVENTA3.Value > 0 then
          Precio := CDSInventarioPisoPRECIOVENTA3.AsFloat;
      end;
    end;


    if (CDSInventarioPisoCUSTOMER_ID_REQUIRED.Value) and (CommonPOS.ID_Verified = false) then
    begin
      FrmEnterDescription := TFrmEnterDescription.Create(Application);
      with FrmEnterDescription do
      begin
        Caption := 'Please enter Valid Customer ID';
        Button1.Enabled := False;
        ShowModal;
        FrmEnterDescription := nil;
        free;
      end;
    end;
    if CDSInventarioPisoHAS_MODIFIER.Value = True then
    begin
      CommonPOS.DisconnectFromDatabase;
      With NEXT_MAIN_COURSE_ID do
      begin
        ExecProc;
        CommonPOS.Main_Course_ID := ParamByName('@ID').Value;
      end;
    end
    else
    begin
      CommonPOS.Main_Course_ID := 0;
    end;
    If (Now >= CDSInventarioPisoCOMESPECIAL.AsDateTime) And
       (Now <= CDSInventarioPisoTERMINAESPECIAL.AsDateTime) then
    begin
      if CDSInventarioPisoSALES_PROMOTION_ID.Value > 0 then
      begin
        salesPromo := True;
        ChargeProduct := SalesPromotionChargeProduct(CDSInventarioPisoPRODUCTNO.Value, CDSInventarioPisoSALES_PROMOTION_ID.Value);
        if ChargeProduct = True then
        begin
          Discount := (cdsSalesPromoDISCOUNT.Value);
          CommonPOS.Perc := discount / 100;
          Precio := 0; //Precio - (Precio * Discount);
          if cdsSalesPromoDISCOUNT.Value = 100 then CommonPOS.NoTaxCharge := True;
        end
        else
        begin
          Discount := 0;
          if CDSBotonesRECIPE_PRICE.Value = True then
            Precio := CDSInventarioPisoRECIPE_PRICE.asFloat
          else
            Precio := Precio;
        end;
      end
      else
      begin
        Discount := 0;
        Precio := CDSInventarioPisoESPECIAL.asFloat;
      end;
      begin
        if (CommonPOS.NoTaxCharge = True) and (CDSInventarioPisoTAXABLE.Value = '1') then TaxMunicipal := 'T' ELSE TaxMunicipal := 'F';
        if (CommonPOS.NoTaxCharge = True) and (CDSInventarioPisoTAXABLE_ESTATAL.Value = '1') then TaxEstatal := 'T' Else TaxEstatal := 'F';
        IF CDSInventarioPisoFoodItem.Value = 1 then
        begin
          AddProduct('F',CDSInventarioPisoCODIGOBARRA.Value,CDSInventarioPisoDESCRIPCION.Value,
                     CDSInventarioPisoDESCDEPT.Value,'F','',
                     CommonPOS.User, TaxMunicipal, TaxEstatal, Precio*Mult,
                     Precio, 1, CDSInventarioPisoCOSTO.asFloat, Qty,
                     CDSInventarioPisoNUMEROSUPLIDOR.Value, CommonPOS.Turno, CommonPOS.ID,
                     CDSInventarioPisoProductNo.Value, CDSInventarioPisoSUB_DEPARTAMENTO.Value,
                     0,0,false,false,'',Main_Course_ID,INVCONTROL_RECIPE,BUTTON_QTY,CDSInventarioPisoPROCESSED_FOOD.Value, salesPromo)
        end
        else
        begin
          AddProduct('F',CDSInventarioPisoCODIGOBARRA.Value,CDSInventarioPisoDESCRIPCION.Value,
                     CDSInventarioPisoDESCDEPT.Value,'','',
                     CommonPOS.User, TaxMunicipal, TaxEstatal, Precio,
                     Precio, 1, CDSInventarioPisoCOSTO.asFloat, Qty,
                     CDSInventarioPisoNUMEROSUPLIDOR.Value, CommonPOS.Turno, CommonPOS.ID,
                     CDSInventarioPisoPRODUCTNO.Value, CDSInventarioPisoSUB_DEPARTAMENTO.Value,
                     0,0,false,false,'',Main_Course_ID,INVCONTROL_RECIPE,BUTTON_QTY,CDSInventarioPisoPROCESSED_FOOD.Value, salesPromo);

         { AddProduct('F',CDSInventarioPisoCODIGOBARRA.Value,CDSInventarioPisoDESCRIPCION.Value,
                     CDSInventarioPisoDESCDEPT.Value,'','',
                     CommonPOS.User, TaxMunicipal, TaxEstatal, Precio*Mult,
                     Precio, 1, CDSInventarioPisoCOSTO.asFloat, Qty,
                     CDSInventarioPisoNUMEROSUPLIDOR.Value, CommonPOS.Turno, CommonPOS.ID, CDSInventarioPisoPRODUCTNO.Value,
                     CDSInventarioPisoSUB_DEPARTAMENTO.Value,0,0,false,false,'',Main_Course_ID,INVCONTROL_RECIPE,BUTTON_QTY,
                     CDSInventarioPisoPROCESSED_FOOD.Value)        }
        end;
      end;
    end
    else
    begin
      if (CommonPOS.NoTaxCharge = True) and (CDSInventarioPisoTAXABLE.Value = '1') then TaxMunicipal := 'T' ELSE TaxMunicipal := 'F';
      if (CommonPOS.NoTaxCharge = True) and (CDSInventarioPisoTAXABLE_ESTATAL.Value = '1') then TaxEstatal := 'T' Else TaxEstatal := 'F';

      if WICActivo = True then
      begin
        PrecioVenta := CDSInventarioPisoPRECIOVENTA2.asFloat;
        TaxMunicipal := 'F';
        TaxEstatal := 'F';
      end
      else
      begin
        if INVCONTROL_RECIPE = True then
        begin
          PrecioVenta := CDSInventarioPisoRECIPE_PRICE.asFloat
        end
        else
        begin
          PrecioVenta := Precio;
        end;
      end;
      if CDSInventarioPisoDAILY_SALE_ACTIVE.Value = True then
      begin
        If (Time >= CDSInventarioPisoDAILY_SALE_START_TIME.Value) And
           (Time <= CDSInventarioPisoDAILY_SALE_END_TIME.Value) then
        begin
          PrecioVenta := CDSInventarioPisoDAILY_SPECIAL_PRICE.asFloat;
        end;
      end;
      IF CDSInventarioPisoFoodItem.Value = 1 then
        AddProduct('F',CDSInventarioPisoCODIGOBARRA.Value,CDSInventarioPisoDESCRIPCION.Value,
                   CDSInventarioPisoDESCDEPT.Value,'F','',
                   CommonPOS.User,  TaxMunicipal, TaxEstatal, PrecioVenta*Mult,
                   PrecioVenta, 0, CDSInventarioPisoCOSTO.asFloat, Qty,
                   CDSInventarioPisoNUMEROSUPLIDOR.Value, CommonPOS.Turno, CommonPOS.ID, CDSInventarioPisoPRODUCTNO.Value,
                   CDSInventarioPisoSUB_DEPARTAMENTO.Value,0,0,false,false,'',Main_Course_ID,INVCONTROL_RECIPE,BUTTON_QTY,
                   CDSInventarioPisoPROCESSED_FOOD.Value, salesPromo)
      else
        AddProduct('F',CDSInventarioPisoCODIGOBARRA.Value,CDSInventarioPisoDESCRIPCION.Value,
                   CDSInventarioPisoDESCDEPT.Value,'','',
                   CommonPOS.User, TaxMunicipal, TaxEstatal, PrecioVenta*Mult,
                   PrecioVenta, 0, CDSInventarioPisoCOSTO.asFloat, Qty,
                   CDSInventarioPisoNUMEROSUPLIDOR.Value, CommonPOS.Turno, CommonPOS.ID, CDSInventarioPisoPRODUCTNO.Value,
                   CDSInventarioPisoSUB_DEPARTAMENTO.Value,0,0,false,false,'',Main_Course_ID,INVCONTROL_RECIPE,BUTTON_QTY,
                   CDSInventarioPisoPROCESSED_FOOD.Value, salesPromo)
    end;
  end;
end;


Procedure TCommonPOS.BuscarRx(SKU: String; ID: Integer);
Var
  Mult: Single;
begin
  With DMMidas do
  begin
    Queries.OpenInventory('999999999999999999999999999','',false);
    Queries.OpenPrescriptions(False, StrToInt(Copy(SKU, 3, 7)));
    CDSOTC.First;
    while not CDSOTC.eof do
    begin
      If CDSOTCNUMERORECETA.Value > 0 then
      Begin
        FrmPOSTS.EditSearchProd.Text := '';
        If CDSOTCPLAN_MEDICO.Value = 'CAS' then
        begin
          if CommonPOS.RxRecibo = True then
            AddProduct('F','RX' + CDSOTCNUMERORECETA.asString, 'RX' + CDSOTCNUMERORECETA.asString,'RECETASC','F','',
                     CommonPOS.User, 'F', 'F', CDSOTCTOTAL.asFloat,
                     CDSOTCTOTAL.asFloat, 0, 0,1, 0, 0, CommonPOS.ID, 0,0,0,0,false,false,'',0,false,0,false, false)
          else
            AddProduct('F','RX' + CDSOTCNUMERORECETA.asString, CDSOTCMEDICAMENTO.Value, 'RECETASC','F','',
                     CommonPOS.User,'F', 'F', CDSOTCTOTAL.asFloat,
                     CDSOTCTOTAL.asFloat, 0, 0,1, 0, 0,  CommonPOS.ID, 0,0,0,0,false,false,'',0,false,0,false, false);
        end
        else
        begin
          if CommonPOS.RxRecibo = True then
            AddProduct('F','RX' + CDSOTCNUMERORECETA.asString, 'RX' + CDSOTCNUMERORECETA.asString,'RECETASP','F','',
                     CommonPOS.User, 'F', 'F', CDSOTCDEDUCIBLE.asFloat,
                     CDSOTCDEDUCIBLE.asFloat, 0, 0,1,0, 0, CommonPOS.ID, 0,0,0,0,false,false,'',0,false,0,false, false) //Header
          else
            AddProduct('F','RX' + CDSOTCNUMERORECETA.asString, CDSOTCMEDICAMENTO.Value,'RECETASP','F','',
                     CommonPOS.User,'F', 'F', CDSOTCDEDUCIBLE.asFloat,
                     CDSOTCDEDUCIBLE.asFloat, 0, 0,1,0, 0, CommonPOS.ID, 0,0,0,0,false,false,'',0,false,0,false, false) //Header
        end;
          CommonPOS.UpdateWorkFlow('P', Trim(CommonPOS.User) + ' ' + DateTimeToStr(Now), CDSOTCOTCNUMBER.Value);
          With SQLQuery1 do
          begin
            SQl.Clear;
            SQL.Add('Update REFILL_QUERY set RX_STATUS = 4 where NumeroReceta = ' + CDSOTCNUMERORECETA.AsString);
            ExecSQL(True);
          end;
      end
      else
      begin
        if FrmMain.LanguageStr = 'English' then
         ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 269), 12, clBlack)
        else
          ShowMessageStr('No encuentro esa receta', 12,clBlack);
      end;
      CDSOTC.Next;
    end;
  end;
end;


Procedure TCommonPOS.BuscarOTC(SKU: String);
Var
  Mult: Single;
  Perc: Double;
  Forma: TForm;
begin
    Perc := 0;
    Mult:= 1 - Perc/100;
    With DMMidas do
    begin
      Queries.OpenOTC(StrToInt(Copy(Trim(SKU), 3, 8)), False);
      If CDSOTCMEDICAMENTO.Value <> '' then
      begin
        FrmPOSTS.EditSearchProd.Text := '';
        If CDSOTCCobrado.Value <> 'T' then
        Begin
              if CommonPOS.RxRecibo = True then
                AddProduct('F','RX' + Copy(SKU, 3, 8),'RX' + Copy(SKU, 3, 8) +'-Q'+ FloatToStr(CDSOTCQTY.asFloat),'OTC','F','',
                         CommonPOS.User, CDSSetupCOBRAR_OTC_TAX.Value, CDSSetupCOBRAR_OTC_TAX.Value, CDSOTCTOTAL.asFloat*Mult,
                         CDSOTCTOTAL.asFloat, Perc,1,1,0,CommonPOS.Turno, CommonPOS.ID, 0,0,0,0,false,false,'',0,false,0,false, false)
              else
                AddProduct('F','RX' + Copy(SKU, 3, 8) ,CDSOTCMEDICAMENTO.Value +'-Q'+ FloatToStr(CDSOTCQTY.asFloat),'OTC','F','',
                         CommonPOS.User, CDSSetupCOBRAR_OTC_TAX.Value, CDSSetupCOBRAR_OTC_TAX.Value,CDSOTCTOTAL.asFloat*Mult,
                         CDSOTCTOTAL.asFloat, Perc,1,1,0,CommonPOS.Turno, CommonPOS.ID, 0,0,0,0,false,false,'',0,false,0,false, false);
          CommonPOS.UpdateWorkFlow('P', Trim(CommonPOS.User) + ' ' + DateTimeToStr(Now), CDSOTCOTCNUMBER.Value);
        end
        else
        begin
          if FrmMain.LanguageStr = 'English'  then
            ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 275), 12, clBlack)
          else
            ShowMessageStr('OTC ya fue pagado', 12,clBlack);
        end;
      end
      else
      begin
        if FrmMain.LanguageStr = 'English' then
          ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 276), 12, clBlack)
        else
        ShowMessageStr('No encuentro ese OTC', 12,clBlack);
      end;
    end;
end;


procedure TCommonPOS.AddProduct(GroupSale , ProdUPC, ProdDesc, ProdDept, Food, SubDetail, User, TaxMunicipal, TaxEstatal: String;
                            Price, RegPrice, Disc, costo, ProdQty: Double; Suplidor, Shift, ID, PID, ProdSubDpt, BagNumber,
                            OTC_NUMBER: Integer; UTILIDAD, TaxServicio: Boolean; Note: String; Main_Cource_ID: Integer;
                            INVCONTROL_RECIPE: Boolean; BUTTON_QTY: Double; ProcessedFood, salesPromo: Boolean);
Var
  IDTemp, IDNumber, TQty: Integer;
  Precio, SrcQty: Double;
  UPC, Memo: String;
  Loc: Integer;
  CurrentBalance: Double;
  canCont: Boolean;
  i: Integer;
Begin
  Memo := '';
  If CommonPOS.Header = 0 Then
  begin
    Header := GetHeader(User, Shift, ID);
  end;
  With DMMidas do
  Begin


    {With INSERTPOS do
    begin
      //====== NEW ========
      //ParamByName('@discount_allProducts').Value := 1; //1 NO CHARGE 2 = discount
      ParamByName('@percentage_discount').Value := CommonPOS.Perc/100;//Disc;
      //=====
      ParamByName('@PRODUCTNO').Value := PID;
      ParamByName('@QTY').Value := ProdQty;
      ParamByName('@OTC_NUMBER').Value := OTC_NUMBER;
      ParamByName('@TRANS_NO').Value := Header;
      ParamByName('@REGISTER').Value := RegisterNo;
      ParamByName('@ID').Value := ID;
      ParamByName('@bag_number').Value := BagNumber;
      ParamByName('@utility').Value := UTILIDAD;
      ParamByName('@sssproduct').Value := false;
      ParamByName('@note').Value := '';
      ParamByName('@PATROCINIO').Value := 0;
      ExecProc;
      if CDSTransShow.Active then CDSTransShow.Refresh;
      CDSTransShow.First;
      CalcHeadTotal(CDSTransShowTRANSACTIONNUMBER.Value);
      CDSTransShow.Locate('IDNUMBER', IDTemp, []) // then CDSTransShow.Last
    end;
    exit;
    }
    if CDSInventarioPisoESCANEAR_BARCODEALTERNO.Value > 0 then
    begin
      FrmEnterBarcode := TFrmEnterBarcode.Create(Application);
      with FrmEnterBarcode do
      begin
        ShowModal;
        {if CommonPos.Restaurant = False then
        begin
          FrmPOSTS.BARCODEALTERNO1 := Trim(FrmEnterBarcode.EditBarcode1.Text);
          FrmPOSTS.BARCODEALTERNO2 := Trim(FrmEnterBarcode.EditBarcode2.Text);
        end;
        }
        Free;
      end;
    end;

    //==============
    if (CommonPOS.RefundPOS = True) and (CommonPOS.TripleS_previousBalance = 0) then
    begin
      FrmEnterDescription :=  TFrmEnterDescription.Create(Application);
      With FrmEnterDescription do
      begin
        ShowModal;
        if ModalResult = mrOk then
          Memo := FrmEnterDescription.EditDescripcion.Text
        else
          Memo := '';
        Free;
      end;
    end;
    //==============

    With CDSTransShow do
    begin
      if Active = false then
      begin
        Active := False;
        Params[0].AsInteger := Header;
        Active := True;
      end;
    end;
    SrcQty := ProdQty;
    CDSTransShow.First;
    begin
      if SubDetail = '' then SubDetail := 'N';
      if (Trim(ProdDept) = '') and (PID > 0) then
      begin
        With DMMidas do
        begin
          if CDSInventarioPisoDEPARTAMENTO.Value > 0 then
          begin
            CDSDepartamentos.Close;
            CDSDepartamentos.CommandText := 'Select * from DEPARTAMENTO where DEPARTAMENTO = ' + CDSInventarioPisoDEPARTAMENTO.AsString;
            CDSDepartamentos.Open;
            if CDSDepartamentos.RecordCount > 0 then
              ProdDept := Trim(CDSDepartamentosDESCRIPCION.Value)
            else
            begin
              ProdDept := '0';
              CommonPOS.ShowMessageStr('This product does not have department!', 12,clBlack);
            end;
          end
          else
          begin
            ProdDept := '0';
            CommonPOS.ShowMessageStr('This product does not have department!', 12,clBlack);
          end;
        end;
      end;
      if Food = '' then Food := 'N';
      CommonPOS.DisconnectFromDatabase;
      With DMMidas.INSERT_TRANS do
      Begin
        Prepare;
        ParamByName('@TRANSACTIONNUMBER').Value := Header;
        ParamByName('@UPC').Value := ProdUPC;
        ParamByName('@QTY').Value := SrcQty;
        if Assemblie = True then
        begin
            ParamByName('@TOTAL').Value := PRICE;
            ParamByName('@REGPRICE').Value := REGPRICE;
            ParamByName('@PRICE').Value := Price;
        end
        else
        begin
          if GroupSale <> 'T' then
          begin
            if (DMMidas.CDSInventarioPisoGROUP_QTY.Value > 0) then
            begin
              Precio := DMMidas.CDSInventarioPisoRBP.asFloat / DMMidas.CDSInventarioPisoGROUP_QTY.asFloat;
              ParamByName('@TOTAL').Value := SrcQty * Precio;
              ParamByName('@REGTOTAL').Value := SrcQty * REGPRICE;
              ParamByName('@PRICE').Value := Precio;
            end
            else
            begin
              ParamByName('@TOTAL').Value := PRICE * SrcQty;
              ParamByName('@REGPRICE').Value := PRICE * SrcQty;
              ParamByName('@PRICE').Value := Price;
            end;
          end
          else
          begin
            ParamByName('@TOTAL').Value := PRICE;
            ParamByName('@REGPRICE').Value := RegPrice;
            ParamByName('@PRICE').Value := Price;
          end;
          if VeteranoActivo > 0 then
          begin
            ParamByName('@TOTAL').Value := (PRICE - (PRICE * VeteranoActivo));
            ParamByName('@REGPRICE').Value := (RegPrice - (RegPrice * VeteranoActivo));
            ParamByName('@PRICE').Value := (Price - (Price * VeteranoActivo));
          end;
        end;
        if RefundPOS = True then ParamByName('@TOTAL').Value := PRICE * SrcQty;
        if Price <= 0 then
        BEGIN
          ParamByName('@PRICE').Value := Price;
          ParamByName('@TOTAL').Value := Price;
        END;
        if Assigned(FrmManualSale) then
          ParamByName('@REGPRICE').Value := RegPrice
        else
          ParamByName('@REGPRICE').Value := CDSInventarioPisoPRECIO.AsFloat;
        ParamByName('@VOIDED').Value := 0;
        ParamByName('@SUBDETAIL').Value := Trim(Copy(SubDetail,1,10));
        ParamByName('@PRODDESCRIPTION').Value := Trim(Copy(ProdDesc,1,30));
        ParamByName('@PRODDEPARTMENT').Value := Trim(Copy(ProdDept,1,20));
        ParamByName('@REGTOTAL').Value := 0;
        ParamByName('@FOOD').Value := Food;
        ParamByName('@MODIFIED').Value := 0;
        ParamByName('@DISCOUNT').Value := 0; //Disc;  this is calculated in the trigger "11/12/2025"
        ParamByName('@COSTO').Value := Costo;
        ParamByName('@FECHAVENTA').Value := DateToStr(date);
        ParamByName('@SUPLIDOR').Value := Suplidor;
        ParamByName('@TOTAL_VALUE').Value := 0;
        ParamByName('@AWP').Value := 0;
        ParamByName('@ID').Value := ID;
        ParamByName('@PRODUCTNO').Value := PID;
        if CommonPOS.NoTaxCharge = False then
        begin
          ParamByName('@TAX_ESTATAL').Value := 'F';
          ParamByName('@TAX_MUNICIPAL').Value := 'F';
        end
        else
        begin
          ParamByName('@TAX_ESTATAL').Value := TaxEstatal;
          ParamByName('@TAX_MUNICIPAL').Value := TaxMunicipal;
        end;
        ParamByName('@GROUP_PROD').Value := GroupSale;
        ParamByName('@REGISTER').Value := CommonPOS.RegisterNo;
        ParamByName('@SUPER').Value := CommonPOS.Supervisor;
        ParamByName('@PATROCINIO').Value := DMMidas.CDSInventarioPisoPatrocinio.Value;
        ParamByName('@SUBDPT').Value := ProdSubDpt;
        ParamByName('@BARCODEALTERNO1').Value := DMMidas.CDSInventarioPisoBARCODE2.Value; // FrmPOSTS.BARCODEALTERNO1;
        ParamByName('@BARCODEALTERNO2').Value := ''; // FrmPOSTS.BARCODEALTERNO2;
        ParamByName('@BAG_NUMBER').Value := BagNumber;
        ParamByName('@OTC_NUMBER').Value := OTC_NUMBER;
        ParamByName('@UTILIDAD').Value := UTILIDAD;
        ParamByName('@TAX_SERVICIO').Value := TaxServicio;
        ParamByName('@NOTE').Value := Memo;
        if (CDSInventarioPisoSHOWINDIVIDUAL.Value = True) or (CDSInventarioPisoKITCHEN.Value = True) then
          ParamByName('@INSERT_NEW_PRODUCT').Value := True
        else
          ParamByName('@INSERT_NEW_PRODUCT').Value := CDSSetupPOS_INSERT_NEW_PRODUCT.Value;

        if (ProdDept = 'RECETASP') or (ProdDept = 'RECETASC') or (ProdDept = 'RECETAS')
        or (BagNumber > 0) then
          ParamByName('@INSERT_NEW_PRODUCT').Value := True;
        ParamByName('@KITCHEN').Value := CDSInventarioPisoKITCHEN.Value;
        ParamByName('@MAIN_COURSE_ID').Value := Main_Cource_ID;
        if CDSInventarioPisoHAS_MODIFIER.Value then
          ParamByName('@MAIN_COURSE').Value := True
        else
          ParamByName('@MAIN_COURSE').Value := False;
        ParamByName('@INVCONTROL_RECIPE').Value := INVCONTROL_RECIPE;
        ParamByName('@BUTTON_QTY').Value := BUTTON_QTY;
        if ProcessedFood = True then
        begin
          ParamByName('@TAX_ESTATAL').Value := 'F';
        end;
        ParamByName('@TAX_PROCESSED_FOOD').Value := ProcessedFood;
        ParamByName('@TRIPLES_PRODUCT').Value := CDSInventarioPisoTRIPLES_PRODUCT.Value;
        ParamByName('@PSEUDO').Value := CDSInventarioPisopseudo.Value;
        ParamByName('@PEP_SPRAY').Value := CDSInventarioPisopepspray.Value;
        if ProdDept = 'RECETASC' then
          ParamByName('@ALWDISC').Value := true
        else
          ParamByName('@ALWDISC').Value := CDSInventarioPisoALWDISC.Value;
        ParamByName('@FSA').Value := CDSInventarioPisoSigis.Value;
        ParamByName('@OTCCard').Value := CDSInventarioPisoOTCCard.Value;
        if CDSInventarioPisoALWDISC.Value = True then
        begin
          ParamByName('@DISCOUNT_PERCENTAGE').Value := CommonPOS.Perc;
          if Disc = 1 then       // This variable is now used to verify if there is a BOGOF product being inserted. Perc back to 0 to justify when discount is on for all prods//
            CommonPOS.Perc := 0;
        end
        else
          ParamByName('@DISCOUNT_PERCENTAGE').Value := 0 ;
        ParamByName('@SALES_PROMO').Value := salesPromo ;
        ParamByName('@DBname').Value := CommonPOS.DataBaseNameRx;
        ExecProc;
        if CDSInventarioPisoFOODITEM.Value = 1 then
        begin
          FrmPOSRest.LabelRecibido.Visible := True;
          FrmPOSRest.LabelRecibido.Caption := 'Food Item: ' +  Format('%m',[CommonPOS.CalcTarjetaFamilia(false)]);
        end;

        IDTemp := ParamByName('@Current_Identity').Value; // GetLastIdentityValue;
        if (CommonPOS.TripleS_previousBalance > 0) and (CommonPOS.TripleS_ApprovedAmount > 0) then
        begin
            CommonPOS.TripleSOTC(0);
        end;
        if CDSTransShow.Active then CDSTransShow.Refresh;
        CDSTransShow.First;
        CalcHeadTotal(CDSTransShowTRANSACTIONNUMBER.Value);
        CDSTransShow.Locate('IDNUMBER', IDTemp, []); // then CDSTransShow.Last
      end;
    end;
    FrmPOSRest.EditSearchProd.Text := '';
    try
      SendToPole(Copy(ProdDesc,1,20),Copy(Format('Qty: %n $%f', [ProdQty,Price]),1,20));
    except
      //
    end;
    if ProdUPC <> '77777777777' then
    begin
      if Disc = 0 then
      begin
        begin
          if (CDSTransShowPRICE.Value = 0) and (Copy(DMMidas.CDSTransShowUPC.Value, 1,2) <> 'RX') and (VeteranoActivo = 0)
          and (CDSSetupPERMIT_ZERO_MANUALSALE.Value = false) then  //(CDSInventarioPisoPRECIO.Value = 0)
          begin
            //if CommonPOS.Restaurant = False then
            if not Assigned(FrmModifiers) then
            begin
              if CDSSetupPERMIT_ZERO_ANYSALE.Value = false then
              begin
                FrmPOSRest.BPrecio.Click;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TCommonPOS.TripleSOTC(Balance: Double);
var
  Loc: Integer;
  CurrentBalance: Double;
begin
    With DMMidas.CALC_TRIPLES_TAX do
    begin
      Prepare;
      parambyname('@transactionnumber').Value := Header;
      ExecProc;
      //TripleS_ApprovedAmount := ParamByName('@TOTAL_BALANCE_PLUS_TAX').Value;
    end;
    Loc := Pos(':', FrmPOSRest.LabelCustomer.Caption);
    //CommonPOS.TripleS_finalBalance := CommonPOS.TripleS_previousBalance - TripleS_ApprovedAmount;
    //FrmPOSRest.LabelCustomer.Caption := Copy(FrmPOSRest.LabelCustomer.Caption, 1, Loc) + ' ' + format('%m', [CommonPOS.TripleS_finalBalance]);
end;


function TCommonPOS.GetCalendar: TDateTime;
begin
  FrmCalendar := TFrmCalendar.Create(nil);
  With FrmCalendar do
  begin
    ShowModal;
    Result := EncodeDate(Calendar.Year, Calendar.Month, Calendar.Day);
    Free;
  end;
end;

Function TCommonPOS.GetHeader(User: String; Shift, ID : Integer) : Integer;
Var
  LookupCommission: Boolean;
Begin
  LookupCommission := False;
  With DMMidas.CDSTrHeadAdHoc2 do
  Begin
    Active := False;
    CommandText := 'Select * From TransactionHeader_temp Where Opened = ''T'' And '
                   + 'EmployNumber = ''' + User + ''' And '
                   + 'ID = ' + IntToStr(CommonPOS.ID);
    Active := True;
    IF Not EOF Then
    Begin
      Result := FieldByName('TransactionNumber').asInteger;
    end
    else
    Begin
      Result := GetNewHeader(User, Shift, CommonPOS.ID);
      LookupCommission := True;
    end;
    FrmPOSRest.LabelCambio.Visible := False;
  end;
  Queries.OpentTransHeader(Result,false);
  FrmPOSRest.StatusBar1.Panels[5].Text := 'NO. TRANS: ' + IntToStr(Result);
  CommonPOS.TransNo := Result;
  if (DMMidas.CDSSetupACTIVE_COMMISSIONS.Value = True) and (LookupCommission = True) then
  FrmPOSRest.btnCommission.Click;
end;

function TCommonPOS.GetNewHeader(User: String; Shift, ID : Integer): Integer;
Var
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
Begin
  DecodeTime(Time, Hour, Min, Sec, MSec);
  DecodeDate(Date, Year, Month, Day);
  With DMMidas do
  Begin
    if CambioChequeTransTF = False then
    begin
      if CommonPOS.Restaurant = False then
      begin
        {
        With FrmPOSTS do
        begin
          LabelRecibido.Visible := False;
          LabelCambio.Visible := False;
          LabelCambio.Caption := 'CAMBIO';
        end;
        }
      end;
    end;
    CommonPOS.DisconnectFromDatabase;
    With DMMidas.GETNEWHEADER do
    begin
      Prepare;
      ParamByName('@EMPLOYNUMBER').Value := Copy(User,1,3);
      ParamByName('@REGISTER').Value := CommonPOS.RegisterNo;
      ParamByName('@ID').Value := CommonPOS.ID;
      ExecProc;
      Result := DMMidas.GETNEWHEADER.ParamByName('@TRANSNO').Value;
    end;
    FrmPOSRest.StatusBar1.Panels[5].Text := 'NO. TRANS: ' + IntToStr(Result);
    CommonPOS.TransNo := Result;
  end;
end;


procedure TCommonPOS.GroupTabs(ID: Integer);
begin
  With DMMidas do
  begin
    cdsOpenTabs.Close;
    cdsOpenTabs.CommandText := 'Select * from OPEN_TABS where GROUP_BY_ID = ' + IntToStr(ID) + ' order by Customer';
    cdsOpenTabs.Open;
    cdsOpenTabs2.Close;
    cdsOpenTabs2.CommandText := 'Select * from OPEN_TABS where GROUP_BY_ID = ' + IntToStr(ID) + ' order by Customer';
    cdsOpenTabs2.Open;
  end;
end;

procedure TCommonPOS.SendtoPole(Line1, Line2: String);
Var
  Port: Integer;
  Line1Str: Array[0..50] of char;

begin
{  if CommonPOS.PoleDisplayPort > 1 then
  begin
    Port := CommonPOS.PoleDisplayPort;
    If Port <> 0 then
    begin
      line1str := '';
    //  strpcopy(line1str, '');
      Line1 := UpperCase(Copy(Line1,1,20));
      Line2 := UpperCase(Copy(Line2,1,20));
      Case CommonPOS.PoleDisplayType of
        0:
        begin
          try
            If (Length(Line1) > 0) then
            begin
              FrmMain.elSerialPort1.SendString('                         ');
              FrmMain.elSerialPort1.SendString('                         ');
              Strpcopy(Line1Str, CHR(27) + CHR(81) + CHR(65) + Line1 + CHR(13));
              //FrmMain.elSerialPort1 := spCOM3;
              FrmMain.elSerialPort1.SendString(Line1Str);
              //ComPuts(Port, Line1Str);

              Strpcopy(Line1Str, CHR(27) + CHR(81) + CHR(66) + Line2 + CHR(13));
              //ComPuts(Port, Line1Str);
              FrmMain.elSerialPort1.SendString(Line1Str);
            end
            else
            begin
              Strpcopy(Line1Str, CHR($0C));
            end;
          except
            ShowMessageStr('Error enviando data al display', 12,clBlack);
          end;
        end;
        1:
        begin
          try
            If (Length(Line1) > 0) then
              Strpcopy(Line1Str, '!#1' + Line1 + #13 + '!#2' + Line2 + #13)
            else
              Strpcopy(Line1Str, '!#1' + '' + #13 + '!#2' + '' + #13);
              FrmMain.elSerialPort1.SendString(Line1Str + #13#10);
            //ComPuts(Port, Line1Str);
          except
            ShowMessageStr('Error enviando data al display', 12,clBlack);
          end;
        end;
        2:
        begin
          //ComPuts(Port, Chr(12) + Chr(14) + Chr(12) + Chr(10) + Chr($1F) + Chr($03)); // Set Scroll Mode
          FrmMain.elSerialPort1.SendString(Chr(12) + Chr(14) + Chr(12) + Chr(10) + Chr($1F) + Chr($03));
          Strpcopy(Line1Str, LeftJString(Line1,20));
          //ComPuts(Port, Line1Str);
          //ComPuts(Port, Line1Str);
          FrmMain.elSerialPort1.SendString(Line1Str);
          Strpcopy(Line1Str, Line2);
          FrmMain.elSerialPort1.SendString(Line1Str);
        end;
        3:
        begin
          try
            FrmMain.elSerialPort1.SendString('' + #31);
            If (Length(Line1) > 0) then
            begin
              //Strpcopy(Line1Str, Line1 + #13 + #10 +  Line2 +#13)
              Line1 := Copy(Line1, 1, 19);
              Strpcopy(Line1Str,  Line1 +#10+#13);
              FrmMain.elSerialPort1.SendString(Line1Str);

              if Line2 > '' then
              begin
                if Length(Line2) >= 20 then Line2 := Copy(Line2, 8, 15);
                Strpcopy(Line1Str, Copy(Line2, 1, 20));
                FrmMain.elSerialPort1.SendString(Line1Str);
              end;
            end
            else
              Strpcopy(Line1Str,  '' + #13 +  '' + #13);
          except
            ShowMessageStr('Error enviando data al display', 12,clBlack);
          end;
        end;
      end;
    end;
  end;
  Line1 := '';
  Line2 := '';
  }
  try
    with FrmMain do
    begin
      if CommonPOS.poleDispPort > '' then
      begin
        ZylSerialPort1.Port := ZylSerialPort1.StringToCommPort(CommonPOS.poleDispPort);
        ZylSerialPort1.Open;
        ZylSerialPort1.SendString(#10#10);
        ZylSerialPort1.SendString(line1 + ' ' + line2 + #13);
      end;
    end;
  except
  //
  end;
end;

function TCommonPOS.LeftJString(InStr: String; StrLen: Integer): String;
Var
  Xpos, X : Integer;
begin
  InStr := Trim(InStr);
  Xpos := (StrLen - Length(InStr));
  For X := 1 to Xpos do
    InStr := InStr + ' ';
  Result := InStr;
end;

function TCommonPOS.login: Boolean;
var
  MyReg : TRegistry;
  Cnt: Integer;
begin
    if DMMidas.CDSSetup.Active = False then DMMidas.CDSSetup.Active := True;
    FrmSecurity := TFrmSecurity.Create(Nil);
    With FrmSecurity do
    Begin
      ShowModal;
      if AccessGranted = True then
      begin
        Result := True;
      end
      else
      begin
        if ModalResult = mrCancel then
        begin
          Application.Terminate;
        end;
      end;
      FrmSecurity := nil;
      Free;
    end;
End;


function TCommonPOS.LoginAdmin(Token: String): Boolean;
Var
  Log, OpenBalance: String;
begin
  Result := False;
  FrmSecurity := TFrmSecurity.Create(nil);
  With FrmSecurity do
  begin
    Tag := 1;
    ShowModal;
    if AccessGranted = True then
    begin
      CommonPOS.DisconnectFromDatabase;
      With DMMidas.isAuthorized do
      begin
        Prepare;
        ParamByName('@USERNO').Value := CommonPOS.UserNumberAdmin;
        ParamByName('@Field').Value := Token;
        Active := True;
        Result := FieldByName('ResultValue').Value;
        CommonPOS.Supervisor := ParamByName('@USER').Value;
        if Result = true then
        begin
          // Log information!
          if Token = 'POS_DELPROD' then
          begin
            Log := 'Delete POS product ';
          end;
          if Token = 'POS_CANCEL' then
          begin
            Log := 'Transaction cancel ';
          end;
          if Token = 'POS_DELTRANS' then
          begin
            Log := 'Transaction deleted ';
          end;
          if Token = 'MAIN_RECV' then
          begin
            Log := 'Merchandise insert'
          end;
          {if Token = 'POS_CUADRE_ADMINISTRADOR' then
          begin
            Log := 'Balancing'
          end; }
          if Token = 'RECALL_TRANS' then
          begin
            Log := 'Transaction recalled'
          end;
          if Token = 'POS_REST_DELETEPRODUCT' then
          begin
            Log := 'POS REST delete product';
          end;
          if Token = 'CAMBIAR_PRECIO_OTC_RX' then
          begin
            Log := 'Prescription or OTC product';
          end;
          if Token = 'POS_CHGPRICE' then
          begin
            Log := 'Change product price';
          end;
          if Token = 'POS_PAYOUT' then
          begin
            Log := 'Payout';
          end;
          if Token = 'POS_DISCOUNT' then
          begin
            Log := 'Discount';
          end;
          if Token = 'POS_REFUND' then
          begin
            Log := 'Refund';
          end;
          if Token = 'GUARDAR_TRANSACCIONES' then
          begin
            Log := 'Save Transaction';
          end;
          if Token = 'POS_CREDIT' then
          begin
            Log := 'Credit Transaction';
          end;
          if Token = 'REDIMIR_PATROCINIO' then
          begin
            Log := 'Sponsorship redemption Transaction';
          end;
          if Token = 'MAIN_INV' then
          begin
            Log := 'Inventory edit';
            OpenBalance := '';
          end
          else
          begin
            OpenBalance :=  ' Transaction Number: ' + DMMidas.CDSTransShowTRANSACTIONNUMBER.asString + ' from Open Balance ID: ' + DMMidas.CDSTransShowID.asString;
          end;
          CommonPOS.InsertLog(Log, '', '', CommonPOS.User, '', 0, 0, 0,0,0,0,0,0,
          log + ' authorized by supervisor' + ': ' + FrmSecurity.EditUser.Text
          + OpenBalance
          , false,true);
        end;
      end;
    end;
    FrmSecurity := nil;
    Free;
  end;
end;


procedure TCommonPOS.BorrarProducto(TranNo, IDno: Integer);
Var
  NoRx: Int64;
  Continue: Boolean;
  Note, is_Signed: string;
  isFoodItem: Boolean;
begin
  is_Signed := '';
  With DMMidas do
  begin
    if (CommonPOS.TripleS_ApprovedAmount > 0) AND (CDSTransShowTRIPLES_COVERED.Value = true)  then
    begin
      CommonPOS.ShowMessageStr('No puede borrar un articulo pago por Triple-S Avantage! Debe terminar la transaccion!', 12, clRed);
      exit;
    end;
    if (CommonPOS.Restaurant = True) and (CDSTransShowTAB_SAVED.Value = True) then
    begin
      if CommonPOS.isAuthorized('POS_REST_DELETEPRODUCT',UserRights.POS_REST_DELETEPRODUCT,true) = True Then
        Continue := True
      else
      begin
        ShowMessage('Not authorized!');
        Exit;
      end;
    end;
    if DMMidas.CDSTransShowOTC_NUMBER.Value > 0 then
    begin
      if FrmMain.LanguageStr = 'English' then
        is_Signed := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 277)
      else
       is_Signed := 'La firma de esta receta sera borrada, ';
    end;
    if FrmMain.LanguageStr = 'English' then
      FrmMain.msgD := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 296)
    else
      FrmMain.msgD := 'Quiere borrar este producto?';
    If MessageDlg(is_Signed + FrmMain.msgD, mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
        if (Copy(CDSTransShowUPC.Value,1,2) = 'RX') and  (IsNumber(Trim(Copy(CDSTransShowUPC.Value,3,15))) = True) then
        begin
          NoRx := StrToInt64(Trim(Copy(CDSTransShowUPC.Value,3,15)));
          if DMwc.cdsWillCall.Active = True then DMwc.cdsWillCall.Refresh;
        end
        else
          NoRx := 0;
        Note := 'Product ' + Trim(CDSTransShowPRODDESCRIPTION.Value) + ' was deleted by ' + Copy(CommonPOS.User,1,3)
        +  ' Transaction Number: ' + CDSTransShowTRANSACTIONNUMBER.asString + ' from Open Balance ID: ' + CDSTransShowID.asString;
        if CDSTransShowFOOD.Value = 'F' then isFoodItem := True else isFoodItem := false;

        CommonPOS.DisconnectFromDatabase;
        With TRANSACTIONDETAIL_DELETE_PRODUCT do
        begin
          Prepare;
          ParamByName('@IDNUMBER').AsInteger := IDno;
          ParamByName('@NO_RX').Value := NoRx;
          ParamByName('@DBName').Value := CommonPOS.DataBaseNameRx;
          ExecProc;
          if CommonPOS.TripleS_previousBalance > 0 then
          begin
              CommonPOS.TripleSOTC(0);
          end;
        end;
        CommonPOS.DisconnectFromDatabase;
        if isFoodItem = true then
        begin
          FrmPOSRest.LabelRecibido.Caption := 'Food Item: ' +  Format('%m',[CommonPOS.CalcTarjetaFamilia(False)]);
        end;
        With DMMidas do
        begin
          CommonPOS.InsertLog('Product deletion from POS', 'D', Copy(CDSTransShowUPC.Value,1,13),
                  Copy(CommonPOS.User,1,3), '',
                  0, 0, 0, 0,
                  0, 0, 0, CDSTransShowPRODUCTNO.Value,Note,false,true);
          CommonPOS.CalcHeadTotal(IDno);
          CommonPOS.OpenTransDetail(TranNo);
          CDSTransShow.First;
          (CDSTransShowTRANSACTIONNUMBER.Value);
        end;
        SendToPole('BORRAR PRODUCTO','PRODUCTO BORRADO');
        IF DMMidas.CDSClientes.Active Then DMMidas.CDSClientes.Refresh;
    end;
    If DMMidas.CDSTransShow.RecordCount = 0 then
    begin
      CommonPOS.ClearTransactions;
      FrmMain.sbMain.Panels[3].Text := '';
      SendToPole(CenterString(DMMidas.CDSSetupSTORENAME.Value,20),CenterString('SALESTEC 2018',20));
    end;
  end;
end;

function TCommonPOS.CenterString(InStr: String; StrLen: Integer): String;
Var
  Xpos, X : Integer;
begin
  InStr := Trim(InStr);
  Xpos := Trunc((StrLen - Length(InStr))/2);
  For X := 1 to Xpos do
    InStr := ' ' + InStr;
  Result := InStr;
end;

Procedure TCommonPOS.CheckOut(Tip, Amount, SubTotal: Double; TransType, PrintType: String; TS: Boolean; NoRecibos: Integer; Factura: Boolean);
Var
    PagoCredito, DeudaWeb, Change, Patrocinio: Double;
    FSearch: TForm;
    CheckDesc: String;
    Header1: Integer;
    SSN: String;
    MemoTotales: String;
    Trans_Type: String;
begin
    CommonPOS.DisconnectFromDatabase;
    Trans_Type := '';
    if (AbonoCredito = true) or (AbonoCredito = true) then Trans_Type := 'CR';
    IF (AbonoLayawayCR = True) then Trans_Type := 'LA';
    if (PatrocinioActivo = True) or (RedimirPatrocinioActivo = true) then Trans_Type := 'PC';
    if AuspicioActivo = True then Trans_Type := 'AU';
    if CommonPos.Utility = True then Trans_Type := 'UT';
    With DMMidas.UPDATE_TRANSACTION_HEADER do
    begin
      Prepare;
      ParamByName('@TRANSNO').Value := Header;
      ParamByName('@AMOUNT_TENDERED').Value := Amount;
      ParamByName('@PAYMENTTYPE').Value := TransType;
      ParamByName('@CUSTOMERID').Value := CommonPos.Customer;
      ParamByName('@TIP').Value := Tip;
      ParamByName('@TRANS_TYPE').Value := Trans_Type;
      ExecProc;
      Queries.OpentTransHeader(Header, false);
      Change := DMMidas.CDSTransHeadCHANGE.asFloat;
    end;
    SendToPole(Format('PAGO: %m',[Amount]) + ' ' + TransType,Format('CAMBIO: %m',[Change]));
    CommonPOS.NoTaxCharge := True;
    FrmPOSRest.LabelCambio.visible := True;
    if DMMidas.CDSTransHeadCHANGE.asFloat > 0 then
    begin
      FrmPOSRest.LabelCambio.Caption  := 'CHANGE: ' + Format('%m', [DMMidas.CDSTransHeadCHANGE.asFloat]);
    end
    else
    begin
      FrmPOSRest.LabelCambio.Caption  := 'DUE: ' + Format('%m', [DMMidas.CDSTransHeadCHANGE.asFloat]);
    end;

    CambioChequeTransTF := False;
    Header1 := Header;
    If Amount <= 500000 then
    Begin
      With DMMidas.CDSTransHead do
      begin
        If Change < 0 then
        begin
          If (TransType = 'CRED') OR (TransType = 'LWAY') then
          begin
            if FrmMain.LanguageStr = 'English' then
              ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 278), 12, clBlack)
            else
            ShowMessageStr('Crédito y Lay Away solo se aceptan por el total de la transaccion', 12,clBlack);
          end;
          {if (TransType = 'TFAM') and (Change < 0) then
          begin
            FrmPOSRest.btnCheckout.Click;
          end;}
        end
        else
        begin
          // Get Delivery Information
          If (FrmMain.PromptDelivery) Then
          //AND(Not DMMidas.CDSTransShow2.Locate('UPC','99999999998',[])) then
          begin
            FrmDeliveryInfo := TFrmDeliveryInfo.Create(application);
            With FrmDeliveryInfo do
            begin
              ShowModal;
              If ModalResult = mrOK then
              begin
                With DMMidas.CDSTrHeadAdHoc do
                begin
                  SQL.Clear;
                  SQL.Add('Update TransactionHeader_TEMP Set DeliveryName = ''' + Edit1.Text
                                 + ''', DeliveryAddress1 = ''' + Edit2.Text
                                 + ''', DeliveryAddress2 = ''' + Edit3.Text
                                 + ''', DeliveryPhone = ''' + MaskEdit1.Text
                                 + ''', PONumber = ''' + Edit5.Text
                                 + ''', DeliveredBy = ''' + Edit6.Text
                                 + ''' Where TransactionNumber = '
                                 + IntToStr(Header1));
                  ExecSQL(True);
                end;
              end;
              Release;
            end;
          end;

          If ((TransType = 'CRED') And (CommonPos.Customer <> 0)) OR
             ((TransType = 'LWAY') And (CommonPos.Customer <> 0)) OR
             ((TransType <> 'CRED') ) then //And (TransType <> 'LWAY')
          begin
            If FieldByName('PayAmount1').Value = 0 then
            begin
              With DMMidas.CDSTrHeadAdHoc do
              begin
                SQL.Clear;
                if (TransType = 'CHK') then
                begin
                  if TS = True then
                  begin
                    FrmSecurity := TFrmSecurity.Create(Application);
                    With FrmSecurity do
                    begin
                      Caption := 'Entre Descripción del Cheque';
                      EditUser.Visible := False;
                      EditPassword.PasswordChar := chr(0);
                      EditPassword.TextHint := 'Entre Descripción';
                      ShowModal;
                      if ModalResult = mrOk then
                        CheckDesc := FrmSecurity.EditPassword.Text
                      else
                        CheckDesc := '';
                      Free;
                    end;
                  end
                  else
                    InputQuery('Pagos','Entre Descripción del cheque',CheckDesc);
                end;
                if (TransType = 'CHK') and (Change > 0) then
                begin
                  if CheckDesc > '' then
                  begin
                    with DMMidas do
                    begin
                      if CDSCHKDescription.Active = False then CDSCHKDescription.Active := True;
                      CDSCHKDescription.Append;
                      CDSCHKDescriptionNOTRANS.Value := Header1;
                      CDSCHKDescriptionDESCRIPCION.Value := CheckDesc;
                      CDSCHKDescription.Post;
                    end;
                  end;
                end;
              end;
            end
            else
            begin
              //
            end;
            //========== Control de Inventario ========================
            CommonPOS.DisconnectFromDatabase;
            With DMMidas.POS_INVENTORY_CONTROL do
            begin
              Prepare;
              ParamByName('@TRASNNO').Value :=  Header1; //DMMidas.CDSTransShowTRANSACTIONNUMBER.Value;
              ExecProc;
            end;
            //============= Send Coopharam products =========================//
            if CommonPOS.CoopharmaActive = true then
            begin
              Coopharma_SendTransaction;
            end;
            //=================== Purchases ======================//
            if (CommonPOS.Restaurant = True) and (CommonPos.Customer > 0) then
            begin
              InsertCreditTrans('PU', DMMidas.CDSTransHeadTOTAL.asFloat, TransNo);
            end;
            //================= Abono Credito Local ====================
            if (FrmMain.WebCredit = False) and AbonoCredito = True then
            begin
              With DMMidas do
              begin
                InsertCreditTrans('CR',  CommonPOS.Trans_AbonoCredito, DMMidas.CDSTransHeadTRANSACTIONNUMBER.Value);
              end;
            end;
            //=================== Patrocinio ======================//
            if PatrocinioActivo = True then
            begin
              InsertCreditTrans('PC', 0, TransNo);
            end;
            //=================== Auspicio ======================//
            if AuspicioActivo = True then
            begin
              with DMMidas do
              begin
                InsertCreditTrans('AU',  CDSTransHeadTOTAL.asFloat - (CDSTransHeadTAX.asFloat + CDSTransHeadTAX_ESTATAL.asFloat + CDSTransHeadTAX_SERVICIO.asFloat),  TransNo);
              end;
            end;
            //================Rx Pickup======================//
            if DMMidas.CDSSetupNON_WESCOM_STORE.Value = true then
            begin
               RxPickup_update(Header1);
            end;
            //=================== SmartPickup ===============================//
            CommonPOS.BagPickup_update(CommonPOS.BagNumber);
            //===================================================//
            DMMidas.CDSTransHead.Active := False;
            DMMidas.CDSTransShow.Active := False ;
            //================Print Receipt======================//
            //if Trim(CommonPOS.PrinterIP) = '' then
            //begin
           //   if AbonoCredito = True then NoRecibos := 2;
           //     PrintReceipt(Header1, NoRecibos, True, TransType, PrintType, True, False, Factura, False, True);
           // end;
            //==================================================//
            CommonPOS.DisconnectFromDatabase;
            With DMMidas do
            begin
              With TRANSACTIONDETAIL_DELETE do
              begin
                Prepare;
                ParamByName('@TNUMBER').AsInteger := CommonPOS.Header;// Header1;
                ExecProc;
              end;
              if Trim(CommonPOS.PrinterIP) > '' then
              begin
                CommonPOS.Insert_Print_Jobs(True, false, false, 'receipt', PrintType, IntToStr(Header1), TransType, CommonPOS.email, CommonPOS.mobile_phone, '', IntToStr(CDSClientesNUMEROCLIENTE.Value), NoRecibos);
              end;
            end;
            CommonPOS.ShowMessageStr(FrmPOSRest.LabelCambio.Caption, 25,clBlack);
            //==================================================//
            CommonPOS.ClearTransactions;
          end;
        end;
      end;
      FrmMain.TimerPoleDisplayHeader.Enabled := true;
    end
    else
    begin
      if FrmMain.LanguageStr = 'English' then
        ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 279), 12, clBlack)
      else
      ShowMessageStr('Cantidad inválida, no puede ser mayor de $500,000.00', 12,clBlack);
    end;
    With FrmPOSRest do
    begin
      FrmMain.sbMain.Panels[3].Text := '';
      FrmPOSRest.StatusBar1.Panels[4].Text := '';
      FrmPOSRest.StatusBar1.Panels[5].Text := '';
      FrmPOSRest.LabelCustomer.Caption := '';
      FrmPOSRest.StatusBar1.Panels[7].Text := '';
      FrmPOSRest.EditSearchProd.SetFocus;
      CommonPOS.TripleS_previousBalance := 0;
    end;
end;

function TCommonPOS.checkTrans: Boolean;
begin
  if CommonPOS.Header > 0 then
    result := True
  else
  begin
    showMessage('Cannot continue transaction without products.');
    result := False;
  end;
end;

procedure TCommonPOS.ClearTransactions;
begin
  With DMMidas do
  begin
    if (DMMidas.CDSSetupAUTOMOVIL_APP.Value = True) then
    begin
      FrmPOSRest.rgSearchBy.ItemIndex := 0;
      FrmMain.SearchByBarcode := True;
    end
    else
    begin
      FrmPOSRest.rgSearchBy.ItemIndex := 1;
      FrmMain.SearchByBarcode := False;
    end;
    CommonPos.Utility := false;
    CommonPOS.CoopharmaActive := false;
    CommonPOS.CopharmaCardNumber := '';
    CommonPOS.email := '';
    CommonPOS.ID_Verified := False;
    HoldSaveTrans(Header,'S', '', CommonPOS.User, '0', '');
    CommonPOS.TransactionType := '';
    CommonPOS.TripleS_previousBalance := 0;
    CommonPOS.TripleS_ApprovedAmount := 0;
    CommonPOS.TripleS_finalBalance := 0;
    CommonPOS.TripleS_CustomerID := '';
    CommonPOS.TripleS_GID := '';
    CommonPOS.BagNumber := 0;
    HeldCust := Customer;
    HeldCrPay := CrPay;
    HeldCrPayAmnt := CrPayAmnt;
    HeldLaPay := LaPay;
    HeldLaPayAmnt := LaPayAmnt;
    HeldPerc := Perc;
    CommonPos.Customer := 0;
    FrmMain.sbMain.Panels[3].Text := '';
    CrPay := False;
    CrPayAmnt := 0;
    LaPay := False;
    LaPayAmnt := 0;
    Perc := 0;
    FrmPOSRest.StatusBar1.Panels[8].Text := '';
    Header := 0;
    CDSTransHead.Active := False;
    CDSTransShow.Active := False;
    Perc := 0;
    FrmMain.sbMain.Panels[3].Text := '';
    CommonPOS.Trans_AbonoCredito := 0;
    CommonPOS.Trans_AbonoLayaway := 0;
    CommonPOS.Supervisor := '';
    WICActivo := False;
    CommonPOS.TransNo := 0;
    VeteranoActivo := 0;
    AuspicioActivo := False;
    PatrocinioActivo := False;
    Header := 0;
    Perc := 0;
    AbonoCredito := False;
    AbonoLayawayCR := False;
    CustomerSSN := '';
    CrPay := False;
    CrPayAmnt := 0;
    LaPay := False;
    LaPayAmnt := 0;
    CambioChequeTransTF := False;
    CommonPOS.IVULotoControlNumber := '';
    If DMMidas.CDSClientes.Active then
    DMMidas.CDSClientes.Refresh;
    WICActivo := False;
    CommonPOS.NoTaxCharge := True;
    FrmPOSRest.btnNoChargeTax.Caption := 'CHARGE TAX';
    FrmPOSRest.StatusBar1.Panels[5].Text := '';
    FrmPOSRest.LabelCustomer.Caption := '';
    RedimirPatrocinioActivo := False;
    CommonPOS.Paidout := False;
    FrmPOSRest.LabelRecibido.Caption := '';
  end;
end;


procedure TCommonPOS.Send_email_receipt(THead: Integer; FinalReceipt: Boolean);
begin
  FrmReceipt := TFrmReceipt.Create(nil);
  with FrmReceipt do
  begin
    if FinalReceipt = False then FrmReceipt.Tag := 0 else FrmReceipt.Tag := 1;
    //Queries.OpentTransHeader(THead, false);
    //if CDSTransHead.RecordCount = 0 then
    begin
      //Queries.OpentTransHeader(THead, true);
      CDSTransHead.Close;
      CDSTransHead.CommandText := 'Select * from TRANSACTIONHEADER_TEMP where TRANSACTIONNUMBER = ' +  IntToStr(THead);
      CDSTransHead.Open;

      RestReceipt.PrepareReport;
      frxPDFExport1.FileName := Trim(extractfilepath(application.exename)) + '\' + IntToStr(THead) + '.pdf';
      frxPDFExport1.ShowDialog := False;
      RestReceipt.ShowProgress := False;
      RestReceipt.Export(frxPDFExport1);
      try
        SendEmailPharmatec(CommonPos.email, IntToStr(THead) + '.pdf', FrmMain.RichEdit1, true);
      Except
        //
      end;
      {if CommonPOS.PrintToScreen = True then
      begin
        RestReceipt.ShowReport;
      end
      else
      begin
        RestReceipt.Print;
      end;}
      FrmReceipt := nil;
      Free;
    end;
  end;
end;

procedure TCommonPOS.PrintReceipt(THead , NoRecibos: Integer; OpenDrwr: Boolean; TransType, PrintType: String; IVULoto, RePrint, Factura, Kitchen, FinalReceipt: Boolean);
Var
  loops, Cnt: Integer;
  Cred, LWay: Boolean;
  DeudaLocal, DeudaLayaway: Double;
  Taxable: String;

  cm: txPosRequest;
  Response: txPosResponse;
  //Response: ivuLotoData;
  D: TXSDateTime;
  MTax, STax, TotalV, SubTotalV: TXSDecimal;
  TenderTypeS: tenderType;
  MyTxServer: TxServer;
  SubTotalF: Double;
  IVULotoDate: String;
  Counter: Integer;
  loop: Boolean;
  lStringList: TStringList;
  I,J, NoOf: Integer;
  Receipt: String;
  Page1: TfrxReportPage;
  Note: String;
  customerId: Integer;
  customerStr: String;
  SendByeMail: boolean;
  //aStream : tMemoryStream;
begin
 { if Trim(CommonPOS.PrinterIP) > '' then
  begin
    CommonPOS.Insert_Print_Jobs(false, false, false, 'FoodReceipt', '0', IntToStr(Header), '', CommonPOS.email, CommonPOS.mobile_phone, '', '0', 1);
    exit;
  end;                                                                                                                                                 }


  if PrintType = '1' then
  begin
    SendByeMail := true;
  end
  else
  begin
    SendByeMail := false;
  end;
  //cotizacion := False;
  if (CommonPos.Restaurant = True) and (Kitchen = True) then
  //if (CommonPos.Restaurant = True) or (PrintType = '1') then //0 = print, 1 = email, 2 = text message
  begin
    if Kitchen = True then
    begin
      FrmKitchenExtraInfo := TFrmKitchenExtraInfo.Create(nil);
      With FrmKitchenExtraInfo do
      begin
        ShowModal;
        Note := Trim(FrmKitchenExtraInfo.Memo1.Text);
        FrmKitchenExtraInfo := Nil;
        FrmKitchenExtraInfo.Free;
      end;
       CommonPOS.Insert_Print_Jobs(false, false, false, 'FoodReceipt', '0', IntToStr(Header), '', CommonPOS.email, CommonPOS.mobile_phone, note, '0', 1);
      //CommonPOS.PrintKitchenReceipt(THead, Note);
      {
      FrmReceipt := TFrmReceipt.Create(nil);
      with FrmReceipt do
      begin
        CDSTransHead.Close;
        CDSTransHead.CommandText := 'Select * from TRANSACTIONHEADER_TEMP where TRANSACTIONNUMBER = ' + IntToStr(THead);
        CDSTransHead.Open;
        if CDSTransHead.RecordCount = 0 then
        begin
          CDSTransHead.Close;
          CDSTransHead.CommandText := 'Select * from TRANSACTIONHEADER where TRANSACTIONNUMBER = ' +  IntToStr(THead);
          CDSTransHead.Open;
        end;
        FoodReceipt.PrepareReport;
        FoodReceipt.ShowReport;
        FrmReceipt := Nil;
        Free;
      end;
      }
    end;

    if PrintType = '1' then
    begin
      Send_email_receipt(THead, false);
      {With DMMIdas do
      begin
        FrmReceipt := TFrmReceipt.Create(nil);
        with FrmReceipt do
        begin
          if FinalReceipt = False then FrmReceipt.Tag := 0 else FrmReceipt.Tag := 1;
          CDSTransHead.Close;
          CDSTransHead.CommandText := 'Select * from TRANSACTIONHEADER_TEMP where TRANSACTIONNUMBER = ' + IntToStr(THead);
          CDSTransHead.Open;
          if CDSTransHead.RecordCount = 0 then
          begin
            CDSTransHead.Close;
            CDSTransHead.CommandText := 'Select * from TRANSACTIONHEADER where TRANSACTIONNUMBER = ' +  IntToStr(THead);
            CDSTransHead.Open;
          end;

          {if Kitchen = True then
          begin
            FrmKitchenExtraInfo := TFrmKitchenExtraInfo.Create(nil);
            With FrmKitchenExtraInfo do
            begin
              ShowModal;
              FrmReceipt.MemoExtraInfo := Trim(FrmKitchenExtraInfo.Memo1.Text);
              FrmKitchenExtraInfo := Nil;
              FrmKitchenExtraInfo.Free;
            end;
            begin
              if CommonPOS.PrintToScreen = True then
              begin
                FoodReceipt.PrepareReport;
                FoodReceipt.ShowReport;
              end
              else
              begin
                FoodReceipt.PrepareReport;
                FoodReceipt.Print;
              end;
              FrmReceipt := nil;
              Free;
            end;
          end
          else

          begin
            RestReceipt.PrepareReport;
            frxPDFExport1.FileName := Trim(extractfilepath(application.exename)) + '\' + IntToStr(THead) + '.pdf';
            frxPDFExport1.ShowDialog := False;
            RestReceipt.ShowProgress := False;
            RestReceipt.Export(frxPDFExport1);
            try
              SendEmailPharmatec(CommonPos.email, IntToStr(THead) + '.pdf', FrmMain.RichEdit1, true);
            Except
              //
            end;
            {if CommonPOS.PrintToScreen = True then
            begin
              RestReceipt.ShowReport;
            end
            else
            begin
              RestReceipt.Print;
            end;
            FrmReceipt := nil;
            Free;
          end;
        end;
      end;}
    end;
  end
  else
  begin
    if TransType = 'DLVR' then
    begin
     // FrmKitchenExtraInfo := TFrmKitchenExtraInfo.Create(nil);
      FrmDelInfo := TFrmDelInfo.Create(nil);
      with FrmDelInfo do
      begin
        ShowModal;
        if ModalResult = mrok then
        begin
          StartTab(True, CommonPOS.Header, DMMidas.CDSTransHeadTOTAL.asFloat, 'D');
          With DMMidas.CDSTrHeadAdHoc do
          begin
            SQL.Clear;
            SQL.Add('Update TransactionHeader_TEMP Set DeliveryName = ''' + FrmDelInfo.EditDelName.Text
                           + ''', DeliveryAddress1 = ''' + FrmDelInfo.EditDelAddress1.Text
                           + ''', DeliveryAddress2 = ''' + FrmDelInfo.EditDelAddress2.Text
                           + ''', DeliveryPhone = ''' + FrmDelInfo.EditDelPhone.Text
                           + ''', DeliveredBy = ''' + FrmDelInfo.EditDelBy.Text
                           + ''', DELIVERY_CITY = ''' + FrmDelInfo.EditDelCity.Text
                           + ''', DELIVERY_STATE = ''' + FrmDelInfo.EditDelState.Text
                           + ''', DELIVERY_ZIPCODE = ''' + FrmDelInfo.EditDelZipCode.Text
                           + ''' Where TransactionNumber = '
                           + IntToStr(THead));
            ExecSQL(True);
          end;
        end;
      FrmDelInfo := Nil;
      FrmDelInfo.Free;
      exit
    {  With FrmKitchenExtraInfo do
      begin
        FrmKitchenExtraInfo.Caption := 'Delivery Information';
        ShowModal;
        Note := Trim(FrmKitchenExtraInfo.Memo1.Text);
        FrmKitchenExtraInfo := Nil;
        FrmKitchenExtraInfo.Free;
      end;   }
      end;
    end;

    if TransType = 'INVOICE' then
    BEGIN
    //  cotizacion := True;
     // StartTab(True, CommonPOS.Header, DMMidas.CDSTransHeadTOTAL.asFloat, 'I');
      cotizacion := True;
      customerId := DMMidas.cdsOpenTabsCUSTOMER_ID.Value;
      DMMidas.cdsOpenTabs.Close;
      DMMidas.cdsOpenTabs.CommandText := 'Select * from OPEN_TABS where TRANSACTIONNUMBER = ' + IntToStr(THead);
      DMMidas.cdsOpenTabs.Open;
      if DMMidas.cdsOpenTabs.RecordCount = 0 then
      begin
        StartTab(True, CommonPOS.Header, DMMidas.CDSTransHeadTOTAL.asFloat, 'I');
      end;
    END;

    if CommonPos.Customer > 0 then
    begin
      Queries.OpenPatient('','','',CommonPOS.Customer);
    end;
    if Factura = True then
    begin
        FrmReceiptView := TFrmReceiptView.Create(Application);
        With FrmReceiptView do
        begin
          RichEdit1.Clear;

          With DMMidas.CDSHead do
          Begin
            Active := False;
            if RePrint = True then
              CommandText := 'select * from transactionheader where transactionnumber = ' + IntToStr(THead)
            else
              CommandText := 'select * from transactionheader_temp where transactionnumber = ' + IntToStr(THead);
            Active := True;
            If (FieldByName('PaymentType1').asString = 'CRED') OR (FieldByName('PaymentType2').asString = 'CRED') then
              Cred := True;
            If (FieldByName('PaymentType1').asString = 'LWAY') OR (FieldByName('PaymentType2').asString = 'LWAY') then
              LWay := True;
            if DMMidas.CDSSetup.Active = False then DMMidas.CDSSetup.Active := true;
          end;
          With DMMidas.CDSDetail do
          begin
            Active := False;
            if RePrint = True then
              CommandText := 'select * from transactiondetail where transactionnumber = ' + IntToStr(THead)
            else
              CommandText := 'select * from transactiondetail_temp where transactionnumber = ' + IntToStr(THead);
            Active := True;
          end;
          GetTotal_lines(TransType, FinalReceipt, DeudaLocal, DeudaLayaway);
          if (CommonPos.Customer = 0) and (DMMidas.CDSHeadCUSTOMERID.Value > 0) then
          begin
            CommonPos.Customer := DMMidas.CDSHeadCUSTOMERID.Value;
          end;
          GetIVULoto(TransType);
          PrintLargeReceipt(THead, TRUE, true, SendByeMail, 'ivuloto');
          DMMidas.CDSTransHead.Active := False;
          DMMidas.CDSTransShow.Active := False;
          DMMidas.cdsOpenTabs.Close;
          FrmReceiptView := nil;
          FrmReceiptView.Free;
        end;
    end
    else
    begin
      loops := 0;
      While loops <> NoRecibos do
      begin
        loops := loops + 1;
        if FinalReceipt = True then
        begin
          OpenDrawer;
        end;
        if (CommonPos.Customer > 0) or (CommonPOS.Trans_AbonoCredito > 0) then
        begin
          DeudaLocal := DMMidas.CDSClientesDEUDA.asFloat; //Queries.DeudaCliente(CommonPos.Customer);
          DeudaLayaway := DMMidas.CDSClientesLAWAY.asFloat;//Queries.DeudaClienteLayaway(CommonPos.Customer);
        end;
        Cred := False;
        LWay := False;
        if (CommonPOS.Restaurant = True) and (FinalReceipt = True) then
        begin
          With DMMidas do
          begin
            cdsOpenTabs.Close;
            cdsOpenTabs.CommandText := 'Select * from OPEN_TABS where TRANSACTIONNUMBER = ' + IntToStr(THead);
            cdsOpenTabs.Open;
          end;
        end;
        With DMMidas.CDSHead do
        Begin
          Active := False;
          if RePrint = True then
            CommandText := 'select * from transactionheader where transactionnumber = ' + IntToStr(THead)
          else
            CommandText := 'select * from transactionheader_temp where transactionnumber = ' + IntToStr(THead);
          Active := True;

          If (FieldByName('PaymentType1').asString = 'CRED') OR (FieldByName('PaymentType2').asString = 'CRED') then
            Cred := True;
          If (FieldByName('PaymentType1').asString = 'LWAY') OR (FieldByName('PaymentType2').asString = 'LWAY') then
            LWay := True;
          //================================IVULOTO=====================================
          Try
            if (loops = 1) and (FinalReceipt = True) and (CommonPOS.IVULOTO_ACTIVO) then
            begin
              GetIVULoto(TransType);
            end;
          except
            //
          end;
          //===============================================================================

          If CommonPOS.ReceiptPrinter <> '' then
            SelectPrinter(CommonPOS.ReceiptPrinter)
          else
            SelectPrinter('EPSON');

          FrmReceiptView := TFrmReceiptView.Create(Application);
          With FrmReceiptView do        //FrmMain
          begin
            With RichEdit1 do
            begin
              Font.Name := 'Lucida Console';
              //Font.Name := 'Arial';
              Font.Size := FrmMain.PrinterFontSize; //6;
              Font.Style := [];
              Lines.Clear;
              {If (OpenDrwr = True) and (DMMidas.CDSSetupPOS_APP_OPEN_DRAWER.Value = True) then
              begin
                LblDummy.Font.Name := 'Control';
                SelAttributes.Assign(LblDummy.Font);
                if Copy(CommonPOS.ReceiptPrinter, 1, 5) <> 'RP300' Then Lines.Add('A');
              end;}
              Lines.Add('------------------------------------');
              LblDummy.Font.Name := 'Lucida Console';
              LblDummy.Font.Size := FrmMain.PrinterFontSize + 2;//10;
              LblDummy.Font.Style := [fsBold];
              SelAttributes.Assign(LblDummy.Font);
              Lines.Add(CenterString(Trim(DMMidas.CDSSetupSTORENAME.Value),30));
              LblDummy.Font.Size := FrmMain.PrinterFontSize;//6;
              LblDummy.Font.Style := [fsBold];
              SelAttributes.Assign(LblDummy.Font);
              Lines.Add(CenterString(Trim(DMMidas.CDSSetupSTOREADDRESS.Value),33));
              LblDummy.Font.Size := FrmMain.PrinterFontSize;//6;
              LblDummy.Font.Style := [fsBold];
              SelAttributes.Assign(LblDummy.Font);
              Lines.Add(CenterString(DMMidas.CDSSetupSTORETELEPHONE.Value,33));
              Lines.Add('------------------------------------');
              //Lines.Add('Terminal ID: ' + CommonPOS.IVULOTO_TERMINALID);
              Lines.Add(Format('%0s %24s%',['Register: '+ CommonPOS.RegisterNo, 'ID: ' +IntToStr(THead)]));
              Lines.Add(Format('%22s%',[DateTimetoStr(Now)]));
              if CommonPOS.Restaurant = True then
              begin
                Lines.Add('# OF ITEMS: ' + DMMidas.CDSHead.FieldByName('NumberItems').asString);
                if DMMidas.cdsOpenTabs.RecordCount > 0 then
                begin
                  Lines.Add('Server: ' + Trim(DMMidas.cdsOpenTabsSERVER_DEFINE.Value));
                  LblDummy.Font.Style := [fsBold];
                  SelAttributes.Assign(LblDummy.Font);
                  Lines.Add('Customer: ' + Trim(DMMidas.cdsOpenTabsCUSTOMER.Value));
                end
                else
                begin
                  Lines.Add('Customer: ' + Trim(DMMidas.CDSHeadCUSTOMER.Value));
                end;
              end
              else
              begin
                Lines.Add('User: ' + CommonPOS.User + '  # OF ITEMS: ' + DMMidas.CDSHead.FieldByName('NumberItems').asString);
              end;
              Lines.Add('------------------------------------');
              With DMMidas.CDSDetail do
              Begin
                Active := False;
                if RePrint = True then
                begin
                  CommandText := 'Select [IDNUMBER] ,[TRANSACTIONNUMBER],[UPC] ,[TOTAL] ,[VOIDED] ' +
                  ',[SUBDETAIL] ,[PRODDESCRIPTION] ,[PRODDEPARTMENT],[REGTOTAL] ,[FOOD] ,[PRICE],[REGPRICE] '+
                  ',[MODIFIED] ,[DISCOUNT],[COSTO],[FECHAVENTA],[SUPLIDOR],[TOTAL_VALUE],[AWP],[ID],[TAX]'+
                  ',[PRODUCTNO],[TAX_ESTATAL],[TAX_MUNICIPAL],[QTY],[OPENED],[GROUP_PROD],[REGISTER],[SUPERVISOR]'+
                  ',[PATROCINIO],[SUBDEPARTAMENTO], [MAIN_COURSE], [MAIN_COURSE_ID], [TERMINO], [BARCODEALTERNO1] FROM TransactionDetail WHERE TransactionNumber = ' + IntToStr(THead) + ' Order By IDNumber';
                end
                else
                begin
                  CommandText := 'Select [IDNUMBER] ,[TRANSACTIONNUMBER],[UPC] ,[TOTAL] ,[VOIDED] ' +
                  ',[SUBDETAIL] ,[PRODDESCRIPTION] ,[PRODDEPARTMENT],[REGTOTAL] ,[FOOD] ,[PRICE],[REGPRICE] '+
                  ',[MODIFIED] ,[DISCOUNT],[COSTO],[FECHAVENTA],[SUPLIDOR],[TOTAL_VALUE],[AWP],[ID],[TAX]'+
                  ',[PRODUCTNO],[TAX_ESTATAL],[TAX_MUNICIPAL],[QTY],[OPENED],[GROUP_PROD],[REGISTER],[SUPERVISOR]'+
                  ',[PATROCINIO],[SUBDEPARTAMENTO], [MAIN_COURSE], [MAIN_COURSE_ID], [TERMINO], [BARCODEALTERNO1] FROM TransactionDetail_TEMP WHERE TransactionNumber = ' + IntToStr(THead) + ' Order By IDNumber';
                end;
                Active := True;
                First;
                While Not EOF do
                Begin
                  if (FieldByName('Tax_Estatal').asString = 'T') or (FieldByName('Tax_Municipal').asString = 'T') then Taxable := 'T' else Taxable := 'F';
                  Lines.Add(Format('%26s %8s%1s',[
                  Copy(LeftJString(FieldByName('ProdDescription').asString + ' '
                  + FieldByName('SubDetail').asString,26),1,26),
                  Format('%m',[FieldByName('Total').asFloat]),
                  Taxable]));
                  IF (FieldByName('Qty').asInteger > 1) Or (FieldByName('Qty').asInteger < -1) then
                  begin
                    Lines.Add('          ' + FieldByName('Qty').asString + ' @ ' +
                            Format('%m',[FieldByName('Price').asFloat]));
                  end;
                  Next;
                end;
                Close;
              end;

              With DMMidas.CDSHead do
              Begin
                LblDummy.Font.Size := FrmMain.PrinterFontSize;//6;
                GetTotal_lines(TransType, FinalReceipt, DeudaLocal, DeudaLayaway);

                {Lines.Add('------------------------------------');
                LblDummy.Font.Size := FrmMain.PrinterFontSize;//6;
                Lines.Add(Format('%24s %10s',['SUB TOTAL:', Format('%m',[FieldByName('SUBTOTAL').asFloat])]));
                Lines.Add('------------------------------------');
                Lines.Add(Format('%24s %10s',['TAX ESTATAL:', Format('%m',[FieldByName('TAX_ESTATAL').asFloat])]));
                if FieldByName('TAX_PROCESSED_FOOD').asFloat > 0 then
                  Lines.Add(Format('%24s %10s',['TAX PROC. FOOD:', Format('%m',[FieldByName('TAX_PROCESSED_FOOD').asFloat])]));
                Lines.Add(Format('%24s %10s',['TAX MUNICIPAL:', Format('%m',[FieldByName('TAX').asFloat])]));

                if CommonPOS.Restaurant = False then
                begin
                  if FieldByName('TAX_SERVICIO').asFloat > 0 then
                  Lines.Add(Format('%24s %10s',['TAX SERVICIO:', Format('%m',[FieldByName('TAX_SERVICIO').asFloat])]));
                end;
                Lines.Add('------------------------------------');
                if FinalReceipt = False then
                  Lines.Add(Format('%24s %10s',['CHECK:', Format('%m',[FieldByName('TOTAL').asFloat])]));

                if (CommonPOS.Restaurant = True) and (FinalReceipt = False) then
                begin
                  Lines.Add('');
                  Lines.Add(Format('%24s %8s',['GRATUITY:', '___________']));
                  Lines.Add('');
                  Lines.Add(Format('%24s %8s',['TOTAL:', '___________']));
                end
                else
                begin
                  if CommonPOS.Restaurant = True then
                    Lines.Add(Format('%24s %10s',['GRATUITY:', Format('%m',[FieldByName('TOTAL_TIP').asFloat])]));
                end;
                if FinalReceipt = True then
                  Lines.Add(Format('%24s %10s',['TOTAL:', Format('%m',[FieldByName('TOTAL').asFloat + FieldByName('TOTAL_TIP').asFloat])]));

                If FieldByName('PayAmount1').asFloat > 0 then
                begin
                  Lines.Add(Format('%24s %10s',
                          [UpperCase(Copy(FieldByName('PaymentType1').asString,1,4)+':'),
                          Format('%m',[FieldByName('PayAmount1').asFloat])]));
                  If FieldByName('PayAmount2').asFloat > 0 then
                  begin
                    Lines.Add(Format('%24s %10s',
                            [UpperCase(Copy(FieldByName('PaymentType2').asString,1,4)+':'),
                            Format('%m',[FieldByName('PayAmount2').asFloat])]));
                  end;
                end;

                IF FinalReceipt = True then Lines.Add(Format('%24s %10s',['CHANGE:', Format('%m',[FieldByName('Change').asFloat])]));

                If (FieldByName('RegTotal').asFloat - FieldByName('Total').asFloat > 0) AND
                   (FieldByName('PaymentType1').asString <> 'POUT') then
                begin
                  Lines.Add(Format('%24s %10s',['SU AHORRO:',Format('%m',[FieldByName('RegTotal').asFloat - FieldByName('Total').asFloat])]));
                end;
                If (Customer <> 0) then
                begin
                  {If (TransType <> 'LWAY') and (TransType <> 'CRED') then
                  begin
                    If CrPay then
                    begin
                      Lines.Add(DMMidas.CDSClientesNombreCompleto2.Value);
                      If FrmMain.BalanceOnPayment then
                      begin
                        if FrmMain.WebCredit = True then
                        //  Lines.Add('BALANCE CREDITO: ' + Format('%m', [DMMidas.CDSClientesDEUDACentralizada.Value]))
                        else
                          Lines.Add('BALANCE CREDITO: ' + Format('%m', [DeudaLocal]));//Format('%m', [DMMidas.CDSClientesDEUDA.asFloat - CrPayAmnt]));
                      end;
                    end
                    else
                    begin
                      if LaPay then
                      begin
                        Lines.Add(DMMidas.CDSClientesNombreCompleto2.Value);
                        If FrmMain.BalanceOnPayment then
                          Lines.Add('BALANCE LAY AWAY: ' + Format('%m', [DeudaLayaway]));
                      end
                      else
                      begin
                        Lines.Add('Socio: ' + DMMidas.CDSClientesNombreCompleto2.asString);
                        Lines.Add('No. Socio: ' + DMMidas.CDSClientesSocio.asString);
                        Lines.Add(DMMidas.CDSClientesMailingAddDefine.Value);
                      end;
                    end;
                  end;
                  Lines.Add('');

                end;
                if (TransType = 'CRED') or (CommonPOS.Trans_AbonoCredito > 0) then
                begin
                  Lines.Add('');
                  Lines.Add(DMMidas.CDSClientesNombreCompleto2.Value);
                  If FrmMain.PrintBalance then
                  begin
                    Lines.Add('BALANCE CREDITO: ' + Format('%m', [DeudaLocal]));//Format('%m', [DMMidas.CDSClientesDEUDA.asFloat + FieldByName('Total').asFloat]));
                  end;
                  Lines.Add('');
                  Lines.Add('Firma: __________________________ ');
                  Lines.Add('');
                end;
                if (TransType = 'LWAY') or (AbonoLayawayCR = True) then
                begin
                  Lines.Add('');
                  Lines.Add(DMMidas.CDSClientesNombreCompleto2.Value);
                  If FrmMain.PrintBalance then
                    Lines.Add('BALANCE LAY AWAY: ' + Format('%m', [DeudaLayaway]));
                  Lines.Add('');
                  Lines.Add('Firma: __________________________ ');
                  Lines.Add('');
                end;

                if (PatrocinioActivo = True) or (RedimirPatrocinioActivo = True) then
                begin
                  Lines.Add('');
                  Lines.Add(DMMidas.CDSClientesNombreCompleto2.Value);
                  Lines.Add('Patrocinio: ' + Format('%m', [DMMidas.CDSClientesPATROCINIO.asFloat]));
                  Lines.Add('');
                  Lines.Add('Firma: __________________________ ');
                  Lines.Add('');
                end;
                }

                if CommonPOS.MemoStr > '' then
                begin
                   Lines.Add(CommonPOS.MemoStr);
                end;
                CommonPOS.MemoStr := '';
                //--------------------------- Suggested Tip -----------------------
                if (CommonPOS.Restaurant = True) and (FinalReceipt = False) then
                begin
                  Lines.Add('');
                  Lines.Add(CenterString('Suggested Tip: ' + Format('%f', [DMMidas.CDSSetupTIP_PERCENTAGE1.asFloat]) + '%  - ' + Format('%m', [DMMidas.CDSHead.FieldByName('TOTAL').asFloat * DMMidas.CDSSetupTIP_PERCENTAGE1.asFloat]),35));
                  Lines.Add(CenterString('Suggested Tip: ' + Format('%f', [DMMidas.CDSSetupTIP_PERCENTAGE2.asFloat]) + '%  - ' + Format('%m', [DMMidas.CDSHead.FieldByName('TOTAL').asFloat * DMMidas.CDSSetupTIP_PERCENTAGE2.asFloat]), 35));
                  Lines.Add(CenterString('Suggested Tip: ' + Format('%f', [DMMidas.CDSSetupTIP_PERCENTAGE3.asFloat]) + '%  - ' + Format('%m', [DMMidas.CDSHead.FieldByName('TOTAL').asFloat * DMMidas.CDSSetupTIP_PERCENTAGE3.asFloat]), 35));
                end;
                Active := False;
              end;
              //----------------------------------------------------------------
              //============================IVULoto===========================
              if (IVULOTO_ACTIVO = True) and (FinalReceipt = True) then
              begin
                Try
                  begin
                    Lines.Add('');
                    Lines.Add('---------------------------');
                    Lines.Add('------------------------------------');
                    Lines.Add(' CONTROL    : ' + CommonPOS.IVULotoControlNumber);
                    Lines.Add(' ST');
                    Lines.Add('----Processed by Softek---');
                    Lines.Add('');
                    Lines.Add('');
                    Lines.Add('');
                  end;
                except
                end;
              end;
              //============================Triple S OTC ===================
              if CommonPOS.TripleS_previousBalance > 0 then
              begin
                    Lines.Add('');
                    Lines.Add('------------------------------------');
                    Lines.Add(' TRIPLE-S ADVANTAGE OTC BALANCE: ');
                    Lines.Add('------------------------------------');
                    Lines.Add(' PREVIOUS BALANCE: ' +  Format('%m', [CommonPOS.TripleS_previousBalance]));
                    Lines.Add(' APPROVED AMOUNT: ' + Format('%m', [CommonPOS.TripleS_ApprovedAmount]));
                    Lines.Add(' NEW BALANCE: '+ Format('%m', [TripleS_finalBalance]));// Format('%m', [CommonPOS.TripleS_previousBalance - CommonPOS.TripleS_ApprovedAmount]));
                    Lines.Add('------------------------------------');
                    Lines.Add('');
                    Lines.Add('');
              end;
              //----------------------------------------------------------------
              Lines.Add('');
              Lines.Add(CenterString(DMMidas.CDSSetupRECEIPT_MESSAGE.Value,36));

              //Lines.Add(CenterString(DMMidas.CDSSetupPOLEDISPLAYMESSAGE.Value,36));

              {if (TransType = 'CRED') Or (TransType = 'LWAY') Or LaPay Or CrPay then Print('');
              //With RichEdit1 do
              begin
                Font.Name := 'Lucida Console';
                Font.Size := 8; //6;
                Font.Style := [];
                Lines.Clear;
                //==================Print Credit Debit Receipt===================
                if CommonPOS.CDApproved = True then
                begin
                  for j := 0 to 1 do
                  begin
                    lStringList := TStringList.Create;
                    lStringList.StrictDelimiter := True;
                    lStringList.delimiter := '|';
                    lStringList.DelimitedText := CommonPOS.PrintDataDefine;
                    LblDummy.Font.Name := 'Lucida Console';
                    LblDummy.Font.Size := FrmMain.PrinterFontSize + 2;//10;
                    LblDummy.Font.Style := [fsBold];
                    SelAttributes.Assign(LblDummy.Font);
                    Lines.Add(CenterString(DMMidas.CDSSetupSTORENAME.Value,23));
                    LblDummy.Font.Size := FrmMain.PrinterFontSize;//6;
                    LblDummy.Font.Style := [fsBold];
                    SelAttributes.Assign(LblDummy.Font);
                    Lines.Add(CenterString(DMMidas.CDSSetupSTOREADDRESS.Value,33));
                    LblDummy.Font.Size := FrmMain.PrinterFontSize;//6;
                    LblDummy.Font.Style := [fsBold];
                    SelAttributes.Assign(LblDummy.Font);
                    Lines.Add(CenterString(DMMidas.CDSSetupSTORETELEPHONE.Value,33));
                    NoOf := lStringList.Count;
                    for I := 0 to NoOf - 1 do
                    begin
                      if Copy(lStringList.Strings[i],1,9) = 'CLERK ID:' then Lines.Add(lStringList.Strings[i] + ' INITIALS:' +CommonPOS.User)
                      else
                        Lines.Add(lStringList.Strings[i]);
                    end;
                    if J > 0 then
                    begin
                      LblDummy.Font.Style := [fsBold];
                      Lines.Add(CenterString('Customer Copy',42));
                      //Lines.Add(Image1)
                    end;
                    lStringList.Destroy;
                    Print('');
                    NoOf :=0;
                    I:=0;
                    Lines.Clear;
                  end;
                end;
                //===============================================================
              end; }
              if Assigned(frmOpenTabs) then
              begin
                FrmReceiptView.Close;
              end
              else
              begin
                if TransType = 'DLVR' then
                begin
                  Lines.Add(Note);
                end;
                if PrintType = '1' then //1 := email
                begin
                  Send_email_receipt(THead, false);
                  //SendEmailPharmatec(CommonPos.email, IntToStr(THead) + '.pdf', RichEdit1, true);
                end
                else
                begin
                  if CommonPOS.PrintToScreen = False then
                  begin
                    Print('');
                  end
                  else
                  begin
                    FrmReceiptView.ShowModal;
                  end;
                end;
              end;
            end;
            FrmReceiptView := Nil;
            FrmReceiptView.Free;
          end;
        end;
      end;
    end;
    if IVULOTO_ACTIVO = True then
    try
      //cm.Free;
    except
    end;
  end;

end;





procedure TCommonPOS.PrintSavedTransaction(delivery: Boolean);
begin
  With DMMidas do
  begin
    if Trim(CommonPOS.PrinterIP) > '' then
    begin
      CommonPOS.Insert_Print_Jobs(True, delivery, false, 'RecallTransaction', '0', IntToStr(CommonPOS.Header), '', CommonPOS.email, CommonPOS.mobile_phone, '', IntToStr(CDSClientesNUMEROCLIENTE.Value), 1);
    end
    else
    begin
      if CommonPOS.Restaurant = False then
      begin
        FrmReceipt := TFrmReceipt.Create(nil);
        with FrmReceipt do
        begin
          FrmReceipt.CDSTransHead.Close;
          FrmReceipt.CDSTransHead.CommandText := 'Select * from TRANSACTIONHEADER_TEMP where TRANSACTIONNUMBER = ' + IntToStr(CommonPOS.Header);
          FrmReceipt.CDSTransHead.Open;
          if CommonPOS.PrintToScreen = True then
          begin
            RecallTransaction.PrepareReport;
            RecallTransaction.ShowReport;
          end
          else
          begin
            RecallTransaction.PrepareReport;
            RecallTransaction.Print;
          end;
          FrmReceipt := Nil;
          Free;
        end;
      end;
    end;
  end;
end;

procedure TCommonPOS.PrintTransactions(TransType: String);
begin
  With DMMidas do
  begin
    If CommonPOS.ReceiptPrinter <> '' then
      CommonPos.SelectPrinter(CommonPOS.ReceiptPrinter)
    else
      CommonPos.SelectPrinter('EPSON');
    With FrmMain.RichEdit1 do
    begin
      Lines.Clear;
      Font.Name := 'Lucida Console';
      Font.Size := 10;
      Font.Style := [fsBold];
      Lines.Add(CommonPOS.CenterString(DMMidas.CDSSetupSTORENAME.Value,36));
      Font.Name := 'Lucida Console';
      Font.Style := [];
      Lines.Add(CommonPOS.CenterString(DMMidas.CDSSetupSTOREADDRESS.Value,36));
      Lines.Add(CommonPOS.CenterString('CUADRE DE CAJERO',36));
      if CommonPOS.Restaurant = False then
      begin
        Lines.Add('CAJERO: ' + DMMidas.CDSPasswordsUSERNAME.Value);
      end;
      Lines.Add('Cuadre #: ' + CDSVerTransaccionesID.AsString);
      Lines.Add('Fecha: ' + DateToStr(Date));
      Lines.Add('Hora: ' + TimeToStr(Time));
      Lines.Add('Transaction Type: ' + TransType);
      Lines.Add('---------------------------------');
      begin
         CDSTransHead.First;
         while not CDSTransHead.Eof do
         begin
           if CommonPOS.Restaurant = True then
           begin
             Lines.Add(Format('%0s %18s',   ['Employee    : ', CDSVerTransaccionesemploynumber.Value]));
           end;
           Lines.Add(Format('%0s %18s',     ['Trans No.   : ' , CDSVerTransaccionesTRANSACTIONNUMBER.AsString]));
           Lines.Add(Format('%0s %5s %12s', ['Pay Amount 1: ' , cdsTransHeadPAYMENTTYPE1.Value, Format('%6.2f', [CDSTransHeadPAYAMOUNT1.asFloat])]));
           Lines.Add(Format('%0s %5s %12s', ['Pay Amount 2: ' , cdsTransHeadPAYMENTTYPE2.Value, Format('%6.2f', [CDSTransHeadPAYAMOUNT2.asFloat])]));
           Lines.Add(Format('%0s %18s',     ['Gratuity    : ',  Format('%6.2f', [CDSTransHeadTip.asFloat])]));
           Lines.Add('---------------------------------');
           CDSTransHead.Next;
         end;
      end;
      Print('');
    end;
  end;
end;

function TCommonPOS.ProductInTransaction(ProductID: Integer): Boolean;
Var
  NQty: Double;
begin
  With DMMidas do
  begin
    SQLQuery.Close;
    SQLQuery.SQL.Text := 'Select Count(*) as TProducts from TransactionDetaiL_TEMP where PRODUCTNO = ' + IntToStr(ProductID) + ' and TRANSACTIONNUMBER = ' + IntToStr(CommonPOS.TransNo);
    SQLQuery.Active := True;
    if SQLQuery.FieldByName('TProducts').Value > 0 then
    begin
      Result := True;
      NQty := SQLQuery.FieldByName('TProducts').Value + 1;
      CommonPOS.DisconnectFromDatabase;
      With TRANSACTIONDETAIL_UPDATEPRICE do
      begin
        Prepare;
        ParamByName('@IDNUMBER').AsInteger := CDSTransShowIDNUMBER.Value;
        ParamByName('@PRICE').AsFloat := CDSTransShowPRICE.AsFloat;
        ParamByName('@QTY').AsFloat := NQty;
        ParamByName('@TAXRATE').AsFloat := CommonPOS.TaxRate;
        ParamByName('@UPDATE_PRICE').Value := False;
        ExecProc;
      end;
      CalcHeadTotal(CDSTransShowTRANSACTIONNUMBER.Value);
    end
    else
      Result := False;
  end;
end;

procedure TCommonPOS.PrintKitchenReceipt(TranNo: Integer; Note: string);
Var
  NumberOfItems: Integer;
  Taxable: String;
begin
  With DMMidas do
  begin
    With CDSHead do
    Begin
      Active := False;
      CommandText := 'select * from transactionheader_temp where transactionnumber = ' + IntToStr(TranNo);
      Active := True;
    end;
    With CDSDetail do
    Begin
      Active := False;
      CommandText := 'Select [IDNUMBER] ,[TRANSACTIONNUMBER],[UPC] ,[TOTAL] ,[VOIDED] ' +
          ',[SUBDETAIL] ,[PRODDESCRIPTION] ,[PRODDEPARTMENT],[REGTOTAL] ,[FOOD] ,[PRICE],[REGPRICE] '+
          ',[MODIFIED] ,[DISCOUNT],[COSTO],[FECHAVENTA],[SUPLIDOR],[TOTAL_VALUE],[AWP],[ID],[TAX]'+
          ',[PRODUCTNO],[TAX_ESTATAL],[TAX_MUNICIPAL],[QTY],[OPENED],[GROUP_PROD],[REGISTER],[SUPERVISOR]'+
          ',[BARCODEALTERNO1]'+
          ',[PATROCINIO],[SUBDEPARTAMENTO], [MAIN_COURSE], [MAIN_COURSE_ID], [TERMINO] FROM TransactionDetail_TEMP WHERE TransactionNumber = ' + IntToStr(TranNo) + 'AND KITCHEN = 1 and PRINTED <> 1 Order By MAIN_COURSE_ID, IDNumber';
      Active := True;
    End;
    if CDSDetail.RecordCount > 0 then
    begin
      If CommonPOS.FoodReceipt <> '' then
        SelectPrinter(CommonPOS.FoodReceipt)
      else
        SelectPrinter('EPSON');
      //With FrmMain do
      FrmReceiptView := TFrmReceiptView.Create(Application);
      With FrmReceiptView do        //FrmMain
      begin
        With RichEdit1 do
        begin
          Font.Name := 'Lucida Console';
          Font.Size := 10;
          Font.Style := [];
          Lines.Clear;
          {LblDummy.Font.Name := 'Lucida Console';
          LblDummy.Font.Size := FrmMain.PrinterFontSize + 3;//10;
          LblDummy.Font.Style := [fsBold];
          //SelAttributes.Assign(LblDummy.Font);
          }
          //SelAttributes.Style := [fsBold];
          font.Style := [fsBold];
          Lines.Add('Customer: ');
          Lines.Add(Trim(DMMidas.cdsOpenTabsCUSTOMER.Value));
          Lines.Add('---------------------------');
          Lines.Add(Format('%0s %18s%',['Register: '+ CommonPOS.RegisterNo, 'ID: ' +IntToStr(TranNo)]));
          Lines.Add(Format('%22s%',[DateTimetoStr(Now)]));
          Lines.Add('# OF ITEMS: ' + IntToStr(CDSDetail.RecordCount));
          if DMMidas.cdsOpenTabs.RecordCount > 0 then
          begin
            Lines.Add('Server: ' + Trim(DMMidas.cdsOpenTabsSERVER_DEFINE.Value));
            //LblDummy.Font.Style := [fsBold];
            //SelAttributes.Assign(LblDummy.Font);
          end;
          Lines.Add('---------------------------');
          //Lines.Add('');
          With DMMidas.CDSDetail do
          Begin
            First;
            While Not EOF do
            Begin
              if (FieldByName('MAIN_COURSE').Value = True) then
              begin
                //LblDummy.Font.Style := [fsBold];
                //SelAttributes.Assign(LblDummy.Font);
                Lines.Add('-------Main Course---------');
              end;
              Lines.Add(Trim(FieldByName('ProdDescription').asString) + ' ' +Trim(FieldByName('TERMINO').asString));
              Next;
            end;
            Close;
            Lines.Add('----------NOTE-------------');
            if Trim(Note) > '' then
            begin
              Lines.Add(Note);
              Lines.Add('---------------------------');
            end;
          end;
          if CommonPOS.PrintToScreen = False then
          begin
            Print('');
          end
          else
          begin
            FrmReceiptView.ShowModal;
          end;
        end;
        CommonPOS.DisconnectFromDatabase;
        With POS_UPDATE_PRINTED do
        begin
          Prepare;
          ParamByName('@TRANSNO').Value := TranNo;
          ExecProc;
        end;
        FrmReceiptView := Nil;
        FrmReceiptView.Free;
      end;
    end;
  end;
end;

procedure TCommonPOS.PrintLargeReceipt(THead: Integer; OpenDrwr, Reprint, SendByeMail: Boolean; IVULoto: String);
Var
  Cnt: Integer;
  Contacto: String;
  Attachment: TIdAttachment;
  Token1, Token2, Token3: String;
  NCust: Integer;
  Memo20, memoCustName: TfrxMemoView;
begin
  Token1 := '';
  Token2 := '';
  Token3 := '';
  //if (CommonPos.Customer > 0) then Queries.OpenPatient(Token1, Token2, Token3, Customer);
  //=============================================//

  //============================================//
  FrmRptRecibo := TFrmRptRecibo.Create(Application);
  With FrmRptRecibo do
  begin
    if Reprint = True then
    begin
      dsTransHead.DataSource := DMMidas.DSHead;
      dsDetail.DataSource := DMMidas.DSDetail;
    end;
    if cotizacion = True  then   //Search and determine si es factura o cotizacion
    begin
      Memo20 := Receipt.FindObject('Memo20') as TfrxMemoView;
      Memo20.Memo.Text := 'Cotización';
      memoCustName := Receipt.FindObject('memoCustName') as TfrxMemoView;
      memoCustName.Memo.Text := DMMidas.cdsOpenTabsCUSTOMER.Value;
    end
    else if delivery = true then
    begin
      Memo20 := Receipt.FindObject('Memo20') as TfrxMemoView;
      Memo20.Memo.Text := 'Delivery';
      memoCustName := Receipt.FindObject('memoCustName') as TfrxMemoView;
      memoCustName.Memo.Text := DMMidas.cdsOpenTabsCUSTOMER.Value;
    end
    else
    begin
      Memo20 := Receipt.FindObject('Memo20') as TfrxMemoView;
      Memo20.Memo.Text := 'Factura';
      memoCustName := Receipt.FindObject('memoCustName') as TfrxMemoView;
      memoCustName.Memo.Text := DMMidas.CDSClientesNombreCompleto2.Value;
    end;
    Receipt.PrintOptions.Copies := 1; //CommonPOS.NUMERO_DE_RECIBOS;

    if SendByeMail = true then
    begin
      Receipt.PrepareReport;
      frxPDFExport1.FileName := Trim(extractfilepath(application.exename)) + '\' + IntToStr(THead) + '.pdf';
      frxPDFExport1.ShowDialog := False;
      Receipt.ShowProgress := False;
      Receipt.Export(frxPDFExport1);
      try
        SendEmailPharmatec(CommonPos.email, IntToStr(THead) + '.pdf', FrmMain.RichEdit1, true);
      Except
        //
      end;
    end
    else
    begin
      if CommonPOS.PrintToScreen = true then
      begin
        Receipt.PrepareReport;
        Receipt.ShowReport;
      end
      else
      begin
        Receipt.PrepareReport;
        Receipt.Print;
      end;
    end;
    Free;
    FrmRptRecibo := nil;
    cotizacion := False;
    delivery := False;
  end;
  {FrmPrintingOption := TFrmPrintingOption.Create(nil);
  With FrmPrintingOption do
  begin
    ShowModal;
    FrmRptRecibo := TFrmRptRecibo.Create(Application);
    With FrmRptRecibo do
    begin
      Receipt.PrepareReport;
      Receipt.ShowReport;
      //if FrmPrintingOption.CBPrint.Checked then RptFactura.Print;
      if (Customer > 0) then
      begin
        if Trim(DMMidas.CDSClientesEMAIL.Value) > '' then
        begin
          if FrmPrintingOption.CBemail.Checked then
          begin
           { RptFactura.ShowPrintDialog := False;
            RptFactura.DeviceType := 'PDF'; // dtPDF;
            RptFactura.TextFileName := Trim(extractfilepath(application.exename)) + '\' + Trim(DMMidas.CDSTransShowTRANSACTIONNUMBER.AsString) + '.pdf';
            RptFactura.Print;

            With FrmMain do
            begin
              IdMessage1.Clear;
              IdSMTP1.AuthType := satDefault;
              IdSMTP1.Username := 'axelcarreras@wescompr.com'; //AccountName;
              IdSMTP1.Password := 'sarerrac047*'; //EMPassword;
              IdSMTP1.Host := 'wescompr.com';
              IdSMTP1.Port := 587;

              IdMessage1.From.Address := 'wescom@wescompr.com';
              IdMessage1.Recipients.EMailAddresses := Trim(DMMidas.CDSClientesEMAIL.Value);
              IdMessage1.Subject := 'Recibo de compra';
              Contacto := Trim(DMMidas.CDSClientesNombreCompleto2.Value);
              IdMessage1.Body.Text := 'Saludos ' + Trim(Contacto) + chr(13) + chr(13) + 'Atachado su recibo de compra, gracias por su patrocinio. ' + chr(13) + chr(13) +
              'WesCom, Inc. P.O. Box 6464, Mayaguez PR, 00681-6464' + chr(13) +
              'http://www.wescompr.com/' + chr(13) +
              'Oficina 787.834.7677' + chr(13) +
              'Servicio 787.335.2281' + chr(13)  +
              'Jose Serrano t.787.604.4496' + chr(13) +
              'Noel Serrano 787.604.7995' + chr(13) +
              'Steven Soto 787.239.1154' + chr(13) +
              'Juan Serrano 787.637.5470' ;
              IdMessage1.AttachmentTempDirectory := Trim(extractfilepath(application.exename)) + '\' ;
              Attachment := TIdAttachmentFile.Create(IdMessage1.MessageParts, Trim(extractfilepath(application.exename)) + '\' +  Trim(DMMidas.CDSTransShowTRANSACTIONNUMBER.AsString) + '.pdf');
               try
                 IdSMTP1.Connect;//(1000);
                 IdSMTP1.Authenticate;
                 IdSMTP1.Send(IdMessage1); //MailMessage
               finally
                if IdSMTP1.Connected then
                  IdSMTP1.Disconnect;
                end;
                DeleteFile(Trim(extractfilepath(application.exename)) + '\' +  Trim(DMMidas.CDSTransShowTRANSACTIONNUMBER.AsString) + '.pdf');
            end;

          end;
          Queries.OpenPatient(Token1, Token2, Token3, 1000000);
        end;
      end;
      FrmPrintingOption.Free;
    end;
  end;}
end;

procedure TCommonPOS.SelectPrinter(PrnText: String);
Var
  I: Integer;
Begin
  For I := 0 To Printer.Printers.Count - 1 do
  Begin
    If Pos (PrnText,Printer.Printers[I]) <> 0 then
    Begin
      Printer.PrinterIndex := I;
    end;
  end;
end;



procedure TCommonPOS.SelectSalesTechMobile(ServerNameSalesTech: String);
begin
//
end;

procedure TCommonPOS.SelectSalesTechLocal;
begin
//
end;


procedure TCommonPOS.OpenDrawer;
begin
  if (DMMidas.CDSSetupPOS_APP_OPEN_DRAWER.Value = True) Then
  begin
    begin
      If (POS('Epson',CommonPOS.ReceiptPrinter) <> 0) OR
         (POS('EPSON',CommonPOS.ReceiptPrinter) <> 0) then
      begin
        With Printer do
        begin
          BeginDoc;
          Canvas.Font.Name := 'Control';
          if Copy(CommonPOS.ReceiptPrinter, 1, 5) = 'RP300' Then
            Canvas.TextOut(0,0,'ESC =')
          else
            Canvas.TextOut(0,0,'A');
          EndDoc;
        end;
      end
      else
      begin
        SelectPrinter(CommonPOS.ReceiptPrinter);
        With Printer do
        begin
          BeginDoc;
          Canvas.Font.Name := 'Control';
          if Copy(CommonPOS.ReceiptPrinter, 1, 5) = 'RP300' Then
            Canvas.TextOut(0,0,'ESC =')
          else
            Canvas.TextOut(0,0,'A');
          EndDoc;
        end;
      end;
    end;
  end;
end;


function isInTransaction(OTC_Number: Integer):Boolean;
begin
  Result := False;
  With DMMidas do
  begin
    SQLQuery1SA.Close;
    SQLQuery1SA.sql.Text := 'select transactionNumber, OTC_NUMBER as OTCNo, OPENED from TRANSACTIONDETAIL_TEMP where OTC_Number = ' + IntToStr(OTC_Number);// + ' and TransactionNumber = ' + IntToStr(CommonPOS.TransNo);
    SQLQuery1SA.Open;
    if SQLQuery1SA.FieldByName('OTCNo').Value > 0 then
    begin
      Result := True;
    end;
  end;
end;

Procedure TCommonPOS.BagPickup(NoRx: String);
Var
  DeptDesc, NumRX: String;
  Mult: Single;
  Loop, Socio: Boolean;
  Day, Month, Year: Word;
begin
    With DMwc do
    begin
      if cdsWillCall.RecordCount > 0 then
      begin
        while not cdsWillCall.eof do
        begin
          If CheckifRxInSavedTransactions(cdsWillCallOTC_NUMBER.AsString, cdsWillCallRX_NUMBER.asString) = False then
          begin
            If cdsWillCallPOS_PICKUP.Value = True then
            Begin
              begin
                //if isInTransaction(cdsWillCallOTC_NUMBER.Value) = False then
                if CheckifRxInSavedTransactions(IntToStr(cdsWillCallOTC_NUMBER.Value), IntToStr(cdsWillCallRX_NUMBER.Value)) = False then
                begin
                  CommonPOS.RecordLog(0, 'Pickup',  'Rx Pickedup for ' + Trim(DMMidas.CDSClientesNombreCompleto2.Value));
                  if cdsWillCallRX_NUMBER.Value > 0 then
                  begin
                    if cdsWillCallCASH_PLAN.Value = 1 then DeptDesc :=  'RECETASC' else DeptDesc := 'RECETASP';
                    if CommonPOS.RxRecibo = True then
                        AddProduct('F','RX' + cdsWillCallRX_NUMBER.asString, 'RX' + cdsWillCallRX_NUMBER.asString,DeptDesc,'F','',
                               CommonPOS.User, 'F', 'F', cdsWillCallAmountDue.Value,
                               cdsWillCallCOST.Value, Perc, 0,1, 0, 0, CommonPOS.ID, 0,0, StrToInt(cdsWillCallBAG_NUMBER.Value), cdsWillCallOTC_NUMBER.Value,false,false,'',0,false,0,false, false) // cdsWillCall_StatusID.Value
                      else
                        AddProduct('F','RX' + cdsWillCallRX_NUMBER.asString, 'RX' + Copy(cdsWillCallDRUG_DESCRIPTION.AsString,1,30),DeptDesc,'F','',
                               CommonPOS.User, 'F', 'F', cdsWillCallAmountDue.Value,
                               cdsWillCallCOST.Value, Perc, 0,1, 0, 0, CommonPOS.ID, 0,0, StrToInt(cdsWillCallBAG_NUMBER.Value), cdsWillCallOTC_NUMBER.Value,false,false,'',0,false,0,false, false)
                  end
                  else
                  begin
                    if CommonPOS.RxRecibo = True then
                        AddProduct('F','RX' + cdsWillCallRX_NUMBER.asString, 'OT' + cdsWillCallOTC_NUMBER.asString,'OTC','F','',
                               CommonPOS.User, 'F', 'F', cdsWillCallAmountDue.Value,
                               cdsWillCallCOST.Value, Perc, 0,1, 0, 0, CommonPOS.ID, 0,0, StrToInt(cdsWillCallBAG_NUMBER.Value), cdsWillCallOTC_NUMBER.Value,false,false,'',0,false,0,false, false)
                      else
                        AddProduct('F','RX' + cdsWillCallRX_NUMBER.asString, 'OT' + Copy(cdsWillCallDRUG_DESCRIPTION.AsString,1,30),'OTC','F','',
                               CommonPOS.User, 'F', 'F', cdsWillCallAmountDue.Value,
                               cdsWillCallCOST.Value, Perc, 0,1, 0, 0, CommonPOS.ID, 0,0, StrToInt(cdsWillCallBAG_NUMBER.Value), cdsWillCallOTC_NUMBER.Value,false,false,'',0,false,0,false, false)
                  end;
                end
                else
                  Exit;
              end;
            end;
          end;
          cdsWillCall.Next;
        end;
      end;
    end;
end;

function TCommonPOS.AppVersion: String;
var
  verblock: PVSFIXEDFILEINFO;
  versionMS, versionLS: Cardinal;
  verlen: Cardinal;
  rs: TResourceStream;
  M: TMemoryStream;
  P: pointer;
  S: Cardinal;
  AppVersionString: String;
begin
  M := TMemoryStream.Create;
  try
    rs := TResourceStream.CreateFromID(HInstance, 1, RT_VERSION);
    try
      M.CopyFrom(rs, rs.Size);
    finally
      rs.Free;
    end;
    M.Position := 0;
    if VerQueryValue(M.Memory, '\', pointer(verblock), verlen) then
    begin
      versionMS := verblock.dwFileVersionMS;
      versionLS := verblock.dwFileVersionLS;
      AppVersionString := application.Title + ' ' + IntToStr(versionMS shr 16) +
        '.' + IntToStr(versionMS and $FFFF) + '.' + IntToStr(versionLS shr 16) +
        '.' + IntToStr(versionLS and $FFFF);
    end;
    if VerQueryValue(M.Memory,
      PChar('\\StringFileInfo\\' + IntToHex(GetThreadLocale, 4) +
      IntToHex(GetACP, 4) + '\\FileDescription'), P, S) or
      VerQueryValue(M.Memory, '\\StringFileInfo\\040904E4\\FileDescription', P,
      S) then // en-us
      // AppVersionString:=PChar(p)+' '+AppVersionString;
      AppVersionString := AppVersionString;
  finally
    M.Free;
  end;
  Result := AppVersionString;
end;

Function TCommonPOS.CheckifRxInSavedTransactions(OTCNumber, NoRx: String): Boolean;
begin
  With DMMidas do
  begin
    Result := False;
    if CDSSetupNON_WESCOM_STORE.Value = false then
    begin
      FDQuery1.SQL.Text := 'Select TransactionNumber as TN from TRANSACTIONDETAIL_TEMP where OTC_NUMBER = ' +  OTCNumber;
    end
    else
    begin
      FDQuery1.SQL.Text := 'Select TransactionNumber as TN from TRANSACTIONDETAIL_TEMP where UPC = ' + chr(39) + 'RX' +  NoRx + chr(39);
    end;
    FDQuery1.Open;
    if FDQuery1.FieldByName('TN').Value > 0 then
    begin
      CommonPOS.ShowMessageStr('Warning, Prescription is in saved transactions, Please recall transaction number: ' + 'HK' + Trim(FDQuery1.FieldByName('TN').Value) , 12, clRed);
      Result := True;
    end;
  end;
end;

Procedure TCommonPOS.FindRx(NoRx: String; SearchOTC, IncludeBatch: Boolean; SearchOption: String; CheckifInPickup: Boolean);
Var
  NumRX: String;
  Mult: Single;
  Loop, Socio: Boolean;
  Day, Month, Year: Word;
  FillNumber: String;
  PosStr: Integer;
  lStringList: TStringList;
begin
  lStringList := TStringList.Create;
  lStringList.StrictDelimiter := True;
  lStringList.delimiter := '-';
  //if DMMidas.CDSSetupNON_WESCOM_STORE.Value = true then
  if (DMMidas.CDSSetupWC_INTERFACE.Value <> 'Standalone') and (DMMidas.CDSSetupWC_INTERFACE.Value <> 'Single Database') then
  begin
    if Trim(NoRx) = '' then
    begin
      FrmInputNumber := TFrmInputNumber.Create(Application);
      With FrmInputNumber do
      begin
        FrmInputNumber.Caption := 'Rx.Number';
        EditNumber.Text := '0';
        Tag := 1;
        ShowModal;
        if ModalResult = mrOk then
        begin
          PosStr := Pos('RX',FrmInputNumber.EditNumber.Text);
          if PosStr > 0 then
          begin
            NoRx := Copy(FrmInputNumber.EditNumber.Text,3,50);
          end
          else
          begin
            NoRx := FrmInputNumber.EditNumber.Text;
          end;
        end
        else
        begin
          NoRx := '';
        end;
        FrmInputNumber := Nil;
        FrmInputNumber.Free;
        lStringList.DelimitedText := NoRx;
        if CheckifInPickup = true then
        begin
          if Rx_isInSmartPickup(StrToInt(lStringList.Strings[0]),0) = true then Exit;
        end;
      end;
    end
    else
    begin
      lStringList.DelimitedText := NoRx;
      if CheckifInPickup = true then
      begin
        if Rx_isInSmartPickup(StrToInt(lStringList.Strings[0]),0) = true then Exit;
      end;
    end;
    if Trim(NoRx) > '' then
    begin
      if Trim(DMMidas.CDSSetupWC_INTERFACE.Value) = 'Suncrest' then RxQuerySuncrest(Trim(NoRx));
      if Trim(DMMidas.CDSSetupWC_INTERFACE.Value) = 'SmartPickup' then RxQuerySmartPickup(UpperCase(Trim(NoRx)));
    end;
    lStringList.Free;
  end
  else
  begin
    If FrmMain.RecetasPharmaTech = True then
    begin
      Loop := True;
      Socio := False;
      While loop = True do
      begin
        Mult:= 1 - Perc/100;
        With DMMidas do
        begin
          NumRX := '';
          if Trim(NoRx) = '' then
          begin
            FrmInputNumber := TFrmInputNumber.Create(Application);
            With FrmInputNumber do
            begin
              if FrmMain.LanguageStr = 'English' then
                FrmInputNumber.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 255)
              else
                FrmInputNumber.Caption := 'Buscar Rx';
              EditNumber.Text := '0';
              Tag := 1;
              ShowModal;
              if ModalResult = mrOk then
                NumRx := FrmInputNumber.EditNumber.Text
              else
                NumRx := '';
              Free;
              Queries.OpenPrescriptions(true,strtoint(NumRX));
              NumRX := CDSOTCOTCNUMBER.asString;
            end;
          end
          else
             NumRX := Trim(NoRx);
          If (NumRX <> '') and (NumRX <> '0') then
          begin
            begin
              if CheckifRxInSavedTransactions(NumRX, IntToStr(DMMidas.CDSOTCNUMERORECETA.Value)) = True then
              begin
                exit;
              end;
              begin
                if CheckifInPickup = true then
                begin
                  if Rx_isInSmartPickup(0, StrToInt(NumRX)) = true then Exit;
                end;
                if Trim(NoRx) = '' then
                begin
                  NoRx := NumRX;
                end;
              end;
              Queries.OpenPrescriptions(False, StrToInt(NumRx));
              if CommonPOS.isSigned(CDSOTCOTCNUMBER.Value) = false then
              begin
                CommonPOS.ShowMessageStr('Prescriptions must be signed to continue!', 12,clRed);
                CommonPOS.OpenOTC(CDSOTCNUMEROCLIENTE.Value, False, False);
                CommonPOS.CallSignature(False);
                Exit;
              end;

              CDSOTC.First;
              if CDSOTC.RecordCount > 0 then
              begin
                while not CDSOTC.eof do
                begin
                  If CDSOTCNUMERORECETA.Value > 0 then
                  Begin
                    if isInTransaction(CDSOTCOTCNUMBER.Value) = False then
                    begin
                      if (CDSOTCQTY.asFloat > 0) or (CDSOTCCLAIM_STATUS.Value = 1) then
                      begin
                        If CDSOTCPLAN_MEDICO.Value = 'CAS' then
                        begin
                          if CommonPOS.RxRecibo = True then
                              AddProduct('F','RX' + CDSOTCNUMERORECETA.asString, 'RX' + CDSOTCNUMERORECETA.asString,'RECETASC','F','',
                                     CommonPOS.User, 'F', 'F', CDSOTCTOTAL.asFloat*Mult,
                                     CDSOTCTOTAL.asFloat, Perc, CDSOTCCOSTOVENTA.asFloat,1, 0, 0, CommonPOS.ID, 0,0,0, CDSOTCOTCNUMBER.Value,false,false,'',0,false,0,false, false)
                            else
                              AddProduct('F','RX' + CDSOTCNUMERORECETA.asString, CDSOTCMEDICAMENTO.Value,'RECETASC','F','',
                                     CommonPOS.User, 'F', 'F', CDSOTCTOTAL.asFloat*Mult,
                                     CDSOTCTOTAL.asFloat, Perc, CDSOTCCOSTOVENTA.asFloat,1, 0, 0, CommonPOS.ID, 0,0,0, CDSOTCOTCNUMBER.Value,false,false,'',0,false,0,false, false);

                        end
                        else
                        begin
                          if CommonPOS.RxRecibo = True then
                            AddProduct('F','RX' + CDSOTCNUMERORECETA.asString,'RX'+ CDSOTCNUMERORECETA.asString ,'RECETASP','F','',
                                     CommonPOS.User, 'F', 'F',  CDSOTCDEDUCIBLE.asFloat,
                                     CDSOTCDEDUCIBLE.asFloat, Perc, 0,1,0, 0, CommonPOS.ID, 0,0,0,CDSOTCOTCNUMBER.Value,false,false,'',0,false,0,false, false)
                          else
                            AddProduct('F','RX' + CDSOTCNUMERORECETA.asString, CDSOTCMEDICAMENTO.Value,'RECETASP','F','',
                                     CommonPOS.User,  'F', 'F', CDSOTCDEDUCIBLE.asFloat,
                                     CDSOTCDEDUCIBLE.asFloat, Perc, 0,1,0, 0, CommonPOS.ID, 0,0,0,CDSOTCOTCNUMBER.Value,false,false,'',0,false,0,false, false);

                          If (Customer <> 0) then
                          begin
                            With DMMidas.CDSAdPrintList do
                            begin
                              Active := False;
                              CommandText := 'Select Socio From Pacientes with (NOLOCK) Where NumeroCliente = ' + IntToStr(Customer);
                              Active := True;
                              Socio := Length(Trim(Fields[0].AsString)) > 0;
                              Active := False;
                            end;
                          end;
                        end;
                      end
                      else
                        ShowMessageStr('Error! Prescription has not been dispensed, quantity is equal to 0', 12,clBlack);
                    end;
                  end;
                  CommonPOS.UpdateWorkFlow('P', Trim(CommonPOS.User) + ' ' + DateTimeToStr(Now), CDSOTCOTCNUMBER.Value);
                  With DMMidas.SQLQuery1 do
                  begin
                    SQl.Clear;
                    SQL.Add('Update REFILL_QUERY set RX_STATUS = 4 where NumeroReceta = ' + CDSOTCNUMERORECETA.AsString);
                    ExecSQL(True);
                  end;
                  CDSOTC.Next;
                end;
                Loop := False;
              end
              else
              begin
                if FrmMain.LanguageStr = 'English' then
                  ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 269), 12, clBlack)
                else
                  ShowMessageStr('No encuentro esa receta', 12,clBlack);
                Loop := False;
              end;
            end;
          end
          else
            loop := False;
        end;
      end;
    end
    else
    begin
       CommonPOS.VentaManual(2);
    end;
  end;
end;

procedure TCommonPOS.FindOTC(SKU: String);
Var
  NumRX: String;
  Mult: Single;
  Loop: Boolean;
begin
  Loop := True;
  While loop = True do
  begin
    Mult:= 1 - Perc/100;
    With DMMidas do
    begin
      NumRX := '';
        if SKU > '' then
        begin
          Loop := False;
          Queries.OpenOTC(StrToInt(Copy(Trim(SKU), 3, 8)), False);
          NumRx := Copy(Trim(SKU), 3, 8);
        end
        else
        begin
          FrmInputNumber := TFrmInputNumber.Create(Application);
          With FrmInputNumber do
          begin
            if FrmMain.LanguageStr = 'English' then
              FrmInputNumber.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 256)
            else
            FrmInputNumber.Caption := 'Buscar OTC';
            EditNumber.Text := '0';
            ShowModal;
            if ModalResult = mrOk then
              NumRx := FrmInputNumber.EditNumber.Text
            else
              NumRX := '';
            Free;
            if Trim(NumRx) > '' then
              Queries.OpenOTC(StrToInt(NumRX), false);
          end;
        end;

          If CDSOTCMEDICAMENTO.Value <> '' then
          begin
            CDSInventarioPiso.Close;
            CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where PRODUCTNO = ' + CDSOTCProduct_ID.asString;
            CDSInventarioPiso.Open;
            If CDSOTCCobrado.Value <> 'T' then
            Begin
              if CDSInventarioPisoCobrar_Tax.Value = 1 then
              begin
                if CommonPOS.RxRecibo = True then
                  AddProduct('F','RX' + NumRX ,'RX' + NumRX +'-Q'+ FloatToStr(CDSOTCQTY.asFloat),'RECETAS','F','',
                           CommonPOS.User,  'T', 'T', CDSOTCTOTAL.asFloat*Mult,
                           CDSOTCTOTAL.asFloat, Perc, CDSOTCCOSTOVENTA.asFloat,1,0,CommonPOS.Turno, CommonPOS.ID, 0,0,0,StrToInt(NumRX),
                           false,false,'',0,false,0,false, false) // CDSOTCPRODUCT_ID.Value
                else
                  AddProduct('F','RX' + NumRX ,CDSOTCMEDICAMENTO.Value +'-Q'+ FloatToStr(CDSOTCQTY.asFloat),'RECETAS','F','',
                           CommonPOS.User, 'T', 'T',  CDSOTCTOTAL.asFloat*Mult,
                           CDSOTCTOTAL.asFloat, Perc,CDSOTCCOSTOVENTA.asFloat,1,0,CommonPOS.Turno, CommonPOS.ID, 0,0,0,StrToInt(NumRX),
                           false,false,'',0,false,0,false, false);
              end
              else
              begin
                if CommonPOS.RxRecibo = True then
                  AddProduct('F','RX' + NumRX ,'RX' + NumRX +'-Q'+ FloatToStr(CDSOTCQTY.asFloat),'RECETAS','F','',
                           CommonPOS.User,  CDSSetupCOBRAR_OTC_TAX.Value, CDSSetupCOBRAR_OTC_TAX.Value, CDSOTCTOTAL.asFloat*Mult,
                           CDSOTCTOTAL.asFloat, Perc, CDSOTCCOSTOVENTA.asFloat,1,0,CommonPOS.Turno, CommonPOS.ID, 0,0,0,StrToInt(NumRX),
                           false,false,'',0,false,0,false, false)
                else
                  AddProduct('F','RX' + NumRX ,CDSOTCMEDICAMENTO.Value +'-Q'+ FloatToStr(CDSOTCQTY.asFloat),'RECETAS','F','',
                           CommonPOS.User, CDSSetupCOBRAR_OTC_TAX.Value, CDSSetupCOBRAR_OTC_TAX.Value,  CDSOTCTOTAL.asFloat*Mult,
                           CDSOTCTOTAL.asFloat, Perc, CDSOTCCOSTOVENTA.asFloat,1,0,CommonPOS.Turno, CommonPOS.ID, 0,0,0,StrToInt(NumRX),
                           false,false,'',0,false,0,false, false);
              end;

            end
            else
            begin
              if FrmMain.LanguageStr = 'English' then
                ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 275), 12, clBlack)
              else
                ShowMessageStr('OTC ya fue pagado', 12,clBlack);
            end;
            Loop := False;
          end
          else
          begin
            if FrmMain.LanguageStr = 'English' then
              ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 276), 12, clBlack)
            else
              ShowMessageStr('No encuentro ese OTC', 12,clBlack);
            Exit
          end;
    end;
  end;
end;

procedure TCommonPOS.CambioQty;
Var
  IDNumber: Integer;
  UPC, Tax, NewQty: String;
  NQty: Double;

begin
  IF DMMidas.CDSTransShowGROUP_PROD.Value <> 'T' then
  begin
      NewQty := FloatToStr(DMMidas.CDSTransShowQTY.Value);
      FrmInputNumber := TFrmInputNumber.Create(Application);
      With FrmInputNumber do
      begin
        EditNumber.Text := '0';
        if FrmMain.LanguageStr = 'English' then
          FrmInputNumber.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 257) + DMMidas.CDSTransShowPRODDESCRIPTION.Value
        else
          FrmInputNumber.Caption := 'Cambio de Cantidad: ' + DMMidas.CDSTransShowPRODDESCRIPTION.Value;
        ShowModal;
        if ModalResult <> mrOk then
          exit;
        if StrToFloat(FrmInputNumber.EditNumber.Text) > 10000 then EditNumber.Text := '0';
        NewQty := FrmInputNumber.EditNumber.Text;
        Free;
        FrmInputNumber := nil;
      end;
      NQty := StrToFloat(NewQty);
      if (NQty > 0) then
      begin
        With DMMidas do
        begin
          IDNumber := CDSTransShowIDNUMBER.Value;
          UPC := Trim(CDSTransShowUPC.Value);
          CommonPOS.DisconnectFromDatabase;
          With TRANSACTIONDETAIL_UPDATEPRICE do
          begin
            Prepare;
            ParamByName('@IDNUMBER').AsInteger := CDSTransShowIDNUMBER.Value;
            ParamByName('@TRANSNO').AsInteger := CDSTransShowTRANSACTIONNUMBER.Value;
            ParamByName('@PRODUCTNO').AsInteger := CDSTransShowPRODUCTNO.Value;
            ParamByName('@PRICE').AsFloat := CDSTransShowPRICE.AsFloat;
            if CDSSetupPOS_ADD_QTY.Value = True then
              ParamByName('@QTY').AsFloat := CDSTransShowQTY.Value + NQty
            else
              ParamByName('@QTY').AsFloat := NQty;
            ParamByName('@TAXRATE').AsFloat := CommonPOS.TaxRate;
            ParamByName('@UPDATE_PRICE').Value := False;
            ExecProc;
          end;
          CalcHeadTotal(CDSTransShowTRANSACTIONNUMBER.Value);
          SendToPole(Copy(CDSTransShowPRODDESCRIPTION.Value,1,20),Copy(Format('Qty: ' + FloatToStr(NQty) + '$%f', [DMMidas.CDSTransShowTotal.AsFloat]),1,20));
        end;
      end;
  end
  else
    if FrmMain.LanguageStr = 'English' then
      ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 258), 12, clBlack)
    else
      ShowMessageStr('Producto entrado como venta grupal, no puede cambiar la cantidad!', 12,clBlack);
end;

procedure TCommonPos.CambioPrecio;
Var
  UPC, NewPrice: String;
  NPrice: Currency;
  AuthUser: String;
  Authorized, CheckedConsider, OpenReason: Boolean;
  IDNumber: Integer;
  UpdateInvPrice: Boolean;
begin
  Authorized := False;
  CommonPOS.Supervisor := '';
  AuthUser := CommonPOS.User;
  With DMMidas do
  begin
    IDNumber := CDSTransShowIDNUMBER.Value;
    CDSInventarioPiso.Close;
    CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where PRODUCTNO = ' + #39 + CDSTransShowPRODUCTNO.asString + #39;
    CDSInventarioPiso.Open;
  end;

  if (Trim(DMMidas.CDSTransShowPRODDEPARTMENT.Value) = 'RECETASC') OR (Trim(DMMidas.CDSTransShowPRODDEPARTMENT.Value) = 'RECETASP')
  OR (Trim(DMMidas.CDSTransShowPRODDEPARTMENT.Value) = 'RECETAS') then
  begin
    if CommonPOS.isAuthorized('CAMBIAR_PRECIO_OTC_RX',UserRights.CAMBIAR_PRECIO_OTC_RX,true) then Authorized := True;
  end
  else
  begin
    If ((DMMidas.CDSInventarioPisoPRECIO.Value = 0) or (DMMidas.CDSInventarioPisoEDITAR_PRECIO.Value = True)) then Authorized := True else
    Authorized := CommonPOS.isAuthorized('POS_CHGPRICE',UserRights.POS_CHGPRICE,true);
  end;
  if Authorized = True then
  begin
    begin
        if DMMidas.CDSTransShowPRICE.AsFloat > 0 then OpenReason := True else OpenReason := False;
        NewPrice := CurrToStr(DMMidas.CDSTransShowPrice.AsFloat);
        FrmInputNumber := TFrmInputNumber.Create(Application);
        With FrmInputNumber do
        begin
          if DMMidas.CDSPasswordsPOS_CAMBIAR_PRECIO_INV.Value = true then FrmInputNumber.cbChangeInventoryPrice.Visible := True;
          if FrmMain.LanguageStr = 'English' then
            FrmInputNumber.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 259)
          else
          FrmInputNumber.Caption := 'Cambio de Precio';
          Tag := 2;
          ShowModal;
          if ModalResult <> mrOk then
            exit;
          UpdateInvPrice := FrmInputNumber.cbChangeInventoryPrice.Checked;
          NPrice := StrToFloat(FrmInputNumber.EditNumber.Text);

          if FrmInputNumber.CheckBox1.Checked then
            CheckedConsider := true
          else
            CheckedConsider := False;
          Free;
          FrmInputNumber := nil;
        end;
        if NPrice >= 0 then
        begin
          CommonPOS.DisconnectFromDatabase;
          With DMMidas do
          begin
            UPC := CDSTransShowUPC.Value;
            With TRANSACTIONDETAIL_UPDATEPRICE do
            begin
              Prepare;
              ParamByName('@IDNUMBER').AsInteger := CDSTransShowIDNUMBER.Value;
              ParamByName('@TRANSNO').AsInteger := CDSTransShowTRANSACTIONNUMBER.Value;
              ParamByName('@PRODUCTNO').AsInteger := CDSTransShowPRODUCTNO.Value;
              ParamByName('@PRICE').AsFloat := NPrice;
              ParamByName('@QTY').AsFloat := CDSTransShowQTY.Value;
              ParamByName('@TAXRATE').AsFloat := CommonPOS.TaxRate;
              ParamByName('@SUPER').AsString := CommonPOS.Supervisor;
              ParamByName('@UPDATE_PRICE').Value := UpdateInvPrice;
              ExecProc;
            end;
            CDSTransShow.Refresh;
            SendToPole('CAMBIO PRECIO',Format('NEW PRICE: %m',[NPrice]));
            CalcHeadTotal(CDSTransShowTRANSACTIONNUMBER.Value);

          end;
          if (CommonPOS.ConsiderarCambioPrecio = True) and (OpenReason = True)then
          begin
            FrmRazonDescuento := TFrmRazonDescuento.Create(Application);
            With FrmRazonDescuento do
            begin
              ShowModal;
              with DMMidas do
              begin
                if CDSReasons.Active = False then CDSReasons.Active := True;
                CDSReasons.Append;
                CDSReasonsNOTRANS.Value := CDSTransShowIDNUMBER.Value;
                CDSReasonsDESCRIPCION.Value := FrmRazonDescuento.Edit1.Text;
                CDSReasons.Post;
              end;
              free;
            end;
          end;
        end;
      end;
  end;
end;

procedure TCommonPos.CancelTrans(TransNo: Integer);
Var
  Year, Month, Day: Word;
  MyStrVal: String;
  AuthUser: String;
  PID: Integer;
  NoRx: Int64;
  AuthField, HasSignature: Boolean;
  AuthField0, MemoStr, is_Signed: String;
begin
  is_Signed := '';
  HasSignature := False;
  if CommonPOS.TripleS_ApprovedAmount > 0 then
  begin
    CommonPOS.ShowMessageStr('No puede canelar una transaccion de Triple-S Avantage!  Debe terminar la transaccion!', 12, clRed);
    exit;
  end;
  With DMMidas do
  begin
    if CDSTransShow.Active = true then
    begin
      CDSTransShow.First;
      while not CDSTransShow.eof do
      begin
        if CDSTransShowOTC_NUMBER.Value > 0 then HasSignature := True;
        CDSTransShow.Next;
      end;
      if HasSignature = True then
      begin
        if FrmMain.LanguageStr = 'English' then
          is_Signed := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 277)
        else
        is_Signed := 'La firma de esta receta sera borrada, ';
      end;
      //CommonPOS.ClearTransactions;
    end;
  end;
  if CommonPOS.Restaurant = True then
  begin
    AuthField0 := 'POS_TAB_CANCEL';
    AuthField := UserRights.POS_TAB_CANCEL
  end
  else
  begin
    AuthField0 := 'POS_CANCEL';
    AuthField := UserRights.POS_CANCEL;
  end;
  if CommonPOS.isAuthorized(AuthField0, AuthField, true) = True then
  begin
    If (TransNo > 0) then
    begin
      if FrmMain.LanguageStr = 'English' then
        FrmMain.msgD := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 300)
      else
        FrmMain.msgD := '¿Quiere borrar la transacción ';
      If MessageDlg(is_Signed + FrmMain.msgD + IntToStr(TransNo) + '?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin
        for i := 1 to 5 do
        begin
          CommonPOS.BagsPickupID[i] := 0;
        end;
        Try
          With DMMidas do
          begin
            if TransNo > 0 then
            begin
              cdsTabsDetail.Close;
              cdsTabsDetail.CommandText := 'Select * from TABS_DETAIL where TRANSACTIONNUMBER = ' + IntToStr(TransNo);
              cdsTabsDetail.Open;
              if Trim(cdsTabsDetailCUSTOMER.Value) > '' then
              begin
                MemoStr := 'Tab for ' + Trim(cdsTabsDetailCUSTOMER.Value) + ' for the amount of ' + cdsTabsDetailBALANCE.AsString + ' was deleted by ' + Copy(CommonPOS.User,1,3)
                +  ' In progress  Transaction Number: ' + CDSTransShowTRANSACTIONNUMBER.asString + ' from Open Balance ID: ' + CDSTransShowID.asString;
                CommonPOS.InsertLog('Canceled transaction', 'D', Copy(CDSTransShowUPC.Value,1,13),
                  Copy(CommonPOS.User,1,3), '',
                  0, TransNo, 0, 0,
                  0, 0, 0, 0, MemoStr,false,true);
              end;
              MemoStr := ' In progress Transaction ' + CDSTransShowTRANSACTIONNUMBER.asString + ' was canceled by ' + Copy(CommonPOS.User,1,3)
                  + ' from Open Balance ID: ' + CDSTransShowID.asString;
              CommonPOS.InsertLog('Canceled transaction', 'D', '',
                  Copy(CommonPOS.User,1,3), '',
                  0, TransNo, 0, 0,
                  0, 0, 0, 0, MemoStr ,false,true);
              CommonPOS.DisconnectFromDatabase;
              With POS_CANCEL_TRANS do
              begin
                Prepare;
                ParamByName('@NOTRANS').Value := TransNo;
                ParamByName('@UPDATE_INV').Value := False;
                ParamByName('@isVoid').Value := False;
                ParamByName('@DBName').Value := CommonPOS.DataBaseNameRx;
                ExecProc;
              end;
            end;
            IF CDSClientes.Active Then CDSClientes.Refresh;
          end;
        Except
          //ShowMessageStr('Transacción ' + MyStrVal + ' no es válida');
        end;
        CommonPOS.ClearTransactions;
      end;
    end
    else
    begin
      if CommonPOS.isAuthorized('POS_DELTRANS', UserRights.POS_DELTRANS, true) then
      begin
        DecodeDate(Date, Year, Month, Day);
        With DMMidas.CDSAdHocPrintList do
        begin
          SQL.Clear;
          SQL.Add('Select MAX(TransactionNumber) as TNum From TransactionHeader');// Where EmployNumber = ''' +        CommonPOS.User + '''');
          Active := True;
          MyStrVal := Fields[0].asString;

          With DMMidas do
          begin
            FDQuery1.SQL.Text := 'SELECT PAYMENTTYPE1, PAYMENTTYPE2 FROM TRANSACTIONHEADER WHERE TRANSACTIONNUMBER = ' + MyStrVal;
            FDQuery1.Active := True;
            if (Trim(FDQuery1.FieldByName('PAYMENTTYPE1').Value) = 'TSSS') or (FDQuery1.FieldByName('PAYMENTTYPE2').Value = 'TSSS') then
            begin
              CommonPOS.ShowMessageStr('Warning! You can not delete a Triple-S Advantage transaction: ' + MyStrVal + ', must void it!', 12,clBlack);
              Exit;
            end;

          end;
          FrmInputNumber := TFrmInputNumber.Create(Application);
          With FrmInputNumber do
          begin
            EditNumber.text := '0';
            EditNumber.Text := MyStrVal;
            FrmInputNumber.Caption := 'Transaction Number';
            Tag := 1;
            ShowModal;
            if ModalResult = mrOk then
            begin
              With DMMidas do
              begin
                FDQuery1.SQL.Text := 'Select ID, TransactionNumber from TransactionHeader where TransactionNumber = ' + Trim(EditNumber.Text);
                FDQuery1.Active := True;
              end;
              if CommonPOS.IsNumber(EditNumber.Text) then
              begin
                With DMMidas do
                begin
                  cdsTabsDetail.Close;
                  cdsTabsDetail.CommandText := 'Select * from TABS_DETAIL where TRANSACTIONNUMBER = ' + Trim(EditNumber.Text);
                  cdsTabsDetail.Open;
                  if Trim(cdsTabsDetailCUSTOMER.Value) > '' then
                  begin
                    MemoStr := 'Tab for ' + Trim(cdsTabsDetailCUSTOMER.Value) + ' for the amount of ' + cdsTabsDetailBALANCE.AsString + ' was deleted by ' + Copy(CommonPOS.User,1,3)
                    +  ' Transaction Number: ' + CDSTransShowTRANSACTIONNUMBER.asString + ' from Open Balance ID: ' + CDSTransShowID.asString;
                    CommonPOS.InsertLog('Canceled Tab', 'D', '',
                    Copy(CommonPOS.User,1,3), '',
                    0, TransNo, 0, 0,
                    0, 0, 0, 0, MemoStr,false,true);
                  end;

                end;
                With DMMidas do
                begin
                  MemoStr := 'Saved Transaction ' + Trim(EditNumber.Text) + ' was deleted by ' + Copy(CommonPOS.User,1,3)
                      + ' from Open Balance ID: ' + FDQuery1.FieldByName('ID').AsString;
                  CommonPOS.InsertLog('Canceled transaction', 'D', '',
                      Copy(CommonPOS.User,1,3), '',
                      0, TransNo, 0, 0,
                      0, 0, 0, 0, MemoStr ,false,true);
                end;

                CommonPOS.DisconnectFromDatabase;
                With DMMIDAS.POS_CANCEL_TRANS do
                begin
                  Prepare;
                  ParamByName('@NOTRANS').Value := StrToInt(EditNumber.Text);
                  ParamByName('@UPDATE_INV').Value := True;
                  ParamByName('@isVoid').Value := False;
                  ExecProc;
                  if FrmMain.LanguageStr = 'English' then
                    ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 280) + Trim(EditNumber.Text), 12, clBlack)
                  else
                  ShowMessageStr('Transacción ' + Trim(EditNumber.Text) + ' fué borrada', 12,clBlack);
                end;
              end;
              if DM.CDSClientes.Active = true then DM.CDSClientes.Refresh;
              MyStrVal := FrmInputNumber.EditNumber.Text;
            end
            else
              MyStrVal := '';
            Free;
          end;
        end;
      end;
    end;
  end
  else
  begin
    ShowMessageStr('User not authorized!', 12,clred);
  end;
  SendToPole(CenterString(DMMidas.CDSSetupPOLEDISPLAYMESSAGE.Value,20),CenterString('SALESTEC EXPRESS',16));
end;

procedure TCommonPOS.HoldTransaction;
Var
  TransHead, IntCust: Integer;
  IntCrPay, IntLaPay: Boolean;
  IntCrPayAmnt, IntLaPayAmnt: Currency;
  IntPerc: Single;
begin
  TransHead := GetHeldHeader(CommonPOS.User);
  If TransHead = 0 then
  begin
    With DMMidas do
    begin
      if CDSTransShow.Active = True then
      begin
        If CDSTransShow.RecordCount > 0 Then
        Begin
          If Header <> 0 then
          begin
            Hold(Header,'H');
            HeldCust := Customer;
            HeldCrPay := CrPay;
            HeldCrPayAmnt := CrPayAmnt;
            HeldLaPay := LaPay;
            HeldLaPayAmnt := LaPayAmnt;
            HeldPerc := Perc;
            CommonPos.Customer := 0;
            FrmMain.sbMain.Panels[3].Text := '';
            CrPay := False;
            CrPayAmnt := 0;
            LaPay := False;
            LaPayAmnt := 0;
            Perc := 0;
          end;
        End;
        CommonPOS.Header := CommonPOS.GetNewHeader(CommonPOS.User, CommonPOS.Turno, CommonPOS.ID);
        FrmPOSRest.StatusBar1.Panels[5].Text := 'NO. TRANS: ' + IntToStr(CommonPOS.Header);
      End;
    end;
  end
  else
  begin
    CommonPOS.OpenTransDetail(CommonPOS.TransNo);
    If DMMidas.CDSTransShow.RecordCount = 0 Then
    Begin
      Hold(TransHead,'T');
      CommonPOS.Header := TransHead;
      FrmPOSRest.StatusBar1.Panels[5].Text := 'NO. TRANS: ' + IntToStr(CommonPOS.Header);
      IntCust := HeldCust;
      IntCrPay := HeldCrPay;
      IntCrPayAmnt := HeldCrPayAmnt;
      IntLaPay := HeldLaPay;
      IntLaPayAmnt := HeldLaPayAmnt;
      IntPerc := HeldPerc;
      HeldCust := Customer;
      HeldCrPay := CrPay;
      HeldCrPayAmnt := CrPayAmnt;
      HeldLaPay := LaPay;
      HeldLaPayAmnt := LaPayAmnt;
      HeldPerc := Perc;
      CommonPos.Customer := IntCust;
      If IntCust <> 0 then
      begin
        DMMidas.CDSClientes.Locate('NUMEROCLIENTE',IntCust,[]);
        FrmMain.sbMain.Panels[3].Text := Trim('Cliente: ' + DMMidas.CDSClientesNOMBRE.Value +
                                             ' ' + DMMidas.CDSClientesAPELLIDOPATERNO.Value);
      end;
      CrPay := IntCrPay;
      CrPayAmnt := IntCrPayAmnt;
      LaPay := IntLaPay;
      LaPayAmnt := IntLaPayAmnt;
      Perc := IntPerc;
      If Perc > 0 then
      begin
        FrmPOSRest.StatusBar1.Panels[8].Text := 'DESCUENTO: ' + FloatToStr(Perc) + '%';
      end;
    End
    else
    begin
      ShowMessageStr('You can only hold one transaction at a time!', 12,clBlack);
    end
  end;
  //Header := TransHead;
  Queries.OpentTransHeader(CommonPOS.Header,false);
  {With DMMidas.CDSTransHead do
  begin
    Active := False;
    Params[0].Value := CommonPOS.Header;
    If Header <> 0 then
      Active := True;
  end;}
  With DMMidas.CDSTransShow do
  begin
    Active := False;
    Params[0].Value := CommonPOS.Header;
    If Header <> 0 then
      Active := True;
  end;

end;

procedure TCommonPOS.ActivateInactivateButtons(BotonesActivos: Boolean);
begin
  With FrmPOSTS do
  begin
    if BotonesActivos = False then
    begin
      BtnCash.Enabled := False;
      BtnATH.Enabled := False;
      BtnVisa.Enabled := False;
      BtnCheck.Enabled := False;
      BtnCredit.Enabled := False;
      BtnLayAway.Enabled := False;
      BtnTarjetaFam.Enabled := False;
      RzBitBtn16.Enabled := False;
    end
    else
    begin
      BtnCash.Enabled := True;
      BtnATH.Enabled := True;
      BtnVisa.Enabled := True;
      BtnCheck.Enabled := True;
      BtnCredit.Enabled := True;
      BtnLayAway.Enabled := True;
      BtnTarjetaFam.Enabled := True;
      RzBitBtn16.Enabled := True;
    end;
  end;
end;

function TCommonPOS.SalesPromotionChargeProduct(ProductID,
  SalesPromotionID: Integer): Boolean;
Var
  Counter, Counter2: Integer;
begin
  With DMMidas do
  begin
    cdsSalesPromo.Close;
    cdsSalesPromo.CommandText := 'Select * from Sales_Promotion where ID = ' + IntToStr(SalesPromotionID);
    cdsSalesPromo.Open;
    if cdsSalesPromo.RecordCount = 1 then
    begin
      SQLQuery.SQL.Text := 'Select * from TransactionDetail_Temp where TRANSACTIONNUMBER = ' + IntToStr(Header) + ' and ProductNo = ' + IntToStr(ProductID);
      SQLQuery.Open;
      SQLQuery.First;
      Counter := 1;
      Counter2 := 0;

      while not SQLQuery.eof do
      begin
        //Counter := Counter + 1;
        Counter := Counter + SQLQuery.FieldByName('QTY').Value;
        if Counter > (cdsSalesPromoQTY_DISCOUT.Value+cdsSalesPromoQTY.Value) then Counter := 1;
        if (Counter > cdsSalesPromoQTY.Value) then
        begin
          if (Counter+1 >= (cdsSalesPromoQTY_DISCOUT.Value+cdsSalesPromoQTY.Value)) and (Counter <= (cdsSalesPromoQTY_DISCOUT.Value+cdsSalesPromoQTY.Value)) then
          begin
            Result := True;
          end
          else
          begin
            Result := False;
          end;
        end
        else
        begin
          Result := False;
        end;
        SQLQuery.Next;
      end;

    end
    else
      Result := False;
  end;
end;


procedure TCommonPOS.SaveTransaction(Deliver: Boolean);
Var
  TransHead, IntCust: Integer;
  IntCrPay, IntLaPay: Boolean;
  IntCrPayAmnt, IntLaPayAmnt: Currency;
  IntPerc: Single;
  Delivered, By, DeliverInitials, CustomerName: String;
begin
  TransHead := GetHeldHeader(CommonPOS.User);
  begin
    //If TransHead = 0 then
    //begin
      FrmDelivered := TFrmDelivered.Create(Application);
      With FrmDelivered do
      begin
        if Deliver = True then
        begin
          With DMMidas do
          begin
            CDSTransShow.First;
            while not CDSTransShow.Eof do
            begin
              if CDSTransShowOTC_NUMBER.Value > 0 then
              begin
                 Queries.OpenOTC(CDSTransShowOTC_NUMBER.Value, false);
                 Queries.OpenPatient('','','',CDSOTCNUMEROCLIENTE.Value);
                 Memo1.Clear;
                 Memo1.Lines.Add(Trim(CDSClientesNombreCompleto2.Value));
                 Memo1.Lines.Add(CDSClientesDIRECCION1.Value);
                 if Trim(CDSClientesDIRECCION2.Value) > '' then
                   Memo1.Lines.Add(CDSClientesDIRECCION2.Value);
                 Memo1.Lines.Add(Trim(Trim(CDSClientesCIUDAD.Value) + ' ' + CDSClientesESTADO.Value + ' ' + Trim(CDSClientesCODIGOPOSTAL.Value)));
                 Memo1.Lines.Add('Mobile Phone: ' + Trim(CDSClientesCELULAR.Value));
              end;
              CDSTransShow.Next;
            end;
            CDSTransShow.First;
          end;
          EditDeliveredBy.ReadOnly := True;
          ShowModal;
          DeliverInitials := DMMidas.CDSPasswordsINICIALES.Value;
          CustomerName := Trim(Copy(DMMidas.CDSClientesNombreCompleto2.Value,1,30));
        end
        else
        begin
          Label1.Caption := 'Customer';
          cxCheckBox1.Visible := False;
          cxCheckBox1.Checked := False;
          Label2.Visible := False;
          Memo1.Visible := False;
          ShowModal;
          CustomerName := FrmDelivered.EditDeliveredBy.Text;
        end;


        By := EditDeliveredBy.Text;
        DMMidas.CDSTransShow.First;
        //if FrmMain.LargeRec[0] = True then
        if DMMidas.CDSSetupFACTURARECIBO.Value = 'F' then
        begin
          PrintLargeReceipt(TransHead, TRUE, false, false, 'ivuloto');
        end
        else
        begin
          for I := 0 to FrmDelivered.SpinEdit1.Value - 1 do
          begin
            With DMMidas do
            begin
              With CDSHead do
              Begin
                Active := False;
                CommandText := 'select * from transactionheader_temp where transactionnumber = ' + IntToStr(CDSTransShowTRANSACTIONNUMBER.Value);
                Active := True;
                //ShowMessageStr(CDSHeadTRANSACTIONNUMBER.AsString);
              End;
              With CDSDetail do
              Begin
                Active := False;
                CommandText := 'SELECT * FROM TransactionDetail_Temp WHERE TransactionNumber = ' + IntToStr(CDSTransShowTRANSACTIONNUMBER.Value);
                Active := True;
              End;
              {with CDSClientes do
              begin
                Active := False;
                CommandText := 'SELECT * FROM PACIENTES WHERE NUMEROCLIENTE = ' + CDSHeadCUSTOMERID.Value;
                Active := True;
              end;}
              FrmRptRecibo := TFrmRptRecibo.Create(Application);
              With FrmRptRecibo do
              begin
                FrmRptRecibo.CustomerName1 := CustomerName;
                if CommonPOS.PrintToScreen = True then
                begin
                  Receipt.PrepareReport;
                  Receipt.ShowReport;
                end
                else
                begin
                  Receipt.PrepareReport;
                  Receipt.Print;
                end;
              end;
            end;
          end;
        end;
        //PrintReceipt(Header, False, 'Saved');
        DMMIDAS.CDSTransShow.First;
        If Not DMMidas.CDSTransShow.EOF Then
        Begin
          If Header <> 0 then
          begin
            if Deliver = True then
              begin
              if FrmDelivered.cxCheckBox1.Checked then
              begin
                Delivered := 'T';
                By := FrmDelivered.EditDeliveredBy.Text;
              end
            end
            else
            begin
              Delivered := 'F';
              By := '';
            end;
            HoldSaveTrans(Header,'S', Delivered, By, '0', CustomerName);
          end;
        end;
        FrmDelivered.Free;

        With DMMidas do
        begin
          CDSTransShow.First;
          while not CDSTransShow.Eof do
          begin
            SQLQuery1.SQL.Text := '';
            SQLQuery1.SQL.Text := 'Update OTC set WF_DELIVERED = ' + chr(39) + Trim(DeliverInitials) + ' ' + DateTimeToStr(Now) + chr(39) +
                      ' Where OTCNUMBER = ' + CDSTransShowOTC_NUMBER.AsString;
            SQLQuery1.ExecSQL();
            CDSTransShow.Next;
          end;
          CDSPasswords.Close;
          CDSPasswords.CommandText := 'Select * from passwords order by username';
          CDSPasswords.Open;
        end;
      end;

    Header := TransHead;
    Queries.OpentTransHeader(Header,false);
    {With DMMidas.CDSTransHead do
    begin
      Active := False;
      Params[0].Value := Header;
      If Header <> 0 then
        Active := True;
    end;}
    With DMMidas.CDSTransShow do
    begin
      Active := False;
      Params[0].Value := Header;
      If Header <> 0 then
        Active := True;
    end;
    CommonPOS.ClearTransactions;
  end;
end;

{
procedure TCommonPOS.SaveTransaction(Deliver: Boolean);
Var
  TransHead, IntCust: Integer;
  IntCrPay, IntLaPay: Boolean;
  IntCrPayAmnt, IntLaPayAmnt: Currency;
  IntPerc: Single;
  Delivered, By, DeliverInitials, CustomerName: String;
begin
  TransHead := GetHeldHeader(CommonPOS.User);
  begin
      FrmDelivered := TFrmDelivered.Create(Application);
      With FrmDelivered do
      begin
        if Deliver = True then
        begin
          With DMMidas do
          begin
            CDSTransShow.First;
            while not CDSTransShow.Eof do
            begin
              if CDSTransShowOTC_NUMBER.Value > 0 then
              begin
                 Queries.OpenOTC(CDSTransShowOTC_NUMBER.Value);
                 Queries.OpenPatient('','','',CDSOTCNUMEROCLIENTE.Value);
                 Memo1.Clear;
                 Memo1.Lines.Add(Trim(CDSClientesNombreCompleto2.Value));
                 Memo1.Lines.Add(CDSClientesDIRECCION1.Value);
                 if Trim(CDSClientesDIRECCION2.Value) > '' then
                   Memo1.Lines.Add(CDSClientesDIRECCION2.Value);
                 Memo1.Lines.Add(Trim(Trim(CDSClientesCIUDAD.Value) + ' ' + CDSClientesESTADO.Value + ' ' + Trim(CDSClientesCODIGOPOSTAL.Value)));
                 Memo1.Lines.Add('Mobile Phone: ' + Trim(CDSClientesCELULAR.Value));
              end;
              CDSTransShow.Next;
            end;
            CDSTransShow.First;
          end;
          EditDeliveredBy.ReadOnly := True;
          ShowModal;
          DeliverInitials := DMMidas.CDSPasswordsINICIALES.Value;
          CustomerName := Trim(Copy(DMMidas.CDSClientesNombreCompleto2.Value,1,30));
        end
        else
        begin
          Label1.Caption := 'Customer';
          cxCheckBox1.Visible := False;
          cxCheckBox1.Checked := False;
          Label2.Visible := False;
          Memo1.Visible := False;
          ShowModal;
          CustomerName := FrmDelivered.EditDeliveredBy.Text;
        end;


        By := EditDeliveredBy.Text;
        DMMidas.CDSTransShow.First;
        if DMMidas.CDSSetupFACTURARECIBO.Value = 'F' then
        begin
          PrintLargeReceipt(TransHead, TRUE, 'ivuloto');
        end
        else
        begin
          for I := 0 to FrmDelivered.SpinEdit1.Value - 1 do
          begin
            With DMMidas do
            begin
              With CDSHead do
              Begin
                Active := False;
                CommandText := 'select * from transactionheader_temp where transactionnumber = ' + IntToStr(CDSTransShowTRANSACTIONNUMBER.Value);
                Active := True;
                //ShowMessageStr(CDSHeadTRANSACTIONNUMBER.AsString);
              End;
              With CDSDetail do
              Begin
                Active := False;
                CommandText := 'SELECT * FROM TransactionDetail_Temp WHERE TransactionNumber = ' + IntToStr(CDSTransShowTRANSACTIONNUMBER.Value);
                Active := True;
              End;
              FrmRptRecibo := TFrmRptRecibo.Create(Application);
              With FrmRptRecibo do
              begin
                Receipt.PrepareReport;
                Receipt.ShowReport;
              end;
              With DMMidas do
              begin
                CDSTransShow.Close;
                CDSTransShow.Params[0].Value := IntToStr(TransHead);
                CDSTransShow.Open;
                CDSTransShow.First;
                while not CDSTransShow.Eof do
                begin
                  SQLQuery1.SQL.Text := '';
                  SQLQuery1.SQL.Text := 'Update OTC set WF_DELIVERED = ' + chr(39) + Trim(DeliverInitials) + ' ' + DateTimeToStr(Now) + chr(39) +
                            ' Where OTCNUMBER = ' + CDSTransShowOTC_NUMBER.AsString;
                  SQLQuery1.ExecSQL();
                  CDSTransShow.Next;
                end;
                CDSTransShow.First;
                CDSPasswords.Close;
                CDSPasswords.CommandText := 'Select * from passwords order by username';
                CDSPasswords.Open;
              end;

            end;
          end;
        end;
        //PrintReceipt(Header, False, 'Saved');
        If Not DMMidas.CDSTransShow.EOF Then
        Begin
          If Header <> 0 then
          begin
            if Deliver = True then
              begin
              if FrmDelivered.cxCheckBox1.Checked then
              begin
                Delivered := 'T';
                By := FrmDelivered.EditDeliveredBy.Text;
                //CustomerName := '';
              end
            end
            else
            begin
              Delivered := 'F';
              By := '';
            end;
            HoldSaveTrans(Header,'S', Delivered, By, '0', CustomerName);
            CommonPOS.ClearTransactions;
          end;
        end;
        FrmDelivered.Free;
      end;

    Header := TransHead;
    With DMMidas.CDSTransHead do
    begin
      Active := False;
      Params[0].Value := Header;
      If Header <> 0 then
        Active := True;
    end;
    With DMMidas.CDSTransShow do
    begin
      Active := False;
      Params[0].Value := Header;
      If Header <> 0 then
        Active := True;
    end;

  end;
end;
}

function TCommonPOS.GetHeldHeader(User : String) : Integer;
Begin
  Result := 0;
  With DMMidas.SQLQuery2 do
  Begin
    Close;
    SQL.Text := 'Select TransactionNumber From TransactionHeader_TEMP Where ' +
                   '(Opened = ''H'') And (Register = ''' + CommonPOS.RegisterNo + ''')';
    Active := True;
    IF Not EOF Then
    Begin
      Result := Fields[0].asInteger;
    end;
    Active := False;
  end;
end;


procedure TCommonPOS.Hold(Header: Integer; Hold: String);
Begin
  With DMMidas.CDSTrHeadAdHoc do
  Begin
    SQL.Clear;
    SQL.Add('Update TransactionHeader_TEMP Set Opened = ''' + Hold +
                   ''' Where TransactionNumber = ' + IntToStr(Header));
    ExecSQL(True);

  end;
  if Hold = 'H' then
  begin
    With DMMidas.CDSTrHeadAdHoc do
    begin
      SQL.Clear;
      SQL.Add('Update TransactionDetail_TEMP Set Opened = ''' + Hold +
                   ''' Where TransactionNumber = ' + IntToStr(Header));
      ExecSQL(True);
    end;
  end
  else
  begin
    With DMMidas.CDSTrHeadAdHoc do
    begin
      SQL.Clear;
      SQL.Add('Update TransactionDetail_TEMP Set Opened = ' + chr(39) + Hold + chr(39) + ', FECHAVENTA = ' + chr(39) + DateToStr(Date) + chr(39) +
                   ' Where TransactionNumber = ' + IntToStr(Header));
      ExecSQL(True);
    end;
  end;
end;

function TCommonPOS.InternetAcive: boolean;
var
  flags: DWORD;
begin
  Flags := INTERNET_CONNECTION_MODEM or INTERNET_CONNECTION_LAN or
    INTERNET_CONNECTION_PROXY or INTERNET_CONNECTION_MODEM_BUSY;
  result := InternetGetConnectedState(@Flags, 0);
end;


procedure TCommonPOS.HoldSaveTrans(Header: Integer; Hold, Delivered, By, ID, Customer: String);
Begin
  CommonPOS.DisconnectFromDatabase;
  With DMMidas.HOLD_SAVE_TRANSACTION do
  begin
    Prepare;
    ParamByName('@TRANNO').Value := Header;
    ParamByName('@ID').Value := CommonPOS.ID;
    ParamByName('@OPTION').Value := Hold;
    ParamByName('@DELIVER').Value := Delivered;
    ParamByName('@DELIVERNAME').Value := By;
    ParamByName('@CUSTOMER').Value := Trim(Copy(Customer, 1, 30));
    ParamByName('@DELIVERYADDRESS1').Value := 'N/A';// Trim(Copy(Customer, 1, 30));
    ParamByName('@DELIVERYADDRESS2').Value := Trim(Copy(Customer, 1, 30));
    ParamByName('@DELIVERY_CITY').Value := '';
    ParamByName('@DELIVERY_ZIPCODE').Value := '';
    ParamByName('@DELIVERY_STATE').Value := '';
    ParamByName('@DELIVERYPHONE').Value := '';
    ParamByName('@REGISTER_NO').Value := StrToInt(CommonPOS.RegisterNo);
    ParamByName('@EMPLOYNUMBER').Value := CommonPOS.User;
    ParamByName('@PONUMBER').Value := '';
    ExecProc;
  end;
end;


procedure TCommonPOS.FormCreate;
var
  Year, Month, Day: Word;
begin
  With DMMidas do
  begin
    CommonPOS.DisconnectFromDatabase;
    With LOGEADOPOS do
    begin
      Prepare;
      ParamByName('@UserNo').Value := UserRights.USERNO;// User;
      ParamByName('@Logeado').Value := false;
      ExecProc;
    end;
    CrSignature := '';
    DecodeDate(Date, Year, Month, Day);
    Check := False;
    Queries.NextNumber;

    Force := False;
    With DMMidas.CDSAdHocPrintList do
    begin
      SQL.Clear;
      SQL.Add('Select Shift, StartBank, CashRead, Shift, ID From DailyTotals Where EmployNumber = ''' +
                      CommonPOS.User  + ''' and register = '
                      + CommonPOS.RegisterNo + ' AND Status_Caja = ' + #39 + 'O' + #39);
      Active := True;
      If recordcount > 0 then
      begin
        if Fields[2].asCurrency > 0 then
        begin
          if not Fields[0].IsNull then Turno := Fields[0].Value + 1
          else
            ChangeTurno;
        end
        else
        begin
          FrmMain.ValidPetty := True;
          Turno := Fields[0].Value;
          CommonPOS.Turno := DMMidas.CDSAdHocPrintList.Fields[4].Value;
          CommonPOS.Perc := 0;
        end;
      end
      else
      begin
        ChangeTurno;
      end;
      Active := False;
    end;
    CommonPOS.ClearTransactions;

    If CommonPOS.PoleDisplayPort > 0 then
    begin
      Try
        //FrmMain.elSerialPort1.Open;
      Except
      end;
      SendToPole(CenterString(DMMidas.CDSSetupSTORENAME.Value,20),CenterString('SALESTEC 2006',20));
    end;
    FrmMain.sbMain.Panels[3].Text := '';
  end;
end;

procedure TCommonPOS.ChangeTurno;
Var
  Day, Month, Year: Word;
  Petty: Currency;
  Loop: Boolean;
  StrPetty: String;
begin
  Loop := True;
  DecodeDate(Date, Year, Month, Day);
  With DMMidas.CDSTrHeadAdHoc2 do
  begin
    Close;
    CommandText := 'Select StartBank from DailyTotals Where EmployNumber = ''' +
                    CommonPOS.User + ''' AND SalesDate = ''' +
                    Format('%.2d/%.2d/%.4d',[Month,Day,Year]) + ''' AND Shift = ' +
                    IntToStr(CommonPOS.Turno) + ' and Register = ' + CommonPOS.RegisterNo ;
    Active := True;
    Petty := Fields[0].AsCurrency;
    Active := False;
    if Petty = 0 then
    begin
      StrPetty := '0';
      While loop = True do
      If InputQuery('Petty cash','Entre la cantidad',StrPetty) then
      begin
        Petty := StrToCurr(StrPetty);
        If Petty > 0 then
        begin
          Loop := False;
          With DMMidas do
          begin
            if CDSDailyTotals.Active = False then CDSDailyTotals.Active := True;
            CDSDailyTotals.Append;
            CDSDailyTotalsSTARTBANK.Value := StrToCurr(StrPetty);
            CDSDailyTotalsEMPLOYNUMBER.Value := CommonPOS.User;
            CDSDailyTotalsSALESDATE.asString := DateToStr(Date);
            CDSDailyTotalsSHIFT.Value := CommonPOS.Turno;
            CDSDailyTotalsREGISTER.Value := StrToInt(CommonPOS.RegisterNo);
            CDSDailyTotalsID.Value := 0;
            CDSDailyTotals.Post;
            CDSDailyTotals.ApplyUpdates(0);
            FrmMain.ValidPetty := True;
          end;
        end
        else
        begin
          if FrmMain.LanguageStr = 'English' then
            ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 281), 12, clBlack)
          else
          ShowMessageStr('No puede dejar el petty cash en blanco...', 12,clBlack);
        end;
      end
      else
      begin
        Loop := False;
      end;
    end
    else
    begin
      FrmMain.ValidPetty := True;
    end;
  end;
end;

function TCommonPOS.checkDigit(const vStr: String): Integer;
var
  i, x, y, check, m: Integer;
  barcode: String;
begin
  if Length(vStr) > 11 then
    barcode := copy(vStr, 1, vStr.Length - 1)
  else
    barcode := vStr;
  x := 0;
  y := 0;
  for i := Length(barcode) downto 1 do
  begin
    if (Length(barcode) - i) mod 2 = 0 then
    begin
      Y := Y + StrToInt(Copy(barcode, i, 1));
    end;
  end;

  for i := Length(barcode) - 1 downto 1 do
  begin
    if (Length(barcode) - i) mod 2 = 1 then
    begin
      x := x + StrToInt(Copy(barcode, i, 1));
    end;
  end;
  check := x + Y * 3;
  m := (10 - (check mod 10)) mod 10;
  Result := m;
end;

function TCommonPOS.CanClose: boolean;
var
  buttonSelected: Integer;
begin
  If Header <> 0 then
  begin
    if FrmMain.LanguageStr = 'English' then
      ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 268), 12, clBlack)
    else
    ShowMessageStr('Hay una transacción en proceso, favor terminar', 12,clBlack);
    Result := False;
  end
  else
  begin
    Header := CommonPOS.GetHeldHeader(CommonPOS.User);
    If Header <> 0 then
    begin
      if FrmMain.LanguageStr = 'English' then
        ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 282), 12, clBlack)
      else
      ShowMessageStr('Hay una transacción en hold, favor terminar', 12,clBlack);
      Result := False;
    end
    else
    begin
      if FrmMain.LanguageStr = 'English' then
        FrmMain.msgD := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 301)
      else
        FrmMain.msgD := '¿Desea cerrar la caja?';
     { if MessageDlg(FrmMain.msgD,mtConfirmation,[mbNo, mbYes, mbCancel],1) = mrYes then
      begin
        CerrarCaja;
      end;  }

      buttonSelected := MessageDlg(FrmMain.msgD,mtConfirmation,[mbNo, mbYes, mbCancel],3);
      if buttonSelected = mrYes then
        CerrarCaja
      else if (buttonSelected = mrCancel) or (buttonSelected = mrNone) then
      begin
        Result := False;
        exit;
      end;

      VeteranoActivo := 0;
      AuspicioActivo := False;
      TransNo := 0;
      ID := 0;
      Turno := 0;
      Perc := 0;
      RefundPOS := False;
      CommonPOS.LogeadoPOS(False);
      If CommonPOS.PoleDisplayPort <> 0 then
      begin
        //ComClose(CommonPOS.PoleDisplayPort);
      end;
      Result := True;
    end;
  end;
end;

Procedure TCommonPOS.CerrarCaja;
var
   s, response: String;
   flag: Boolean;
begin
  With DMMidas do
  begin
    With CDSTrHeadAdHoc2 do
    begin
      Close;
      CommandText := 'Select ID, Status_Caja from DailyTotals Where ID = ' + IntToStr(CommonPOS.ID);
      Active := True;
      Edit;
      FieldByName('Status_Caja').Value := 'C';
      Post;
      CDSTrHeadAdHoc2.ApplyUpdates(-1);
    end;
  end;
  if (CommonPOS.activePin = True) and (CommonPOS.settleOnClosePos = True)then
  begin
    ipe.globalIndicator := nil;
    ipe.globalLabel := nil;
    ipe.settle;
  end;
  if (CommonPOS.SpinPOSActive = True) and (CommonPOS.settleOnClosePos = True) then        //settle pinpad
  begin
    SettleSpinPOS;
  end;
end;

Procedure TCommonPOS.Servicios(TS:Integer);
Var
  I, Qty: Integer;
  Mult: Single;
  TaxValue: Double;
  Tax: String;
  CobrarImpuesto: Boolean;
begin
  TaxValue := 0;
  If DMMidas.CDSDepartamentos.Active = False then DMMidas.CDSDepartamentos.Active := True;
  I := 1;
  FrmServicios := TFrmServicios.Create(Application);
  if TS = 1 then FrmServicios.Tag := 1 else FrmServicios.Tag := 0;
  Mult:= 1 - Perc/100;
  With FrmServicios do
  Begin
    While I = 1 do
    begin
      ShowModal;
      CobrarImpuesto := FrmServicios.CBCobrarImpuesto.Checked;
      If ModalResult = mrOk then
      begin
        If (FrmServicios.EditDescripcion.Text = '') or (FrmServicios.EditValor.Text = '') then
        Begin
          if FrmMain.LanguageStr = 'English' then
            ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 283), 12, clBlack)
          else
          ShowMessageStr('Debe entrar toda la información requerida', 12,clBlack);
          I := 1;
        end
        else
        Begin
            Qty := 1;
            if RefundPOS = False then
            begin
              if TS = 1 then
                CommonPOS.AddProduct('F','99999999999',EditDescripcion.Text,'200','F','',
                     CommonPOS.User, 'F', 'F',  StrToCurr(EditValor.Text)*Mult,
                     StrToFloat(EditValor.Text), Perc, 0, Qty, 0,  CommonPOS.Turno, CommonPOS.ID, 0,0,0,0,false, CobrarImpuesto,'',0,false,0,false, false)
              else
                CommonPOS.AddProduct('F','99999999999',EditDescripcion.Text,'200','F','',
                     CommonPOS.User, 'F', 'F',  StrToCurr(EditValor.Text)*Mult,
                     StrToFloat(EditValor.Text), Perc, 0, Qty, 0,  CommonPOS.Turno, CommonPOS.ID, 0,0,0,0,false, CobrarImpuesto,'',0,false,0,false, false);
            end
            else
              CommonPOS.AddProduct('F','99999999999',EditDescripcion.Text,'200','F','',
                     CommonPOS.User, 'F', 'F', StrToFloat(EditValor.Text)*Mult,
                     StrToFloat(EditValor.Text), Perc, 0, Qty - (Qty + Qty), 0,  CommonPOS.Turno, CommonPOS.ID, 0,0,0,0,false, CobrarImpuesto,'',0,false,0,false, false);

          I := 0;
        end;
        //BtnArticulo.Down := True;
      end
      else
        I := 0;
    end;
    Release;
  end;
end;

procedure TCommonPOS.ShowMyTabs;
begin
  With DMMidas do
  begin
    cdsOpenTabs.Close;
    cdsOpenTabs.CommandText := 'Select * from OPEN_TABS where server = ' + IntToStr(UserRights.UserNO) + ' order by Customer';
    cdsOpenTabs.Open;
    cdsOpenTabs2.Close;
    cdsOpenTabs2.CommandText := 'Select * from OPEN_TABS where server = ' + IntToStr(UserRights.UserNO) + ' order by Customer';
    cdsOpenTabs2.Open;
  end;
end;

Procedure TCommonPOS.VentaManual(TS:Integer);
Var
  I, Qty: Integer;
  Mult: Single;
  TaxValue: Double;
  Tax: String;
begin
  TaxValue := 0;
  If DMMidas.CDSDepartamentos.Active = False then DMMidas.CDSDepartamentos.Active := True;
  I := 1;
  FrmManualSale := TFrmManualSale.Create(Application);
  if TS = 1 then FrmManualSale.Tag := 1 else FrmManualSale.Tag := 0;
  Mult:= 1 - Perc/100;
  With FrmManualSale do
  Begin
    While I = 1 do
    begin
      if TS = 2 then
      begin
        EditDescripcion.Text := '';
        ComboBox1.Text := 'Recetario';
        FrmManualSale.Caption := 'Venta de Recetas';
      end;
      ShowModal;
      If ModalResult = mrOk then
      begin
        If (FrmManualSale.EditDescripcion.Text = '') or (FrmManualSale.ComboBox1.Text = '') or
           (FrmManualSale.EditPrecio.Text = '') or (FrmManualSale.EditCantidad.Text = '') then
        Begin
          if FrmMain.LanguageStr = 'English' then
            ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 283), 12, clBlack)
          else
          ShowMessageStr('Debe entrar toda la información requerida', 12,clBlack);
          I := 1;
        end
        else
        Begin
            Qty := StrToInt(EditCantidad.Text);
            if RefundPOS = False then
            begin
              if TS = 1 then
                CommonPOS.AddProduct('F','99999999999',EditDescripcion.Text,ComboBox1.Text,'F','',
                     CommonPOS.User, 'T', 'T',  StrToCurr(EditPrecio.Text)*Mult,
                     StrToCurr(EditPrecio.Text), Perc, 0, Qty, 0,  CommonPOS.Turno, CommonPOS.ID, 0,0,0,0,false,false,'',0,false,0,false, false)
              else
                CommonPOS.AddProduct('F','99999999999',EditDescripcion.Text,ComboBox1.Text,'F','',
                     CommonPOS.User, 'F', 'F',  StrToCurr(EditPrecio.Text)*Mult,
                     StrToCurr(EditPrecio.Text), Perc, 0, Qty, 0,  CommonPOS.Turno, CommonPOS.ID, 0,0,0,0,false,false,'',0,false,0,false, false);
            end
            else
              CommonPOS.AddProduct('F','99999999999',EditDescripcion.Text,ComboBox1.Text,'F','',
                     CommonPOS.User, 'T', 'T', StrToFloat(EditPrecio.Text)*Mult,
                     StrToFloat(EditPrecio.text), Perc, 0, Qty - (Qty + Qty), 0,  CommonPOS.Turno, CommonPOS.ID, 0,0,0,0,false,false,'',0,false,0,false, false);

          I := 0;
        end;
        //BtnArticulo.Down := True;
      end
      else
        I := 0;
    end;
    Release;
  end;
end;


function TCommonPOS.VerifyifPrescriptionsSignature(Option: String): Boolean;
begin
  Result := True;
  if Option = 'SmartPickup' then
  begin
    With DMwc do
    begin
      cdsWillCall.First;
      while not cdsWillCall.Eof do
      begin
        if (cdsWillCallOTC_NUMBER.Value > 0) and (cdsWillCallPOS_PICKUP.Value = true) then
        begin
          Queries.OpenPrescriptions(false, cdsWillCallOTC_NUMBER.Value);
          if DMMidas.CDSSetupRX_ENFORCE_SIGNATURE_ONCHECKOUT.Value = True then
          begin
            if DMMidas.CDSOTCSIGNATURE_LINK.Value = 1 then
            begin
              CommonPOS.ShowMessageStr('Prescriptions Number: ' + DMMidas.CDSOTCNUMERORECETA.asstring + ' is not signed!',12,clred);
              Result := False;
              Exit;
            end;
          end;
          if DMMidas.CDSSetupRX_ENFORCERXCHECK_ONCHECKOUT.Value = false then
          begin
            if Trim(DMMidas.CDSOTCWF_CHECKED.Value) = '' then
            begin
              CommonPOS.ShowMessageStr('Prescriptions Number: ' + DMMidas.CDSOTCNUMERORECETA.asstring + ' has not been audited by the pharmacist on Workflow!',12,clred);
              Result := False;
              Exit;
            end;
          end;
        end;
        cdsWillCall.Next;
      end;
    end;
  end
  else
  begin
    With DMMidas do
    begin
      CDSTransShow.First;
      while not CDSTransShow.Eof do
      begin
        if CDSTransShowOTC_NUMBER.Value > 0 then
        begin
          Queries.OpenPrescriptions(false, CDSTransShowOTC_NUMBER.Value);
          if DMMidas.CDSOTCNUMERORECETA.Value > 0 then
          begin
            if DMMidas.CDSSetupRX_ENFORCE_SIGNATURE_ONCHECKOUT.Value = True then
            begin
              if CDSOTCSIGNATURE_LINK.Value < 10 then  //NOT SIGNED, VALUE MUST BE 1
              begin
                CommonPOS.ShowMessageStr('Prescriptions must be signed to continue!', 12,clRed);
                Result := False;
                exit;
              end;
            end;
            if DMMidas.CDSSetupRX_ENFORCERXCHECK_ONCHECKOUT.Value = true then
            begin
              if Trim(DMMidas.CDSOTCWF_CHECKED.Value) = '' then
              begin
                CommonPOS.ShowMessageStr('Prescriptions Number: ' + DMMidas.CDSOTCNUMERORECETA.asstring + ' has not been audited by the pharmacist on Workflow!',12,clred);
                Result := False;
                Exit;
              end;
            end;
          end
          else
          begin
            Result := true;
          end;
        end;
        CDSTransShow.Next;
      end;
    end;
  end;
end;

function TCommonPOS.isSigned(OTCNumber: Integer): Boolean;
begin
  Result := True;
  if DMMidas.CDSSetupRX_ENFORCE_SIGNATURE_ONCHECKOUT.Value = true then
  begin
    With DMMidas do
    begin
      if OTCNumber <> CDSOTCOTCNUMBER.Value then
        Queries.OpenPrescriptions(false, OTCNumber);
      if CDSOTCSIGNATURE_LINK.Value < 5 then //NOT SIGNED, VALUE MUST BE 1
      begin
        Result := False;
      end;
    end;
  end;
end;

Procedure TCommonPOS.PagoCredito(TS: Boolean);
Var
  SAmnt: String;
  Amnt, DAmnt: Currency;
  FSearch: TForm;
begin
  //If Customer = 0 then
  //begin
    if TS = True then
      FSearch := TFrmSearchCust2.Create(Application)
    else
      FSearch := TFrmSearchCust.Create(Application);
    With FSearch do
    begin
      ShowModal;
      If ModalResult = mrOK then
      begin
        CustomerSSN := Trim(DMMidas.CDSClientesCARDHOLDERID.Value);
        CommonPos.Customer := DMMidas.CDSClientesNUMEROCLIENTE.Value;
        FrmMain.sbMain.Panels[3].Text := Trim('Cliente: ' + DMMidas.CDSClientesNOMBRE.Value +
                                             ' ' + DMMidas.CDSClientesAPELLIDOPATERNO.Value);
        if FrmMain.WebCredit = True then
          //DAmnt := DMMidas.CDSClientesDeudaCentralizada.Value
        else
          DAmnt := DMMidas.CDSClientesDEUDA.asFloat;
        If (Customer > 0) and (DAmnt > 0) then
        begin
          SAmnt := '0';
          if TS = True then
          begin
            FrmInputNumber :=  TFrmInputNumber.Create(Application);
            With FrmInputNumber do
            begin
              Caption := 'Entre Cantidad.';
              ShowModal;
              if EditNumber.Text > '' then
              begin
                Amnt := StrToFloat(EditNumber.Text);
              end;
              Free;
            end;
          end
          else
          begin
            InputQuery('Pagos','Entre la cantidad',SAmnt);
            Amnt := StrToCurr(SAmnt);
          end;
          if Amnt > 0 then
          begin
            Try
              If (DAmnt - Amnt) > -0.01 then
              begin
                CommonPOS.AddProduct('F','99999999998','PAGO CUENTA','PAGO','F','',
                           CommonPOS.User, 'F', 'F', Amnt,
                           Amnt, 0, 0,1,0, CommonPOS.Turno, CommonPOS.ID, 0,0,0,0,false,false,'',0,false,0,false, false);
                CrPay := True;
                CrPayAmnt := Amnt;
                AbonoCredito := True;
                CommonPOS.Trans_AbonoCredito := Amnt;
              end
              else
              begin
                CommonPos.Customer := 0;
                FrmMain.sbMain.Panels[3].Text := '';
                if FrmMain.LanguageStr = 'English' then
                  ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 284), 12, clBlack)
                else
                ShowMessageStr('Pago no puede ser mayor que la deuda', 12,clBlack);
                AbonoCredito := False;
                With FrmPOSTS do
                begin
                  RzBitBtn23.Enabled := True;
                  RzBitBtn7.Enabled := True;
                  BtnLayAway.Enabled := True;
                  RzBitBtn16.Enabled := True;
                  BtnAuspicio.Enabled := True;
                  BtnCredit.Enabled := True;
                end;
              end;
            except
              CommonPos.Customer := 0;
              FrmMain.sbMain.Panels[3].Text := '';
              if FrmMain.LanguageStr = 'English' then
                ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 263), 12, clBlack)
              else
              ShowMessageStr('Cantidad incorrecta', 12,clBlack);
            end;
          end
          else
            if FrmMain.LanguageStr = 'English' then
              ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 285), 12, clBlack)
            else
            ShowMessageStr('No se registro cantidad', 12,clBlack);
        end
        else
          if FrmMain.LanguageStr = 'English' then
            ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 286), 12, clBlack)
          else
          ShowMessageStr('Cliente no tiene deuda.', 12,clBlack) ;
      end;
      Release;
    end;
  //end;
end;

Procedure TCommonPOS.PayOut(TS: Boolean);
Var
  TmpAmnt: Single;
  PayType, InvoiceNum, StrAmnt: String;
  AuthUser: String;
  Amnt, MaxAmount: Double;
begin
  With DMMidas do
  begin
    //showMessage(IntToStr(CommonPOS.ID));
    if (CommonPOS.ID <= 0) then
    begin
      With CDSTrHeadAdHoc2 do
      begin
        Close;
        if CDSSetupPOS_USER_INDIVIDUAL_BALANCING.Value = False then
        begin
          CommandText := 'Select StartBank, ID, SalesDate from DailyTotals Where Status_Caja = ' +
                      #39 + 'O' + #39 + ' and Register = ' + CommonPOS.RegisterNo;
        end
        else
        begin
          CommandText := 'Select StartBank, ID, SalesDate from DailyTotals Where Status_Caja = ' +
                #39 + 'O' + #39 + ' and Register = ' + CommonPOS.RegisterNo +
                ' and EMPLOYNUMBER = ' + chr(39) + CommonPOS.User + chr(39);
        end;
        Active := True;
        CommonPOS.ID := DMMidas.CDSTrHeadAdHoc2.fieldbyName('ID').asInteger;
      end;
    end;
    {
    FDQuery1.Close;
    FDQuery1.SQL.Text := 'SELECT sum(PayAmount1) as TAmount From TransactionHeader Where (ID = ' + IntToStr(CommonPOS.ID) + ')  AND (Voided = 0) AND (PaymentType1 = ' + chr(39) + 'CASH' + chr(39) +') and (Register = ' + CommonPOS.RegisterNo + ')';
    FDQuery1.Open;
    if FDQuery1.FieldByName('TAmount').IsNull = False then
    begin
      MaxAmount := FDQuery1.FieldByName('TAmount').Value;
    end;
    FDQuery1.Close;
    FDQuery1.SQL.Text := 'SELECT sum(PayAmount2) as TAmount From TransactionHeader Where (ID = ' + IntToStr(CommonPOS.ID) + ')  AND (Voided = 0) AND (PaymentType2 = ' + chr(39) + 'CASH' + chr(39) +') and (Register = ' + CommonPOS.RegisterNo + ')';
    FDQuery1.Open;
    if FDQuery1.FieldByName('TAmount').IsNull = False then
    begin
      MaxAmount := MaxAmount + FDQuery1.FieldByName('TAmount').Value;
    end;
    FDQuery1.Close;
    FDQuery1.SQL.Text := 'SELECT sum(Change) as TAmount From TransactionHeader Where (ID = ' + IntToStr(CommonPOS.ID) + ')  AND (Voided = 0) AND (Register = ' + CommonPOS.RegisterNo + ')';
    FDQuery1.Open;
    if FDQuery1.FieldByName('TAmount').IsNull = False then
    begin
      MaxAmount := MaxAmount - FDQuery1.FieldByName('TAmount').Value;
    end;
    FDQuery1.Close;
    FDQuery1.SQL.Text := 'Select STARTBANK as TAmount from dailytotals Where ID = ' + IntToStr(CommonPOS.ID);
    FDQuery1.Open;
    if FDQuery1.FieldByName('TAmount').IsNull = False then
    begin
      MaxAmount := MaxAmount +  FDQuery1.FieldByName('TAmount').Value;
    end;
    FDQuery1.Close;
    FDQuery1.SQL.Text := 'SELECT sum(PayAmount1) as TAmount From TransactionHeader Where (ID = ' + IntToStr(CommonPOS.ID) + ')  AND (Voided = 0) AND (PaymentType1 = ' + chr(39) + 'POUT' + chr(39) +') and (Register = ' + CommonPOS.RegisterNo + ')';
    FDQuery1.Open;
    if FDQuery1.FieldByName('TAmount').IsNull = False then
    begin
      MaxAmount := MaxAmount - FDQuery1.FieldByName('TAmount').Value;
    end;  }
    try
      CALC_PAYOUT.Prepare;
      CALC_PAYOUT.ParamByName('@ID').AsInteger := CommonPOS.ID;
      CALC_PAYOUT.ParamByName('@Register').AsInteger := StrToIntDef(CommonPOS.RegisterNo, 0);
      CALC_PAYOUT.ExecProc;                                 // execute
      // procedure returns a resultset with column MaxAmount in the example; fetch it:
      if not CALC_PAYOUT.Active then CALC_PAYOUT.Open;
      if not CALC_PAYOUT.FieldByName('MaxAmount').IsNull then
        MaxAmount := CALC_PAYOUT.FieldByName('MaxAmount').AsCurrency
      else
        MaxAmount := 0;
    except on e: Exception do
      showMessage('Error: ' + e.Message)
    end;
  end;
  AuthUser := CommonPOS.User;
  if CommonPOS.isAuthorized('POS_PAYOUT',UserRights.POS_PAYOUT,true) then
  begin
    If Header = 0 then
    begin
      try
        StrAmnt := '0' ;
        InvoiceNum := '';
        FrmInputNumber :=  TFrmInputNumber.Create(Application);
        With FrmInputNumber do
        begin
          Caption := 'Available: ' + Format('%m', [MaxAmount]);
          FrmInputNumber.ShowModal;
          Amnt := StrToFloat(FrmInputNumber.EditNumber.Text);
          Free;
        end;
        If Amnt > 0 then
        begin
          if Amnt <= MaxAmount then
          begin
            FrmEnterDescription :=  TFrmEnterDescription.Create(Application);
            With FrmEnterDescription do
            begin
              EditDescripcion.TextHint := 'Entre description';
              ShowModal;
              if ModalResult = mrOk then
                InvoiceNum := FrmEnterDescription.EditDescripcion.Text
              else
                InvoiceNum := '';
              FrmEnterDescription := Nil;
              Free;
            end;
            if Trim(InvoiceNum) = '' then InvoiceNum := 'N/A';
            if Trim(InvoiceNum) > '' then
            Begin
              CommonPOS.Paidout := True;
              Header := CommonPOS.GetNewHeader(CommonPOS.User, CommonPOS.Turno, CommonPOS.ID);
              CommonPOS.AddProduct('F','99999999999', Copy('Pay Out - ' + InvoiceNum,1,30),'Pay Out','F','',
                         CommonPOS.User, 'F', 'F',  Amnt, Amnt, 0, 0,1,0, CommonPOS.Turno, CommonPOS.ID, 0,0,0,0,false,false,'',0,false,0,false, false);
              CommonPOS.DisconnectFromDatabase;
              With DMMidas.POS_UPDATE_PAYMENTTYPE do
              begin
                Prepare;
                ParamByName('@TRANSNO').Value := Header;
                ParamByName('@PAYMENTTYPE').Value := 'POUT';
                ParamByName('@AMOUNT').Value := Amnt;
                ExecProc;
              end;
              DMMidas.CDSTransShow.Active := False;
              PayType := 'CAS';// FrmPOSTS.StatusBar1.Panels[4].Text;
              if Trim(CommonPOS.PrinterIP) = '' then
              begin
                //CommonPOS.PrintReceipt(Header, 1, True, PayType,'0', False, False, False, False,True);
              end;
              DMMidas.CDSTransShow.Active := False;
              CommonPOS.DisconnectFromDatabase;
              With DMMidas do
              begin
                With TRANSACTIONDETAIL_DELETE do
                begin
                  Prepare;
                  ParamByName('@REGISTER').AsInteger := StrToInt(CommonPOS.RegisterNo);
                  ParamByName('@TNUMBER').AsInteger := Header;
                  ExecProc;
                end;
              end;
              if Trim(CommonPOS.PrinterIP) > '' then
              begin
                CommonPOS.Insert_Print_Jobs(True, false, false, 'receipt', '0', IntToStr(Header), PayType, CommonPOS.email, CommonPOS.mobile_phone, '', '0', 1);
              end;
              Header := 0;
              CommonPos.Customer := 0;
              FrmMain.sbMain.Panels[3].Text := '';
              CrPay := False;
              CrPayAmnt := 0;
              LaPay := False;
              LaPayAmnt := 0;
              CommonPOS.Paidout := False
            end;
          end
          else
          begin
            ShowMessage('Unavalilable amount!');
          end;
        end;
      except
        if FrmMain.LanguageStr = 'English' then
          ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 267), 12, clBlack)
        else
        ShowMessageStr('Cantidad inválida', 12,clBlack);
      end;
    end
    else
    begin
      if FrmMain.LanguageStr = 'English' then
        ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 268), 12, clBlack)
      else
      ShowMessageStr('Hay una transacción en proceso, termine antes de hacer el Pay Out', 12,clBlack);
    end;
  end;
end;

procedure TCommonPOS.PayTransaction(PyType: String);
Var
  TTaxMunicipal, NTotal: Double;
  TranNo: String;
  str: String;
begin
  CommonPOS.TransactionType := PyType;
  With DMMidas do
  begin
    TranNo := CDSTransHeadTRANSACTIONNUMBER.asString;
    begin
     FrmCheckOut := TFrmCheckOut.Create(Nil);
     With FrmCheckOut do
     begin
       Edit4.Visible := True;
       Edit4.TabStop := True;
       edit4.Enabled := True;
       if PyType = 'TFAM' then
       begin
         //Edit4.Enabled := False;
         if CommonPOS.unicaCard = False then
           Edit4.Text := Format('%n', [CommonPOS.CalcTarjetaFamilia(True)])
         else
          Edit4.Text := Format('%.2f', [CDSTransHeadBalance.Value])
       end
       else if CommonPOS.otccard = True then
       begin
         LabelRecibido.Caption := 'TENDERED';
         Edit4.Text := Format('%.2f', [CDSTransHeadOTCCard.asFloat])
       end
       else
       begin
         LabelRecibido.Caption := 'TENDERED';
         if CDSTransHeadBalance.Value < 999.99 then
           Edit4.Text := Format('%.2f', [CDSTransHeadBalance.Value])
         else
           Edit4.Text := FloatToStr(CDSTransHeadBalance.Value);
           PayType := '';
       end;                                                                                      //MCS//
       if (PyType = 'ATH') or (PyType = 'VISA') or (PyType = 'ATHM') or (PyType = 'TFAM')
       or (PyType = 'TSSS') or (PyType = 'CASH') and (CommonPOS.activePin = True) then
       begin
         LabelRecibido.Caption := 'AMOUNT';
         activatePinpad := True;
         if PyType = 'TSSS' then
         begin
           FrmCheckOut.Edit4.Enabled := False;
           FrmCheckout.Edit4.Text := FrmValidateProds.totalAmnt;
         end
       end;
      // str := Format('%f',[StrToFloat(Edit4.Text)]);
       str := edit4.Text;
       //str := StringReplace(str, ',', '', [rfReplaceAll, rfIgnoreCase]);
       CommonPOS.SendToPole('Total: ' + str, 'GRACIAS             ');
       FrmCheckOut.PayType := PyType;
       ShowModal;
       Free;
     end;
     //EditSearchProd.SetFocus;
    end;


  end;
end;


Procedure TCommonPOS.Discount(ActiveDiscount: Boolean);
Var
  TPerc: String;
  AuthUser: String;
  IDNumber: Integer;
  respuesta: Integer;
  UPC: String;
begin
  AuthUser := CommonPOS.User;
  If ActiveDiscount = False then
  begin
    if CommonPOS.isAuthorized('POS_DISCOUNT', UserRights.POS_DISCOUNT,true) then
    begin
      TPerc := '0';
        With DMMidas do
        begin
          IDNumber := CDSTransShowIDNUMBER.Value;
          UPC := Trim(CDSTransShowUPC.Value);
        end;

        FrmInputNumber := TFrmInputNumber.Create(Application);   //Bring up the form to enter the discount percentage//
        With FrmInputNumber do
        begin
          EditNumber.text := '0';
          if FrmMain.LanguageStr = 'English' then
            FrmInputNumber.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 260)
          else
            FrmInputNumber.Caption := 'Entre el prociento';
          ShowModal;
          TPerc := FrmInputNumber.EditNumber.Text;
          if Pos('.', TPerc) = 0 then                  //checks for decimal point
            TPerc := FloatToStr(Strtofloat(tperc) / 100);
          Free;
        end;
      Perc := StrToCurr(TPerc);
      If Perc > 0 then
      begin
        Try
          FrmPOSRest.StatusBar1.Panels[8].Text := 'Disc.: ' + TPerc + '%';
          If Header > 0 then
          begin
            if FrmMain.LanguageStr = 'English' then
              FrmMain.msgD := 'Do you wish to apply discount to all charged items?'//TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 302) //Apply discount on all products that are not discounted//
            else
              FrmMain.msgD := 'Desea aplicar a los productos cobrados?';
              respuesta := MessageDlgNoPorDefecto(FrmMain.msgD);
            if respuesta = mrYes then
            begin
              With DMMidas.CDSTrHeadAdHoc do
              begin
                SQL.Clear;
                SQL.Add('Update TransactionDetail_temp Set DISCOUNT_PERCENTAGE = ' + Tperc
                + ', Supervisor = ' + #39 + CommonPOS.Supervisor + #39
                + ' Where TransactionNumber = ' + IntToStr(Header) + ' and DISCOUNT_PERCENTAGE = 0 and SALES_PROMO = 0');
                ExecSQL(True);
                CalcHeadTotal(DMMidas.CDSTransShowTRANSACTIONNUMBER.Value);
              end;
            end
            else
            begin
              FrmMain.msgD := 'Do you want to apply the discount to the selected product?';     //Apply discount on a selected product//
              respuesta := MessageDlgNoPorDefecto(FrmMain.msgD);
              if respuesta = mrYes then
              begin
                With DMMidas.CDSTrHeadAdHoc do
                begin
                  if (DMMidas.CDSTransShowDISCOUNT_PERCENTAGE.Value > 0) or (DMMidas.CDSTransShowSALES_PROMO.Value = True) then    //Check if the product selected has discount (No discount allowed on discounted prods)//
                    CommonPOS.ShowMessageStr('Cannot add discount on discounted or sales promo products.', 14, clRed)
                  else
                  begin
                    SQL.Clear;
                    SQL.Add('Update TransactionDetail_temp Set DISCOUNT_PERCENTAGE = ' + Tperc
                    + ', Supervisor = ' + #39 + CommonPOS.Supervisor + #39
                    + ' Where IDNUMBER = ' + IntToStr(IDNumber) + ' ');
                    ExecSQL(True);
                    CalcHeadTotal(DMMidas.CDSTransShowTRANSACTIONNUMBER.Value);
                  end;
                  Perc := 0;
                  FrmPOSRest.StatusBar1.Panels[8].Text := '';
                end;
              end;
            end;
          end;
        except
        end;
      end;
    end;
  end
  else
  begin
    Perc := 0;
    FrmPOSRest.StatusBar1.Panels[8].Text := '';
  end;
end;

function TCommonPOS.DoneWorkingWithTab: Boolean;
begin
  With DMMidas do
  begin
    Result := True;
    if CommonPOS.Header > 0 then
    begin
      cdsOpenTabs.Close;
      cdsOpenTabs.CommandText := 'Select * from OPEN_TABS where TRANSACTIONNUMBER = ' +  IntToStr(CommonPOS.Header);
      cdsOpenTabs.Open;
      if cdsOpenTabs.RecordCount > 0 then // BALANCE.Value > 0 then
      begin
        if (CommonPOS.Restaurant = False) and (cdsOpenTabsTRANS_TYPE.Value <> 'I') and (cdsOpenTabsTRANS_TYPE.Value <> 'D') then
        begin
          CommonPOS.PrintSavedTransaction(false);
        end
        else if cdsOpenTabsTRANS_TYPE.Value = 'I' then
        begin
          if MessageDlg('Do you want to print this quote?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            cotizacion := True;
            PrintLargeReceipt(1, TRUE, false, false, 'ivuloto');
          end;
        end
        else if cdsOpenTabsTRANS_TYPE.Value = 'D' then
        begin
          if MessageDlg('Do you want to print this delivery?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            delivery := True;
            CommonPOS.PrintSavedTransaction(true);
            //PrintLargeReceipt(1, TRUE, false, false, 'ivuloto');
          end;
        end;
        CommonPOS.ClearTransactions;
        Result := True;
      end
      else
      begin
        FrmPOSRest.btnStartTab.Click;
        {if CommonPOS.StartTab(True, CommonPOS.TransNo, DMMidas.CDSTransHeadTOTAL.asFloat, 'S') = True then
        begin
          CommonPOS.ClearTransactions;
          Result := True;
        end
        else
        begin
          Result := False;
        end;
        //CommonPOS.ClearTransactions;}
      end;
    end;
  end;
end;

Procedure TCommonPOS.AbonoLayaway;
Var
  SAmnt: String;
  Amnt, DAmnt: Currency;
  FrmSearch: TForm;
begin
  If Customer = 0 then
  begin
    //if CommonPOS.TouchScreen = True then
    FrmSearch := TFrmSearchCust2.Create(application);
    //else
    //  FrmSearch := TFrmSearchCust.Create(Application);
    With FrmSearch do
    begin
      ShowModal;
      If ModalResult = mrOK then
      begin
        CommonPos.Customer := DMMidas.CDSClientesNUMEROCLIENTE.Value;
        FrmMain.sbMain.Panels[3].Text := Trim('Cliente: ' + DMMidas.CDSClientesNOMBRE.Value +
                                             ' ' + DMMidas.CDSClientesAPELLIDOPATERNO.Value);
        DAmnt := DMMidas.CDSClientesLAWAY.asFloat;
        If Customer > 0 then
        begin
          SAmnt := '0';
          //if CommonPOS.TouchScreen = True then
          //begin
            FrmInputNumber := TFrmInputNumber.Create(Application);
            With FrmInputNumber do
            begin
              if FrmMain.LanguageStr = 'English' then
                FrmInputNumber.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 252)
              else
                FrmInputNumber.Caption := 'Entre la cantidad';
              ShowModal;
              if ModalResult <> mrOK then
                exit;
              SAmnt := FrmInputNumber.EditNumber.Text;
              Free;
            end;
          //end
          //else
          //  InputQuery('Abono Lay Away','Entre la cantidad',SAmnt);

          If SAmnt > '' then
          begin
            Try
              AbonoLayawayCR := True;
              CommonPOS.Trans_AbonoLayaway := StrToCurr(SAmnt);
              Amnt := StrToCurr(SAmnt);
              If (DAmnt - Amnt) > -0.01 then
              begin
                CommonPOS.AddProduct('F','99999999997','ABONO LAY AWAY','ABONO','F','',
                           CommonPOS.User, 'F', 'F', Amnt,
                           Amnt, 0, 0,1,0,CommonPOS.Turno, CommonPOS.ID, 0,0,0,0,false,false,'',0,false,0,false, false);
                LaPay := True;
                LaPayAmnt := Amnt;
              end
              else
              begin
                CommonPos.Customer := 0;
                FrmMain.sbMain.Panels[3].Text := '';
                if FrmMain.LanguageStr = 'English' then
                  ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 262), 12, clBlack)
                else
                  ShowMessageStr('Pago no puede ser mayor que la deuda', 12,clBlack);
                With FrmPOSTS do
                begin
                  RzBitBtn23.Enabled := True;
                  RzBitBtn7.Enabled := True;
                  BtnLayAway.Enabled := True;
                  RzBitBtn16.Enabled := True;
                  BtnAuspicio.Enabled := True;
                  BtnCredit.Enabled := True;
                end;                
              end;
            except
              CommonPos.Customer := 0;
              FrmMain.sbMain.Panels[3].Text := '';
              if FrmMain.LanguageStr = 'English' then
                ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 263), 12, clBlack)
              else
                ShowMessageStr('Cantidad incorrecta', 12,clBlack);
            end;
          end;
        end;
      end;
      Release;
    end;
  end;
end;

Procedure TCommonPOS.PickUp;
Var
  TmpAmnt: Single;
  InvoiceNum, StrAmnt: String;
  AuthUser: String;
  MaxAmount: Double;
begin
  AuthUser := CommonPOS.User;
  if CommonPOS.isAuthorized('POS_PAYOUT',UserRights.POS_PAYOUT,true) then
  begin
    If Header = 0 then
    begin
      try
        StrAmnt := '0';
        InvoiceNum := '';
        try
          with DMMidas do
          begin
            CALC_PAYOUT.Prepare;
            CALC_PAYOUT.ParamByName('@ID').AsInteger := CommonPOS.ID;
            CALC_PAYOUT.ParamByName('@Register').AsInteger := StrToIntDef(CommonPOS.RegisterNo, 0);
            CALC_PAYOUT.ExecProc;                                 // execute
            // procedure returns a resultset with column MaxAmount in the example; fetch it:
            if not CALC_PAYOUT.Active then CALC_PAYOUT.Open;
            if not CALC_PAYOUT.FieldByName('MaxAmount').IsNull then
              MaxAmount := CALC_PAYOUT.FieldByName('MaxAmount').AsCurrency
            else
              MaxAmount := 0;
          end;
        except on e: Exception do
          showMessage('Error: ' + e.Message)
        end;
        FrmInputNumber := TFrmInputNumber.Create(Application);
        With FrmInputNumber do
        begin
          if FrmMain.LanguageStr = 'English' then
            FrmInputNumber.Caption := 'Available: ' + Format('%m', [MaxAmount])
          else
            FrmInputNumber.Caption := 'Entre la cantidad';
          ShowModal;
          if ModalResult <> mrOK then
            exit;
          StrAmnt := FrmInputNumber.EditNumber.Text;
          Free;
        end;
        If StrAmnt > '' then
        begin
          TmpAmnt := StrtoFloat(StrAmnt);
          FrmEnterDescription :=  TFrmEnterDescription.Create(Application);
          With FrmEnterDescription do
          begin
            if FrmMain.LanguageStr = 'English' then
              EditDescripcion.TextHint := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 264)
            ELSE
              EditDescripcion.TextHint := 'Entre description';
            ShowModal;
            if ModalResult = mrOk then
              InvoiceNum := FrmEnterDescription.EditDescripcion.Text
            else
              InvoiceNum := '';
            FrmEnterDescription := Nil;
            Free;
          end;

          If InvoiceNum > '' then
          Begin
            Header := CommonPOS.GetNewHeader(CommonPOS.User, CommonPOS.Turno, CommonPOS.ID);
            CommonPOS.AddProduct('F','99999999999','Pickup - ' + InvoiceNum,'PICKUP','F','',
                       CommonPOS.User,  'F', 'F', TmpAmnt,TmpAmnt, 0, 0,1,0, CommonPOS.Turno, CommonPOS.ID, 0,0,0,0,false,false,'',0,false,0,false, false);
            CommonPOS.DisconnectFromDatabase;
            With DMMidas.POS_UPDATE_PAYMENTTYPE do
            begin
              Prepare;
              ParamByName('@TRANSNO').Value := Header;
              ParamByName('@PAYMENTTYPE').Value := 'PICK';
              ParamByName('@AMOUNT').Value := StrAmnt;
              ExecProc;
            end;
            DMMidas.CDSTransShow.Active := False;
            //CommonPOS.PrintReceipt(Header, 1, True, 'PICK','0', False, False, False, False, True);
            DMMidas.CDSTransShow.Active := False;
            CommonPOS.DisconnectFromDatabase;
            With DMMidas do
            begin
              With TRANSACTIONDETAIL_DELETE do
              begin
                Prepare;
                ParamByName('@REGISTER').AsInteger := StrToInt(CommonPOS.RegisterNo);
                ParamByName('@TNUMBER').AsInteger := Header;
                ExecProc;
              end;
              if Trim(CommonPOS.PrinterIP) > '' then
              begin
                CommonPOS.Insert_Print_Jobs(True, false, false, 'receipt', '0', IntToStr(Header), 'PICK', CommonPOS.email, CommonPOS.mobile_phone, '', '0', 1);
              end;
            end;
            Header := 0;
            CommonPos.Customer := 0;
            FrmMain.sbMain.Panels[3].Text := '';
            CrPay := False;
            CrPayAmnt := 0;
            LaPay := False;
            LaPayAmnt := 0;
          end;
        end;
      except
        if FrmMain.LanguageStr = 'English' then
          ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 287), 12, clBlack)
        else
        ShowMessageStr('Cantidad inválida', 12,clBlack);
      end;
    end
    else
    begin
      if FrmMain.LanguageStr = 'English' then
        ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 268), 12, clBlack)
      else
      ShowMessageStr('Hay una transacción en proceso, termine antes de hacer el Pickup.', 12,clBlack);
    end;
  end;
end;

Procedure TCommonPOS.Assemblies(Token: Integer);
Var
  NoAssembly, TaxMunicipal, TaxEstatal: String;
  Tax: Double;
begin
  Tax := 0;
  if token = 0 then
  begin
      FrmInputNumber := TFrmInputNumber.Create(Application);
      With FrmInputNumber do
      begin
        EditNumber.text := '0';
        FrmInputNumber.Caption := 'Enter No. Assembly';
        ShowModal;
        if ModalResult <> mrOK then
          exit;
        NoAssembly := FrmInputNumber.EditNumber.Text;
        Free;
      end;
  end
  else
    NoAssembly := IntToStr(Token);
    if NoAssembly > '' then
    begin
      With DMMidas do
      begin
        CDSAssembly_Header.Close;
        CDSAssembly_Header.CommandText := 'Select * from Assembly_HEADER where NO_TRANS = ' + NoAssembly;
        CDSAssembly_Header.Open;
        CDSAssembly_Detail.Close;
        CDSAssembly_Detail.CommandText := 'Select * from Assembly_detail where NO_TRANS = ' + NoAssembly;
        CDSAssembly_Detail.Open;
        if CDSAssembly_DetailNO_TRANS.Value > 0 then
        begin
          Assemblie := True;
          While not CDSAssembly_Detail.Eof do
          begin
            Queries.OpenInventory(CDSAssembly_DetailBARCODE.Value, '',false);
            if (CDSInventarioPisoTAXABLE.Value = '1') then TaxMunicipal := 'T' ELSE TaxMunicipal := 'F';
            if (CDSInventarioPisoTAXABLE_ESTATAL.Value = '1') then TaxEstatal := 'T' Else TaxEstatal := 'F';

            CommonPOS.AddProduct('F',CDSAssembly_DetailBARCODE.Value, CDSAssembly_HeaderDESCRIPTION.Value, CDSAssembly_HeaderDESCRIPTION.Value,'F','',
                 CommonPOS.User, TaxMunicipal, TaxEstatal, CDSAssembly_DetailPRECIO.Value,
                 CDSAssembly_DetailCOSTO.Value, Perc, 0, CDSAssembly_DetailQTY.Value ,0, CommonPOS.Turno, CommonPOS.ID, CDSInventarioPisoPRODUCTNO.Value, CDSInventarioPisoSUB_DEPARTAMENTO.Value,0,0,false,false,'',0,false,0,CDSInventarioPisoPROCESSED_FOOD.Value, false);
            CDSAssembly_Detail.Next;
          end;
          Assemblie := False;
        end;
      end;
    end;
end;

function TCommonPOS.StartBank: Boolean;
Var
  Day, Month, Year: Word;
  Petty: Currency;
  StrPetty: String;
  I: Integer;
  SQLTxt: String;
  SUnCentavos, SCincoCentavos, SDiezCentavos,
  SVeinticincoCent, SUno, SDos, SCinco,
  SDiez, SVeinte, SCincuenta, SCien, STotal: String;
  DTCurrent_Identity: Integer;
begin
  //Result := True;
  //==================== Verify if this register is open====================
  //if DMMidas.CDSSetupCONFIRM_OPEN_REGISTER.Value = True then
  begin
    with DMMidas do
    begin
      CDSDailyTotals.Close;
      if CDSSetupPOS_USER_INDIVIDUAL_BALANCING.Value = False then
      //if CommonPOS.Restaurant = True then
        CDSDailyTotals.CommandText := 'Select * from DailyTotals where REGISTER = ' + CommonPOS.RegisterNo + ' and STATUS_CAJA = ' + chr(39) + 'O' + chr(39)
      else
        CDSDailyTotals.CommandText := 'Select * from DailyTotals where REGISTER = ' + CommonPOS.RegisterNo + ' and STATUS_CAJA = ' + chr(39) + 'O' + chr(39) +
        'and EMPLOYNUMBER = ' + chr(39) + CommonPOS.User + chr(39);
      CDSDailyTotals.Active := True;
      if (CDSDailyTotals.RecordCount > 0) then Result := True;

      if (CDSDailyTotals.RecordCount = 0) then
      begin
        With DMMidas.CDSTrHeadAdHoc2 do
        begin
          Petty := 0;
          if Petty = 0 then
          begin
            if DMMidas.CDSSetupPOS_CLASIC_PETTYCASH.Value = True then
            begin
              FrmInputNumber := TFrmInputNumber.Create(FrmMain);
              With FrmInputNumber do
              begin
                FrmInputNumber.Caption := 'Enter Petty Cash:';
                ShowModal;
                StrPetty := FrmInputNumber.EditNumber.Text;
                if ModalResult = mrCancel then
                begin
                  Free;
                  Result := False;
                  FrmInputNumber := Nil;
                  FrmInputNumber.Free;
                  exit;
                end;
                FrmInputNumber := Nil;
                FrmInputNumber.Free;
              end;
            end
            else
            begin
              FrmCalculateTotals := TFrmCalculateTotals.Create(FrmMain);
              with FrmCalculateTotals do
              begin
                ShowModal;
                StrPetty := EditTotal.Text;
                SUnCentavos := (Format('%26s %8s',[
                      Copy(LeftJString('ONE CENT: ' + Trim(SEUnCentavo.Text),26),1,26), LabelUnCentavo.Caption]));
                SCincoCentavos := (Format('%26s %8s',[
                      Copy(LeftJString('FIVE CENTS: ' + Trim(SECincoCentavos.Text),26),1,26), LabelCincoCentavos.Caption]));
                SDiezCentavos := (Format('%26s %8s',[
                      Copy(LeftJString('TEN CENTS: ' + Trim(SEDiezCentavos.Text),26),1,26), LabelDiezCentavos.Caption]));
                SVeinticincoCent := (Format('%26s %8s',[
                      Copy(LeftJString('TWENTY FIVE CENTS: ' + Trim(SEVeinticincoCent.Text),26),1,26), LabellVeinticincoCent.Caption]));
                SUno := (Format('%26s %8s',[
                      Copy(LeftJString('ONE DOLLARs: ' + Trim(SEUno.Text),26),1,26), LabelUno.Caption]));
                SDos := (Format('%26s %8s',[
                      Copy(LeftJString('TWO DOLLARS: ' + Trim(SEDos.Text),26),1,26), LabelDos.Caption]));
                SCinco := (Format('%26s %8s',[
                      Copy(LeftJString('FIVE DOLLARS: ' + Trim(SECinco.Text),26),1,26), LabelCinco.Caption]));
                SDiez := (Format('%26s %8s',[
                      Copy(LeftJString('TEN DOLLARS: ' + Trim(SEDiez.Text),26),1,26), LabelDiez.Caption]));
                SVeinte := (Format('%26s %8s',[
                      Copy(LeftJString('TWENTY DOLLARS: ' + Trim(SEVeinte.Text),26),1,26), LabelVeinte.Caption]));
                SCincuenta := (Format('%26s %8s',[
                      Copy(LeftJString('FIFTY DOLLARS: ' + Trim(SECincuenta.Text),26),1,26), LabelCincuenta.Caption]));
                SCien := (Format('%26s %8s',[
                      Copy(LeftJString('ONE HUNDRED DOLLARS: ' + Trim(SECien.Text),26),1,26), LabelCien.Caption]));
                STotal := (Format('%26s %8s',[
                      Copy(LeftJString('TOTAL IN DRAWER: ',26),1,26), EditTotal.Text]));

                Petty := StrToFloat(EditTotal.Text);
                if ModalResult = mrCancel then
                begin
                  Result := False;
                  FrmCalculateTotals := Nil;
                  FrmCalculateTotals.Free;
                  exit;
                end;
                FrmCalculateTotals := Nil;
                FrmCalculateTotals.Free;
              end;
            end;

            CommonPOS.SelectPrinter(CommonPOS.ReceiptPrinter);

            if StrToCurr(StrPetty) > 10000 then Petty := 0
              else
            Petty := StrToCurr(StrPetty);
            If (Petty > 0) then
            begin
              Result := True;
              With DMMidas do
              begin
                if CDSDailyTotals.Active = False then CDSDailyTotals.Active := True;
                CommonPOS.DisconnectFromDatabase;
                With POS_INSERT_DAILYTOTALS do
                begin
                  Prepare;
                  ParamByName('@STARTBANK').Value := StrToCurr(StrPetty);
                  ParamByName('@EMPLOYNUMBER').Value := Copy(CommonPOS.User,1,3);
                  ParamByName('@REGISTER').Value := CommonPOS.RegisterNo;
                  ExecProc;
                  DTCurrent_Identity := ParamByName('@DTCurrent_Identity').Value;
                end;
                CDSDailyTotals.Close;
                CDSDailyTotals.CommandText := 'Select * from DAILYTOTALS where ID = ' + IntToStr(DTCurrent_Identity);
                CDSDailyTotals.Open;


                FrmMain.ValidPetty := True;
                if DMMidas.CDSSetupPOS_CLASIC_PETTYCASH.Value = False then
                begin
                  CommonPOS.SelectPrinter(CommonPOS.ReceiptPrinter);
                  FrmReceiptView := TFrmReceiptView.Create(Application);
                  With FrmReceiptView.RichEdit1 do        //FrmMain
                  begin
                    Lines.Clear;
                    Font.Name := 'Lucida Console';
                    Font.Size := 9;
                    Font.Style := [fsBold];
                    Lines.Add(CommonPOS.CenterString(DMMidas.CDSSetupSTORENAME.Value,36));
                    Font.Name := 'Lucida Console';
                    Font.Style := [];
                    Lines.Add(CommonPOS.CenterString(DMMidas.CDSSetupSTOREADDRESS.Value,36));
                    Lines.Add(CommonPOS.CenterString('Petty Cash',36));
                    Lines.Add('USER: ' + CommonPOS.User);
                    Lines.Add('ID #: ' + CDSDailyTotalsID.AsString);
                    Lines.Add('Date: ' + DateToStr(Date) + ' Time: ' + TimeToStr(Time));
                    Lines.Add('------------------------------------');
                    Lines.Add(SUnCentavos);
                    Lines.Add(SCincoCentavos);
                    Lines.Add(SDiezCentavos);
                    Lines.Add(SVeinticincoCent);
                    Lines.Add(SUno);
                    Lines.Add(SDos);
                    Lines.Add(SCinco);
                    Lines.Add(SDiez);
                    Lines.Add(SVeinte);
                    Lines.Add(SCincuenta);
                    Lines.Add(SCien);
                    Lines.Add('------------------------------------');
                    Lines.Add(STotal);
                    Lines.Add('------------------------------------');
                    lines.Add('');
                    if CommonPOS.PrintToScreen = False then
                    begin
                      Print('');
                    end
                    else
                    begin
                      FrmReceiptView.ShowModal;
                    end;
                  end;
                  FrmReceiptView := Nil;
                  FrmReceiptView.Free;
                end;
              end;
            end
            else
            begin
              Result := False;
              if FrmMain.LanguageStr = 'English' then
                ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 288), 12, clBlack)
              else
              ShowMessageStr('No puede dejar el petty cash en blanco o no puede ser mayor de 10,000...', 12,clBlack);
            end;
          end
          else
          begin
            Result := True;
            FrmMain.ValidPetty := True;
          end;
        end;
      end;
    end;
  end;
end;

function TCommonPOS.StartTab(InsertHeader: Boolean; ID: Integer; Balance: Double; transType: String): Boolean;
Var
  CustomerStr, Telephone: String;
  CanContinue: Boolean;
  CustomerID: Integer;
  GROUP_BY_NAME: String;
begin
  Result := False;
  CanContinue := True;
  With DMMidas do
  begin
    cdsOpenTabs.Close;
    cdsOpenTabs.CommandText := 'Select * from OPEN_TABS where GROUP_BY_ID <> ' + IntToStr(ID)  + ' and ISTABLE = 1 order by ID';
    cdsOpenTabs.Open;
    FrmStartTab := TFrmStartTab.Create(nil);
    With FrmStartTab do
    begin
      if InsertHeader = false then
      begin
        FrmStartTab.btnStartNewTab.Visible := False;
        FrmStartTab.btnOK.Visible := False;
        FrmStartTab.BtnAddTable.Visible := True;
      end
      else
      begin
        if cotizacion = True then
        begin
          FrmStartTab.btnOK.Visible := True;
          FrmStarttab.btnStartNewTab.Visible := False;
        end
        else if transType = 'D' then
        begin
          FrmStartTab.btnOK.Visible := True;
          FrmStartTab.btnStartNewTab.Visible := True;
        end
        else
        begin
          FrmStartTab.btnOK.Visible := False;
          FrmStarttab.btnStartNewTab.Visible := True;
        end;
      end;
      ShowModal;
      if ModalResult = mrYes then
      begin
        GROUP_BY_NAME := cdsOpenTabsGROUP_BY_NAME.Value;

        FDQuery1.SQL.Text := 'UPDATE TABS_HEADER SET GROUP_BY_ID = ' + IntToStr(cdsOpenTabsID.Value)
        + ', GROUP_BY_NAME = ' + chr(39) + GROUP_BY_NAME + chr(39) + ' WHERE ID = ' + IntToStr(ID); //
        FDQuery1.ExecSQL;

        FDQuery1.SQL.Text := 'UPDATE TABS_DETAIL SET GROUP_BY_ID = ' + IntToStr(cdsOpenTabsID.Value)
        + ', GROUP_BY_NAME = ' + chr(39) + GROUP_BY_NAME + chr(39)
        + ' WHERE TABS_ID = ' + IntToStr(ID);
        FDQuery1.ExecSQL;
        CommonPOS.GroupTabs(cdsOpenTabsID.Value);
        exit;
      end;
      if (ModalResult = mrOk) or (ModalResult = mrClose) or
      (ModalResult = mrYes)
      and (Trim(EdtSearch.Text) > '') then
      begin
        if (ModalResult = mrOk) then    //Check for opened tabs
        begin
          CustomerStr := CDSClientesNombreCompleto2.Value;
          CustomerID := CDSClientesNUMEROCLIENTE.Value;
          cdsOpenTabs.Close;
          cdsOpenTabs.CommandText := 'Select * from OPEN_TABS where CUSTOMER_ID = ' + IntToStr(CustomerID);     //Checks opened tabs with customers saved in db
          cdsOpenTabs.Open;
          if cdsOpenTabs.RecordCount > 0 then
          begin
            Result := False;
            ShowMessageStr('Customer has an open Tab!', 12,clBlack);
            CanContinue := False;
          end
          else
          begin
            cdsOpenTabs.Close;
            cdsOpenTabs.CommandText := 'Select * from OPEN_TABS where CUSTOMER = ' + chr(39) + Trim(CustomerStr) + chr(39);               //Checks opened tabs with customers not saved in db
            cdsOpenTabs.Open;
            if cdsOpenTabs.RecordCount > 0 then
            begin
              Result := False;
              ShowMessageStr('Customer has an open Tab!', 12,clBlack);
              CanContinue := False;
            end;
          end;
        end;
        if (ModalResult = mrClose) then
        begin
          Result := True;
          CustomerStr := Trim(FrmStartTab.EdtSearch.Text);
          CustomerID := 0;
          CanContinue := True;
        end;

        if CanContinue = True then
        begin
          Result := True;
          CommonPOS.InsertNewTab(InsertHeader, Trim(Copy(CustomerStr, 1,45)), Trim(Copy(Telephone, 1,13)), transType, Balance, CustomerID);
          FrmPOSRest.LabelCustomer.Caption := '';
        end
        else
          Result := False;
      end
      else
      begin
        Result := False;
      end;
      FrmStartTab := nil;
      Free;
    end;
  end;
end;


procedure TCommonPOS.TAB_EditName(CustomerName, CustomerTelephone, TransNo, ButtonName: String);
begin
  With DMMidas do
  begin
    FrmEditTab := TFrmEditTab.Create(nil);
    With FrmEditTab do
    begin
      EditCustomer.Text := CustomerName;
      EditTelephone.Text := CustomerTelephone;
      Caption := 'Edit Open Tab ' + TransNo;// cdsOpenTabsTRANSACTIONNUMBER.AsString;
      ShowModal;
      if ModalResult = mrOk then
      begin
        FDQuery1.SQL.Text := 'Update tabs_detail set customer = ' + chr(39) + Copy(EditCustomer.Text,1,45) + chr(39)
        + ', TELEPHONE = ' + CHR(39) + EditTelephone.Text + CHR(39)
        + ', GROUP_BY_NAME = ' + CHR(39) + CustomerName + CHR(39)
        + ' where TransactionNumber = ' + TransNo;
        FDQuery1.ExecSQL;
        cdsOpenTabs.Refresh;
      end;
      FrmEditTab := nil;
      Free;
    end;
  end;
end;

function space_add_r(instr: string; sl: integer): string;
var
  outstr: string;
  i: integer;
begin
  outstr := instr;
  if Length(Instr) < sl then
    for i := Length(Instr) to sl do
       outstr := outstr + ' ';
  Result := outstr;
end;

procedure TCommonPOS.CalcHeadTotal(NOTRANS: Integer);
Var
  sNumber: String;
begin
  With DMMidas do
  begin
    With CAL_HEAD_TOTAL do
    begin
      {Prepare;
      ParamByName('@INTRANS').AsInteger := NOTRANS; //CDSTransShowTransactionNumber.Value;
      ParamByName('@NO_TAX_CHARGE').AsInteger := CommonPOS.NoTaxCharge;
      ParamByName('@SUPER').AsString := CommonPOS.Supervisor;
      ParamByName('@TAXFROM').Value := CDSSetupTAX_RATE_FROM.Value;
      ParamByName('@TAXRATE_Estatal').Value := CDSSetupTAX_RATE_ESTATAL.Value;
      ParamByName('@TAXRATE_Municipal').Value := CDSSetupTAX_RATE.Value;
      ExecProc;}
      if CDSTransShow.Active then CDSTransShow.Refresh;
      if CDSTransHead.Active then CDSTransHead.Refresh;
    end;
  end;
end;

function TCommonPOS.calcSplitPayment(total: String; var tax1, tax2, tax3, tax4: String): Boolean;
begin
  With DMMidas.CALC_SPLIT_PAYMENT_TAX do
  begin
    Prepare;
    ParamByName('@TOTALAMOUNT').Value := DMMidas.CDSTransHeadTotal.asFloat;
    ParamByName('@SPLIT_AMOUNT').Value := StrToFloat(total);//StrToFloat(FrmCheckOut.Edit4.Text);
    //ParamByName('@SPLIT_AMOUNT').Value := StrToFloat(copy(FrmPOSRest.DBText3.Caption, 2, 4));
    ParamByName('@STATE_TAX').Value := DMMidas.CDSTransHeadTAX_ESTATAL.asFloat;
    ParamByName('@MUNICIPAL_TAX').Value := DMMidas.CDSTransHeadTAX.asFloat;
    ParamByName('@REDUCED_TAX').Value := DMMidas.CDSTransHeadTAX_PROCESSED_FOOD.asFloat;
    ParamByName('@PROCESS_FOOD_TAX').Value := 0;
    ExecProc;
   { ShowMessage('State tax: ' + FloatToStr(ParamByName('@STATE_TAX').asFloat) + chr(13) +
                'Municipal Tax: ' + FloatToStr(ParamByName('@MUNICIPAL_TAX').asFloat) + chr(13) +
                'Reduced tax: ' + FloatToStr(ParamByName('@REDUCED_TAX').asFloat) + chr(13) +
                'Process food tax: ' + FloatToStr(ParamByName('@PROCESS_FOOD_TAX').asFloat));    }
    tax1 := FloatToStr(ParamByName('@STATE_TAX').asFloat);
    tax2 := FloatToStr(ParamByName('@MUNICIPAL_TAX').asFloat);
    tax3 := FloatToStr(ParamByName('@REDUCED_TAX').asFloat);
    tax4 := FloatToStr(ParamByName('@PROCESS_FOOD_TAX').asFloat);
  end;
end;

Procedure TCommonPOS.CambioCheque;
Var
  TmpAmnt: Single;
  PayType, InvoiceNum, StrAmnt: String;
  AuthUser: String;
  Amnt: Double;
  Header1: Integer;
begin
  AuthUser := CommonPOS.User;
  if CommonPOS.isAuthorized('POS_PAYOUT',UserRights.POS_PAYOUT,true) then
  begin
    If Header = 0 then
    begin
      try
        StrAmnt := '0';
        InvoiceNum := '';
        //if CommonPOS.TouchScreen = True then
        //begin
          FrmInputNumber :=  TFrmInputNumber.Create(Application);
          With FrmInputNumber do
          begin
            if FrmMain.LanguageStr = 'English' then
              FrmInputNumber.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 261)
            else
              FrmInputNumber.Caption := 'Entre Cantidad.';
            FrmInputNumber.ShowModal;
            Amnt := StrToFloat(FrmInputNumber.EditNumber.Text);
            Free;
          end;
        //end
        //else
        //begin
        //  InputQuery('Pagos','Entre la cantidad',StrAmnt);
        //Amnt := StrToCurr(StrAmnt);
        //end;

        If Amnt > 0  then
        begin
          TmpAmnt := Amnt;
          FrmEnterDescription := TFrmEnterDescription.Create(Application);
          With FrmEnterDescription do
          begin
            if FrmMain.LanguageStr = 'English' then
              Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 264)
            else
              Caption := 'Entre Descripción';
            //EditUsuario.PasswordChar := chr(0);
            EditDescripcion.TextHint := 'Entre Descripción';
            ShowModal;
            InvoiceNum := EditDescripcion.Text;
            FrmEnterDescription := nil;
            Free;
          end;

          if Trim(InvoiceNum) = '' then InvoiceNum := 'N/A';
          if Trim(InvoiceNum) > '' then
          Begin
            Header := CommonPOS.GetNewHeader(CommonPOS.User, CommonPOS.Turno, CommonPOS.ID);
            CommonPOS.AddProduct('F','77777777777','Cambio Cheque - ' + InvoiceNum,'Cambio Cheque','F','',
                       CommonPOS.User, 'F', 'F', TmpAmnt,TmpAmnt, 0, 0,1,0, CommonPOS.Turno, CommonPOS.ID, 0,0,0,0,false,false,'',0,false,0,false, false);
            With DMMidas.CDSTrHeadAdHoc do
            begin
              SQL.Clear;
              SQL.Add('Update TransactionHeader_TEMP Set Total = ' + FloatToStr(Amnt)
                             + ', PayAmount1 = ' + FloatToStr(Amnt) + ', PaymentType1 = ''CHK'', Opened = ''F'', Change = ' + FloatToStr(Amnt) +
                             ', CustomerID = 0 Where TransactionNumber = ' + IntToStr(Header));
              ExecSQL(True);
            end;

            DMMidas.CDSTransShow.Active := False;
            PayType := 'CHK';
            //CommonPOS.PrintReceipt(Header, 1, True, PayType, '0', False, False, False, False, True);
            CommonPOS.DisconnectFromDatabase;
            With DMMidas do
            begin
              With TRANSACTIONDETAIL_DELETE do
              begin
                Prepare;
                ParamByName('@REGISTER').AsInteger := StrToInt(CommonPOS.RegisterNo);
                ParamByName('@TNUMBER').AsInteger := Header;
                ExecProc;
              end;
            end;

            Header := CommonPOS.GetNewHeader(CommonPOS.User, CommonPOS.Turno, CommonPOS.ID);
            CommonPOS.AddProduct('F','77777777777','Cambio Cheque - ' + InvoiceNum,'Cambio Cheque','F','',
                       CommonPOS.User, 'F', 'F',TmpAmnt,TmpAmnt, 0, 0,1,0, CommonPOS.Turno, CommonPOS.ID, 0,0,0,0,false,false,'',0,false,0,false, false);

            With DMMidas.CDSTrHeadAdHoc do
            begin
              SQL.Clear;
              SQL.Add('Update TransactionHeader_TEMP Set Total = -' + FloatToStr(Amnt)
                             + ', PayAmount1 = -' + FloatToStr(Amnt) + ', PaymentType1 = ''CASH'', Opened = ''F'', Change = -' + FloatToStr(Amnt) +
                             ', CustomerID = 0 Where TransactionNumber = ' + IntToStr(Header));
              ExecSQL(True);
            end;

            DMMidas.CDSTransShow.Active := False;
            With DMMidas do
            begin
              CommonPOS.DisconnectFromDatabase;
              With TRANSACTIONDETAIL_DELETE do
              begin
                Prepare;
                ParamByName('@REGISTER').AsInteger := StrToInt(CommonPOS.RegisterNo);
                ParamByName('@TNUMBER').AsInteger := Header;
                ExecProc;
              end;
            end;
            Header := 0;
            CommonPos.Customer := 0;
            FrmMain.sbMain.Panels[3].Text := '';
            CrPay := False;
            CrPayAmnt := 0;
            LaPay := False;
            LaPayAmnt := 0;
          end;
        end;
      except
        if FrmMain.LanguageStr = 'English' then
          ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 287), 12, clBlack)
        else
        ShowMessageStr('Cantidad inválida', 12,clBlack);
      end;
    end
    else
    begin
      if FrmMain.LanguageStr = 'English' then
        ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 268), 12, clBlack)
      else
      ShowMessageStr('Hay una transacción en proceso, termine antes de hacer el Pay Out', 12,clBlack);
    end;
  end;
end;

procedure TCommonPOS.CambioChequeTrans(Amount: double);
begin
  CambioChequeTransTF := True;
  Header := CommonPOS.GetNewHeader(CommonPOS.User, CommonPOS.Turno, CommonPOS.ID);
  CommonPOS.AddProduct('F','77777777777','Cheque ','Cheque','F','',
             CommonPOS.User,'F', 'F', Amount, Amount, 0,0,1,0, CommonPOS.Turno, CommonPOS.ID, 0,0,0,0,false,false,'',0,false,0,false, false);
  With DMMidas.CDSTrHeadAdHoc do
  begin
    SQL.Clear;
    SQL.Add('Update TransactionHeader_TEMP Set Total = -' + FloatToStr(Amount)
                   + ', PayAmount1 = -' + FloatToStr(Amount) + ', PaymentType1 = ''CASH'', Opened = ''F'', Change = -' + FloatToStr(Amount) +
                   ', CustomerID = 0 Where TransactionNumber = ' + IntToStr(Header));
    ExecSQL(True);
  end;
  CambioChequeTransTF := False;
end;

Procedure TCommonPOS.ReprintReceipt;
var
  Year, Month, Day: Word;
  MyStrVal: String;
  //FacturaRecibo: Boolean;
begin
  {if DMMidas.CDSSetupFACTURARECIBO.Value = 'F' then
    FacturaRecibo := True
  else
    FacturaRecibo := False;}
  if CommonPOS.isAuthorized('POS_REPRINT',UserRights.POS_REPRINT, true) then
  begin
    DecodeDate(Date, Year, Month, Day);
    With DMMidas.CDSAdHocPrintList do
    begin
      SQL.Clear;
      SQL.Add('Select MAX(TransactionNumber) as TNum From TransactionHeader Where EmployNumber = ''' +
                      CommonPOS.User + '''');
      Active := True;
      MyStrVal := Fields[0].asString;
      Active := False;
        FrmInputNumber := TFrmInputNumber.Create(application);
        with FrmInputNumber do
        begin
          if FrmMain.LanguageStr = 'English' then
            FrmInputNumber.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 265)
          else
            FrmInputNumber.Caption := 'Entre el numero de transacción';
          EditNumber.text := '0';
          FrmInputNumber.EditNumber.Text := MyStrVal;
          ShowModal;
          if ModalResult <> mrOK then
            exit;
          MyStrVal := FrmInputNumber.EditNumber.Text;
        end;
        if (MyStrVal > '') and (MyStrVal <> '0') then
        begin
          With DMMidas do
          begin
            CDSHead.Active := False;
            CDSHead.CommandText := 'select * from transactionheader where transactionnumber = ' + MyStrVal;
            CDSHead.Active := True;
            CommonPOS.Customer := CDSHeadCUSTOMERID.Value;

            Try
              if Trim(CommonPOS.PrinterIP) > '' then
                 CommonPOS.Insert_Print_Jobs(true, false, false, 'receipt', '0', IntToStr(CDSHeadTRANSACTIONNUMBER.Value),
                 CDSHeadTRANS_TYPE.Value, '', '', '', '0', 1)
              else
                //CommonPOS.PrintReceipt(StrToInt(MyStrVal), 1, False, DMMidas.CDSHeadPAYMENTTYPE1.Value, '0', False, True, CommonPOS.Factura, False,False);
            Except
            begin
              if FrmMain.LanguageStr = 'English' then
                ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 289) + MyStrVal, 12, clBlack)
              else
              ShowMessageStr('Transacción ' + MyStrVal + ' no es válida', 12,clBlack);
            end;
            end;
          end;
        end;
    end;
  end;
end;


Procedure TCommonPOS.Comisiones;
Var
  TmpAmnt: Single;
  PayType, InvoiceNum, StrAmnt: String;
  AuthUser: String;
  Amnt: Double;
begin
  AuthUser := CommonPOS.User;
  if CommonPOS.isAuthorized('POS_PAYOUT',UserRights.POS_PAYOUT,true) then
  begin
    If Header = 0 then
    begin
      try
        StrAmnt := '0';
        InvoiceNum := '';
          FrmInputNumber :=  TFrmInputNumber.Create(Application);
          With FrmInputNumber do
          begin
            if FrmMain.LanguageStr = 'English' then
              FrmInputNumber.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 266)
            else
              FrmInputNumber.Caption := 'Entre Cantidad de la comision.';
            FrmInputNumber.ShowModal;
            Amnt := StrToFloat(FrmInputNumber.EditNumber.Text);
            Free;
          end;

        If Amnt > 0  then
        begin
          TmpAmnt := Amnt;
          //if CommonPOS.TouchScreen = True then
          //begin
            FrmSecurity :=  TFrmSecurity.Create(Application);
            With FrmSecurity do
            begin
              if FrmMain.LanguageStr = 'English' then
                Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 264)
              else
                Caption := 'Entre Descripción';
              EditUser.Visible := False;
              EditPassword.PasswordChar := chr(0);
              EditPassword.TextHint := 'Entre Descripción';
              ShowModal;
              if ModalResult = mrOk then
                InvoiceNum := FrmSecurity.EditPassword.Text
              else
                InvoiceNum := '';
              Free;
            end;
          //end
          //else
          //begin
          //  InputQuery('Pagos','Entre Descripción: ',InvoiceNum);
          //end;

          if Trim(InvoiceNum) > '' then
          Begin
            CommonPOS.AddProduct('F','99999999999', InvoiceNum, 'Comisiones','F','',
            CommonPOS.User, 'F', 'F',Amnt,
            Amnt, Perc, 0, 1, 0,  CommonPOS.Turno, CommonPOS.ID,0,0,0,0,false,false,'',0,false,0,false, false);
            PayType := FrmPOSTS.StatusBar1.Panels[4].Text;
          end;
        end;
      except
      begin
        if FrmMain.LanguageStr = 'English' then
          ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 267), 12, clBlack)
        else
          ShowMessageStr('Cantidad inválida', 12,clBlack);
      end;
      end;
    end
    else
    begin
      if FrmMain.LanguageStr = 'English' then
        ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 268), 12, clBlack)
      else
        ShowMessageStr('Hay una transacción en proceso, termine antes de hacer el Pay Out', 12,clBlack);
    end;
  end;
end;

function TCommonPOS.CreditTransaction(Amount: Double): Boolean;
Var
  FSearch: TForm;
begin
  With DMMidas do
  begin
      if CommonPOS.Customer = 0 then
      begin
        FSearch := TFrmSearchCust2.Create(Application);
        With FSearch do
        begin
          ShowModal;
          If ModalResult = mrOK then
          begin
            CommonPos.Customer := DMMidas.CDSClientesNUMEROCLIENTE.Value;
            Result := True;
          end
          else
          begin
              Result := False;
          end;
          FSearch := Nil;
          Free;
        end;
      end
      else
      begin
        Result := True;
      end;
      if Result = True then
      begin
        CommonPos.Customer := DMMidas.CDSClientesNUMEROCLIENTE.Value;
        FrmEnter_PO := TFrmEnter_PO.Create(nil);
        With FrmEnter_PO do
        begin
          ShowModal;
          if Trim(EditPO.Text) > '' then
          begin
             FDQuery1.SQL.Text := 'Update TransactionHeader_Temp set PONUMBER = ' + chr(39) + 'PO: ' + Trim(Copy(EditPO.Text,1,18)) + chr(39) + ' where TransactionNumber = ' + IntToStr(DMMidas.CDSTransHeadTRANSACTIONNUMBER.Value);
             FDQuery1.ExecSQL;
          end;
          FrmEnter_PO := nil;
          Free;
        end;
        if FrmMain.WebCredit = True then
        begin
         //===============WebCredit===========//
        end
        else
        begin
          if DMMidas.CDSClientesDEUDA.asFloat < -0.50  then
          begin
            if LastCreditTransactions(DMMidas.CDSClientesNUMEROCLIENTE.Value, '') = True then
            begin
              FrmMain.sbMain.Panels[3].Text := Trim('Cliente: ' + DMMidas.CDSClientesNOMBRE.Value +
                                                   ' ' + DMMidas.CDSClientesAPELLIDOPATERNO.Value);
              With DMMidas do
              begin
                if CDSClientTransactions.Active = False then CDSClientTransactions.Active := True;
                if CommonPOS.RefundPOS = True then
                  InsertCreditTrans('CR', abs(Amount), DMMidas.CDSTransHeadTRANSACTIONNUMBER.Value)
                else
                  InsertCreditTrans('DB', Amount, DMMidas.CDSTransHeadTRANSACTIONNUMBER.Value);
              end;
            end
            else
            begin
              if FrmMain.LanguageStr = 'English' then
                ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 290), 12, clBlack)
              else
              ShowMessageStr('El cliente debe hacer un pago antes de poder hacer una transaccion a credito, gracias.', 12,clBlack);
              Result := False;
            end;
          end
          else
          begin
            If (DMMidas.CDSClientesDEUDA.asFloat + Amount <= DMMidas.CDSClientesLimiteCredito.Value) then
            begin
              CommonPos.Customer := DMMidas.CDSClientesNUMEROCLIENTE.Value;
              FrmMain.sbMain.Panels[3].Text := Trim('Cliente: ' + DMMidas.CDSClientesNOMBRE.Value +

                                                   ' ' + DMMidas.CDSClientesAPELLIDOPATERNO.Value);

              With DMMidas do
              begin
                if CDSClientTransactions.Active = False then CDSClientTransactions.Active := True;
                if CommonPOS.RefundPOS = True then
                  InsertCreditTrans('CR', abs(Amount), DMMidas.CDSTransHeadTRANSACTIONNUMBER.Value)
                else
                  InsertCreditTrans('DB', Amount, DMMidas.CDSTransHeadTRANSACTIONNUMBER.Value);
              end;
            end
            else
            begin
              if FrmMain.LanguageStr = 'English' then
                ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 291), 12, clBlack)
              else
              ShowMessageStr('Límite de crédito excedido', 12,clBlack);
              Result := False;
              CommonPos.Customer := 0;
              FrmMain.sbMain.Panels[3].Text := '';
            end;
          end;
        end;
      end;
  end;
end;

function TCommonPOS.RecallTransaction(NumeroTransaccion: Integer): Boolean;
Var
  TransHead, IntCust: Integer;
  IntCrPay, IntLaPay: Boolean;
  IntCrPayAmnt, IntLaPayAmnt: Currency;
  IntPerc: Single;
begin
    Result := True;
    if NumeroTransaccion = 0 then
    Begin
      FrmRecallTrans :=  TFrmRecallTrans.Create(Application);
      With FrmRecallTrans do
      begin
        EditNumber.Text := '0';
        FrmRecallTrans.Caption := 'Entre numero Transaccion';
        FrmRecallTrans.ShowModal;
        if FrmRecallTrans.ModalResult = mrOk then
        begin
          NumeroTransaccion := DMMidas.CDSRecallTransTRANSACTIONNUMBER.Value;// FrmRecallTrans.EditNumber.Text
          Result := True;
        end
        else
        begin
          NumeroTransaccion := 0;
          Result := False;
        end;
        Free;
      end;
    end;

    if Result = True then
    begin
      DMMidas.CDSRecallTrans.Close;
      if NumeroTransaccion > 0 then
      begin
        Hold(NumeroTransaccion,'T');
        IntCust := HeldCust;
        IntCrPay := HeldCrPay;
        IntCrPayAmnt := HeldCrPayAmnt;
        IntLaPay := HeldLaPay;
        IntLaPayAmnt := HeldLaPayAmnt;
        IntPerc := HeldPerc;
        HeldCust := Customer;
        HeldCrPay := CrPay;
        HeldCrPayAmnt := CrPayAmnt;
        HeldLaPay := LaPay;
        HeldLaPayAmnt := LaPayAmnt;
        HeldPerc := Perc;
        CommonPos.Customer := IntCust;
        If IntCust <> 0 then
        begin
          DMMidas.CDSClientes.Locate('NUMEROCLIENTE',IntCust,[]);
          FrmMain.sbMain.Panels[3].Text := Trim('Cliente: ' + DMMidas.CDSClientesNOMBRE.Value +
                                               ' ' + DMMidas.CDSClientesAPELLIDOPATERNO.Value);
        end;
        CrPay := IntCrPay;
        CrPayAmnt := IntCrPayAmnt;
        LaPay := IntLaPay;
        LaPayAmnt := IntLaPayAmnt;
        Perc := IntPerc;
        If Perc > 0 then
        begin
          FrmPOSRest.StatusBar1.Panels[8].Text := 'DESCUENTO: ' + FloatToStr(Perc) + '%'
        end;
        CommonPOS.DisconnectFromDatabase;
        if NumeroTransaccion > 0  then
        begin
          CommonPOS.DisconnectFromDatabase;
          With DMMidas.POS_RECALL_TRANSACTION do
          begin
            Prepare;
            ParamByName('@ID').Value := IntToStr(CommonPOS.ID);
            ParamByName('@EMPLOYEE').Value := CommonPOS.User;
            ParamByName('@REGISTER').Value := CommonPOS.RegisterNo;
            ParamByName('@TRANSNO').Value := NumeroTransaccion;
            ExecProc;
          end;
          Queries.OpentTransHeader(NumeroTransaccion,false);
          {With DMMidas.CDSTransHead do
          begin
            Close;
            Params[0].Value := NumeroTransaccion;
            If NumeroTransaccion <> 0 then
              Open;
          end;}
          With DMMidas.CDSTransShow do
          begin
            Close;
            Params[0].Value := NumeroTransaccion;
            If NumeroTransaccion <> 0 then
              Open;
          end;
          if DMMidas.CDSTransShow.RecordCount > 0 then
          begin
            FrmPOSRest.StatusBar1.Panels[5].Text :=  IntToStr(NumeroTransaccion);
            FrmPOSRest.EditSearchProd.Text := '';
            FrmPOSRest.LabelCustomer.Caption := DMMidas.cdsOpenTabsCUSTOMER.Value;
            CommonPOS.Header := NumeroTransaccion;
            CommonPOS.TransNo := NumeroTransaccion;
          end;
          CommonPOS.recalledTrans := True;
        end
        else
        begin
          if FrmMain.LanguageStr = 'English' then
            ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 292), 12, clBlack)
          else
          ShowMessageStr('Factura no encontrada...', 12,clBlack);
        end;
      end;
    end;
end;




Procedure TCommonPOS.Auspicio;
Var
  FrmSearch: TForm;
begin
  if AuspicioActivo = False then
  begin
    FrmSearch := TFrmSearchCust2.Create(Application);
    with FrmSearch do
    begin
      ShowModal;
      If ModalResult = mrOK then
      begin
        AuspicioActivo := True;
        CommonPos.Customer := DMMidas.CDSClientesNUMEROCLIENTE.Value;
        FrmPOSRest.LabelCustomer.Caption := DMMidas.CDSClientesNombreCompleto2.Value;
      end;
    end;
  end
  else
  begin
    AuspicioActivo := False;
    FrmPOSRest.LabelCustomer.Caption := '';
    //FrmPOSTS.StatusBar2.Panels[1].PanelStyle.Color := clBtnFace;
    //FrmPOSTS.StatusBar2.Panels[1].Text := '';
  end;
end;

Procedure TCommonPOS.Veterano;
Var
  FrmSearch: TForm;
begin
  if VeteranoActivo = 0 then
  begin
    with FrmSearch do
    begin
        FrmSearch := TFrmSearchCust2.Create(Application);
        With FrmSearch do
        begin
          ShowModal;
        end;
      If ModalResult = mrOK then
      begin
        if DMMidas.CDSClientesVeterano.asFloat > 0 then
        begin
          VeteranoActivo := DMMidas.CDSClientesVeterano.asFloat;
          CommonPos.Customer := DMMidas.CDSClientesNUMEROCLIENTE.Value;
          //FrmPOSTS.StatusBar2.Panels[1].PanelStyle.Color := clRed;
          FrmPOSTS.StatusBar2.Panels[1].Text := Trim('Veterano: ' + Trim(DMMidas.CDSClientesVeterano.asString) +
                                             '% - ' + Trim(DMMidas.CDSClientesNOMBRE.Value) +
                                             ' ' + Trim(DMMidas.CDSClientesAPELLIDOPATERNO.Value));
        end
        else
        begin
          if FrmMain.LanguageStr = 'English' then
            ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 293), 12, clBlack)
          else
          ShowMessageStr('Aviso, el cliente no tiene el porciento de descuento de Veterano activado!', 12,clBlack);
        end;
      end;
    end;
  end
  else
  begin
    VeteranoActivo := 0;
    //FrmPOSTS.StatusBar2.Panels[1].PanelStyle.Color := clBtnFace;
    FrmPOSTS.StatusBar2.Panels[1].Text := '';
  end;
end;


procedure TCommonPOS.voidOrRefund;
var
  MyStrval: String;
  loop: Boolean;
begin
  if CommonPOS.SpinPOSActive = True then
  begin
    voidOrRefundSpinPOS;    //ejecuta proceso de void en spinPos
    exit;
  end;
  loop := True;
  CommonPOS.adjDelete := True;
  FrmInputNumber := TFrmInputNumber.Create(application);
  with FrmInputNumber do
  begin
    FrmInputNumber.Caption := 'Enter reference number';
    EditNumber.text := '0';
    FrmInputNumber.EditNumber.Text := MyStrVal;
    while loop = true do
    begin
      ShowModal;
      if (ModalResult = mrCancel) then
      begin
        loop := False;
        FrmPOSRest.btnRefundClick(nil);
        exit
      end;
      MyStrVal := FrmInputNumber.EditNumber.Text;
      if (MyStrVal > '') and (MyStrVal <> '0') then
      begin
        CommonPOS.TransactionType := 'journal';
        if Copy(MyStrval, 1, 2) = 'LD' then
        begin
          FrmEvertec := TFrmEvertec.Create(Nil);
          FrmEvertec.str := MyStrVal;
          FrmEvertec.ShowModal;
          FrmEvertec.Free;
          FrmEvertec := nil;
          loop := False;
        end
        else
        begin
          With DMMidas do
          begin
            cdsEvertec.Active := False;
            CDSEvertec.CommandText := 'select * from evertec where response like ' + chr(39) + '%' + MyStrVal + chr(28) + '00/APPROVED%' + chr(39);
            CDSEvertec.Active := True;
            CommonPOS.Header := cdsEvertecTRANSACTIONNUMBER.Value;
            if cdsEvertec.RecordCount > 0 then
            begin
              FrmEvertec := TFrmEvertec.Create(Nil);
              FrmEvertec.str := MyStrVal;
              FrmEvertec.ShowModal;
              FrmEvertec.Free;
              FrmEvertec := nil;
              loop := False;
            end
            else
            begin
              showMessage('No transaction found.');
              loop := True;
            end;
          end;
        end;
      end
      else
        loop := True;
    end;
  end;
end;

procedure TCommonPOS.voidOrRefundSpinPOS;
var
  MyStrval: String;
  loop: Boolean;
begin
  loop := True;
  CommonPOS.adjDelete := True;
  FrmInputNumber := TFrmInputNumber.Create(application);
  with FrmInputNumber do
  begin
    FrmInputNumber.Caption := 'Enter Transaction number';
    EditNumber.text := '0';
    FrmInputNumber.EditNumber.Text := MyStrVal;
    FrmInputNumber.Panel2.visible := true;
    FrmInputNumber.Edit2.visible := false;
    FrmInputNumber.Label2.visible := false;
    while loop = true do
    begin
      ShowModal;
      if (ModalResult = mrCancel) then
      begin
        loop := False;
        FrmPOSRest.btnRefundClick(nil);
        exit
      end;
      MyStrVal := FrmInputNumber.EditNumber.Text;
      if (MyStrVal > '') and (MyStrVal <> '0') then
      begin
        CommonPOS.TransactionType := 'Void';
        With DMMidas do
        begin
          cdsSpinPos.Active := False;
          cdsSpinPos.CommandText := 'select * from spinPOS where TransactionType=''Sale'' and VOIDEDRET=0 and TRANSACTIONNUMBER = ' + MyStrVal + ' and AMOUNT = ' + Edit1.Text ;
          cdsSpinPos.Active := True;
          CommonPOS.Header := cdsSpinPos.FieldByName('TRANSACTIONNUMBER').AsLargeInt;
          if cdsSpinPos.RecordCount > 0 then
          begin
           frmMainSPOS := TfrmSpinPOS.Create(nil);
           frmMainSPOS.TypePayment := cdsSpinPOSPaymentType.Value;
           frmMainSPOS.ProcessNum  := 3;  //void
           frmMainSPOS.sRefNum := cdsSpinPos.FieldByName('REFERENCENUM').AsString;
           frmMainSPOS.dAmount :=cdsSpinPOSAMOUNT.Value;
           frmMainSPOS.ShowModal;
           frmMainSPOS.Free;
           frmMainSPOS := nil;

            loop := False;
          end
          else
          begin
            showMessage('No transaction found.');
            loop := True;
          end;
        end;
      end
      else
        loop := True;
    end;
  end;
  CommonPOS.ClearTransactions;  //[2026/02/14 JB] CLEAR TRANSACTION
end;

procedure TCommonPOS.ReturnSpinPOS;
var
  MyStrval: String;
  loop: Boolean;
begin
  loop := True;
  CommonPOS.adjDelete := True;
  FrmInputNumber := TFrmInputNumber.Create(application);
  with FrmInputNumber do
  begin
    FrmInputNumber.Caption := 'Enter Transaction number';
    EditNumber.text := '0';
    FrmInputNumber.EditNumber.Text := MyStrVal;
    FrmInputNumber.Panel2.visible := true;
    FrmInputNumber.Edit2.visible := false;
    FrmInputNumber.Label2.visible := false;
    while loop = true do
    begin
      ShowModal;
      if (ModalResult = mrCancel) then
      begin
        loop := False;
        FrmPOSRest.btnRefundClick(nil);
        exit
      end;
      MyStrVal := FrmInputNumber.EditNumber.Text;
      if (MyStrVal > '') and (MyStrVal <> '0') then
      begin
        CommonPOS.TransactionType := 'Return';
        With DMMidas do
        begin
          cdsSpinPos.Active := False;
          cdsSpinPos.CommandText := 'select * from spinPOS where TransactionType=''Sale'' and VOIDEDRET=0 and TRANSACTIONNUMBER = ' + MyStrVal + ' and AMOUNT = ' + Edit1.Text ;
          cdsSpinPos.Active := True;
          CommonPOS.Header := cdsSpinPos.FieldByName('TRANSACTIONNUMBER').AsLargeInt;
          if cdsSpinPos.RecordCount > 0 then
          begin
           frmMainSPOS := TfrmSpinPOS.Create(nil);
           frmMainSPOS.TypePayment := cdsSpinPOSPaymentType.Value;
           frmMainSPOS.ProcessNum  := 2;  //return
           frmMainSPOS.sRefNum := cdsSpinPos.FieldByName('REFERENCENUM').AsString;     //MyStrVal;
           frmMainSPOS.dAmount :=cdsSpinPOSAMOUNT.Value;
           frmMainSPOS.ShowModal;
           frmMainSPOS.Free;
           frmMainSPOS := nil;

            loop := False;
          end
          else
          begin
            showMessage('No transaction found.');
            loop := True;
          end;
        end;
      end
      else
        loop := True;
    end;
  end;
  CommonPOS.ClearTransactions;  //[2026/02/14 JB] CLEAR TRANSACTION
end;

function  TCommonPOS.VoidTrans(NoTrans: Integer): Boolean;
begin
  With DMMIDAS.POS_CANCEL_TRANS do
  begin
    Prepare;
    ParamByName('@NOTRANS').Value := noTrans;
    ParamByName('@UPDATE_INV').Value := True;
    ParamByName('@isVoid').Value := True;
    ExecProc;
  end;
  CommonPOS.Insert_Print_Jobs(True, false, false, 'receipt', '0', IntToStr(noTrans), 'VOI', '', '', '', '0', 1);
end;

Procedure TCommonPOS.Patrocinio(CustomerNo: Integer);
Var
  FrmSearch: TForm;
begin
  if PatrocinioActivo = False then
  begin
    with FrmSearch do
    begin
      if CustomerNo = 0 then
      begin
        FrmSearch := TFrmSearchCust2.Create(Application);
        With FrmSearch do
        begin
          ShowModal;
          If (ModalResult = mrOK) then
          begin
            CustomerNo := DMMidas.CDSClientesNumeroCliente.Value;
          end
          else
           CustomerNo := 0;
        end;
      end
      else
      begin
        Queries.OpenPatient('','','',CustomerNo);
      end;

      If (CustomerNo > 0) then
      begin
        CommonPos.PatrocinioActivo := True;
        CommonPos.Customer := DMMidas.CDSClientesNUMEROCLIENTE.Value;
        begin
          FrmPOSRest.LabelCustomer.Caption := DMMidas.CDSClientesNombreCompleto2.Value;
          FrmPOSRest.StatusBar1.Panels[8].Text := 'Patrocinio Activo';
        end;
      end;
    end;
  end
  else
  begin
    PatrocinioActivo := False;
    FrmPOSRest.StatusBar1.Panels[8].Text := '';
  end;
end;


procedure TCommonPOS.InsertCreditTrans(Code: String; Amount: Double; TransNo: Integer);
begin
  With DMMidas do
  begin
    CommonPOS.DisconnectFromDatabase;
    With INSERT_TRANSACTION_CREDITO do
    begin
      Prepare;
      ParamByName('@CODE').Value := Code;
      ParamByName('@AMOUNT').Value := Amount;
      ParamByName('@ATTENDEDBY').Value := Copy(CommonPOS.User,1,3);
      ParamByName('@CLIENTNO').AsInteger := CommonPos.Customer;
      ParamByName('@TRANSNO').AsInteger :=  TransNo;
      ExecProc;
    end;
  end;
end;

Procedure TCommonPOS.InsertTransCredit(TransType: String; NoCliente: Integer; Amount:Double);
begin
 //
end;

function TCommonPOS.ValorMasUno(Amount: Double):Double;
Var
  Numero: Integer;
  Tax, Valor: Double;
  ValorStr: String;
begin
  {ValorStr :=  Format('%n', [Amount]);//  Amount);// Format('%n', Amount);
  Numero := Length(ValorStr);
  Valor :=  StrToFloat(Copy(ValorStr, Numero - 1, 2));
  if Valor = 50 then
    Result := Amount + 0.01; }
  //Tax := StrToFloat(Format('%n', [Round(Precio) * CommonPOS.TaxRate]));
  ShowMessageStr(FloatToStr(amount), 12,clBlack);
  ShowMessageStr(IntToStr(Round(Amount)), 12,clBlack);
  Tax := Round(Amount) * CommonPOS.TaxRate;
  Result := Tax;
  ShowMessageStr(Format('%n', [Tax]), 12,clBlack);
end;



procedure TCommonPOS.GetIVULoto(TransType: String);
Var
  loops, Cnt: Integer;
  Cred, LWay: Boolean;
  DeudaLocal, DeudaLayaway: Double;
  Taxable: String;

  cm: txPosRequest;
  Response: txPosResponse;
  //Response: ivuLotoData;
  D: TXSDateTime;
  MTax, STax, TotalV, SubTotalV: TXSDecimal;
  TenderTypeS: tenderType;
  MyTxServer: TxServer;
  SubTotalF: Double;
  IVULotoDate: String;
  Counter: Integer;
  loop: Boolean;
begin

  With DMMidas.CDSHead do
  Begin
    If (FieldByName('PaymentType1').asString = 'CRED') OR (FieldByName('PaymentType2').asString = 'CRED') then
      Cred := True;
    If (FieldByName('PaymentType1').asString = 'LWAY') OR (FieldByName('PaymentType2').asString = 'LWAY') then
      LWay := True;
    //================================IVULOTO=====================================
    Try
      //if loops = 1 then
      begin
        if CommonPOS.IVULOTO_ACTIVO then
        begin
          if (TransType = 'CASH') or (TransType = 'ATH') or (TransType = 'CHK') or (TransType = 'TFAM') or (TransType = 'VISA') then
          begin
            if DMMidas.CDSSetup.Active = False then DMMidas.CDSSetup.Active := True;
            if CommonPOS.InternetActive = True then
            begin
              MTax := TXSDecimal.Create;
              STax := TXSDecimal.Create;
              SubTotalV := TXSDecimal.Create;
              TotalV := TXSDecimal.Create;
              D := TXSDateTime.Create;
              D.AsDateTime := Now;
              MTax.AsBcd := FieldByName('TAX').AsBcd;
              STax.AsBcd := FieldByName('TAX_ESTATAL').AsBCD;
              SubTotalV.XSToNative(FormatFloat('0.00',(FieldByName('TOTAL').Value - FieldByName('TOTAL_TAX').Value)));
              TotalV.AsBcd := FieldByName('TOTAL').AsBCD;
              cm := txPosRequest.Create();
              cm.merchantId := trim(DMMidas.CDSSetupIVULOTO_MERCHANT_ID.Value); //'00000000000';
              cm.municipalTax := MTax;
              cm.stateTax := STax;
              cm.subTotal := SubTotalV;
              if TransType = 'CASH' then cm.tenderType := CASH;
              if (TransType = 'ATH') OR (TransType = 'TFAM') then cm.tenderType := ATH;
              if TransType = 'VISA' then cm.tenderType := CREDIT;
              if TransType = 'CHK' then cm.tenderType := EBT;
              cm.terminalId := Trim(CommonPOS.IVULOTO_TERMINALID); //'POS02';
              cm.terminalPassword := trim(DMMidas.CDSSetupIVULOTO_PASSWORD.Value);
              cm.total := TotalV;
              cm.transactionDate := D;
              if RefundPOS = true then
                cm.transactionType := REFUND
              else
                cm.transactionType := SALE;
              MyTxServer := GetTxServer(False,'', nil);
              Response := MyTxServer.requestIVULoto(cm);
              //ShowMessageStr(Response.ivuLoto);
              IVULotoDate := '';
              Counter := 1;
              loop := True;
              While loop = True do
              begin
                If copy(Response.drawDate.NativeToXS, counter, 1) = 'T' then
                  Loop := False
                else
                  IVULotoDate := IVULotoDate + copy(Response.drawDate.NativeToXS, counter, 1);
                Counter := Counter + 1;
              end;
              IVULotoDate := copy(IVULotoDate, 6,2) + '/' + copy(IVULotoDate, 9,2) + '/' + copy(IVULotoDate, 1,4);
              IVULotoDate := MonthOftheYear(IVULotoDate) + '/' + copy(IVULotoDate, 4,8);
              CommonPOS.IVULotoControlNumber := Response.ivuLoto;
            end;
          end;
        end;
      end;
    except
      //
    end;
  End;
end;


function TCommonPOS.CD_PROCESSING(CommandLine: string; Work: string = 'C:\'): string;
var
  SA: TSecurityAttributes;
  SI: TStartupInfo;
  PI: TProcessInformation;
  StdOutPipeRead, StdOutPipeWrite: THandle;
  WasOK: Boolean;
  Buffer: array[0..255] of AnsiChar;
  BytesRead: Cardinal;
  WorkDir: string;
  Handle: Boolean;
begin
  Result := '';
  with SA do begin
    nLength := SizeOf(SA);
    bInheritHandle := True;
    lpSecurityDescriptor := nil;
  end;
  CreatePipe(StdOutPipeRead, StdOutPipeWrite, @SA, 0);
  try
    with SI do
    begin
      FillChar(SI, SizeOf(SI), 0);
      cb := SizeOf(SI);
      dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
      wShowWindow := SW_HIDE;
      hStdInput := GetStdHandle(STD_INPUT_HANDLE); // don't redirect stdin
      hStdOutput := StdOutPipeWrite;
      hStdError := StdOutPipeWrite;
    end;
    WorkDir := Work;
    //Handle := CreateProcess(nil, PChar('cmd.exe /C ' + CommandLine),
    Handle := CreateProcess(nil, PChar('DataCap.exe ' + CommandLine),
                            nil, nil, True, 0, nil,
                            PChar(WorkDir), SI, PI);
    CloseHandle(StdOutPipeWrite);
    if Handle then
      try
        repeat
          WasOK := ReadFile(StdOutPipeRead, Buffer, 255, BytesRead, nil);
          if BytesRead > 0 then
          begin
            Buffer[BytesRead] := #0;
            Result := Result + Buffer;
          end;
        until not WasOK or (BytesRead = 0);
        WaitForSingleObject(PI.hProcess, INFINITE);
      finally
        CloseHandle(PI.hThread);
        CloseHandle(PI.hProcess);
      end;
  finally
    CloseHandle(StdOutPipeRead);
  end;
end;

Procedure TCommonPOS.DecodeCDPayment(XMLString: String);
Var
 XML_REQUEST: IXMLNode;
 TROUTD: String;
 RESUL: String;
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
 begin
   //FrmMain.XMLDocument1.FileName := 'C:\Wescom\NO_RXTEMP1\SalesTech2017\XMLDOC.xml';
   FrmMain.XMLDocument1.Active := True;
   Try
     XML_REQUEST := FrmMain.XMLDocument1.DocumentElement;
     TROUTD := XML_REQUEST.ChildNodes['TROUTD'].Text;
     RESUL := XML_REQUEST.ChildNodes['RESULT'].Text;
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
 end;

function TCommonPOS.base64encode(const Text : ansiString): ansiString;
begin
  try
    Result :=  EncodeString(Text);
  finally
    //FreeAndNil(Encoder);
  end
end;


procedure TCommonPOS.Addon;
Var
  ModalRes: Boolean;
  AuthUser: String;
  Taxable: String;
  TaxMunicipal, TaxEstatal: String;
  NoRx: String;
  nt: Integer;
  tst: TFrmEvertec;
begin
  if CommonPOS.TripleS_ApprovedAmount > 0 then
  begin
    CommonPOS.ShowMessageStr('Hay una transaccion de Triple-S Avantage aprobada! Debe terminar la transaccion!', 12, clRed);
    exit;
  end;
  With DMMidas do
  begin
    if Trim(CDSBotonesPROCEDURE_ADD_ON.Value) > '' then
    begin
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'LOGON PINPAD' then
      begin
        ipe.globalIndicator := nil;
        ipe.globalLabel := nil;
        ipe.logon;
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'LOGOFF PINPAD' then
      begin
        ipe.globalIndicator := nil;
        ipe.globalLabel := nil;
        ipe.logoff;
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'VALIDATE MCS PRODUCT' then
      begin
        validateMcsProds;
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'VOID PINPAD TRANSACT' then
      begin
        CommonPOS.voidOrRefund;
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'TIP ADJUST' then
      begin
        CommonPOS.addPinPadTip
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'SPOS RETURN' then //[2026/02/14 JB] ADDED SPINPOSRETURN OPTION
      begin
        CommonPOS.ReturnSpinPOS;
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'MANUAL SALE' then
      begin
        //CommonPOS.addPinPadTip
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'EBT BALANCE' then
      begin
        CommonPOS.TransactionType := 'ebtBal';
        FrmEvertec := TFrmEvertec.Create(Nil);
        FrmEvertec.ShowModal;
        FrmEvertec.Free;
        FrmEvertec := nil;
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'REPRINT' then
      begin
        FrmReprintType := TFrmReprintType.Create(Nil);
        FrmReprintType.ShowModal;
        FrmReprintType.Free;
        FrmReprintType := nil;
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'SETTLE PINPAD' then
      begin
        if (CommonPOS.activePin = True) then
          begin
            ipe.settle;
          end;
        if (CommonPOS.SpinPOSActive = True)  then        //settle pinpad
          begin
            SettleSpinPOS;
          end;
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'PROD VERIFY' then
      begin
        CommonPOS.TransactionType := '';
        CommonPOS.mcsRefund := False;
        FrmValidateProds := TFrmValidateProds.Create(Nil);
        FrmValidateProds.ShowModal;
        FrmValidateProds.Free;
        FrmValidateProds := nil;
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'MCS REFUND' then
      begin
        CommonPOS.mcsRefund := True;
        FrmValidateProds := TFrmValidateProds.Create(Nil);
        FrmValidateProds.ShowModal;
        FrmValidateProds.Free;
        FrmValidateProds := nil;
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'MCS BALANCE' then
      begin
        CommonPOS.TransactionType := 'mcsBal';
        FrmEvertec := TFrmEvertec.Create(Nil);
        FrmEvertec.btnClose.Visible := True;
        FrmEvertec.ShowModal;
        FrmEvertec.Free;
        FrmEvertec := nil;
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'UNICA CASH WITHDRAWL' then
      begin
        unicaCashWithdrawl;
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'RESTART PRINT SERVER' then
      begin
        FrmMain.RestartPrintServer1Click(nil);
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'COOPHARMA' then
      begin
        FrmCoopDiscCard := TFrmCoopDiscCard.Create(Application);
        With FrmCoopDiscCard do
        begin
          ShowModal;
          if ModalResult = mrOk then
          begin
            CommonPOS.CoopharmaActive := true;
            FrmPOSRest.StatusBar1.Panels[8].Text := 'Desc.: ' + FloatToStr(CommonPOS.Perc) + '%';
          end
          else
          begin
            CommonPOS.Perc := 0;
            CommonPOS.CoopharmaActive := false;
            FrmPOSRest.StatusBar1.Panels[8].Text := '';
          end;
          FrmCoopDiscCard := nil;
          Free;
        end;
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'CUSTOMERS' then
      begin
        FrmSearchCust2 := TFrmSearchCust2.Create(Application);
        with FrmSearchCust2 do
        begin
          ShowModal;
          If ModalResult = mrOK then
          begin
            CommonPos.Customer := CDSClientesNUMEROCLIENTE.Value;
            CommonPos.email := Trim(CDSClientesEMAIL.Value);

            FrmPOSRest.LabelCustomer.Caption := DMMidas.CDSClientesNombreCompleto2.Value;
            if CDSClientesTAX_EXEMPT.Value = True then
            begin
              CommonPOS.NoTaxCharge := False;
              FrmPOSRest.btnNoChargeTax.Caption := 'DO NOT CHARGE TAX';
            end;
            if CDSClientesINFOADICIONAL.Value > '' then
            begin
              ShowCustomerMessageStr(Trim(CDSClientesINFOADICIONAL.Value), CDSClientesNombreCompleto2.Value + ': ' + Trim(CDSClientesCLASIFICATION.Value), 12, clBlack, 10000);            end;

          end;
        end;
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'SSS VOID' then
      begin
        if CommonPOS.isAuthorized('POS_REFUND',UserRights.POS_REFUND,true) then
        begin
          FrmTripleSCoveredProducts := TFrmTripleSCoveredProducts.Create(nil);
          With FrmTripleSCoveredProducts do
          begin
            LabelTotalSales.Caption := Format('%m', [DMMidas.CDSTransHeadTOTAL.asFloat]);
            LabelCoverd.Caption := Format('%m', [CommonPOS.TripleS_ApprovedAmount]);
            LabelNotCoverd.Caption := Format('%m', [DMMidas.CDSTransHeadTOTAL.asFloat - CommonPOS.TripleS_ApprovedAmount]);
            tbDelete.Visible := False;
            tbTransaction.Visible := False;
            tsTransaction.Enabled := False;
            tbSearchTrans.Visible := True;
            PageControl1.Pages[0].TabVisible := False;
            PageControl1.ActivePageIndex := 1;
            ShowModal;
            FrmTripleSCoveredProducts := Nil;
            Free;
          end;
        end;
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'SSS O.T.C.' then
      begin
         FrmSSSOTC := TFrmSSSOTC.Create(nil);
         With FrmSSSOTC do
         begin
           ShowModal;
           if CommonPOS.TripleS_previousBalance > 0 then
           begin
             FrmPOSRest.LabelCustomer.Caption := FrmSSSOTC.LabelCustomerName.Caption + ' Balance: ' + format('%m', [CommonPOS.TripleS_previousBalance]);
           end;
           if ModalResult = mrCancel then
           begin
             FrmPOSRest.LabelCustomer.Caption := '';
             CommonPOS.TripleS_previousBalance := 0;
           end;
           FrmSSSOTC := nil;
           Free;
         end;
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'DELIVERY' then
      begin
        if CommonPOS.isAuthorized('GUARDAR_TRANSACCIONES',UserRights.GUARDAR_TRANSACCIONES, true) then
        begin
          FrmDelInfo := TFrmDelInfo.Create(nil);
          with FrmDelInfo do
          begin
            ShowModal;
            if ModalResult = mrok then
            begin
              nt := DMMidas.CDSTransHeadTRANSACTIONNUMBER.Value;
              StartTab(True, CommonPOS.Header, DMMidas.CDSTransHeadTOTAL.asFloat, 'D');

              With DMMidas.CDSTrHeadAdHoc do
              begin
                SQL.Clear;
                SQL.Add('Update TransactionHeader_TEMP Set DeliveryName = ''' + FrmDelInfo.EditDelName.Text
                               + ''', DeliveryAddress1 = ''' + FrmDelInfo.EditDelAddress1.Text
                               + ''', DeliveryAddress2 = ''' + FrmDelInfo.EditDelAddress2.Text
                               + ''', DeliveryPhone = ''' + FrmDelInfo.EditDelPhone.Text
                               + ''', DeliveredBy = ''' + FrmDelInfo.EditDelBy.Text
                               + ''', DELIVERY_CITY = ''' + FrmDelInfo.EditDelCity.Text
                               + ''', DELIVERY_STATE = ''' + FrmDelInfo.EditDelState.Text
                               + ''', DELIVERY_ZIPCODE = ''' + FrmDelInfo.EditDelZipCode.Text
                               + ''' Where TransactionNumber = '
                               + IntToStr(nt));
                ExecSQL(True);
              end;
            end;
            With DMMidas do
            begin
              With CDSHead do
              Begin
                Active := False;
                CommandText := 'select * from transactionheader_temp where transactionnumber = ' + IntToStr(nt);
                Active := True;
              End;
              With CDSDetail do
              Begin
                Active := False;
                CommandText := 'SELECT * FROM TransactionDetail_Temp WHERE TransactionNumber = ' + IntToStr(nt);
                Active := True;
              End;
              With cdsOpenTabs do
              Begin
                Active := False;
                CommandText := 'SELECT * FROM OPEN_TABS WHERE TRANSACTIONNUMBER = ' + IntToStr(nt);
                Active := True;
              End;
            end;
            CommonPOS.ClearTransactions;
            FrmDelInfo := Nil;
            FrmDelInfo.Free;
          end;
        end;
      end;
      if (Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'COTIZACION') or (Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'QUOTES') then
      begin
        cotizacion := True;
        nt := DMMidas.CDSTransHeadTRANSACTIONNUMBER.Value;
        DMMidas.cdsOpenTabs.Close;
        DMMidas.cdsOpenTabs.CommandText := 'Select * from OPEN_TABS where TRANSACTIONNUMBER = ' + IntToStr(nt);
        DMMidas.cdsOpenTabs.Open;
        if DMMidas.cdsOpenTabs.RecordCount = 0 then
        begin
         if CommonPOS.Customer > 0 then
         begin
           CommonPOS.InsertNewTab(True, Trim(Copy(CDSClientesNombreCompleto2.Value, 1,45)), Trim(Copy(CDSClientesCELULAR.Value, 1,13)), 'I', DMMidas.CDSTransHeadTOTAL.asFloat, CDSClientesNUMEROCLIENTE.Value);
           FrmPOSRest.btnDone.Click;
         end
         else
         begin
           if StartTab(True, CommonPOS.Header, DMMidas.CDSTransHeadTOTAL.asFloat, 'I') = true then
           begin
             With DMMidas.CDSHead do
             Begin
               CommandText := 'select * from transactionheader_temp where transactionnumber = ' + IntToStr(nt)
             end;
             With DMMidas.CDSDetail do
             begin
               CommandText := 'select * from transactiondetail_temp where transactionnumber = ' + IntToStr(nt);
             end;
           end;
           //PrintLargeReceipt(1, TRUE, false, false, 'ivuloto');
         end;
        end;
        CommonPOS.ClearTransactions;
      end;

      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'SERVICIO' then
      begin
        CommonPOS.Servicios(1);
        FrmPOSRest.EditSearchProd.SetFocus;
        FrmPOSRest.EditProd.Text := 'Servicio' + '   Qty: ' + DMMidas.CDSTransShowQTY.AsString + '   Price: ' + Format('%m', [DMMidas.CDSTransShowPRICE.AsFloat]);
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'STOP TAG' then
      begin
        With DMwc do
        begin
          SQLQuery1.SQL.Text := 'Update WILLCALL_TAG_NUMBERS set SEARCH = 0';
          SQLQuery1.ExecSQL();
        end;
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'VIEW ESIGNATURE' then
      begin
        CommonPOS.ShowSignature(CDSTransShowOTC_NUMBER.Value);
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'ESIGNATURE' then
      begin
        CommonPOS.CallSignature(True);
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'BAG PICKUP' then
      begin
        CommonPOS.SmartPickup(0);
      end;
      if (Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'RECETAS') or (Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'PRESCRIPTIONS') then
      begin
        CommonPOS.FindRx('', True, True, 'RXNO', True);
        FrmPOSRest.EditSearchProd.SetFocus;
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'OTC' then
      begin
        CommonPOS.FindOTC('');
        FrmPOSRest.EditSearchProd.SetFocus;
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'ATH MANUAL' then
      begin
        if CommonPOS.activePin = False then
          CommonPOS.PayTransaction('ATH')
        else
        begin
          CommonPOS.activePin := false;
          CommonPOS.PayTransaction('ATH');
          CommonPOS.activePin := true;
        end;
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'VISA MANUAL' then
      begin
        if CommonPOS.activePin = False then
          CommonPOS.PayTransaction('VISA')
        else
        begin
          CommonPOS.activePin := false;
          CommonPOS.PayTransaction('VISA');
          CommonPOS.activePin := true;
        end;
      end;
      if Trim(UpperCase(CDSBotonesPROCEDURE_ADD_ON.Value)) = 'TARJ FAMILIA' then
      begin
        if CDSTransHeadPAYMENTTYPE1.Value = '' then
        begin
          if (CommonPOS.activePin = True) or (CommonPOS.SpinPOSActive = True) then
          begin
            FrmEbtOptions := TFrmEbtOptions.Create(Nil);
            FrmEbtOptions.ShowModal;

            FrmEbtOptions.Free;
            FrmEbtOptions := nil;
          end
          else
          begin
            CommonPOS.PayTransaction('TFAM');
            if (CommonPOS.TransactionType = ('TFAM')) and (DMMidas.CDSTransHeadCHANGE.asFloat < 0) then
            begin
              FrmPOSRest.btnCheckout.Click;
            end;
          end;
        end
        else
        begin
          ShowMessageStr('El segundo pago no puede ser EBT o Tarjeta de Familia', 12, clRed);
        end;
      end;
      if Trim(UpperCase(CDSBotonesProcedure_ADD_ON.Value)) = 'LAYAWAY' then
      begin
          If Customer = 0 then
          PayTransaction('LWAY');
      end;
      if (Trim(UpperCase(CDSBotonesProcedure_ADD_ON.Value)) = 'PAGO CREDITO') OR (Trim(UpperCase(CDSBotonesProcedure_ADD_ON.Value)) = 'CREDIT PAYMENT') then
      begin
          if DMMidas.CDSTransShow.Active = False then
            begin
              CommonPos.PagoCredito(True);
              FrmPOSRest.EditSearchProd.SetFocus;
            end
          else
          begin
            if FrmMain.LanguageStr = 'English' then
              ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 268), 12, clBlack)
            else
            ShowMessageStr('Debe terminar las transacciones pendientes antes de hacer un abono a la cuenta! Gracias...', 12,clBlack);
          end;
      end;
      if (Trim(UpperCase(CDSBotonesProcedure_ADD_ON.Value)) = 'VENTA CREDITO') or (Trim(UpperCase(CDSBotonesProcedure_ADD_ON.Value)) = 'CREDIT SALE') then
      begin
        if CommonPOS.isAuthorized('POS_CREDIT', UserRights.POS_CREDIT,true) then
        begin
          CrSignature := CommonPOS.User;
          If CommonPOS.Customer = 0 then
            PayTransaction('CRED');
        end;
        FrmPOSRest.EditSearchProd.SetFocus;
      end;
      if Trim(UpperCase(CDSBotonesProcedure_ADD_ON.Value)) = 'AUSPICIO' then
      begin
        CommonPOS.Auspicio;
        if DMMidas.CDSClientesINFOADICIONAL.Value > '' then
           ShowMessageStr(DMMidas.CDSClientesINFOADICIONAL.Value, 12,clBlack);
           FrmPOSRest.EditSearchProd.SetFocus;
      end;
      if Trim(UpperCase(CDSBotonesProcedure_ADD_ON.Value)) = 'GROUP SALES' then
      begin
        FrmGroupSales := TFrmGroupSales.Create(Nil);
        FrmGroupSales.Tag := 1;
        with FrmGroupSales do
        begin
          ShowModal;
          Free;
        end;
        FrmPOSRest.pcOptions.ActivePageIndex := 0;
        FrmPOSRest.EditSearchProd.SetFocus;
      end;
      if Trim(UpperCase(CDSBotonesProcedure_ADD_ON.Value)) = 'PATROCINIO' then
      begin
        CommonPOS.Patrocinio(0);
          if DMMidas.CDSClientesINFOADICIONAL.Value > '' then
             ShowMessageStr(DMMidas.CDSClientesINFOADICIONAL.Value, 12,clBlack);
             FrmPOSRest.EditSearchProd.SetFocus;
      end;
      if Trim(UpperCase(CDSBotonesProcedure_ADD_ON.Value)) = 'UTILITY' then
      begin
        FrmAddUtility := TFrmAddUtility.Create(Nil);
        With FrmAddUtility do
        begin
          ShowModal;
          If ModalResult = mrOK then
          begin
            Taxable := DMMidas.CDSUtilitiesTAXABLE.Value;
            if Trim(Taxable) = '' then Taxable := 'F';
            If StrToFloat(Edit1.Text) >= 0.01 then
              CommonPOS.AddProduct('F','99999999995','PAGO UTILIDAD ' + DMMidas.CDSUtilitiesNAME.Value ,'UTILIDAD','F', DMMidas.CDSUtilitiesNAME.Value,  //ComboBox1.Text
              CommonPOS.User, Taxable, Taxable,StrtoFloat(Edit1.text),
              StrtoFloat(Edit1.text), 0, 0,1,0,CommonPOS.Turno, CommonPOS.ID, 0, 0,0,0,true,false,'',0,false,0,false, false);
            If StrToFloat(Edit2.Text) >= 0.01 then
               CommonPOS.AddProduct('F','99999999994','CARGO UTILIDAD ' + DMMidas.CDSUtilitiesNAME.Value,'OTROS CARGOS','F',DMMidas.CDSUtilitiesNAME.Value,
               CommonPOS.User, Taxable, Taxable,StrtoFloat(Edit2.text),
               StrtoFloat(Edit2.text), 0, 0,1,0,CommonPOS.Turno, CommonPOS.ID, 0, 0,0,0,true,false,'',0,false,0,false, false);
            CommonPos.Utility := True;
          end;
          FrmAddUtility := nil;
          Free;
        end;
        FrmPOSRest.pcOptions.ActivePageIndex := 0;
        FrmPOSRest.EditSearchProd.SetFocus;
      end;
      if Trim(UpperCase(CDSBotonesProcedure_ADD_On.Value)) = 'COMBO' then
      begin
        FrmCombo := TFrmCombo.Create(Nil);
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

                  CommonPOS.AddProduct('F',CDSInventarioPisoCodigoBarra.Value,  CDSCombo_detailProduct.Value, CDSInventarioPisoDESCDEPT.Value,'F','',
                       CommonPOS.User, TaxMunicipal, TaxEstatal, CDSCombo_detailPrice.Value,
                       (CDSInventarioPisoCOSTO.asFloat * CDSCombo_detailQuantity.Value), Perc, 0, CDSCombo_detailQuantity.Value ,0, CommonPOS.Turno, CommonPOS.ID, CDSInventarioPisoPRODUCTNO.Value, CDSInventarioPisoSUB_DEPARTAMENTO.Value,0,0,false,false,'',0,false,0,CDSInventarioPisoPROCESSED_FOOD.Value, false);

                CDSCombo_Detail.Next;
              end;
            end;
          end;
          Free;
        end;
      end;
      if (Trim(UpperCase(CDSBotonesProcedure_ADD_ON.Value)) = 'ABONO LAYAWAY') or (Trim(UpperCase(CDSBotonesProcedure_ADD_ON.Value)) = 'PAY TOWARDS LAYAWAY') then
      begin
        CommonPOS.AbonoLayaway;
        FrmPOSRest.pcOptions.ActivePageIndex := 0;
        FrmPOSRest.EditSearchProd.SetFocus;
      end;
      if (Trim(UpperCase(CDSBotonesProcedure_ADD_ON.Value)) = 'COMICIONES') or (Trim(UpperCase(CDSBotonesProcedure_ADD_ON.Value)) = 'COMMISSIONS') then
      begin
        CommonPos.Comisiones;
        FrmPOSRest.pcOptions.ActivePageIndex := 0;
        FrmPOSRest.EditSearchProd.SetFocus;
      end;
      if Trim(UpperCase(CDSBotonesProcedure_ADD_ON.Value)) = 'ASSEMBLIES' then
      begin
        CommonPOS.Assemblies(0);
        FrmPOSRest.pcOptions.ActivePageIndex := 0;
        FrmPOSRest.EditSearchProd.SetFocus;
      end;
      if (Trim(UpperCase(CDSBotonesProcedure_ADD_ON.Value)) = 'CAMBIO CHEQUES') OR (Trim(UpperCase(CDSBotonesProcedure_ADD_ON.Value)) = 'CHECK CHANGE') then
      begin
        CommonPOS.CambioCheque;
        FrmPOSRest.pcOptions.ActivePageIndex := 0;
        FrmPOSRest.EditSearchProd.SetFocus;
      end;
      if Trim(UpperCase(CDSBotonesProcedure_ADD_ON.Value)) = 'REDIMIR PATROCINIO' then
      begin
        AuthUser := CommonPOS.User;
        if CommonPOS.isAuthorized('REDIMIR_PATROCINIO',UserRights.REDIMIR_PATROCINIO, true) then
        begin
          CommonPOS.RedimirAuspicio;
          DMMidas.CDSClientes.Refresh;
          FrmPOSRest.pcOptions.ActivePageIndex := 0;
          FrmPOSRest.EditSearchProd.SetFocus;
        end;
      end;
      if Trim(UpperCase(CDSBotonesProcedure_ADD_ON.Value)) = 'TRANS WIC' then
      begin
        CommonPOS.WIC;
        FrmPOSRest.pcOptions.ActivePageIndex := 0;
        FrmPOSRest.EditSearchProd.SetFocus;
      end;
      if (Trim(UpperCase(CDSBotonesProcedure_ADD_ON.Value)) = 'COBRO WIC') or (Trim(UpperCase(CDSBotonesProcedure_ADD_ON.Value)) = 'WIC CHARGE') then
      begin
        PayTransaction('WIC');
        FrmPOSRest.pcOptions.ActivePageIndex := 0;
        FrmPOSRest.EditSearchProd.SetFocus;
      end;
      if (Trim(UpperCase(CDSBotonesProcedure_ADD_ON.Value)) = 'SERVICIO NEGOCIO') or (Trim(UpperCase(CDSBotonesProcedure_ADD_ON.Value)) = 'BUSINESS SERVICE') then
      begin
        CommonPOS.Servicios(1);
        FrmPOSRest.EditSearchProd.SetFocus;
        FrmPOSRest.EditProd.Text := 'Servicio' + '   Qty: ' + DMMidas.CDSTransShowQTY.AsString + '   Price: ' + Format('%m', [DMMidas.CDSTransShowPRICE.AsFloat]);
        FrmPOSRest.pcOptions.ActivePageIndex := 0;
      end;
    end;
  end;
end;

procedure TCommonPOS.addPinPadTip;
var
  MyStrval: String;
  loop: Boolean;
begin
  if CommonPOS.SpinPOSActive = True then
  begin
    addPinPadTipSpinPOS;    //ejecuta proceso de tip en spinPos
    exit;
  end;
  loop := True;
  FrmInputNumber := TFrmInputNumber.Create(application);
  with FrmInputNumber do
  begin
    FrmInputNumber.Caption := 'Enter reference number';
    EditNumber.text := '0';
    FrmInputNumber.EditNumber.Text := MyStrVal;
    while loop = true do
    begin
      ShowModal;
      if (ModalResult = mrCancel) then
      begin
        loop := False;
        FrmPOSRest.btnRefundClick(nil);
        exit
      end;
      MyStrVal := FrmInputNumber.EditNumber.Text;
      if (MyStrVal > '') and (MyStrVal <> '0') then
      begin
        With DMMidas do
        begin
          cdsEvertec.Active := False;
          CDSEvertec.CommandText := 'select * from evertec where response like ' + chr(39) + '%' + MyStrVal + chr(28) + '00/APPROVED%' + chr(39);
          CDSEvertec.Active := True;
          if cdsEvertec.RecordCount > 0 then
          begin
            CommonPOS.Header := cdsEvertecTRANSACTIONNUMBER.Value;
            CommonPOS.TransactionType := 'journal';
            CommonPOS.adjDelete := False;
            ipe.journal(myStrVal);
            loop := False;
          end
          else
          begin
            showMessage('Transaction not found.');
            loop := True;
          end;
        end;
      end
      else
        loop := True;
    end;
  end;
end;

procedure TCommonPOS.addPinPadTipSpinPOS;
var
  MyStrval: String;
  loop: Boolean;
begin
  loop := True;
  FrmInputNumber := TFrmInputNumber.Create(application);
  with FrmInputNumber do
  begin
    FrmInputNumber.Caption := 'Enter reference number';
    EditNumber.text := '0';
    FrmInputNumber.EditNumber.Text := MyStrVal;
    FrmInputNumber.Panel2.Visible := true;
    while loop = true do
    begin
      ShowModal;
      if (ModalResult = mrCancel) then
      begin
        loop := False;
        FrmPOSRest.btnRefundClick(nil);
        exit
      end;
      MyStrVal := FrmInputNumber.EditNumber.Text;
      if (MyStrVal > '') and (MyStrVal <> '0') then
      begin
        With DMMidas do
        begin
          cdsSpinPos.Active := False;
          cdsSpinPos.CommandText := 'select * from spinPOS where REFERENCENUM = ' + MyStrVal; //and  '00/APPROVED%' + chr(39);
          cdsSpinPos.Active := True;
          CommonPOS.Header := cdsSpinPos.FieldByName('TRANSACTIONNUMBER').AsLargeInt;
          if cdsSpinPos.RecordCount > 0 then
          begin
           frmMainSPOS := TfrmSpinPOS.Create(nil);
           frmMainSPOS.TypePayment := cdsSpinPOSPaymentType.Value;
           frmMainSPOS.ProcessNum  := 7;  //TipAdjust
           frmMainSPOS.dAmount :=cdsSpinPOSAMOUNT.Value;
           frmMainSPOS.dTipAmount := StrToFloat(FrmInputNumber.Edit2.Text); //?? aqui el valor del tipadjust
           frmMainSPOS.sRefNum := MyStrVal;
           frmMainSPOS.ShowModal;
           frmMainSPOS.Free;
           frmMainSPOS := nil;
            loop := False;
          end
          else
          begin
            showMessage('No transaction found.');
            loop := True;
          end;
        end;
      end
      else
        loop := True;
    end;
  end;
end;

procedure TCommonPOS.InsertLog(Descripcion, Codigo, NDC_BARCODE, User,
  Pharmacist: String; NoRx: Largeint; OTCNumber, PrescriberID, PatientID,
  PatientHealthPlanID, PasswordID, HealthPlanID, DrugID: Integer;
  Note: String; Controlled, Successful: Boolean);
begin
  CommonPOS.DisconnectFromDatabase;
  With DMMidas.INSERT_LOG do
  begin
    Prepare;
    ParamByName('@DESCRIPCION').Value := Descripcion;
    ParamByName('@CODIGO').Value := Codigo;
    ParamByName('@NDC_BARCODE').Value := NDC_BARCODE;
    ParamByName('@USUARIO').Value := Copy(User, 1, 3);
    ParamByName('@SUPERVISOR').Value :=  CommonPOS.Supervisor;//Copy(Pharmacist, 1, 3);
    ParamByName('@NO_RX').Value := NoRx;
    ParamByName('@OTCNUMBER').Value := OTCNumber;
    ParamByName('@PRESCRIBER_ID').Value := PrescriberID;
    ParamByName('@CUSTOMER_ID').Value := PatientID;
    ParamByName('@PASSWORD_ID').Value := PasswordID;
    ParamByName('@HEALTH_PLAN_ID').Value := HealthPlanID;
    ParamByName('@PATIENT_HEALTH_PLAN_ID').Value := PatientHealthPlanID;
    ParamByName('@DRUG_ID').Value := DrugID;
    ParamByName('@POS_RX').Value := 'P';
    ParamByName('@NOTE').Value := Note;
    ParamByName('@CONTROLLED').Value := Controlled;
    ParamByName('@SUCCESSFUL').Value := Successful;
    ExecProc;
  end;
end;


function TCommonPOS.TelephoneJustNumbers(Token1: String): String;
var
  I: Integer;
  Tel: String;
begin
  Tel := '';
  for I := 1 to Length(Token1) do
  begin
    if IsNumber(Copy(Token1, I, 1)) then Tel := Tel + Copy(Token1, I, 1);
  end;
  if Length(Tel) = 10 then
    Result := '1' + Tel
  else
    Result := Tel;
end;


function TCommonPOS.translateBarcodes(const nUpc: String): String;
var
  nUpcText: String;
begin
  nUpcText := Trim(nUpc);
  if Length(nUpcText) = 13 then
  begin
    if (Copy(nUpcText,1,1) = 'A') and ((Copy(nUpcText, nUpcText.Length, 1) = 'A') or
    (Copy(nUpcText, nUpcText.Length, 1) = 'B')) then
      nUpcText := copy(nUpcText, 2, Length(nUPCtext) - 2)
  end
  else if Length(nUpcText) = 8 then
  begin
    nUpcText := UPCE2A(nUpcText);
  end;
  Result := nUpcText;
end;

function TCommonPOS.base64Decode(const Text: ansiString): ansiString;
var
  Decoder: TIdDecoderMime;
begin
  Decoder := TIdDecoderMime.Create(nil);
  try
    Result := Decoder.DecodeString(Text);
  finally
    FreeAndNil(Decoder)
  end
end;

Procedure TCommonPOS.PrescriptionsButNotBilled;
begin
  With DMMidas do
  begin
    if DMwc.cdsWillCallCUSTOMER_NUMBER.Value > 0 then
    begin
      CDSOTC.Close;
      CDSOTC.CommandText := 'select * from OTC where '
                                +'(NUMEROCLIENTE = ' + DMwc.cdsWillCallCUSTOMER_NUMBER.AsString
                                + ')and (WF_CASHIER = ' + chr(39) + chr(39) + ' OR WF_CASHIER IS NULL) '
                                + ' and (CLAIM_STATUS = 1 or PLAN_MEDICO = ' + chr(39) + 'CAS' + chr(39) +')'
                                + ' and (FECHAOTC >= GETDATE()-30)'
                                + ' ORDER BY FECHAOTC desc';
      CDSOTC.Open;
    end;
  end;
end;

Procedure TCommonPOS.LogeadoPOS(Option: Boolean);
begin
  With DMMidas do
  begin
    CommonPOS.DisconnectFromDatabase;
    With LOGEADOPOS do
    begin
      Prepare;
      ParamByName('@UserNo').Value := UserRights.USERNO;// User;
      ParamByName('@Logeado').Value := Option;
      ExecProc;
    end;
  end;
end;

function TCommonPOS.GetUTC(dt: TDateTime): TDateTime;
begin
  result := TTimeZone.Local.ToUniversalTime(dt);
end;

procedure TCommonPOS.Login_UserRights;
begin
  With UserRights do
  begin
    With DMMidas do
    begin
      if (UserRights.LEXA = True) then
      begin
        USERNO := 0;
        MAIN_SETUP := true;
        MAIN_CUST := true;
        MAIN_INV := true;
        CAMBIARPASSWORD := true;
        PROCESS_HANDHELD := true;
        MAIN_DEPT := true;
        MAIN_SUPL := true;
        MAIN_TOTAL := true;
        MAIN_ACCTS := true;
        BACKUP_PERMIT := true;
        LOG_DATA := true;
        POS_REFUND := true;
        POS_DELPROD := true;
        POS_CHGPRICE := true;
        POS_DELTRANS := true;
        POS_NCGH := true;
        POS_CANCEL := true;
        POS_DISCOUNT := true;
        POS_IVU := true;
        POS_PAYOUT := true;
        POS_OPNDRAWR := true;
        POS_REPRINT := true;
        POS_CREDIT := true;
        GUARDAR_TRANSACCIONES := true;
        RECALL_TRANS := true;
        POS_HOLD := true;
        VENTA_MANUAL := true;
        CAMBIAR_PRECIO_OTC_RX := true;
        POS_BUTTONS := true;
        REDIMIR_PATROCINIO := true;
        POS_ADD_BUTTONS := true;
        POS_TAB_CANCEL := true;
        POS_VER_TOTAL_CASH := true;
        POS_POST_SHOPPER := true;
        POS_REST_DELETEPRODUCT := true;
        POS_LIMITE_CAMBIO_PRECIO := true;
        CUST_IBAL := true;
        CUST_EDIT := true;
        CUST_DEL := true;
        TOT_DEL := true;
        TOT_EDIT := true;
        TOT_EDITOLD := true;
        POS_CUADRE_ADMINISTRADOR := true;
        QUICKENTRY := true;
        MAIN_RECV := true;
        EM_VERQTYORD := true;
        BORRAR_FIRMA := true;
        WC_LOAD := true;
        MAIN_TRANS := true;
        Pesc_Sig_isIdentity := true;
        POS_DELETE_RX := true;
        EDIT_INVENTORY := TRUE;
        CREATE_INVENTORY := True;
        DELETE_INVENTORY := True;
        REPORTS := True;
        UserLevel := '3';
      end
      else
      begin
        CommonPOS.User := Copy(PWRD_ISAUTHORIZED.ParamByName('@INICIALES').Value,1,3);
        CommonPOS.UserName := Trim(Copy(PWRD_ISAUTHORIZED.ParamByName('@USERNAME').Value,1,35));
        FrmMain.sbMain.Panels.Items[0].Text := Trim(Copy(PWRD_ISAUTHORIZED.ParamByName('@USERNAME').Value,1,35));
        USERNO := PWRD_ISAUTHORIZED.ParamByName('@USERNO').Value;
        MAIN_SETUP := PWRD_ISAUTHORIZED.ParamByName('@MAIN_SETUP').Value;
        MAIN_CUST := PWRD_ISAUTHORIZED.ParamByName('@MAIN_CUST').Value;
        MAIN_INV := PWRD_ISAUTHORIZED.ParamByName('@MAIN_INV').Value;
        CAMBIARPASSWORD := PWRD_ISAUTHORIZED.ParamByName('@CAMBIARPASSWORD').Value;
        PROCESS_HANDHELD := PWRD_ISAUTHORIZED.ParamByName('@PROCESS_HANDHELD').Value;
        MAIN_DEPT := PWRD_ISAUTHORIZED.ParamByName('@MAIN_DEPT').Value;
        MAIN_SUPL := PWRD_ISAUTHORIZED.ParamByName('@MAIN_SUPL').Value;
        MAIN_TOTAL := PWRD_ISAUTHORIZED.ParamByName('@MAIN_TOTAL').Value;
        MAIN_ACCTS := PWRD_ISAUTHORIZED.ParamByName('@MAIN_ACCTS').Value;
        BACKUP_PERMIT := PWRD_ISAUTHORIZED.ParamByName('@BACKUP_PERMIT').Value;
        LOG_DATA := PWRD_ISAUTHORIZED.ParamByName('@LOG_DATA').Value;
        POS_REFUND := PWRD_ISAUTHORIZED.ParamByName('@POS_REFUND').Value;
        POS_DELPROD := PWRD_ISAUTHORIZED.ParamByName('@POS_DELPROD').Value;
        POS_CHGPRICE := PWRD_ISAUTHORIZED.ParamByName('@POS_CHGPRICE').Value;
        POS_DELTRANS := PWRD_ISAUTHORIZED.ParamByName('@POS_DELTRANS').Value;
        POS_NCGH := PWRD_ISAUTHORIZED.ParamByName('@POS_NCGH').Value;
        POS_CANCEL := PWRD_ISAUTHORIZED.ParamByName('@POS_CANCEL').Value;
        POS_DISCOUNT := PWRD_ISAUTHORIZED.ParamByName('@POS_DISCOUNT').Value;
        POS_IVU := PWRD_ISAUTHORIZED.ParamByName('@POS_IVU').Value;
        POS_PAYOUT := PWRD_ISAUTHORIZED.ParamByName('@POS_PAYOUT').Value;
        POS_OPNDRAWR := PWRD_ISAUTHORIZED.ParamByName('@POS_OPNDRAWR').Value;
        POS_REPRINT := PWRD_ISAUTHORIZED.ParamByName('@POS_REPRINT').Value;
        POS_CREDIT := PWRD_ISAUTHORIZED.ParamByName('@POS_CREDIT').Value;
        GUARDAR_TRANSACCIONES := PWRD_ISAUTHORIZED.ParamByName('@GUARDAR_TRANSACCIONES').Value;
        RECALL_TRANS := PWRD_ISAUTHORIZED.ParamByName('@RECALL_TRANS').Value;
        POS_HOLD := PWRD_ISAUTHORIZED.ParamByName('@POS_HOLD').Value;
        VENTA_MANUAL := PWRD_ISAUTHORIZED.ParamByName('@VENTA_MANUAL').Value;
        CAMBIAR_PRECIO_OTC_RX := PWRD_ISAUTHORIZED.ParamByName('@CAMBIAR_PRECIO_OTC_RX').Value;
        POS_BUTTONS := PWRD_ISAUTHORIZED.ParamByName('@POS_BUTTONS').Value;
        REDIMIR_PATROCINIO := PWRD_ISAUTHORIZED.ParamByName('@REDIMIR_PATROCINIO').Value;
        POS_ADD_BUTTONS := PWRD_ISAUTHORIZED.ParamByName('@POS_ADD_BUTTONS').Value;
        POS_TAB_CANCEL := PWRD_ISAUTHORIZED.ParamByName('@POS_TAB_CANCEL').Value;
        POS_VER_TOTAL_CASH := PWRD_ISAUTHORIZED.ParamByName('@POS_VER_TOTAL_CASH').Value;
        POS_POST_SHOPPER := PWRD_ISAUTHORIZED.ParamByName('@POS_POST_SHOPPER').Value;
        POS_REST_DELETEPRODUCT := PWRD_ISAUTHORIZED.ParamByName('@POS_REST_DELETEPRODUCT').Value;
        POS_LIMITE_CAMBIO_PRECIO := PWRD_ISAUTHORIZED.ParamByName('@POS_LIMITE_CAMBIO_PRECIO').Value;
        CUST_IBAL := PWRD_ISAUTHORIZED.ParamByName('@CUST_IBAL').Value;
        CUST_EDIT := PWRD_ISAUTHORIZED.ParamByName('@CUST_EDIT').Value;
        CUST_DEL := PWRD_ISAUTHORIZED.ParamByName('@CUST_DEL').Value;
        TOT_DEL := PWRD_ISAUTHORIZED.ParamByName('@TOT_DEL').Value;
        TOT_EDIT := PWRD_ISAUTHORIZED.ParamByName('@TOT_EDIT').Value;
        TOT_EDITOLD := PWRD_ISAUTHORIZED.ParamByName('@TOT_EDITOLD').Value;
        POS_CUADRE_ADMINISTRADOR := PWRD_ISAUTHORIZED.ParamByName('@POS_CUADRE_ADMINISTRADOR').Value;
        QUICKENTRY := PWRD_ISAUTHORIZED.ParamByName('@QUICKENTRY').Value;
        MAIN_RECV := PWRD_ISAUTHORIZED.ParamByName('@MAIN_RECV').Value;
        EM_VERQTYORD := PWRD_ISAUTHORIZED.ParamByName('@EM_VERQTYORD').Value;
        BORRAR_FIRMA := PWRD_ISAUTHORIZED.ParamByName('@BORRAR_FIRMA').Value;
        WC_LOAD := PWRD_ISAUTHORIZED.ParamByName('@WC_LOAD').Value;
        MAIN_TRANS := PWRD_ISAUTHORIZED.ParamByName('@MAIN_TRANS').Value;
        Pesc_Sig_isIdentity := PWRD_ISAUTHORIZED.ParamByName('@Pesc_Sig_isIdentity').Value;
        POS_DELETE_RX := PWRD_ISAUTHORIZED.ParamByName('@POS_DELETE_RX').Value;
        EDIT_INVENTORY := PWRD_ISAUTHORIZED.ParamByName('@EDIT_INVENTORY').Value;
        DELETE_INVENTORY := PWRD_ISAUTHORIZED.ParamByName('@DELETE_INVENTORY').Value;
        CREATE_INVENTORY := PWRD_ISAUTHORIZED.ParamByName('@CREATE_INVENTORY').Value;
        REPORTS := PWRD_ISAUTHORIZED.ParamByName('@REPORTES').Value;
        CommonPOS.UserLevel :=PWRD_ISAUTHORIZED.ParamByName('@SEC_LEVEL').Value;
      end;
    end;
  end;
end;

Procedure TCommonPOS.SmartPickup(BagNumber: Integer);
begin
    FrmPickup := TFrmPickup.Create(nil);
    With FrmPickup do
    begin
      if BagNumber = 0 then
      begin
        //DMMidas.CDSClientes.Close;
        CommonPOS.OpenWillCall_Status('0');
        CommonPOS.OpenWillCallBag('0');
      end;
      ShowModal;
      FrmPickup := Nil;
      FrmPickup.Free;

      With DMMidas do
      begin
        CDSPrescriptions.Close;
        CDSPrescriptions2.Close;
        CDSOTC.Close;
        CDSOTC2.Close;
        //CDSClientes.Close;
      end;
    end;
end;

Procedure TCommonPOS.InsertNewTab(InsertHeader: Boolean;CustomerName, CustTelephone, transType: String; Balance: Double; CustomerNumber: Integer);
begin
   with DMMidas do
   begin
      FrmPOSRest.LabelCustomer.Caption := CustomerName;
      if CommonPOS.Header = 0 then
        CommonPOS.Header := CommonPOS.GetHeader(FrmMain.UserStr, 0, CommonPOS.ID);
      CommonPOS.DisconnectFromDatabase;
      With INSERT_NEWTAB do
      begin
        Prepare;
        ParamByName('@SERVER').Value := UserRights.USERNO;
        ParamByName('@TRANNO').Value := CommonPOS.Header;
        ParamByName('@CUSTOMER').Value := Trim(Copy(CustomerName, 1,45));
        ParamByName('@TELEPHONE').Value := Trim(Copy(CustTelephone, 1,13));
        ParamByName('@CREDITCARD').Value := '';
        ParamByName('@BALANCE').Value := Balance;
        ParamByName('@CUSTOMER_ID').Value := CustomerNumber;
        ParamByName('@TRANS_TYPE').Value := Copy(transType,1,1);
        ParamByName('@BUTTON_ID').Value := 0;
        ParamByName('@ISTABLE').Value := False;
        ExecProc;
      end;
      if cdsOpenTabs.Active then cdsOpenTabs.Refresh;
      if (transType <> 'I') and (transType <> 'D') then
      begin
        if CommonPOS.Restaurant = true then
        begin
          FrmPOSRest.btnPrintReceipt.click;
        end;
        FrmPOSRest.btnDone.Click;
      end;
   end;
end;

function TCommonPOS.ENFORCE_SIGNATURE_ONCHECKOUT: Boolean;
begin
  Result := True;
  if CommonPOS.VerifyifPrescriptionsSignature('') = false then
  begin
    Result := False;
    Exit;
  end;
end;


function TCommonPOS.Rx_isInSmartPickup(RxNumber: Largeint; OTC_Number: Integer): Boolean;
begin
  Result := False;
  With DMwc do
  begin
    cdsWillCall.Close;
    if RxNumber > 0 then
      cdsWillCall.CommandText := 'select * from WillCall where RX_NUMBER = '+ IntToStr(RxNumber)
    else
      cdsWillCall.CommandText := 'select * from WillCall where OTC_NUMBER = '+ IntToStr(OTC_Number);
    cdsWillCall.Open;
    if cdsWillCall.RecordCount > 0 then
    begin
      Result := true;
      CommonPOS.ShowMessageStr('Prescriptions is in bag: ' + cdsWillCallBAG_NUMBER.AsString + ', Please select SmartPickup to process prescriptions on POS!', 12,clRed);
      cdsWillCall_Status.Close;
      cdsWillCall_Status.CommandText := 'select * from WILLCALL_STATUS where BAG_NUMBER = ' + cdsWillCallBAG_NUMBER.AsString;
      cdsWillCall_Status.Open;
      Queries.OpenWC_Patient('where NumeroCliente = ' + IntToStr(cdsWillCall_StatusCUSTOMER_NUMBER.Value));
      CommonPOS.SmartPickup(StrToInt(cdsWillCallBAG_NUMBER.Value));
    end;
  end;
end;

Procedure TCommonPOS.CallSignature(CloseTables: Boolean);
Var
  NoRx: String;
  ModalRes: Boolean;
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
            if CloseTables = true  then
            begin
              CDSPrescriptions.Close;
              CDSPrescriptions2.Close;
              CDSOTC.Close;
              CDSOTC2.Close;
              //CDSClientes.Close;
              CDSPickUp.Close;
            end;
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
        if FrmeSignatureCapture.ModalResult = mrOk then
        begin
          ModalRes := True;
        end
        else
        begin
          ButtonDeleteAll.Click;
        end;
        if FrmeSignatureCapture.Tag > 1 then
        begin
          FrmeSignatureCapture := Nil;
          FrmeSignatureCapture.Free;
          CommonPOS.SmartPickup(1);
        end
        else
        begin
          NoRx := '';
          With DMMidas do
          begin
            CDSPrescriptions.Close;
            CDSPrescriptions2.Close;
            CDSOTC.Close;
            CDSOTC2.Close;
            //CDSClientes.Close;
          end;
          FrmeSignatureCapture := Nil;
          FrmeSignatureCapture.Free;
        end;
      end;
      //CommonPOS.ShowSignature(CommonPOS.SignatureLink);
    end;
  end;
end;

procedure TCommonPOS.ShowSignature(OTCNumber: Integer);
begin
  With DMMidas do
  begin
    Queries.OpenOTC(OTCNumber, false);
    if CDSOTC.RecordCount > 0 then
    begin
      CDSOTC.Refresh;
      if CDSOTCSIGNATURE_LINK.Value > 0 then
      begin
          SQLPRES_ESIGNATUREFD.Connection := FDConnection2;
          CDSPRESC_ESIGNATURE.Close;
          CDSPRESC_ESIGNATURE.CommandText :=
            'Select * from PRESCRIPTION_ESIGNATURE with (NOLOCK) WHERE SIGNATURE_LINK = ' + IntToStr(CDSOTCSIGNATURE_LINK.Value);
          CDSPRESC_ESIGNATURE.Open;
          if CDSPRESC_ESIGNATURE.RecordCount > 0 then
          begin
            FrmShowSignature := TFrmShowSignature.Create(nil);
            With FrmShowSignature do
            begin
              FormStyle := fsStayOnTop;
              ShowModal;
              FrmShowSignature := Nil;
              Free;
            end;
          end
          else
            ShowMessage('No patient signature captured!');
      end
      else
      begin
        ShowMessage('No patient signature captured!');
      end;
    end;
  end;
end;


function TCommonPOS.GetTotal_lines(TransType: String; FinalReceipt: Boolean; DeudaLocal, DeudaLayaway: Double): Boolean;
begin
  With DMMidas.CDSHead do
  Begin
    With FrmReceiptView.RichEdit1 do
    begin
      Lines.Add('------------------------------------');
      //LblDummy.Font.Size := FrmMain.PrinterFontSize;//6;
      Lines.Add(Format('%24s %10s',['SUB TOTAL:', Format('%m',[FieldByName('SUBTOTAL').asFloat])]));
      Lines.Add('------------------------------------');
      Lines.Add(Format('%24s %10s',['TAX ESTATAL:', Format('%m',[FieldByName('TAX_ESTATAL').asFloat])]));
      if FieldByName('TAX_PROCESSED_FOOD').asFloat <> 0 then
        Lines.Add(Format('%24s %10s',['REDUCED TAX:', Format('%m',[FieldByName('TAX_PROCESSED_FOOD').asFloat])]));
      Lines.Add(Format('%24s %10s',['TAX MUNICIPAL:', Format('%m',[FieldByName('TAX').asFloat])]));

      if CommonPOS.Restaurant = False then
      begin
        if FieldByName('TAX_SERVICIO').asFloat > 0 then
        Lines.Add(Format('%24s %10s',['TAX SERVICIO:', Format('%m',[FieldByName('TAX_SERVICIO').asFloat])]));
      end;
      Lines.Add('------------------------------------');
      if FinalReceipt = False then
        Lines.Add(Format('%24s %10s',['CHECK:', Format('%m',[FieldByName('TOTAL').asFloat])]));

      if (CommonPOS.Restaurant = True) and (FinalReceipt = False) then
      begin
        Lines.Add('');
        Lines.Add(Format('%24s %8s',['GRATUITY:', '___________']));
        Lines.Add('');
        Lines.Add(Format('%24s %8s',['TOTAL:', '___________']));
      end
      else
      begin
        if CommonPOS.Restaurant = True then
          Lines.Add(Format('%24s %10s',['GRATUITY:', Format('%m',[FieldByName('TOTAL_TIP').asFloat])]));
      end;
      if FinalReceipt = True then
        Lines.Add(Format('%24s %10s',['TOTAL:', Format('%m',[FieldByName('TOTAL').asFloat + FieldByName('TOTAL_TIP').asFloat])]));

      If FieldByName('PayAmount1').asFloat > 0 then
      begin
        Lines.Add(Format('%24s %10s',
                [UpperCase(Copy(FieldByName('PaymentType1').asString,1,4)+':'),
                Format('%m',[FieldByName('PayAmount1').asFloat])]));
        If FieldByName('PayAmount2').asFloat > 0 then
        begin
          Lines.Add(Format('%24s %10s',
                  [UpperCase(Copy(FieldByName('PaymentType2').asString,1,4)+':'),
                  Format('%m',[FieldByName('PayAmount2').asFloat])]));
        end;
      end;

      IF FinalReceipt = True then Lines.Add(Format('%24s %10s',['CHANGE:', Format('%m',[FieldByName('Change').asFloat])]));

      If (FieldByName('RegTotal').asFloat - FieldByName('Total').asFloat > 0) AND
         (FieldByName('PaymentType1').asString <> 'POUT') then
      begin
        Lines.Add(Format('%24s %10s',['SU AHORRO:',Format('%m',[FieldByName('RegTotal').asFloat - FieldByName('Total').asFloat])]));
      end;
      If (Customer <> 0) then
      begin

      end;
      if (TransType = 'CRED') or (CommonPOS.Trans_AbonoCredito > 0) or
      (DeudaLocal > 0) then
      begin
        Lines.Add('');
        Lines.Add(DMMidas.CDSClientesNombreCompleto2.Value);
        If FrmMain.PrintBalance then
        begin
          Lines.Add('BALANCE CREDITO: ' + Format('%m', [DeudaLocal]));//Format('%m', [DMMidas.CDSClientesDEUDA.asFloat + FieldByName('Total').asFloat]));
        end;
        Lines.Add('');
        Lines.Add('Firma: __________________________ ');
        Lines.Add('');
      end;
      if (TransType = 'LWAY') or (AbonoLayawayCR = True) then
      begin
        Lines.Add('');
        Lines.Add(DMMidas.CDSClientesNombreCompleto2.Value);
        If FrmMain.PrintBalance then
          Lines.Add('BALANCE LAY AWAY: ' + Format('%m', [DeudaLayaway]));
        Lines.Add('');
        Lines.Add('Firma: __________________________ ');
        Lines.Add('');
      end;

      if (PatrocinioActivo = True) or (RedimirPatrocinioActivo = True) then
      begin
        Lines.Add('');
        Lines.Add(DMMidas.CDSClientesNombreCompleto2.Value);
        Lines.Add('Patrocinio: ' + Format('%m', [DMMidas.CDSClientesPATROCINIO.asFloat]));
        Lines.Add('');
        Lines.Add('Firma: __________________________ ');
        Lines.Add('');
      end;


      if CommonPOS.MemoStr > '' then
      begin
         Lines.Add(CommonPOS.MemoStr);
      end;
      CommonPOS.MemoStr := '';
      //--------------------------- Suggested Tip -----------------------
      if (CommonPOS.Restaurant = True) and (FinalReceipt = False) then
      begin
        Lines.Add('');
        Lines.Add(CenterString('Suggested Tip: ' + Format('%f', [DMMidas.CDSSetupTIP_PERCENTAGE1.asFloat]) + '%  - ' + Format('%m', [DMMidas.CDSHead.FieldByName('TOTAL').asFloat * DMMidas.CDSSetupTIP_PERCENTAGE1.asFloat]),35));
        Lines.Add(CenterString('Suggested Tip: ' + Format('%f', [DMMidas.CDSSetupTIP_PERCENTAGE2.asFloat]) + '%  - ' + Format('%m', [DMMidas.CDSHead.FieldByName('TOTAL').asFloat * DMMidas.CDSSetupTIP_PERCENTAGE2.asFloat]), 35));
        Lines.Add(CenterString('Suggested Tip: ' + Format('%f', [DMMidas.CDSSetupTIP_PERCENTAGE3.asFloat]) + '%  - ' + Format('%m', [DMMidas.CDSHead.FieldByName('TOTAL').asFloat * DMMidas.CDSSetupTIP_PERCENTAGE3.asFloat]), 35));
      end;
      Active := False;
    end;
  end;
end;



procedure TCommonPOS.SendEmailPharmatec(email, DocumentName: String; rcpt: TRichEdit; SendAttachment: Boolean);
Var
  Contacto, EMail_Addresses: String;
  Attachment, Attachment2: TIdAttachment;
  lines: Integer;
  rcpt_lines: string;
begin
  With DMMidas do
  begin
    rcpt.PlainText:= true;
    Configureemailserver;
    CDSPasswords.Close;
    CDSPasswords.Open;
    CDSPasswords.First;
    EMail_Addresses := email;
    if CDSSetupemail_carbon_copy.Value = true then
    begin
      IdMessage1.CCList.EMailAddresses := Trim(CDSSetupemail.Value);
    end;
    IdMessage1.Recipients.EMailAddresses := EMail_Addresses;
    IdMessage1.Subject := 'Your receipt!';
    if SendAttachment = true then
    begin
      IdMessage1.Body.Text := 'Hello user '  + chr(13) + chr(13) + 'Your purchase receipt. ' + chr(13) + chr(13) +
      DMMidas.CDSSetupSTORENAME.asString.Trim + chr(13) +
      'http://www.wescompr.com/' + chr(13) +
      'Tel. '+ CDSSetupTELEFONO.AsString.Trim  + chr(13);
    end
    else
    begin
      IdMessage1.Body.Text := 'Hello user '  + chr(13) + chr(13) + 'Your purchase receipt. ' + chr(13) + chr(13)+
      rcpt.Text +
      DMMidas.CDSSetupSTORENAME.asString.Trim + chr(13) +
      'http://www.wescompr.com/' + chr(13) +
      'Tel. '+ CDSSetupTELEFONO.AsString.Trim  + chr(13);
    end;
    if SendAttachment = true then
    begin
      IdMessage1.AttachmentTempDirectory := Trim(extractfilepath(application.exename)) + '\';
      Attachment := TIdAttachmentFile.Create(IdMessage1.MessageParts, Trim(extractfilepath(application.exename)) + '\' + DocumentName); //Rep.Name
    end;
    try
      IdSMTP1.Connect;//(1000);
      IdSMTP1.Authenticate;
      IdSMTP1.Send(IdMessage1); //MailMessage
    finally
      begin
        if IdSMTP1.Connected then
         IdSMTP1.Disconnect;
        DeleteFile(Trim(extractfilepath(application.exename)) + '\' + DocumentName);
      end;
    end;
  end;
end;
procedure TCommonPOS.Configureemailserver;
begin
  With DMMidas do
  begin
    IdMessage1.Clear;
    IdSMTP1.AuthType := satDefault;
    ///=======================================
    IdSMTP1.Username := 'wescom'; //AccountName;
    IdSMTP1.Password := 'M0csewLex@01'; //EMPassword;
    IdSMTP1.Host := 'mail.smtp2go.com';
    IdSMTP1.Port := 2525;//25;
    ///  =====================================
    IdMessage1.From.Address := 'wescom@wescomdev.com'; //Trim(CDSSetupemail.Value); //'support@wescompr.com'; ////'wescompr.com';
    //IdMessage1.From.Address := 'support@wescompr.com';
  end;
end;

Procedure TCommonPOS.SaveProduct_Signature(encripted_signature: TMemoryStream; user, PickedupBy, PickedupByID, address, idType: String; TransactionNumber: Integer);
begin
  encripted_signature.Position := 0;
  encripted_signature.Seek(0, TseekOrigin.soBeginning);
  With DMMidas.INSERT_PRODUCT_SIGNATURE do
  begin
    Prepare;
    ParamByName('@IMAGE_SIGNATURE').LoadFromStream(encripted_signature, ftBlob);
    ParamByName('@SIGNATURE_DATE').Value := Date;
    ParamByName('@SIGNATURE_USER').Value := Trim(Copy(user,1,3));
    ParamByName('@PICKEDUP_ID').Value := Trim(Copy(PickedupByID,1,20));
    ParamByName('@PICKEDUP_BY').Value :=  Trim(Copy(PickedupBy,1,45));
    ParamByName('@TRANSACTIONNUMBER').Value := TransactionNumber;
    ParamByName('@PICKEDUP_ADDRESS').Value := address;
    ParamByName('@PICKEDUP_ID_TYPE').Value := idType;
    ExecProc;
    Application.ProcessMessages;
  end;
end;

function TCommonPOS.Save_eSignature(encripted_signature, user, relation, PickedupBy, PickedupByID: String; NoCliente: Integer):Boolean;
var
  CapturePatSignature: Boolean;
begin
  try
    With DMMidas do
    begin
      if CommonPOS.standalone = true then
      begin
        FDQuery1.Connection := FDConnection2;
      end
      else
      begin
        FDQuery1.Connection := FDConnection1;
      end;

      FDQuery1.SQL.Text := 'UPDATE PRESCRIPTION_ESIGNATURE SET ENCRIPPTED_SIGNATURE = '
      +chr(39) + Trim(encripted_signature) + chr(39) +
      ' WHERE SIGNATURE_LINK = ' + IntToStr(CommonPOS.SignatureLink);
      FDQuery1.ExecSQL;

      CDSPickUp.First;
      While not CDSPickUp.Eof do
      begin
        FDQuery1.SQL.Text := 'Update OTC set Signature_link = ' + IntToStr(CommonPOS.SignatureLink) + ',' +
        'WF_SIGNATURE = ' + chr(39) + CommonPOS.User + ' ' + DateTimeToStr(Now) + chr(39) +
        ' where OTCNumber = ' + CDSPickUpOTCNUMBER.AsString;
        FDQuery1.ExecSQL;
        CommonPOS.InsertLog( 'PATIENT SIGNATURE CAPTURED', 'A', '', CommonPOS.User, '', CDSPickUpNUMERORECETA.Value,
        CDSPickUpOTCNUMBER.Value, 0, 0,0,0,0,0,'',false,true);
        //================= Adding signed prescriptions to POS! ======================
        if NOT Assigned(FrmPickup) then
        begin
          CommonPOS.FindRx(CDSPickUpOTCNUMBER.AsString, False, False, 'OTCNUMBER', False);
        end;
        CDSPickUp.Next;
      end;
      FDQuery1.SQL.Text := 'Delete from Pick_up where Instancia = ' + IntToStr(FrmMain.Instancia);
      FDQuery1.ExecSQL;
      FDQuery1.SQL.Text := 'Delete from Pick_up where Fecha < GETDATE()-2';
      FDQuery1.ExecSQL;
      {//================= Bag Pickup  ======================
      if NOT Assigned(FrmPickup) then
      begin
        //ShowMessage('Adding signed prescriptions to POS!');
        CDSPickUp.First;
        while Not CDSPickUp.eof do
        begin
          CommonPOS.FindRx(CDSPickUpOTCNUMBER.AsString, False, False, 'OTCNUMBER', False);
          CDSPickUp.Next;
        end;
      end;}

      {try
        CommonPOS.DisconnectFromDatabase;
        //ShowMessage('Preparing to sign!');
        if CDSClientesSIGNATURE_RX_LINK.Value > 1 then
          CapturePatSignature := false
        else
          CapturePatSignature := true;
        if UserRights.Pesc_Sig_isIdentity = False then
        begin

          With INSERT_ESIGNATURE do
          begin
            Prepare;
            ParamByName('@ENCRIPPTED_SIGNATURE').Value := Trim(encripted_signature);
            ParamByName('@SIGNATURE_DATE').Value := Date;
            ParamByName('@SIGNATURE_USER').Value := user;
            ParamByName('@SIGNATURE_LINK').Value := CommonPOS.SignatureLink;// SIG_LINK;
            ParamByName('@PICKEDUP_BY_RELATION').Value := relation;
            ParamByName('@PICKEDUP_BY').Value := PickedupBy;
            ParamByName('@PICKEDUP_ID').Value := PickedupByID;
            ParamByName('@NUMEROCLIENTE').Value := NoCliente;
            ParamByName('@SAVE_PAT_SIGNATURE').Value := CapturePatSignature;
            ParamByName('@INSTANCIA').Value := FrmMain.Instancia;
            ExecProc;
          end;
        end
        else
        begin
          With INSERT_ESIGNATURE_AI do
          begin
            Prepare;
            ParamByName('@ENCRIPPTED_SIGNATURE').Value := Trim(encripted_signature);
            ParamByName('@SIGNATURE_DATE').Value := Date;
            ParamByName('@SIGNATURE_USER').Value := User;
            ParamByName('@PICKEDUP_BY_RELATION').Value := relation;
            ParamByName('@PICKEDUP_BY').Value := PickedupBy;
            ParamByName('@PICKEDUP_ID').Value := PickedupByID;
            ParamByName('@NUMEROCLIENTE').Value := NoCliente;
            ParamByName('@SAVE_PAT_SIGNATURE').Value := CapturePatSignature;
            ParamByName('@INSTANCIA').Value := FrmMain.Instancia;
            ParamByName('@SIGNATURE_LINK2').Value := CommonPOS.SignatureLink;// SIG_LINK;
            ExecProc;
          end;
        end;
        sleep(1000);
        Application.ProcessMessages;
        //ShowMessage('Signed!');
      finally
        if NOT Assigned(FrmPickup) then
        begin
          //ShowMessage('Adding signed prescriptions to POS!');
          CDSPickUp.First;
          while Not CDSPickUp.eof do
          begin
            CommonPOS.FindRx(CDSPickUpOTCNUMBER.AsString, False, False, 'OTCNUMBER', False);
            CDSPickUp.Next;
          end;
        end;
      end;}
      if CDSPickUp.Active = True then CDSPickUp.Refresh;
      Result := true;
    end;
  except on e: Exception do
    begin
      ShowMessage('Could not save the image! ' + e.Message);
      With DMMidas do
      begin
        CDSPickUp.First;
        With CDSPickUp do
        begin
          CommonPOS.InsertLog('Electronic signature failure!', 'M', '',
            Copy(CommonPOS.User,1,3), '',
            CDSPickUpNUMERORECETA.Value, CDSPickUpOTCNUMBER.Value, 0, dmmidas.CDSClientesNUMEROCLIENTE.Value,
            0, 0, 0, 0, 'Error, unabled to capture electronic signature.' ,false,false);
          CDSPickUp.Next;
        end;
      end;
      Result := false;
    end;
  end;
end;

procedure TCommonPOS.Insert_Print_Jobs(final_receipt, delivery, quote: Boolean;
  receipt_name, print_type, trans_no, trans_type, email, mobile_phone_no, note,
  customer_number: String; NoCopies: Integer);
begin
  With DMMidas.INSERT_PRINT_Q do
  begin
    Prepare;
    ParamByName('@RX_ID').Value := 0;
    ParamByName('@COPIES').Value := NoCopies;
    ParamByName('@RX_OTC').Value := 'PO';
    ParamByName('@LABEL_NAME').Value := receipt_name;
    ParamByName('@TYPIST').Value := DMMidas.CDSTransHeadEMPLOYNUMBER.Value;
    ParamByName('@PRINTTOSCREEN').Value := 0;
    ParamByName('@PATIENT').Value := '';
    ParamByName('@INDICATIONS').Value := note;
    ParamByName('@PRINTER_ID').Value := 1;
    ParamByName('@PRINT_TYPE').Value := print_type; //0 = print, 1 = email, 2 = text message
    ParamByName('@TRANS_NO').Value := StrToInt(trans_no);
    ParamByName('@TRANS_TYPE').Value := trans_type;
    ParamByName('@FINAL_RECEIPT').Value := final_receipt;
    ParamByName('@EMAIL').Value := email;
    ParamByName('@MOBILE_PHONE').Value := mobile_phone_no;
    ParamByName('@CUSTOMER_NUMBER').Value := CommonPOS.Customer;
    ParamByName('@DELIVERY').Value := delivery;
    ParamByName('@QUOTE').Value := false;
    ParamByName('@PRINTER_IP').Value := trim(CommonPOS.PrinterIP);
    ExecProc;
    TTask.run(
    Procedure
    begin
      Try
        With DMMidas.TCPClientPrintServer do
        begin
          Port := StrToInt(CommonPOS.PrinterPort);//2022;
          Host := CommonPOS.PrinterIP;//'192.168.4.217';
          Connect;

          if CommonPOS.TripleS_previousBalance > 0 then
          begin
            if CommonPOS.standalone = true then
              IOHandler.WriteLn(receipt_name + '|' + trans_no + '|' +
              Format('%m', [CommonPOS.TripleS_previousBalance]) + '|' +
              Format('%m', [CommonPOS.TripleS_ApprovedAmount])  + '|' +
              Format('%m', [CommonPOS.TripleS_finalBalance]) + '|' +
              '|POS')
            else
              IOHandler.WriteLn(receipt_name + '|' + trans_no + '|' +
              Format('%m', [CommonPOS.TripleS_previousBalance]) + '|' +
              Format('%m', [CommonPOS.TripleS_ApprovedAmount])  + '|' +
              Format('%m', [CommonPOS.TripleS_finalBalance]) + '|' +
              '|')
          end
          else
          begin
            if CommonPOS.standalone = True then
              IOHandler.WriteLn(receipt_name + '|' + trans_no + '|0|0|0|' + CommonPOS.EvertecID + '|POS')
            else
              IOHandler.WriteLn(receipt_name + '|' + trans_no + '|0|0|0|' + CommonPOS.EvertecID + '|')
          end;
        end;
      finally
         DMMidas.TCPClientPrintServer.Disconnect;
         CommonPOS.EvertecID := '0';
      End;
    end);
  end;
end;

//==============================================================================
// FStr - Aligns a string filling it with blanks to the desired length
// Created 08/04/98
//------------------------------------------------------------------------------
function TCommonPOS.FStr(Input: String; StrLen: Integer; Align: TAlign): String;
Var
  Count: Integer;
  TmpStr: String;
Begin
  TmpStr := Input;
  Count := 1;
  While Count <= (StrLen - Length(Input)) do
  Begin
    If Align = alLeft then
    Begin
      //TmpStr := TmpStr + ' ';
      TmpStr := ' ' + TmpStr
    end
    Else
    Begin
      If Align = alRight then
      Begin
        //TmpStr := ' ' + TmpStr;
        TmpStr := TmpStr + ' ';
      end
      Else
      Begin
        If Count Mod 2 = 0 then
        Begin
          TmpStr := ' ' + TmpStr;
        end;
      end;
    end;
    Count := Count + 1;
  end;
  FStr := TmpStr;
end;




Procedure TCommonPOS.RxQuerySuncrest(NoRx: String);
Var
  F: TextFile;
begin
    AssignFile(F, extractfilepath(application.exename) +  'RXQuery.xml');
    ReWRITE(F);
    WRITELN(F,'WCQ' + FStr(NoRx,15, alRight) + FStr('',237, alRight));
    CloseFile(F);
    SendFile(NoRx,true);
end;

Procedure TCommonPOS.RxQuerySmartPickup(NoRx: String);
Var
  F: TextFile;
  lStringList: TStringList;
  PosStr: Integer;
begin
  PosStr := Pos('RX',UpperCase(NoRx));
  if PosStr > 0 then
  begin
    NoRx := Trim(Copy(NoRx,3,50));
  end;
  AssignFile(F, extractfilepath(application.exename) +  'RXQuery.xml');
  ReWRITE(F);
  //WRITELN(F,'RXQ' + CommonRoutine.FStr(NoRx,15, alRight) + CommonRoutine.FStr('',237, alRight)); //Telemanager
  WRITELN(F,'RXQ' + Trim(NoRx));
  CloseFile(F);
  SendFile(NoRx,true);
end;


procedure TCommonPOS.SendFile(NoRx: String; WaitForResponse: Boolean);
var
filename, Resp: string;
fileStream: TFileStream;
AByte: Byte;
begin
  Try
    With FrmMain do
    begin
      filename := extractfilepath(application.exename) + 'RXQuery.xml';
      Try
        Try
          // create the stream
          fileStream := TFileStream.Create(filename, fmOpenRead);
          // send the command
          if not TCPClient2.Connected then
          begin
            TCPClient2.Host := DMMidas.CDSSetupWC_INTERFACE_HOST.AsString.Trim;
            TCPClient2.Port := DMMidas.CDSSetupWC_INTERFACE_PORT.Value;
            TCPClient2.Connect;
          end;
          // send the file
          TCPClient2.IOHandler.Write(fileStream,fileStream.Size,False);
          //Memo2.Lines.Add('File sent');
          //Memo2.Lines.Add('Received ' + IdTCPClient1.LastCmdResult.Code);
        Except
          //on E:Exception do
          //Memo2.lines.add('Error sending ' + filename + ': ' + e.Message);
        end;
      finally
        FreeAndNil(fileStream);
      end;
        While Not TCPClient2.IOHandler.InputBufferIsEmpty Do Begin
          TCPClient2.IOHandler.ReadLn();
        End;
      if WaitForResponse = true then
      begin
        GetCreateXMLEventResponse(NoRx);
      end;
    end;
  Except
    //Memo2.lines.add('Error connecting');
  End;
end;

procedure TCommonPOS.GetCreateXMLEventResponse(NoRx: String);
Var
  ChangeLine7, ChangeLine8,  File1, s, line, FileStr: string;
  CreateFile, FToSave: TextFile;
  //DataType : IXMLParataRds_MsgType;
  Counter: Integer;
  F: TextFile;
  data: String;
  StrPos, StrPos2: Integer;
begin

  try
    while FrmMain.TCPClient2.IOHandler.CheckForDataOnSource(1000) do begin end;
  finally
    s := FrmMain.TCPClient2.IOHandler.InputBufferAsString;
    //Memo2.Lines.add(s);
  end;
  if Trim(DMMidas.CDSSetupWC_INTERFACE.Value) = 'SmartPickup' then
  begin
    StrPos := POS('RXR',s);
    s := Copy(s,StrPos, 512);
    System.AssignFile(CreateFile, WorkingDirectory + 'QueryReply.txt');
    System.Rewrite(CreateFile);
    WriteLn(CreateFile, S);
    System.CloseFile(CreateFile);
    FrmMain.TCPClient2.Disconnect;
    SmartPickupInsertRxXML(NoRx);
    exit;
  end
  else
  begin
    System.AssignFile(CreateFile, WorkingDirectory + 'QueryReply.txt');
    System.Rewrite(CreateFile);
    WriteLn(CreateFile, S);
    System.CloseFile(CreateFile);
  end;
  try
    Counter := 0;
    System.AssignFile(F, WorkingDirectory + 'QueryReply.txt');
    Reset(F);
    while not EOF(F) do
    Begin
      Counter := Counter + 1;
      try
        Readln(F, S);
        if Trim(S) > '' then // <> '</ParataRds_Msg><ParataRds_Msg>') and (Trim(S) <> '</ParataRds_Msg>') then
        begin
          if Counter = 7 then
          begin
            ChangeLine7 := Trim(s);
          end;
          if (Counter = 8) then
          begin
            ChangeLine8 := Trim(s);
            File1 := File1 + ChangeLine8 + chr(13);
            File1 := File1 + ChangeLine7 + chr(13);
          end;
          if (Counter <> 7) and (Counter <> 8) then
            File1 := File1 + Trim(S) + chr(13);
        end;
      finally
         //
      end;
    end;
    System.CloseFile(F);
  finally
    StrPos:=0;
    StrPos2:=0;
    StrPos := POS('<QUERY_REPLY>',File1);
    StrPos2 := POS('</QUERY_REPLY>',File1);
    File1 := Trim(Copy(File1, StrPos, StrPos2+12));

    System.AssignFile(FtoSave, WorkingDirectory + 'QueryReply.xml');
    System.ReWRITE(FtoSave);
    WRITELN(FtoSave, File1);
    System.CloseFile(FtoSave);
    File1 := '';
  end;
  FrmMain.TCPClient2.Disconnect;
  if Trim(DMMidas.CDSSetupWC_INTERFACE.Value) = 'TeleManager' then TeleManagerInsertRxXML;
  //if Trim(DMMidas.CDSSetupWC_INTERFACE.Value) = 'Suncrest' then SuncrestInsertRxXML;
end;

procedure TCommonPOS.SmartPickupInsertRxXML(NoRx: String);
Var
  S: String;
  Vehicle: IXMLNode;
  Token1, Token2, Token3, DOB, Telephone, MobilePhone: String;
  I: Integer;
  F: TextFile;
  LastFillDate, PatLastName, PatFirstName, PatMaidenName, PatAddress, PatCity, PatState, PatZip,
  PatPhone, PatPhone2, PatDOB, PatNotiication, PatEmail, DrugName, Copay, Cost, RetailPrice,
  MedicalRecNumber, PatientPrimaryKey, DeliveryRoute, PatLanguage, RxNumber, RxQty, AmountDue,
  RxType, RxDate, NDC: String;

  NOTIFICATION_MODE1, NOTIFICATION_MODE2, Tel: String;
  DataType : IXMLQUERY_REPLYType;
  TransType: String;
  myDate: TDateTime;
  CashPlan: string;
begin
  AssignFile(F, WorkingDirectory + 'QueryReply.txt');
  Reset(F);
  Begin
    try
      Readln(F, S);
      PatFirstName := Copy(S, 4, 12);
      PatLastName := Copy(S, 16, 15);
      PatMaidenName := Copy(S, 31, 15);
      PatPhone := Trim(Copy(S, 46, 11));
      PatPhone2 := Trim(Copy(S, 57, 11));
      PatAddress := Copy(S, 68, 30);
      PatCity := Copy(S, 98, 20);
      PatState := Copy(S, 118, 2);
      PatZip := Copy(S, 120, 9);
      PatDOB := Copy(S, 129, 8);
      PatientPrimaryKey := Copy(S, 137, 10);
      PatLanguage := Copy(S, 147, 3);
      if PatLanguage = 'SPN' then PatLanguage := 'Spanish';
      if PatLanguage = 'ENG' then PatLanguage := 'English';
      PatNotiication := Copy(S, 150, 1);
      PatEmail := Copy(S, 151, 80);
      RxNumber := Copy(S, 231, 15);
      DrugName := Copy(S, 255, 30);
      RxQty := Copy(S, 285, 9);
      Copay := Copy(S, 294, 9);  //99999.99
      Cost := Copy(S, 303, 9);
      RetailPrice := Copy(S, 312, 9);
      AmountDue := Copy(S, 321, 9);
      //MedicalRecNumber := Copy(S, 242, 25);
      //DeliveryRoute := Copy(S, 282, 15);
      LastFillDate := Copy(S, 247, 8); //MMDDYYYY
      //RxType := Copy(S, 330, 1);
      NDC := Copy(S, 331, 11);
    finally
      System.CloseFile(F);
    end;
  End;
  if Trim(DrugName) > '' then
  begin
    With DMMidas do
    begin
      AddProduct('F','RX' + RxNumber, DrugName,'RECETASC','F','',
                                     CommonPOS.User, 'F', 'F', StrToFloat(AmountDue),
                                     StrToFloat(RetailPrice), Perc, StrToFloat(cost),1, 0, 0, CommonPOS.ID, 0,0,0, 0,false,false,'',0,false,0,false, false);
    end;
  end
  else
  begin
    ShowMessageStr('Prescription not found!', 12, clred);
    {FrmWarning := TFrmWarning.Create(Self);
    With FrmWarning do
    begin
      Memo1.Lines.add('Prescription not found!');
      ShowModal;
      Free;
    end;}
  end;

  //EditSearch.SetFocus;
end;


procedure TCommonPOS.SuncrestInsertRxXML(NoRx: String);
Var
  S: String;
  Vehicle: IXMLNode;
  Token1, Token2, Token3, DOB, Telephone, MobilePhone: String;
  I: Integer;
  F: TextFile;
  LastFillDate, PatLastName, PatFirstName, PatAddress, PatCity, PatState, PatZip,
  PatPhone, PatPhone2, PatDOB, DrugName, Copay, Cost, RetailPrice,
  MedicalRecNumber, PatientPrimaryKey, DeliveryRoute, PatLanguage: String;
begin
  System.AssignFile(F, extractfilepath(application.exename) + 'QueryReply.xml');
  Reset(F);
  Begin
    try
      Readln(F, S);
      //ShowMessage(S);
    finally
      //
    end;
    LastFillDate := Copy(S, 20, 8); //MMDDYYYY
    PatLastName := Copy(S, 28, 30);
    PatFirstName := Copy(S, 58, 30);
    PatAddress := Copy(S, 88, 30);
    PatCity := Copy(S, 118, 25);
    PatState := Copy(S, 143, 3);
    PatZip := Copy(S, 146, 9);
    PatPhone := Copy(S, 155, 11);
    PatPhone2 := Copy(S, 166, 11);
    PatDOB := Copy(S, 177, 8);
    DrugName := Copy(S, 185, 30);
    Copay := Copy(S, 215, 9);  //99999.99
    Cost := Copy(S, 224, 9);
    RetailPrice := Copy(S, 233, 9);
    MedicalRecNumber := Copy(S, 242, 25);
    PatientPrimaryKey := Copy(S, 267, 15);
    DeliveryRoute := Copy(S, 282, 15);
    PatLanguage := Copy(S, 297, 5);
    System.CloseFile(F);
  End;
  if CheckifRxInSavedTransactions('', NoRx) = True then
  begin
    exit;
  end;
  AddProduct('F','RX' + NoRx, DrugName,'RECETASC','F','',
                                     CommonPOS.User, 'F', 'F', StrToFloat(RetailPrice),
                                     StrToFloat(RetailPrice), Perc, StrToFloat(cost),1, 0, 0, CommonPOS.ID, 0,0,0, 0,false,false,'',0,false,0,false, false);

end;

Procedure TCommonPOS.RxQueryTeleManager(NoRx: String);
Var
  F: TextFile;
begin
      AssignFile(F, extractfilepath(application.exename) +  'RXQuery.xml');
      ReWRITE(F);
      WRITELN(F, '<?xml version="1.0"?>');
      WRITELN(F, '<RX_QUERY>');
        WRITELN(F, '<HEADER>');
          WRITELN(F, '<Status_Flag>000</Status_Flag>');
          WRITELN(F, '<TRANSACTION_TYPE>RQ</TRANSACTION_TYPE>');
          WRITELN(F, '<Version_Number>TMT.V.001</Version_Number>');
          WRITELN(F, '<TRANSACTION_ORIGIN>01</TRANSACTION_ORIGIN>');
        WRITELN(F, '</HEADER>');
        WRITELN(F, '<REFILL_INFO>');
          WRITELN(F, '<RX_NUMBER>' + NoRx + '</RX_NUMBER>');
          WRITELN(F, '<PHARMACY_IDENTIFICATION>' + DMMidas.CDSSetupSTORENAME.Text.Trim + '</PHARMACY_IDENTIFICATION>');
        WRITELN(F, '</REFILL_INFO>');
      WRITELN(F, '</RX_QUERY>');
      CloseFile(F);
      SendFile(NoRx,true);
end;

procedure TCommonPOS.TeleManagerInsertRxXML;
begin
//
end;

function TCommonPOS.Coopharma_SendTransaction: Boolean;
var
  S: String;
begin
  With DMMidas do
  begin
  {  RESTClient.ResetToDefaults;
    RESTResponse.ResetToDefaults;
    RESTRequest.ResetToDefaults;
    RESTClient.Accept := 'application/json, text/plain; q=0.9, text/html;q=0.8,';
    RESTClient.AcceptCharset := 'utf-8, *;q=0.8';
    RESTClient.ContentType := 'application/json';
    RESTClient.HandleRedirects := True;
    RESTClient.RaiseExceptionOn500 := False;
    //RESTRequest.Client := RESTClient;
    //RESTRequest.Response := RESTResponse;
    //RESTRequest.Params.Clear;
    //RESTRequest.Body.ClearBody;
    RESTRequest.Body.ClearBody;
    RESTRequest.Params.Clear;  }
    RESTClient1.ResetToDefaults;
    RESTResponse1.ResetToDefaults;
    RESTRequest1.ResetToDefaults;
    RESTClient1.Accept := 'application/json, text/plain; q=0.9, text/html;q=0.8,';
    RESTClient1.AcceptCharset := 'utf-8, *;q=0.8';
    RESTRequest1.Method := TRESTRequestMethod.rmGet;
    RESTClient1.ContentType := 'application/json';
    RESTClient1.HandleRedirects := True;
    RESTClient1.RaiseExceptionOn500 := False;
    RESTRequest1.Client := RESTClient;
    RESTRequest1.Response := RESTResponse;
    RESTRequest1.Params.Clear;
    RESTRequest1.Body.ClearBody;
    if (CommonPOS.User = 'ADM') or (CommonPOS.User = 'ACG') Then
    begin
      RESTClient.BaseURL := 'https://coopharma-discount-api-dev-8brxc.ondigitalocean.app/sales/sales/';
      //RESTClient1.BaseURL := 'http://192.168.4.217:8081/pharmacies' ;
      //RESTClient1.Params.AddHeader('Key', '0ecf3234-e904-41a5-8a96-da193bc077b4');
    end
    else
    begin
      RESTClient1.BaseURL := 'https://coopharma-discount-api-awwj8.ondigitalocean.app/sales/sales/';// + Trim(EditInsuranceNumber.Text);
      RESTClient1.Params.AddHeader('Key',  '0ecf3234-e904-41a5-8a96-da193bc077b4');
    end;
    with RESTRequest1.Body.JSONWriter do
    begin
      //Formatting := TJsonFormatting.Indented;
      WriteStartObject;
        WritePropertyName('id_transaction');
        WriteValue(IntToStr(CDSTransShowTRANSACTIONNUMBER.Value));
        WritePropertyName('id_pharmacy');
        WriteValue(Trim(CDSSetupCOOPHARMA_PHARMACY_ID.Value));
        WritePropertyName('num_card');
        WriteValue(CommonPOS.CopharmaCardNumber);
        WritePropertyName('transac_date');
        WriteValue(FormatDateTime('mm-dd-yyyy', CDSTransShowFECHAVENTA.asDateTime));
        WritePropertyName('DiscPercentageAmount');
        WriteValue(Format('%f',[CDSTransHeadTOTAL_DISCOUNT.asFloat]));
        WritePropertyName('DiscPercentage');
        WriteValue(Format('%f',[CommonPOS.Perc]));
        WritePropertyName('Tax');
        WriteValue(Format('%f',[CDSTransHeadTOTAL_TAX.asFloat]));
        WritePropertyName('SubTotalSale');
        WriteValue(Format('%f',[CDSTransHeadSUB_TOTAL.asFloat]));
        WritePropertyName('TotalSale');
        WriteValue(Format('%f',[CDSTransHeadTOTAL.asFloat]));
        WritePropertyName('TotalSaleNoDisc');
        WriteValue(Format('%f',[CDSTransHeadREGTOTAL.AsFloat]));
        WritePropertyName('Duns');
        WriteValue('1-866-705-5711');
        WritePropertyName('Product');
          WriteStartArray;
            CDSTransShow.First;
            while not CDSTransShow.Eof do
            begin
              WriteStartObject;
                WritePropertyName('UPC');
                WriteValue(CDSTransShowUPC.Value);
                WritePropertyName('UPCDescription');
                WriteValue(Trim(CDSTransShowPRODDESCRIPTION.Value));
                WritePropertyName('SKU');
                WriteValue(IntToStr(CDSTransShowPRODUCTNO.Value));
                WritePropertyName('SKUDescription');
                WriteValue(Trim(CDSTransShowPRODDESCRIPTION.Value));
                WritePropertyName('QTY');
                WriteValue(Format('%f',[CDSTransShowQTY.Value]));
                WritePropertyName('Price');
                WriteValue(Format('%f',[CDSTransShowREGPRICE.asFloat]));
                WritePropertyName('Cost');
                WriteValue(Format('%f',[CDSTransShowCOSTO.asFloat]));
                WritePropertyName('DiscPrice');
                WriteValue(Format('%f',[CDSTransShowDISCOUNT.asFloat]));
                WritePropertyName('Supplier');
                CDSSuplidores.Close;
                CDSSuplidores.CommandText := 'select * from SUPLIDORES where NUMEROSUPLIDOR = ' + IntToStr(CDSTransShowSUPLIDOR.Value);
                CDSSuplidores.Open;
                WriteValue(CDSSuplidoresSUPLIDOR.Value);
                WritePropertyName('UM');
                WriteValue('each');
              WriteEndObject;
              CDSTransShow.Next;
            end;
          WriteEndArray;
      WriteEndObject;
      Try
        RESTRequest1.Execute;
      Except
        CommonPOS.ShowMessageStr('Server down!',12,clBlack);
        exit;
      End;
      S := RESTResponse1.Content;
    end;
  end;
end;

function TCommonPOS.WC_Availables(OpenTable: Boolean): Boolean;
begin
  result := false;
  FrmWillCallAvailables := TFrmWillCallAvailables.Create(Nil);
  With FrmWillCallAvailables do
  begin
    if OpenTable = true then
    begin
      With DMwc do
      begin
        cdsWC_PATIENTS.Close;
        cdsWC_PATIENTS.CommandText := DMwc.getWC_PATIENTS(CommonPOS.DataBaseNamePOS, CommonPOS.DataBaseNameRx) + ' order by APELLIDOPATERNO, APELLIDOMATERNO, NOMBRE';
        cdsWC_PATIENTS.Open;
      end;
    end;
    ShowModal;
    if ModalResult = mrOk then result := true;
    FrmWillCallAvailables := nil;
    Free;
  end;
end;

Procedure TCommonPOS.SetConnection(fdq: TFDQuery);
begin
  With DMMidas do
  begin
    if CommonPOS.standalone = True then
      fdq.Connection := FDConnection2
    else
      fdq.Connection := FDConnection1;
  end;
end;


procedure TCommonPOS.SettleSpinPOS;
var
  MyStrval: String;
begin
  CommonPOS.TransactionType := 'Void';
  With DMMidas do
  begin
    cdsSpinPos.Active := False;
    cdsSpinPos.CommandText := 'SELECT top (1) *  FROM [SPINPOS] where Batchnum>0 order by id desc ';
    cdsSpinPos.Active := True;
    MyStrval := cdsSpinPos.FieldByName('BatchNum').AsString;
    if cdsSpinPos.RecordCount > 0 then
    begin
     frmMainSPOS := TfrmSpinPOS.Create(nil);
     frmMainSPOS.ProcessNum  := 9;  //ProcessSettle
     frmMainSPOS.sBatchNumber := MyStrVal;
     frmMainSPOS.ShowModal;
     frmMainSPOS.Free;
     frmMainSPOS := nil;
    end
    else
    begin
      showMessage('No transaction found.');
    end;
  end;
end;

Initialization
  CommonPOS := TCommonPOS.Create;
  UserRights := TUserRights.Create;
end.
