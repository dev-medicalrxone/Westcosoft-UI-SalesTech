unit SpinPOSClient;

interface

uses
  System.SysUtils, System.Classes, System.JSON, System.Net.HttpClient,
  System.Net.URLClient, REST.Json;

//const
  //SPINPOS_BASE_URL = 'https://test.spinpos.net/v2';

  type

  TPaymentResponse = class
  private
    FSuccess: Boolean;
    FMessage: string;
    FMessageDet: string;
    FTransactionId: string;
    FApprovalCode: string;
    FResponseCode: string;
    FRawJSON: string;
    FCardNumber: string;
    FCardType: string;
    FCardHolder: string;
    FAmount: string;
    FRefNum: string;
    FBatchNum: string;
    FTypePayment: string;
    FTransactionType: string;
    FSignature: string;        //[2025/12/15 jb] added
  public
    property Success: Boolean read FSuccess write FSuccess;
    property Message: string read FMessage write FMessage;
    property MessageDet: string read FMessageDet write FMessageDet;
    property TransactionId: string read FTransactionId write FTransactionId;
    property ApprovalCode: string read FApprovalCode write FApprovalCode;
    property ResponseCode: string read FResponseCode write FResponseCode;
    property RawJSON: string read FRawJSON write FRawJSON;
    property CardNumber: string read FCardNumber write FCardNumber;
    property CardType: string read FCardType write FCardType;
    property CardHolder: string read FCardHolder write FCardHolder;
    property Amount: String read FAmount write FAmount;
    property RefNum: String read FRefNum write FRefNum;
    property BatchNum: String read FBatchNum write FBatchNum;
    property TypePayment: String read FTypePayment write FTypePayment;
    property TransactionType: String read FTransactionType write FTransactionType;
    property Signature: String read FSignature write FSignature;       //[2025/12/15 jb] added
  end;

  TInvoiceItem = class
  private
    FDescription: string;
    FQuantity: Double;
    FUnitPrice: Double;
    FAmount: Double;
    FOriginalTCN: string;
    FTypePayment: string;
  public
    property Description: string read FDescription write FDescription;
    property Quantity: Double read FQuantity write FQuantity;
    property UnitPrice: Double read FUnitPrice write FUnitPrice;
    property OriginalTCN: string read FOriginalTCN write FOriginalTCN;
    property TypePayment: string read FTypePayment write FTypePayment;
    property Amount: Double read FAmount write FAmount;
  end;

  TInvoiceData = class
  private
    FInvoiceNumber: string;
    FAmount: Double;
    FTax: Double;
    FTotal: Double;
    FCustomerName: string;
    FCustomerId: string;
    FOriginalTCN: string;
    FTypePayment: string;
    FTipAmount: Double;
    FPyType: string;                   //[2025/12/05 jb] added
    FItems: TArray<TInvoiceItem>;
  public
    constructor Create;
    destructor Destroy; override;
    procedure AddItem(AItem: TInvoiceItem); // AÑADIR ESTA LÍNEA
    property InvoiceNumber: string read FInvoiceNumber write FInvoiceNumber;
    property Amount: Double read FAmount write FAmount;
    property Tax: Double read FTax write FTax;
    property Total: Double read FTotal write FTotal;
    property CustomerName: string read FCustomerName write FCustomerName;
    property CustomerId: string read FCustomerId write FCustomerId;
    property OriginalTCN: string read FOriginalTCN write FOriginalTCN;
    property TypePayment: string read FTypePayment write FTypePayment;
    property TipAmount: Double read FTipAmount write FTipAmount;
    property PyType: string read FPyType write FPyType;               //[2025/12/05 jb] added
    property Items: TArray<TInvoiceItem> read FItems write FItems;
  end;

  TReturnData = class
  private
    FOriginalTransactionId: string;
    FOriginalTCN: string;
    FTypePayment: string;
    FAmount: Double;
    FReason: string;
  public
    property OriginalTransactionId: string read FOriginalTransactionId write FOriginalTransactionId;
    property OriginalTCN: string read FOriginalTCN write FOriginalTCN;
    property TypePayment: string read FTypePayment write FTypePayment;
    property Amount: Double read FAmount write FAmount;
    property Reason: string read FReason write FReason;
  end;

  TVoidData = class
  private
    FOriginalTransactionId: string;
    FOriginalTCN: string;
    FTypePayment: string;
    FAmount: Double;
    FReason: string;
  public
    property OriginalTransactionId: string read FOriginalTransactionId write FOriginalTransactionId;
    property OriginalTCN: string read FOriginalTCN write FOriginalTCN;
    property TypePayment: string read FTypePayment write FTypePayment;
    property Amount: Double read FAmount write FAmount;
    property Reason: string read FReason write FReason;
  end;

  TAuthData = class
  private
    FInvoiceNumber: string;
    FAmount: Double;
    FCustomerName: string;
  public
    property InvoiceNumber: string read FInvoiceNumber write FInvoiceNumber;
    property Amount: Double read FAmount write FAmount;
    property CustomerName: string read FCustomerName write FCustomerName;
  end;

  TPaymentInvoiceData = class
  private
    FTableNumber: string;
    FInvoiceNumber: string;
    FOriginalTCN: string;
    FAmount: Double;
    FTax: Double;
    FTotal: Double;
    FItems: TArray<TInvoiceItem>;
  public
    constructor Create;
    destructor Destroy; override;
    procedure AddItem(AItem: TInvoiceItem); // AÑADIR ESTA LÍNEA
    property TableNumber: string read FTableNumber write FTableNumber;
    property InvoiceNumber: string read FInvoiceNumber write FInvoiceNumber;
    property OriginalTCN: string read FOriginalTCN write FOriginalTCN;
    property Amount: Double read FAmount write FAmount;
    property Tax: Double read FTax write FTax;
    property Total: Double read FTotal write FTotal;
    property Items: TArray<TInvoiceItem> read FItems write FItems;
  end;

  TGetCardData = class
  private
    FPromptMessage: string;
  public
    property PromptMessage: string read FPromptMessage write FPromptMessage;
  end;

  TTipAdjustData = class
  private
    FOriginalTransactionId: string;
    FTipAmount: Double;
    FAmount: Double;
    FOriginalTCN: string;
    FTypePayment: string;
  public
    property OriginalTransactionId: string read FOriginalTransactionId write FOriginalTransactionId;
    property TipAmount: Double read FTipAmount write FTipAmount;
    property Amount: Double read FAmount write FAmount;
    property OriginalTCN: string read FOriginalTCN write FOriginalTCN;
    property TypePayment: string read FTypePayment write FTypePayment;

  end;

  TCaptureData = class
  private
    FOriginalTransactionId: string;
    FAmount: Double;
    FOriginalTCN: string;
    FTypePayment: string;
  public
    property OriginalTransactionId: string read FOriginalTransactionId write FOriginalTransactionId;
    property Amount: Double read FAmount write FAmount;
    property OriginalTCN: string read FOriginalTCN write FOriginalTCN;
    property TypePayment: string read FTypePayment write FTypePayment;

  end;

  TSettleData = class
  private
    FBatchNumber: string;
  public
    property BatchNumber: string read FBatchNumber write FBatchNumber;
  end;

  TAbortTransactionData = class
  private
    FTransactionId: string;
    FReason: string;
  public
    property TransactionId: string read FTransactionId write FTransactionId;
    property Reason: string read FReason write FReason;
  end;

  TGetSignatureData = class
  private
    FTransactionId: string;
  public
    property TransactionId: string read FTransactionId write FTransactionId;
  end;

  TSpinPOSClient = class
  private
    FAPIKey: string;
    FMerchantId: string;
    FTerminalId: string;
    FTimeout: Integer;
    FLastError: string;
    SPINPOS_SALE_URL : string;
    SPINPOS_RETURN_URL : string;
    SPINPOS_VOID_URL : string;
    SPINPOS_AUTH_URL : string;
    SPINPOS_PAYMENT_INVOICE_URL : string;
    SPINPOS_GET_CARD_URL : string;
    SPINPOS_TIP_ADJUST_URL : string;
    SPINPOS_CAPTURE_URL : string;
    SPINPOS_SETTLE_URL : string;
    SPINPOS_ABORT_TRANSACTION_URL : string;
    SPINPOS_GET_SIGNATURE_URL : string;
    SPINPOS_STATUS_URL : string;

    function BuildSaleJSON(InvoiceData: TInvoiceData): TJSONObject;
    function BuildFSAJSON(InvoiceData: TInvoiceData): TJSONObject;  //FSA      //[2025/12/05 jb] added
    function BuildReturnJSON(ReturnData: TReturnData): TJSONObject;
    function BuildVoidJSON(VoidData: TVoidData): TJSONObject;
    //function BuildAuthJSON(AuthData: TAuthData): TJSONObject;
    function BuildAuthJSON(InvoiceData: TInvoiceData): TJSONObject;
    function BuildPaymentInvoiceJSON(PaymentInvoiceData: TPaymentInvoiceData): TJSONObject;
    function BuildGetCardJSON(GetCardData: TGetCardData): TJSONObject;
    function BuildTipAdjustJSON(TipAdjustData: TTipAdjustData): TJSONObject;
    function BuildCaptureJSON(CaptureData: TCaptureData): TJSONObject;
    function BuildSettleJSON(SettleData: TSettleData): TJSONObject;
    function BuildAbortTransactionJSON(AbortData: TAbortTransactionData): TJSONObject;
    function BuildGetSignatureJSON(SignatureData: TGetSignatureData): TJSONObject;
    function BuildStatusJSON(CaptureData: TCaptureData): TJSONObject;
    function ParseResponse(const ResponseJSON: string): TPaymentResponse;
    function SendRequest(const URL: string; RequestJSON: TJSONObject): TPaymentResponse;
  public
    constructor Create(const APIKey, MerchantId, TerminalId, SPINPOS_BASE_URL: string);
    destructor Destroy; override;
    function ProcessSale(InvoiceData: TInvoiceData): TPaymentResponse;
    function ProcessFSA(InvoiceData: TInvoiceData): TPaymentResponse;  //[2025/12/05 jb] added
    function ProcessReturn(ReturnData: TReturnData): TPaymentResponse;
    function ProcessVoid(VoidData: TVoidData): TPaymentResponse;
    //function ProcessAuth(AuthData: TAuthData): TPaymentResponse;
    function ProcessAuth(InvoiceData: TInvoiceData): TPaymentResponse;
    function ProcessPaymentInvoice(PaymentInvoiceData: TPaymentInvoiceData): TPaymentResponse;
    function GetCard(GetCardData: TGetCardData): TPaymentResponse;
    function ProcessTipAdjust(TipAdjustData: TTipAdjustData): TPaymentResponse;
    function ProcessCapture(CaptureData: TCaptureData): TPaymentResponse;
    function ProcessSettle(SettleData: TSettleData): TPaymentResponse;
    function ProcessAbortTransaction(AbortData: TAbortTransactionData): TPaymentResponse;
    function GetSignature(SignatureData: TGetSignatureData): TPaymentResponse;
    function ProcessStatus(CaptureData: TCaptureData): TPaymentResponse;
    property Timeout: Integer read FTimeout write FTimeout;
    property LastError: string read FLastError;
  end;

