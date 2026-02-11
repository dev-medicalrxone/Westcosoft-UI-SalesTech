unit UntSSSOTC;

interface

uses
  Windows, Messages, Classes, Graphics, Controls, Dialogs,
  StdCtrls, Forms, DBCtrls, DB, Grids, DBGrids, Mask, ExtCtrls,
  Buttons, WinTypes, ComCtrls, Printers, Registry, wininet, ToolWin,
  ShellApi, frxDBSet,
  SysUtils, XSBuiltIns, DateUtils,
  Menus, ImgList, jpeg, System.ImageList,
  IdCoder, IdCoder3to4, IdCoderMIME,
  DBCGrids, ActnMan, ActnCtrls,
 { ieview, imageenview, hyieutils,
  hyiedefs, iesettings, imageenproc, iexBitmaps, }
  IdTCPConnection, IdTCPClient,
  IdIOHandlerStream, IdServerIOHandler,
  IdIntercept, System.Zip, Soap.EncdDecd, IdGlobal,
  System.TimeSpan, WinSvc, TLHelp32, System.IOUtils, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, REST.Authenticator.Basic,
  System.JSON, DBXJSONCommon;

type
  TFrmSSSOTC = class(TForm)
    Label2: TLabel;
    Panel1: TPanel;
    Label3: TLabel;
    LabelBalance: TLabel;
    btnCancel: TButton;
    btnSale: TButton;
    LabelCustomerName: TLabel;
    Bevel1: TBevel;
    Panel2: TPanel;
    EditInsuranceNumber: TEdit;
    SpeedButton1: TSpeedButton;
    LabelSearching: TLabel;
    Label1: TLabel;
    LabelInsuranceNumber: TLabel;
    procedure EditInsuranceNumberExit(Sender: TObject);
    procedure EditInsuranceNumberKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function GetGID: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSSSOTC: TFrmSSSOTC;

implementation

{$R *.dfm}

uses UntDMMidas, UntCommon, UntCommonPOS, UntSearchCust2;


procedure TFrmSSSOTC.EditInsuranceNumberKeyPress(Sender: TObject;
  var Key: Char);
begin
  CommonForm.Enter2tab(Self,Key);
end;

procedure TFrmSSSOTC.FormShow(Sender: TObject);
begin
  if (CommonPOS.User = 'ADM') or (CommonPOS.User = 'ACG') Then
  begin
    EditInsuranceNumber.Text := 'TESTOTCDP';
  end;
end;

function TFrmSSSOTC.GetGID: String;
var
  newGUID: TGUID;
  uid: String;
begin
  SysUtils.CreateGUID(newGUID);
  uid := GUIDToString(newGUID);
  uid := StringReplace(uid, '-', '', [rfReplaceAll, rfIgnoreCase]);
  uid := StringReplace(uid, '{', '', [rfReplaceAll, rfIgnoreCase]);
  uid := StringReplace(uid, '}', '', [rfReplaceAll, rfIgnoreCase]);
  Result := uid;
end;

procedure TFrmSSSOTC.SpeedButton1Click(Sender: TObject);
begin
  FrmSSSOTC.FormStyle := fsNormal;
  FrmSearchCust2 := TFrmSearchCust2.Create(nil);
  With FrmSearchCust2 do
  begin
    ShowModal;
    With DMMidas do
    begin
      if Trim(CDSClientesCARDHOLDERID.Value) > '' then
      begin
        EditInsuranceNumber.Text := Trim(CDSClientesCARDHOLDERID.Value);
      end;
    end;
    FrmSearchCust2 := nil;
    Free;
  end;
  FrmSSSOTC.FormStyle := fsStayOnTop;
end;

procedure TFrmSSSOTC.EditInsuranceNumberExit(Sender: TObject);
Var
  i, len: Integer;
  o: TJSONObject;
  jValue       : TJSONValue;
  JSONResponse : TJSONObject;
  Token,S      : string;
  lStringList  : TStringList;
  NoOf         : Integer;
  customerObj  : TJsonObject;
  ID: TJsonValue;
  Customer: String;
  Jobj: TJsonObject;
  jsonArray: TJsonArray;
  dataObj: TJsonObject;
  streams: TJSONArray;
