unit UData;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  TData = class(TDataModule)
    DatabaseFT: TDatabase;
    TCreditDetailRecord: TTable;
    DSCreditDetailRecord: TDataSource;
    TCreditDetailRecordPocessingCode: TStringField;
    TCreditDetailRecordPOSEntryMode: TStringField;
    TCreditDetailRecordAccountNumber: TStringField;
    TCreditDetailRecordExpirationDate: TStringField;
    TCreditDetailRecordAmount1: TStringField;
    TCreditDetailRecordAmount2: TStringField;
    TCreditDetailRecordOriginalAuthAmount: TStringField;
    TCreditDetailRecordItemNumber: TStringField;
    TCreditDetailRecordBatchNumber: TStringField;
    TCreditDetailRecordActionCode: TStringField;
    TCreditDetailRecordApprovalCode: TStringField;
    TCreditDetailRecordTransactionDate: TStringField;
    TCreditDetailRecordTransactionTime: TStringField;
    TCreditDetailRecordAuthorizedDate: TStringField;
    TCreditDetailRecordAcquirerReferenceData: TStringField;
    TCreditDetailRecordMarketData: TStringField;
    TCreditDetailRecordAVSResultCode: TStringField;
    TCreditDetailRecordRoutingData: TStringField;
    TCreditDetailRecordMerchantType: TStringField;
    TCreditDetailRecordShiftID: TStringField;
    TCreditDetailRecordClerkID: TStringField;
    TCreditDetailRecordTransactionNumber: TIntegerField;
    TDebitDetailRecord: TTable;
    DSDetailRecord: TDataSource;
    TDebitDetailRecordPocessingCode: TStringField;
    TDebitDetailRecordPOSEntryMode: TStringField;
    TDebitDetailRecordAccountNumber: TStringField;
    TDebitDetailRecordExpirationDate: TStringField;
    TDebitDetailRecordAmount1: TStringField;
    TDebitDetailRecordAmount2: TStringField;
    TDebitDetailRecordItemNumber: TStringField;
    TDebitDetailRecordBatchNumber: TStringField;
    TDebitDetailRecordActionCode: TStringField;
    TDebitDetailRecordTransactionDate: TStringField;
    TDebitDetailRecordTransactionTime: TStringField;
    TDebitDetailRecordRoutingData: TStringField;
    TDebitDetailRecordShiftID: TStringField;
    TDebitDetailRecordClerkID: TStringField;
    TDebitDetailRecordTransactionNumber: TIntegerField;
    TDebitDetailRecordMarketData: TStringField;
    TDebitDetailRecordReferenceNumber: TStringField;
    TPOS: TTable;
    DSPOS: TDataSource;
    QNoCredCardPurch: TQuery;
    QNoDebitCardPurch: TQuery;
    QCredCardPurchAmount: TQuery;
    QDebitCardPurchAmount: TQuery;
    QNoCredCardReturns: TQuery;
    QNoDebitCardReturns: TQuery;
    QCredCardReturnAmount: TQuery;
    QDebitCardReturnAmount: TQuery;
    TDebitDetailRecordCodigodeReferencia: TStringField;
    TCreditDetailRecordCodigodeReferencia: TStringField;
    QNoCredCardPurchTNoCredCardPurch: TIntegerField;
    QCredCardPurchAmountTCAmount1: TFloatField;
    QDebitCardPurchAmountTDAmount1: TFloatField;
    QNoCredCardReturnsTNoCredCardReturns: TIntegerField;
    QNoDebitCardReturnsTNoDebitCardReturns: TIntegerField;
    QCredCardReturnAmountTCReturnAmount1: TFloatField;
    QDebitCardReturnAmountTDReturnAmount1: TFloatField;
    QNoDebitCardPurchTNoDebitCardPurch: TIntegerField;
    TActionCodes: TTable;
    DSActionCodes: TDataSource;
    TActionCodesCode: TStringField;
    TActionCodesVerbiage: TStringField;
    TActionCodesDescription: TStringField;
    TActionCodeSettlement: TTable;
    DSActionCodesSettlement: TDataSource;
    TActionCodeSettlementCode: TStringField;
    TActionCodeSettlementVerbiage: TStringField;
    TActionCodeSettlementDescription: TStringField;
    TInventarioPiso: TTable;
    DSInventarioPiso: TDataSource;
    TInventarioPisoNDC: TStringField;
    TInventarioPisoDescripcion: TStringField;
    TInventarioPisoTipo: TStringField;
    TInventarioPisoFechaExpiracion: TDateField;
    TInventarioPisoPrecio: TFloatField;
    TInventarioPisoCodigo: TStringField;
    TInventarioPisoCosto: TFloatField;
    TInventarioPisoRBP: TFloatField;
    TInventarioPisoNumeroSuplidor: TStringField;
    TInventarioPisoTamano: TSmallintField;
    TInventarioPisoCodigoBarra: TStringField;
    TInventarioPisoDepartamento: TSmallintField;
    TInventarioPisoLote: TStringField;
    TInventarioPisoEspecial: TFloatField;
    TInventarioPisoComEspecial: TDateField;
    TInventarioPisoTerminaEspecial: TDateField;
    TInventarioPisoPorcientoDescuento: TStringField;
    TInventarioPisoUltimoCambio: TStringField;
    TInventarioPisoUltimaVenta: TDateField;
    QTotalTrans: TQuery;
    QTotalTransTotalTrans: TFloatField;
    DSTotalTrans: TDataSource;
    TNoTrans: TTable;
    DSNoTrans: TDataSource;
    TNoTransNumeroTransaccion: TIntegerField;
    TPasswords: TTable;
    DSPasswords: TDataSource;
    TPasswordsUserName: TStringField;
    TPasswordsPassword: TStringField;
    TPasswordsIniciales: TStringField;
    QUpdateInventory: TQuery;
    DSUpdateInventory: TDataSource;
    TClientes: TTable;
    DSClientes: TDataSource;
    TPasswordsNivel: TIntegerField;
    TClientTransactions: TTable;
    DSClientTransactions: TDataSource;
    TClientTransactionsNumeroCliente: TIntegerField;
    TClientTransactionsNumeroTransaccion: TIntegerField;
    TClientTransactionsFecha: TDateField;
    TClientTransactionsCantidad: TFloatField;
    TClientTransactionsCodigo: TStringField;
    TClientTransactionsNumeroFactura: TIntegerField;
    QCantidadCredito: TQuery;
    QCantidadDebito: TQuery;
    QCantidadCreditoTCredito: TFloatField;
    QCantidadDebitoTDebito: TFloatField;
    QCuadres: TQuery;
    DSDept: TDataSource;
    QCuadresTCuadre: TFloatField;
    QCuadreCreditCards: TQuery;
    TTargetas: TTable;
    DSTargetas: TDataSource;
    QBorrarTrans: TQuery;
    TLayAway: TTable;
    DSLayAway: TDataSource;
    QBuscarClientes: TQuery;
    DSBuscarClientes: TDataSource;
    QCountClients: TQuery;
    QCountClientsTCount: TIntegerField;
    QCuadreCreditCardsTCuadre: TFloatField;
    TTargetasDescripcion: TStringField;
    TTargetasCodigo: TStringField;
    QTotalCredito: TQuery;
    QTotalCreditoTCuadre: TFloatField;
    QTotalAbono: TQuery;
    QTotalAbonoTCuadre: TFloatField;
    TCuadreTemp: TTable;
    DSCuadreTemp: TDataSource;
    TCuadreTempDescripcion: TStringField;
    TCuadreTempGanancia: TFloatField;
    TCuadreTempCuadre: TFloatField;
    QBorrarTempCuadre: TQuery;
    TNoTransTotalFinal: TFloatField;
    TLayAwayNumeroCliente: TIntegerField;
    TLayAwayNumeroTransaccion: TIntegerField;
    TLayAwayNumeroFactura: TIntegerField;
    TLayAwayFecha: TDateField;
    TLayAwayCantidad: TFloatField;
    TLayAwayCodigo: TStringField;
    QTotalLayawayCred: TQuery;
    QTotalLayawayDebito: TQuery;
    QTotalLayawayDebitoTDebito: TFloatField;
    QTotalLayawayCredTCredito: TFloatField;
    QIncrementTrans: TQuery;
    QDefinirTrans: TQuery;
    QUpdateInv: TQuery;
    QInsertLayawayTrans: TQuery;
    QInsertCredTrans: TQuery;
    QUpdateClientDebt: TQuery;
    QUpdateLayawayDebt: TQuery;
    QBorrarLayawayTrans: TQuery;
    QCuadreTotalLayaway: TQuery;
    QCuadreTotalLayawayTCuadre: TFloatField;
    QCuadreAbonoLayaway: TQuery;
    QCuadreAbonoLayawayTCuadre: TFloatField;
    QCuadreTotalDevoluciones: TQuery;
    QCuadreTotalDevolucionesTCuadre: TFloatField;
    QCuadresGanancias: TQuery;
    QCuadresGananciasTCuadre: TFloatField;
    TNoTransTotalGanancias: TFloatField;
    TSuplidores: TTable;
    DSSuplidores: TDataSource;
    QAdeudado: TQuery;
    DSAdeudado: TDataSource;
    QDiscount: TQuery;
    DSDiscount: TDataSource;
    QAdeudadoTAdeudado: TFloatField;
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
    QDiscountTDescuento2: TFloatField;
    QPostear: TQuery;
    TIncExp: TTable;
    DSIncExp: TDataSource;
    QAjuste: TQuery;
    DSAjuste: TDataSource;
    QAjusteTAjuste: TFloatField;
    TCreditDebitSetup: TTable;
    DSCreditDebitSetup: TDataSource;
    QUpdateInvDevo: TQuery;
    TIncExpNumero: TIntegerField;
    TIncExpIncomeExpense: TStringField;
    TIncExpDescripcion: TStringField;
    TIncExpCantidad: TFloatField;
    TClientTrans: TTable;
    QBuscarClientesNombre: TStringField;
    QBuscarClientesApellidoPaterno: TStringField;
    QBuscarClientesApellidoMaterno: TStringField;
    QBuscarClientesCardholder_ID: TStringField;
    QBuscarClientesFechaNacimiento: TDateField;
    QBuscarClientesDireccion1: TStringField;
    QBuscarClientesDireccion2: TStringField;
    QBuscarClientesUltimaTransaccion: TDateField;
    QBuscarClientesTelefono: TStringField;
    QBuscarClientesDeuda: TFloatField;
    QBuscarClientesLimiteCredito: TFloatField;
    QBuscarClientesNumeroCliente: TIntegerField;
    QBuscarClientesCodigoPostal: TStringField;
    QBuscarClientesDeudaLayaway: TFloatField;
    QBuscarClientesUltimTransLayaway: TDateField;
    QBuscarClientesFax: TStringField;
    QBuscarClientesCelular: TStringField;
    DSClientTra: TDataSource;
    TClientTransNumeroCliente: TIntegerField;
    TClientTransNumeroTransaccion: TIntegerField;
    TClientTransNumeroFactura: TIntegerField;
    TClientTransFecha: TDateField;
    TClientTransCantidad: TFloatField;
    TClientTransCodigo: TStringField;
    TClientTransPagado: TFloatField;
    TClientTransEscojer: TStringField;
    TClientTransBalance: TFloatField;
    TClientTransactionsPagado: TFloatField;
    TClientTransactionsEscojer: TStringField;
    TClientTransactionsBalance: TFloatField;
    DSClientTransDetail: TDataSource;
    QCreditos: TQuery;
    QCreditosTCredito: TFloatField;
    UpdateTrans: TQuery;
    UpdateTransTCredito: TFloatField;
    Query1: TQuery;
    TClientTransDetail: TTable;
    TClientTransDetailNumeroFactura: TIntegerField;
    TClientTransDetailNumeroTransaccion: TIntegerField;
    TClientTransDetailCantidad: TFloatField;
    TClientTransDetailFecha: TDateField;
    TClientTransDetailCodigo: TStringField;
    TClientTransDetailNumeroCliente: TIntegerField;
    QCreditosPorFactura: TQuery;
    QCreditosPorFacturaTCredito: TFloatField;
    QIncrementTrans2: TQuery;
    TPOSCodigo: TStringField;
    TPOSArticulo: TStringField;
    TPOSFechaVenta: TDateField;
    TPOSPrecioVenta: TFloatField;
    TPOSNumeroTransaccion: TIntegerField;
    TPOSUsuario: TStringField;
    TPOSVoid: TStringField;
    TPOSDepartamento: TSmallintField;
    TPOSNoReceta: TIntegerField;
    TPOSCredito: TStringField;
    TPOSNoCliente: TSmallintField;
    TPOSGanancia: TFloatField;
    TPOSDevolucion: TStringField;
    TPOSPaidout: TStringField;
    TPOSProductID: TIntegerField;
    TPOSPrecioUnitario: TFloatField;
    QBorrarClientTransDetail: TQuery;
    QPagado: TQuery;
    QPagadoTPagado: TFloatField;
    TPOSQty: TFloatField;
    TInventarioPisoQtyInventario: TFloatField;
    TInventarioPisoCMaxInventario: TFloatField;
    TInventarioPisoCMinInventario: TFloatField;
    TClientTransactionsInteresFacturas: TStringField;
    QCreditosDetail: TQuery;
    QCreditosDetailTAbonos: TFloatField;
    QPOSCodigo: TStringField;
    QPOSArticulo: TStringField;
    QPOSQty: TFloatField;
    QPOSFechaVenta: TDateField;
    QPOSPrecioVenta: TFloatField;
    QPOSNumeroTransaccion: TIntegerField;
    QPOSUsuario: TStringField;
    QPOSVoid: TStringField;
    QPOSDepartamento: TSmallintField;
    QPOSNoReceta: TIntegerField;
    QPOSCredito: TStringField;
    QPOSNoCliente: TSmallintField;
    QPOSGanancia: TFloatField;
    QPOSDevolucion: TStringField;
    QPOSPaidout: TStringField;
    QPOSProductID: TIntegerField;
    QPOSPrecioUnitario: TFloatField;
    DataBaseDosFarmacia: TDatabase;
    TRecetas: TTable;
    TRecetasN_RECETA: TFloatField;
    TRecetasC_NAME: TStringField;
    TRecetasC_LAST: TStringField;
    TRecetasC_SECOND: TStringField;
    TRecetasNDC: TStringField;
    TRecetasMEDICAMENT: TStringField;
    TRecetasFECHA_EXPI: TDateField;
    TRecetasFECHA_VENT: TDateField;
    TRecetasCANT_PRESC: TFloatField;
    TRecetasCANT_DIS: TFloatField;
    TRecetasCASH_PLAN: TStringField;
    TRecetasPAGO: TFloatField;
    TRecetasDEDUCIBLE: TFloatField;
    TRecetasPAGO_PLAN: TFloatField;
    TRecetasREFILL: TSmallintField;
    TRecetasREFILL2: TSmallintField;
    TRecetasCARD_HID: TStringField;
    TRecetasBIN: TStringField;
    TRecetasSEX: TSmallintField;
    TRecetasRELATION: TSmallintField;
    TRecetasDAYS_SUP: TSmallintField;
    TRecetasPRESC_ID: TStringField;
    TRecetasLICENCIA: TSmallintField;
    TRecetasAUTH_NO: TStringField;
    TRecetasDAW: TStringField;
    TRecetasUSUAL_CUST: TFloatField;
    TRecetasRBP: TFloatField;
    TRecetasDATE_RXW: TDateField;
    TRecetasPRECIO_FAC: TFloatField;
    TRecetasLABEL1: TStringField;
    TRecetasLABEL2: TStringField;
    TRecetasLABEL3: TStringField;
    TRecetasMEZCLA: TStringField;
    TRecetasATENDI_POR: TStringField;
    TRecetasNO_CLIENTE: TFloatField;
    TRecetasNO_REF_AUT: TSmallintField;
    TRecetasCOMP_CODE: TStringField;
    TRecetasHORA: TStringField;
    TRecetasPAGADA: TBooleanField;
    TRecetasPROC_CONT: TStringField;
    TRecetasMET_QUANT: TFloatField;
    TRecetasNEW_REF_CO: TSmallintField;
    TRecetasING_COST: TFloatField;
    TRecetasFE_RECETA: TDateField;
    TRecetasDOCTOR: TStringField;
    TRecetasCOSTO_RX: TFloatField;
    TRecetasGANANCIA: TFloatField;
    TRecetasPLAN_MED: TStringField;
    TOTC: TTable;
    TOTCITEM_NO: TStringField;
    TOTCITEM: TStringField;
    TOTCQUANTITY: TSmallintField;
    TOTCFECHA_VENT: TDateField;
    TOTCPRECIO: TFloatField;
    TOTCNO_FACTURA: TFloatField;
    TOTCDEPT: TStringField;
    TOTCPOR_DESC: TFloatField;
    QTransacciones: TQuery;
    DSTransacciones: TDataSource;
    QTransaccionesNumeroCliente: TIntegerField;
    QTransaccionesNumeroTransaccion: TIntegerField;
    QTransaccionesNumeroFactura: TIntegerField;
    QTransaccionesFecha: TDateField;
    QTransaccionesCantidad: TFloatField;
    QTransaccionesCodigo: TStringField;
    QTransaccionesPagado: TFloatField;
    QTransaccionesBalance: TFloatField;
    QTransaccionesEscojer: TStringField;
    QTransaccionesInteresFacturas: TStringField;
    TClientTransDetail2: TTable;
    TClientTransDetail2NumeroCliente: TIntegerField;
    TClientTransDetail2NumeroFactura: TIntegerField;
    TClientTransDetail2Fecha: TDateField;
    TClientTransDetail2Cantidad: TFloatField;
    TClientTransDetail2Codigo: TStringField;
    TClientTransDetail2NumeroTransaccion: TIntegerField;
    DSClientTransDetail2: TDataSource;
    QCuadrePaidout: TQuery;
    QCuadrePaidoutTPaidout: TFloatField;
    TClientTransactions2: TTable;
    TClientTransactions2NumeroCliente: TIntegerField;
    TClientTransactions2NumeroTransaccion: TIntegerField;
    TClientTransactions2NumeroFactura: TIntegerField;
    TClientTransactions2Fecha: TDateField;
    TClientTransactions2Cantidad: TFloatField;
    TClientTransactions2Codigo: TStringField;
    TClientTransactions2Pagado: TFloatField;
    TClientTransactions2Balance: TFloatField;
    TClientTransactions2Escojer: TStringField;
    TClientTransactions2InteresFacturas: TStringField;
    QUpdateTrans: TQuery;
    DSClientTransactions2: TDataSource;
    QTotalAbonos: TQuery;
    QTotalAbonosTAbono: TFloatField;
    QTransacciones2: TQuery;
    QTransacciones2NumeroCliente: TIntegerField;
    QTransacciones2NumeroTransaccion: TIntegerField;
    QTransacciones2NumeroFactura: TIntegerField;
    QTransacciones2Fecha: TDateField;
    QTransacciones2Cantidad: TFloatField;
    QTransacciones2Codigo: TStringField;
    QTransacciones2Pagado: TFloatField;
    QTransacciones2Balance: TFloatField;
    QTransacciones2Escojer: TStringField;
    QTransacciones2InteresFacturas: TStringField;
    QBorrarClientTransDetail2: TQuery;
    QPOSNumeroArticulo: TStringField;
    TPOSNumeroArticulo: TStringField;
    TCreditDetailRecordTransaccion: TIntegerField;
    TDebitDetailRecordTransaccion: TIntegerField;
    TCreditDebitSetupMessageID: TStringField;
    TCreditDebitSetupVersion: TStringField;
    TCreditDebitSetupRoutingData: TStringField;
    TCreditDebitSetupBankID: TStringField;
    TCreditDebitSetupMerchantID: TStringField;
    TCreditDebitSetupTerminalType: TStringField;
    TCreditDebitSetupModemComPort: TIntegerField;
    TCreditDebitSetupStoreName: TStringField;
    TCreditDebitSetupStoreTelephone: TStringField;
    TCreditDebitSetupStoreAddress: TStringField;
    TCreditDebitSetupFacturaRecibo: TStringField;
    TCreditDebitSetupSettlementBankID: TStringField;
    TCreditDebitSetupCheque: TIntegerField;
    TCreditDebitSetupTelefono: TStringField;
    TCreditDebitSetupDosWindows: TStringField;
    TCreditDebitSetupPoleDisplayComPort: TIntegerField;
    QBuscarArticulo: TQuery;
    DSBuscarArticulo: TDataSource;
    QBuscarArticuloNDC: TStringField;
    QBuscarArticuloDescripcion: TStringField;
    QBuscarArticuloTipo: TStringField;
    QBuscarArticuloQtyInventario: TFloatField;
    QBuscarArticuloCMaxInventario: TFloatField;
    QBuscarArticuloCMinInventario: TFloatField;
    QBuscarArticuloFechaExpiracion: TDateField;
    QBuscarArticuloPrecio: TFloatField;
    QBuscarArticuloCodigo: TStringField;
    QBuscarArticuloCosto: TFloatField;
    QBuscarArticuloRBP: TFloatField;
    QBuscarArticuloNumeroSuplidor: TStringField;
    QBuscarArticuloTamano: TSmallintField;
    QBuscarArticuloCodigoBarra: TStringField;
    QBuscarArticuloDepartamento: TSmallintField;
    QBuscarArticuloLote: TStringField;
    QBuscarArticuloEspecial: TFloatField;
    QBuscarArticuloComEspecial: TDateField;
    QBuscarArticuloTerminaEspecial: TDateField;
    QBuscarArticuloPorcientoDescuento: TStringField;
    QBuscarArticuloUltimoCambio: TStringField;
    QBuscarArticuloUltimaVenta: TDateField;
    QAnadirPOS: TQuery;
    DSQCuadrePaidout: TDataSource;
    TCuadreTempDepartamento: TIntegerField;
    QBorrarTransSettlementResp: TQuery;
    QInsertSettlementResp: TQuery;
    TDebitDetailRecordFecha: TDateField;
    TCreditDetailRecordFecha: TDateField;
    TCreditDebitSetupHeading: TStringField;
    TCreditDebitSetupStoreZipCode: TStringField;
    TCreditDebitSetupPoleDisplayMessage: TStringField;
    TCreditCard: TTable;
    TCreditCardCard: TStringField;
    TCreditCardAcquirerReferenceData: TStringField;
    TCreditCardNumber: TIntegerField;
    QIncrementarNoPaciente: TQuery;
    TRxNumber: TTable;
    TRxNumberNumeroPaciente: TIntegerField;
    TPrescriptions: TTable;
    TPrescriptionsNumeroReceta: TIntegerField;
    TOTCWin: TTable;
    TOTCWinOTCNumber: TIntegerField;
    TOTCWinNDC: TStringField;
    TOTCWinQty: TIntegerField;
    TOTCWinMedicamento: TStringField;
    TOTCWinTotal: TFloatField;
    TOTCWinAtendidoPor: TStringField;
    TPasswordsAnadirRecetas: TStringField;
    TPasswordsHistorialRecetas: TStringField;
    TPasswordsInventarioPiso: TStringField;
    TPasswordsReportes: TStringField;
    TPasswordsInventarioRx: TStringField;
    TPasswordsDoctores: TStringField;
    TPasswordsPacientes: TStringField;
    TPasswordsOTC: TStringField;
    TPasswordsSuplidores: TStringField;
    TPasswordsCuentaBancaria: TStringField;
    TPasswordsPedidosMercancia: TStringField;
    TPasswordsThirdParty: TStringField;
    TPasswordsCambiarPassword: TStringField;
    TPasswordsTargetaCredito: TStringField;
    TPasswordsCuadres: TStringField;
    TPasswordsSetup: TStringField;
    TPasswordsCambiarPreciosPOS: TStringField;
    DSQPOS: TDataSource;
    TCreditDebitSetupFarmacia: TStringField;
    TPasswordsEditarFacturasSup: TStringField;
    TCreditDebitSetupLabelLongForm: TStringField;
    TCreditDebitSetupSearchBy: TStringField;
    TPasswordsEditarFacturasCred: TStringField;
    TPrescriptionsMedicamento: TStringField;
    TPrescriptionsPrecioVenta: TFloatField;
    TPrescriptionsDeducible: TFloatField;
    TPrescriptionsGanancia: TFloatField;
    TPrescriptionsCashPlan: TStringField;
    TPrescriptionsCantidadDespachada: TFloatField;
    TPOSNoCaja: TIntegerField;
    TOTCWinCobrado: TStringField;
    TPasswordsBorrarRecetas: TStringField;
    TPasswordsDescuento: TStringField;
    QPOSNoCaja: TIntegerField;
    QPOSDescuento: TFloatField;
    QBorrarTransacciones: TQuery;
    TOrderHeader: TTable;
    TOrderHeaderInternalNumber: TIntegerField;
    TOrderHeaderOrderNumber: TStringField;
    TOrderHeaderOrderDescription: TStringField;
    TOrderHeaderTotalInvoiced: TFloatField;
    TOrderHeaderOrderDate: TDateField;
    TOrderHeaderNumeroSuplidor: TIntegerField;
    DSOrderHeader: TDataSource;
    DSInventario: TDataSource;
    QSumarFacturas: TQuery;
    QSumarFacturasTFactura: TFloatField;
    DSSumarData: TDataSource;
    TOrdenes: TTable;
    DSOrdenes: TDataSource;
    TOrdenesBarCode: TStringField;
    TOrdenesMedicamento: TStringField;
    TOrdenesCantidad: TSmallintField;
    TOrdenesFechaOrden: TDateField;
    TOrdenesSuplidor: TIntegerField;
    TOrdenesPrecioVenta: TFloatField;
    TOrdenesUsuario: TStringField;
    TOrdenesNumeroFactura: TIntegerField;
    TPasswordsBorrarTransacciones: TStringField;
    TPasswordsNumeroTerminal: TStringField;
    TPasswordsBorrarInventario: TStringField;
    TPasswordsBorrarPaciente: TStringField;
    TPasswordsCambiarTurno: TStringField;
    QPOSTurno: TIntegerField;
    TPasswordsCuadreParcial: TStringField;
    TPasswordsCuadreTotal: TStringField;
    TPasswordsVerTransacciones: TStringField;
    QUpdateOTC: TQuery;
    QPOS: TQuery;
    TDept: TTable;
    TDeptDepartamento: TIntegerField;
    TDeptDescripcion: TStringField;
    TDeptCuadre: TFloatField;
    TDeptGanancia: TFloatField;
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
    QryBorrarTrans: TQuery;
    procedure TPOSAfterPost(DataSet: TDataSet);
    procedure TPOSAfterDelete(DataSet: TDataSet);
    procedure TClientesAfterPost(DataSet: TDataSet);
    procedure TSuplidoresAfterPost(DataSet: TDataSet);
    procedure TClientTransDetailAfterDelete(DataSet: TDataSet);
    procedure TClientTransactionsBeforeDelete(DataSet: TDataSet);
    procedure TClientTransactionsAfterDelete(DataSet: TDataSet);
    procedure TClientTransDetail2AfterDelete(DataSet: TDataSet);
    procedure TClientTransDetail2AfterInsert(DataSet: TDataSet);
    procedure TClientTransDetail2AfterPost(DataSet: TDataSet);
    procedure TCreditCardAfterPost(DataSet: TDataSet);
    procedure TClientesAfterInsert(DataSet: TDataSet);
    procedure TNoTransAfterPost(DataSet: TDataSet);
    procedure DSClientesDataChange(Sender: TObject; Field: TField);
    procedure DSOrdenesDataChange(Sender: TObject; Field: TField);
    procedure QPOSAfterDelete(DataSet: TDataSet);
    procedure TOrdenesBeforeDelete(DataSet: TDataSet);
    procedure TClientesBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Data: TData;
  ProcessingCode: String;
  NumeroFactura: Integer;

