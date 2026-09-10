unit UntSpinPOSForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, SpinPOSClient,Data.FmtBcd;

type
  TfrmSpinPOS = class(TForm)
    PageControl1: TPageControl;
    tabSale: TTabSheet;
    tabReturn: TTabSheet;
    tabVoid: TTabSheet;
    tabAuth: TTabSheet;
    tabPaymentInvoice: TTabSheet;
    tabGetCard: TTabSheet;
    tabTipAdjust: TTabSheet;
    tabCapture: TTabSheet;
    tabSettle: TTabSheet;
    tabAbortTransaction: TTabSheet;
    tabGetSignature: TTabSheet;
    grpResponse: TGroupBox;
    memoResponse: TMemo;
    pnlBottom: TPanel;
    btnProcessOperation: TButton;
    edtInvoiceNumber: TEdit;
    lblInvoiceNumber: TLabel;
    edtCustomerName: TEdit;
    lblCustomerName: TLabel;
    edtCustomerId: TEdit;
    lblCustomerId: TLabel;
    edtAmount: TEdit;
    lblAmount: TLabel;
    edtTax: TEdit;
    lblTax: TLabel;
    edtTotal: TEdit;
    lblTotal: TLabel;
    btnCalculateTotal: TButton;
    edtReturnTxnId: TEdit;
    lblReturnTxnId: TLabel;
    edtReturnAmount: TEdit;
    lblReturnAmount: TLabel;
    edtReturnReason: TEdit;
    lblReturnReason: TLabel;
    edtCaptureTxnId: TEdit;
    lblCaptureTxnId: TLabel;
    edtCaptureAmount: TEdit;
    lblCaptureAmount: TLabel;
    edtAbortTxnId: TEdit;
    lblAbortTxnId: TLabel;
    edtAbortReason: TEdit;
    lblAbortReason: TLabel;
    Label5: TLabel;
    cbTypePaymentSale: TComboBox;
    Label1: TLabel;
    edtReturnTCN: TEdit;
    cbTypePayment: TComboBox;
    Label2: TLabel;
    Label6: TLabel;
    edtSaleTCN: TEdit;
    Label7: TLabel;
    edtSignatureTxnId: TEdit;
    Label12: TLabel;
    edtCaptureTCN: TEdit;
    Label13: TLabel;
    cbTypePaymentCapture: TComboBox;
    TabSheet1: TTabSheet;
    Label15: TLabel;
    edtStatusTxnId: TEdit;
    Label16: TLabel;
    edtStatusTCN: TEdit;
    Label17: TLabel;
    cbTypePaymentStatus: TComboBox;
    btnClose: TButton;
    Memo1: TMemo;
    procedure btnCalculateTotalClick(Sender: TObject);
    procedure btnProcessOperationClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPICalculateClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    function InsertFinishedTransaction(noTrans: Integer; response: string;fAmount: Float32; iRefNum, iBatchNum: Integer; sTypePayment,sTransactionType,sCardnum: string): Boolean;
    function nextRefNo(option: String): Integer;
    procedure btnClearClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    procedure CalculateSaleTotal;
    procedure CalculatePITotal;
   //procedure ClearFields;
    function ValidateCredentials: Boolean;
    function ValidateSaleInputs: Boolean;
    function ValidateReturnInputs: Boolean;
    function ValidateVoidInputs: Boolean;
    function ValidateAuthInputs: Boolean;
    function ValidatePaymentInvoiceInputs: Boolean;
    function ValidateTipAdjustInputs: Boolean;
    function ValidateCaptureInputs: Boolean;
    function ValidateSettleInputs: Boolean;
    function ValidateAbortTransactionInputs: Boolean;
    function ValidateGetSignatureInputs: Boolean;
    function ValidateStatusInputs: Boolean;
    procedure ProcessSale;
    procedure ProcessReturn;
    procedure ProcessVoid;
    procedure ProcessAuth;
    procedure ProcessFSA;               //[2025/12/05 jb] added
    //procedure ProcessPaymentInvoice;
    procedure ProcessGetCard;
    procedure ProcessTipAdjust;
    procedure ProcessCapture;
    procedure ProcessSettle;
    procedure ProcessAbortTransaction;
    procedure ProcessGetSignature;
    procedure ProcessStatus;
  public
    TypePayment: string;
    ProcessNum: Integer;
    dAmount: Double;
    dTipAmount: Double;
    sRefNum: string;
    sBatchNumber: string;
    sSignature: string;

  end;

var
  frmMainSPOS: TfrmSpinPOS;

implementation

{$R *.dfm}

uses //untMain,
  UntDMMidas,UntCommonPOS, UntCheckOut;



procedure TfrmSpinPOS.FormActivate(Sender: TObject);
begin
    case ProcessNum of
    1: ProcessSale;
    2: ProcessReturn;
    3: ProcessVoid;
    4: ProcessFSA;           //[2025/12/05 jb] added
    {
    4: ProcessAuth;
    //5: ProcessPaymentInvoice;
    //6: ProcessGetCard;
    }
    7: ProcessTipAdjust;
    9: ProcessSettle;
    {
    //8: ProcessCapture;
    10: ProcessAbortTransaction;
    }
    11: ProcessGetSignature;  //[2025/12/15 jb] added
    12: ProcessStatus;
    else
     Self.Close;
  end;
end;

procedure TfrmSpinPOS.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  //edtAPIKey.Text := 'b3HukTiqWB';
  //edtMerchantId.Text := '220925656445';
  //edtTerminalId.Text := '3338902';
  CommonPOS.SPINPOS_BASE_URL := DMMidas.CDSSetupSpinPosURL.Value ;
  //edtInvoiceNumber.Text := 'INV-' + FormatDateTime('yyyymmddhhnnss', Now);
  //edtAmount.Text := '1.00';
  //edtTax.Text := '0.16';
  //CalculateSaleTotal;


end;

procedure TfrmSpinPOS.FormDestroy(Sender: TObject);
begin
    if CommonPOS.CDApproved = True then
        if Assigned(FrmCheckOut) then
          FrmCheckOut.Close
    else
      begin
        if ProcessNum=1 then
          FrmCheckOut.Edit4.Text := '0';
      end;
end;

procedure TfrmSpinPOS.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Self.Close;
end;

procedure TfrmSpinPOS.PageControl1Change(Sender: TObject);
begin  {
  case PageControl1.ActivePageIndex of
    0: btnProcessOperation.Caption := 'Process Sale';
    1: btnProcessOperation.Caption := 'Process Return';
    2: btnProcessOperation.Caption := 'Process Void';
    3: btnProcessOperation.Caption := 'Process Auth';
    4: btnProcessOperation.Caption := 'Process Payment Invoice';
    5: btnProcessOperation.Caption := 'Get Card';
    6: btnProcessOperation.Caption := 'Process Tip Adjust';
    7: btnProcessOperation.Caption := 'Process Capture';
    8: btnProcessOperation.Caption := 'Process Settle';
    9: btnProcessOperation.Caption := 'Abort Transaction';
    10: btnProcessOperation.Caption := 'Get Signature';
  end;
  }
end;

procedure TfrmSpinPOS.CalculateSaleTotal;
var
  Amount, Tax, Total: Double;
