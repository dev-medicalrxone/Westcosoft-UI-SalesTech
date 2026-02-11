unit UCreditCardReturn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TFCreditCardReturn = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    EditCreditCard: TEdit;
    EditSwipeTrackData: TEdit;
    Label1: TLabel;
    EditAmount1: TEdit;
    Label2: TLabel;
    Label7: TLabel;
    EditAmount2: TEdit;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    EditAccountNumber: TEdit;
    EditExpirationDate: TEdit;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCreditCardReturn: TFCreditCardReturn;

implementation

{$R *.DFM}

end.
