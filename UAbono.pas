unit UAbono;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TFAbono = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    EditCantidad: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Memo1: TMemo;
    Panel2: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAbono: TFAbono;

implementation

{$R *.DFM}

end.
