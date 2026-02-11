// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://wescom:8088/mockTxServerServiceSoapBinding?WSDL
// Encoding : UTF-8
// Version  : 1.0
// (05/04/2011 04:47:57 PM - 1.33.2.5)
// ************************************************************************ //

unit mockTxServerServiceSoapBinding;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"
  // !:decimal         - "http://www.w3.org/2001/XMLSchema"
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"
  // !:int             - "http://www.w3.org/2001/XMLSchema"

  transaction          = class;                 { "http://txserver.sut.softekpr.com/1" }
  ivuLotoData          = class;                 { "http://txserver.sut.softekpr.com/1" }
  txInfoRequest        = class;                 { "http://txserver.sut.softekpr.com/1" }
  txInfo               = class;                 { "http://txserver.sut.softekpr.com/1" }
  txInfoResponse       = class;                 { "http://txserver.sut.softekpr.com/1" }

  { "http://txserver.sut.softekpr.com/1" }
  tenderType = (CASH, CREDIT, DEBIT, EBT, ATH, UNSPECIFIED_CARD, UNKNOWN);

  { "http://txserver.sut.softekpr.com/1" }
  txType = (SALE, REFUND);

  { "http://txserver.sut.softekpr.com/1" }
  txPosResponseStatus = (SUCCESS, AUTHENTICATION_FAILED, MISSING_PARAMETERS, INVALID_PARAMETERS, SERVER_ERROR);

  { "http://txserver.sut.softekpr.com/1" }
  txInfoResponseStatus = (SUCCESS2, AUTHENTICATION_FAILED2, MISSING_PARAMETERS2, INVALID_PARAMETERS2, SERVER_ERROR2);



  // ************************************************************************ //
  // Namespace : http://txserver.sut.softekpr.com/1
  // ************************************************************************ //
  transaction = class(TRemotable)
  private
    FmerchantId: WideString;
    FmunicipalTax: TXSDecimal;
    FstateTax: TXSDecimal;
    FsubTotal: TXSDecimal;
    FtenderType: tenderType;
    FterminalId: WideString;
    FterminalPassword: WideString;
    Ftotal: TXSDecimal;
    FtxDate: TXSDateTime;
    FtxType: txType;
  public
    destructor Destroy; override;
  published
    property merchantId: WideString read FmerchantId write FmerchantId;
    property municipalTax: TXSDecimal read FmunicipalTax write FmunicipalTax;
    property stateTax: TXSDecimal read FstateTax write FstateTax;
    property subTotal: TXSDecimal read FsubTotal write FsubTotal;
    property tenderType: tenderType read FtenderType write FtenderType;
    property terminalId: WideString read FterminalId write FterminalId;
    property terminalPassword: WideString read FterminalPassword write FterminalPassword;
    property total: TXSDecimal read Ftotal write Ftotal;
    property txDate: TXSDateTime read FtxDate write FtxDate;
    property txType: txType read FtxType write FtxType;
  end;



  // ************************************************************************ //
  // Namespace : http://txserver.sut.softekpr.com/1
  // ************************************************************************ //
  ivuLotoData = class(TRemotable)
  private
    FivuLoto: WideString;
    FcontrolNumber: WideString;
    FdrawNumber: WideString;
    FdrawDate: TXSDateTime;
    Fstatus: txPosResponseStatus;
    FerrorDetail: WideString;
  public
    destructor Destroy; override;
  published
    property ivuLoto: WideString read FivuLoto write FivuLoto;
    property controlNumber: WideString read FcontrolNumber write FcontrolNumber;
    property drawNumber: WideString read FdrawNumber write FdrawNumber;
    property drawDate: TXSDateTime read FdrawDate write FdrawDate;
    property status: txPosResponseStatus read Fstatus write Fstatus;
    property errorDetail: WideString read FerrorDetail write FerrorDetail;
  end;



  // ************************************************************************ //
  // Namespace : http://txserver.sut.softekpr.com/1
  // ************************************************************************ //
  txInfoRequest = class(TRemotable)
  private
    FendDate: TXSDateTime;
    FmerchantId: WideString;
    FstartDate: TXSDateTime;
    FterminalId: WideString;
    FterminalPassword: WideString;
  public
    destructor Destroy; override;
  published
    property endDate: TXSDateTime read FendDate write FendDate;
    property merchantId: WideString read FmerchantId write FmerchantId;
    property startDate: TXSDateTime read FstartDate write FstartDate;
    property terminalId: WideString read FterminalId write FterminalId;
    property terminalPassword: WideString read FterminalPassword write FterminalPassword;
  end;



  // ************************************************************************ //
  // Namespace : http://txserver.sut.softekpr.com/1
  // ************************************************************************ //
  txInfo = class(TRemotable)
  private
    FcontrolNumber: WideString;
    FdrawDate: TXSDateTime;
    FdrawNumber: WideString;
    FivuLottoNumber: WideString;
    FmunicipalTax: TXSDecimal;
    FstateTax: TXSDecimal;
    FsubTotal: TXSDecimal;
    FtenderType: tenderType;
    Ftotal: TXSDecimal;
    FtransactionDate: TXSDateTime;
    FtransactionType: txType;
  public
    destructor Destroy; override;
  published
    property controlNumber: WideString read FcontrolNumber write FcontrolNumber;
    property drawDate: TXSDateTime read FdrawDate write FdrawDate;
    property drawNumber: WideString read FdrawNumber write FdrawNumber;
    property ivuLottoNumber: WideString read FivuLottoNumber write FivuLottoNumber;
    property municipalTax: TXSDecimal read FmunicipalTax write FmunicipalTax;
    property stateTax: TXSDecimal read FstateTax write FstateTax;
    property subTotal: TXSDecimal read FsubTotal write FsubTotal;
    property tenderType: tenderType read FtenderType write FtenderType;
    property total: TXSDecimal read Ftotal write Ftotal;
    property transactionDate: TXSDateTime read FtransactionDate write FtransactionDate;
    property transactionType: txType read FtransactionType write FtransactionType;
  end;



  // ************************************************************************ //
  // Namespace : http://txserver.sut.softekpr.com/1
  // ************************************************************************ //
  txInfoResponse = class(TRemotable)
  private
    FerrorDetail: WideString;
    FtxCount: Integer;
    Ftransactions: txInfo;
    Fstatus: txInfoResponseStatus;
  public
    destructor Destroy; override;
  published
    property errorDetail: WideString read FerrorDetail write FerrorDetail;
    property txCount: Integer read FtxCount write FtxCount;
    property transactions: txInfo read Ftransactions write Ftransactions;
    property status: txInfoResponseStatus read Fstatus write Fstatus;
  end;


  // ************************************************************************ //
  // Namespace : http://txserver.sut.softekpr.com/1
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // binding   : TxServerServiceSoapBinding
  // service   : TxServerService
  // port      : TxServerPort
  // URL       : http://wescom:8088/mockTxServerServiceSoapBinding
  // ************************************************************************ //
  TxServer = interface(IInvokable)
  ['{FA236F41-8840-15A4-8F74-1E1583384A66}']
    function  requestIVULoto(const transaction: transaction): ivuLotoData; stdcall;
    function  requestTxInfo(const arg0: txInfoRequest): txInfoResponse; stdcall;
  end;

