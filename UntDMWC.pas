unit UntDMWC;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect, SConnect, Registry,
  Windows, Messages, Graphics, Controls, Forms, Dialogs,
  Provider, SqlExpr, FMTBcd,
  ObjBrkr,
  Menus, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, WideStrings,
  DBXMsSQL, MidasLib, MIDAS, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TDMwc = class(TDataModule)
    dspWillCall: TDataSetProvider;
    cdsWillCall: TClientDataSet;
    dsWillCall: TDataSource;
    cdsWillCallBAG_NUMBER: TWideStringField;
    cdsWillCallDRUG_DESCRIPTION: TWideStringField;
    cdsWillCallCUSTOMER_NUMBER: TIntegerField;
    cdsWillCallSTATUS: TIntegerField;
    cdsWillCallRX_DATE: TDateField;
    cdsWillCallNDC: TWideStringField;
    cdsWillCallPRUDUCT_ID: TIntegerField;
    cdsWillCallTRANSACTION_NUMBER: TIntegerField;
    cdsWillCallRX_NUMBER: TLargeintField;
    cdsWillCallStatusDefine: TStringField;
    cdsWillCallCOPAY: TFloatField;
    cdsWillCallCOST: TFloatField;
    cdsWillCallPRICE: TFloatField;
    cdsWillCallATTENDED_BY: TWideStringField;
    cdsWillCallNOTE: TWideStringField;
    cdsOTC2: TClientDataSet;
    dsOTC2: TDataSource;
    dspOTC2: TDataSetProvider;
    SPWILLCALL_DELETE: TSQLStoredProc;
    dspWillCallHistory: TDataSetProvider;
    cdsWillCallHistory: TClientDataSet;
    DSWillCallHistory: TDataSource;
    cdsWillCallHistoryBAG_NUMBER: TWideStringField;
    cdsWillCallHistoryDRUG_DESCRIPTION: TWideStringField;
    cdsWillCallHistoryCUSTOMER_NUMBER: TIntegerField;
    cdsWillCallHistorySTATUS: TIntegerField;
    cdsWillCallHistoryRX_DATE: TDateField;
    cdsWillCallHistoryNDC: TWideStringField;
    cdsWillCallHistoryPRUDUCT_ID: TIntegerField;
    cdsWillCallHistoryTRANSACTION_NUMBER: TIntegerField;
    cdsWillCallHistoryRX_NUMBER: TLargeintField;
    cdsWillCallHistoryCOPAY: TFloatField;
    cdsWillCallHistoryCOST: TFloatField;
    cdsWillCallHistoryPRICE: TFloatField;
    cdsWillCallHistoryATTENDED_BY: TWideStringField;
    cdsWillCallHistoryNOTE: TWideStringField;
    cdsWillCallHistoryNombreCompleto: TStringField;
    cdsWillCallHistoryStatusDefine: TStringField;
    cdsWillCallWILLCALL_DATE_ENTERED: TDateField;
    dspWillCallStatus: TDataSetProvider;
    cdsWillCall_Status: TClientDataSet;
    dsWillCall_Stauts: TDataSource;
    cdsWillCall_StatusID: TIntegerField;
    cdsWillCall_StatusCUSTOMER_NUMBER: TIntegerField;
    cdsWillCall_StatusREMINDER1: TBooleanField;
    cdsWillCall_StatusREMINDER2: TBooleanField;
    cdsWillCall_StatusREMINDER3: TBooleanField;
    cdsWillCall_StatusSTATUS: TSmallintField;
    cdsWillCall_StatusDATE_CREATED: TDateField;
    cdsWillCall_StatusBAG_NUMBER: TIntegerField;
    cdsWillCall_StatusStatusDefine: TStringField;
    cdsWillCallUSER_NO: TIntegerField;
    cdsWillCallHistoryWILLCALL_DATE_ENTERED: TDateField;
    cdsWillCallHistoryUSER_NO: TIntegerField;
    cdsWillCallAmountDue: TFloatField;
    cdsWillCallCASH_PLAN: TSmallintField;
    cdsWillCallHistoryCASH_PLAN: TSmallintField;
    cdsWillCallCASH_PLAN_Define: TStringField;
    dspWillCall_Log: TDataSetProvider;
    cdsWillCall_Log: TClientDataSet;
    DSWillCall_log: TDataSource;
    cdsWillCall_LogTRANSACTION_NUMBER: TIntegerField;
    cdsWillCall_LogUSER_NO: TIntegerField;
    cdsWillCall_LogLOG_DATE: TSQLTimeStampField;
    cdsWillCall_LogDESCRIPTION: TWideStringField;
    cdsWillCall_LogMODULE: TWideStringField;
    cdsWillCall_StatusNOTIFICATION_MODE1: TSmallintField;
    cdsWillCall_StatusNOTIFICATION_MODE2: TSmallintField;
    cdsWillCall_StatusNOTIFICATION_MODE1_EMAIL: TWideStringField;
    cdsWillCall_StatusNOTIFICATION_MODE2_TELEPHONE: TWideStringField;
    cdsWillCallQUANTITY: TFloatField;
    cdsWillCallHistoryQUANTITY: TFloatField;
    cdsWillCall_StatusRTS: TBooleanField;
    dspWillCall2: TDataSetProvider;
    cdsWillCall2: TClientDataSet;
    dsWillCall2: TDataSource;
    cdsWillCall2StatusDefine: TStringField;
    cdsWillCall2CASH_PLAN_Define: TStringField;
    cdsWillCall2AmountDue: TFloatField;
    cdsWillCallBATCH_NUMBER: TIntegerField;
    cdsWillCallHistoryBATCH_NUMBER: TIntegerField;
    dspWillCallStatus2: TDataSetProvider;
    cdsWillCall_Status2: TClientDataSet;
    dsWillCall_Stauts2: TDataSource;
    cdsWillCall_Status2ID: TIntegerField;
    cdsWillCall_Status2CUSTOMER_NUMBER: TIntegerField;
    cdsWillCall_Status2REMINDER1: TBooleanField;
    cdsWillCall_Status2REMINDER2: TBooleanField;
    cdsWillCall_Status2REMINDER3: TBooleanField;
    cdsWillCall_Status2STATUS: TSmallintField;
    cdsWillCall_Status2DATE_CREATED: TDateField;
    cdsWillCall_Status2BAG_NUMBER: TIntegerField;
    cdsWillCall_Status2NOTIFICATION_MODE1: TSmallintField;
    cdsWillCall_Status2NOTIFICATION_MODE2: TSmallintField;
    cdsWillCall_Status2NOTIFICATION_MODE1_EMAIL: TWideStringField;
    cdsWillCall_Status2NOTIFICATION_MODE2_TELEPHONE: TWideStringField;
    cdsWillCall_Status2RTS: TBooleanField;
    cdsWillCall_StatusREMINDER1_DATE: TSQLTimeStampField;
    cdsWillCall_StatusREMINDER2_DATE: TSQLTimeStampField;
    cdsWillCall_StatusREMINDER3_DATE: TSQLTimeStampField;
    cdsWillCall_Status2REMINDER1_DATE: TSQLTimeStampField;
    cdsWillCall_Status2REMINDER2_DATE: TSQLTimeStampField;
    cdsWillCall_Status2REMINDER3_DATE: TSQLTimeStampField;
    cdsWillCall2BAG_NUMBER: TWideStringField;
    cdsWillCall2DRUG_DESCRIPTION: TWideStringField;
    cdsWillCall2CUSTOMER_NUMBER: TIntegerField;
    cdsWillCall2STATUS: TIntegerField;
    cdsWillCall2RX_DATE: TDateField;
    cdsWillCall2NDC: TWideStringField;
    cdsWillCall2PRUDUCT_ID: TIntegerField;
    cdsWillCall2TRANSACTION_NUMBER: TIntegerField;
    cdsWillCall2RX_NUMBER: TLargeintField;
    cdsWillCall2STATE: TWideStringField;
    cdsWillCall2COPAY: TFloatField;
    cdsWillCall2COST: TFloatField;
    cdsWillCall2PRICE: TFloatField;
    cdsWillCall2ATTENDED_BY: TWideStringField;
    cdsWillCall2NOTE: TWideStringField;
    cdsWillCall2WILLCALL_DATE_ENTERED: TDateField;
    cdsWillCall2USER_NO: TIntegerField;
    cdsWillCall2CASH_PLAN: TSmallintField;
    cdsWillCall2QUANTITY: TFloatField;
    cdsWillCall2REVERSAL: TBooleanField;
    dspPwrd: TDataSetProvider;
    DSPasswords: TDataSource;
    CDSPasswords: TClientDataSet;
    CDSPasswordsUSERNAME: TStringField;
    CDSPasswordsINICIALES: TStringField;
    CDSPasswordsUSERNO: TIntegerField;
    CDSPasswordsCELULAR: TWideStringField;
    CDSPasswordsHOME_PHONE: TWideStringField;
    CDSPasswordsADDRESS1: TWideStringField;
    CDSPasswordsADDRESS2: TWideStringField;
    CDSPasswordsCITY: TWideStringField;
    CDSPasswordsZIP_CODE: TWideStringField;
    CDSPasswordsSTATE: TWideStringField;
    cdsWillCallPOS_PICKUP: TBooleanField;
    cdsWillCallHistoryPOS_PICKUP: TBooleanField;
    cdsWillCall_StatusR1_NOTIFICATION_MODE: TWideStringField;
    cdsWillCall_StatusR2_NOTIFICATION_MODE: TWideStringField;
    cdsWillCall_StatusR3_NOTIFICATION_MODE: TWideStringField;
    cdsWillCall_Status2R1_NOTIFICATION_MODE: TWideStringField;
    cdsWillCall_Status2R2_NOTIFICATION_MODE: TWideStringField;
    cdsWillCall_Status2R3_NOTIFICATION_MODE: TWideStringField;
    cdsWillCall_Status2ADDRESS1: TWideStringField;
    cdsWillCall_Status2ADDRESS2: TWideStringField;
    cdsWillCall_Status2CITY: TWideStringField;
    cdsWillCall_Status2ZIPCODE: TWideStringField;
    cdsWillCall_Status2NAME: TWideStringField;
    cdsWillCall_Status2LASTNAME: TWideStringField;
    cdsWillCall_Status2MAIDENNAME: TWideStringField;
    dspTagNumbers: TDataSetProvider;
    cdsTagNumbers: TClientDataSet;
    dsTagNumbers: TDataSource;
    cdsTagNumbersBAG_NUMBER: TIntegerField;
    cdsTagNumbersTAG_NUMBER: TIntegerField;
    cdsTagNumbersSEARCH: TBooleanField;
    cdsWillCallOTC_NUMBER: TIntegerField;
    cdsWillCall_StatusNOTE: TWideStringField;
    qWillCallFD: TFDQuery;
    QWillCallHistoryFD: TFDQuery;
    qWillCall_LogFD: TFDQuery;
    sqldsWillCallStatusFD: TFDQuery;
    sqlOTC2FD: TFDQuery;
    sqldsWillCallStatus2FD: TFDQuery;
    QTagNumbersFD: TFDQuery;
    QPasswordsFD: TFDQuery;
    qWillCall2FD: TFDQuery;
    QBorrarNonMatchedNDC: TFDQuery;
    QInsertWCLog: TFDQuery;
    WILLCALL_TOTAL_AMOUNT_DUE: TFDStoredProc;
    SQLQuery1: TFDQuery;
    SQLQuery2: TFDQuery;
    QCreateWillCall: TFDQuery;
    qEXPORTTOWILLCALLHISTORY: TFDQuery;
    QEXPORTTOWILLCAL_STATUS_LHISTORY: TFDQuery;
    qWillCallDelete: TFDQuery;
    qWILLCALL_TOTAL_AMOUNT_DUE: TFDQuery;
    WC_PICKUP_TF: TFDStoredProc;
    qPacientes: TFDQuery;
    dspPacientes: TDataSetProvider;
    cdsPacientes: TClientDataSet;
    dsPacientes: TDataSource;
    cdsPacientesFECHANACIMIENTO: TSQLTimeStampField;
    cdsPacientesNUMEROCLIENTE: TAutoIncField;
    cdsOTC2OTCNUMBER: TAutoIncField;
    cdsOTC2TOTAL: TFMTBCDField;
    cdsOTC2COBRADO: TStringField;
    cdsOTC2FECHAOTC: TSQLTimeStampField;
    cdsOTC2RX: TStringField;
    cdsOTC2COSTOVENTA: TFMTBCDField;
    cdsOTC2NUMEROCLIENTE: TIntegerField;
    cdsOTC2MEDICAMENTOMIX: TStringField;
    cdsOTC2NUMEROTRANSACCION: TIntegerField;
    cdsOTC2PAGO_PLAN: TFMTBCDField;
    cdsOTC2DEDUCIBLE: TFMTBCDField;
    cdsOTC2PARTIAL_COMPLETION: TStringField;
    cdsOTC2RX_STATUS: TStringField;
    cdsOTC2NO_REF_DISPENSADO: TIntegerField;
    cdsOTC2INGREDIENT_COST_PAID: TFMTBCDField;
    cdsOTC2INCENTIVE_FEE_PAID: TFMTBCDField;
    cdsOTC2DISPENSING_FEE_PAID: TFMTBCDField;
    cdsOTC2OTHER_AMOUNT_PAID: TFMTBCDField;
    cdsOTC2AMOUNT_COPAY_COINS: TFMTBCDField;
    cdsOTC2GANANCIA: TFMTBCDField;
    cdsOTC2PHARMACIST: TStringField;
    cdsOTC2DAYS_SUPPLY: TIntegerField;
    cdsOTC2PAGADA: TStringField;
    cdsOTC2PRECIOFACTURACION: TFMTBCDField;
    cdsOTC2PRODUCT_ID: TIntegerField;
    cdsOTC2TIME_RX: TSQLTimeStampField;
    cdsOTC2NO_HORA: TIntegerField;
    cdsOTC2NUMEROPLAN: TIntegerField;
    cdsOTC2METRICDECIMALQUANTITY: TIntegerField;
    cdsOTC2OTC_BARCODE: TStringField;
    cdsOTC2PLAN_MEDICO: TStringField;
    cdsOTC2NUMERO_AUTORIZACION: TStringField;
    cdsOTC2MEDICAMENTO: TStringField;
    cdsOTC2NDC: TStringField;
    cdsOTC2ATENDIDOPOR: TStringField;
    cdsOTC2LOTE: TStringField;
    cdsOTC2SIGNATURE_LINK: TIntegerField;
    cdsOTC2PICKEDUPBY_RELETION: TSmallintField;
    cdsOTC2PICKEDUP_ID: TStringField;
    cdsOTC2CHECKED: TIntegerField;
    cdsOTC2PICKEDUPBY_RELATION: TIntegerField;
    cdsOTC2TXR: TStringField;
    cdsOTC2PS_521_FL: TFMTBCDField;
    cdsOTC2PS_523_FN: TFMTBCDField;
    cdsOTC2PS_512_FC: TFMTBCDField;
    cdsOTC2PS_513_FD: TFMTBCDField;
    cdsOTC2PS_517_FH: TFMTBCDField;
    cdsOTC2PS_518_FI: TFMTBCDField;
    cdsOTC2PS_520_FK: TFMTBCDField;
    cdsOTC2PS_514_FE: TFMTBCDField;
    cdsOTC2PS_346_HH: TFMTBCDField;
    cdsOTC2PS_347_HJ: TFMTBCDField;
    cdsOTC2PS_348_HK: TFMTBCDField;
    cdsOTC2PS_571_NZ: TFMTBCDField;
    cdsOTC2PS_575_EQ: TFMTBCDField;
    cdsOTC2PS_574_2Y: TFMTBCDField;
    cdsOTC2PS_572_4U: TFMTBCDField;
    cdsOTC2PS_577_G3: TFMTBCDField;
    cdsOTC2PS_133_UJ: TFMTBCDField;
    cdsOTC2PS_134_UK: TFMTBCDField;
    cdsOTC2PS_135_UM: TFMTBCDField;
    cdsOTC2PS_136_UN: TFMTBCDField;
    cdsOTC2PS_137_UP: TFMTBCDField;
    cdsOTC2USUARIO_NO: TIntegerField;
    cdsOTC2NUMERORECETA: TLargeintField;
    cdsOTC2MEZCLA_TRAN_NO: TIntegerField;
    cdsOTC2REFILL_REMINDED: TIntegerField;
    cdsOTC2AUDITED: TIntegerField;
    cdsOTC2BATCH_NUMBER: TIntegerField;
    cdsOTC2WC_PICKUP: TBooleanField;
    cdsOTC2EP_TRANSACTION_NUMBER: TIntegerField;
    cdsOTC2REFILL_NOTIFIED: TBooleanField;
    cdsOTC2PRICE_TABLE_ID: TIntegerField;
    cdsOTC2WF_TYPED: TWideStringField;
    cdsOTC2WF_BILLED: TWideStringField;
    cdsOTC2WF_PRINTED: TWideStringField;
    cdsOTC2WF_CHECKED: TWideStringField;
    cdsOTC2WF_DELIVERED: TWideStringField;
    cdsOTC2WF_FILLED: TWideStringField;
    cdsOTC2CLAIM_STATUS: TIntegerField;
    cdsOTC2FACILITY_ID: TIntegerField;
    cdsOTC2ADHERENCE: TBooleanField;
    cdsOTC2UNIT_PRICE: TFMTBCDField;
    cdsOTC2MED_CHART: TBooleanField;
    cdsOTC2PRINT_Q: TWideStringField;
    cdsOTC2BILL_LATTER: TBooleanField;
    cdsOTC2WFSTORAGE: TWideStringField;
    cdsOTC2WF_STORAGE: TWideStringField;
    cdsOTC2WF_CASHIER: TWideStringField;
    cdsOTC2WF_SIGNATURE: TWideStringField;
    cdsOTC2ALCHEMY_PRODUCTID: TIntegerField;
    cdsOTC2MARKETEDPRODUCTID: TIntegerField;
    cdsOTC2PA: TBooleanField;
    cdsOTC2WF_REVERSE: TBooleanField;
    cdsOTC2PDN_SENT: TBooleanField;
    cdsOTC2REFILL_REQ_TRANSNO: TIntegerField;
    cdsOTC2BATCH_REFILLREQ_DATE: TDateField;
    cdsOTC2PRIORAUTHORIZATION: TStringField;
    cdsOTC2BASISOFCOST: TStringField;
    cdsOTC2CLINICIDNUMBER: TIntegerField;
    cdsOTC2DIAGNOSISCODE: TWideStringField;
    cdsOTC2DURCONFLICTCODE: TWideStringField;
    cdsOTC2DURINTERVENTIONCODE: TWideStringField;
    cdsOTC2DUROUTCOMECODE: TWideStringField;
    cdsOTC2LEVELOFSERVICE: TIntegerField;
    cdsOTC2PRIMARYPRESCRIBER: TWideStringField;
    cdsOTC2RXDENIALCLARIF: TWideStringField;
    cdsOTC2RXDENIALOVERRIDE: TIntegerField;
    cdsOTC2DISPENSINGFEE: TFMTBCDField;
    cdsOTC2GROSSAMOUNTDUE: TFMTBCDField;
    cdsOTC2PATIENTPAIDAMOUNT: TFMTBCDField;
    cdsOTC2SALESTAX: TFMTBCDField;
    cdsOTC2OTAMCLDSUBCOUNTQUAL: TWideStringField;
    cdsOTC2PRODUCTSERVIDQUAL: TWideStringField;
    cdsOTC2PROVIDERID: TWideStringField;
    cdsOTC2UNIT_DOSE_INDICATOR: TWideStringField;
    cdsOTC2UNIT_OF_MEASURE: TWideStringField;
    cdsOTC2SUB_CLARIF_CODE: TWideStringField;
    cdsOTC2OTHERCOVERAGECODE: TWideStringField;
    cdsOTC2SERVICEPROVIDQUALIFIER: TWideStringField;
    cdsOTC2OP_AMOUNTPAIDCOUNT: TIntegerField;
    cdsOTC2OP_REJECTCOUNT: TIntegerField;
    cdsOTC2COB_OTHERPAYMENTCOUNT: TIntegerField;
    cdsOTC2COMPDOSAGE_FORM_DESC_CODE: TWideStringField;
    cdsOTC2COMPDISP_UNIT_FORM_INDI: TWideStringField;
    cdsOTC2COMPROUTE_OF_ADMINISTRATION: TWideStringField;
    cdsOTC2COMPING_COMP_COUNT: TIntegerField;
    cdsOTC2DISPENSING_STATUS: TWideStringField;
    cdsOTC2QTY_INTENDED_DISP: TIntegerField;
    cdsOTC2DAYS_SUPPLY_INTEND_DISP: TIntegerField;
    cdsOTC2FLAT_SALES_TAXSUB: TFMTBCDField;
    cdsOTC2ASSOC_RX_SERVICE_DATE: TSQLTimeStampField;
    cdsOTC2ASSOC_RX_SERVICE_REF_NO: TWideStringField;
    cdsOTC2CUPONTYPE: TWideStringField;
    cdsOTC2CUPON_NUMBER: TWideStringField;
    cdsOTC2CUPON_VALUE_AMT: TFMTBCDField;
    cdsOTC2PRIMARYCAREPROVIDQUALIFIER: TWideStringField;
    cdsOTC2PRIMARYCAREPROVID: TWideStringField;
    cdsOTC2PRIMARYCAREPROVLASTNAME: TWideStringField;
    cdsOTC2IAID_464_EX: TWideStringField;
    cdsOTC2DRC_357_NV: TWideStringField;
    cdsOTC2PAI_391_MT: TWideStringField;
    cdsOTC2COMPOUND_TYPE_996_G1: TWideStringField;
    cdsOTC2PST_147_U7: TWideStringField;
    cdsOTC2SCCD_354_NX: TSmallintField;
    cdsOTC2PRAC_353_NR: TSmallintField;
    cdsOTC2BSC_392_MU: TSmallintField;
    cdsOTC2SPECIAL_PACK_INDI_429_DT: TWideStringField;
    cdsOTC2ROUTEOFADMIN_995_E2: TWideStringField;
    cdsOTC2WC_117_TR: TSmallintField;
    cdsOTC2WC_118_TS: TWideStringField;
    cdsOTC2WC_119_TT: TWideStringField;
    cdsOTC2WC_120_TU: TWideStringField;
    cdsOTC2WC_121_TV: TWideStringField;
    cdsOTC2WC_122_TW: TWideStringField;
    cdsOTC2WC_123_TX: TWideStringField;
    cdsOTC2WC_124_TY: TWideStringField;
    cdsOTC2WC_125_TZ: TWideStringField;
    cdsOTC2WC_126_UA: TWideStringField;
    cdsOTC2PRIMARYCAREPROVLOCATIONCODE: TWideStringField;
    cdsOTC2PATIENTLOCATION: TIntegerField;
    cdsOTC2PRESC_SRNM: TWideStringField;
    cdsOTC2PS_558_AW: TFMTBCDField;
    cdsOTC2PS_559_AX: TFMTBCDField;
    cdsOTC2REVENUE_CODE: TWideStringField;
    cdsOTC2DAW: TSmallintField;
    cdsOTC2BATCH_NUMBER_BILLING: TLargeintField;
    cdsOTC2TERMINADA: TBooleanField;
    cdsOTC2MEDICAID_PAID_AMOUNT: TFMTBCDField;
    cdsOTC2PMC_459_ER: TWideStringField;
    cdsOTC2PMCC_458_SE: TIntegerField;
    cdsOTC2SPIDN_454_EK: TWideStringField;
    cdsOTC2IATID_463_EW: TWideStringField;
    cdsOTC2QTY: TFMTBCDField;
    cdsOTC2CONTROLADO: TWideStringField;
    cdsOTC2DAYS_SUPLY: TIntegerField;
    cdsOTC2CODIGOREFILLNUEVO: TSmallintField;
    cdsOTC2RXNUMBERSRNQ: TWideStringField;
    cdsOTC2TRANSACTION_CODE: TWideStringField;
    cdsOTC2MEDICAMENTOORIGINAL: TWideStringField;
    cdsOTC2ROBOT: TIntegerField;
    cdsOTC2LABEL_NAME: TWideStringField;
    cdsOTC2FECHAEXPIRACION: TDateField;
    cdsOTC2IMPRIMIR: TBooleanField;
    cdsOTC2INSTANCIA: TIntegerField;
    cdsOTC2ORG_PROS_PROD_SERVID: TStringField;
    cdsOTC2ORG_PRESC_QTY: TIntegerField;
    cdsOTC2ORG_PRES_PROD_SIDQ: TStringField;
    cdsOTC2PRIOR_AUTH_TYPE_CODE: TStringField;
    cdsOTC2INCENTIVE_AMOUNT_SUB: TFMTBCDField;
    cdsOTC2PROF_SERV_FEE_SUB: TFMTBCDField;
    cdsOTC2PERCENTAGE_SALES_TAX_SUB: TFMTBCDField;
    cdsOTC2PERCENTAGE_SALES_TAX_RATE: TFMTBCDField;
    cdsOTC2OTHERAMOUNTCLAIMEDSUB: TFMTBCDField;
    cdsOTC2QTY_TEMP: TFMTBCDField;
    cdsOTC2OTHERAMOUNTCLAIMEDSUBCOUNT: TIntegerField;
    cdsOTC2PER_SALESTAX_BASIS_SUB: TStringField;
    cdsOTC2WC_DATE_OF_INJURY: TSQLTimeStampField;
    cdsOTC2WC_EMPLOYER_NAME: TStringField;
    cdsOTC2WC_EMPLOYER_STREET: TStringField;
    cdsOTC2WC_EMPLOYER_CITY: TStringField;
    cdsOTC2WC_EMPLOYER_STATE: TStringField;
    cdsOTC2WC_EMPLOYER_CONTACT: TStringField;
    cdsOTC2WC_EMLPOYER_ZIP: TStringField;
    cdsOTC2WC_CARRIER_ID: TStringField;
    cdsOTC2WC_CLAIMREF_ID: TStringField;
    cdsOTC2WC_EMPLOYER_PHONE: TStringField;
    cdsOTC2PLANESMEDICOSNO: TIntegerField;
    cdsOTC2RX_SHOW_NOREFDISP_FLOAT: TBooleanField;
    cdsOTC2APPRISS_SENT: TBooleanField;
    cdsOTC2MessageID: TWideStringField;
    cdsOTC2RECORD_LOCKED: TBooleanField;
    qForAll: TFDQuery;
    CDSPasswordsWILLCALL: TBooleanField;
    CDSPasswordsWC_LOAD: TBooleanField;
    CDSPasswordsWC_RETREIVE: TBooleanField;
    CDSPasswordsWC_REPORTS: TBooleanField;
    CDSPasswordsWC_SENDMESSAGE: TBooleanField;
    CDSPasswordsWC_RTS: TBooleanField;
    CDSPasswordsWC_SETUP: TBooleanField;
    CDSPasswordsCAMBIARPASSWORD: TBooleanField;
    CDSPasswordsMAIN_RECV: TBooleanField;
    qWC_PATIENTS: TFDQuery;
    dspWC_PATIENTS: TDataSetProvider;
    dsWC_PATIENTS: TDataSource;
    cdsWC_PATIENTS: TClientDataSet;
    cdsWC_PATIENTSNombreCompleto: TStringField;
    cdsWC_PATIENTSFullAddress: TStringField;
    cdsWC_PATIENTSNUMEROCLIENTE: TAutoIncField;
    cdsWC_PATIENTSNOMBRE: TStringField;
    cdsWC_PATIENTSAPELLIDOPATERNO: TStringField;
    cdsWC_PATIENTSAPELLIDOMATERNO: TStringField;
    cdsWC_PATIENTSCELULAR: TStringField;
    cdsWC_PATIENTSDIRECCION1: TStringField;
    cdsWC_PATIENTSDIRECCION2: TWideStringField;
    cdsWC_PATIENTSCIUDAD: TStringField;
    cdsWC_PATIENTSCODIGOPOSTAL: TWideStringField;
    cdsWC_PATIENTSBAG_NUMBER: TIntegerField;
    cdsWC_PATIENTSNOTIFICATION_MODE2_TELEPHONE: TWideStringField;
    cdsWC_PATIENTSDATE_CREATED: TDateField;
    cdsWC_PATIENTSESTADO: TStringField;
    cdsWC_PATIENTSFECHANACIMIENTO: TSQLTimeStampField;
    cdsWC_PATIENTSTELEFONO: TStringField;
    cdsWC_PATIENTSSTATUS: TSmallintField;
    cdsWC_PATIENTSDATE_PICKUP_RTS: TDateField;
    cdsWC_PATIENTSFAMILY_LINK: TWideStringField;
    cdsWC_PATIENTSNOTIFICATION_MODE_PHONE: TSmallintField;
    cdsWC_PATIENTSNOTIFICATION_MODE_CEL: TSmallintField;
    cdsWC_PATIENTSNOTIFICATION_MODE_SMS: TSmallintField;
    cdsWC_PATIENTSNOTIFICATION_MODE_EMAIL: TSmallintField;
    cdsWC_PATIENTSemail: TWideStringField;
    procedure cdsWillCallAfterDelete(DataSet: TDataSet);
    procedure cdsWillCallCalcFields(DataSet: TDataSet);
    procedure cdsWillCallHistoryAfterOpen(DataSet: TDataSet);
    procedure cdsWillCallAfterInsert(DataSet: TDataSet);
    procedure CDSPacientesCalcFields(DataSet: TDataSet);
    procedure cdsWillCall_StatusAfterDelete(DataSet: TDataSet);
    procedure cdsWillCall_StatusCalcFields(DataSet: TDataSet);
    procedure cdsWillCall_LogAfterDelete(DataSet: TDataSet);
    procedure cdsWillCall_StatusAfterInsert(DataSet: TDataSet);
    procedure cdsWillCall2CalcFields(DataSet: TDataSet);
    procedure cdsWillCall_StatusAfterScroll(DataSet: TDataSet);
    procedure cdsWC_PATIENTSCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    function getWC_PATIENTS(dbNamePOS, dbNameRx: String): String;
  private
  { Private declarations }
  public
    { Public declarations }
  end;