implementation

constructor TInvoiceData.Create;
begin
  inherited;
  SetLength(FItems, 0);
end;

destructor TInvoiceData.Destroy;
var
  I: Integer;
begin
  for I := Low(FItems) to High(FItems) do
    FItems[I].Free;
  inherited;
end;

constructor TPaymentInvoiceData.Create;
begin
  inherited;
  SetLength(FItems, 0);
end;

destructor TPaymentInvoiceData.Destroy;
var
  I: Integer;
begin
  for I := Low(FItems) to High(FItems) do
    FItems[I].Free;
  inherited;
end;

constructor TSpinPOSClient.Create(const APIKey, MerchantId, TerminalId, SPINPOS_BASE_URL: string);
begin
  inherited Create;
  FAPIKey := APIKey;
  FMerchantId := MerchantId;
  FTerminalId := TerminalId;
  FTimeout := 30000;
  FLastError := '';
  SPINPOS_SALE_URL := SPINPOS_BASE_URL + '/Payment/Sale';
  SPINPOS_RETURN_URL := SPINPOS_BASE_URL + '/Payment/Return';
  SPINPOS_VOID_URL := SPINPOS_BASE_URL + '/Payment/Void';
  SPINPOS_AUTH_URL := SPINPOS_BASE_URL + '/Payment/Auth';
  SPINPOS_PAYMENT_INVOICE_URL := SPINPOS_BASE_URL + '/TableApp/PaymentInvoice';
  SPINPOS_GET_CARD_URL := SPINPOS_BASE_URL + '/Payment/GetCard';
  SPINPOS_TIP_ADJUST_URL := SPINPOS_BASE_URL + '/Payment/TipAdjust';
  SPINPOS_CAPTURE_URL := SPINPOS_BASE_URL + '/Payment/Capture';
  SPINPOS_SETTLE_URL := SPINPOS_BASE_URL + '/Payment/Settle';
  SPINPOS_ABORT_TRANSACTION_URL := SPINPOS_BASE_URL + '/Payment/AbortTransaction';
  SPINPOS_GET_SIGNATURE_URL := SPINPOS_BASE_URL + '/Common/GetSignature';
  SPINPOS_STATUS_URL := SPINPOS_BASE_URL + '/Payment/Status';

