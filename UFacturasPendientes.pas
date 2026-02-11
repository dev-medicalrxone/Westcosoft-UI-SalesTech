unit UFacturasPendientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, QuickRpt, Qrctrls, ExtCtrls;

type
  TQRFFacturasPendientes = class(TForm)
    QRFacturasPendientes: TQuickRep;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    Suplidores: TTable;
    Facturas: TTable;
    MasterDS: TDataSource;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    FacturasNumeroSuplidor: TSmallintField;
    FacturasNumeroFactura: TStringField;
    FacturasFecha: TDateField;
    FacturasAjuste: TFloatField;
    FacturasCodigo: TStringField;
    FacturasNumeroCuenta: TIntegerField;
    FacturasNumeroCheque: TIntegerField;
    FacturasCantidad: TFloatField;
    FacturasDescripcion: TStringField;
    FacturasNumeroTransaccion: TIntegerField;
    FacturasDescuento: TFloatField;
    FacturasPagado: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRFFacturasPendientes: TQRFFacturasPendientes;

implementation

{$R *.DFM}

end.