var
  DMwc: TDMwc;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UntMain, UntCommon, UntPickup, UntCommonPOS, UntDMMidas,
  UntWillCallAvailables, UntWillCallStatus, UntSignatureCapture,
  UntCustomerTabs, UntSearchCust2, UntSearchCust, UntDMCentralCredit;

{$R *.dfm}

procedure TDMwc.CDSPacientesCalcFields(DataSet: TDataSet);
begin
{  if CDSPacientesAPELLIDOMATERNO.Value > '' then
    CDSPacientesNombreCompleto.Value := Trim(CDSPacientesAPELLIDOPATERNO.Value) + ' ' + Trim(CDSPacientesAPELLIDOMATERNO.Value) +', ' + Trim(CDSPacientesNOMBRE.Value)
  else
    CDSPacientesNombreCompleto.Value := Trim(CDSPacientesAPELLIDOPATERNO.Value) +', ' + Trim(CDSPacientesNOMBRE.Value);

  CDSPacientesFullAddress.Value := Trim(CDSPacientesDIRECCION1.Value) + ' ' + Trim(CDSPacientesDIRECCION2.Value) + ' ' +
   ' ' + Trim(CDSPacientesCODIGOPOSTAL.Value) + ' '+ Trim(CDSPacientesESTADO.Value);
 if CDSPacientesSEXO.Value = 1 then CDSPacientesGender.Value := 'Male' else CDSPacientesGender.Value := 'Female';
 }
