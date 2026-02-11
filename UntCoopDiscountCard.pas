unit UntCoopDiscountCard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, System.JSON, REST.Types;

type
  TFrmCoopDiscCard = class(TForm)
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    EditInsuranceNumber: TEdit;
    Bevel1: TBevel;
    Panel1: TPanel;
    LabelSearching: TLabel;
    btnCancel: TButton;
    btnSale: TButton;
    Memo1: TMemo;
    procedure EditInsuranceNumberExit(Sender: TObject);
    procedure EditInsuranceNumberKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCoopDiscCard: TFrmCoopDiscCard;

implementation

{$R *.dfm}

uses UntDMMidas, UntCommonPOS, UntCommon;

procedure TFrmCoopDiscCard.EditInsuranceNumberExit(Sender: TObject);
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
  FJSONArray: TJSONArray;
  o: TJSONObject;
begin
  With DMMidas do
  begin
    if (CommonPOS.User = 'ADM') or (CommonPOS.User = 'ACG') Then
    begin
      RESTClient.BaseURL := 'https://coopharma-discount-api-dev-8brxc.ondigitalocean.app/discountcard/DiscCardByNumber/' + Trim(EditInsuranceNumber.Text);
      RESTClient.Params.AddHeader('Key', '0ecf3234-e904-41a5-8a96-da193bc077b4');
    end
    else
    begin
      RESTClient.BaseURL := 'https://coopharma-discount-api-awwj8.ondigitalocean.app/discountcard/DiscCardByNumber/' + Trim(EditInsuranceNumber.Text);
      RESTClient.Params.AddHeader('Key',  '0ecf3234-e904-41a5-8a96-da193bc077b4');
    end;
    RESTRequest.Method := TRESTRequestMethod.rmGET;
    RESTRequest.Response := RESTResponse;
    RESTRequest.Body.ClearBody;
    RESTRequest.Execute;
    S := RESTResponse.Content;
    FJSONArray := TJSONObject.ParseJSONValue(RESTResponse.Content) as TJSONArray;
    if FJSONArray.Count > 0 then
    begin
      for i := 0 to FJSONArray.Count - 1 do
      begin
        o := FJSONArray.Items[i] as TJSONObject;
        Memo1.Lines.Add('ID: '+ o.GetValue('id').ToString);
        Memo1.Lines.Add('Status: '+ o.GetValue('status').ToString);
        Memo1.Lines.Add('discount recipe book: '+o.GetValue('discount_recipe_book').Value);
        Memo1.Lines.Add('discount gen: '+o.GetValue('discount_gen').Value);
        Memo1.Lines.Add('Card Number: '+o.GetValue('num_card').Value);
        Memo1.Lines.Add('Phone: '+ o.GetValue('phone').ToString);
        Memo1.Lines.Add('Customer: '+ o.GetValue('name').ToString + ' ' + o.GetValue('lastname').ToString);
        Memo1.Lines.Add('Phone: '+ o.GetValue('phone').ToString);
        Memo1.Lines.Add('email: '+ o.GetValue('email').ToString);
        if o.GetValue('status').ToString = 'true' then
        begin
          CommonPOS.Perc := StrToFloat(o.GetValue('discount_gen').Value);
          CommonPOS.CopharmaCardNumber := Trim(o.GetValue('num_card').Value);
          btnSale.Enabled := true;
        end;
      end;
    end;
    Memo1.SetFocus;
  end;
end;

procedure TFrmCoopDiscCard.EditInsuranceNumberKeyPress(Sender: TObject;
  var Key: Char);
begin
  CommonForm.Enter2tab(Self,Key);
end;

end.
