unit UCambioPrecio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db;

type
  TFCambioPrecio = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    EditCambioPrecio: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    LabelArticulo: TLabel;
    EditProductID: TEdit;
    Panel2: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCambioPrecio: TFCambioPrecio;

implementation

{$R *.DFM}

end.