end;

destructor TSpinPOSClient.Destroy;
begin
  inherited;
end;

procedure TInvoiceData.AddItem(AItem: TInvoiceItem);
var
  Len: Integer;
begin
  if AItem = nil then
    Exit;

  Len := Length(FItems);
  SetLength(FItems, Len + 1);
  FItems[Len] := AItem;
end;

procedure TPaymentInvoiceData.AddItem(AItem: TInvoiceItem);
var
  Len: Integer;
begin
  if AItem = nil then
    Exit;

  Len := Length(FItems);
  SetLength(FItems, Len + 1);
  FItems[Len] := AItem;
end;

function TSpinPOSClient.BuildSaleJSON(InvoiceData: TInvoiceData): TJSONObject;
var
  JSONObj: TJSONObject;
  ItemsArray: TJSONArray;
  ItemObj: TJSONObject;
  I: Integer;
begin
  JSONObj := TJSONObject.Create;
  try
//    JSONObj.AddPair('merchantId', FMerchantId);
//    JSONObj.AddPair('terminalId', FTerminalId);
    JSONObj.AddPair('Tpn', FMerchantId);
    JSONObj.AddPair('RegisterId', FTerminalId);
    JSONObj.AddPair('Authkey', FAPIKey);
//    JSONObj.AddPair('PaymentType', 'Credit');
//    JSONObj.AddPair('ReferenceId', '111');
    JSONObj.AddPair('PaymentType', InvoiceData.TypePayment);
    JSONObj.AddPair('ReferenceId', InvoiceData.OriginalTCN);  //21874
    JSONObj.AddPair('invoiceNumber', InvoiceData.InvoiceNumber);  //1519362
    if (InvoiceData.TipAmount)>0 then
      JSONObj.AddPair('TipAmount', TJSONNumber.Create(InvoiceData.TipAmount));

    JSONObj.AddPair('amount', TJSONNumber.Create(InvoiceData.Total));
    JSONObj.AddPair('tax', TJSONNumber.Create(InvoiceData.Tax));
    JSONObj.AddPair('customerName', InvoiceData.CustomerName);
    JSONObj.AddPair('customerId', InvoiceData.CustomerId);

    ItemsArray := TJSONArray.Create;
    for I := Low(InvoiceData.Items) to High(InvoiceData.Items) do
    begin
      ItemObj := TJSONObject.Create;
      ItemObj.AddPair('description', InvoiceData.Items[I].Description);
      ItemObj.AddPair('quantity', TJSONNumber.Create(InvoiceData.Items[I].Quantity));
      ItemObj.AddPair('unitPrice', TJSONNumber.Create(InvoiceData.Items[I].UnitPrice));
      ItemObj.AddPair('amount', TJSONNumber.Create(InvoiceData.Items[I].Amount));
      ItemsArray.AddElement(ItemObj);
    end;
    JSONObj.AddPair('items', ItemsArray);

    Result := JSONObj;
  except
    JSONObj.Free;
    raise;
  end;
end;

function TSpinPOSClient.BuildFSAJSON(InvoiceData: TInvoiceData): TJSONObject;       //[2025/12/05 jb] added
var
  JSONObj: TJSONObject;
  ItemsArray: TJSONArray;
  ItemObj: TJSONObject;
  I: Integer;
