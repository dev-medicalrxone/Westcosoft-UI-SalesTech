unit UDebitReversal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons;

type
  TFDebitReversal = class(TForm)
    Information: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EditAccountNumber: TEdit;
    EditAmount1: TEdit;
    EditAmount2: TEdit;
    ComboBox1: TComboBox;
    Label5: TLabel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ComboBox2: TComboBox;
    Label4: TLabel;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDebitReversal: TFDebitReversal;

implementation

uses UCommonObjDebit;

{$R *.DFM}

procedure TFDebitReversal.FormActivate(Sender: TObject);
begin
  EditAccountNumber.Text := '';
  EditAmount1.Text := '';
  EditAmount2.Text := '';
end;

end.