function GetTxServer(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): TxServer;


implementation

function GetTxServer(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): TxServer;
const
  defWSDL = 'http://wescom:8088/mockTxServerServiceSoapBinding?WSDL';
  defURL  = 'http://wescom:8088/mockTxServerServiceSoapBinding';
  defSvc  = 'TxServerService';
  defPrt  = 'TxServerPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as TxServer);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


destructor transaction.Destroy;
begin
  if Assigned(FmunicipalTax) then
    FmunicipalTax.Free;
  if Assigned(FstateTax) then
    FstateTax.Free;
  if Assigned(FsubTotal) then
    FsubTotal.Free;
  if Assigned(Ftotal) then
    Ftotal.Free;
  if Assigned(FtxDate) then
    FtxDate.Free;
  inherited Destroy;
end;

destructor ivuLotoData.Destroy;
begin
  if Assigned(FdrawDate) then
    FdrawDate.Free;
  inherited Destroy;
end;

destructor txInfoRequest.Destroy;
begin
  if Assigned(FendDate) then
    FendDate.Free;
  if Assigned(FstartDate) then
    FstartDate.Free;
  inherited Destroy;
end;

destructor txInfo.Destroy;
begin
  if Assigned(FdrawDate) then
    FdrawDate.Free;
  if Assigned(FmunicipalTax) then
    FmunicipalTax.Free;
  if Assigned(FstateTax) then
    FstateTax.Free;
  if Assigned(FsubTotal) then
    FsubTotal.Free;
  if Assigned(Ftotal) then
    Ftotal.Free;
  if Assigned(FtransactionDate) then
    FtransactionDate.Free;
  inherited Destroy;
end;

destructor txInfoResponse.Destroy;
begin
  if Assigned(Ftransactions) then
    Ftransactions.Free;
  inherited Destroy;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(TxServer), 'http://txserver.sut.softekpr.com/1', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(TxServer), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(TxServer), ioDocument);
  RemClassRegistry.RegisterXSInfo(TypeInfo(tenderType), 'http://txserver.sut.softekpr.com/1', 'tenderType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(txType), 'http://txserver.sut.softekpr.com/1', 'txType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(txPosResponseStatus), 'http://txserver.sut.softekpr.com/1', 'txPosResponseStatus');
  RemClassRegistry.RegisterXSInfo(TypeInfo(txInfoResponseStatus), 'http://txserver.sut.softekpr.com/1', 'txInfoResponseStatus');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(txInfoResponseStatus), 'SUCCESS2', 'SUCCESS');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(txInfoResponseStatus), 'AUTHENTICATION_FAILED2', 'AUTHENTICATION_FAILED');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(txInfoResponseStatus), 'MISSING_PARAMETERS2', 'MISSING_PARAMETERS');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(txInfoResponseStatus), 'INVALID_PARAMETERS2', 'INVALID_PARAMETERS');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(txInfoResponseStatus), 'SERVER_ERROR2', 'SERVER_ERROR');
  RemClassRegistry.RegisterXSClass(transaction, 'http://txserver.sut.softekpr.com/1', 'transaction');
  RemClassRegistry.RegisterXSClass(ivuLotoData, 'http://txserver.sut.softekpr.com/1', 'ivuLotoData');
  RemClassRegistry.RegisterXSClass(txInfoRequest, 'http://txserver.sut.softekpr.com/1', 'txInfoRequest');
  RemClassRegistry.RegisterXSClass(txInfo, 'http://txserver.sut.softekpr.com/1', 'txInfo');
  RemClassRegistry.RegisterXSClass(txInfoResponse, 'http://txserver.sut.softekpr.com/1', 'txInfoResponse');

end. 