begin
  JSONObj := TJSONObject.Create;
  try
    JSONObj.AddPair('Tpn', FMerchantId);
    JSONObj.AddPair('RegisterId', FTerminalId);
    JSONObj.AddPair('Authkey', FAPIKey);
    JSONObj.AddPair('PaymentType', InvoiceData.TypePayment);
    JSONObj.AddPair('ReferenceId', InvoiceData.OriginalTCN);  //21874
    JSONObj.AddPair('invoiceNumber', InvoiceData.InvoiceNumber);  //1519362
    if (InvoiceData.TipAmount)>0 then
      JSONObj.AddPair('TipAmount', TJSONNumber.Create(InvoiceData.TipAmount));

    JSONObj.AddPair('amount', TJSONNumber.Create(InvoiceData.Total));
    JSONObj.AddPair('customerName', InvoiceData.CustomerName);
    JSONObj.AddPair('customerId', InvoiceData.CustomerId);
    JSONObj.AddPair('HSA_TotalAmount', TJSONNumber.Create(InvoiceData.Total));
    //JSONObj.AddPair('HSA_RxAmount', TJSONNumber.Create(InvoiceData.Total));

    Result := JSONObj;
  except
    JSONObj.Free;
    raise;
  end;
end;

function TSpinPOSClient.BuildReturnJSON(ReturnData: TReturnData): TJSONObject;
var
  JSONObj: TJSONObject;
begin
  JSONObj := TJSONObject.Create;
  try
    JSONObj.AddPair('Tpn', FMerchantId);
    JSONObj.AddPair('RegisterId', FTerminalId);
    JSONObj.AddPair('Authkey', FAPIKey);
//  JSONObj.AddPair('merchantId', FMerchantId);
//  JSONObj.AddPair('terminalId', FTerminalId);
    JSONObj.AddPair('PaymentType', ReturnData.TypePayment);
    JSONObj.AddPair('ReferenceId', ReturnData.OriginalTCN);
    JSONObj.AddPair('PrintReceipt', 'No');
    JSONObj.AddPair('GetReceipt', 'No');
//  "MerchantNumber": null,
    JSONObj.AddPair('InvoiceNumber', ReturnData.OriginalTransactionId);
    JSONObj.AddPair('CaptureSignature', false);
    JSONObj.AddPair('GetExtendedData', true);
    JSONObj.AddPair('IsReadyForIS', false);

    JSONObj.AddPair('amount', TJSONNumber.Create(ReturnData.Amount));
    if ReturnData.Reason <> '' then
      JSONObj.AddPair('reason', ReturnData.Reason);
    Result := JSONObj;
  except
    JSONObj.Free;
    raise;
  end;
end;

function TSpinPOSClient.BuildVoidJSON(VoidData: TVoidData): TJSONObject;
var
  JSONObj: TJSONObject;
begin
  JSONObj := TJSONObject.Create;
  try
    //JSONObj.AddPair('merchantId', FMerchantId);
    //JSONObj.AddPair('terminalId', FTerminalId);
    //JSONObj.AddPair('originalTransactionId', VoidData.OriginalTransactionId);

    JSONObj.AddPair('Tpn', FMerchantId);
//    JSONObj.AddPair('RegisterId', FTerminalId);
    JSONObj.AddPair('Authkey', FAPIKey);
    JSONObj.AddPair('PaymentType', VoidData.TypePayment);
    JSONObj.AddPair('ReferenceId', VoidData.OriginalTCN);
    JSONObj.AddPair('PrintReceipt', 'No');
    JSONObj.AddPair('GetReceipt', 'No');
//  "MerchantNumber": null,
    JSONObj.AddPair('CaptureSignature', false);
    JSONObj.AddPair('GetExtendedData', true);
    JSONObj.AddPair('Amount', VoidData.Amount);
//    JSONObj.AddPair('CallbackInfo', '{    "Url": ""  }');
//  "SPInProxyTimeout": null,
//  "CustomFields": {}

//    if VoidData.Reason <> '' then
//      JSONObj.AddPair('reason', VoidData.Reason);
    Result := JSONObj;
  except
    JSONObj.Free;
    raise;
  end;
end;

function TSpinPOSClient.BuildAuthJSON(InvoiceData: TInvoiceData): TJSONObject;
var
  JSONObj: TJSONObject;
  ItemsArray: TJSONArray;
  ItemObj: TJSONObject;
  I: Integer;
begin
  JSONObj := TJSONObject.Create;
  try
    {JSONObj.AddPair('merchantId', FMerchantId);
    JSONObj.AddPair('terminalId', FTerminalId);
    JSONObj.AddPair('invoiceNumber', AuthData.InvoiceNumber);
    JSONObj.AddPair('amount', TJSONNumber.Create(AuthData.Amount));
     }
    JSONObj.AddPair('Tpn', FMerchantId);
    JSONObj.AddPair('RegisterId', FTerminalId);
    JSONObj.AddPair('Authkey', FAPIKey);
//    JSONObj.AddPair('PaymentType', 'Credit');
//    JSONObj.AddPair('ReferenceId', '1111');
    JSONObj.AddPair('PaymentType', InvoiceData.TypePayment);
    JSONObj.AddPair('ReferenceId', InvoiceData.OriginalTCN);
    JSONObj.AddPair('invoiceNumber', InvoiceData.InvoiceNumber);
    JSONObj.AddPair('amount', TJSONNumber.Create(InvoiceData.Total));
    JSONObj.AddPair('tax', TJSONNumber.Create(InvoiceData.Tax));
    JSONObj.AddPair('customerName', InvoiceData.CustomerName);
    JSONObj.AddPair('customerId', InvoiceData.CustomerId);

    ItemsArray := TJSONArray.Create;
    for I := Low(InvoiceData.Items) to High(InvoiceData.Items) do
    begin
      ItemObj := TJSONObject.Create;
      ItemObj.AddPair('description', InvoiceData.Items[I].Description);
      ItemObj.AddPair('quantity', TJSONNumber.Create(InvoiceData.Items[I].Quantity));
      ItemObj.AddPair('unitPrice', TJSONNumber.Create(InvoiceData.Items[I].UnitPrice));
      ItemObj.AddPair('amount', TJSONNumber.Create(InvoiceData.Items[I].Amount));
      ItemsArray.AddElement(ItemObj);
    end;
    JSONObj.AddPair('items', ItemsArray);

