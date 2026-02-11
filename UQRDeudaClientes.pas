

unit UQRDeudaClientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, QuickRpt, Qrctrls, ExtCtrls;

type
  TFQRBalanceClientes = class(TForm)
    QRBalanceClientes: TQuickRep;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    MasterTable: TTable;
    DetailTable: TTable;
    MasterDS: TDataSource;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    DetailTableNumeroCliente: TIntegerField;
    DetailTableNumeroTransaccion: TIntegerField;
    DetailTableNumeroFactura: TIntegerField;
    DetailTableFecha: TDateField;
    DetailTableCantidad: TFloatField;
    DetailTableCodigo: TStringField;
    DetailTablePagado: TFloatField;
    DetailTableBalance: TFloatField;
    DetailTableEscojer: TStringField;
    QRExpr1: TQRExpr;
    QRDBText1: TQRDBText;
    MasterTableNombre: TStringField;
    MasterTableApellidoPaterno: TStringField;
    MasterTableApellidoMaterno: TStringField;
    MasterTableCardholder_ID: TStringField;
    MasterTableFechaNacimiento: TDateField;
    MasterTableDireccion1: TStringField;
    MasterTableDireccion2: TStringField;
    MasterTableUltimaTransaccion: TDateField;
    MasterTableTelefono: TStringField;
    MasterTableDeuda: TFloatField;
    MasterTableLimiteCredito: TFloatField;
    MasterTableNumeroCliente: TIntegerField;
    MasterTableCodigoPostal: TStringField;
    MasterTableDeudaLayaway: TFloatField;
    MasterTableUltimTransLayaway: TDateField;
    MasterTableFax: TStringField;
    MasterTableCelular: TStringField;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel7: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRDBText8: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel8: TQRLabel;
    QRSysData1: TQRSysData;
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
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QCorriente: TQuery;
    QCorrienteTTotal: TFloatField;
    QRLabel9: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText13: TQRDBText;
    Q30_60: TQuery;
    Q60_90: TQuery;
    Q90oMas: TQuery;
    QRLabel11: TQRLabel;
    QRDBText14: TQRDBText;
    Q30_60TTotal: TFloatField;
    Q60_90TTotal: TFloatField;
    Q90oMasTTotal: TFloatField;
    QRLabel12: TQRLabel;
    QRDBText15: TQRDBText;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FQRBalanceClientes: TFQRBalanceClientes;

implementation

{$R *.DFM}

end.
