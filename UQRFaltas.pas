unit UQRFaltas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  TFQRFaltas = class(TForm)
    QRFaltas: TQuickRep;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QFaltas: TQuery;
    QRDBText1: TQRDBText;
    QFaltasNDC: TStringField;
    QFaltasDescripcion: TStringField;
    QFaltasTipo: TStringField;
    QFaltasFechaExpiracion: TDateField;
    QFaltasPrecio: TFloatField;
    QFaltasCodigo: TStringField;
    QFaltasCosto: TFloatField;
    QFaltasRBP: TFloatField;
    QFaltasNumeroSuplidor: TStringField;
    QFaltasTamano: TSmallintField;
    QFaltasCodigoBarra: TStringField;
    QFaltasDepartamento: TSmallintField;
    QFaltasLote: TStringField;
    QFaltasEspecial: TFloatField;
    QFaltasComEspecial: TDateField;
    QFaltasTerminaEspecial: TDateField;
    QFaltasPorcientoDescuento: TStringField;
    QFaltasUltimoCambio: TStringField;
    QFaltasUltimaVenta: TDateField;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QFaltasQtyInventario: TFloatField;
    QFaltasCMaxInventario: TFloatField;
    QFaltasCMinInventario: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FQRFaltas: TFQRFaltas;

implementation

{$R *.DFM}

end.
