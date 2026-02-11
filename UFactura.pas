unit UFactura;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls, StdCtrls;

type
  TFQRFactura = class(TForm)
    QRFactura: TQuickRep;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    TitleBand1: TQRBand;
    QRSysData3: TQRSysData;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QFactura: TQuery;
    QFacturaCodigo: TStringField;
    QFacturaArticulo: TStringField;
    QFacturaFechaVenta: TDateField;
    QFacturaPrecioVenta: TFloatField;
    QFacturaNumeroTransaccion: TIntegerField;
    QFacturaUsuario: TStringField;
    QFacturaVoid: TStringField;
    QFacturaDepartamento: TSmallintField;
    QFacturaNoReceta: TIntegerField;
    QFacturaCredito: TStringField;
    QFacturaNoCliente: TSmallintField;
    QFacturaGanancia: TFloatField;
    QFacturaDevolucion: TStringField;
    QFacturaPaidout: TStringField;
    QFacturaProductID: TIntegerField;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRBand3: TQRBand;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    TClientes: TTable;
    QRLabel10: TQRLabel;
    QRShape2: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLAtendido: TQRLabel;
    QRLCambio: TQRLabel;
    QRLTarjeta: TQRLabel;
    QRLNoTarjeta: TQRLabel;
    QRRichText1: TQRRichText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel20: TQRLabel;
    QRDBText12: TQRDBText;
    QFacturaPrecioUnitario: TFloatField;
    QRLabel9: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabelCliente: TQRLabel;
    QRLabelDireccion1: TQRLabel;
    QRLabelDireccion2: TQRLabel;
    QRLabelTelefono: TQRLabel;
    QFacturaQty: TFloatField;
    QRRichText2: TQRRichText;
    QRLabel8: TQRLabel;
    QRDBText10: TQRDBText;
    QRRichText3: TQRRichText;
    QFacturaNumeroArticulo: TStringField;
    TClientesNombre: TStringField;
    TClientesApellidoPaterno: TStringField;
    TClientesApellidoMaterno: TStringField;
    TClientesCardholder_ID: TStringField;
    TClientesFechaNacimiento: TDateField;
    TClientesDoctorPrincipal: TStringField;
    TClientesSexo: TSmallintField;
    TClientesDireccion1: TStringField;
    TClientesDireccion2: TStringField;
    TClientesUltimaTransaccion: TDateField;
    TClientesTelefono: TStringField;
    TClientesDeuda: TFloatField;
    TClientesLimiteCredito: TFloatField;
    TClientesNumeroCliente: TIntegerField;
    TClientesCodigoPostal: TStringField;
    TClientesDeudaLayaway: TFloatField;
    TClientesUltimTransLayaway: TDateField;
    TClientesFax: TStringField;
    TClientesCelular: TStringField;
    TClientesInteres: TStringField;
    TClientesInfoAdicional: TMemoField;
    TClientesNombreCompleto: TStringField;
    TClientesDireccionFisica: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FQRFactura: TFQRFactura;

implementation

uses UData;

{$R *.DFM}

end.