begin
  try
    Amount := StrToFloatDef(edtAmount.Text, 0);
    Tax := StrToFloatDef(edtTax.Text, 0);
    Total := Amount + Tax;
    edtTotal.Text := FormatFloat('0.00', Total);
  except
    on E: Exception do
      ShowMessage('Error calculating total: ' + E.Message);
  end;
end;

procedure TfrmSpinPOS.CalculatePITotal;
var
  Amount, Tax, Total: Double;
begin

end;

procedure TfrmSpinPOS.btnCalculateTotalClick(Sender: TObject);
begin
  CalculateSaleTotal;
end;

procedure TfrmSpinPOS.btnPICalculateClick(Sender: TObject);
begin
  CalculatePITotal;
end;

function TfrmSpinPOS.ValidateCredentials: Boolean;
begin
  Result := True;

  if Trim(CommonPOS.SpinPOSApiKey) = '' then
  begin
    ShowMessage('Please enter API Key');
    Result := False;
    Exit;
  end;

  if Trim(CommonPOS.SpinPOSTPN) = '' then
  begin
    ShowMessage('Please enter TPN');
    Result := False;
    Exit;
  end;

  if Trim(CommonPOS.SpinPOSReg) = '' then
  begin
    ShowMessage('Please enter Terminal ID');
    Result := False;
    Exit;
  end;
end;

function TfrmSpinPOS.ValidateSaleInputs: Boolean;
begin
  Result := True;

  if Trim(edtInvoiceNumber.Text) = '' then
  begin
    ShowMessage('Please enter Invoice Number');
    edtInvoiceNumber.SetFocus;
    Result := False;
    Exit;
  end;

  if StrToFloatDef(edtAmount.Text, 0) <= 0 then
  begin
    ShowMessage('Amount must be greater than zero');
    edtAmount.SetFocus;
    Result := False;
    Exit;
  end;

  if StrToFloatDef(edtTotal.Text, 0) <= 0 then
  begin
    ShowMessage('Total must be greater than zero');
    edtTotal.SetFocus;
    Result := False;
    Exit;
  end;
end;

function TfrmSpinPOS.InsertFinishedTransaction(noTrans: Integer; response: string;fAmount: Float32; iRefNum, iBatchNum: Integer; sTypePayment,sTransactionType,sCardnum: string): Boolean;
begin
  result := true;
  Try
    With DMMidas.USP_POS_INSERT_SPINPOS_TRANS do
    begin
      ParamByName('@TRANS_NO').Value := NoTrans;
      ParamByName('@RESPONSE').Value := response;
      ParamByName('@AMOUNT').Value := fAmount;
      ParamByName('@REFERENCENUM').Value := iRefNum;
      ParamByName('@BatchNum').Value := iBatchNum;
      ParamByName('@PaymentType').Value := sTypePayment;
      ParamByName('@TransactionType').Value := sTransactionType;
      ParamByName('@CardNum').Value := sCardnum;
      ExecProc;
      CommonPOS.SpinPOSID := ParamByName('@ID').Value;
    end;
  Except
    Result := false;
  End;
end;

function TfrmSpinPOS.ValidateReturnInputs: Boolean;
begin
  Result := True;

  if Trim(edtReturnTxnId.Text) = '' then
  begin
    ShowMessage('Please enter Invoice Number');
    edtReturnTxnId.SetFocus;
    Result := False;
    Exit;
  end;

  if Trim(edtReturnTCN.Text) = '' then
  begin
    ShowMessage('Please enter Reference Number');
    edtReturnTCN.SetFocus;
    Result := False;
    Exit;
  end;

  if StrToFloatDef(edtReturnAmount.Text, 0) <= 0 then
  begin
    ShowMessage('Return Amount must be greater than zero');
    edtReturnAmount.SetFocus;
    Result := False;
    Exit;
  end;

end;

function TfrmSpinPOS.ValidateVoidInputs: Boolean;
begin
  Result := True;
{
  if Trim(edtVoidTxnId.Text) = '' then
  begin
    ShowMessage('Please enter Invoice Number');
    edtVoidTxnId.SetFocus;
    Result := False;
    Exit;
  end;

  if Trim(edtVoidTCN.Text) = '' then
  begin
    ShowMessage('Please enter Reference');
    edtVoidTCN.SetFocus;
    Result := False;
    Exit;
  end;
  }
end;

function TfrmSpinPOS.ValidateAuthInputs: Boolean;
begin
  Result := True;
  {
  if Trim(edtAuthInvoice.Text) = '' then
  begin
    ShowMessage('Please enter Invoice Number');
    edtAuthInvoice.SetFocus;
    Result := False;
    Exit;
  end;

  if StrToFloatDef(edtAuthAmount.Text, 0) <= 0 then
  begin
    ShowMessage('Amount must be greater than zero');
    edtAuthAmount.SetFocus;
    Result := False;
    Exit;
  end;
  }
end;

function TfrmSpinPOS.ValidatePaymentInvoiceInputs: Boolean;
begin
  Result := True;
 {
  if Trim(edtPaymentInvoTCN.Text) = '' then
  begin
    ShowMessage('Please enter Reference Number');
    edtPaymentInvoTCN.SetFocus;
    Result := False;
    Exit;
  end;

  if Trim(edtPIInvoice.Text) = '' then
  begin
    ShowMessage('Please enter Invoice Number');
    edtPIInvoice.SetFocus;
    Result := False;
    Exit;
  end;

  if StrToFloatDef(edtPIAmount.Text, 0) <= 0 then
  begin
    ShowMessage('Amount must be greater than zero');
    edtPIAmount.SetFocus;
    Result := False;
    Exit;
  end;

  if StrToFloatDef(edtPITotal.Text, 0) <= 0 then
  begin
    ShowMessage('Total must be greater than zero');
    edtPITotal.SetFocus;
    Result := False;
    Exit;
  end;
  }
end;

function TfrmSpinPOS.ValidateTipAdjustInputs: Boolean;
begin
  Result := True;
  {
  if Trim(edtTipAdjustTxnId.Text) = '' then
  begin
    ShowMessage('Please enter Invoice Num');
    edtTipAdjustTxnId.SetFocus;
    Result := False;
    Exit;
  end;

  if StrToFloatDef(edtTipAmount.Text, 0) <= 0 then
  begin
    ShowMessage('Tip Amount must be greater than zero');
    edtTipAmount.SetFocus;
    Result := False;
    Exit;
  end;

  if Trim(edtTAdjustTCN.Text) = '' then
  begin
    ShowMessage('Please entre Reference Num');
    edtTAdjustTCN.SetFocus;
    Result := False;
    Exit;
  end;

  if Trim(cbTypePaymentTAdjust.Text) = '' then
  begin
    ShowMessage('Please entre Payment Type');
    cbTypePaymentTAdjust.SetFocus;
    Result := False;
    Exit;
  end;
  }
end;

function TfrmSpinPOS.ValidateCaptureInputs: Boolean;
begin
  Result := True;

  if Trim(edtCaptureTxnId.Text) = '' then
  begin
    ShowMessage('Please enter Original Transaction ID');
    edtCaptureTxnId.SetFocus;
    Result := False;
    Exit;
  end;

  if StrToFloatDef(edtCaptureAmount.Text, 0) <= 0 then
  begin
    ShowMessage('Amount must be greater than zero');
    edtCaptureAmount.SetFocus;
    Result := False;
    Exit;
  end;

  if Trim(edtCaptureTCN.Text) = '' then
  begin
    ShowMessage('Please entre Reference Num');
    edtCaptureTCN.SetFocus;
    Result := False;
    Exit;
  end;

  if Trim(cbTypePaymentCapture.Text) = '' then
  begin
    ShowMessage('Please entre Payment Type');
    cbTypePaymentCapture.SetFocus;
    Result := False;
    Exit;
  end;