implementation

uses UCreditDebit, UDebitTrans, UCreditVoid, UCommonObj, UCommonObjDebit,
  UPOS;

{$R *.DFM}

procedure TData.TPOSAfterPost(DataSet: TDataSet);
begin
  QTotalTrans.Close;
  QTotalTrans.ParamByName('NoTrans').asString := FPOS.Edit3.Text;
  FPOS.Edit1.Text := '';
  QTotalTrans.Open;
  //Data.TPOS.Refresh;
end;

procedure TData.TPOSAfterDelete(DataSet: TDataSet);
begin
  QTotalTrans.Close;
  QTotalTrans.ParamByName('NoTrans').asString := FPOS.Edit3.Text;
  FPOS.Edit1.Text := '';
  QTotalTrans.Open;
  //Data.TPOS.Refresh;
end;

procedure TData.TClientesAfterPost(DataSet: TDataSet);
begin
  Data.TClientes.Refresh;
end;

procedure TData.TSuplidoresAfterPost(DataSet: TDataSet);
begin
  Data.TSuplidores.Refresh;
end;

procedure TData.TClientTransDetailAfterDelete(DataSet: TDataSet);
var
  NoFactura: Integer;
  Balance: Double;
begin
  Balance := Data.TClientTransactionsCantidad.Value;
  NoFactura := Data.TClientTransactionsNumeroFactura.Value;

  Data.QCreditos.Close;
  Data.QCreditos.ParamByName('NumeroCliente').AsInteger := NoCliente;
  Data.QCreditos.Open;

  Data.QCreditosPorFactura.Close;
  Data.QCreditosPorFactura.ParamByName('NumeroFactura').AsInteger := NoFactura;
  Data.QCreditosPorFactura.Open;

  //actualizar la transaccion debito (principal)
  Data.UpdateTrans.Close;
  Data.UpdateTrans.ParamByName('Balance').AsFloat := Balance - Data.QCreditosPorFacturaTCredito.Value;
  Data.UpdateTrans.ParamByName('NumeroFactura').AsInteger := NoFactura;
  Data.UpdateTrans.ExecSQL;


  Data.QCantidadDebito.Close;
  Data.QCantidadDebito.ParamByName('NumeroCliente').AsInteger := NoCliente;
  Data.QCantidadDebito.Open;

  QUpdateClientDebt.Close;
  QUpdateClientDebt.ParamByName('NumeroCliente').AsInteger := NoCliente;
  QUpdateClientDebt.ParamByName('Debt').AsFloat := Data.QCantidadDebitoTDebito.Value - Data.QCreditosTCredito.Value;
  QUpdateClientDebt.ParamByName('Date').AsDate := Date;
  QUpdateClientDebt.ExecSQL;

  Data.TClientTransactions.Refresh;
  Data.TClientTransDetail.Refresh;
  Data.TClientes.Refresh;
