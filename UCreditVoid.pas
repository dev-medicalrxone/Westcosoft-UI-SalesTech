unit UCreditVoid;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, DBCtrls, ToolWin, StdCtrls, Mask, Buttons;

type
  TFCreditVoid = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EditAccountNumber: TEdit;
    EditExpDate: TEdit;
    EditAmount1: TEdit;
    EditAmount2: TEdit;
    EditItemNumber: TEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCreditVoid: TFCreditVoid;

implementation

uses UData, UCommonObj, UDebitTrans;

{$R *.DFM}

procedure TFCreditVoid.Button1Click(Sender: TObject);
//Var
//  Billto: String;
begin
{    case FCreditVoid.ComboBox17.ItemIndex of
      0: Billto := 'Visa';
      1: Billto := 'Master Card';
      2: Billto := 'American Express';
      3: Billto := 'Debit Credit Card';
    end;
  if Billto = 'Visa' then
    TVoid.AcquirerRefData := 'aY'
  else
    TVoid.AcquirerRefData := '';

  TVoid.BuildBodyV(True, EditAccountNumber.Text, EditExpDate.Text,
                  EditAmount1.Text, EditAmount2.Text, EditItemNumber.Text);
}
end;

procedure TFCreditVoid.FormActivate(Sender: TObject);
begin
{     EditAccountNumber.Text := '';
     EditExpDate.Text := '';
     EditAmount1.Text := '';
     EditAmount2.Text := '';
     EditItemNumber.Text := '';
}
end;

end.