end;

function TfrmSpinPOS.ValidateStatusInputs: Boolean;
begin
  Result := True;

  if Trim(edtStatusTxnId.Text) = '' then
  begin
    ShowMessage('Please enter Original Transaction ID');
    edtStatusTxnId.SetFocus;
    Result := False;
    Exit;
  end;

  if Trim(edtStatusTCN.Text) = '' then
  begin
    ShowMessage('Please entre Reference Num');
    edtStatusTCN.SetFocus;
    Result := False;
    Exit;
  end;

  if Trim(cbTypePaymentStatus.Text) = '' then
  begin
    ShowMessage('Please entre Payment Type');
    cbTypePaymentStatus.SetFocus;
    Result := False;
    Exit;
  end;
end;

function TfrmSpinPOS.ValidateSettleInputs: Boolean;
begin
  Result := True;
end;

function TfrmSpinPOS.ValidateAbortTransactionInputs: Boolean;
begin
  Result := True;

  if Trim(edtAbortTxnId.Text) = '' then
  begin
    ShowMessage('Please enter Transaction ID');
    edtAbortTxnId.SetFocus;
    Result := False;
    Exit;
  end;
end;

function TfrmSpinPOS.ValidateGetSignatureInputs: Boolean;
begin
  Result := True;
{
  if Trim(edtSignatureTxnId.Text) = '' then
  begin
    ShowMessage('Please enter Transaction ID');
    edtSignatureTxnId.SetFocus;
    Result := False;
    Exit;
  end;
 }
end;

procedure TfrmSpinPOS.ProcessSale();
var
  SpinPOS: TSpinPOSClient;
  InvoiceData: TInvoiceData;
  Response: TPaymentResponse;
  Item: TInvoiceItem;
  value, stateTax, munTax, redTax, foodTax, cashback, adjData, s: String;
  cashBack1, adjValue, Tax, total: Double;
begin
  if not ValidateCredentials then
    Exit;

  memoResponse.Lines.Clear;
  memoResponse.Lines.Add('Processing sale...');
  memoResponse.Lines.Add('');
  memo1.Lines.Clear;
  Application.ProcessMessages;

  SpinPOS := TSpinPOSClient.Create(CommonPOS.SpinPOSApiKey,CommonPOS.SpinPOSTPN, CommonPOS.SpinPOSReg, CommonPOS.SPINPOS_BASE_URL);
  try
    InvoiceData := TInvoiceData.Create;
    try
      if StrTofloat(FrmCheckOut.EditTIP.Text) > 0 then
      begin
        total := StrToFloat(FrmCheckout.Edit4.Text) - StrToFloat(FrmCheckout.EditTIP.Text);
      end
      else if (StrToFloat(FrmCheckout.Edit4.Text) > DMMidas.CDSTransHeadTOTAL.Value) and (CommonPOS.TransactionType <> 'CAS') then
        total := DMMidas.CDSTransHeadTOTAL.asFloat
      else
        total := StrToFloat(FrmCheckout.Edit4.Text);

      CommonPOS.calcSplitPayment(FloatToStr(total), stateTax, munTax, redTax, foodTax);

      With DMMidas.CDSHead do
      Begin
          Active := False;
          CommandText := 'select * from transactionheader_temp where transactionnumber = ' + IntToStr(DMMidas.CDSTransHeadTRANSACTIONNUMBER.Value);
          Active := True;
          InvoiceData.InvoiceNumber := IntToStr(CommonPOS.TransNo); //edtInvoiceNumber.Text;
          InvoiceData.CustomerName := '';//edtCustomerName.Text;
          InvoiceData.CustomerId := InttoStr(DMMidas.CDSHeadCUSTOMERID.Value);
          //InvoiceData.Amount := (DMMidas.CDSHeadTOTAL FieldByName('TOTAL').Value - FieldByName('TOTAL_TAX').Value);  //StrToFloatDef(edtAmount.Text, 0);
          Tax := StrToFloat(stateTax)+StrToFloat(munTax)+StrToFloat(redTax)+StrToFloat(foodTax);
          InvoiceData.Amount := (total-Tax);  //BcdToDouble(DMMidas.CDSHeadSUBTOTAL.Value) ;  //StrToFloatDef(edtAmount.Text, 0);
          InvoiceData.Tax := Tax; //BcdToDouble(DMMidas.CDSHeadTOTAL_TAX.Value);  //  StrToFloatDef(edtTax.Text, 0);
          InvoiceData.Total := System.Single(total); //BcdToDouble(DMMidas.CDSHeadTOTAL.Value);  //StrToFloatDef(edtTotal.Text, 0);
          InvoiceData.OriginalTCN := IntToStr(nextRefNo('REFERENCE_NO'));  //edtSaleTCN.Text;            //2382   //21874
          InvoiceData.TypePayment := TypePayment; //cbTypePaymentSale.Text;
          InvoiceData.TipAmount := StrToFloat(FrmCheckOut.EditTotalwTip.Text);

          Item := TInvoiceItem.Create;
          Item.Description := 'Item';
          Item.Quantity := 1;
          Item.UnitPrice := InvoiceData.Amount;
          Item.Amount := InvoiceData.Amount;
          InvoiceData.AddItem(Item);  //added
      End;
      if TypePayment='CASH' then
        memo1.Lines.Add('ONE MOMENT PLEASE')
      else
        memo1.Lines.Add('INSERT CARD TO PROCESS');
      Response := SpinPOS.ProcessSale(InvoiceData);
      try
        if Response <> nil then
        begin
          memoResponse.Lines.Add('=== SALE RESPONSE ===');
          memoResponse.Lines.Add('Success: ' + BoolToStr(Response.Success, True));
          memoResponse.Lines.Add('Message: ' + Response.Message);

          memo1.Lines.Clear;
          if Response.Success then
          begin
            memo1.Lines.Add('Transaction ID: ' + Response.TransactionId);
            memo1.Lines.Add('Description: ' + Response.MessageDet);
            memo1.Lines.Add('Approval Code: ' + Response.ApprovalCode);
          end
          else
          begin
            memo1.Lines.Add('Response:' + Response.Message);
            memo1.Lines.Add('DeclineReason:' + Response.MessageDet);
          end;
          memoResponse.Lines.Add('');
          memoResponse.Lines.Add('=== RAW JSON ===');
          memoResponse.Lines.Add(Response.RawJSON);

          if Response.Success then
              InsertFinishedTransaction(CommonPOS.Header,Response.RawJSON,StrToFloat(Response.Amount),strToInt(Response.RefNum),strToInt(Response.BatchNum),Response.TypePayment,Response.TransactionType,Response.CardNumber )   //ShowMessage('Sale processed successfully!')
          else
              InsertFinishedTransaction(CommonPOS.Header,Response.MessageDet,0,strToInt(Response.RefNum),strToInt(Response.BatchNum),Response.TypePayment,Response.TransactionType,Response.CardNumber )

        end
        else
        begin
          memo1.Lines.Add('ERROR: No response received');
          memo1.Lines.Add('Last Error: ' + SpinPOS.LastError);
          InsertFinishedTransaction(CommonPOS.Header,Response.MessageDet,0,strToInt(Response.RefNum),strToInt(Response.BatchNum),Response.TypePayment,Response.TransactionType,Response.CardNumber )
        end;
      finally

      end;
    finally
      InvoiceData.Free;
    end;
  finally
    if Response.Success then
    begin
        CommonPOS.CDApproved := True;
    end
    else
    begin
      try
         CommonPOS.PrintDataDefine := '';
         IF CommonPOS.CDApproved = true then
           CommonPOS.CDApproved := False;
      finally
      end;
    end;

    if Response <> nil then
        Response.Free;
    SpinPOS.Free;
  end;
