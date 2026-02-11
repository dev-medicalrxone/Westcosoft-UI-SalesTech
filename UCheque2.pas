unit UCheque2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, QuickRpt, Qrctrls, ExtCtrls;

type
  TFQRCheque2 = class(TForm)
    QRCheque: TQuickRep;
    DetailBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
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
    MasterDS: TDataSource;
    QRDBText2: TQRDBText;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape2: TQRShape;
    QRLabel4: TQRLabel;
    QRShape3: TQRShape;
    QRLabel5: TQRLabel;
    QRShape5: TQRShape;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape6: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape7: TQRShape;
    QRDBText1: TQRDBText;
    QRExpr1: TQRExpr;
    QRDBText9: TQRDBText;
    TitleBand1: TQRBand;
    QRSysData3: TQRSysData;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText10: TQRDBText;
    QRExpr2: TQRExpr;
    QRBand1: TQRBand;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
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
    QRDBText5: TQRDBText;
    QTAjuste: TQuery;
    FloatField1: TFloatField;
    QRDBText11: TQRDBText;
    QRExpr3: TQRExpr;
    QPagosFechaFactura: TDateField;
    QRLabel1: TQRLabel;
    QRShape4: TQRShape;
    QRDBText12: TQRDBText;
    QPagosDescripcion: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FQRCheque2: TFQRCheque2;

implementation

{$R *.DFM}

end.