end;

procedure TData.TClientTransactionsBeforeDelete(DataSet: TDataSet);
begin
  NumeroFactura := Data.TClientTransactionsNumeroFactura.Value;
  NoCliente := Data.TClientesNumeroCliente.Value;
end;

procedure TData.TClientTransactionsAfterDelete(DataSet: TDataSet);
var
  NoFactura: Integer;
  Balance: Double;
begin

  QBorrarClientTransDetail.Close;
  QBorrarClientTransDetail.ParamByName('NumeroFactura').AsInteger := NumeroFactura;
  QBorrarClientTransDetail.ExecSQL;

  Balance := Data.TClientTransactionsCantidad.Value;
  NoFactura := Data.TClientTransactionsNumeroFactura.Value;
  //CantidadDetail := Data.TClientTransDetailCantidad.Value;
  Data.TClientTransactions.Refresh;
  Data.TClientTransDetail.Refresh;
  Data.TClientes.Refresh;

  Data.QCreditos.Close;
  Data.QCreditos.ParamByName('NumeroCliente').AsInteger := NoCliente;
  Data.QCreditos.Open;

  Data.QCreditosPorFactura.Close;
  Data.QCreditosPorFactura.ParamByName('NumeroFactura').AsInteger := NoFactura;
  Data.QCreditosPorFactura.Open;

  //actualizar la transaccion debito (principal)
  Data.UpdateTrans.Close;
  Data.UpdateTrans.ParamByName('Balance').AsFloat := Balance - Data.QCreditosPorFacturaTCredito.Value;
  Data.UpdateTrans.ParamByName('NumeroFactura').AsInteger := NoFactura;
  Data.UpdateTrans.ExecSQL;


  Data.QCantidadDebito.Close;
  Data.QCantidadDebito.ParamByName('NumeroCliente').AsInteger := NoCliente;
  Data.QCantidadDebito.Open;

  QUpdateClientDebt.Close;
  QUpdateClientDebt.ParamByName('NumeroCliente').AsInteger := NoCliente;
  QUpdateClientDebt.ParamByName('Debt').AsFloat := Data.QCantidadDebitoTDebito.Value - Data.QCreditosTCredito.Value;
  QUpdateClientDebt.ParamByName('Date').AsDate := Date;
  QUpdateClientDebt.ExecSQL;


  Data.TClientTransactions.Refresh;
  Data.TClientTransDetail.Refresh;
  Data.TClientes.Refresh;