end;

procedure TfrmSpinPOS.ProcessFSA();        //[2025/12/05 jb] added
var
  SpinPOS: TSpinPOSClient;
  InvoiceData: TInvoiceData;
  Response: TPaymentResponse;
  Item: TInvoiceItem;
  value, stateTax, munTax, redTax, foodTax, cashback, adjData, s: String;
  cashBack1, adjValue, Tax, total: Double;
begin
  if not ValidateCredentials then
    Exit;

  memoResponse.Lines.Clear;
  memoResponse.Lines.Add('Processing sale...');
  memoResponse.Lines.Add('');
  memo1.Lines.Clear;
  Application.ProcessMessages;

  SpinPOS := TSpinPOSClient.Create(CommonPOS.SpinPOSApiKey,CommonPOS.SpinPOSTPN, CommonPOS.SpinPOSReg, CommonPOS.SPINPOS_BASE_URL);
  try
    InvoiceData := TInvoiceData.Create;
    try
      if StrTofloat(FrmCheckOut.EditTIP.Text) > 0 then
      begin
        total := StrToFloat(FrmCheckout.Edit4.Text) - StrToFloat(FrmCheckout.EditTIP.Text);
      end
      else if (StrToFloat(FrmCheckout.Edit4.Text) > DMMidas.CDSTransHeadTOTAL.Value) and (CommonPOS.TransactionType <> 'CAS') then
        total := DMMidas.CDSTransHeadTOTAL.asFloat
      else
        total := StrToFloat(FrmCheckout.Edit4.Text);

      CommonPOS.calcSplitPayment(FloatToStr(total), stateTax, munTax, redTax, foodTax);

      With DMMidas.CDSHead do
      Begin
          Active := False;
          CommandText := 'select * from transactionheader_temp where transactionnumber = ' + IntToStr(DMMidas.CDSTransHeadTRANSACTIONNUMBER.Value);
          Active := True;
          InvoiceData.InvoiceNumber := IntToStr(CommonPOS.TransNo); //edtInvoiceNumber.Text;
          InvoiceData.CustomerName := '';//edtCustomerName.Text;
          InvoiceData.CustomerId := InttoStr(DMMidas.CDSHeadCUSTOMERID.Value);
          Tax := StrToFloat(stateTax)+StrToFloat(munTax)+StrToFloat(redTax)+StrToFloat(foodTax);
          InvoiceData.Amount := (total-Tax);  //BcdToDouble(DMMidas.CDSHeadSUBTOTAL.Value) ;  //StrToFloatDef(edtAmount.Text, 0);
          InvoiceData.Tax := Tax; //BcdToDouble(DMMidas.CDSHeadTOTAL_TAX.Value);  //  StrToFloatDef(edtTax.Text, 0);
          InvoiceData.Total := System.Single(total); //BcdToDouble(DMMidas.CDSHeadTOTAL.Value);  //StrToFloatDef(edtTotal.Text, 0);
          InvoiceData.OriginalTCN := IntToStr(nextRefNo('REFERENCE_NO'));  //edtSaleTCN.Text;            //2382   //21874
          InvoiceData.TypePayment := TypePayment; //cbTypePaymentSale.Text;
          InvoiceData.TipAmount := StrToFloat(FrmCheckOut.EditTotalwTip.Text);
          //InvoiceData.PyType := 'F';
      End;
      memo1.Lines.Add('INSERT CARD TO PROCESS');
      Response := SpinPOS.ProcessFSA(InvoiceData);
      try
        if Response <> nil then
        begin
          memoResponse.Lines.Add('=== SALE RESPONSE ===');
          memoResponse.Lines.Add('Success: ' + BoolToStr(Response.Success, True));
          memoResponse.Lines.Add('Message: ' + Response.Message);

          memo1.Lines.Clear;
          if Response.Success then
          begin
            memo1.Lines.Add('Transaction ID: ' + Response.TransactionId);
            memo1.Lines.Add('Description: ' + Response.MessageDet);
            memo1.Lines.Add('Approval Code: ' + Response.ApprovalCode);
          end
          else
          begin
            memo1.Lines.Add('Response:' + Response.Message);
            memo1.Lines.Add('DeclineReason:' + Response.MessageDet);
          end;
          memoResponse.Lines.Add('');
          memoResponse.Lines.Add('=== RAW JSON ===');
          memoResponse.Lines.Add(Response.RawJSON);

          if Response.Success then
              InsertFinishedTransaction(CommonPOS.Header,Response.RawJSON,StrToFloat(Response.Amount),strToInt(Response.RefNum),strToInt(Response.BatchNum),Response.TypePayment,Response.TransactionType,Response.CardNumber )   //ShowMessage('Sale processed successfully!')
          else
              InsertFinishedTransaction(CommonPOS.Header,Response.MessageDet,0,strToInt(Response.RefNum),strToInt(Response.BatchNum),Response.TypePayment,Response.TransactionType,Response.CardNumber )

        end
        else
        begin
          memo1.Lines.Add('ERROR: No response received');
          memo1.Lines.Add('Last Error: ' + SpinPOS.LastError);
          InsertFinishedTransaction(CommonPOS.Header,Response.MessageDet,0,strToInt(Response.RefNum),strToInt(Response.BatchNum),Response.TypePayment,Response.TransactionType,Response.CardNumber )
        end;
      finally
        if Response <> nil then
          Response.Free;
      end;
    finally
      InvoiceData.Free;
    end;
  finally
    SpinPOS.Free;
    if Response.Success then
    begin
        CommonPOS.CDApproved := True;
    end
    else
    begin
      try
         CommonPOS.PrintDataDefine := '';
         IF CommonPOS.CDApproved = true then
           CommonPOS.CDApproved := False;
      finally
      end;
    end;
  end;
end;

procedure TfrmSpinPOS.ProcessReturn;
var
  SpinPOS: TSpinPOSClient;
  ReturnData: TReturnData;
  Response: TPaymentResponse;
