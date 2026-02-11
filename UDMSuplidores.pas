unit UDMSuplidores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  TDataModuleSuplidores = class(TDataModule)
    TFacturas: TTable;
    DSFacturas: TDataSource;
    TSuplidores: TTable;
    DSSuplidores: TDataSource;
    TSuplidoresNumeroSuplidor: TSmallintField;
    TSuplidoresSuplidor: TStringField;
    TSuplidoresDireccion1: TStringField;
    TSuplidoresDireccion2: TStringField;
    TSuplidoresTelefono: TStringField;
    TSuplidoresFax: TStringField;
    TSuplidoresZipCode: TStringField;
    TSuplidoresPorcientoDescuento: TFloatField;
    TSuplidoresDiasDescuento: TSmallintField;
    TSuplidoresContacto: TStringField;
    TSuplidoresNumeroCuenta: TStringField;
    DtSrcPagos: TDataSource;
    QryPagos: TQuery;
    QryTotalPagado: TQuery;
    TFacturasNumeroSuplidor: TSmallintField;
    TFacturasNumeroFactura: TStringField;
    TFacturasFecha: TDateField;
    TFacturasAjuste: TFloatField;
    TFacturasCodigo: TStringField;
    TFacturasNumeroCuenta: TIntegerField;
    TFacturasNumeroCheque: TIntegerField;
    TFacturasCantidad: TFloatField;
    TFacturasDescripcion: TStringField;
    TFacturasNumeroTransaccion: TIntegerField;
    TFacturasDescuento: TFloatField;
    TFacturasPagado: TFloatField;
    TFacturasTotal: TCurrencyField;
    QryPagosIDPago: TIntegerField;
    QryPagosFecha: TDateField;
    QryPagosFactura: TStringField;
    QryPagosCantidad: TFloatField;
    QryPagosSuplidor: TIntegerField;
    QryPagosAjuste: TFloatField;
    QTotalAbonado: TQuery;
    QTotalAbonadoTAbonado: TFloatField;
    QTotalAdeudado: TQuery;
    QTotalPagado: TQuery;
    QTotalAdeudadoTAdeudado: TFloatField;
    QTotalPagadoTPagado: TFloatField;
    TFacturasTotalAdeudado: TCurrencyField;
    QryTotalPagadoPagado: TFloatField;
    QryBuscarSuplidor: TQuery;
    DtSrcBuscarSuplidor: TDataSource;
    QryPagosCheque: TIntegerField;
    QAbonos: TQuery;
    QAbonosTAbono: TFloatField;
    TCuentaBancaria: TTable;
    TCuentaBancariaFecha: TDateField;
    TCuentaBancariaCredito: TFloatField;
    TCuentaBancariaDebito: TFloatField;
    TCuentaBancariaDescripcion: TStringField;
    TCuentaBancariaBalance: TFloatField;
    DSCuentaBancaria: TDataSource;
    QBalanceCBCreditos: TQuery;
    QBalanceCBDebitos: TQuery;
    QBalanceCBDebitosTDebito: TFloatField;
    QBalanceCBCreditosTCredito: TFloatField;
    TCuentaBancariaNoTrans: TIntegerField;
    TCuentaBancariaCobrado: TStringField;
    QBalanceRealCredito: TQuery;
    QBalanceRealDebito: TQuery;
    QBalanceRealCreditoTCredito: TFloatField;
    QBalanceRealDebitoTDebito: TFloatField;
    TCuentaBancariaNumeroCheque: TIntegerField;
    QryPagosFechaFactura: TDateField;
    QryPagosDescripcion: TStringField;
    QryBalanceFactura: TQuery;
    QryBalanceFacturaBalanceFactura: TFloatField;
    QryPagosNumeroCuenta: TIntegerField;
    TSuplidoresTotalComprado: TFloatField;
    QCuadre2: TQuery;
    DSCuadre: TDataSource;
    TDepartamentos: TTable;
    QCuadre2departamento: TSmallintField;
    QCuadre2sumPrecioVenta: TFloatField;
    QCuadre2sumGanancia: TFloatField;
    TFacturasPagar: TStringField;
    QTotalaPagar: TQuery;
    DSTotalaPagar: TDataSource;
    QTotalaPagarTPagar: TFloatField;
    QFacturasaPagar: TQuery;
    QFacturasaPagarNumeroSuplidor: TSmallintField;
    QFacturasaPagarNumeroFactura: TStringField;
    QFacturasaPagarFecha: TDateField;
    QFacturasaPagarAjuste: TFloatField;
    QFacturasaPagarCodigo: TStringField;
    QFacturasaPagarNumeroCuenta: TIntegerField;
    QFacturasaPagarNumeroCheque: TIntegerField;
    QFacturasaPagarCantidad: TFloatField;
    QFacturasaPagarDescripcion: TStringField;
    QFacturasaPagarNumeroTransaccion: TIntegerField;
    QFacturasaPagarDescuento: TFloatField;
    QFacturasaPagarPagado: TFloatField;
    QFacturasaPagarPagar: TStringField;
    QUpdateFacturas: TQuery;
    TPagos: TTable;
    DSPagos: TDataSource;
    TPagosIDPago: TIntegerField;
    TPagosFecha: TDateField;
    TPagosFactura: TStringField;
    TPagosCantidad: TFloatField;
    TPagosSuplidor: TIntegerField;
    TPagosCheque: TIntegerField;
    TPagosAjuste: TFloatField;
    TPagosFechaFactura: TDateField;
    TPagosDescripcion: TStringField;
    TPagosNumeroCuenta: TIntegerField;
    procedure TFacturasCalcFields(DataSet: TDataSet);
    procedure TFacturasAfterInsert(DataSet: TDataSet);
    procedure QryPagosAfterPost(DataSet: TDataSet);
    procedure TFacturasAfterPost(DataSet: TDataSet);
    procedure TCuentaBancariaAfterInsert(DataSet: TDataSet);
    procedure TCuentaBancariaBeforePost(DataSet: TDataSet);
    procedure DSSuplidoresDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleSuplidores: TDataModuleSuplidores;