end;

procedure TData.TClientTransDetail2AfterDelete(DataSet: TDataSet);
var
  NoFactura: Integer;
  Balance: Double;
begin
  Balance := Data.TClientTransactionsCantidad.Value;
  NoFactura := Data.TClientTransactionsNumeroFactura.Value;

  Data.QCreditos.Close;
  Data.QCreditos.ParamByName('NumeroCliente').AsInteger := NoCliente;
  Data.QCreditos.Open;

  Data.QCreditosPorFactura.Close;
  Data.QCreditosPorFactura.ParamByName('NumeroFactura').AsInteger := NoFactura;
  Data.QCreditosPorFactura.Open;

  //actualizar la transaccion debito (principal)
  Data.UpdateTrans.Close;
  Data.UpdateTrans.ParamByName('Balance').AsFloat := Balance - Data.QCreditosPorFacturaTCredito.Value;
  Data.UpdateTrans.ParamByName('NumeroFactura').AsInteger := NoFactura;
  Data.UpdateTrans.ExecSQL;


  Data.QCantidadDebito.Close;
  Data.QCantidadDebito.ParamByName('NumeroCliente').AsInteger := NoCliente;
  Data.QCantidadDebito.Open;

  QUpdateClientDebt.Close;
  QUpdateClientDebt.ParamByName('NumeroCliente').AsInteger := NoCliente;
  QUpdateClientDebt.ParamByName('Debt').AsFloat := Data.QCantidadDebitoTDebito.Value - Data.QCreditosTCredito.Value;
  QUpdateClientDebt.ParamByName('Date').AsDate := Date;
  QUpdateClientDebt.ExecSQL;

  Data.TClientTransactions.Refresh;
  Data.TClientTransDetail2.Refresh;
  Data.TClientes.Refresh;