begin
  if not ValidateCredentials then
    Exit;

  memoResponse.Lines.Clear;
  memoResponse.Lines.Add('Processing return...');
  memoResponse.Lines.Add('');
  memo1.Lines.Clear;
  Application.ProcessMessages;

  SpinPOS := TSpinPOSClient.Create(CommonPOS.SpinPOSApiKey,CommonPOS.SpinPOSTPN, CommonPOS.SpinPOSReg, CommonPOS.SPINPOS_BASE_URL);
  try
    ReturnData := TReturnData.Create;
    try
      ReturnData.OriginalTransactionId :=IntToStr(CommonPOS.Header);
      ReturnData.OriginalTCN := IntToStr(nextRefNo('REFERENCE_NO'));    //edtReturnTCN.Text;
      ReturnData.Amount := dAmount; //StrToFloatDef(edtReturnAmount.Text, 0);
      ReturnData.TypePayment := TypePayment;  //cbTypePayment.Text;
      ReturnData.Reason := '';  //edtReturnReason.Text;
      memo1.Lines.Add('ONE MOMENT PLEASE');
      Response := SpinPOS.ProcessReturn(ReturnData);
      try
        if Response <> nil then
        begin
          memoResponse.Lines.Add('=== RETURN RESPONSE ===');
          memoResponse.Lines.Add('Success: ' + BoolToStr(Response.Success, True));
          memoResponse.Lines.Add('Message: ' + Response.Message);
          memo1.Lines.Clear;
         if Response.Success then
          begin
            memo1.Lines.Add('Transaction ID: ' + Response.TransactionId);
            memo1.Lines.Add('Description: ' + Response.MessageDet);
            memo1.Lines.Add('Approval Code: ' + Response.ApprovalCode);
          end
          else
          begin
            memo1.Lines.Add('Response:' + Response.Message);
            memo1.Lines.Add('DeclineReason:' + Response.MessageDet);
          end;

          if Response.Success then
              InsertFinishedTransaction(CommonPOS.Header,Response.RawJSON,StrToFloat(Response.Amount),strToInt(Response.RefNum),strToInt(Response.BatchNum),Response.TypePayment,Response.TransactionType,Response.CardNumber ) //ShowMessage('Return processed successfully!')
          else
              InsertFinishedTransaction(CommonPOS.Header,Response.MessageDet,0,strToInt(Response.RefNum),strToInt(Response.BatchNum),Response.TypePayment,Response.TransactionType,Response.CardNumber )
        end;
      finally
        if Response <> nil then
          Response.Free;
      end;
    finally
      ReturnData.Free;
    end;
  finally
    SpinPOS.Free;
  end;
end;

procedure TfrmSpinPOS.ProcessVoid;
var
  SpinPOS: TSpinPOSClient;
  VoidData: TVoidData;
  Response: TPaymentResponse;
begin
  if not ValidateCredentials then
    Exit;

  memoResponse.Lines.Clear;
  memoResponse.Lines.Add('Processing void...');
  memoResponse.Lines.Add('');
  memo1.Lines.Clear;
  Application.ProcessMessages;

  SpinPOS := TSpinPOSClient.Create(CommonPOS.SpinPOSApiKey,CommonPOS.SpinPOSTPN, CommonPOS.SpinPOSReg, CommonPOS.SPINPOS_BASE_URL);
  try
    VoidData := TVoidData.Create;
    try
      VoidData.OriginalTransactionId := IntToStr(CommonPOS.Header);
      VoidData.OriginalTCN := sRefNum;  //IntToStr(nextRefNo('REFERENCE_NO'));
      VoidData.TypePayment := TypePayment;
      VoidData.Amount := dAmount;
      VoidData.Reason := '';  //edtVoidReason.Text;
      memo1.Lines.Add('ONE MOMENT PLEASE');
      Response := SpinPOS.ProcessVoid(VoidData);
      try
        if Response <> nil then
        begin
          memoResponse.Lines.Add('=== VOID RESPONSE ===');
          memoResponse.Lines.Add('Success: ' + BoolToStr(Response.Success, True));
          memoResponse.Lines.Add('Message: ' + Response.Message);
          memo1.Lines.Clear;
          if Response.Success then
          begin
            memo1.Lines.Add('Transaction ID: ' + Response.TransactionId);
            memo1.Lines.Add('Description: ' + Response.MessageDet);
            memo1.Lines.Add('Approval Code: ' + Response.ApprovalCode);
          end
          else
          begin
            memo1.Lines.Add('Response:' + Response.Message);
            memo1.Lines.Add('DeclineReason:' + Response.MessageDet);
          end;
          memoResponse.Lines.Add('');
          memoResponse.Lines.Add('=== RAW JSON ===');
          memoResponse.Lines.Add(Response.RawJSON);

          if Response.Success then
              InsertFinishedTransaction(CommonPOS.Header,Response.RawJSON,StrToFloat(Response.Amount),strToInt(Response.RefNum),strToInt(Response.BatchNum),Response.TypePayment,Response.TransactionType,Response.CardNumber )   //ShowMessage('Sale processed successfully!')
          else
              InsertFinishedTransaction(CommonPOS.Header,Response.MessageDet,0,strToInt(Response.RefNum),strToInt(Response.BatchNum),Response.TypePayment,Response.TransactionType,Response.CardNumber )   //ShowMessage('Sale failed: ' + Response.Message);
        end;
      finally
        if Response <> nil then
          Response.Free;
      end;
    finally
      VoidData.Free;
    end;
  finally
    SpinPOS.Free;
  end;
end;
{
procedure TfrmSpinPOS.ProcessAuth;
var
  SpinPOS: TSpinPOSClient;
  AuthData: TAuthData;
  Response: TPaymentResponse;
begin
  if not ValidateCredentials then
    Exit;

  if not ValidateAuthInputs then
    Exit;

  memoResponse.Lines.Clear;
  memoResponse.Lines.Add('Processing authorization...');
  memoResponse.Lines.Add('');
  Application.ProcessMessages;

  SpinPOS := TSpinPOSClient.Create(edtAPIKey.Text, edtMerchantId.Text, edtTerminalId.Text);
  try
    AuthData := TAuthData.Create;
    try
      AuthData.InvoiceNumber := edtAuthInvoice.Text;
      AuthData.Amount := StrToFloatDef(edtAuthAmount.Text, 0);
      AuthData.CustomerName := edtAuthCustomer.Text;

      Response := SpinPOS.ProcessAuth(AuthData);
      try
        if Response <> nil then
        begin
          memoResponse.Lines.Add('=== AUTH RESPONSE ===');
          memoResponse.Lines.Add('Success: ' + BoolToStr(Response.Success, True));
          memoResponse.Lines.Add('Message: ' + Response.Message);
          if Response.Success then
          begin
            memoResponse.Lines.Add('Transaction ID: ' + Response.TransactionId);
            memoResponse.Lines.Add('Approval Code: ' + Response.ApprovalCode);
          end;
          memoResponse.Lines.Add('');
          memoResponse.Lines.Add('=== RAW JSON ===');
          memoResponse.Lines.Add(Response.RawJSON);

          if Response.Success then
            ShowMessage('Authorization processed successfully!')
          else
            ShowMessage('Authorization failed: ' + Response.Message);
        end;
      finally
        if Response <> nil then
          Response.Free;
      end;
    finally
      AuthData.Free;
    end;
  finally
    SpinPOS.Free;
  end;
end;
}
procedure TfrmSpinPOS.ProcessAuth;
var
  SpinPOS: TSpinPOSClient;
  InvoiceData: TInvoiceData;
  Response: TPaymentResponse;
  Item: TInvoiceItem;
