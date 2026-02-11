unit UQRLayawaysMayor30;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, QuickRpt, Qrctrls, ExtCtrls;

type
  TFQRLayawayMayor30 = class(TForm)
    QRLayaways: TQuickRep;
    DetailBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    DataSource1: TDataSource;
    TLayawayTrans: TTable;
    TLayawayTransNumeroCliente: TIntegerField;
    TLayawayTransNumeroTransaccion: TIntegerField;
    TLayawayTransNumeroFactura: TIntegerField;
    TLayawayTransFecha: TDateField;
    TLayawayTransCantidad: TFloatField;
    TLayawayTransCodigo: TStringField;
    QClientesLayaway: TQuery;
    QClientesLayawayNombre: TStringField;
    QClientesLayawayApellidoPaterno: TStringField;
    QClientesLayawayApellidoMaterno: TStringField;
    QClientesLayawayCardholder_ID: TStringField;
    QClientesLayawayFechaNacimiento: TDateField;
    QClientesLayawayHistorialMedico: TStringField;
    QClientesLayawayPlanMedico: TStringField;
    QClientesLayawayDoctorPrincipal: TStringField;
    QClientesLayawaySexo: TSmallintField;
    QClientesLayawayRelacion: TSmallintField;
    QClientesLayawayNoGrupo: TStringField;
    QClientesLayawayPersonCode: TStringField;
    QClientesLayawayDireccion1: TStringField;
    QClientesLayawayDireccion2: TStringField;
    QClientesLayawayUltimaTransaccion: TDateField;
    QClientesLayawayTelefono: TStringField;
    QClientesLayawayDeuda: TFloatField;
    QClientesLayawayLimiteCredito: TFloatField;
    QClientesLayawayNumeroCliente: TIntegerField;
    QClientesLayawayCubierta: TStringField;
    QClientesLayawayCodigoPostal: TStringField;
    QClientesLayawayDeudaLayaway: TFloatField;
    QClientesLayawayUltimTransLayaway: TDateField;
    QRLabel7: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FQRLayawayMayor30: TFQRLayawayMayor30;

implementation

{$R *.DFM}

end.
