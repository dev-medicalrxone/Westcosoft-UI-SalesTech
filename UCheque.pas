unit UCheque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, QuickRpt, Qrctrls, ExtCtrls;

type
  TFQRCheque = class(TForm)
    DetailTable: TTable;
    MasterDS: TDataSource;
    QSuplidores: TQuery;
    DetailTableNumeroSuplidor: TSmallintField;
    DetailTableNumeroFactura: TStringField;
    DetailTableFecha: TDateField;
    DetailTableAjuste: TFloatField;
    DetailTableCodigo: TStringField;
    DetailTableNumeroCuenta: TIntegerField;
    DetailTableNumeroCheque: TIntegerField;
    DetailTableCantidad: TFloatField;
    DetailTableDescripcion: TStringField;
    DetailTableNumeroTransaccion: TIntegerField;
    DetailTableDescuento: TFloatField;
    DetailTablePagado: TFloatField;
    QSuplidoresNumeroSuplidor: TSmallintField;
    QSuplidoresSuplidor: TStringField;
    QSuplidoresDireccion1: TStringField;
    QSuplidoresDireccion2: TStringField;
    QSuplidoresTelefono: TStringField;
    QSuplidoresFax: TStringField;
    QSuplidoresZipCode: TStringField;
    QSuplidoresPorcientoDescuento: TFloatField;
    QSuplidoresDiasDescuento: TSmallintField;
    QSuplidoresContacto: TStringField;
    QSuplidoresNumeroCuenta: TStringField;
    QRCheque: TQuickRep;
    QRBand2: TQRBand;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FQRCheque: TFQRCheque;

implementation

{$R *.DFM}

end.