//    if AuthData.CustomerName <> '' then
//      JSONObj.AddPair('customerName', AuthData.CustomerName);
    Result := JSONObj;
  except
    JSONObj.Free;
    raise;
  end;
end;

function TSpinPOSClient.BuildPaymentInvoiceJSON(PaymentInvoiceData: TPaymentInvoiceData): TJSONObject;
var
  JSONObj: TJSONObject;
  ItemsArray: TJSONArray;
  ItemObj: TJSONObject;
  GoodsArray: TJSONArray;
  ItemObjG: TJSONObject;
  I: Integer;
begin
  JSONObj := TJSONObject.Create;
  try
    //JSONObj.AddPair('merchantId', FMerchantId);
    //JSONObj.AddPair('terminalId', FTerminalId);
    JSONObj.AddPair('Authkey', FAPIKey);
    JSONObj.AddPair('Tpn', FMerchantId);
    //JSONObj.AddPair('RegisterId', FTerminalId);

    JSONObj.AddPair('ReferenceId', PaymentInvoiceData.OriginalTCN);
    {
    JSONObj.AddPair('tableNumber', PaymentInvoiceData.TableNumber);
    JSONObj.AddPair('invoiceNumber', PaymentInvoiceData.InvoiceNumber);
    JSONObj.AddPair('amount', TJSONNumber.Create(PaymentInvoiceData.Amount));
    JSONObj.AddPair('tax', TJSONNumber.Create(PaymentInvoiceData.Tax));
    JSONObj.AddPair('total', TJSONNumber.Create(PaymentInvoiceData.Total));
    JSONObj.AddPair('ReferenceId', PaymentInvoiceData.OriginalTCN);
     }
    ItemsArray := TJSONArray.Create;
    for I := Low(PaymentInvoiceData.Items) to High(PaymentInvoiceData.Items) do
    begin
      ItemObj := TJSONObject.Create;
      {
      ItemObj.AddPair('description', PaymentInvoiceData.Items[I].Description);
      ItemObj.AddPair('quantity', TJSONNumber.Create(PaymentInvoiceData.Items[I].Quantity));
      ItemObj.AddPair('unitPrice', TJSONNumber.Create(PaymentInvoiceData.Items[I].UnitPrice));
      ItemObj.AddPair('amount', TJSONNumber.Create(PaymentInvoiceData.Items[I].Amount));
      }
      ItemObj.AddPair('Id', PaymentInvoiceData.InvoiceNumber);
      ItemObj.AddPair('Name', PaymentInvoiceData.Items[I].Description);
      ItemObj.AddPair('TotalAmount', TJSONNumber.Create(PaymentInvoiceData.Items[I].Amount));
      ItemObj.AddPair('PaidAmount', TJSONNumber.Create(PaymentInvoiceData.Items[I].UnitPrice));

      GoodsArray := TJSONArray.Create;

      ItemObjG := TJSONObject.Create;
      ItemObjG.AddPair('Name', 'item #1');
      ItemObjG.AddPair('Amount', TJSONNumber.Create(5.00));
      ItemObjG.AddPair('Quantity', TJSONNumber.Create(1));
      GoodsArray.AddElement(ItemObjG);
      ItemObj.AddPair('Goods', GoodsArray);

      ItemsArray.AddElement(ItemObj);
    end;
    JSONObj.AddPair('InvoiceData', ItemsArray);

    Result := JSONObj;
  except
    JSONObj.Free;
    raise;
  end;
end;

function TSpinPOSClient.BuildGetCardJSON(GetCardData: TGetCardData): TJSONObject;
var
  JSONObj: TJSONObject;
begin
  JSONObj := TJSONObject.Create;
  try
    JSONObj.AddPair('Tpn', FMerchantId);
    JSONObj.AddPair('RegisterId', FTerminalId);
    JSONObj.AddPair('Authkey', FAPIKey);
//    JSONObj.AddPair('SPInProxyTimeout', null );
//    JSONObj.AddPair('CustomFields', '{"CustomFee": 1.00}');
    if GetCardData.PromptMessage <> '' then
      JSONObj.AddPair('Prompt', GetCardData.PromptMessage);
    Result := JSONObj;
  except
    JSONObj.Free;
    raise;
  end;
end;

function TSpinPOSClient.ParseResponse(const ResponseJSON: string): TPaymentResponse;
var
  JSONValue: TJSONValue;
  JSONObj: TJSONObject;
  Fsucess: string;
begin
  Result := TPaymentResponse.Create;
  Result.FSuccess := False;
  Result.RawJSON := ResponseJSON;

  JSONValue := nil;
  try
    JSONValue := TJSONObject.ParseJSONValue(ResponseJSON);
    if Assigned(JSONValue) and (JSONValue is TJSONObject) then
    begin
      JSONObj := JSONValue as TJSONObject;
      if JSONObj.TryGetValue<string>('GeneralResponse.ResultCode', Fsucess) then
      begin
        JSONObj.TryGetValue<string>('GeneralResponse.Message', Result.FMessage);
        JSONObj.TryGetValue<string>('GeneralResponse.DetailedMessage', Result.FMessageDet);
        JSONObj.TryGetValue<string>('TransactionNumber', Result.FTransactionId);
        JSONObj.TryGetValue<string>('AuthCode', Result.FApprovalCode);
        JSONObj.TryGetValue<string>('GeneralResponse.HostResponseCode', Result.FResponseCode);
        JSONObj.TryGetValue<string>('CardData.Last4', Result.FCardNumber);
        JSONObj.TryGetValue<string>('CardData.CardType', Result.FCardType);
        JSONObj.TryGetValue<string>('CardData.Name', Result.FCardHolder);
        JSONObj.TryGetValue<String>('Amounts.TotalAmount', Result.FAmount);
        JSONObj.TryGetValue<String>('ReferenceId', Result.FRefNum);
        JSONObj.TryGetValue<String>('BatchNumber', Result.FBatchNum);
        JSONObj.TryGetValue<String>('PaymentType', Result.FTypePayment);
        JSONObj.TryGetValue<String>('TransactionType', Result.FTransactionType);
        JSONObj.TryGetValue<String>('Signature', Result.FSignature);          //[2025/12/15 jb] added
        if (Fsucess='0') then
          Result.FSuccess := true;
      end
      else
      begin
        Result.FSuccess := False;
        JSONObj.TryGetValue<string>('error', Result.FMessage);
        if Result.FMessage = '' then
          Result.FMessage := 'Unknown error';
      end;
    end
    else
    begin
      Result.FSuccess := False;
      Result.FMessage := 'Invalid JSON response';
    end;
  except
    on E: Exception do
    begin
      Result.FSuccess := False;
      Result.FMessage := 'JSON Parse Error: ' + E.Message;
      FLastError := Result.FMessage;
    end;
  end;

  if Assigned(JSONValue) then
    JSONValue.Free;
