unit UQRListadoPorSuplidor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  TFQRListadoSuplidor = class(TForm)
    QRListadoSuplidor: TQuickRep;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QListadoSuplidor: TQuery;
    QListadoSuplidorNDC: TStringField;
    QListadoSuplidorDescripcion: TStringField;
    QListadoSuplidorTipo: TStringField;
    QListadoSuplidorFechaExpiracion: TDateField;
    QListadoSuplidorPrecio: TFloatField;
    QListadoSuplidorCodigo: TStringField;
    QListadoSuplidorCosto: TFloatField;
    QListadoSuplidorRBP: TFloatField;
    QListadoSuplidorNumeroSuplidor: TStringField;
    QListadoSuplidorTamano: TSmallintField;
    QListadoSuplidorCodigoBarra: TStringField;
    QListadoSuplidorDepartamento: TSmallintField;
    QListadoSuplidorLote: TStringField;
    QListadoSuplidorEspecial: TFloatField;
    QListadoSuplidorComEspecial: TDateField;
    QListadoSuplidorTerminaEspecial: TDateField;
    QListadoSuplidorPorcientoDescuento: TStringField;
    QListadoSuplidorUltimoCambio: TStringField;
    QListadoSuplidorUltimaVenta: TDateField;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRExpr1: TQRExpr;
    QListadoSuplidorQtyInventario: TFloatField;
    QListadoSuplidorCMaxInventario: TFloatField;
    QListadoSuplidorCMinInventario: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FQRListadoSuplidor: TFQRListadoSuplidor;

implementation

{$R *.DFM}

end.
