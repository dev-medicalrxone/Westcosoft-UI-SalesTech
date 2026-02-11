unit UQRLayaways;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, QuickRpt, Qrctrls, ExtCtrls;

type
  TFQRLayaways = class(TForm)
    QRLayaways: TQuickRep;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSubDetail1: TQRSubDetail;
    TClientes: TTable;
    TLayawayTrans: TTable;
    MasterDS: TDataSource;
    QRExpr1: TQRExpr;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    TClientesNombre: TStringField;
    TClientesApellidoPaterno: TStringField;
    TClientesApellidoMaterno: TStringField;
    TClientesCardholder_ID: TStringField;
    TClientesFechaNacimiento: TDateField;
    TClientesHistorialMedico: TStringField;
    TClientesPlanMedico: TStringField;
    TClientesDoctorPrincipal: TStringField;
    TClientesSexo: TSmallintField;
    TClientesRelacion: TSmallintField;
    TClientesNoGrupo: TStringField;
    TClientesPersonCode: TStringField;
    TClientesDireccion1: TStringField;
    TClientesDireccion2: TStringField;
    TClientesUltimaTransaccion: TDateField;
    TClientesTelefono: TStringField;
    TClientesDeuda: TFloatField;
    TClientesLimiteCredito: TFloatField;
    TClientesNumeroCliente: TIntegerField;
    TClientesCubierta: TStringField;
    TClientesCodigoPostal: TStringField;
    TClientesDeudaLayaway: TFloatField;
    TLayawayTransNumeroCliente: TIntegerField;
    TLayawayTransNumeroTransaccion: TIntegerField;
    TLayawayTransNumeroFactura: TIntegerField;
    TLayawayTransFecha: TDateField;
    TLayawayTransCantidad: TFloatField;
    TLayawayTransCodigo: TStringField;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FQRLayaways: TFQRLayaways;

implementation

{$R *.DFM}

end.