end;

function TSpinPOSClient.SendRequest(const URL: string; RequestJSON: TJSONObject): TPaymentResponse;
var
  HTTPClient: THTTPClient;
  RequestStream: TStringStream;
  Response: IHTTPResponse;
  ResponseStr: string;
  JSONString: string;
begin
  Result := nil;
  FLastError := '';

  HTTPClient := THTTPClient.Create;
  try
    HTTPClient.ConnectionTimeout := FTimeout;
    HTTPClient.ResponseTimeout := FTimeout;

    HTTPClient.CustomHeaders['Content-Type'] := 'application/json';
    HTTPClient.CustomHeaders['Authorization'] := 'Bearer ' + FAPIKey;

    try
      JSONString := RequestJSON.ToJSON;
      RequestStream := TStringStream.Create('', TEncoding.UTF8);
      try
        RequestStream.WriteString(JSONString);
        RequestStream.Position := 0;

        Response := HTTPClient.Post(URL, RequestStream);
        if Response = nil then
        begin
              Result := TPaymentResponse.Create;
              Result.Success := False;
              Result.Message := 'PinPad do not response, Error ';
              Result.RawJSON := ResponseStr;
              FLastError := Result.Message;
        end
        else
        begin
            ResponseStr := Response.ContentAsString;

            if (Response.StatusCode >= 200) and (Response.StatusCode < 300) then
            begin
              Result := ParseResponse(ResponseStr);
              if not Result.Success and (FLastError = '') then
                FLastError := Result.Message;
            end
            else
            begin
              Result := TPaymentResponse.Create;
              Result.Success := False;
              Result.Message := Format('HTTP Error %d: %s', [Response.StatusCode, Response.StatusText]);
              Result.RawJSON := ResponseStr;
              FLastError := Result.Message;
            end;
        end;
      finally
        RequestStream.Free;
      end;
    finally
      RequestJSON.Free;
    end;
  except
    on E: Exception do
    begin
      if Result = nil then
        Result := TPaymentResponse.Create;
      Result.Success := False;
      Result.Message := 'Request Error: ' + E.Message;
      FLastError := Result.Message;
    end;
  end;

  HTTPClient.Free;
end;

function TSpinPOSClient.ProcessSale(InvoiceData: TInvoiceData): TPaymentResponse;
var
  RequestJSON: TJSONObject;
begin
  FLastError := '';

  if not Assigned(InvoiceData) then
  begin
    Result := TPaymentResponse.Create;
    Result.Success := False;
    Result.Message := 'Invoice data is required';
    FLastError := Result.Message;
    Exit;
  end;

  if Length(InvoiceData.Items) = 0 then
  begin
    Result := TPaymentResponse.Create;
    Result.Success := False;
    Result.Message := 'At least one invoice item is required';
    FLastError := Result.Message;
    Exit;
  end;

  RequestJSON := BuildSaleJSON(InvoiceData);
  Result := SendRequest(SPINPOS_SALE_URL, RequestJSON);
end;

function TSpinPOSClient.ProcessFSA(InvoiceData: TInvoiceData): TPaymentResponse;        //[2025/12/05 jb] added
var
  RequestJSON: TJSONObject;
begin
  FLastError := '';

  if not Assigned(InvoiceData) then
  begin
    Result := TPaymentResponse.Create;
    Result.Success := False;
    Result.Message := 'Invoice data is required';
    FLastError := Result.Message;
    Exit;
  end;

  RequestJSON := BuildFSAJSON(InvoiceData);
  Result := SendRequest(SPINPOS_SALE_URL, RequestJSON);
end;

function TSpinPOSClient.ProcessReturn(ReturnData: TReturnData): TPaymentResponse;
var
  RequestJSON: TJSONObject;
begin
  FLastError := '';

  if not Assigned(ReturnData) then
  begin
    Result := TPaymentResponse.Create;
    Result.Success := False;
    Result.Message := 'Return data is required';
    FLastError := Result.Message;
    Exit;
  end;

  if ReturnData.OriginalTransactionId = '' then
  begin
    Result := TPaymentResponse.Create;
    Result.Success := False;
    Result.Message := 'Invoice Number is required';
    FLastError := Result.Message;
    Exit;
  end;

  RequestJSON := BuildReturnJSON(ReturnData);
  Result := SendRequest(SPINPOS_RETURN_URL, RequestJSON);
end;

function TSpinPOSClient.ProcessVoid(VoidData: TVoidData): TPaymentResponse;
var
  RequestJSON: TJSONObject;