end;

procedure TDMwc.cdsWC_PATIENTSCalcFields(DataSet: TDataSet);
begin
  cdsWC_PATIENTSNombreCompleto.Value := cdsWC_PATIENTSAPELLIDOPATERNO.Value + ' ' +
                                  cdsWC_PATIENTSAPELLIDOMATERNO.Value + ' ' +
                                  cdsWC_PATIENTSNOMBRE.Value;
  cdsWC_PATIENTSFullAddress.Value := cdsWC_PATIENTSDIRECCION1.Value + ' ' +
                                     cdsWC_PATIENTSDIRECCION2.Value + ' ' +
                                     cdsWC_PATIENTSCIUDAD.Value + ' ' +
                                     cdsWC_PATIENTSESTADO.Value + ' ' +
                                     cdsWC_PATIENTSCODIGOPOSTAL.Value;
end;

procedure TDMwc.cdsWillCall2CalcFields(DataSet: TDataSet);
begin

  case cdsWillCall2Status.Value of
  0: cdsWillCall2StatusDefine.Value := 'In Will Call';
  1: cdsWillCall2StatusDefine.Value := 'Picked up';
  2: cdsWillCall2StatusDefine.Value := 'Returend to stock';
  3: cdsWillCall2StatusDefine.Value := 'Delivery';
  4: cdsWillCall2StatusDefine.Value := 'Delivered';
  end;
  if cdsWillCall2CASH_PLAN.Value = 1 then //1 cahs 2 plan
  begin
    cdsWillCall2CASH_PLAN_Define.Value := 'Cash';
    cdsWillCall2AmountDue.Value := cdsWillCall2PRICE.Value;
  end
  else
  begin
    cdsWillCall2CASH_PLAN_Define.Value := 'Health Plan';
    cdsWillCall2AmountDue.Value := cdsWillCall2COPAY.Value;
  end;