end;

procedure TData.TClientTransDetail2AfterInsert(DataSet: TDataSet);
begin
  Data.TClientTransDetail2NumeroFactura.Value :=
    Data.TClientTransactions2NumeroFactura.Value;
  Data.TClientTransDetail2Fecha.Value := Date;
  Data.TClientTransDetail2NumeroCliente.Value := NoCliente;
  Data.TClientTransDetail2Codigo.Value := 'CR';
end;

procedure TData.TClientTransDetail2AfterPost(DataSet: TDataSet);
var
  NoTrans, NoFactura: Integer;
  Balance: Double;
  CantidadDetail: Double;
begin
  Balance := TClientTransactions2Cantidad.Value;
  NoFactura := TClientTransactions2NumeroFactura.Value;
  NoTrans := TClientTransactions2NumeroTransaccion.Value;
  CantidadDetail := Data.TClientTransDetail2Cantidad.Value;
  Data.TClientTransDetail2.Refresh;
  Data.TClientes.Refresh;

  Data.QPOS.Append;
  FPOS.Edit2.Text := 'Abono Credito...';
  Data.QPOSArticulo.Value := 'Abono factura ' + IntToStr(NoFactura);
  Data.QPOSDepartamento.Value := 99;
  Data.QPOSPrecioVenta.Value := CantidadDetail;
  Data.QPOSQty.Value := 1;
  Data.QPOSGanancia.Value := 0;
  Data.QPOSFechaVenta.Value := Date;
  Data.QPOSNumeroArticulo.Value := '11111111111';
  Data.QPOSUsuario.Value := FPOS.EditUsuario.Text;
  Data.QPOSCodigo.Value := 'Abon';
  Data.QPOSNumeroTransaccion.Value := StrToInt(FPOS.Edit3.text);
  Data.QPOSNoCaja.Value := StrToInt(FPOS.EditNoCaja.Text);
  Data.QPOSTurno.Value := StrToInt(FPOS.EditTurno.Text);
  Data.QPOS.Post;
  //Data.QPOS.Refresh;

  Data.QPOS.Close;
  Data.QPOS.ParamByName('NumeroTransaccion').asInteger := StrToInt(FPOS.Edit3.Text);
  Data.QPOS.Open;
  Data.QPOS.Last;
  Data.QTotalTrans.Close;
  Data.QTotalTrans.ParamByName('NoTrans').AsInteger := StrToInt(FPOS.Edit3.Text);
  Data.QTotalTrans.Open;

  Data.QCreditos.Close;
  Data.QCreditos.ParamByName('NumeroCliente').AsInteger := NoCliente;
  Data.QCreditos.Open;

  // sumar los creditdetails por factura
  Data.QCreditosPorFactura.Close;
  Data.QCreditosPorFactura.ParamByName('NumeroFactura').AsInteger := NoFactura;
  Data.QCreditosPorFactura.Open;

  //actualizar la transaccion debito (principal)
  Data.UpdateTrans.Close;
  Data.UpdateTrans.ParamByName('Balance').AsFloat := Balance - Data.QCreditosPorFacturaTCredito.Value;
  Data.UpdateTrans.ParamByName('NumeroFactura').AsInteger := NoFactura;
  Data.UpdateTrans.ExecSQL;


  Data.QCantidadDebito.Close;
  Data.QCantidadDebito.ParamByName('NumeroCliente').AsInteger := NoCliente;
  Data.QCantidadDebito.Open;

  QUpdateClientDebt.Close;
  QUpdateClientDebt.ParamByName('NumeroCliente').AsInteger := NoCliente;
  QUpdateClientDebt.ParamByName('Debt').AsFloat := Data.QCantidadDebitoTDebito.Value - Data.QCreditosTCredito.Value;
  QUpdateClientDebt.ParamByName('Date').AsDate := Date;
  QUpdateClientDebt.ExecSQL;

  Data.QTransacciones.Close;
  Data.QTransacciones.ParamByName('NumeroCliente').asInteger := NoCliente;
  Data.QTransacciones.Open;

  Data.TClientTransactions2.Refresh;
  Data.TClientTransactions.Refresh;
  Data.TClientTransDetail2.Refresh;
  Data.TClientes.Refresh;

