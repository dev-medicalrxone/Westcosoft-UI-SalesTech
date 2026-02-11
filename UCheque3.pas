unit UCheque3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  TFQRCheque3 = class(TForm)
    QRCheque: TQuickRep;
    DetailBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRLabel4: TQRLabel;
    QRShape3: TQRShape;
    QRLabel5: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape7: TQRShape;
    ColumnHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRExpr1: TQRExpr;
    QRDBText9: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    TitleBand1: TQRBand;
    QRSysData3: TQRSysData;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText10: TQRDBText;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRBand1: TQRBand;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText11: TQRDBText;
    Table1: TTable;
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
    QSuplidores: TQuery;
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
    MasterDS: TDataSource;
    QCantidadCheque: TQuery;
    QCantidadChequeTPago: TFloatField;
    QPagos: TQuery;
    QPagosIDPago: TIntegerField;
    QPagosFecha: TDateField;
    QPagosFactura: TStringField;
    QPagosCantidad: TFloatField;
    QPagosSuplidor: TIntegerField;
    QPagosCheque: TIntegerField;
    QPagosAjuste: TFloatField;
    QTAjuste: TQuery;
    FloatField1: TFloatField;
    QRLabel1: TQRLabel;
    QRDBText12: TQRDBText;
    QPagosFechaFactura: TDateField;
    QRShape4: TQRShape;
    QPagosDescripcion: TStringField;
    QRDBText8: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FQRCheque3: TFQRCheque3;

implementation

{$R *.DFM}

end.