end;

procedure TDMwc.cdsWillCallAfterDelete(DataSet: TDataSet);
begin
  if (cdsWillCall.ChangeCount > 0) then cdsWillCall.ApplyUpdates(-1);
end;

procedure TDMwc.cdsWillCallAfterInsert(DataSet: TDataSet);
begin
  cdsWillCallWILLCALL_DATE_ENTERED.asString := DateToStr(Date);
end;

procedure TDMwc.cdsWillCallCalcFields(DataSet: TDataSet);
begin
  case cdsWillCallStatus.Value of
  0: cdsWillCallStatusDefine.Value := 'In Will Call';
  1: cdsWillCallStatusDefine.Value := 'Picked up';
  2: cdsWillCallStatusDefine.Value := 'Returend to stock';
  3: cdsWillCallStatusDefine.Value := 'Delivery';
  4: cdsWillCallStatusDefine.Value := 'Delivered';
  end;
  if cdsWillCallCASH_PLAN.Value = 1 then //1 cahs 2 plan
  begin
    cdsWillCallCASH_PLAN_Define.Value := 'Cash';
    cdsWillCallAmountDue.Value := cdsWillCallPRICE.Value;
  end
  else
  begin
    cdsWillCallCASH_PLAN_Define.Value := 'Health Plan';
    cdsWillCallAmountDue.Value := cdsWillCallCOPAY.Value;
  end;