begin
  if not ValidateCredentials then
    Exit;

  if not ValidateSaleInputs then
    Exit;

  memoResponse.Lines.Clear;
  memoResponse.Lines.Add('Processing sale...');
  memoResponse.Lines.Add('');
  Application.ProcessMessages;

  //SpinPOS := TSpinPOSClient.Create(edtAPIKey.Text, edtMerchantId.Text, edtTerminalId.Text);
  SpinPOS := TSpinPOSClient.Create(CommonPOS.SpinPOSApiKey,CommonPOS.SpinPOSTPN, CommonPOS.SpinPOSReg, CommonPOS.SPINPOS_BASE_URL);
  try
    InvoiceData := TInvoiceData.Create;
    try
      InvoiceData.InvoiceNumber := edtInvoiceNumber.Text;
      InvoiceData.CustomerName := edtCustomerName.Text;
      InvoiceData.CustomerId := edtCustomerId.Text;
      InvoiceData.Amount := StrToFloatDef(edtAmount.Text, 0);
      InvoiceData.Tax := StrToFloatDef(edtTax.Text, 0);
      InvoiceData.Total := StrToFloatDef(edtTotal.Text, 0);
      InvoiceData.OriginalTCN := edtSaleTCN.Text;
      InvoiceData.TypePayment := cbTypePaymentSale.Text;

      Item := TInvoiceItem.Create;
      Item.Description := 'Sample Product';
      Item.Quantity := 1;
      Item.UnitPrice := InvoiceData.Amount;
      Item.Amount := InvoiceData.Amount;
      //SetLength(InvoiceData.Items, 1);
      //InvoiceData.Items[0] := Item;
      InvoiceData.AddItem(Item);  //added

      Response := SpinPOS.ProcessAuth(InvoiceData);
      try
        if Response <> nil then
        begin
          memoResponse.Lines.Add('=== AUTH RESPONSE ===');
          memoResponse.Lines.Add('Success: ' + BoolToStr(Response.Success, True));
          memoResponse.Lines.Add('Message: ' + Response.Message);
          if Response.Success then
          begin
            memoResponse.Lines.Add('Transaction ID: ' + Response.TransactionId);
            memoResponse.Lines.Add('Approval Code: ' + Response.ApprovalCode);
          end;
          memoResponse.Lines.Add('');
          memoResponse.Lines.Add('=== RAW JSON ===');
          memoResponse.Lines.Add(Response.RawJSON);

          if Response.Success then
            ShowMessage('Authorization processed successfully!')
          else
            ShowMessage('Authorization failed: ' + Response.Message);
        end;
      finally
        if Response <> nil then
          Response.Free;
      end;
    finally
      InvoiceData.Free;
    end;
  finally
    SpinPOS.Free;
  end;
end;
{
procedure TfrmSpinPOS.ProcessPaymentInvoice;
var
  SpinPOS: TSpinPOSClient;
  PaymentInvoiceData: TPaymentInvoiceData;
  Response: TPaymentResponse;
  Item: TInvoiceItem;
begin
  if not ValidateCredentials then
    Exit;

  if not ValidatePaymentInvoiceInputs then
    Exit;

  memoResponse.Lines.Clear;
  memoResponse.Lines.Add('Processing payment invoice...');
  memoResponse.Lines.Add('');
  Application.ProcessMessages;

  //SpinPOS := TSpinPOSClient.Create(edtAPIKey.Text, edtMerchantId.Text, edtTerminalId.Text);
  SpinPOS := TSpinPOSClient.Create(CommonPOS.SpinPOSApiKey,CommonPOS.SpinPOSTPN, CommonPOS.SpinPOSReg, CommonPOS.SPINPOS_BASE_URL);
  try
    PaymentInvoiceData := TPaymentInvoiceData.Create;
    try
      PaymentInvoiceData.TableNumber := edtTableNumber.Text;
      PaymentInvoiceData.InvoiceNumber := edtPIInvoice.Text;
      PaymentInvoiceData.Amount := StrToFloatDef(edtPIAmount.Text, 0);
      PaymentInvoiceData.Tax := StrToFloatDef(edtPITax.Text, 0);
      PaymentInvoiceData.Total := StrToFloatDef(edtPITotal.Text, 0);
      PaymentInvoiceData.OriginalTCN := edtPaymentInvoTCN.Text;

      Item := TInvoiceItem.Create;
      Item.Description := 'Table Service';
      Item.Quantity := 1;
      Item.UnitPrice := 0;  //PaymentInvoiceData.Amount;
      Item.Amount := PaymentInvoiceData.Amount;
      //SetLength(PaymentInvoiceData.Items, 1);
      //PaymentInvoiceData.Items[0] := Item;
      PaymentInvoiceData.AddItem(Item);  //added

      Response := SpinPOS.ProcessPaymentInvoice(PaymentInvoiceData);
      try
        if Response <> nil then
        begin
          memoResponse.Lines.Add('=== PAYMENT INVOICE RESPONSE ===');
          memoResponse.Lines.Add('Success: ' + BoolToStr(Response.Success, True));
          memoResponse.Lines.Add('Message: ' + Response.Message);
          if Response.Success then
          begin
            memoResponse.Lines.Add('Transaction ID: ' + Response.TransactionId);
            memoResponse.Lines.Add('Approval Code: ' + Response.ApprovalCode);
          end;
          memoResponse.Lines.Add('');
          memoResponse.Lines.Add('=== RAW JSON ===');
          memoResponse.Lines.Add(Response.RawJSON);

          if Response.Success then
            ShowMessage('Payment Invoice processed successfully!')
          else
            ShowMessage('Payment Invoice failed: ' + Response.Message);
        end;
      finally
        if Response <> nil then
          Response.Free;
      end;
    finally
      PaymentInvoiceData.Free;
    end;
  finally
    SpinPOS.Free;
  end;
end;
 }
procedure TfrmSpinPOS.ProcessGetCard;
var
  SpinPOS: TSpinPOSClient;
  GetCardData: TGetCardData;
  Response: TPaymentResponse;
begin
  if not ValidateCredentials then
    Exit;

  memoResponse.Lines.Clear;
  memoResponse.Lines.Add('Getting card information...');
  memoResponse.Lines.Add('');
  Application.ProcessMessages;

  SpinPOS := TSpinPOSClient.Create(CommonPOS.SpinPOSApiKey,CommonPOS.SpinPOSTPN, CommonPOS.SpinPOSReg, CommonPOS.SPINPOS_BASE_URL);
  try
    GetCardData := TGetCardData.Create;
    try
      GetCardData.PromptMessage := '';//edtCardPrompt.Text;

      Response := SpinPOS.GetCard(GetCardData);
      try
        if Response <> nil then
        begin
          memoResponse.Lines.Add('=== GET CARD RESPONSE ===');
          memoResponse.Lines.Add('Success: ' + BoolToStr(Response.Success, True));
          memoResponse.Lines.Add('Message: ' + Response.Message);
          if Response.Success then
          begin
            memoResponse.Lines.Add('Card Number: ' + Response.CardNumber);
            memoResponse.Lines.Add('Card Type: ' + Response.CardType);
            memoResponse.Lines.Add('Card Holder: ' + Response.CardHolder);
          end;
          memoResponse.Lines.Add('');
          memoResponse.Lines.Add('=== RAW JSON ===');
          memoResponse.Lines.Add(Response.RawJSON);

          if Response.Success then
            ShowMessage('Card information retrieved successfully!')
          else
            ShowMessage('Get Card failed: ' + Response.Message);
        end;
      finally
        if Response <> nil then
          Response.Free;
      end;
    finally
      GetCardData.Free;
    end;
  finally
    SpinPOS.Free;
  end;
end;

