unit URepListadoArticulos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  TFQRListadoArticulos = class(TForm)
    QRListadoArticulos: TQuickRep;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    QCantInv: TQuery;
    QCantInvNDC: TStringField;
    QCantInvDescripcion: TStringField;
    QCantInvTipo: TStringField;
    QCantInvFechaExpiracion: TDateField;
    QCantInvPrecio: TFloatField;
    QCantInvCodigo: TStringField;
    QCantInvCosto: TFloatField;
    QCantInvRBP: TFloatField;
    QCantInvNumeroSuplidor: TStringField;
    QCantInvTamano: TSmallintField;
    QCantInvCodigoBarra: TStringField;
    QCantInvDepartamento: TSmallintField;
    QCantInvLote: TStringField;
    QCantInvEspecial: TFloatField;
    QCantInvComEspecial: TDateField;
    QCantInvTerminaEspecial: TDateField;
    QCantInvPorcientoDescuento: TStringField;
    QCantInvUltimoCambio: TStringField;
    QCantInvUltimaVenta: TDateField;
    QRLabel8: TQRLabel;
    QRDBText8: TQRDBText;
    QCantInvQtyInventario: TFloatField;
    QCantInvCMaxInventario: TFloatField;
    QCantInvCMinInventario: TFloatField;
    QRBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QValorInventario: TQuery;
    QValorInventarioTCosto: TFloatField;
    QValorInventarioTPrecio: TFloatField;
    QRDBText9: TQRDBText;
    DSValor: TDataSource;
    QRDBText10: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FQRListadoArticulos: TFQRListadoArticulos;

implementation

uses UData;

{$R *.DFM}

end.
