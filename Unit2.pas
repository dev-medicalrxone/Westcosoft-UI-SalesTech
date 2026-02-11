unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Db, DBTables;

type
  TForm2 = class(TForm)
    TFacturas: TTable;
    TPagos: TTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    TPagosIDPago: TIntegerField;
    TPagosFecha: TDateField;
    TPagosFactura: TStringField;
    TPagosCantidad: TFloatField;
    TPagosSuplidor: TIntegerField;
    TPagosCheque: TIntegerField;
    TPagosAjuste: TFloatField;
    TFacturasNumeroSuplidor: TSmallintField;
    TFacturasNumeroFactura: TStringField;
    TFacturasFecha: TDateField;
    TFacturasAjuste: TFloatField;
    TFacturasCodigo: TStringField;
    TFacturasNumeroCuenta: TIntegerField;
    TFacturasCantidad: TFloatField;
    TFacturasDescripcion: TStringField;
    TFacturasNumeroTransaccion: TIntegerField;
    TFacturasNumeroCheque: TIntegerField;
    TFacturasDescuento: TFloatField;
    TFacturasPagado: TFloatField;
    DBGrid2: TDBGrid;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.DFM}

procedure TForm2.Button1Click(Sender: TObject);
begin
  With Form2.TFacturas do
  begin
    TFacturas.First;
    While Not TFacturas.Eof do
    begin
      if TFacturasCodigo.Value = 'P' then
      begin
        Form2.TPagos.Append;
        Form2.TPagosFecha.Value := date;
        Form2.TPagosFactura.Value := TFacturasNumeroFactura.Value;
        Form2.TPagosCantidad.Value := TFacturasCantidad.Value;
        Form2.TPagosSuplidor.Value := TFacturasNumeroSuplidor.Value;
        Form2.TPagosCheque.Value := 0;
        Form2.TPagosAjuste.Value := 0;
        Form2.TPagos.Post;
        Form2.TPagos.Refresh;
      end;
      TFacturas.Next;
    end;
  end;
end;

end.