procedure TfrmSpinPOS.btnProcessOperationClick(Sender: TObject);
begin
{
  case PageControl1.ActivePageIndex of
    0: ProcessSale;
    1: ProcessReturn;
    2: ProcessVoid;
    3: ProcessAuth;
    4: ProcessPaymentInvoice;
    5: ProcessGetCard;
    6: ProcessTipAdjust;
    7: ProcessCapture;
    8: ProcessSettle;
    9: ProcessAbortTransaction;
    10: ProcessGetSignature;
    11: ProcessStatus;
  end;
  }
end;


procedure TfrmSpinPOS.btnClearClick(Sender: TObject);
begin
   //ClearFields;
end;

procedure TfrmSpinPOS.btnCloseClick(Sender: TObject);
begin
    Self.Close;
end;

procedure TfrmSpinPOS.ProcessTipAdjust;
var
  SpinPOS: TSpinPOSClient;
  TipAdjustData: TTipAdjustData;
  Response: TPaymentResponse;
begin
  if not ValidateCredentials then
    Exit;

  memoResponse.Lines.Clear;
  memoResponse.Lines.Add('Processing tip adjust...');
  memoResponse.Lines.Add('');
  memo1.Lines.Clear;
  Application.ProcessMessages;

  SpinPOS := TSpinPOSClient.Create(CommonPOS.SpinPOSApiKey,CommonPOS.SpinPOSTPN, CommonPOS.SpinPOSReg, CommonPOS.SPINPOS_BASE_URL);
  try
    TipAdjustData := TTipAdjustData.Create;
    try
      TipAdjustData.OriginalTransactionId := IntToStr(CommonPOS.Header);
      TipAdjustData.TipAmount := dTipAmount;
      TipAdjustData.Amount := dAmount;
      TipAdjustData.OriginalTCN := sRefNum;
      TipAdjustData.TypePayment := TypePayment;
      memo1.Lines.Add('ONE MOMENT PLEASE');
      Response := SpinPOS.ProcessTipAdjust(TipAdjustData);
      try
        if Response <> nil then
        begin
          memoResponse.Lines.Add('=== TIP ADJUST RESPONSE ===');
          memoResponse.Lines.Add('Success: ' + BoolToStr(Response.Success, True));
          memoResponse.Lines.Add('Message: ' + Response.Message);
          memo1.Lines.Clear;
          if Response.Success then
          begin
            memo1.Lines.Add('Transaction ID: ' + Response.TransactionId);
            memo1.Lines.Add('Description: ' + Response.MessageDet);
            memo1.Lines.Add('Approval Code: ' + Response.ApprovalCode);
          end
          else
          begin
            memo1.Lines.Add('Response:' + Response.Message);
            memo1.Lines.Add('DeclineReason:' + Response.MessageDet);
          end;
          memoResponse.Lines.Add('');
          memoResponse.Lines.Add('=== RAW JSON ===');
          memoResponse.Lines.Add(Response.RawJSON);

          if Response.Success then
              InsertFinishedTransaction(CommonPOS.Header,Response.RawJSON,StrToFloat(Response.Amount),strToInt(Response.RefNum),strToInt(Response.BatchNum),Response.TypePayment,Response.TransactionType,Response.CardNumber )   //ShowMessage('Sale processed successfully!')
          else
              InsertFinishedTransaction(CommonPOS.Header,Response.MessageDet,0,strToInt(Response.RefNum),strToInt(Response.BatchNum),Response.TypePayment,Response.TransactionType,Response.CardNumber )   //ShowMessage('Sale failed: ' + Response.Message);

        end;
      finally
        if Response <> nil then
          Response.Free;
      end;
    finally
      TipAdjustData.Free;
    end;
  finally
    SpinPOS.Free;
  end;
end;

procedure TfrmSpinPOS.ProcessCapture;
var
  SpinPOS: TSpinPOSClient;
  CaptureData: TCaptureData;
  Response: TPaymentResponse;
begin
  if not ValidateCredentials then
    Exit;

  if not ValidateCaptureInputs then
    Exit;

  memoResponse.Lines.Clear;
  memoResponse.Lines.Add('Processing capture...');
  memoResponse.Lines.Add('');
  Application.ProcessMessages;

  //SpinPOS := TSpinPOSClient.Create(edtAPIKey.Text, edtMerchantId.Text, edtTerminalId.Text);
  SpinPOS := TSpinPOSClient.Create(CommonPOS.SpinPOSApiKey,CommonPOS.SpinPOSTPN, CommonPOS.SpinPOSReg, CommonPOS.SPINPOS_BASE_URL);
  try
    CaptureData := TCaptureData.Create;
    try
      CaptureData.OriginalTransactionId := edtCaptureTxnId.Text;
      CaptureData.Amount := StrToFloatDef(edtCaptureAmount.Text, 0);
      CaptureData.OriginalTCN := edtCaptureTCN.Text;
      CaptureData.TypePayment := cbTypePaymentCapture.Text;

      Response := SpinPOS.ProcessCapture(CaptureData);
      try
        if Response <> nil then
        begin
          memoResponse.Lines.Add('=== CAPTURE RESPONSE ===');
          memoResponse.Lines.Add('Success: ' + BoolToStr(Response.Success, True));
          memoResponse.Lines.Add('Message: ' + Response.Message);
          if Response.Success then
          begin
            memoResponse.Lines.Add('Transaction ID: ' + Response.TransactionId);
            memoResponse.Lines.Add('Approval Code: ' + Response.ApprovalCode);
          end;
          memoResponse.Lines.Add('');
          memoResponse.Lines.Add('=== RAW JSON ===');
          memoResponse.Lines.Add(Response.RawJSON);

          if Response.Success then
            ShowMessage('Capture processed successfully!')
          else
            ShowMessage('Capture failed: ' + Response.Message);
        end;
      finally
        if Response <> nil then
          Response.Free;
      end;
    finally
      CaptureData.Free;
    end;
  finally
    SpinPOS.Free;
  end;
end;

procedure TfrmSpinPOS.ProcessStatus;
var
  SpinPOS: TSpinPOSClient;
  CaptureData: TCaptureData;
  Response: TPaymentResponse;
begin
  if not ValidateCredentials then
    Exit;

  if not ValidateStatusInputs then
    Exit;

  memoResponse.Lines.Clear;
  memoResponse.Lines.Add('Processing capture...');
  memoResponse.Lines.Add('');
  Application.ProcessMessages;

  //SpinPOS := TSpinPOSClient.Create(edtAPIKey.Text, edtMerchantId.Text, edtTerminalId.Text);
  SpinPOS := TSpinPOSClient.Create(CommonPOS.SpinPOSApiKey,CommonPOS.SpinPOSTPN, CommonPOS.SpinPOSReg, CommonPOS.SPINPOS_BASE_URL);
  try
    CaptureData := TCaptureData.Create;
    try
      CaptureData.OriginalTransactionId := edtStatusTxnId.Text;
      CaptureData.OriginalTCN := edtStatusTCN.Text;
      CaptureData.TypePayment := cbTypePaymentStatus.Text;

      Response := SpinPOS.ProcessStatus(CaptureData);
      try
        if Response <> nil then
        begin
          memoResponse.Lines.Add('=== CAPTURE RESPONSE ===');
          memoResponse.Lines.Add('Success: ' + BoolToStr(Response.Success, True));
          memoResponse.Lines.Add('Message: ' + Response.Message);
          if Response.Success then
          begin
            memoResponse.Lines.Add('Transaction ID: ' + Response.TransactionId);
            memoResponse.Lines.Add('Approval Code: ' + Response.ApprovalCode);
          end;
          memoResponse.Lines.Add('');
          memoResponse.Lines.Add('=== RAW JSON ===');
          memoResponse.Lines.Add(Response.RawJSON);

          if Response.Success then
            ShowMessage('Capture processed successfully!')
          else
            ShowMessage('Capture failed: ' + Response.Message);
        end;
      finally
        if Response <> nil then
          Response.Free;
      end;
    finally
      CaptureData.Free;
    end;
  finally
    SpinPOS.Free;
  end;
