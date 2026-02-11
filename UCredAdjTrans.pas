unit UCredAdjTrans;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons;

type
  TFCreditAdjustmentTrans = class(TForm)
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
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCreditAdjustmentTrans: TFCreditAdjustmentTrans;

implementation

uses UCommonObj;

{$R *.DFM}

procedure TFCreditAdjustmentTrans.FormActivate(Sender: TObject);
begin
{     EditAccountNumber.Text := '';
     EditExpDate.Text := '';
     EditAmount1.Text := '';
     EditAmount2.Text := '';
     EditItemNumber.Text := '';
}
end;

end.