end;

procedure TDMwc.cdsWillCallHistoryAfterOpen(DataSet: TDataSet);
begin
  case cdsWillCallHistoryStatus.Value of
  0: cdsWillCallHistoryStatusDefine.Value := 'In Will Call';
  1: cdsWillCallHistoryStatusDefine.Value := 'Picked up';
  2: cdsWillCallHistoryStatusDefine.Value := 'Returend to Stock';
  3: cdsWillCallHistoryStatusDefine.Value := 'Delivery';
  4: cdsWillCallHistoryStatusDefine.Value := 'Delivered';
  end;
end;

procedure TDMwc.cdsWillCall_LogAfterDelete(DataSet: TDataSet);
begin
  if (cdsWillCall_Log.ChangeCount > 0) then cdsWillCall_Log.ApplyUpdates(-1);
 // cdsWillCall_Log.Refresh;
end;

procedure TDMwc.cdsWillCall_StatusAfterDelete(DataSet: TDataSet);
begin
  if (cdsWillCall_Status.ChangeCount > 0) then cdsWillCall_Status.ApplyUpdates(-1);
end;

procedure TDMwc.cdsWillCall_StatusAfterInsert(DataSet: TDataSet);
begin
  cdsWillCall_StatusNOTIFICATION_MODE1.Value := 0;
  cdsWillCall_StatusNOTIFICATION_MODE2.Value := 0;