implementation

uses UntPOS, UntCommon;

{$R *.DFM}

procedure TDataModuleSuplidores.TFacturasCalcFields(DataSet: TDataSet);
begin
  TFacturasTotalAdeudado.Value := ((TFacturasCantidad.Value - (TFacturasAjuste.Value + TFacturasDescuento.Value)) - TFacturasPagado.Value);
  {TFacturasTotal.Value := TFacturasCantidad.Value - TFacturasAjuste.Value;
  QryTotalPagado.Close;
  QryTotalPagado.ParamByName('NumeroFactura').AsString := DataModuleSuplidores.TFacturasNumeroFactura.Value;
  QryTotalPagado.ParamByName('NumeroSuplidor').AsInteger := DataModuleSuplidores.TFacturasNumeroSuplidor.Value;
  QryTotalPagado.Open;
  TFacturasTotalAdeudado.Value :=  (DataModuleSuplidores.TFacturasCantidad.Value - DataModuleSuplidores.TFacturasAjuste.Value) -  DataModuleSuplidores.QryTotalPagadoPagado.Value;
  }
end;

procedure TDataModuleSuplidores.TFacturasAfterInsert(DataSet: TDataSet);
begin
  TFacturasNumeroSuplidor.asInteger := TSuplidoresNumeroSuplidor.asInteger;
  TFacturasCodigo.AsString := 'N';
  TFacturasCantidad.AsFloat := 0;
  TFacturasAjuste.AsFloat := 0;
  TFacturasDescripcion.AsString := '';
  TFacturasFecha.AsDateTime := Date;
end;

