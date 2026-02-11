unit UAdjustmentEntry;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TFAdjustmentEntry = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    EditCantidad: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EditArticulo: TEdit;
    EditCantidadActual: TEdit;
    Label3: TLabel;
    EditPrecio: TEdit;
    Label4: TLabel;
    EditNuevoPrecio: TEdit;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure EditCantidadExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAdjustmentEntry: TFAdjustmentEntry;

implementation

{$R *.DFM}

procedure TFAdjustmentEntry.EditCantidadExit(Sender: TObject);
Var
  Qty: Double;
begin
  Qty := StrToFloat(EditCantidad.Text) + StrToFloat(EditCantidadActual.Text);
  EditNuevoPrecio.Text := FloatToStr(Qty * StrToFloat(EditPrecio.Text));
end;

end.