end;

procedure TDMwc.cdsWillCall_StatusAfterScroll(DataSet: TDataSet);
begin
  if cdsWillCall_StatusBAG_NUMBER.Value > 0 then
  begin
    CommonPOS.OpenWillCallBag(IntToStr(cdsWillCall_StatusBAG_NUMBER.Value));
  end;
  cdsTagNumbers.Close;
  cdsTagNumbers.CommandText := 'Select * from WILLCALL_TAG_NUMBERS where Bag_number =  ' + cdsWillCall_StatusBAG_NUMBER.AsString;
  cdsTagNumbers.Open;
end;

procedure TDMwc.cdsWillCall_StatusCalcFields(DataSet: TDataSet);
begin
  case cdsWillCall_StatusStatus.Value of
  0: cdsWillCall_StatusStatusDefine.Value := 'In Will Call';
  1: cdsWillCall_StatusStatusDefine.Value := 'Picked up';
  2: cdsWillCall_StatusStatusDefine.Value := 'Returend to stock';
  3: cdsWillCall_StatusStatusDefine.Value := 'Delivery';
  4: cdsWillCall_StatusStatusDefine.Value := 'Delivered';
  end;
end;

procedure TDMwc.DataModuleCreate(Sender: TObject);
begin
  getWC_PATIENTS(CommonPOS.DataBaseNamePOS, CommonPOS.DataBaseNameRx);