end;

procedure TData.TCreditCardAfterPost(DataSet: TDataSet);
begin
  Data.TCreditCard.Refresh;
end;

procedure TData.TClientesAfterInsert(DataSet: TDataSet);
begin
  Data.QIncrementarNoPaciente.ExecSQL;
  Data.TRxNumber.Refresh;
  Data.TClientesNumeroCliente.Value := Data.TRxNumberNumeroPaciente.Value;
end;

procedure TData.TNoTransAfterPost(DataSet: TDataSet);
begin
  TNoTrans.Refresh;
end;

procedure TData.DSClientesDataChange(Sender: TObject; Field: TField);
Var
  TmpStr: String;
begin
  Data.TClientTransactions2.Filtered := True;
  Data.TClientTransactions2.Filter := '';
  Data.TClientTransactions2.Filter := 'NumeroCliente = ' + IntToStr(Data.TClientesNumeroCliente.Value) +  ' and  Balance <> 0';
end;

procedure TData.DSOrdenesDataChange(Sender: TObject; Field: TField);
begin
  Data.QSumarFacturas.Close;
  Data.QSumarFacturas.ParamByName('Suplidor').asInteger := Data.TSuplidoresNumeroSuplidor.Value;
  Data.QSumarFacturas.ParamByName('NumeroFactura').asString := Data.TOrderHeaderOrderNumber.Value;
  Data.QSumarFacturas.Open;
