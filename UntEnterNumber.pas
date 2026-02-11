unit UntEnterNumber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Keyboard, Buttons, ResourceLocalizer;

type
  TFrmInputNumber = class(TForm)
    Panel3: TPanel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    CheckBox1: TCheckBox;
    TouchKeyboard1: TTouchKeyboard;
    EditNumber: TEdit;
    cbChangeInventoryPrice: TCheckBox;
    Panel2: TPanel;
    Edit2: TEdit;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure EditNumberKeyPress(Sender: TObject; var Key: Char);
    procedure EditNumberExit(Sender: TObject);
    procedure EditNumberChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInputNumber: TFrmInputNumber;

implementation

uses UntCommonPOS, UntDMMidas, UntCommon, UntPOSRest, untMain;

{$R *.dfm}
function Validate1To49(AStr : string; var Value : integer) : boolean;
begin
  result := TryStrToInt(AStr, Value) and
            (Value >= 1) and (Value <= 49);
end;

procedure TFrmInputNumber.EditNumberKeyPress(Sender: TObject;
  var Key: Char);
begin
   IF Key = #13 then BitBtn1.Click;
end;

procedure TFrmInputNumber.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if self.Tag = 2 then
  begin
    Canclose := True;
    //CommonPOS.RefundPOS := False;
  end;
end;

procedure TFrmInputNumber.EditNumberChange(Sender: TObject);
var
  tmp : integer;
begin
  if DMMidas.CDSSetupNON_WESCOM_STORE.Value = false then
  begin
    if CommonPOS.IsNumber(EditNumber.Text) then
      EditNumber.Color := clWhite
    else
      EditNumber.Color := clred;
  end;
end;

procedure TFrmInputNumber.EditNumberExit(Sender: TObject);
begin
  if Trim(EditNumber.Text) > '' then
  begin
    if FrmInputNumber.Tag <> 1 Then
    begin
      if StrToFloat(EditNumber.Text) > 50000000 then
      begin
        if FrmMain.LanguageStr = 'English' then
          ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 328))
        else
        Showmessage('El valor entrado debe ser menor de 50,000,000');
        EditNumber.text := '0.00';
        EditNumber.SetFocus;
      end;
    end;
  end;

end;

end.
