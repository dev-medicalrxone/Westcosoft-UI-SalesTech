unit UntCreditCard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ExtCtrls;

type
  TFrmCreditCard = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label3: TLabel;
    EditCash: TEdit;
    EditCreditCard: TEdit;
    ComboBox1: TComboBox;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCreditCard: TFrmCreditCard;

implementation

{$R *.dfm}

end.