begin
  Customer := '';
  CommonPOS.TripleS_CustomerID := '0';
  CommonPOS.TripleS_ApprovedAmount := 0;
  CommonPOS.TripleS_finalBalance := 0;
  CommonPOS.TripleS_previousBalance := 0;
  CommonPOS.TripleS_GID := '';


  if Trim(EditInsuranceNumber.Text) = '' then
  begin
    Exit;
  end
  else
  begin
    LabelSearching.Visible := True;
    LabelBalance.Caption := '$0.00';
    LabelInsuranceNumber.Caption := EditInsuranceNumber.Text;
    FrmSSSOTC.Refresh;
  end;

  Try
    With DMMidas do
    begin
      //if CommonPOS.User = 'ADM' Then
      if (CommonPOS.User = 'ADM') or (CommonPOS.User = 'ACG') Then
      begin
        //RESTClient.BaseURL := 'https://dynarx-close-loop-webapi-qc.azurewebsites.net/api/OTC/Customer/'+Trim(EditInsuranceNumber.Text);
        RESTClient.BaseURL := 'https://stage.agilpay.net/DynaRX/DynaRXApi/api/OTC/Customer/'+Trim(EditInsuranceNumber.Text);
        RESTClient.Params.AddHeader('StoreKey', '3F48B7C5-DB83-4F23-A8DA-ACEA99669BA3');
        RESTClient.Params.AddHeader('APIKey', '092E637A-44F3-4D8C-8BBD-06C57816507C');
      end
      else
      begin
        RESTClient.BaseURL := 'https://api.dyna-rx.com/api/OTC/Customer/'+Trim(EditInsuranceNumber.Text);
        RESTClient.Params.AddHeader('StoreKey', Trim(CDSSetupSSSOTC_StoreKey.Value));
        RESTClient.Params.AddHeader('APIKey', Trim(CDSSetupSSSOTC_APIKey.Value));
      end;
      RESTRequest.Method := TRESTRequestMethod.rmGET;
      RESTRequest.Response := RESTResponse;
      Try
        RESTRequest.Execute;
      Except
        CommonPOS.ShowMessageStr('Server down!',12,clBlack);
        LabelSearching.Visible := False;
        exit;
      End;
      EditInsuranceNumber.Text := '';
      LabelSearching.Visible := False;
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
            //CommonPOS.ShowMessageStr(JSONResponse.GetValue('message').ToString,12);
            LabelCustomerName.Caption := JSONResponse.GetValue('message').ToString;
            exit;
          end;
          if Assigned(JSONResponse.GetValue('uniqueID')) then
          begin
            CommonPOS.TripleS_GID := Copy(JSONResponse.GetValue('uniqueID').ToString,2, length(JSONResponse.GetValue('uniqueID').ToString)-2);
          end;
          if Assigned(JSONResponse.GetValue('customer')) then
          begin
            Customer := JSONResponse.GetValue('customer').ToString;
            Jobj := TJSONObject.ParseJSONValue(Customer) as TJSONObject;
            CommonPOS.TripleS_CustomerID := Jobj.GetValue('customerId').ToString;
            LabelCustomerName.Caption := Jobj.GetValue('firstname').Value + ' ' + Jobj.GetValue('lastname').Value;
            if Trim(Jobj.GetValue('balance').Value) = '0' then
              LabelBalance.Font.Color := clRed
            else
              LabelBalance.Font.Color := clGreen;
            LabelBalance.Caption := Format('%m', [StrToFloat(Jobj.GetValue('balance').Value)]);
            CommonPOS.TripleS_previousBalance := StrToFloat(Jobj.GetValue('balance').Value);
            CommonPOS.TripleS_finalBalance := StrToFloat(Jobj.GetValue('balance').Value);
            //========= temporary ==========================
            {
            CommonPOS.TripleS_InitialBalance := 50.00;
            CommonPOS.TripleS_NewBalance := 50.00;
            LabelBalance.Caption := Format('%m', [CommonPOS.TripleS_NewBalance]);
            }
            //===============================================
            if CommonPOS.TripleS_previousBalance = 0 then
            begin
              btnSale.Enabled := False;
            end
            else
            begin
              btnSale.Enabled := True;
            end;
          end;
          if Assigned(JSONResponse.GetValue('message')) then
          begin
             //Memo1.Lines.Add(JSONResponse.GetValue('message').ToString);
          end;
        end
        else
        begin
          if Assigned(JSONResponse.GetValue('error')) then
          begin
            CommonPOS.ShowMessageStr('Error: ' + JSONResponse.GetValue('error').ToString,12,clBlack);
          end;
        end;
      end;
    end;
  finally
     //CommonPOS.ShowMessageStr('Server down!',12);
     EditInsuranceNumber.Text := '';
  end;
end;



end.
