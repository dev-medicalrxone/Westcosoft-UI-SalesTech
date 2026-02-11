unit UReversal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons;

type
  TFCreditReversal = class(TForm)
    Panel1: TPanel;
    ComboBox17: TComboBox;
    EditAccountNumber: TEdit;
    Label1: TLabel;
    EditExpDate: TEdit;
    Label2: TLabel;
    EditAmount1: TEdit;
    Label3: TLabel;
    EditAmount2: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    EditAppCode: TEdit;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCreditReversal: TFCreditReversal;

implementation

uses UCommonObj;

{$R *.DFM}

procedure TFCreditReversal.Button1Click(Sender: TObject);
Var
  Billto: String;
begin
    case FCreditReversal.ComboBox17.ItemIndex of
      0: Billto := 'Visa';
      1: Billto := 'Master Card';
      2: Billto := 'American Express';
      3: Billto := 'Debit Credit Card';
    end;
  if Billto = 'Visa' then
    TReversal.AcquirerRefData := 'aY'
  else
    TReversal.AcquirerRefData := '';

  TReversal.BuildBodyR(True, EditAccountNumber.Text, EditExpDate.Text,
                  EditAmount1.Text, EditAmount2.Text, EditAppCode.Text);

end;

procedure TFCreditReversal.FormActivate(Sender: TObject);
begin
     EditAccountNumber.Text := '';
     EditExpDate.Text := '';
     EditAmount1.Text := '';
     EditAmount2.Text := '';
     EditAppCode.Text := '';
end;

end.