end;
procedure TfrmSpinPOS.ProcessSettle;
var
  SpinPOS: TSpinPOSClient;
  SettleData: TSettleData;
  Response: TPaymentResponse;
begin
  if not ValidateCredentials then
    Exit;

  memoResponse.Lines.Clear;
  memoResponse.Lines.Add('Processing settle...');
  memoResponse.Lines.Add('');
  memo1.Lines.Clear;
  Application.ProcessMessages;

  SpinPOS := TSpinPOSClient.Create(CommonPOS.SpinPOSApiKey,CommonPOS.SpinPOSTPN, CommonPOS.SpinPOSReg, CommonPOS.SPINPOS_BASE_URL);
  try
    SettleData := TSettleData.Create;
    try
      SettleData.BatchNumber := sBatchNumber;
       memo1.Lines.Add('ONE MOMENT PLEASE');
      Response := SpinPOS.ProcessSettle(SettleData);
      try
        if Response <> nil then
        begin
          memoResponse.Lines.Add('=== SETTLE RESPONSE ===');
          memoResponse.Lines.Add('Success: ' + BoolToStr(Response.Success, True));
          memoResponse.Lines.Add('Message: ' + Response.Message);
          memo1.Lines.Clear;
          if Response.Success then
          begin
            //memo1.Lines.Add('Transaction ID: ' + Response.TransactionId);
            memo1.Lines.Add('Description: ' + Response.MessageDet);
            memo1.Lines.Add('Approved : Settle');
          end
          else
          begin
            memo1.Lines.Add('Response:' + Response.Message);
            memo1.Lines.Add('DeclineReason:' + Response.MessageDet);
          end;
          memoResponse.Lines.Add('');
          memoResponse.Lines.Add('=== RAW JSON ===');
          memoResponse.Lines.Add(Response.RawJSON);

          if Response.Success then
              InsertFinishedTransaction(0,Response.RawJSON,0,0,0,Response.TypePayment,'Settle','' )   //ShowMessage('Sale processed successfully!')
          else
              InsertFinishedTransaction(0,Response.MessageDet,0,0,0,Response.TypePayment,'Settle','' )

        end;
      finally
        if Response <> nil then
          Response.Free;
      end;
    finally
      SettleData.Free;
    end;
  finally
    SpinPOS.Free;
  end;
end;

procedure TfrmSpinPOS.ProcessAbortTransaction;
var
  SpinPOS: TSpinPOSClient;
  AbortData: TAbortTransactionData;
  Response: TPaymentResponse;
begin
  if not ValidateCredentials then
    Exit;

  if not ValidateAbortTransactionInputs then
    Exit;

  memoResponse.Lines.Clear;
  memoResponse.Lines.Add('Aborting transaction...');
  memoResponse.Lines.Add('');
  Application.ProcessMessages;

  //SpinPOS := TSpinPOSClient.Create(edtAPIKey.Text, edtMerchantId.Text, edtTerminalId.Text);
  SpinPOS := TSpinPOSClient.Create(CommonPOS.SpinPOSApiKey,CommonPOS.SpinPOSTPN, CommonPOS.SpinPOSReg, CommonPOS.SPINPOS_BASE_URL);
  try
    AbortData := TAbortTransactionData.Create;
    try
      AbortData.TransactionId := edtAbortTxnId.Text;
      AbortData.Reason := edtAbortReason.Text;

      Response := SpinPOS.ProcessAbortTransaction(AbortData);
      try
        if Response <> nil then
        begin
          memoResponse.Lines.Add('=== ABORT TRANSACTION RESPONSE ===');
          memoResponse.Lines.Add('Success: ' + BoolToStr(Response.Success, True));
          memoResponse.Lines.Add('Message: ' + Response.Message);
          if Response.Success then
            memoResponse.Lines.Add('Transaction ID: ' + Response.TransactionId);
          memoResponse.Lines.Add('');
          memoResponse.Lines.Add('=== RAW JSON ===');
          memoResponse.Lines.Add(Response.RawJSON);

          if Response.Success then
            ShowMessage('Transaction aborted successfully!')
          else
            ShowMessage('Abort transaction failed: ' + Response.Message);
        end;
      finally
        if Response <> nil then
          Response.Free;
      end;
    finally
      AbortData.Free;
    end;
  finally
    SpinPOS.Free;
  end;
end;

procedure TfrmSpinPOS.ProcessGetSignature;
var
  SpinPOS: TSpinPOSClient;
  SignatureData: TGetSignatureData;
  Response: TPaymentResponse;
begin
  if not ValidateCredentials then
    Exit;

  memoResponse.Lines.Clear;
  memoResponse.Lines.Add('Getting signature...');
  memoResponse.Lines.Add('');
  memo1.Lines.Clear;
  Application.ProcessMessages;

  //SpinPOS := TSpinPOSClient.Create(edtAPIKey.Text, edtMerchantId.Text, edtTerminalId.Text);
  SpinPOS := TSpinPOSClient.Create(CommonPOS.SpinPOSApiKey,CommonPOS.SpinPOSTPN, CommonPOS.SpinPOSReg, CommonPOS.SPINPOS_BASE_URL);
  try
    SignatureData := TGetSignatureData.Create;
    try
      SignatureData.TransactionId := '';   //edtSignatureTxnId.Text;   //[2025/12/15 jb]

      Response := SpinPOS.GetSignature(SignatureData);
      try
        if Response <> nil then
        begin
          memoResponse.Lines.Add('=== GET SIGNATURE RESPONSE ===');
          memoResponse.Lines.Add('Success: ' + BoolToStr(Response.Success, True));
          memoResponse.Lines.Add('Message: ' + Response.Message);
          memo1.Lines.Clear;
          if Response.Success then
          begin
            memo1.Lines.Add('Signature retrieved successfully!');
            sSignature := Response.Signature;
          end
          else
          begin
            memo1.Lines.Add('Get signature failed: ' + Response.Message);
            sSignature := '';   //[2025/12/15 jb]
          end;
          memoResponse.Lines.Add('');
          memoResponse.Lines.Add('=== RAW JSON ===');
          memoResponse.Lines.Add(Response.RawJSON);
        end;
      finally
        if Response <> nil then
          Response.Free;
      end;
    finally
      SignatureData.Free;
    end;
  finally
    SpinPOS.Free;
  end;
  if sSignature <> '' then   //[2025/12/15 jb] added
    Self.CloseModal;
end;

function TfrmSpinPOS.nextRefNo(option: String): Integer;
begin
  With DMMidas do
  begin
    With NEXT_ID do
    begin
      Prepare;
      ParamByName('@OPTION').Value := option;
      ExecProc;
      result := ParamByName('@ID').Value;
    end;
  end;

end;
end.