begin
  FLastError := '';

  if not Assigned(VoidData) then
  begin
    Result := TPaymentResponse.Create;
    Result.Success := False;
    Result.Message := 'Void data is required';
    FLastError := Result.Message;
    Exit;
  end;

  if VoidData.OriginalTransactionId = '' then
  begin
    Result := TPaymentResponse.Create;
    Result.Success := False;
    Result.Message := 'Invoice Number is required';
    FLastError := Result.Message;
    Exit;
  end;

  RequestJSON := BuildVoidJSON(VoidData);
  Result := SendRequest(SPINPOS_VOID_URL, RequestJSON);
end;

 //function TSpinPOSClient.ProcessAuth(AuthData: TAuthData): TPaymentResponse;
function TSpinPOSClient.ProcessAuth(InvoiceData: TInvoiceData): TPaymentResponse;
var
  RequestJSON: TJSONObject;
begin
  FLastError := '';
  {
  if not Assigned(AuthData) then
  begin
    Result := TPaymentResponse.Create;
    Result.Success := False;
    Result.Message := 'Auth data is required';
    FLastError := Result.Message;
    Exit;
  end;

  if AuthData.InvoiceNumber = '' then
  begin
    Result := TPaymentResponse.Create;
    Result.Success := False;
    Result.Message := 'Invoice number is required';
    FLastError := Result.Message;
    Exit;
  end;
  RequestJSON := BuildAuthJSON(AuthData);
  Result := SendRequest(SPINPOS_AUTH_URL, RequestJSON);
  }
  if not Assigned(InvoiceData) then
  begin
    Result := TPaymentResponse.Create;
    Result.Success := False;
    Result.Message := 'Invoice data is required';
    FLastError := Result.Message;
    Exit;
  end;

  if Length(InvoiceData.Items) = 0 then
  begin
    Result := TPaymentResponse.Create;
    Result.Success := False;
    Result.Message := 'At least one invoice item is required';
    FLastError := Result.Message;
    Exit;
  end;

  RequestJSON := BuildAuthJSON(InvoiceData);  //AuthData);
  Result := SendRequest(SPINPOS_AUTH_URL, RequestJSON);
end;
function TSpinPOSClient.ProcessPaymentInvoice(PaymentInvoiceData: TPaymentInvoiceData): TPaymentResponse;
var
  RequestJSON: TJSONObject;
begin
  FLastError := '';

  if not Assigned(PaymentInvoiceData) then
  begin
    Result := TPaymentResponse.Create;
    Result.Success := False;
    Result.Message := 'Payment invoice data is required';
    FLastError := Result.Message;
    Exit;
  end;

  if Length(PaymentInvoiceData.Items) = 0 then
  begin
    Result := TPaymentResponse.Create;
    Result.Success := False;
    Result.Message := 'At least one invoice item is required';
    FLastError := Result.Message;
    Exit;
  end;

  RequestJSON := BuildPaymentInvoiceJSON(PaymentInvoiceData);
  Result := SendRequest(SPINPOS_PAYMENT_INVOICE_URL, RequestJSON);
end;

function TSpinPOSClient.GetCard(GetCardData: TGetCardData): TPaymentResponse;
var
  RequestJSON: TJSONObject;
begin
  FLastError := '';

  if not Assigned(GetCardData) then
  begin
    Result := TPaymentResponse.Create;
    Result.Success := False;
    Result.Message := 'Get card data is required';
    FLastError := Result.Message;
    Exit;
  end;

  RequestJSON := BuildGetCardJSON(GetCardData);
  Result := SendRequest(SPINPOS_GET_CARD_URL, RequestJSON);
end;

function TSpinPOSClient.BuildTipAdjustJSON(TipAdjustData: TTipAdjustData): TJSONObject;
begin
  Result := TJSONObject.Create;
    Result.AddPair('Authkey', FAPIKey);
    Result.AddPair('Tpn', FMerchantId);
    Result.AddPair('RegisterId', FTerminalId);

    Result.AddPair('InvoiceNumber', TipAdjustData.OriginalTransactionId);
    Result.AddPair('TipAmount', TJSONNumber.Create(TipAdjustData.TipAmount));
    Result.AddPair('Amount', TJSONNumber.Create(TipAdjustData.Amount));
    Result.AddPair('PaymentType', TipAdjustData.TypePayment);
    Result.AddPair('ReferenceId', TipAdjustData.OriginalTCN);

end;

function TSpinPOSClient.BuildCaptureJSON(CaptureData: TCaptureData): TJSONObject;
begin
  Result := TJSONObject.Create;
    Result.AddPair('Authkey', FAPIKey);
    Result.AddPair('Tpn', FMerchantId);
    Result.AddPair('RegisterId', FTerminalId);

  Result.AddPair('InvoiceNumber', CaptureData.OriginalTransactionId);
  Result.AddPair('Amount', TJSONNumber.Create(CaptureData.Amount));
    Result.AddPair('PaymentType', CaptureData.TypePayment);
    Result.AddPair('ReferenceId', CaptureData.OriginalTCN);

end;

function TSpinPOSClient.BuildStatusJSON(CaptureData: TCaptureData): TJSONObject;
begin
  Result := TJSONObject.Create;
    Result.AddPair('Authkey', FAPIKey);
    Result.AddPair('Tpn', FMerchantId);
    Result.AddPair('RegisterId', FTerminalId);

    Result.AddPair('InvoiceNumber', CaptureData.OriginalTransactionId);
    Result.AddPair('PaymentType', CaptureData.TypePayment);
    Result.AddPair('ReferenceId', CaptureData.OriginalTCN);

end;

function TSpinPOSClient.BuildSettleJSON(SettleData: TSettleData): TJSONObject;
begin
  Result := TJSONObject.Create;
    Result.AddPair('Authkey', FAPIKey);
    Result.AddPair('Tpn', FMerchantId);
    Result.AddPair('RegisterId', FTerminalId);

  Result.AddPair('BatchNumber', SettleData.BatchNumber);