procedure TDataModuleSuplidores.QryPagosAfterPost(DataSet: TDataSet);
begin
{  TFacturas.Refresh;
  //FPOS.EditDeudaTotal.Text := Format('%m',[Supplier.CalcBalance(DataModuleSuplidores.TSuplidoresNumeroSuplidor.Value)]);
  QTotalAdeudado.Close;
  QTotalAdeudado.ParamByName('NumeroSuplidor').AsInteger := TSuplidoresNumeroSuplidor.Value;
  QTotalAdeudado.Open;
  QAbonos.Close;
  QAbonos.ParamByName('NumeroSuplidor').AsInteger :=  TSuplidoresNumeroSuplidor.Value;
  QAbonos.Open;
  //FPOS.EditDeudaTotal.Text := Format('%m' , [QTotalAdeudadoTAdeudado.Value - QAbonosTAbono.Value]);

{  if MessageDlg('Desea entrar este pago a la cuenta bancaria?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    QryPagos.Last;
    DataModuleSuplidores.TCuentaBancaria.Append;
    DataModuleSuplidores.TCuentaBancariaFecha.Value := QryPagosFecha.Value;
    DataModuleSuplidores.TCuentaBancariaDebito.Value := QryPagosCantidad.Value;
    DataModuleSuplidores.TCuentaBancariaDescripcion.Value := TFacturasDescripcion.Value;
    DataModuleSuplidores.TCuentaBancariaBalance.Value := 0;
    DataModuleSuplidores.TCuentaBancariaCobrado.Value := 'N';
    DataModuleSuplidores.TCuentaBancariaNumeroCheque.Value := QryPagosCheque.Value;
    DataModuleSuplidores.TCuentaBancaria.Post;
  end;
}
end;

procedure TDataModuleSuplidores.TFacturasAfterPost(DataSet: TDataSet);
begin
{  TFacturas.Refresh;
  QTotalAdeudado.Close;
  QTotalAdeudado.ParamByName('NumeroSuplidor').AsInteger := TSuplidoresNumeroSuplidor.Value;
  QTotalAdeudado.Open;
  QAbonos.Close;
  QAbonos.ParamByName('NumeroSuplidor').AsInteger :=  TSuplidoresNumeroSuplidor.Value;
  QAbonos.Open;
  FPOS.EditDeudaTotal.Text := Format('%m' , [QTotalAdeudadoTAdeudado.Value - QAbonosTAbono.Value]);
}
end;

procedure TDataModuleSuplidores.TCuentaBancariaAfterInsert(
  DataSet: TDataSet);
begin
  TCuentaBancariaBalance.Value := 0;
  TCuentaBancariaCobrado.Value := 'N';
end;

procedure TDataModuleSuplidores.TCuentaBancariaBeforePost(
  DataSet: TDataSet);
begin
  QBalanceRealCredito.Close;
  QBalanceRealDebito.Close;
  QBalanceRealCredito.Open;
  QBalanceRealDebito.Open;

  QBalanceCBCreditos.Close;
  QBalanceCBCreditos.Open;
  QBalanceCBDebitos.Close;
  QBalanceCBDebitos.Open;
  //FPOS.EditBalanceBancarioReal.Text := Format('%m', [QBalanceRealCreditoTCredito.Value - QBalanceRealDebitoTDebito.Value]);
  //FPOS.EditBalanceBancario.Text := Format('%m', [QBalanceCBCreditosTCredito.Value - QBalanceCBDebitosTDebito.Value]);
  DataModuleSuplidores.TCuentaBancaria.Refresh;
end;

procedure TDataModuleSuplidores.DSSuplidoresDataChange(Sender: TObject;
  Field: TField);
begin
  DataModuleSuplidores.QTotalaPagar.Close;
  DataModuleSuplidores.QTotalaPagar.ParamByName('NumeroSuplidor').asInteger :=
    DataModuleSuplidores.TSuplidoresNumeroSuplidor.Value;
  DataModuleSuplidores.QTotalaPagar.Open;
end;

end.