end;

function TDMwc.getWC_PATIENTS(dbNamePOS, dbNameRx: String): String;
begin
  if CommonPOS.StandalonePOS = false then
  begin
    dbNamePOS := CommonPOS.DataBaseNameRx;
  end
  else if DMMidas.CDSSetupNON_WESCOM_STORE.Value = True then
  begin
    dbNameRx := dbNamePOS;
  end;
  result := 'SELECT p.NUMEROCLIENTE, p.NOMBRE, p.APELLIDOPATERNO, p.APELLIDOMATERNO, p.CELULAR, p.DIRECCION1, p.DIRECCION2, '+
                         ' p.NOTIFICATION_MODE_PHONE, p.NOTIFICATION_MODE_CEL, p.NOTIFICATION_MODE_SMS, p.NOTIFICATION_MODE_EMAIL, ' +
                         ' p.email, ' +
                         ' p.CIUDAD, p.CODIGOPOSTAL, w.BAG_NUMBER, w.NOTIFICATION_MODE2_TELEPHONE, w.DATE_CREATED, '+
                         ' p.ESTADO, p.FECHANACIMIENTO, p.TELEFONO, w.STATUS, w.DATE_PICKUP_RTS, p.FAMILY_LINK  '+
                   ' FROM ' +dbNameRx+ '.dbo.PACIENTES as p INNER JOIN  '+
                        dbNamePOS+'.dbo.WILLCALL_STATUS as w ON p.NUMEROCLIENTE = w.CUSTOMER_NUMBER  ';
  qWC_PATIENTS.sql.text := result;
end;




end.
