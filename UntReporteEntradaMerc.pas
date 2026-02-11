unit UntReporteEntradaMerc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, QuickRpt, Qrctrls, ExtCtrls;

type
  TQRMDForm = class(TForm)
    QREntradaMercancia: TQuickRep;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    MasterDS: TDataSource;
    TSuplidores: TTable;
    TOrdenes: TTable;
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
    TSuplidoresTotalComprado: TFloatField;
    DSSuplidores: TDataSource;
    TOrderHeader: TTable;
    TOrderHeaderInternalNumber: TIntegerField;
    TOrderHeaderOrderNumber: TStringField;
    TOrderHeaderOrderDescription: TStringField;
    TOrderHeaderTotalInvoiced: TFloatField;
    TOrderHeaderOrderDate: TDateField;
    TOrderHeaderNumeroSuplidor: TIntegerField;
    TOrdenesBarCode: TStringField;
    TOrdenesMedicamento: TStringField;
    TOrdenesCantidad: TSmallintField;
    TOrdenesFechaOrden: TDateField;
    TOrdenesSuplidor: TIntegerField;
    TOrdenesPrecioVenta: TFloatField;
    TOrdenesUsuario: TStringField;
    TOrdenesNumeroFactura: TIntegerField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel7: TQRLabel;
    QSumarArticulos: TQuery;
    QSumarArticulosTVenta: TFloatField;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRMDForm: TQRMDForm;

implementation

{$R *.DFM}

end.
