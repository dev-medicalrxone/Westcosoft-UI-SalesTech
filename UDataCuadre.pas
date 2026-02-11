unit UDataCuadre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  TDMCuadreTotal = class(TDataModule)
    QCuadres: TQuery;
    QCuadresTCuadre: TFloatField;
    QCuadresGanancias: TQuery;
    QCuadresGananciasTCuadre: TFloatField;
    QCuadreCreditCards: TQuery;
    QCuadreCreditCardsTCuadre: TFloatField;
    QCuadreTotalDevoluciones: TQuery;
    QCuadreTotalDevolucionesTCuadre: TFloatField;
    QCuadreTotalLayaway: TQuery;
    QCuadreTotalLayawayTCuadre: TFloatField;
    QCuadreAbonoLayaway: TQuery;
    QCuadreAbonoLayawayTCuadre: TFloatField;
    TCuadreTemp: TTable;
    DSCuadreTemp: TDataSource;
    QTotalCredito: TQuery;
    QTotalCreditoTCuadre: TFloatField;
    QTotalAbono: TQuery;
    QTotalAbonoTCuadre: TFloatField;
    QInteres: TQuery;
    QInteresNumeroCliente: TIntegerField;
    QInteresNumeroTransaccion: TIntegerField;
    QInteresNumeroFactura: TIntegerField;
    QInteresFecha: TDateField;
    QInteresCantidad: TFloatField;
    QInteresCodigo: TStringField;
    QInteresPagado: TFloatField;
    QInteresBalance: TFloatField;
    QInteresEscojer: TStringField;
    QInsertCuadre: TQuery;
    QCuadre: TQuery;
    QCuadreTotalPaidout: TQuery;
    QCuadreTotalPaidoutTPaidout: TFloatField;
    QryCreditTransactions: TQuery;
    QryDebitTransactions: TQuery;
    QryCreditTransactionsPocessingCode: TStringField;
    QryCreditTransactionsPOSEntryMode: TStringField;
    QryCreditTransactionsAccountNumber: TStringField;
    QryCreditTransactionsExpirationDate: TStringField;
    QryCreditTransactionsAmount1: TStringField;
    QryCreditTransactionsAmount2: TStringField;
    QryCreditTransactionsOriginalAuthAmount: TStringField;
    QryCreditTransactionsItemNumber: TStringField;
    QryCreditTransactionsBatchNumber: TStringField;
    QryCreditTransactionsActionCode: TStringField;
    QryCreditTransactionsApprovalCode: TStringField;
    QryCreditTransactionsTransactionDate: TStringField;
    QryCreditTransactionsTransactionTime: TStringField;
    QryCreditTransactionsAuthorizedDate: TStringField;
    QryCreditTransactionsAcquirerReferenceData: TStringField;
    QryCreditTransactionsMarketData: TStringField;
    QryCreditTransactionsAVSResultCode: TStringField;
    QryCreditTransactionsRoutingData: TStringField;
    QryCreditTransactionsMerchantType: TStringField;
    QryCreditTransactionsShiftID: TStringField;
    QryCreditTransactionsClerkID: TStringField;
    QryCreditTransactionsTransactionNumber: TIntegerField;
    QryCreditTransactionsCodigodeReferencia: TStringField;
    QryCreditTransactionsTransaccion: TIntegerField;
    QryDebitTransactionsPocessingCode: TStringField;
    QryDebitTransactionsPOSEntryMode: TStringField;
    QryDebitTransactionsAccountNumber: TStringField;
    QryDebitTransactionsExpirationDate: TStringField;
    QryDebitTransactionsAmount1: TStringField;
    QryDebitTransactionsAmount2: TStringField;
    QryDebitTransactionsItemNumber: TStringField;
    QryDebitTransactionsBatchNumber: TStringField;
    QryDebitTransactionsActionCode: TStringField;
    QryDebitTransactionsTransactionDate: TStringField;
    QryDebitTransactionsTransactionTime: TStringField;
    QryDebitTransactionsRoutingData: TStringField;
    QryDebitTransactionsShiftID: TStringField;
    QryDebitTransactionsClerkID: TStringField;
    QryDebitTransactionsTransactionNumber: TIntegerField;
    QryDebitTransactionsMarketData: TStringField;
    QryDebitTransactionsReferenceNumber: TStringField;
    QryDebitTransactionsCodigodeReferencia: TStringField;
    QryDebitTransactionsTransaccion: TIntegerField;
    DSQCuadrePaidout: TDataSource;
    QCuadreDevolucion: TQuery;
    QCuadreDevolucionTDevolucion: TFloatField;
    QInsertTCuadre: TQuery;
    QCuadre2: TQuery;
    QCuadre2departamento: TSmallintField;
    QCuadre2sumPrecioVenta: TFloatField;
    QCuadre2sumGanancia: TFloatField;
    DSCuadre: TDataSource;
    QBorrarCuadreTemp: TQuery;
    QTotalCuadre: TQuery;
    QTotalCuadreTCuadre: TFloatField;
    QCuadre2Total: TQuery;
    QCuadre2Totaldepartamento: TSmallintField;
    QCuadre2TotalsumPrecioVenta: TFloatField;
    QCuadre2TotalsumGanancia: TFloatField;
    TCuadreTempDescripcion: TStringField;
    TCuadreTempGanancia: TFloatField;
    TCuadreTempCuadre: TFloatField;
    TCuadreTempDepartamento: TIntegerField;
    QPaidouts: TQuery;
    QPaidoutsCodigo: TStringField;
    QPaidoutsNumeroArticulo: TStringField;
    QPaidoutsArticulo: TStringField;
    QPaidoutsQty: TFloatField;
    QPaidoutsFechaVenta: TDateField;
    QPaidoutsPrecioVenta: TFloatField;
    QPaidoutsNumeroTransaccion: TIntegerField;
    QPaidoutsUsuario: TStringField;
    QPaidoutsVoid: TStringField;
    QPaidoutsDepartamento: TSmallintField;
    QPaidoutsNoReceta: TIntegerField;
    QPaidoutsCredito: TStringField;
    QPaidoutsNoCliente: TSmallintField;
    QPaidoutsGanancia: TFloatField;
    QPaidoutsDevolucion: TStringField;
    QPaidoutsPaidout: TStringField;
    QPaidoutsProductID: TIntegerField;
    QPaidoutsPrecioUnitario: TFloatField;
    QPaidoutsTotal: TQuery;
    QCuadrePorCaja: TQuery;
    QCuadreCreditCardsPC: TQuery;
    QCuadreTotalPaidoutPC: TQuery;
    QCuadreTotalLayawayPC: TQuery;
    QCuadreAbonoLayawayPC: TQuery;
    QTotalCreditoPC: TQuery;
    QTotalAbonoPC: TQuery;
    QPaidoutsTotalPC: TQuery;
    QCuadreTotalDevolucionesPC: TQuery;
    QCuadreCreditCardsPCTCuadre: TFloatField;
    QCuadreTotalLayawayPCTCuadre: TFloatField;
    QCuadreAbonoLayawayPCTCuadre: TFloatField;
    QTotalCreditoPCTCuadre: TFloatField;
    QTotalAbonoPCTCuadre: TFloatField;
    QCuadreTotalDevolucionesPCTCuadre: TFloatField;
    QCuadreTotalPaidoutPCTPaidout: TFloatField;
    QCuadrePorCajadepartamento: TSmallintField;
    QCuadrePorCajasumPrecioVenta: TFloatField;
    QCuadrePorCajasumGanancia: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCuadreTotal: TDMCuadreTotal;

implementation

{$R *.DFM}

end.
