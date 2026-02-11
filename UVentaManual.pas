unit UVentaManual;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TFVentaManual = class(TForm)
    Panel1: TPanel;
    EditDescripcion: TEdit;
    EditDepto: TEdit;
    EditCantidad: TEdit;
    EditPrecio: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVentaManual: TFVentaManual;

implementation

{$R *.DFM}

end.
