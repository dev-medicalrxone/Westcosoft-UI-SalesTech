unit UListadoFacturas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, QuickRpt, Qrctrls, ExtCtrls;

type
  TFQREstadoCuentaIndividual2 = class(TForm)
    QRBalanceClientesIndividual: TQuickRep;
    DetailBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText15: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRDBText8: TQRDBText;
    QRLabel8: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    Q60_90: TQuery;
    Q60_90TTotal: TFloatField;
    Q30_60: TQuery;
    Q30_60TTotal: TFloatField;
    QCorriente: TQuery;
    QCorrienteTTotal: TFloatField;
    TStore: TTable;
    TStoreMessageID: TStringField;
    TStoreVersion: TStringField;
    TStoreRoutingData: TStringField;
    TStoreBankID: TStringField;
    TStoreMerchantID: TStringField;
    TStoreTerminalType: TStringField;
    TStoreModemComPort: TIntegerField;
    TStoreStoreName: TStringField;
    TStoreStoreTelephone: TStringField;
    TStoreStoreAddress: TStringField;
    TStoreFacturaRecibo: TStringField;
    TStoreSettlementBankID: TStringField;
    MasterDS: TDataSource;
    QClientes: TQuery;
    QClientesNombre: TStringField;
    QClientesApellidoPaterno: TStringField;
    QClientesApellidoMaterno: TStringField;
    QClientesCardholder_ID: TStringField;
    QClientesFechaNacimiento: TDateField;
    QClientesHistorialMedico: TStringField;
    QClientesPlanMedico: TStringField;
    QClientesDoctorPrincipal: TStringField;
    QClientesSexo: TSmallintField;
    QClientesRelacion: TSmallintField;
    QClientesNoGrupo: TStringField;
    QClientesPersonCode: TStringField;
    QClientesDireccion1: TStringField;
    QClientesDireccion2: TStringField;
    QClientesUltimaTransaccion: TDateField;
    QClientesTelefono: TStringField;
    QClientesDeuda: TFloatField;
    QClientesLimiteCredito: TFloatField;
    QClientesNumeroCliente: TIntegerField;
    QClientesCubierta: TStringField;
    QClientesCodigoPostal: TStringField;
    QClientesDeudaLayaway: TFloatField;
    QClientesUltimTransLayaway: TDateField;
    QClientesFax: TStringField;
    QClientesCelular: TStringField;
    QClientesInteres: TStringField;
    DetailTable: TTable;
    DetailTableNumeroCliente: TIntegerField;
    DetailTableNumeroTransaccion: TIntegerField;
    DetailTableNumeroFactura: TIntegerField;
    DetailTableFecha: TDateField;
    DetailTableCantidad: TFloatField;
    DetailTableCodigo: TStringField;
    DetailTablePagado: TFloatField;
    DetailTableBalance: TFloatField;
    DetailTableEscojer: TStringField;
    QTransactions: TQuery;
    QTransactionsNumeroCliente: TIntegerField;
    QTransactionsNumeroTransaccion: TIntegerField;
    QTransactionsNumeroFactura: TIntegerField;
    QTransactionsFecha: TDateField;
    QTransactionsCantidad: TFloatField;
    QTransactionsCodigo: TStringField;
    QTransactionsPagado: TFloatField;
    QTransactionsBalance: TFloatField;
    QTransactionsEscojer: TStringField;
    QTransactionsInteresFacturas: TStringField;
    Q90oMas: TQuery;
    Q90oMasTTotal: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FQREstadoCuentaIndividual2: TFQREstadoCuentaIndividual2;

implementation

{$R *.DFM}

end.
