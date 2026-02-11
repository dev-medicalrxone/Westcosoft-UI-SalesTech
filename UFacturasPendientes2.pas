unit UFacturasPendientes2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, QuickRpt, Qrctrls;

type       
  TQRFFacturasPend = class(TForm)
    QRFactPend: TQuickRep;
    QFacturasPend: TQuery;
    QFacturasPendNumeroSuplidor: TSmallintField;
    QFacturasPendSuplidor: TStringField;
    QFacturasPendDireccion1: TStringField;
    QFacturasPendDireccion2: TStringField;
    QFacturasPendTelefono: TStringField;
    QFacturasPendFax: TStringField;
    QFacturasPendZipCode: TStringField;
    QFacturasPendPorcientoDescuento: TFloatField;
    QFacturasPendDiasDescuento: TSmallintField;
    QFacturasPendContacto: TStringField;
    QFacturasPendNumeroCuenta: TStringField;
    QFacturasPendNumeroSuplidor_1: TSmallintField;
    QFacturasPendNumeroFactura: TStringField;
    QFacturasPendFecha: TDateField;
    QFacturasPendAjuste: TFloatField;
    QFacturasPendCodigo: TStringField;
    QFacturasPendNumeroCuenta_1: TIntegerField;
    QFacturasPendNumeroCheque: TIntegerField;
    QFacturasPendCantidad: TFloatField;
    QFacturasPendDescripcion: TStringField;
    QFacturasPendNumeroTransaccion: TIntegerField;
    QFacturasPendDescuento: TFloatField;
    QFacturasPendPagado: TFloatField;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRGroup2: TQRGroup;
    QRLabel1: TQRLabel;
    QRBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRBand2: TQRBand;
    QRDBText3: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel2: TQRLabel;
    QRExpr3: TQRExpr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRFFacturasPend: TQRFFacturasPend;

implementation

{$R *.DFM}

end.