end;

procedure TData.QPOSAfterDelete(DataSet: TDataSet);
begin
  Data.QPOS.Close;
  Data.QPOS.ParamByName('NumeroTransaccion').asInteger := StrToInt(FPOS.Edit3.Text);
  Data.QPOS.Open;
  Data.QPOS.Last;
  Data.QTotalTrans.Close;
  Data.QTotalTrans.ParamByName('NoTrans').asString := FPOS.Edit3.Text;
  FPOS.Edit1.Text := '';
  QTotalTrans.Open;  
end;

procedure TData.TOrdenesBeforeDelete(DataSet: TDataSet);
begin
  Data.TInventarioPiso.Filter := 'CodigoBarra = ' + Data.TOrdenesBarCode.Value;
  if Data.TInventarioPisoCodigoBarra.Value = Data.TOrdenesBarCode.Value then
  begin
    Data.TInventarioPiso.Edit;
    Data.TInventarioPisoQtyInventario.Value := Data.TInventarioPisoQtyInventario.Value - Data.TOrdenesCantidad.Value;
    Data.TInventarioPiso.Post;
  end;
  Data.TInventarioPiso.Filter := '';
end;

procedure TData.TClientesBeforePost(DataSet: TDataSet);
begin
if Data.TClientesApellidoMaterno.Value > ' ' then
  Data.TClientesNombreCompleto.Value :=
    Trim(Data.TClientesApellidoPaterno.Value) + ' ' +
    Trim(Data.TClientesApellidoMaterno.Value) + ' ' +
    Trim(Data.TClientesNombre.Value)
else
  Data.TClientesNombreCompleto.Value :=
    Trim(Data.TClientesApellidoPaterno.Value) + ' ' +
    Trim(Data.TClientesNombre.Value);
end;

end.
