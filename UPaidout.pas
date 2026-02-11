unit UPaidout;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TFPaidout = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    EditDescripcion: TEdit;
    EditPrecio: TEdit;
    Panel2: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPaidout: TFPaidout;

implementation

{$R *.DFM}

end.
