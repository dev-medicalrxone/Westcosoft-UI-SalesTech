unit UntPaymentType;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmPaymentType = class(TForm)
    GridPanel1: TGridPanel;
    sbCash: TSpeedButton;
    sbATH: TSpeedButton;
    sbCreditCard: TSpeedButton;
    sbMobilePay: TSpeedButton;
    sbCheck: TSpeedButton;
    sbCreditSale: TSpeedButton;
    sbDelivery: TSpeedButton;
    sbPayPal: TSpeedButton;
    btnCancel: TSpeedButton;
    sbOTC: TSpeedButton;
    procedure sbCashClick(Sender: TObject);
    procedure sbATHClick(Sender: TObject);
    procedure sbCreditCardClick(Sender: TObject);
    procedure sbMobilePayClick(Sender: TObject);
    procedure sbCheckClick(Sender: TObject);
    procedure sbCreditSaleClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton8Click(Sender: TObject);
    procedure sbDeliveryClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbPayPalClick(Sender: TObject);
    procedure sbOTCClick(Sender: TObject);
    function checkRefundMsg: Boolean;
  private
    { Private declarations }
    respuesta: Integer;
  public
    { Public declarations }
  end;

var
  FrmPaymentType: TFrmPaymentType;

implementation

{$R *.dfm}

uses UntCommonPOS, untMain, UntPOSRest, UntPOSTS, UntDelivered, UntDMMidas,
  UntCommon, UntDelInfo;

function TFrmPaymentType.checkRefundMsg: Boolean;
begin
  if (CommonPOS.RefundPOS = True) and (dmmidas.CDSSetupVENDOR.Value <> 'WesCom, Inc.') then
  begin
    respuesta := Commonpos.MessageDlgNoPorDefecto('Please confirm that you wish to complete this refund.');
    if respuesta = mrYes then
    begin
      Result := True
    end
    else
      result := False;
  end
  else
    result := True;
end;

procedure TFrmPaymentType.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmPaymentType := Nil;
  Action := caFree;
end;

procedure TFrmPaymentType.FormShow(Sender: TObject);
begin
  if CommonPOS.Trans_AbonoCredito > 0 then
  begin
    sbCreditSale.Enabled := False;
  end;
  With DMMidas do
  begin
    if CDSSetupVENDOR.Value = 'WesCom, Inc.' then
      sbOTC.Visible := False;
    if CDSTransHeadPAYMENTTYPE1.Value = 'TFAM' then
    begin
      btnCancel.Enabled := False;
    end;
  end;

end;

procedure TFrmPaymentType.sbCashClick(Sender: TObject);
begin
  Self.Close;
  if checkRefundMsg = False then
    exit
  else
    CommonPOS.PayTransaction('CASH');
end;

procedure TFrmPaymentType.sbATHClick(Sender: TObject);
begin
  Self.Close;
  if checkRefundMsg = False then
    exit
  else
    CommonPOS.PayTransaction('ATH');
end;

procedure TFrmPaymentType.sbCreditCardClick(Sender: TObject);
begin
  Self.Close;
  if checkRefundMsg = False then
    exit
  else
    CommonPOS.PayTransaction('VISA');
end;

procedure TFrmPaymentType.sbMobilePayClick(Sender: TObject);
begin
  Self.Close;
  if checkRefundMsg = False then
    exit
  else
    CommonPOS.PayTransaction('ATHM');
end;

procedure TFrmPaymentType.sbOTCClick(Sender: TObject);
begin
  Self.Close;
  if checkRefundMsg = False then
    exit
  else
  begin
    CommonPOS.otcCard := True;
    CommonPOS.PayTransaction('VISA');
  end;
end;

procedure TFrmPaymentType.sbPayPalClick(Sender: TObject);
begin
  Self.Close;
  if checkRefundMsg = False then
    exit
  else
    CommonPOS.PayTransaction('PPAL');
end;

procedure TFrmPaymentType.sbCheckClick(Sender: TObject);
begin
  Self.Close;
  if checkRefundMsg = False then
    exit
  else
    CommonPOS.PayTransaction('CHK');
end;

procedure TFrmPaymentType.sbCreditSaleClick(Sender: TObject);
Var
  AuthUser: String;
begin
  Self.Close;
  if checkRefundMsg = False then
    exit
  else
  begin
    AuthUser := CommonPOS.User;
    if CommonPOS.isAuthorized('POS_CREDIT', UserRights.POS_CREDIT,true) then
    begin
      //If CommonPOS.Customer = 0 then
      CommonPOS.PayTransaction('CRED');
    end;
    FrmPOSRest.EditSearchProd.SetFocus
  end;
end;

procedure TFrmPaymentType.btnCancelClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmPaymentType.sbDeliveryClick(Sender: TObject);
begin
  Self.Close;
  if CommonPOS.isAuthorized('', UserRights.RECALL_TRANS, false) then
  begin
    if CommonPOS.Customer > 0 then
    begin
      With DMMidas do
      begin
        CommonPOS.InsertNewTab(True, Trim(Copy(CDSClientesNombreCompleto2.Value, 1,45)), Trim(Copy(CDSClientesCELULAR.Value, 1,13)), 'D', DMMidas.CDSTransHeadTOTAL.asFloat, CDSClientesNUMEROCLIENTE.Value);
      end;
    end
    else
    begin
      CommonPOS.StartTab(True, CommonPOS.Header, DMMidas.CDSTransHeadTOTAL.asFloat, 'D');
    end;
    if CommonPOS.Factura = False then
      CommonPOS.PrintSavedTransaction(true);
    //CommonPOS.PrintReceipt(CommonPOS.Header, 1, False, 'CASH', '0', False, False, CommonPOS.Factura, False, False);
    CommonPOS.ClearTransactions;
  end;
end;

procedure TFrmPaymentType.SpeedButton8Click(Sender: TObject);
begin
  Self.Close;
  //CommonPOS.PrintReceipt(CommonPOS.Header, 1, False, 'INVOICE', '0', False, False, True, False, False);
  FrmPOSRest.btnDone.Click;
end;

end.