end;

function TSpinPOSClient.BuildAbortTransactionJSON(AbortData: TAbortTransactionData): TJSONObject;
begin
  Result := TJSONObject.Create;
    Result.AddPair('Authkey', FAPIKey);
    Result.AddPair('Tpn', FMerchantId);
    Result.AddPair('RegisterId', FTerminalId);
  Result.AddPair('TransactionId', AbortData.TransactionId);
  Result.AddPair('Reason', AbortData.Reason);
end;

function TSpinPOSClient.BuildGetSignatureJSON(SignatureData: TGetSignatureData): TJSONObject;
begin
  Result := TJSONObject.Create;
{  Result.AddPair('ApiKey', FAPIKey);
  Result.AddPair('MerchantId', FMerchantId);
  Result.AddPair('TerminalId', FTerminalId);
  Result.AddPair('TransactionId', SignatureData.TransactionId);
 }
    Result.AddPair('Authkey', FAPIKey);
    Result.AddPair('Tpn', FMerchantId);
    Result.AddPair('RegisterId', FTerminalId);

end;

function TSpinPOSClient.ProcessTipAdjust(TipAdjustData: TTipAdjustData): TPaymentResponse;
var
  RequestJSON: TJSONObject;
begin
  FLastError := '';

  if not Assigned(TipAdjustData) then
  begin
    Result := TPaymentResponse.Create;
    Result.Success := False;
    Result.Message := 'Tip adjust data is required';
    FLastError := Result.Message;
    Exit;
  end;

  if TipAdjustData.OriginalTransactionId = '' then
  begin
    Result := TPaymentResponse.Create;
    Result.Success := False;
    Result.Message := 'Invoice Number is required';
    FLastError := Result.Message;
    Exit;
  end;

  RequestJSON := BuildTipAdjustJSON(TipAdjustData);
  Result := SendRequest(SPINPOS_TIP_ADJUST_URL, RequestJSON);
end;

function TSpinPOSClient.ProcessCapture(CaptureData: TCaptureData): TPaymentResponse;
var
  RequestJSON: TJSONObject;
begin
  FLastError := '';

  if not Assigned(CaptureData) then
  begin
    Result := TPaymentResponse.Create;
    Result.Success := False;
    Result.Message := 'Capture data is required';
    FLastError := Result.Message;
    Exit;
  end;

  if CaptureData.OriginalTransactionId = '' then
  begin
    Result := TPaymentResponse.Create;
    Result.Success := False;
    Result.Message := 'Invoice Number is required';
    FLastError := Result.Message;
    Exit;
  end;

  RequestJSON := BuildCaptureJSON(CaptureData);
  Result := SendRequest(SPINPOS_CAPTURE_URL, RequestJSON);
end;

function TSpinPOSClient.ProcessStatus(CaptureData: TCaptureData): TPaymentResponse;
var
  RequestJSON: TJSONObject;
begin
  FLastError := '';

  if not Assigned(CaptureData) then
  begin
    Result := TPaymentResponse.Create;
    Result.Success := False;
    Result.Message := 'Status data is required';
    FLastError := Result.Message;
    Exit;
  end;

  if CaptureData.OriginalTransactionId = '' then
  begin
    Result := TPaymentResponse.Create;
    Result.Success := False;
    Result.Message := 'Invoice Number is required';
    FLastError := Result.Message;
    Exit;
  end;

  RequestJSON := BuildStatusJSON(CaptureData);
  Result := SendRequest(SPINPOS_STATUS_URL, RequestJSON);
end;

function TSpinPOSClient.ProcessSettle(SettleData: TSettleData): TPaymentResponse;
var
  RequestJSON: TJSONObject;
begin
  FLastError := '';

  if not Assigned(SettleData) then
  begin
    Result := TPaymentResponse.Create;
    Result.Success := False;
    Result.Message := 'Settle data is required';
    FLastError := Result.Message;
    Exit;
  end;

  RequestJSON := BuildSettleJSON(SettleData);
  Result := SendRequest(SPINPOS_SETTLE_URL, RequestJSON);
end;

function TSpinPOSClient.ProcessAbortTransaction(AbortData: TAbortTransactionData): TPaymentResponse;
var
  RequestJSON: TJSONObject;
begin
  FLastError := '';

  if not Assigned(AbortData) then
  begin
    Result := TPaymentResponse.Create;
    Result.Success := False;
    Result.Message := 'Abort transaction data is required';
    FLastError := Result.Message;
    Exit;
  end;

  if AbortData.TransactionId = '' then
  begin
    Result := TPaymentResponse.Create;
    Result.Success := False;
    Result.Message := 'Transaction ID is required';
    FLastError := Result.Message;
    Exit;
  end;

  RequestJSON := BuildAbortTransactionJSON(AbortData);
  Result := SendRequest(SPINPOS_ABORT_TRANSACTION_URL, RequestJSON);
end;

function TSpinPOSClient.GetSignature(SignatureData: TGetSignatureData): TPaymentResponse;
var
  RequestJSON: TJSONObject;
begin
  FLastError := '';

  if not Assigned(SignatureData) then
  begin
    Result := TPaymentResponse.Create;
    Result.Success := False;
    Result.Message := 'Get signature data is required';
    FLastError := Result.Message;
    Exit;
  end;
{
  if SignatureData.TransactionId = '' then
  begin
    Result := TPaymentResponse.Create;
    Result.Success := False;
    Result.Message := 'Transaction ID is required';
    FLastError := Result.Message;
    Exit;
  end;
}
  RequestJSON := BuildGetSignatureJSON(SignatureData);
  Result := SendRequest(SPINPOS_GET_SIGNATURE_URL, RequestJSON);
end;

end.
