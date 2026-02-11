unit UNoCheque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TFNoCheque = class(TForm)
    Panel1: TPanel;
    EditNoCheque: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNoCheque: TFNoCheque;

implementation

{$R *.DFM}

end.
