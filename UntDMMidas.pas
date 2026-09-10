unit UntDMMidas;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect, SConnect, Registry,
  Windows, Messages, Graphics, Controls, Forms, Dialogs,
  Provider, SqlExpr, FMTBcd,
  ObjBrkr,
  Menus, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, WideStrings,
  DBXMsSQL, MidasLib, MIDAS, FireDAC.Phys.MSSQLDef, FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.ODBCBase, frxClass,
  frxDBSet, REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, IdMessage ,
  IdIntercept, System.IniFiles;

type
  TDMMidas = class(TDataModule)
    DSSetup: TDataSource;
    DSClientes: TDataSource;
    DtSrcSales: TDataSource;
    DtSrcPrintList: TDataSource;
    DSTransaction: TDataSource;
    DTSTransHead: TDataSource;
    DTSDailyTotals: TDataSource;
    DSPOS: TDataSource;
    DSAdPrintList: TDataSource;
    DSNoCliente: TDataSource;
    DSInventarioPiso: TDataSource;
    DSGroup: TDataSource;
    DSOrderDetailHistory: TDataSource;
    MainMenu1: TMainMenu;
    P1: TMenuItem;
    Load1: TMenuItem;
    Save1: TMenuItem;
    N1: TMenuItem;
    Quit1: TMenuItem;
    TCPClient: TIdTCPClient;
    DSBalanceInicial: TDataSource;
    DSAssemblyHeader: TDataSource;
    DSAssemblyDetail: TDataSource;
    DSCalcAusp: TDataSource;
    DSPlanesMedicos: TDataSource;
    DSVerTransacciones: TDataSource;
    DSCHKDescription: TDataSource;
    DSTransferHistory: TDataSource;
    DSLog: TDataSource;
    DSTrans: TDataSource;
    DSDepartamentos: TDataSource;
    CDSInventarioPiso: TClientDataSet;
    DSPInventarioPiso: TDataSetProvider;
    CDSInventarioPisoULTIMAVENTA: TSQLTimeStampField;
    DSPSuplidores: TDataSetProvider;
    DSSuplidores: TDataSource;
    CDSSuplidores: TClientDataSet;
    CDSInventarioPisoSUBDEPT: TStringField;
    CDSDepartamentos: TClientDataSet;
    DSPDepartamentos: TDataSetProvider;
    CDSSubDept: TClientDataSet;
    DSPSubDept: TDataSetProvider;
    DSSubDept: TDataSource;
    CDSSubDeptDEPARTAMENTO: TSmallintField;
    CDSSubDeptDESCRIPCION: TStringField;
    CDSSubDeptCOMENTARIO: TStringField;
    CDSSubDeptLINK_SUBDPT: TIntegerField;
    CDSClientes: TClientDataSet;
    DSPClientes: TDataSetProvider;
    CDSClientesNombreCompleto2: TStringField;
    CDSPasswords: TClientDataSet;
    DSPPasswords: TDataSetProvider;
    DSPasswords: TDataSource;
    CDSPasswordsUSERNAME: TStringField;
    DtSrcProductos: TDataSource;
    DSPProductos: TDataSetProvider;
    CDSProductos: TClientDataSet;
    DSOTC: TDataSource;
    CDSOTC: TClientDataSet;
    DSPOTC: TDataSetProvider;
    DSPLog: TDataSetProvider;
    CDSLog: TClientDataSet;
    CDSLogCODIGO: TStringField;
    CDSLogNDC_BARCODE: TStringField;
    CDSLogFECHA: TSQLTimeStampField;
    CDSLogUSUARIO: TStringField;
    CDSLogDESCRIPCION: TStringField;
    CDSLogNOLOG: TIntegerField;
    CDSLogDESC_CODIGO: TStringField;
    CDSDailyTotals: TClientDataSet;
    DSPDailyTotals: TDataSetProvider;
    DSPUtilities: TDataSetProvider;
    DSUtilities: TDataSource;
    CDSUtilities: TClientDataSet;
    DSPSetup: TDataSetProvider;
    CDSSetup: TClientDataSet;
    CDSTransferHistory: TClientDataSet;
    DPTransferHistory: TDataSetProvider;
    CDSPOS: TClientDataSet;
    DPPOS: TDataSetProvider;
    DSTransShow: TDataSource;
    DPTransShow: TDataSetProvider;
    CDSTransShow: TClientDataSet;
    CDSOrderDetailHistory: TClientDataSet;
    DPOrderDetailHistory: TDataSetProvider;
    CDSPrintList: TClientDataSet;
    DPPrintList: TDataSetProvider;
    CDSPrintListDEPARTMENT: TStringField;
    CDSPrintListDESCRIPTION: TStringField;
    CDSPrintListDISPCOST: TStringField;
    CDSPrintListDISPPRICE: TStringField;
    CDSPrintListSTARTDATE: TSQLTimeStampField;
    CDSPrintListENDDATE: TSQLTimeStampField;
    CDSPrintListREGPRICE: TStringField;
    CDSPrintListPRODLISTID: TIntegerField;
    CDSPrintListUPC: TStringField;
    DSDetail: TDataSource;
    DPDetail: TDataSetProvider;
    CDSDetail: TClientDataSet;
    DSClientTransactions: TDataSource;
    DPClientTransactions: TDataSetProvider;
    CDSClientTransactions: TClientDataSet;
    CDSClientTransLC: TClientDataSet;
    DPClientTransLC: TDataSetProvider;
    DSClientTransLC: TDataSource;
    CDSTransHead: TClientDataSet;
    DPTransHead: TDataSetProvider;
    CDSPlanesMedicos: TClientDataSet;
    DPPlanesMedicos: TDataSetProvider;
    CDSHead: TClientDataSet;
    DSHead: TDataSource;
    DPHead: TDataSetProvider;
    CDSTrHeadAdHoc2: TClientDataSet;
    DSTrHeadAdHoc2: TDataSource;
    DPTrHeadAdHoc2: TDataSetProvider;
    CDSVerTransacciones: TClientDataSet;
    DPVerTransacciones: TDataSetProvider;
    CDSBalanceInicial: TClientDataSet;
    DPBalanceInicial: TDataSetProvider;
    CDSBalanceInicialCODIGO: TStringField;
    CDSBalanceInicialFECHA: TSQLTimeStampField;
    CDSBalanceInicialAMOUNT: TFloatField;
    CDSBalanceInicialREASON: TStringField;
    CDSBalanceInicialNUMEROCLIENTE: TIntegerField;
    CDSBalanceInicialTRANS_NO: TIntegerField;
    CDSBalanceInicialUSUARIO: TStringField;
    CDSBalanceInicialUSUARIO2: TStringField;
    CDSBalanceInicialCLIENTE: TStringField;
    CDSAssembly_Detail: TClientDataSet;
    DPQAssembly_Detail: TDataSetProvider;
    CDSAssembly_Header: TClientDataSet;
    DPAssembly_Header: TDataSetProvider;
    CDSAssembly_HeaderRecallNoTrans: TStringField;
    CDSSales: TClientDataSet;
    DPSales: TDataSetProvider;
    CDSSalesTIPO: TStringField;
    CDSSalesCODIGO: TStringField;
    CDSSalesCOSTO: TFloatField;
    CDSSalesRBP: TFloatField;
    CDSSalesESPECIAL: TFloatField;
    CDSSalesDEPARTAMENTO: TSmallintField;
    CDSSalesLOTE: TStringField;
    CDSSalesPRECIO: TFloatField;
    CDSSalesPORCIENTODESCUENTO: TStringField;
    CDSSalesQTYINVENTARIO: TFloatField;
    CDSSalesCMAXINVENTARIO: TFloatField;
    CDSSalesCMININVENTARIO: TFloatField;
    CDSSalesNDC: TStringField;
    CDSSalesCODIGOBARRA: TStringField;
    CDSSalesNUMEROSUPLIDOR: TIntegerField;
    CDSSalesEDITAR_PRECIO: TStringField;
    CDSSalesPRODUCTNO: TIntegerField;
    CDSSalesSUB_DEPARTAMENTO: TSmallintField;
    CDSSalesGROUP_QTY: TIntegerField;
    CDSSalesPRECIO_CAJA: TFloatField;
    CDSSalesQTY_CAJA: TFloatField;
    CDSSalesDESCRIPCION: TStringField;
    CDSSalesDESCUENTO: TStringField;
    CDSSalesCASA_FARMACEUTICA: TStringField;
    CDSSalesROUTEOFADMINISTRATION: TStringField;
    CDSSalesCONTROLADO: TStringField;
    CDSSalesSTRENGTH: TStringField;
    CDSSalesINFOADICIONAL: TStringField;
    CDSSalesMETRICSIZE: TFloatField;
    CDSSalesCAUTION1: TSmallintField;
    CDSSalesCAUTION2: TSmallintField;
    CDSSalesCAUTION3: TSmallintField;
    CDSSalesGENERICNAME: TStringField;
    CDSSalesTXR: TStringField;
    CDSSalesBRAND: TStringField;
    CDSSalesGROUP_PRODUCTNO: TIntegerField;
    CDSSalesRECETARIO: TStringField;
    CDSSalesPACKAGESIZE: TIntegerField;
    CDSSalesFOODITEM: TSmallintField;
    CDSSalesNONEBC: TSmallintField;
    CDSSalesIMAGE_CODE: TStringField;
    CDSSalesSTATUS: TStringField;
    CDSSalesTAXABLE: TStringField;
    CDSSalesSUPLIDOR: TStringField;
    CDSSalesDESCDEPARTAMENTO: TStringField;
    CDSGroup: TClientDataSet;
    DPGroup: TDataSetProvider;
    CDSGroupTIPO: TStringField;
    CDSGroupFECHA_EXPIRACION: TSQLTimeStampField;
    CDSGroupCODIGO: TStringField;
    CDSGroupDEPARTAMENTO: TSmallintField;
    CDSGroupLOTE: TStringField;
    CDSGroupCOMESPECIAL: TSQLTimeStampField;
    CDSGroupTERMINAESPECIAL: TSQLTimeStampField;
    CDSGroupPORCIENTODESCUENTO: TStringField;
    CDSGroupULTIMOCAMBIO: TStringField;
    CDSGroupULTIMAVENTA: TSQLTimeStampField;
    CDSGroupCODIGOBARRA: TStringField;
    CDSGroupNUMEROSUPLIDOR: TIntegerField;
    CDSGroupPRODUCTNO: TIntegerField;
    CDSGroupSUB_DEPARTAMENTO: TSmallintField;
    CDSGroupGROUP_QTY: TIntegerField;
    CDSGroupDESCRIPCION: TStringField;
    CDSGroupDESCUENTO: TStringField;
    CDSGroupCASA_FARMACEUTICA: TStringField;
    CDSGroupROUTEOFADMINISTRATION: TStringField;
    CDSGroupCONTROLADO: TStringField;
    CDSGroupSTRENGTH: TStringField;
    CDSGroupINFOADICIONAL: TStringField;
    CDSGroupCAUTION1: TSmallintField;
    CDSGroupCAUTION2: TSmallintField;
    CDSGroupCAUTION3: TSmallintField;
    CDSGroupGENERICNAME: TStringField;
    CDSGroupTXR: TStringField;
    CDSGroupBRAND: TStringField;
    CDSGroupGROUP_PRODUCTNO: TIntegerField;
    CDSGroupRECETARIO: TStringField;
    CDSGroupPACKAGESIZE: TIntegerField;
    CDSGroupFOODITEM: TSmallintField;
    CDSGroupNONEBC: TSmallintField;
    CDSGroupIMAGE_CODE: TStringField;
    CDSGroupTXR_EXTENSION: TStringField;
    CDSGroupSTATUS: TStringField;
    CDSGroupTAXABLE: TStringField;
    CDSGroupMedicamentoStr: TStringField;
    CDSCHKDescription: TClientDataSet;
    DPCHKDescription: TDataSetProvider;
    CDSCHKDescriptionNOTRANS: TIntegerField;
    CDSCHKDescriptionDESCRIPCION: TStringField;
    QAdPrintList: TSQLDataSet;
    DPAdPrintList: TDataSetProvider;
    CDSAdPrintList: TClientDataSet;
    CDSWebCredRep: TClientDataSet;
    DSWebCredRep: TDataSource;
    DPWebCredRep: TDataSetProvider;
    CDSWebCredRepNO_TRANS: TIntegerField;
    CDSWebCredRepSQL_COMMAND: TStringField;
    CDSNoCliente: TClientDataSet;
    DPNoCliente: TDataSetProvider;
    CDSNoClienteGEN_ID: TIntegerField;
    CDSPrintListDispRegPrice: TStringField;
    CDSPrintListDispSave: TStringField;
    CDSPrintListDispDuration: TStringField;
    CDSPartners: TClientDataSet;
    DataSource2: TDataSource;
    DSPPartners: TDataSetProvider;
    DSRecallTrans: TDataSource;
    CDSRecallTrans: TClientDataSet;
    DSPRecallTrans: TDataSetProvider;
    CDSClientes2: TClientDataSet;
    DSClientes2: TDataSource;
    DSPClientes2: TDataSetProvider;
    CDSClientes2NOMBRE: TStringField;
    CDSClientes2SOCIO: TStringField;
    CDSTransShow2: TClientDataSet;
    DSPTransShow2: TDataSetProvider;
    DSTransShow2: TDataSource;
    CDSLogSUPERVISOR: TStringField;
    CDSULT_TRANS: TClientDataSet;
    CDSULT_TRANSULT_TRANS: TSQLTimeStampField;
    CDSULT_TRANSCODE: TStringField;
    DSULT_TRANS: TDataSource;
    DSPULT_TRANS: TDataSetProvider;
    DSReasons: TDataSource;
    CDSReasons: TClientDataSet;
    DSPReasons: TDataSetProvider;
    CDSReasonsNOTRANS: TIntegerField;
    CDSReasonsDESCRIPCION: TMemoField;
    CDSClientesMailingAddDefine: TStringField;
    CDSInventarioPisoTIPO: TStringField;
    CDSInventarioPisoFECHA_EXPIRACION: TSQLTimeStampField;
    CDSInventarioPisoCODIGO: TStringField;
    CDSInventarioPisoDEPARTAMENTO: TSmallintField;
    CDSInventarioPisoLOTE: TStringField;
    CDSInventarioPisoCOMESPECIAL: TSQLTimeStampField;
    CDSInventarioPisoTERMINAESPECIAL: TSQLTimeStampField;
    CDSInventarioPisoPORCIENTODESCUENTO: TStringField;
    CDSInventarioPisoULTIMOCAMBIO: TStringField;
    CDSInventarioPisoCODIGOBARRA: TStringField;
    CDSInventarioPisoFOODITEM: TSmallintField;
    CDSInventarioPisoNONEBC: TSmallintField;
    CDSInventarioPisoNUMEROSUPLIDOR: TIntegerField;
    CDSInventarioPisoPRODUCTNO: TIntegerField;
    CDSInventarioPisoSUB_DEPARTAMENTO: TSmallintField;
    CDSInventarioPisoDESCRIPCION: TStringField;
    CDSInventarioPisoCASA_FARMACEUTICA: TStringField;
    CDSInventarioPisoROUTEOFADMINISTRATION: TStringField;
    CDSInventarioPisoCONTROLADO: TStringField;
    CDSInventarioPisoSTRENGTH: TStringField;
    CDSInventarioPisoINFOADICIONAL: TStringField;
    CDSInventarioPisoCAUTION1: TSmallintField;
    CDSInventarioPisoCAUTION2: TSmallintField;
    CDSInventarioPisoCAUTION3: TSmallintField;
    CDSInventarioPisoGENERICNAME: TStringField;
    CDSInventarioPisoTXR: TStringField;
    CDSInventarioPisoBRAND: TStringField;
    CDSInventarioPisoGROUP_PRODUCTNO: TIntegerField;
    CDSInventarioPisoRECETARIO: TStringField;
    CDSInventarioPisoDESCUENTO: TStringField;
    CDSInventarioPisoIMAGE_CODE: TStringField;
    CDSInventarioPisoPACKAGESIZE: TIntegerField;
    CDSInventarioPisoTXR_EXTENSION: TStringField;
    CDSInventarioPisoSTATUS: TStringField;
    CDSInventarioPisoTAXABLE: TStringField;
    CDSInventarioPisoTAXABLE_ESTATAL: TStringField;
    CDSInventarioPisoPO: TStringField;
    CDSInventarioPisoISBN: TStringField;
    CDSInventarioPisoNDC: TWideStringField;
    CDSSuplidoresNUMEROSUPLIDOR: TIntegerField;
    CDSSuplidoresSUPLIDOR: TStringField;
    CDSSuplidoresDIRECCION1: TStringField;
    CDSSuplidoresDIRECCION2: TStringField;
    CDSSuplidoresFAX: TStringField;
    CDSSuplidoresZIPCODE: TStringField;
    CDSSuplidoresPORCIENTODESCUENTO: TSingleField;
    CDSSuplidoresDIASDESCUENTO: TIntegerField;
    CDSSuplidoresCONTACTO: TStringField;
    CDSSuplidoresNUMEROCUENTA: TStringField;
    CDSSuplidoresTOTALCOMPRADO: TSingleField;
    CDSSuplidoresTELEFONO: TStringField;
    CDSSuplidoresSUP_ID: TStringField;
    CDSInventarioPisoMOVIMIENTO: TStringField;
    CDSSetupROUTINGDATA: TStringField;
    CDSSetupMODEMCOMPORT: TIntegerField;
    CDSSetupSTORENAME: TStringField;
    CDSSetupSTORETELEPHONE: TStringField;
    CDSSetupSTOREADDRESS: TStringField;
    CDSSetupFACTURARECIBO: TStringField;
    CDSSetupSETTLEMENTBANKID: TStringField;
    CDSSetupCHEQUE: TIntegerField;
    CDSSetupTELEFONO: TStringField;
    CDSSetupDOSWINDOWS: TStringField;
    CDSSetupPOLEDISPLAYCOMPORT: TIntegerField;
    CDSSetupHEADING: TStringField;
    CDSSetupSTOREZIPCODE: TStringField;
    CDSSetupPOLEDISPLAYMESSAGE: TStringField;
    CDSSetupLABELLONGFORM: TStringField;
    CDSSetupFARMACIA: TStringField;
    CDSSetupSEARCHBY: TStringField;
    CDSSetupNOCAJA: TIntegerField;
    CDSSetupRXNOCONTINUO: TStringField;
    CDSSetupSTORENAMEHEADING: TStringField;
    CDSSetupSTOREADDRESSHEADING: TStringField;
    CDSSetupSTOREPHONEHEADING: TStringField;
    CDSSetupPUEBLO: TStringField;
    CDSSetupINTERACCION: TStringField;
    CDSSetupMESSAGEID: TStringField;
    CDSSetupVERSIONCOL: TStringField;
    CDSSetupBANKID: TStringField;
    CDSSetupMERCHANTID: TStringField;
    CDSSetupTERMINALTYPE: TStringField;
    CDSSetupNUMERO_TRANS: TIntegerField;
    CDSSetupESTADO: TStringField;
    CDSSetupMENSAGE: TStringField;
    CDSSetupNEXT_BARCODE: TStringField;
    CDSSetupDATA_COLECTOR_COLUMNS: TIntegerField;
    CDSSetupPORCIENTO_AWP: TSingleField;
    CDSSetupNO_FARMACIA: TIntegerField;
    CDSSetupTAX_RATE: TFloatField;
    CDSSetupTAX_RATE_FROM: TFloatField;
    CDSSetupTAX_RATE_ESTATAL: TFloatField;
    CDSSetupCOBRAR_OTC_TAX: TStringField;
    CDSSetupNABP: TWideStringField;
    CDSSetupIVULOTO_MERCHANT_ID: TStringField;
    CDSSetupIVULOTO_PASSWORD: TStringField;
    CDSSetupPORCIENTO_PATROCINIO: TFloatField;
    CDSLogNO_RX: TLargeintField;
    CDSUtilitiesNAME: TStringField;
    CDSUtilitiesCHARGE_AMNT: TSingleField;
    CDSUtilitiesCHARGE_PER: TSingleField;
    CDSUtilitiesUTILITY_ID: TIntegerField;
    CDSUtilitiesBARCODE: TStringField;
    CDSOrderDetailHistoryORDERDATE: TSQLTimeStampField;
    CDSOrderDetailHistorySUPPLIER: TIntegerField;
    CDSOrderDetailHistoryORDERID: TIntegerField;
    CDSOrderDetailHistoryPO_NO: TStringField;
    CDSOrderDetailHistoryORDERID_1: TIntegerField;
    CDSOrderDetailHistoryDESCRIPTION: TStringField;
    CDSVerTransaccionesID: TIntegerField;
    CDSVerTransaccionesUPC: TStringField;
    CDSVerTransaccionesQTY: TFloatField;
    CDSVerTransaccionesTRANSACTIONNUMBER: TIntegerField;
    CDSVerTransaccionesemploynumber: TStringField;
    CDSVerTransaccionesregister: TSmallintField;
    CDSVerTransaccionesfechaventa: TSQLTimeStampField;
    CDSTransferHistoryTRANSFERDATE: TSQLTimeStampField;
    CDSTransferHistoryPARTNER: TIntegerField;
    CDSTransferHistoryTRANSFERID: TIntegerField;
    CDSTransferHistoryTRANSFERID_1: TIntegerField;
    CDSTransferHistoryPRODUCTO: TStringField;
    CDSTransferHistoryUPC: TStringField;
    CDSAssembly_HeaderNO_TRANS: TIntegerField;
    CDSAssembly_HeaderDESCRIPTION: TStringField;
    CDSAssembly_HeaderFECHA_CREADO: TSQLTimeStampField;
    CDSAssembly_HeaderPRECIO: TSingleField;
    CDSAssembly_HeaderCOSTO: TSingleField;
    CDSAssembly_DetailNO_TRANS: TIntegerField;
    CDSAssembly_DetailBARCODE: TStringField;
    CDSAssembly_DetailDESCRIPTION: TStringField;
    CDSAssembly_DetailQTY: TIntegerField;
    CDSAssembly_DetailPRECIO: TSingleField;
    CDSAssembly_DetailCOSTO: TSingleField;
    CDSAssembly_DetailNOASSEMBLY: TIntegerField;
    CDSPlanesMedicosABREVIATURA: TStringField;
    CDSPlanesMedicosBINNUMBER: TStringField;
    CDSPlanesMedicosTELEFONO: TStringField;
    CDSPlanesMedicosMULTI_RECETA: TStringField;
    CDSPlanesMedicosVERSIONCOL: TStringField;
    CDSPlanesMedicosTONOPULSO: TStringField;
    CDSPlanesMedicosVELOCIDAD: TIntegerField;
    CDSPlanesMedicosBITSDATA: TIntegerField;
    CDSPlanesMedicosPARIDAD: TStringField;
    CDSPlanesMedicosNOMBRE: TStringField;
    CDSPlanesMedicosPROCESSORCONTROL: TStringField;
    CDSPlanesMedicosTELEFONO_SERVICIO1: TStringField;
    CDSPlanesMedicosSOFTWARE_VENDOR_ID: TStringField;
    CDSPlanesMedicosMANUAL_PLAN: TStringField;
    CDSPlanesMedicosDISPENSING_FEE: TSingleField;
    CDSPlanesMedicosTELEFONO_SERVICIO2: TStringField;
    CDSPlanesMedicosPRECIO_CASH_AWP: TStringField;
    CDSPlanesMedicosNUMEROFARMACIA: TStringField;
    CDSPlanesMedicosSERVICE_PROVIDER_ID_QUAL: TStringField;
    CDSPlanesMedicosPROVIDERIDQUALIFIER: TStringField;
    CDSPlanesMedicosCOMPOUND_SEGMENT: TStringField;
    CDSPlanesMedicosPLANESMEDICOSNO: TIntegerField;
    CDSPlanesMedicosSTOPBITS: TSmallintField;
    CDSPlanesMedicosCONSIDER_NON_MATCHENDC: TStringField;
    CDSOrderDetailHistorySUPLIER_NAME: TStringField;
    CDSTransferHistoryPARTNER_NAME: TStringField;
    CDSPartnersDIRECCION1: TStringField;
    CDSPartnersDIRECCION2: TStringField;
    CDSPartnersFAX: TStringField;
    CDSPartnersZIPCODE: TStringField;
    CDSPartnersPORCIENTODESCUENTO: TSingleField;
    CDSPartnersCONTACTO: TStringField;
    CDSPartnersNUMEROCUENTA: TStringField;
    CDSPartnersTOTALCOMPRADO: TSingleField;
    CDSPartnersTELEFONO: TStringField;
    CDSPartnersPARTNERID: TIntegerField;
    CDSPartnersNOMBRE: TStringField;
    CDSPartnersIP_ADDRESS: TStringField;
    CDSPartnersSUP_ID: TStringField;
    CDSInventarioPisoPATROCINIO: TIntegerField;
    CDSInventarioPisoCOBRAR_TAX: TIntegerField;
    CDSCombo_DETAIL: TClientDataSet;
    DSCombo_DETAIL: TDataSource;
    DSPCombo_DETAIL: TDataSetProvider;
    CDSCombo_DETAILPRODUCTNO: TIntegerField;
    CDSCombo_DETAILPRICE: TFloatField;
    CDSCombo_DETAILPRODUCT: TWideStringField;
    CDSCombo: TClientDataSet;
    DSCombo: TDataSource;
    DSPCombo: TDataSetProvider;
    CDSComboPRICE: TFloatField;
    CDSComboPRODUCT: TWideStringField;
    CDSComboCOMBO_ID: TIntegerField;
    CDSCombo_DETAILCOMBO_ID: TIntegerField;
    CDSCombo_DETAILTOTAL: TFloatField;
    CDSCombo_DETAILQUANTITY: TIntegerField;
    CDSInventarioPisoESCANEAR_BARCODEALTERNO: TSmallintField;
    DSPOTC2: TDataSetProvider;
    DSOTC2: TDataSource;
    CDSOTC2: TClientDataSet;
    DSPPrescriptions2: TDataSetProvider;
    DSPrescriptions2: TDataSource;
    CDSPrescriptions2: TClientDataSet;
    CDSPickUp: TClientDataSet;
    CDSPickUpQTY: TFloatField;
    CDSPickUpOTCNUMBER: TIntegerField;
    CDSPickUpDeducible: TFloatField;
    CDSPickUpPrecioVenta: TFloatField;
    CDSPickUpNumeroAutorizacion: TStringField;
    CDSPickUpINSTANCIA: TIntegerField;
    CDSPickUpFECHA: TSQLTimeStampField;
    CDSPickUpMEDICAMENTO: TStringField;
    CDSPickUpNUMERORECETA: TLargeintField;
    DSPPickUp: TDataSetProvider;
    DSPickUp: TDataSource;
    DSPPrescriptions: TDataSetProvider;
    DSPrescriptions: TDataSource;
    CDSPrescriptions: TClientDataSet;
    CDSNextRxNumber: TClientDataSet;
    CDSNextRxNumberRX_TRAN_NO: TIntegerField;
    CDSNextRxNumberBARCODE: TIntegerField;
    CDSNextRxNumberSCANED_RX_LINK: TIntegerField;
    CDSNextRxNumberINSTANCIA: TIntegerField;
    CDSNextRxNumberINSTANCIA_SIGNATURE: TIntegerField;
    CDSNextRxNumberMEZCLA_TRAN_NO: TIntegerField;
    CDSNextRxNumberRX_NUMBER: TLargeintField;
    CDSNextRxNumberParata: TIntegerField;
    CDSNextRxNumberBATCH_NUMBER: TIntegerField;
    DSNextRxNumber: TDataSource;
    DSPNextRxNumber: TDataSetProvider;
    CDSPRESC_ESIGNATURE: TClientDataSet;
    CDSPRESC_ESIGNATUREENCRIPPTED_SIGNATURE: TMemoField;
    CDSPRESC_ESIGNATURESIGNATURE_DATE: TDateField;
    CDSPRESC_ESIGNATURESIGNATURE_USER: TWideStringField;
    CDSPRESC_ESIGNATURESIGNATURE_LINK: TIntegerField;
    CDSPRESC_ESIGNATUREPICKEDUP_BY_RELATION: TSmallintField;
    CDSPRESC_ESIGNATUREPICKEDUP_ID: TWideStringField;
    CDSPRESC_ESIGNATUREPICKEDUP_BY_RELATION_DEF: TStringField;
    DSPRES_ESIGNATURE: TDataSource;
    DSPPRESC_ESIGNATURE: TDataSetProvider;
    dspBotones1: TDataSetProvider;
    CDSBotones: TClientDataSet;
    dsBotones: TDataSource;
    CDSBotonesPRODUCTNO: TIntegerField;
    CDSBotonesDESCRIPTION: TWideStringField;
    CDSBotonesPROCEDURE_ADD_ON: TWideStringField;
    CDSBotonesBUTTON_IMAGE: TBlobField;
    CDSTransShow2TRANSACTIONNUMBER: TIntegerField;
    CDSTransShow2QTY: TFloatField;
    CDSTransShow2FOOD: TStringField;
    CDSTransShow2UPC: TStringField;
    CDSTransShow2ID: TIntegerField;
    CDSTransShow2IDNUMBER: TIntegerField;
    CDSTransShow2REGISTER: TSmallintField;
    CDSTransShow2SUPERVISOR: TStringField;
    CDSTransShow2VOIDED: TIntegerField;
    CDSTransShow2SUBDETAIL: TStringField;
    CDSTransShow2PRODDESCRIPTION: TStringField;
    CDSTransShow2PRODDEPARTMENT: TStringField;
    CDSTransShow2MODIFIED: TSmallintField;
    CDSTransShow2FECHAVENTA: TSQLTimeStampField;
    CDSTransShow2SUPLIDOR: TIntegerField;
    CDSTransShow2PRODUCTNO: TIntegerField;
    CDSTransShow2OPENED: TStringField;
    CDSTransShow2GROUP_PROD: TStringField;
    CDSTransShow2PATROCINIO: TSmallintField;
    CDSSetupWC_STOP_TAG_SEARCH_INTERVAL: TIntegerField;
    CDSSetupPOS_SHOW_RX_SIGNATURE: TBooleanField;
    CDSSetupPOS_SIGNATURE_PASSWORD: TBooleanField;
    CDSOTCCLAIM_STATUS_DEFINE: TStringField;
    CDSDetailIDNUMBER: TIntegerField;
    CDSDetailTRANSACTIONNUMBER: TIntegerField;
    CDSDetailUPC: TStringField;
    CDSDetailVOIDED: TIntegerField;
    CDSDetailSUBDETAIL: TStringField;
    CDSDetailPRODDESCRIPTION: TStringField;
    CDSDetailPRODDEPARTMENT: TStringField;
    CDSDetailFOOD: TStringField;
    CDSDetailMODIFIED: TSmallintField;
    CDSDetailFECHAVENTA: TSQLTimeStampField;
    CDSDetailSUPLIDOR: TIntegerField;
    CDSDetailID: TIntegerField;
    CDSDetailPRODUCTNO: TIntegerField;
    CDSDetailTAX_ESTATAL: TStringField;
    CDSDetailTAX_MUNICIPAL: TStringField;
    CDSDetailQTY: TFloatField;
    CDSDetailOPENED: TStringField;
    CDSDetailGROUP_PROD: TStringField;
    CDSDetailREGISTER: TSmallintField;
    CDSDetailSUPERVISOR: TStringField;
    CDSDetailPATROCINIO: TSmallintField;
    CDSDetailSUBDEPARTAMENTO: TSmallintField;
    CDSTransHeadBALANCE: TFloatField;
    CDSTransHeadSUB_TOTAL: TFloatField;
    CDSTransHeadRecallNoTrans: TStringField;
    CDSULT_TRANSAMOUNT: TFMTBCDField;
    CDSSetupCOSTO_CALCULADO: TBooleanField;
    CDSInventarioPisoEDITAR_PRECIO: TBooleanField;
    CDSSetupSALESTECH_STAND_ALONE: TBooleanField;
    dspProductImage: TDataSetProvider;
    dsProductImage: TDataSource;
    cdsProductImage: TClientDataSet;
    CDSSetupCONFIRM_OPEN_REGISTER: TBooleanField;
    CDSSetupCD_TERMINAL_ID: TStringField;
    CDSSetupCD_MERCHANT_ID: TStringField;
    CDSSetupCD_SERVER_IP: TStringField;
    CDSSetupCD_SECUREDEVICE_EMV: TStringField;
    CDSSetupCD_SECURE_DEVICE: TStringField;
    CDSSetupCD_PINPAD_TYPE: TStringField;
    CDSSetupCD_LOG_ACTIVATION: TBooleanField;
    CDSPrescriptionsNUMERODOCTOR: TIntegerField;
    CDSPrescriptionsNUMEROCLIENTE: TIntegerField;
    CDSPrescriptionsNUMEROREFILLSAUTORIZADOS: TSmallintField;
    CDSPrescriptionsMEDICAMENTO: TStringField;
    CDSPrescriptionsRXORIGINCODE: TStringField;
    CDSPrescriptionsCOMPOUNDCODE: TIntegerField;
    CDSPrescriptionsFECHAULTIMOREFILL: TSQLTimeStampField;
    CDSPrescriptionsFECHARECETA: TSQLTimeStampField;
    CDSPrescriptionsLICENCIA: TStringField;
    CDSPrescriptionsNDC: TStringField;
    CDSPrescriptionsPRODUCT_ID: TIntegerField;
    CDSPrescriptionsPRESCRIBERIDQUALIFIER: TStringField;
    CDSPrescriptionsSCANED_RX_LINK: TIntegerField;
    CDSPrescriptionsINFORMACION_EXT: TMemoField;
    CDSPrescriptionsNUMERORECETA: TLargeintField;
    CDSPrescriptionsePRESCRIBE_IDMess: TLargeintField;
    CDSPrescriptionsLABELCODESNO: TIntegerField;
    CDSPrescriptionsSPI: TWideStringField;
    CDSPrescriptionsMessageID: TWideStringField;
    CDSPrescriptionsETIQUETA: TWideStringField;
    CDSPrescriptionsACTIVE: TBooleanField;
    CDSPrescriptionsSIG: TWideStringField;
    CDSPrescriptionsDAYS_SUPPLY: TIntegerField;
    CDSPrescriptionsINSTANCIA: TIntegerField;
    CDSSetupCD_COMUNICATION_PORT: TStringField;
    CDSPrescriptions2NUMERODOCTOR: TIntegerField;
    CDSPrescriptions2NUMEROCLIENTE: TIntegerField;
    CDSPrescriptions2NUMEROREFILLSAUTORIZADOS: TSmallintField;
    CDSPrescriptions2MEDICAMENTO: TStringField;
    CDSPrescriptions2RXORIGINCODE: TStringField;
    CDSPrescriptions2COMPOUNDCODE: TIntegerField;
    CDSPrescriptions2FECHAULTIMOREFILL: TSQLTimeStampField;
    CDSPrescriptions2FECHARECETA: TSQLTimeStampField;
    CDSPrescriptions2LICENCIA: TStringField;
    CDSPrescriptions2NDC: TStringField;
    CDSPrescriptions2PRODUCT_ID: TIntegerField;
    CDSPrescriptions2PRESCRIBERIDQUALIFIER: TStringField;
    CDSPrescriptions2SCANED_RX_LINK: TIntegerField;
    CDSPrescriptions2INFORMACION_EXT: TMemoField;
    CDSPrescriptions2NUMERORECETA: TLargeintField;
    CDSPrescriptions2ePRESCRIBE_IDMess: TLargeintField;
    CDSPrescriptions2LABELCODESNO: TIntegerField;
    CDSPrescriptions2SPI: TWideStringField;
    CDSPrescriptions2MessageID: TWideStringField;
    CDSPrescriptions2ETIQUETA: TWideStringField;
    CDSPrescriptions2ACTIVE: TBooleanField;
    CDSPrescriptions2SIG: TWideStringField;
    CDSPrescriptions2DAYS_SUPPLY: TIntegerField;
    CDSPrescriptions2INSTANCIA: TIntegerField;
    CDSSetupCD_ACTIVE: TBooleanField;
    dsBarcodePrintQ: TDataSource;
    dspBarcodePrintQ: TDataSetProvider;
    cdsBarcodePrintQ: TClientDataSet;
    cdsBarcodePrintQID: TIntegerField;
    cdsBarcodePrintQPRODUCT: TWideStringField;
    cdsBarcodePrintQPRODUCT_ID: TIntegerField;
    cdsBarcodePrintQCOPIES: TIntegerField;
    dsShopper: TDataSource;
    dsShopperDetail: TDataSource;
    cdsShopper: TClientDataSet;
    cdsShopperDetail: TClientDataSet;
    dspShopper: TDataSetProvider;
    dspShopperDetail: TDataSetProvider;
    cdsShopperID: TIntegerField;
    cdsShopperDESCRIPTION: TWideStringField;
    cdsShopperACTIVE: TBooleanField;
    cdsShopperDetailID: TIntegerField;
    cdsShopperDetailPRODUCT: TWideStringField;
    cdsShopperDetailPRODUCT_ID: TIntegerField;
    cdsShopperDetailCOPIES: TIntegerField;
    cdsShopperDetailLAST_SPECIAL: TFloatField;
    cdsShopperDetailSPECIAL: TFloatField;
    cdsShopperDetailRETAIL_PRICE: TFloatField;
    cdsBarcodePrintQREGISTER_NO: TIntegerField;
    cdsShopperDetailCOST: TFloatField;
    cdsShopperDEPARTMENT: TIntegerField;
    cdsShopperSUB_DEPARTMENT: TIntegerField;
    CDSSubDeptEXCLUDE: TBooleanField;
    dspSalesPromo: TDataSetProvider;
    cdsSalesPromo: TClientDataSet;
    dsSalesPromo: TDataSource;
    cdsSalesPromoID: TIntegerField;
    cdsSalesPromoQTY: TIntegerField;
    cdsSalesPromoQTY_DISCOUT: TIntegerField;
    cdsSalesPromoDEFINE: TStringField;
    cdsShopperDetailSALES_PROMOTION_ID: TIntegerField;
    cdsShopperDetailDEFINE_SP: TStringField;
    CDSInventarioPisoSALES_PROMOTION_ID: TIntegerField;
    CDSInventarioPisoSALES_PROMO_DEFINE: TStringField;
    CDSSetupPOS_IMPORT_SIGNATURE: TBooleanField;
    CDSSetupPOS_INCLUDE_BATCH: TBooleanField;
    CDSSetupSP_SELECTALL: TBooleanField;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDConnection1: TFDConnection;
    FDTransaction1: TFDTransaction;
    QInventarioPisoFD: TFDQuery;
    QSuplidoresFD: TFDQuery;
    QSumComboPrice: TFDQuery;
    qShopperDetailFD: TFDQuery;
    QDepartamentosFD: TFDQuery;
    QSub_DeapartamentoFD: TFDQuery;
    QClientesFD: TFDQuery;
    QPasswordsFD: TFDQuery;
    QProductosFD: TFDQuery;
    QOTCFD: TFDQuery;
    QCDSPrescriptionsFD: TFDQuery;
    QSalesFD: TFDQuery;
    QGroupFD: TFDQuery;
    QCHKDescriptionFD: TFDQuery;
    QClientes2FD: TFDQuery;
    QLogFD: TFDQuery;
    QDailytotalsFD: TFDQuery;
    QUtilitiesFD: TFDQuery;
    QSetupFD: TFDQuery;
    QOrderDetailHistoryFD: TFDQuery;
    QPrintListFD: TFDQuery;
    QDetailFD: TFDQuery;
    QClientTransactionsFD: TFDQuery;
    QClientTransLCFD: TFDQuery;
    QBalanceInicialFD: TFDQuery;
    QULT_TRANSFD: TFDQuery;
    QComboFD: TFDQuery;
    QCombo_DETAILFD: TFDQuery;
    qShopperFD: TFDQuery;
    QTransferHistoryFD: TFDQuery;
    QPOSFD: TFDQuery;
    QTransShow1FD: TFDQuery;
    QTransHeadFD: TFDQuery;
    QPlanesMedicosFD: TFDQuery;
    QHeadFD: TFDQuery;
    QTrHeadAdHoc2: TFDQuery;
    QVerTransaccionesFD: TFDQuery;
    QAssembly_DetailFD: TFDQuery;
    QAssembly_HeaderFD: TFDQuery;
    FDQuery2: TFDQuery;
    QWebCredRepFD: TFDQuery;
    QTransShow2FD: TFDQuery;
    qBarcodePrintQFD: TFDQuery;
    FDQuery3: TFDQuery;
    UPDATE_OTC_WFCASHIER: TFDStoredProc;
    SQLQuery: TFDQuery;
    SQLDSPartnersFD: TFDQuery;
    QRecallTransFD: TFDQuery;
    QReasonsFD: TFDQuery;
    SQLQPrescriptions2FD: TFDQuery;
    DQLDSOTC2FD: TFDQuery;
    QPICKUPFD: TFDQuery;
    QNextRxNumberFD: TFDQuery;
    SQLPRES_ESIGNATUREFD: TFDQuery;
    INSERT_TROUTD: TFDStoredProc;
    CAL_HEAD_TOTAL: TFDStoredProc;
    INSERT_TRANS: TFDStoredProc;
    DEUDA: TFDStoredProc;
    QUpdateDebt: TFDStoredProc;
    INSERT_LOG: TFDStoredProc;
    UPDATE_OTC_SIGNATURELINK: TFDStoredProc;
    SQLSPCalcularAusp: TFDStoredProc;
    TRANSACTIONDETAIL_DELETE_PRODUCT2: TFDStoredProc;
    SPCalcHeadTotal: TFDStoredProc;
    SPNextInstanciaSignature: TFDStoredProc;
    TRANSACTIONDETAIL_DELETE: TFDStoredProc;
    SPCalcHeadTotals: TFDStoredProc;
    SPNEXT_BARCODE: TFDStoredProc;
    TRANSACTIONDETAIL_DELETE_PRODUCT: TFDStoredProc;
    INSERT_ESIGNATURE: TFDStoredProc;
    TRANSACTIONDETAIL_UPDATEPRICE: TFDStoredProc;
    TRANSACTIONDETAIL_CANCELTRANS: TFDStoredProc;
    SPSCANED_RX_LINK: TFDStoredProc;
    QInsertTransDetailTemp: TFDStoredProc;
    CLONE_PRODUCT: TFDStoredProc;
    SPDatabaseBackup: TFDStoredProc;
    SPUpdateInventory: TFDStoredProc;
    LOGEADOPOS: TFDStoredProc;
    INSERT_TRANSACTION_CREDITO: TFDStoredProc;
    UPDATE_INVENTORY: TFDStoredProc;
    LASTIDENTITY: TFDStoredProc;
    SPGROUP_PROD_POS: TFDStoredProc;
    QProductImageFD: TFDQuery;
    qSalesPromoFD: TFDQuery;
    sdsLastIdentity: TFDQuery;
    SQLDataSet2: TFDQuery;
    SQLQuery1: TFDQuery;
    SQLQuery1SA: TFDQuery;
    SQLQuery2: TFDQuery;
    SQLQuery2SA: TFDQuery;
    QTransDetail: TFDQuery;
    CDSAdHocPrintList: TFDQuery;
    QBorrarNonMatchedNDC: TFDQuery;
    QSecurity: TFDQuery;
    QAlterProcedureINSERT_TRANS: TFDQuery;
    CDSTrHeadAdHoc: TFDQuery;
    SQLQSumPatrocinio: TFDQuery;
    SQLQViewAuspicioTotal: TFDQuery;
    SQLQueryCalcAusp: TFDQuery;
    QCalcTarjetaFamilia: TFDQuery;
    QUpdateTax: TFDQuery;
    QUpdateTaxFood: TFDQuery;
    QDeletePickUp: TFDQuery;
    QUpdateRxSignatureLink: TFDQuery;
    QNoCliente: TFDQuery;
    CDSTransShowIDNUMBER: TAutoIncField;
    CDSTransShowTRANSACTIONNUMBER: TIntegerField;
    CDSTransShowUPC: TStringField;
    CDSTransShowVOIDED: TIntegerField;
    CDSTransShowSUBDETAIL: TStringField;
    CDSTransShowPRODDESCRIPTION: TStringField;
    CDSTransShowPRODDEPARTMENT: TStringField;
    CDSTransShowFOOD: TStringField;
    CDSTransShowMODIFIED: TSmallintField;
    CDSTransShowFECHAVENTA: TSQLTimeStampField;
    CDSTransShowSUPLIDOR: TIntegerField;
    CDSTransShowID: TIntegerField;
    CDSTransShowPRODUCTNO: TIntegerField;
    CDSTransShowTAX_ESTATAL: TStringField;
    CDSTransShowTAX_MUNICIPAL: TStringField;
    CDSTransShowQTY: TFloatField;
    CDSTransShowOPENED: TStringField;
    CDSTransShowGROUP_PROD: TStringField;
    CDSTransShowREGISTER: TSmallintField;
    CDSTransShowSUPERVISOR: TStringField;
    CDSTransShowPATROCINIO: TSmallintField;
    CDSTransShowSUBDEPARTAMENTO: TSmallintField;
    CDSTransShowBARCODEALTERNO1: TWideStringField;
    CDSTransShowBARCODEALTERNO2: TWideStringField;
    CDSTransShowBAG_NUMBER: TIntegerField;
    CDSTransShowUTILIDAD: TBooleanField;
    CDSTransShowOTC_NUMBER: TIntegerField;
    CDSTransShowTRANS_TIME: TSQLTimeStampField;
    CDSTransShowTAX_SERVICIO: TBooleanField;
    CDSTransShowNOTE: TWideStringField;
    CDSTransHeadPAYMENTTYPE1: TStringField;
    CDSTransHeadTRANSACTIONDATE: TSQLTimeStampField;
    CDSTransHeadNUMBERITEMS: TIntegerField;
    CDSTransHeadCREDITCARD1: TStringField;
    CDSTransHeadOPENED: TStringField;
    CDSTransHeadVOIDED: TIntegerField;
    CDSTransHeadCUSTOMERID: TIntegerField;
    CDSTransHeadTRANSACTIONTIME: TSQLTimeStampField;
    CDSTransHeadPAID: TStringField;
    CDSTransHeadPAYMENTTYPE2: TStringField;
    CDSTransHeadCREDITCARD2: TStringField;
    CDSTransHeadSHIFT: TSmallintField;
    CDSTransHeadREGISTER: TSmallintField;
    CDSTransHeadEMPLOYNUMBER: TStringField;
    CDSTransHeadDELIVERYADDRESS1: TStringField;
    CDSTransHeadDELIVERYADDRESS2: TStringField;
    CDSTransHeadDELIVERYNAME: TStringField;
    CDSTransHeadDELIVEREDBY: TStringField;
    CDSTransHeadPONUMBER: TStringField;
    CDSTransHeadDELIVERYPHONE: TStringField;
    CDSTransHeadID: TIntegerField;
    CDSTransHeadTRANSACTIONNUMBER: TAutoIncField;
    CDSTransHeadPAYMENTTYPE3: TStringField;
    CDSTransHeadPAYMENTTYPE4: TStringField;
    CDSTransHeadCREDITCARD3: TStringField;
    CDSTransHeadCREDITCARD4: TStringField;
    CDSTransHeadDELIVERED: TStringField;
    CDSTransHeadSUPERVISOR: TStringField;
    CDSTransHeadCUSTOMER: TWideStringField;
    CDSHeadPAYMENTTYPE1: TStringField;
    CDSHeadTRANSACTIONDATE: TSQLTimeStampField;
    CDSHeadNUMBERITEMS: TIntegerField;
    CDSHeadCREDITCARD1: TStringField;
    CDSHeadOPENED: TStringField;
    CDSHeadVOIDED: TIntegerField;
    CDSHeadCUSTOMERID: TIntegerField;
    CDSHeadTRANSACTIONTIME: TSQLTimeStampField;
    CDSHeadPAID: TStringField;
    CDSHeadPAYMENTTYPE2: TStringField;
    CDSHeadCREDITCARD2: TStringField;
    CDSHeadSHIFT: TSmallintField;
    CDSHeadREGISTER: TSmallintField;
    CDSHeadEMPLOYNUMBER: TStringField;
    CDSHeadDELIVERYADDRESS1: TStringField;
    CDSHeadDELIVERYADDRESS2: TStringField;
    CDSHeadDELIVERYNAME: TStringField;
    CDSHeadDELIVEREDBY: TStringField;
    CDSHeadPONUMBER: TStringField;
    CDSHeadDELIVERYPHONE: TStringField;
    CDSHeadID: TIntegerField;
    CDSHeadTRANSACTIONNUMBER: TAutoIncField;
    CDSHeadPAYMENTTYPE3: TStringField;
    CDSHeadPAYMENTTYPE4: TStringField;
    CDSHeadCREDITCARD3: TStringField;
    CDSHeadCREDITCARD4: TStringField;
    CDSHeadDELIVERED: TStringField;
    CDSHeadSUPERVISOR: TStringField;
    CDSHeadCUSTOMER: TWideStringField;
    CDSSetupPOS_RESTAURANT: TBooleanField;
    CDSBotonesBUTTON_NUMBER: TIntegerField;
    SQLBotonesFD: TFDQuery;
    CDSBotonesBUTTON_NAME: TStringField;
    CDSSetupPOS_INSERT_NEW_PRODUCT: TBooleanField;
    CDSRecallTransPAYMENTTYPE1: TStringField;
    CDSRecallTransTRANSACTIONDATE: TSQLTimeStampField;
    CDSRecallTransNUMBERITEMS: TIntegerField;
    CDSRecallTransCREDITCARD1: TStringField;
    CDSRecallTransOPENED: TStringField;
    CDSRecallTransVOIDED: TIntegerField;
    CDSRecallTransCUSTOMERID: TIntegerField;
    CDSRecallTransTRANSACTIONTIME: TSQLTimeStampField;
    CDSRecallTransPAID: TStringField;
    CDSRecallTransPAYMENTTYPE2: TStringField;
    CDSRecallTransCREDITCARD2: TStringField;
    CDSRecallTransSHIFT: TSmallintField;
    CDSRecallTransREGISTER: TSmallintField;
    CDSRecallTransEMPLOYNUMBER: TStringField;
    CDSRecallTransDELIVERYADDRESS1: TStringField;
    CDSRecallTransDELIVERYADDRESS2: TStringField;
    CDSRecallTransDELIVERYNAME: TStringField;
    CDSRecallTransDELIVEREDBY: TStringField;
    CDSRecallTransPONUMBER: TStringField;
    CDSRecallTransDELIVERYPHONE: TStringField;
    CDSRecallTransID: TIntegerField;
    CDSRecallTransTRANSACTIONNUMBER: TAutoIncField;
    CDSRecallTransPAYMENTTYPE3: TStringField;
    CDSRecallTransPAYMENTTYPE4: TStringField;
    CDSRecallTransCREDITCARD3: TStringField;
    CDSRecallTransCREDITCARD4: TStringField;
    CDSRecallTransDELIVERED: TStringField;
    CDSRecallTransSUPERVISOR: TStringField;
    CDSRecallTransCUSTOMER: TWideStringField;
    CDSInventarioPisoKITCHEN: TBooleanField;
    CDSTransHeadSERVER: TStringField;
    qTabsHeader: TFDQuery;
    dspTabsHeader: TDataSetProvider;
    cdsTabsHeader: TClientDataSet;
    dsTabsHeader: TDataSource;
    qTabsDetail: TFDQuery;
    dspTabsDetail: TDataSetProvider;
    dsTabsDetail: TDataSource;
    cdsTabsDetail: TClientDataSet;
    cdsTabsDetailID: TAutoIncField;
    cdsTabsDetailTABS_ID: TIntegerField;
    cdsTabsDetailCUSTOMER: TWideStringField;
    cdsTabsDetailCREDIT_CARD: TWideStringField;
    cdsTabsHeaderID: TAutoIncField;
    cdsTabsHeaderBUTTON_NAME: TWideStringField;
    cdsTabsHeaderSERVER: TIntegerField;
    cdsTabsHeaderBUTTON_IMAGE: TBlobField;
    cdsTabsHeaderBUTTON_CAPTION: TWideStringField;
    cdsTabsDetailDATE: TSQLTimeStampField;
    cdsTabsDetailTRANSACTIONNUMBER: TIntegerField;
    qOpenTabs: TFDQuery;
    dsOpenTabs: TDataSource;
    cdsOpenTabs: TClientDataSet;
    dspOpenTabs: TDataSetProvider;
    cdsOpenTabsID: TIntegerField;
    cdsOpenTabsSERVER: TIntegerField;
    cdsOpenTabsTRANSACTIONNUMBER: TIntegerField;
    cdsOpenTabsCUSTOMER: TWideStringField;
    cdsOpenTabsTELEPHONE: TWideStringField;
    cdsOpenTabsCREDIT_CARD: TWideStringField;
    cdsOpenTabsDATE: TSQLTimeStampField;
    cdsTabsDetailTELEPHONE: TWideStringField;
    INSERT_NEWTAB: TFDStoredProc;
    cdsOpenTabsSERVER_DEFINE: TStringField;
    cdsOpenTabsTRANSACTIONNUMBER_DEFINE: TStringField;
    cdsOpenTabsBUTTON_CAPTION: TWideStringField;
    GETNEWHEADER: TFDStoredProc;
    qOpenTabs2: TFDQuery;
    dspOpenTabs2: TDataSetProvider;
    dsOpenTabs2: TDataSource;
    cdsOpenTabs2: TClientDataSet;
    cdsOpenTabs2ID: TIntegerField;
    cdsOpenTabs2SERVER: TIntegerField;
    cdsOpenTabs2CUSTOMER: TWideStringField;
    cdsOpenTabs2TELEPHONE: TWideStringField;
    cdsOpenTabs2CREDIT_CARD: TWideStringField;
    cdsOpenTabs2DATE: TSQLTimeStampField;
    cdsOpenTabs2TRANSACTIONNUMBER: TIntegerField;
    cdsOpenTabs2BUTTON_CAPTION: TWideStringField;
    qTabsDetail2: TFDQuery;
    dspTabsDetail2: TDataSetProvider;
    dsTabsDetail2: TDataSource;
    cdsTabsDetail2: TClientDataSet;
    cdsTabsDetail2ID: TAutoIncField;
    cdsTabsDetail2TABS_ID: TIntegerField;
    cdsTabsDetail2CUSTOMER: TWideStringField;
    cdsTabsDetail2TELEPHONE: TWideStringField;
    cdsTabsDetail2CREDIT_CARD: TWideStringField;
    cdsTabsDetail2TRANSACTIONNUMBER: TIntegerField;
    cdsTabsDetail2DATE: TSQLTimeStampField;
    qTransDetailTemp: TFDQuery;
    cdsTransDetailTemp: TClientDataSet;
    dspTransDetailTemp: TDataSetProvider;
    dsTransDetailTemp: TDataSource;
    cdsTransDetailTempIDNUMBER: TAutoIncField;
    cdsTransDetailTempTRANSACTIONNUMBER: TIntegerField;
    cdsTransDetailTempUPC: TStringField;
    cdsTransDetailTempVOIDED: TIntegerField;
    cdsTransDetailTempSUBDETAIL: TStringField;
    cdsTransDetailTempPRODDESCRIPTION: TStringField;
    cdsTransDetailTempPRODDEPARTMENT: TStringField;
    cdsTransDetailTempFOOD: TStringField;
    cdsTransDetailTempMODIFIED: TSmallintField;
    cdsTransDetailTempFECHAVENTA: TSQLTimeStampField;
    cdsTransDetailTempSUPLIDOR: TIntegerField;
    cdsTransDetailTempID: TIntegerField;
    cdsTransDetailTempPRODUCTNO: TIntegerField;
    cdsTransDetailTempTAX_ESTATAL: TStringField;
    cdsTransDetailTempTAX_MUNICIPAL: TStringField;
    cdsTransDetailTempQTY: TFloatField;
    cdsTransDetailTempOPENED: TStringField;
    cdsTransDetailTempGROUP_PROD: TStringField;
    cdsTransDetailTempREGISTER: TSmallintField;
    cdsTransDetailTempSUPERVISOR: TStringField;
    cdsTransDetailTempPATROCINIO: TSmallintField;
    cdsTransDetailTempSUBDEPARTAMENTO: TSmallintField;
    cdsTransDetailTempBARCODEALTERNO1: TWideStringField;
    cdsTransDetailTempBARCODEALTERNO2: TWideStringField;
    cdsTransDetailTempBAG_NUMBER: TIntegerField;
    cdsTransDetailTempUTILIDAD: TBooleanField;
    cdsTransDetailTempOTC_NUMBER: TIntegerField;
    cdsTransDetailTempTRANS_TIME: TSQLTimeStampField;
    cdsTransDetailTempTAX_SERVICIO: TBooleanField;
    cdsTransDetailTempNOTE: TWideStringField;
    cdsTransDetailTempKITCHEN: TBooleanField;
    CALC_TAB_BALANCE: TFDStoredProc;
    CDSBotonesASSEMBLY_YN: TBooleanField;
    qBOTONES_MIDIFIERS: TFDQuery;
    dspBotonesModifiers: TDataSetProvider;
    cdsBotonesModifiers: TClientDataSet;
    dsBotonesModifiers: TDataSource;
    cdsBotonesModifiersBUTTON_NUMBER: TAutoIncField;
    cdsBotonesModifiersPRODUCT_NO: TIntegerField;
    cdsBotonesModifiersQTY: TIntegerField;
    cdsBotonesModifiersBUTTON_NAME: TStringField;
    cdsBotonesModifiersMASTER_BUTTON_NUMBER: TIntegerField;
    cdsBotonesModifiersDESCRIPTION: TWideStringField;
    NEXT_MAIN_COURSE_ID: TFDStoredProc;
    CDSInventarioPisoHAS_MODIFIER: TBooleanField;
    CDSInventarioPisoMODIFIER_QTY: TIntegerField;
    qMainCourse: TFDQuery;
    dspMainCourse: TDataSetProvider;
    cdsMainCourse: TClientDataSet;
    dsMainCourse: TDataSource;
    CDSTransShowKITCHEN: TBooleanField;
    CDSTransShowMAIN_COURSE_ID: TIntegerField;
    CDSTransShowMAIN_COURSE_DEFINE: TStringField;
    CDSTransShowMAIN_COURSE: TBooleanField;
    cdsMainCourseIDNUMBER: TAutoIncField;
    cdsMainCourseTRANSACTIONNUMBER: TIntegerField;
    cdsMainCourseUPC: TStringField;
    cdsMainCourseVOIDED: TIntegerField;
    cdsMainCourseSUBDETAIL: TStringField;
    cdsMainCoursePRODDESCRIPTION: TStringField;
    cdsMainCoursePRODDEPARTMENT: TStringField;
    cdsMainCourseFOOD: TStringField;
    cdsMainCourseMODIFIED: TSmallintField;
    cdsMainCourseFECHAVENTA: TSQLTimeStampField;
    cdsMainCourseSUPLIDOR: TIntegerField;
    cdsMainCourseID: TIntegerField;
    cdsMainCoursePRODUCTNO: TIntegerField;
    cdsMainCourseTAX_ESTATAL: TStringField;
    cdsMainCourseTAX_MUNICIPAL: TStringField;
    cdsMainCourseQTY: TFloatField;
    cdsMainCourseOPENED: TStringField;
    cdsMainCourseGROUP_PROD: TStringField;
    cdsMainCourseREGISTER: TSmallintField;
    cdsMainCourseSUPERVISOR: TStringField;
    cdsMainCoursePATROCINIO: TSmallintField;
    cdsMainCourseSUBDEPARTAMENTO: TSmallintField;
    cdsMainCourseBARCODEALTERNO1: TWideStringField;
    cdsMainCourseBARCODEALTERNO2: TWideStringField;
    cdsMainCourseBAG_NUMBER: TIntegerField;
    cdsMainCourseUTILIDAD: TBooleanField;
    cdsMainCourseOTC_NUMBER: TIntegerField;
    cdsMainCourseTRANS_TIME: TSQLTimeStampField;
    cdsMainCourseNOTE: TWideStringField;
    cdsMainCourseKITCHEN: TBooleanField;
    cdsMainCourseMAIN_COURSE_ID: TIntegerField;
    cdsMainCourseMAIN_COURSE: TBooleanField;
    cdsMainCourseTERMINO: TWideStringField;
    cdsMainCoursePRODDESC_DEFINE: TStringField;
    CDSTransShowPRODDESC_DEFINE: TStringField;
    CDSTransShowTERMINO: TWideStringField;
    dsRecipe: TDataSource;
    cdsRecipe: TClientDataSet;
    dspRecipe: TDataSetProvider;
    qRecipe: TFDQuery;
    cdsRecipeID: TAutoIncField;
    cdsRecipePRODUCT_ID: TIntegerField;
    cdsRecipeDESCRIPCION: TWideStringField;
    cdsRecipeMAIN_PRODUCT_ID: TIntegerField;
    qInventarioPiso2: TFDQuery;
    dspInventarioPisi2: TDataSetProvider;
    cdsInventarioPiso2: TClientDataSet;
    dsInventarioPiso2: TDataSource;
    CDSInventarioPisoNOTE: TMemoField;
    POS_INVENTORY_CONTROL: TFDStoredProc;
    CDSInventarioPisoRECIPE: TBooleanField;
    CDSSetupLOGO: TBlobField;
    CDSSetupID: TAutoIncField;
    CALC_DAILYTOTALS_READ: TFDStoredProc;
    CALC_DAILYTOTALS_READ_REST: TFDStoredProc;
    CDSClientTransactionsCODE: TStringField;
    CDSClientTransactionsDATEOFTRANS: TSQLTimeStampField;
    CDSClientTransactionsATTENDEDBY: TStringField;
    CDSClientTransactionsCLIENTNO: TIntegerField;
    CDSClientTransactionsTRANSNO: TIntegerField;
    CDSClientTransactionsNO_SEGURO_SOCIAL: TStringField;
    FDQuery1: TFDQuery;
    TIME_STAMP: TFDStoredProc;
    qTime_Card: TFDQuery;
    dsTime_Card: TDataSource;
    dspTime_Card: TDataSetProvider;
    CDSPasswordsTIME_CARD: TBooleanField;
    cdsOpenTabsCUSTOMER_ID: TIntegerField;
    qPwrd: TFDQuery;
    dspPwrd: TDataSetProvider;
    cdsPwrd: TClientDataSet;
    dsPwrd: TDataSource;
    cdsPwrdUSERNAME: TStringField;
    cdsPwrdINICIALES: TStringField;
    cdsPwrdUSERNO: TAutoIncField;
    cdsTime_Card: TClientDataSet;
    cdsTime_CardID: TAutoIncField;
    cdsTime_CardPUNCH_IN_1: TSQLTimeStampField;
    cdsTime_CardPUNCH_OUT_1: TSQLTimeStampField;
    cdsTime_CardEMPLOYEE: TIntegerField;
    cdsTime_CardSHIFT: TStringField;
    cdsTime_CardCOMULATIVE: TStringField;
    cdsTime_CardPUNCH_IN_2: TSQLTimeStampField;
    cdsTime_CardPUNCH_OUT_2: TSQLTimeStampField;
    cdsTime_CardAPPROVED: TBooleanField;
    cdsTime_CardSECONDS: TIntegerField;
    cdsTime_CardEmployee_define: TStringField;
    cdsTime_CardDAILY: TStringField;
    HOLD_SAVE_TRANSACTION: TFDStoredProc;
    POS_DELETE_OPEN_TRANSACTIONS: TFDStoredProc;
    TIMECARD_TOTALHOURSWORKED: TFDStoredProc;
    qDeliverBy: TFDQuery;
    dspDeliverBy: TDataSetProvider;
    dsDeliverBy: TDataSource;
    cdsDeliverBy: TClientDataSet;
    cdsDeliverByUSERNAME: TStringField;
    cdsDeliverByUSERNO: TAutoIncField;
    cdsOpenTabsDELIVER_BY_ID: TIntegerField;
    cdsOpenTabsDELIVER_BY_DEFINE: TStringField;
    UPDATE_TRANSACTION_HEADER: TFDStoredProc;
    POS_INSERT_EDIT_INVENTORY: TFDStoredProc;
    CDSSetupPOS_ADD_QTY: TBooleanField;
    CDSBotonesRECIPE_PRICE: TBooleanField;
    CDSInventarioPisoSUPLIDOR: TStringField;
    POS_CANCEL_TRANS: TFDStoredProc;
    NEXTRX_TRAN_NO: TFDStoredProc;
    CDSInventarioPisoDESCDEPT: TStringField;
    CDSInventarioPisoStateTaxDefined: TStringField;
    CDSInventarioPisoTAX_MUN_DEFINED: TStringField;
    CDSInventarioPisoFOOD_ITEM_DEFINED: TStringField;
    CDSInventarioPisoSHOWINDIVIDUAL: TBooleanField;
    cdsShopperSTART_DATE: TSQLTimeStampField;
    cdsShopperEND_DATE: TSQLTimeStampField;
    POS_RECALL_TRANSACTION: TFDStoredProc;
    cdsOpenTabs2CUSTOMER_ID: TIntegerField;
    POS_SPLIT_TAB: TFDStoredProc;
    CDSBotonesCATEGORY: TIntegerField;
    CDSSetupADDRESS2: TWideStringField;
    POST_SHOPPER: TFDStoredProc;
    CDSSetupPOS_CLASIC_PETTYCASH: TBooleanField;
    CDSSetupPOS_PRINT_LOGO: TBooleanField;
    CDSTransHeadCUSTOMER_DEFINED: TStringField;
    CDSDetailMAIN_COURSE: TBooleanField;
    CDSDetailMAIN_COURSE_ID: TIntegerField;
    CDSDetailTERMINO: TWideStringField;
    POS_INSERT_BUTTON_IMAGE: TFDStoredProc;
    POS_UPDATE_PRINTED: TFDStoredProc;
    CDSBotonesRETAIL: TBooleanField;
    POS_INSERT_DAILYTOTALS: TFDStoredProc;
    CALC_HEAD_TOTALS: TFDStoredProc;
    cdsShopperDetailSHOPER_ID: TAutoIncField;
    POS_UPDATE_PAYMENTTYPE: TFDStoredProc;
    CDSInventarioPisoDAILY_SALE_START_TIME: TTimeField;
    CDSInventarioPisoDAILY_SALE_END_TIME: TTimeField;
    CDSInventarioPisoDAILY_SALE_ACTIVE: TBooleanField;
    cdsShopperDAILY_SALE_START_TIME: TTimeField;
    cdsShopperDAILY_SALE_END_TIME: TTimeField;
    POST_SHOPPER_DAILY: TFDStoredProc;
    CDSTransShowTAB_SAVED: TBooleanField;
    CDSSetupPOS_REST_ALWAYSLOGOUT: TBooleanField;
    CDSSetupPOS_USER_INDIVIDUAL_BALANCING: TBooleanField;
    CDSSetupPOS_ACTIVE_TIP: TBooleanField;
    qCars: TFDQuery;
    dspCars: TDataSetProvider;
    dsCars: TDataSource;
    cdsCars: TClientDataSet;
    cdsCarsNUMEROCLIENTE: TIntegerField;
    cdsCarsCAR_ID: TAutoIncField;
    cdsCarsLICENCE_PLATE: TWideStringField;
    cdsCarsBIN_NUMBER: TWideStringField;
    cdsCarsYEAR: TDateField;
    cdsCarsCOLOR: TWideStringField;
    cdsCarsNOTE: TMemoField;
    cdsCarsBRAND: TWideStringField;
    cdsCarsMODEL: TWideStringField;
    CDSSetupAUTOMOVIL_APP: TBooleanField;
    CDSSetupTIP_PERCENTAGE1: TFMTBCDField;
    CDSSetupTIP_PERCENTAGE2: TFMTBCDField;
    CDSSetupTIP_PERCENTAGE3: TFMTBCDField;
    CDSInventarioPisoQTYINVENTARIO: TFMTBCDField;
    CDSInventarioPisoRECIPE_PRICE: TFMTBCDField;
    CDSInventarioPisoDAILY_SPECIAL_PRICE: TFMTBCDField;
    cdsRecipeQTY: TFMTBCDField;
    cdsRecipeCOST: TFMTBCDField;
    cdsRecipePRICE: TFMTBCDField;
    CDSBotonesQTY: TFMTBCDField;
    CDSTransHeadPAYAMOUNT1: TFMTBCDField;
    CDSTransHeadPAYAMOUNT2: TFMTBCDField;
    CDSTransHeadTAX: TFMTBCDField;
    CDSTransHeadTOTAL_TAX: TFMTBCDField;
    CDSTransHeadTAX_ESTATAL: TFMTBCDField;
    CDSTransHeadSUBTOTAL: TFMTBCDField;
    CDSTransHeadTAX_SERVICIO: TFMTBCDField;
    CDSTransHeadPAYAMOUNT3: TFMTBCDField;
    CDSTransHeadPAYAMOUNT4: TFMTBCDField;
    CDSTransHeadREGTOTAL: TFMTBCDField;
    CDSTransHeadTOTAL: TFMTBCDField;
    CDSTransHeadCHANGE: TFMTBCDField;
    CDSTransHeadFOODTOTAL: TFMTBCDField;
    CDSTransHeadTAX_FOOD_MUNICIPAL: TFMTBCDField;
    CDSTransHeadTAX_FOOD_ESTATAL: TFMTBCDField;
    CDSTransHeadTOTAL_DISCOUNT: TFMTBCDField;
    CDSTransHeadTOTAL_TIP: TFMTBCDField;
    CDSTransHeadTIP: TFMTBCDField;
    CDSTransShowTAX: TFMTBCDField;
    CDSTransShowCOSTO: TFMTBCDField;
    CDSTransShowPRICE: TFMTBCDField;
    CDSTransShowTOTAL: TFMTBCDField;
    CDSTransShowREGTOTAL: TFMTBCDField;
    CDSTransShowREGPRICE: TFMTBCDField;
    CDSTransShowAWP: TFMTBCDField;
    CDSTransShowTOTAL_VALUE: TFMTBCDField;
    CDSTransShowDISCOUNT: TFMTBCDField;
    CDSPrescriptionsCANTIDADRECETADA: TFloatField;
    CDSPrescriptionsCANTIDAD_DISPONIBLE: TFMTBCDField;
    CDSPrescriptions2CANTIDADRECETADA: TFloatField;
    CDSPrescriptions2CANTIDAD_DISPONIBLE: TFMTBCDField;
    cdsOpenTabsGROUP_BALANCE: TFMTBCDField;
    cdsOpenTabsBALANCE: TFMTBCDField;
    cdsOpenTabs2GROUP_BALANCE: TFMTBCDField;
    cdsOpenTabs2BALANCE: TFMTBCDField;
    cdsOpenTabs2DELIVER_BY_ID: TIntegerField;
    cdsTabsDetailBALANCE: TFMTBCDField;
    cdsTabsDetail2BALANCE: TFMTBCDField;
    CDSGroupCOSTO: TSingleField;
    CDSGroupRBP: TSingleField;
    CDSGroupESPECIAL: TSingleField;
    CDSGroupPRECIO: TSingleField;
    CDSGroupQTYINVENTARIO: TFMTBCDField;
    CDSGroupCMAXINVENTARIO: TSingleField;
    CDSGroupCMININVENTARIO: TSingleField;
    CDSGroupNDC: TWideStringField;
    CDSGroupEDITAR_PRECIO: TBooleanField;
    CDSGroupPRECIO_CAJA: TSingleField;
    CDSGroupQTY_CAJA: TSingleField;
    CDSGroupMETRICSIZE: TSingleField;
    CDSDetailTOTAL: TFMTBCDField;
    CDSDetailTAX: TFMTBCDField;
    CDSDetailCOSTO: TFMTBCDField;
    CDSDetailPRICE: TFMTBCDField;
    CDSDetailREGTOTAL: TFMTBCDField;
    CDSDetailREGPRICE: TFMTBCDField;
    CDSDetailAWP: TFMTBCDField;
    CDSDetailTOTAL_VALUE: TFMTBCDField;
    CDSDetailDISCOUNT: TFMTBCDField;
    CDSClientTransactionsAMOUNT: TFMTBCDField;
    CDSClientTransactionsPAIDAMOUNT: TFMTBCDField;
    CDSClientTransactionsBALANCE: TFMTBCDField;
    cdsShopperPERCENTAGE_DISCOUNT: TFMTBCDField;
    CDSHeadPAYAMOUNT1: TFMTBCDField;
    CDSHeadPAYAMOUNT2: TFMTBCDField;
    CDSHeadTAX: TFMTBCDField;
    CDSHeadTOTAL_TAX: TFMTBCDField;
    CDSHeadTAX_ESTATAL: TFMTBCDField;
    CDSHeadSUBTOTAL: TFMTBCDField;
    CDSHeadTAX_SERVICIO: TFMTBCDField;
    CDSHeadPAYAMOUNT3: TFMTBCDField;
    CDSHeadPAYAMOUNT4: TFMTBCDField;
    CDSHeadREGTOTAL: TFMTBCDField;
    CDSHeadTOTAL: TFMTBCDField;
    CDSHeadCHANGE: TFMTBCDField;
    CDSHeadFOODTOTAL: TFMTBCDField;
    CDSHeadTAX_FOOD_MUNICIPAL: TFMTBCDField;
    CDSHeadTAX_FOOD_ESTATAL: TFMTBCDField;
    CDSHeadTOTAL_DISCOUNT: TFMTBCDField;
    CDSVerTransaccionesPRICE: TFMTBCDField;
    cdsTransDetailTempTAX: TFMTBCDField;
    cdsTransDetailTempTOTAL: TFMTBCDField;
    cdsTransDetailTempREGTOTAL: TFMTBCDField;
    cdsTransDetailTempREGPRICE: TFMTBCDField;
    cdsTransDetailTempAWP: TFMTBCDField;
    cdsTransDetailTempTOTAL_VALUE: TFMTBCDField;
    cdsTransDetailTempDISCOUNT: TFMTBCDField;
    CDSRecallTransPAYAMOUNT1: TFMTBCDField;
    CDSRecallTransPAYAMOUNT2: TFMTBCDField;
    CDSRecallTransTAX: TFMTBCDField;
    CDSRecallTransTOTAL_TAX: TFMTBCDField;
    CDSRecallTransTAX_ESTATAL: TFMTBCDField;
    CDSRecallTransSUBTOTAL: TFMTBCDField;
    CDSRecallTransTAX_SERVICIO: TFMTBCDField;
    CDSRecallTransPAYAMOUNT3: TFMTBCDField;
    CDSRecallTransPAYAMOUNT4: TFMTBCDField;
    CDSRecallTransREGTOTAL: TFMTBCDField;
    CDSRecallTransTOTAL: TFMTBCDField;
    CDSRecallTransCHANGE: TFMTBCDField;
    CDSRecallTransFOODTOTAL: TFMTBCDField;
    CDSRecallTransTAX_FOOD_MUNICIPAL: TFMTBCDField;
    CDSRecallTransTAX_FOOD_ESTATAL: TFMTBCDField;
    CDSRecallTransTOTAL_DISCOUNT: TFMTBCDField;
    cdsTabsHeaderGROUP_BALANCE: TFMTBCDField;
    cdsMainCourseTAX: TFMTBCDField;
    cdsMainCourseCOSTO: TFMTBCDField;
    cdsMainCoursePRICE: TFMTBCDField;
    cdsMainCourseTOTAL: TFMTBCDField;
    cdsMainCourseREGTOTAL: TFMTBCDField;
    cdsMainCourseREGPRICE: TFMTBCDField;
    cdsMainCourseAWP: TFMTBCDField;
    cdsMainCourseTOTAL_VALUE: TFMTBCDField;
    cdsMainCourseDISCOUNT: TFMTBCDField;
    CDSUtilitiesTAXABLE: TStringField;
    CDSHeadTIP: TFMTBCDField;
    CDSHeadTIP2: TFMTBCDField;
    CDSHeadTOTAL_TIP: TFMTBCDField;
    cdsBotonesModifiersPRICE: TFMTBCDField;
    CDSSetupCOMMISSION1: TFMTBCDField;
    CDSSetupCOMMISSION2: TFMTBCDField;
    CDSSetupCOMMISSION3: TFMTBCDField;
    CDSSetupACTIVE_COMMISSIONS: TBooleanField;
    CDSSetupTAX_PROCESSED_FOOD: TFMTBCDField;
    CDSInventarioPisoPROCESSED_FOOD: TBooleanField;
    CDSTransHeadTAX_PROCESSED_FOOD: TFMTBCDField;
    CDSHeadTAX_PROCESSED_FOOD: TFMTBCDField;
    POS_TFAM_CALC: TFDStoredProc;
    CDSPasswordsACTIVE: TBooleanField;
    WF_UPDATE: TFDStoredProc;
    CDSSetupRECEIPT_MESSAGE: TMemoField;
    CDSPasswordsPOS_CERRAR_CUADRE_ALIMPIRIMIR: TBooleanField;
    CDSTransferHistoryPRICE: TFMTBCDField;
    CDSTransferHistoryCOSTSENT: TFMTBCDField;
    CDSTransferHistoryAWP: TFMTBCDField;
    CDSTransferHistoryQTYRECEIVED: TFMTBCDField;
    CDSSetupPOS_APP_OPEN_DRAWER: TBooleanField;
    CDSOrderDetailHistoryPRICE: TFMTBCDField;
    CDSOrderDetailHistoryCOSTRECEIVED: TFMTBCDField;
    CDSOrderDetailHistoryCOSTORDERED: TFMTBCDField;
    CDSOrderDetailHistoryAWP: TFMTBCDField;
    CDSOrderDetailHistoryQTYRECEIVED: TFMTBCDField;
    CDSInventarioPisoCOSTO: TFMTBCDField;
    CDSInventarioPisoRBP: TFMTBCDField;
    CDSInventarioPisoESPECIAL: TFMTBCDField;
    CDSInventarioPisoPRECIO: TFMTBCDField;
    CDSInventarioPisoCMAXINVENTARIO: TFMTBCDField;
    CDSInventarioPisoCMININVENTARIO: TFMTBCDField;
    CDSInventarioPisoMETRICSIZE: TFMTBCDField;
    CDSInventarioPisoGROUP_QTY: TIntegerField;
    CDSInventarioPisoPRECIO_CAJA: TFMTBCDField;
    CDSInventarioPisoQTY_CAJA: TFMTBCDField;
    CDSInventarioPisoPRECIO2: TFMTBCDField;
    CDSInventarioPisoPRECIO_DACO: TFMTBCDField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesFECHANACIMIENTO: TSQLTimeStampField;
    CDSClientesSEXO: TIntegerField;
    CDSClientesDIRECCION1: TStringField;
    CDSClientesULTTRANS: TSQLTimeStampField;
    CDSClientesNUMEROCLIENTE: TAutoIncField;
    CDSClientesINTERES: TStringField;
    CDSClientesDIRECCIONFISICA: TStringField;
    CDSClientesAPELLIDOPATERNO: TStringField;
    CDSClientesAPELLIDOMATERNO: TStringField;
    CDSClientesTELEFONO: TStringField;
    CDSClientesFAX: TStringField;
    CDSClientesCELULAR: TStringField;
    CDSClientesESTADO: TStringField;
    CDSClientesAUSPICIO: TFMTBCDField;
    CDSClientesSOCIO: TStringField;
    CDSClientesORIENTACION: TStringField;
    CDSClientesIDENTIFICACION: TStringField;
    CDSClientesSMOKER: TStringField;
    CDSClientesLOCATION: TStringField;
    CDSClientesEMPLOYER_ID: TStringField;
    CDSClientesPATIENT_ID_QUAL: TStringField;
    CDSClientesPREGNANCY_IDICATOR: TStringField;
    CDSClientesFECHA_HIPPA: TSQLTimeStampField;
    CDSClientesINFOADICIONAL: TStringField;
    CDSClientesCONSULTA: TStringField;
    CDSClientesCIUDAD: TStringField;
    CDSClientesMAILING_ADDRESS1: TStringField;
    CDSClientesMAILING_ADDRESS2: TStringField;
    CDSClientesMAILING_CITY: TStringField;
    CDSClientesMAILING_STATE: TStringField;
    CDSClientesMAILING_ZIPCODE: TStringField;
    CDSClientesPATIENT_RESIDENCE: TWideStringField;
    CDSClientesPLACE_OF_SERVICE: TWideStringField;
    CDSClientesEMAIL: TWideStringField;
    CDSClientesCARDHOLDERID: TWideStringField;
    CDSClientesCODIGOPOSTAL: TWideStringField;
    CDSClientesSIGNATURE: TMemoField;
    CDSClientesOUT_DIAL_PERMISSION: TWideStringField;
    CDSClientesSSN: TWideStringField;
    CDSClientesNOTIFICATION_MODE_PHONE: TSmallintField;
    CDSClientesNOTIFICATION_MODE_CEL: TSmallintField;
    CDSClientesNOTIFICATION_MODE_SMS: TSmallintField;
    CDSClientesNOTIFICATION_MODE_EMAIL: TSmallintField;
    CDSClientesNIGHT_PHONE: TWideStringField;
    CDSClientesWC_NO_NOTIFICATION: TBooleanField;
    CDSClientesNOTIFICATION_MODE: TWideStringField;
    CDSClientesPRIMARY_TELEPHONE: TWideStringField;
    CDSClientesFACILITY_ID: TIntegerField;
    CDSClientesFACILITY_ADMISSION_DATE: TDateField;
    CDSClientesFACILITY_ROOM: TWideStringField;
    CDSClientesFACILITY_PRESCRIBER: TWideStringField;
    CDSClientesPRICE_TABLE_ID: TIntegerField;
    CDSClientesOVERRIDE_SYSTEM_DEFAULT_PRICE: TBooleanField;
    CDSClientesADHERENCE: TBooleanField;
    CDSClientesNUMERO_REGISTRO_COMERCIANTE: TWideStringField;
    CDSClientesALLERGY: TBooleanField;
    CDSClientesDECEASED: TBooleanField;
    CDSClientesMIDDLE_NAME: TStringField;
    CDSClientesSIGNATURE_RX_LINK: TIntegerField;
    CDSClientesID_IMAGE: TIntegerField;
    CDSClientesRECORD_LOCKED: TBooleanField;
    CDSClientesINSTANCIA: TIntegerField;
    CDSClientesDEUDA: TFMTBCDField;
    CDSClientesLIMITECREDITO: TFMTBCDField;
    CDSClientesLAWAY: TFMTBCDField;
    CDSClientesDEUDA_WEB: TFMTBCDField;
    CDSClientesACCIONES: TFMTBCDField;
    CDSClientesDEUDA_EXTENDIDA: TStringField;
    CDSClientesPATROCINIO: TFMTBCDField;
    CDSClientesVETERANO: TFMTBCDField;
    CDSProductosTIPO: TStringField;
    CDSProductosFECHA_EXPIRACION: TSQLTimeStampField;
    CDSProductosCODIGO: TStringField;
    CDSProductosCOSTO: TFMTBCDField;
    CDSProductosDEPARTAMENTO: TSmallintField;
    CDSProductosLOTE: TStringField;
    CDSProductosCOMESPECIAL: TSQLTimeStampField;
    CDSProductosTERMINAESPECIAL: TSQLTimeStampField;
    CDSProductosPORCIENTODESCUENTO: TStringField;
    CDSProductosULTIMOCAMBIO: TStringField;
    CDSProductosULTIMAVENTA: TSQLTimeStampField;
    CDSProductosCODIGOBARRA: TStringField;
    CDSProductosFOODITEM: TSmallintField;
    CDSProductosNONEBC: TSmallintField;
    CDSProductosNUMEROSUPLIDOR: TIntegerField;
    CDSProductosEDITAR_PRECIO: TBooleanField;
    CDSProductosPRODUCTNO: TAutoIncField;
    CDSProductosSUB_DEPARTAMENTO: TSmallintField;
    CDSProductosDESCRIPCION: TStringField;
    CDSProductosROUTEOFADMINISTRATION: TStringField;
    CDSProductosCONTROLADO: TStringField;
    CDSProductosSTRENGTH: TStringField;
    CDSProductosINFOADICIONAL: TStringField;
    CDSProductosMETRICSIZE: TFMTBCDField;
    CDSProductosCAUTION1: TSmallintField;
    CDSProductosCAUTION2: TSmallintField;
    CDSProductosCAUTION3: TSmallintField;
    CDSProductosGENERICNAME: TStringField;
    CDSProductosTXR: TStringField;
    CDSProductosBRAND: TStringField;
    CDSProductosGROUP_PRODUCTNO: TIntegerField;
    CDSProductosRECETARIO: TStringField;
    CDSProductosGROUP_QTY: TIntegerField;
    CDSProductosPRECIO_CAJA: TFMTBCDField;
    CDSProductosDESCUENTO: TStringField;
    CDSProductosIMAGE_CODE: TStringField;
    CDSProductosPACKAGESIZE: TIntegerField;
    CDSProductosTXR_EXTENSION: TStringField;
    CDSProductosSTATUS: TStringField;
    CDSProductosTAXABLE: TStringField;
    CDSProductosTAXABLE_ESTATAL: TStringField;
    CDSProductosPRECIO2: TFMTBCDField;
    CDSProductosISBN: TStringField;
    CDSProductosPO: TStringField;
    CDSProductosNDC: TWideStringField;
    CDSProductosMETRIC_UNIT: TWideStringField;
    CDSProductosROBOT: TIntegerField;
    CDSProductosROBOT_NDC: TWideStringField;
    CDSProductosPATROCINIO: TIntegerField;
    CDSProductosCOBRAR_TAX: TIntegerField;
    CDSProductosALCHEMY_PRODUCTID: TIntegerField;
    CDSProductosMARKET_STATUS: TWideStringField;
    CDSProductosOUTERPACKAGEUNIT: TWideStringField;
    CDSProductosPAKAGE_ID: TIntegerField;
    CDSProductosCASA_FARMACEUTICA: TStringField;
    CDSProductosVERSION_DESCRIPTION: TWideStringField;
    CDSProductosPAKAGE_DESCRIPTION: TWideStringField;
    CDSProductosREVENUE_CODE: TWideStringField;
    CDSProductosHCPCS: TWideStringField;
    CDSProductosAllowControledRefills: TBooleanField;
    CDSProductosESCANEAR_BARCODEALTERNO: TSmallintField;
    CDSProductosPRICE_TABLE_ID: TIntegerField;
    CDSProductosOVERRIDE_SYSTEM_DEFAULT_PRICE: TBooleanField;
    CDSProductosPRICE_UPDATE: TBooleanField;
    CDSProductosENTER_LAB_RESULTS: TBooleanField;
    CDSProductosEXPIRE_OPTION: TWideStringField;
    CDSProductosEXPIRE_DAYS: TIntegerField;
    CDSProductosEXPIRE_OTHER: TWideStringField;
    CDSProductosMARKETEDPRODUCTID: TIntegerField;
    CDSProductosMAIN_NDC: TBooleanField;
    CDSProductosPSEUDOEPHEDRINE: TBooleanField;
    CDSProductosEDITAR_PRECIO_NEW: TBooleanField;
    CDSProductosSALES_PROMOTION_ID: TIntegerField;
    CDSProductosKITCHEN: TBooleanField;
    CDSProductosRECIPE: TBooleanField;
    CDSProductosNOTE: TMemoField;
    CDSProductosMODIFIER_QTY: TIntegerField;
    CDSProductosHAS_MODIFIER: TBooleanField;
    CDSProductosTYPIST: TWideStringField;
    CDSProductosPRODUCT_IMAGE: TBlobField;
    CDSProductosRECIPE_PRICE: TFMTBCDField;
    CDSProductosSHOWINDIVIDUAL: TBooleanField;
    CDSProductosDAILY_SALE_START_TIME: TTimeField;
    CDSProductosDAILY_SALE_END_TIME: TTimeField;
    CDSProductosDAILY_SALE_ACTIVE: TBooleanField;
    CDSProductosDAILY_SPECIAL_PRICE: TFMTBCDField;
    CDSProductosPROCESSED_FOOD: TBooleanField;
    CDSProductosQuantityUnitOfMeasure: TWideStringField;
    CDSProductosStrengthForm: TWideStringField;
    CDSProductosStrengthUnitOfMeasure: TWideStringField;
    CDSProductossuplidor: TStringField;
    CDSProductosdescdepartamento: TStringField;
    CDSProductosRBP: TFMTBCDField;
    CDSProductosESPECIAL: TFMTBCDField;
    CDSProductosPRECIO: TFMTBCDField;
    CDSProductosCMAXINVENTARIO: TFMTBCDField;
    CDSProductosCMININVENTARIO: TFMTBCDField;
    CDSProductosQTY_CAJA: TFMTBCDField;
    CDSProductosPRECIO_DACO: TFMTBCDField;
    CDSProductosPRECIOVENTA2: TFMTBCDField;
    CDSProductosAAC_PRICE: TFMTBCDField;
    CDSProductosMAC_PRICE: TFMTBCDField;
    CDSProductosDIRECT_PRICE: TFMTBCDField;
    CDSProductosUC_PRICE: TFMTBCDField;
    CDSProductosWAC_PRICE: TFMTBCDField;
    CDSProductosINITIAL_QTY: TFMTBCDField;
    CDSProductosQTYINVENTARIO: TFMTBCDField;
    CDSProductosPRECIOVENTA3: TFMTBCDField;
    CDSOTCOTCNUMBER: TAutoIncField;
    CDSOTCCOBRADO: TStringField;
    CDSOTCFECHAOTC: TSQLTimeStampField;
    CDSOTCRX: TStringField;
    CDSOTCNUMEROCLIENTE: TIntegerField;
    CDSOTCMEDICAMENTOMIX: TStringField;
    CDSOTCNUMEROTRANSACCION: TIntegerField;
    CDSOTCPARTIAL_COMPLETION: TStringField;
    CDSOTCRX_STATUS: TStringField;
    CDSOTCNO_REF_DISPENSADO: TIntegerField;
    CDSOTCPHARMACIST: TStringField;
    CDSOTCDAYS_SUPPLY: TIntegerField;
    CDSOTCPAGADA: TStringField;
    CDSOTCPRECIOFACTURACION: TFMTBCDField;
    CDSOTCPRODUCT_ID: TIntegerField;
    CDSOTCTIME_RX: TSQLTimeStampField;
    CDSOTCNO_HORA: TIntegerField;
    CDSOTCNUMEROPLAN: TIntegerField;
    CDSOTCMETRICDECIMALQUANTITY: TIntegerField;
    CDSOTCPLAN_MEDICO: TStringField;
    CDSOTCNUMERO_AUTORIZACION: TStringField;
    CDSOTCMEDICAMENTO: TStringField;
    CDSOTCNDC: TStringField;
    CDSOTCATENDIDOPOR: TStringField;
    CDSOTCLOTE: TStringField;
    CDSOTCSIGNATURE_LINK: TIntegerField;
    CDSOTCCHECKED: TIntegerField;
    CDSOTCUSUARIO_NO: TIntegerField;
    CDSOTCNUMERORECETA: TLargeintField;
    CDSOTCMEZCLA_TRAN_NO: TIntegerField;
    CDSOTCREFILL_REMINDED: TIntegerField;
    CDSOTCAUDITED: TIntegerField;
    CDSOTCBATCH_NUMBER: TIntegerField;
    CDSOTCWC_PICKUP: TBooleanField;
    CDSOTCEP_TRANSACTION_NUMBER: TIntegerField;
    CDSOTCREFILL_NOTIFIED: TBooleanField;
    CDSOTCPRICE_TABLE_ID: TIntegerField;
    CDSOTCWF_TYPED: TWideStringField;
    CDSOTCWF_BILLED: TWideStringField;
    CDSOTCWF_PRINTED: TWideStringField;
    CDSOTCWF_CHECKED: TWideStringField;
    CDSOTCWF_DELIVERED: TWideStringField;
    CDSOTCWF_FILLED: TWideStringField;
    CDSOTCCLAIM_STATUS: TIntegerField;
    CDSOTCFACILITY_ID: TIntegerField;
    CDSOTCADHERENCE: TBooleanField;
    CDSOTCUNIT_PRICE: TFMTBCDField;
    CDSOTCMED_CHART: TBooleanField;
    CDSOTCPRINT_Q: TWideStringField;
    CDSOTCBILL_LATTER: TBooleanField;
    CDSOTCWFSTORAGE: TWideStringField;
    CDSOTCWF_STORAGE: TWideStringField;
    CDSOTCWF_CASHIER: TWideStringField;
    CDSOTCWF_SIGNATURE: TWideStringField;
    CDSOTCALCHEMY_PRODUCTID: TIntegerField;
    CDSOTCMARKETEDPRODUCTID: TIntegerField;
    CDSOTCPA: TBooleanField;
    CDSOTCWF_REVERSE: TBooleanField;
    CDSOTCPDN_SENT: TBooleanField;
    CDSOTCREFILL_REQ_TRANSNO: TIntegerField;
    CDSOTCBATCH_REFILLREQ_DATE: TDateField;
    CDSOTCPRIORAUTHORIZATION: TStringField;
    CDSOTCBASISOFCOST: TStringField;
    CDSOTCCLINICIDNUMBER: TIntegerField;
    CDSOTCDIAGNOSISCODE: TWideStringField;
    CDSOTCDURCONFLICTCODE: TWideStringField;
    CDSOTCDURINTERVENTIONCODE: TWideStringField;
    CDSOTCDUROUTCOMECODE: TWideStringField;
    CDSOTCLEVELOFSERVICE: TIntegerField;
    CDSOTCPRIMARYPRESCRIBER: TWideStringField;
    CDSOTCRXDENIALCLARIF: TWideStringField;
    CDSOTCRXDENIALOVERRIDE: TIntegerField;
    CDSOTCPATIENTPAIDAMOUNT: TFMTBCDField;
    CDSOTCSALESTAX: TFMTBCDField;
    CDSOTCOTAMCLDSUBCOUNTQUAL: TWideStringField;
    CDSOTCPRODUCTSERVIDQUAL: TWideStringField;
    CDSOTCPROVIDERID: TWideStringField;
    CDSOTCUNIT_DOSE_INDICATOR: TWideStringField;
    CDSOTCUNIT_OF_MEASURE: TWideStringField;
    CDSOTCSUB_CLARIF_CODE: TWideStringField;
    CDSOTCOTHERCOVERAGECODE: TWideStringField;
    CDSOTCSERVICEPROVIDQUALIFIER: TWideStringField;
    CDSOTCOP_AMOUNTPAIDCOUNT: TIntegerField;
    CDSOTCOP_REJECTCOUNT: TIntegerField;
    CDSOTCCOB_OTHERPAYMENTCOUNT: TIntegerField;
    CDSOTCCOMPDOSAGE_FORM_DESC_CODE: TWideStringField;
    CDSOTCCOMPDISP_UNIT_FORM_INDI: TWideStringField;
    CDSOTCCOMPROUTE_OF_ADMINISTRATION: TWideStringField;
    CDSOTCCOMPING_COMP_COUNT: TIntegerField;
    CDSOTCDISPENSING_STATUS: TWideStringField;
    CDSOTCQTY_INTENDED_DISP: TIntegerField;
    CDSOTCDAYS_SUPPLY_INTEND_DISP: TIntegerField;
    CDSOTCFLAT_SALES_TAXSUB: TFMTBCDField;
    CDSOTCASSOC_RX_SERVICE_DATE: TSQLTimeStampField;
    CDSOTCASSOC_RX_SERVICE_REF_NO: TWideStringField;
    CDSOTCCUPONTYPE: TWideStringField;
    CDSOTCCUPON_NUMBER: TWideStringField;
    CDSOTCCUPON_VALUE_AMT: TFMTBCDField;
    CDSOTCPRIMARYCAREPROVIDQUALIFIER: TWideStringField;
    CDSOTCPRIMARYCAREPROVID: TWideStringField;
    CDSOTCPRIMARYCAREPROVLASTNAME: TWideStringField;
    CDSOTCIAID_464_EX: TWideStringField;
    CDSOTCDRC_357_NV: TWideStringField;
    CDSOTCPAI_391_MT: TWideStringField;
    CDSOTCCOMPOUND_TYPE_996_G1: TWideStringField;
    CDSOTCPST_147_U7: TWideStringField;
    CDSOTCSCCD_354_NX: TSmallintField;
    CDSOTCPRAC_353_NR: TSmallintField;
    CDSOTCBSC_392_MU: TSmallintField;
    CDSOTCSPECIAL_PACK_INDI_429_DT: TWideStringField;
    CDSOTCROUTEOFADMIN_995_E2: TWideStringField;
    CDSOTCWC_117_TR: TSmallintField;
    CDSOTCWC_118_TS: TWideStringField;
    CDSOTCWC_119_TT: TWideStringField;
    CDSOTCWC_120_TU: TWideStringField;
    CDSOTCWC_121_TV: TWideStringField;
    CDSOTCWC_122_TW: TWideStringField;
    CDSOTCWC_123_TX: TWideStringField;
    CDSOTCWC_124_TY: TWideStringField;
    CDSOTCWC_125_TZ: TWideStringField;
    CDSOTCWC_126_UA: TWideStringField;
    CDSOTCPRIMARYCAREPROVLOCATIONCODE: TWideStringField;
    CDSOTCPATIENTLOCATION: TIntegerField;
    CDSOTCPRESC_SRNM: TWideStringField;
    CDSOTCPS_558_AW: TFMTBCDField;
    CDSOTCPS_559_AX: TFMTBCDField;
    CDSOTCREVENUE_CODE: TWideStringField;
    CDSOTCDAW: TSmallintField;
    CDSOTCBATCH_NUMBER_BILLING: TLargeintField;
    CDSOTCTERMINADA: TBooleanField;
    CDSOTCMEDICAID_PAID_AMOUNT: TFMTBCDField;
    CDSOTCPMC_459_ER: TWideStringField;
    CDSOTCPMCC_458_SE: TIntegerField;
    CDSOTCSPIDN_454_EK: TWideStringField;
    CDSOTCIATID_463_EW: TWideStringField;
    CDSOTCQTY: TFMTBCDField;
    CDSOTCCONTROLADO: TWideStringField;
    CDSOTCCODIGOREFILLNUEVO: TSmallintField;
    CDSOTCRXNUMBERSRNQ: TWideStringField;
    CDSOTCTRANSACTION_CODE: TWideStringField;
    CDSOTCMEDICAMENTOORIGINAL: TWideStringField;
    CDSOTCROBOT: TIntegerField;
    CDSOTCLABEL_NAME: TWideStringField;
    CDSOTCFECHAEXPIRACION: TDateField;
    CDSOTCIMPRIMIR: TBooleanField;
    CDSOTCINSTANCIA: TIntegerField;
    CDSOTCORG_PROS_PROD_SERVID: TStringField;
    CDSOTCORG_PRESC_QTY: TIntegerField;
    CDSOTCORG_PRES_PROD_SIDQ: TStringField;
    CDSOTCPRIOR_AUTH_TYPE_CODE: TStringField;
    CDSOTCINCENTIVE_AMOUNT_SUB: TFMTBCDField;
    CDSOTCPROF_SERV_FEE_SUB: TFMTBCDField;
    CDSOTCPERCENTAGE_SALES_TAX_SUB: TFMTBCDField;
    CDSOTCPERCENTAGE_SALES_TAX_RATE: TFMTBCDField;
    CDSOTCOTHERAMOUNTCLAIMEDSUB: TFMTBCDField;
    CDSOTCQTY_TEMP: TFMTBCDField;
    CDSOTCOTHERAMOUNTCLAIMEDSUBCOUNT: TIntegerField;
    CDSOTCPER_SALESTAX_BASIS_SUB: TStringField;
    CDSOTCWC_DATE_OF_INJURY: TSQLTimeStampField;
    CDSOTCWC_EMPLOYER_NAME: TStringField;
    CDSOTCWC_EMPLOYER_STREET: TStringField;
    CDSOTCWC_EMPLOYER_CITY: TStringField;
    CDSOTCWC_EMPLOYER_STATE: TStringField;
    CDSOTCWC_EMPLOYER_CONTACT: TStringField;
    CDSOTCWC_EMLPOYER_ZIP: TStringField;
    CDSOTCWC_CARRIER_ID: TStringField;
    CDSOTCWC_CLAIMREF_ID: TStringField;
    CDSOTCWC_EMPLOYER_PHONE: TStringField;
    CDSOTCPLANESMEDICOSNO: TIntegerField;
    CDSOTCRX_SHOW_NOREFDISP_FLOAT: TBooleanField;
    CDSOTCAPPRISS_SENT: TBooleanField;
    CDSOTCMessageID: TWideStringField;
    CDSOTCRECORD_LOCKED: TBooleanField;
    CDSOTCTOTAL: TFMTBCDField;
    CDSOTCCOSTOVENTA: TFMTBCDField;
    CDSOTCPAGO_PLAN: TFMTBCDField;
    CDSOTCDEDUCIBLE: TFMTBCDField;
    CDSOTCINGREDIENT_COST_PAID: TFMTBCDField;
    CDSOTCINCENTIVE_FEE_PAID: TFMTBCDField;
    CDSOTCDISPENSING_FEE_PAID: TFMTBCDField;
    CDSOTCOTHER_AMOUNT_PAID: TFMTBCDField;
    CDSOTCAMOUNT_COPAY_COINS: TFMTBCDField;
    CDSOTCGANANCIA: TFMTBCDField;
    CDSOTCPS_521_FL: TFMTBCDField;
    CDSOTCPS_523_FN: TFMTBCDField;
    CDSOTCPS_512_FC: TFMTBCDField;
    CDSOTCPS_513_FD: TFMTBCDField;
    CDSOTCPS_517_FH: TFMTBCDField;
    CDSOTCPS_518_FI: TFMTBCDField;
    CDSOTCPS_520_FK: TFMTBCDField;
    CDSOTCPS_514_FE: TFMTBCDField;
    CDSOTCPS_346_HH: TFMTBCDField;
    CDSOTCPS_347_HJ: TFMTBCDField;
    CDSOTCPS_348_HK: TFMTBCDField;
    CDSOTCPS_571_NZ: TFMTBCDField;
    CDSOTCPS_575_EQ: TFMTBCDField;
    CDSOTCPS_574_2Y: TFMTBCDField;
    CDSOTCPS_572_4U: TFMTBCDField;
    CDSOTCPS_577_G3: TFMTBCDField;
    CDSOTCPS_133_UJ: TFMTBCDField;
    CDSOTCPS_134_UK: TFMTBCDField;
    CDSOTCPS_135_UM: TFMTBCDField;
    CDSOTCPS_136_UN: TFMTBCDField;
    CDSOTCPS_137_UP: TFMTBCDField;
    CDSOTCDISPENSINGFEE: TFMTBCDField;
    CDSOTCGROSSAMOUNTDUE: TFMTBCDField;
    CDSDailyTotalsID: TAutoIncField;
    CDSDailyTotalsCASHCOUNT: TFMTBCDField;
    CDSDailyTotalsCASHREAD: TFMTBCDField;
    CDSDailyTotalsCHECKCOUNT: TFMTBCDField;
    CDSDailyTotalsCHECKREAD: TFMTBCDField;
    CDSDailyTotalsCCARDCOUNT: TFMTBCDField;
    CDSDailyTotalsCCARDREAD: TFMTBCDField;
    CDSDailyTotalsATHCOUNT: TFMTBCDField;
    CDSDailyTotalsATHREAD: TFMTBCDField;
    CDSDailyTotalsWICCOUNT: TFMTBCDField;
    CDSDailyTotalsWICREAD: TFMTBCDField;
    CDSDailyTotalsPOCOUNT: TFMTBCDField;
    CDSDailyTotalsPOREAD: TFMTBCDField;
    CDSDailyTotalsOTHERCOUNT: TFMTBCDField;
    CDSDailyTotalsOTHERREAD: TFMTBCDField;
    CDSDailyTotalsSTARTBANK: TFMTBCDField;
    CDSDailyTotalsPAYOUTCOUNT: TFMTBCDField;
    CDSDailyTotalsPAYOUTREAD: TFMTBCDField;
    CDSDailyTotalsFAMREAD: TFMTBCDField;
    CDSDailyTotalsFAMCOUNT: TFMTBCDField;
    CDSDailyTotalsCRPAYREAD: TFMTBCDField;
    CDSDailyTotalsCRPAYCOUNT: TFMTBCDField;
    CDSDailyTotalsWICPAYCOUNT: TFMTBCDField;
    CDSDailyTotalsWICPAYREAD: TFMTBCDField;
    CDSDailyTotalsWICCRCOUNT: TFMTBCDField;
    CDSDailyTotalsWICCRREAD: TFMTBCDField;
    CDSDailyTotalsLOTOREAD: TFMTBCDField;
    CDSDailyTotalsLOTOCOUNT: TFMTBCDField;
    CDSDailyTotalsCOMMENTS: TStringField;
    CDSDailyTotalsSALESDATE: TSQLTimeStampField;
    CDSDailyTotalsEMPLOYNUMBER: TStringField;
    CDSDailyTotalsSHIFT: TSmallintField;
    CDSDailyTotalsREGISTER: TIntegerField;
    CDSDailyTotalsREFUNDREAD: TFMTBCDField;
    CDSDailyTotalsSALESTIME: TSQLTimeStampField;
    CDSDailyTotalsUTILITYREAD: TFMTBCDField;
    CDSDailyTotalsSALESDATE_END: TSQLTimeStampField;
    CDSDailyTotalsSTATUS_CUADRE: TStringField;
    CDSDailyTotalsSTATUS_CAJA: TStringField;
    CDSDailyTotalsTAX_ESTATAL: TFMTBCDField;
    CDSDailyTotalsTAX_MUNICIPAL: TFMTBCDField;
    CDSDailyTotalsTAX_SERVICIO: TFMTBCDField;
    CDSDailyTotalsTOTAL_READ: TFMTBCDField;
    CDSDailyTotalsDIFFERENCE_AMOUNT: TFMTBCDField;
    CDSDailyTotalsTOTAL_COUNT: TFMTBCDField;
    CDSDailyTotalsATHMCOUNT: TFMTBCDField;
    CDSDailyTotalsATHMREAD: TFMTBCDField;
    CDSDailyTotalsTIPSREAD: TFMTBCDField;
    CDSDailyTotalsTAX_PROCESSED_FOOD: TFMTBCDField;
    CDSInventarioPisoPRECIOVENTA2: TFMTBCDField;
    CDSInventarioPisoPRECIOVENTA3: TFMTBCDField;
    CDSDailyTotalsEMPLEADO: TStringField;
    CDSDailyTotalsDIFF: TFloatField;
    CDSDailyTotalsOVRSHORT: TStringField;
    CDSDailyTotalsSTATUS_CAJA_DEFINED: TStringField;
    CDSDailyTotalsSTATUS_CUADRE_DEFINED: TStringField;
    cdsInventarioPiso2TIPO: TStringField;
    cdsInventarioPiso2FECHA_EXPIRACION: TSQLTimeStampField;
    cdsInventarioPiso2CODIGO: TStringField;
    cdsInventarioPiso2COSTO: TFMTBCDField;
    cdsInventarioPiso2RBP: TFMTBCDField;
    cdsInventarioPiso2ESPECIAL: TFMTBCDField;
    cdsInventarioPiso2DEPARTAMENTO: TSmallintField;
    cdsInventarioPiso2LOTE: TStringField;
    cdsInventarioPiso2PRECIO: TFMTBCDField;
    cdsInventarioPiso2COMESPECIAL: TSQLTimeStampField;
    cdsInventarioPiso2TERMINAESPECIAL: TSQLTimeStampField;
    cdsInventarioPiso2PORCIENTODESCUENTO: TStringField;
    cdsInventarioPiso2ULTIMOCAMBIO: TStringField;
    cdsInventarioPiso2ULTIMAVENTA: TSQLTimeStampField;
    cdsInventarioPiso2CMAXINVENTARIO: TFMTBCDField;
    cdsInventarioPiso2CMININVENTARIO: TFMTBCDField;
    cdsInventarioPiso2CODIGOBARRA: TStringField;
    cdsInventarioPiso2FOODITEM: TSmallintField;
    cdsInventarioPiso2NONEBC: TSmallintField;
    cdsInventarioPiso2NUMEROSUPLIDOR: TIntegerField;
    cdsInventarioPiso2EDITAR_PRECIO: TBooleanField;
    cdsInventarioPiso2PRODUCTNO: TAutoIncField;
    cdsInventarioPiso2SUB_DEPARTAMENTO: TSmallintField;
    cdsInventarioPiso2DESCRIPCION: TStringField;
    cdsInventarioPiso2ROUTEOFADMINISTRATION: TStringField;
    cdsInventarioPiso2CONTROLADO: TStringField;
    cdsInventarioPiso2STRENGTH: TStringField;
    cdsInventarioPiso2INFOADICIONAL: TStringField;
    cdsInventarioPiso2METRICSIZE: TFMTBCDField;
    cdsInventarioPiso2CAUTION1: TSmallintField;
    cdsInventarioPiso2CAUTION2: TSmallintField;
    cdsInventarioPiso2CAUTION3: TSmallintField;
    cdsInventarioPiso2GENERICNAME: TStringField;
    cdsInventarioPiso2TXR: TStringField;
    cdsInventarioPiso2BRAND: TStringField;
    cdsInventarioPiso2GROUP_PRODUCTNO: TIntegerField;
    cdsInventarioPiso2RECETARIO: TStringField;
    cdsInventarioPiso2GROUP_QTY: TIntegerField;
    cdsInventarioPiso2PRECIO_CAJA: TFMTBCDField;
    cdsInventarioPiso2QTY_CAJA: TFMTBCDField;
    cdsInventarioPiso2DESCUENTO: TStringField;
    cdsInventarioPiso2IMAGE_CODE: TStringField;
    cdsInventarioPiso2PACKAGESIZE: TIntegerField;
    cdsInventarioPiso2TXR_EXTENSION: TStringField;
    cdsInventarioPiso2STATUS: TStringField;
    cdsInventarioPiso2TAXABLE: TStringField;
    cdsInventarioPiso2TAXABLE_ESTATAL: TStringField;
    cdsInventarioPiso2PRECIO2: TFMTBCDField;
    cdsInventarioPiso2ISBN: TStringField;
    cdsInventarioPiso2PO: TStringField;
    cdsInventarioPiso2PRECIO_DACO: TFMTBCDField;
    cdsInventarioPiso2NDC: TWideStringField;
    cdsInventarioPiso2METRIC_UNIT: TWideStringField;
    cdsInventarioPiso2ROBOT: TIntegerField;
    cdsInventarioPiso2ROBOT_NDC: TWideStringField;
    cdsInventarioPiso2PATROCINIO: TIntegerField;
    cdsInventarioPiso2COBRAR_TAX: TIntegerField;
    cdsInventarioPiso2ALCHEMY_PRODUCTID: TIntegerField;
    cdsInventarioPiso2MARKET_STATUS: TWideStringField;
    cdsInventarioPiso2OUTERPACKAGEUNIT: TWideStringField;
    cdsInventarioPiso2PAKAGE_ID: TIntegerField;
    cdsInventarioPiso2CASA_FARMACEUTICA: TStringField;
    cdsInventarioPiso2VERSION_DESCRIPTION: TWideStringField;
    cdsInventarioPiso2PAKAGE_DESCRIPTION: TWideStringField;
    cdsInventarioPiso2REVENUE_CODE: TWideStringField;
    cdsInventarioPiso2HCPCS: TWideStringField;
    cdsInventarioPiso2AllowControledRefills: TBooleanField;
    cdsInventarioPiso2PRECIOVENTA2: TFMTBCDField;
    cdsInventarioPiso2ESCANEAR_BARCODEALTERNO: TSmallintField;
    cdsInventarioPiso2AAC_PRICE: TFMTBCDField;
    cdsInventarioPiso2MAC_PRICE: TFMTBCDField;
    cdsInventarioPiso2DIRECT_PRICE: TFMTBCDField;
    cdsInventarioPiso2UC_PRICE: TFMTBCDField;
    cdsInventarioPiso2PRICE_TABLE_ID: TIntegerField;
    cdsInventarioPiso2OVERRIDE_SYSTEM_DEFAULT_PRICE: TBooleanField;
    cdsInventarioPiso2WAC_PRICE: TFMTBCDField;
    cdsInventarioPiso2PRICE_UPDATE: TBooleanField;
    cdsInventarioPiso2ENTER_LAB_RESULTS: TBooleanField;
    cdsInventarioPiso2EXPIRE_OPTION: TWideStringField;
    cdsInventarioPiso2EXPIRE_DAYS: TIntegerField;
    cdsInventarioPiso2EXPIRE_OTHER: TWideStringField;
    cdsInventarioPiso2MARKETEDPRODUCTID: TIntegerField;
    cdsInventarioPiso2MAIN_NDC: TBooleanField;
    cdsInventarioPiso2PSEUDOEPHEDRINE: TBooleanField;
    cdsInventarioPiso2INITIAL_QTY: TFMTBCDField;
    cdsInventarioPiso2QTYINVENTARIO: TFMTBCDField;
    cdsInventarioPiso2SALES_PROMOTION_ID: TIntegerField;
    cdsInventarioPiso2KITCHEN: TBooleanField;
    cdsInventarioPiso2RECIPE: TBooleanField;
    cdsInventarioPiso2NOTE: TMemoField;
    cdsInventarioPiso2MODIFIER_QTY: TIntegerField;
    cdsInventarioPiso2HAS_MODIFIER: TBooleanField;
    cdsInventarioPiso2TYPIST: TWideStringField;
    cdsInventarioPiso2PRODUCT_IMAGE: TBlobField;
    cdsInventarioPiso2RECIPE_PRICE: TFMTBCDField;
    cdsInventarioPiso2SHOWINDIVIDUAL: TBooleanField;
    cdsInventarioPiso2DAILY_SALE_START_TIME: TTimeField;
    cdsInventarioPiso2DAILY_SALE_END_TIME: TTimeField;
    cdsInventarioPiso2DAILY_SALE_ACTIVE: TBooleanField;
    cdsInventarioPiso2DAILY_SPECIAL_PRICE: TFMTBCDField;
    cdsInventarioPiso2PRECIOVENTA3: TFMTBCDField;
    cdsInventarioPiso2PROCESSED_FOOD: TBooleanField;
    cdsInventarioPiso2QuantityUnitOfMeasure: TWideStringField;
    cdsInventarioPiso2StrengthForm: TWideStringField;
    cdsInventarioPiso2StrengthUnitOfMeasure: TWideStringField;
    CDSOTC2OTCNUMBER: TAutoIncField;
    CDSOTC2TOTAL: TFMTBCDField;
    CDSOTC2COBRADO: TStringField;
    CDSOTC2FECHAOTC: TSQLTimeStampField;
    CDSOTC2RX: TStringField;
    CDSOTC2COSTOVENTA: TFMTBCDField;
    CDSOTC2NUMEROCLIENTE: TIntegerField;
    CDSOTC2MEDICAMENTOMIX: TStringField;
    CDSOTC2NUMEROTRANSACCION: TIntegerField;
    CDSOTC2PAGO_PLAN: TFMTBCDField;
    CDSOTC2DEDUCIBLE: TFMTBCDField;
    CDSOTC2PARTIAL_COMPLETION: TStringField;
    CDSOTC2RX_STATUS: TStringField;
    CDSOTC2NO_REF_DISPENSADO: TIntegerField;
    CDSOTC2INGREDIENT_COST_PAID: TFMTBCDField;
    CDSOTC2INCENTIVE_FEE_PAID: TFMTBCDField;
    CDSOTC2DISPENSING_FEE_PAID: TFMTBCDField;
    CDSOTC2OTHER_AMOUNT_PAID: TFMTBCDField;
    CDSOTC2AMOUNT_COPAY_COINS: TFMTBCDField;
    CDSOTC2GANANCIA: TFMTBCDField;
    CDSOTC2PHARMACIST: TStringField;
    CDSOTC2DAYS_SUPPLY: TIntegerField;
    CDSOTC2PAGADA: TStringField;
    CDSOTC2PRECIOFACTURACION: TFMTBCDField;
    CDSOTC2PRODUCT_ID: TIntegerField;
    CDSOTC2TIME_RX: TSQLTimeStampField;
    CDSOTC2NO_HORA: TIntegerField;
    CDSOTC2NUMEROPLAN: TIntegerField;
    CDSOTC2METRICDECIMALQUANTITY: TIntegerField;
    d: TStringField;
    CDSOTC2NUMERO_AUTORIZACION: TStringField;
    CDSOTC2MEDICAMENTO: TStringField;
    CDSOTC2NDC: TStringField;
    CDSOTC2ATENDIDOPOR: TStringField;
    CDSOTC2LOTE: TStringField;
    CDSOTC2SIGNATURE_LINK: TIntegerField;
    CDSOTC2CHECKED: TIntegerField;
    CDSOTC2TXR: TStringField;
    CDSOTC2PS_521_FL: TFMTBCDField;
    CDSOTC2PS_523_FN: TFMTBCDField;
    CDSOTC2PS_512_FC: TFMTBCDField;
    CDSOTC2PS_513_FD: TFMTBCDField;
    CDSOTC2PS_517_FH: TFMTBCDField;
    CDSOTC2PS_518_FI: TFMTBCDField;
    CDSOTC2PS_520_FK: TFMTBCDField;
    CDSOTC2PS_514_FE: TFMTBCDField;
    CDSOTC2PS_346_HH: TFMTBCDField;
    CDSOTC2PS_347_HJ: TFMTBCDField;
    CDSOTC2PS_348_HK: TFMTBCDField;
    CDSOTC2PS_571_NZ: TFMTBCDField;
    CDSOTC2PS_575_EQ: TFMTBCDField;
    CDSOTC2PS_574_2Y: TFMTBCDField;
    CDSOTC2PS_572_4U: TFMTBCDField;
    CDSOTC2PS_577_G3: TFMTBCDField;
    CDSOTC2PS_133_UJ: TFMTBCDField;
    CDSOTC2PS_134_UK: TFMTBCDField;
    CDSOTC2PS_135_UM: TFMTBCDField;
    CDSOTC2PS_136_UN: TFMTBCDField;
    CDSOTC2PS_137_UP: TFMTBCDField;
    CDSOTC2USUARIO_NO: TIntegerField;
    CDSOTC2NUMERORECETA: TLargeintField;
    CDSOTC2MEZCLA_TRAN_NO: TIntegerField;
    CDSOTC2REFILL_REMINDED: TIntegerField;
    CDSOTC2AUDITED: TIntegerField;
    CDSOTC2BATCH_NUMBER: TIntegerField;
    CDSOTC2WC_PICKUP: TBooleanField;
    CDSOTC2EP_TRANSACTION_NUMBER: TIntegerField;
    CDSOTC2REFILL_NOTIFIED: TBooleanField;
    CDSOTC2PRICE_TABLE_ID: TIntegerField;
    CDSOTC2WF_TYPED: TWideStringField;
    CDSOTC2WF_BILLED: TWideStringField;
    CDSOTC2WF_PRINTED: TWideStringField;
    CDSOTC2WF_CHECKED: TWideStringField;
    CDSOTC2WF_DELIVERED: TWideStringField;
    CDSOTC2WF_FILLED: TWideStringField;
    CDSOTC2CLAIM_STATUS: TIntegerField;
    CDSOTC2FACILITY_ID: TIntegerField;
    CDSOTC2ADHERENCE: TBooleanField;
    CDSOTC2UNIT_PRICE: TFMTBCDField;
    CDSOTC2MED_CHART: TBooleanField;
    CDSOTC2PRINT_Q: TWideStringField;
    CDSOTC2BILL_LATTER: TBooleanField;
    CDSOTC2WFSTORAGE: TWideStringField;
    CDSOTC2WF_STORAGE: TWideStringField;
    CDSOTC2WF_CASHIER: TWideStringField;
    CDSOTC2WF_SIGNATURE: TWideStringField;
    CDSOTC2ALCHEMY_PRODUCTID: TIntegerField;
    CDSOTC2MARKETEDPRODUCTID: TIntegerField;
    CDSOTC2PA: TBooleanField;
    CDSOTC2WF_REVERSE: TBooleanField;
    CDSOTC2PDN_SENT: TBooleanField;
    CDSOTC2REFILL_REQ_TRANSNO: TIntegerField;
    CDSOTC2BATCH_REFILLREQ_DATE: TDateField;
    CDSOTC2PRIORAUTHORIZATION: TStringField;
    CDSOTC2BASISOFCOST: TStringField;
    CDSOTC2CLINICIDNUMBER: TIntegerField;
    CDSOTC2DIAGNOSISCODE: TWideStringField;
    CDSOTC2DURCONFLICTCODE: TWideStringField;
    CDSOTC2DURINTERVENTIONCODE: TWideStringField;
    CDSOTC2DUROUTCOMECODE: TWideStringField;
    CDSOTC2LEVELOFSERVICE: TIntegerField;
    CDSOTC2PRIMARYPRESCRIBER: TWideStringField;
    CDSOTC2RXDENIALCLARIF: TWideStringField;
    CDSOTC2RXDENIALOVERRIDE: TIntegerField;
    CDSOTC2DISPENSINGFEE: TFMTBCDField;
    CDSOTC2GROSSAMOUNTDUE: TFMTBCDField;
    CDSOTC2PATIENTPAIDAMOUNT: TFMTBCDField;
    CDSOTC2SALESTAX: TFMTBCDField;
    CDSOTC2OTAMCLDSUBCOUNTQUAL: TWideStringField;
    CDSOTC2PRODUCTSERVIDQUAL: TWideStringField;
    CDSOTC2PROVIDERID: TWideStringField;
    CDSOTC2UNIT_DOSE_INDICATOR: TWideStringField;
    CDSOTC2UNIT_OF_MEASURE: TWideStringField;
    CDSOTC2SUB_CLARIF_CODE: TWideStringField;
    CDSOTC2OTHERCOVERAGECODE: TWideStringField;
    CDSOTC2SERVICEPROVIDQUALIFIER: TWideStringField;
    CDSOTC2OP_AMOUNTPAIDCOUNT: TIntegerField;
    CDSOTC2OP_REJECTCOUNT: TIntegerField;
    CDSOTC2COB_OTHERPAYMENTCOUNT: TIntegerField;
    CDSOTC2COMPDOSAGE_FORM_DESC_CODE: TWideStringField;
    CDSOTC2COMPDISP_UNIT_FORM_INDI: TWideStringField;
    CDSOTC2COMPROUTE_OF_ADMINISTRATION: TWideStringField;
    CDSOTC2COMPING_COMP_COUNT: TIntegerField;
    CDSOTC2DISPENSING_STATUS: TWideStringField;
    CDSOTC2QTY_INTENDED_DISP: TIntegerField;
    CDSOTC2DAYS_SUPPLY_INTEND_DISP: TIntegerField;
    CDSOTC2FLAT_SALES_TAXSUB: TFMTBCDField;
    CDSOTC2ASSOC_RX_SERVICE_DATE: TSQLTimeStampField;
    CDSOTC2ASSOC_RX_SERVICE_REF_NO: TWideStringField;
    CDSOTC2CUPONTYPE: TWideStringField;
    CDSOTC2CUPON_NUMBER: TWideStringField;
    CDSOTC2CUPON_VALUE_AMT: TFMTBCDField;
    CDSOTC2PRIMARYCAREPROVIDQUALIFIER: TWideStringField;
    CDSOTC2PRIMARYCAREPROVID: TWideStringField;
    CDSOTC2PRIMARYCAREPROVLASTNAME: TWideStringField;
    CDSOTC2IAID_464_EX: TWideStringField;
    CDSOTC2DRC_357_NV: TWideStringField;
    CDSOTC2PAI_391_MT: TWideStringField;
    CDSOTC2COMPOUND_TYPE_996_G1: TWideStringField;
    CDSOTC2PST_147_U7: TWideStringField;
    CDSOTC2SCCD_354_NX: TSmallintField;
    CDSOTC2PRAC_353_NR: TSmallintField;
    CDSOTC2BSC_392_MU: TSmallintField;
    CDSOTC2SPECIAL_PACK_INDI_429_DT: TWideStringField;
    CDSOTC2ROUTEOFADMIN_995_E2: TWideStringField;
    CDSOTC2WC_117_TR: TSmallintField;
    CDSOTC2WC_118_TS: TWideStringField;
    CDSOTC2WC_119_TT: TWideStringField;
    CDSOTC2WC_120_TU: TWideStringField;
    CDSOTC2WC_121_TV: TWideStringField;
    CDSOTC2WC_122_TW: TWideStringField;
    CDSOTC2WC_123_TX: TWideStringField;
    CDSOTC2WC_124_TY: TWideStringField;
    CDSOTC2WC_125_TZ: TWideStringField;
    CDSOTC2WC_126_UA: TWideStringField;
    CDSOTC2PRIMARYCAREPROVLOCATIONCODE: TWideStringField;
    CDSOTC2PATIENTLOCATION: TIntegerField;
    CDSOTC2PRESC_SRNM: TWideStringField;
    CDSOTC2PS_558_AW: TFMTBCDField;
    CDSOTC2PS_559_AX: TFMTBCDField;
    CDSOTC2REVENUE_CODE: TWideStringField;
    CDSOTC2DAW: TSmallintField;
    CDSOTC2BATCH_NUMBER_BILLING: TLargeintField;
    CDSOTC2TERMINADA: TBooleanField;
    CDSOTC2MEDICAID_PAID_AMOUNT: TFMTBCDField;
    CDSOTC2PMC_459_ER: TWideStringField;
    CDSOTC2PMCC_458_SE: TIntegerField;
    CDSOTC2SPIDN_454_EK: TWideStringField;
    CDSOTC2IATID_463_EW: TWideStringField;
    CDSOTC2QTY: TFMTBCDField;
    CDSOTC2CONTROLADO: TWideStringField;
    CDSOTC2CODIGOREFILLNUEVO: TSmallintField;
    CDSOTC2RXNUMBERSRNQ: TWideStringField;
    CDSOTC2TRANSACTION_CODE: TWideStringField;
    CDSOTC2MEDICAMENTOORIGINAL: TWideStringField;
    CDSOTC2ROBOT: TIntegerField;
    CDSOTC2LABEL_NAME: TWideStringField;
    CDSOTC2FECHAEXPIRACION: TDateField;
    CDSOTC2IMPRIMIR: TBooleanField;
    CDSOTC2INSTANCIA: TIntegerField;
    CDSOTC2ORG_PROS_PROD_SERVID: TStringField;
    CDSOTC2ORG_PRESC_QTY: TIntegerField;
    CDSOTC2ORG_PRES_PROD_SIDQ: TStringField;
    CDSOTC2PRIOR_AUTH_TYPE_CODE: TStringField;
    CDSOTC2INCENTIVE_AMOUNT_SUB: TFMTBCDField;
    CDSOTC2PROF_SERV_FEE_SUB: TFMTBCDField;
    CDSOTC2PERCENTAGE_SALES_TAX_SUB: TFMTBCDField;
    CDSOTC2PERCENTAGE_SALES_TAX_RATE: TFMTBCDField;
    CDSOTC2OTHERAMOUNTCLAIMEDSUB: TFMTBCDField;
    CDSOTC2QTY_TEMP: TFMTBCDField;
    CDSOTC2OTHERAMOUNTCLAIMEDSUBCOUNT: TIntegerField;
    CDSOTC2PER_SALESTAX_BASIS_SUB: TStringField;
    CDSOTC2WC_DATE_OF_INJURY: TSQLTimeStampField;
    CDSOTC2WC_EMPLOYER_NAME: TStringField;
    CDSOTC2WC_EMPLOYER_STREET: TStringField;
    CDSOTC2WC_EMPLOYER_CITY: TStringField;
    CDSOTC2WC_EMPLOYER_STATE: TStringField;
    CDSOTC2WC_EMPLOYER_CONTACT: TStringField;
    CDSOTC2WC_EMLPOYER_ZIP: TStringField;
    CDSOTC2WC_CARRIER_ID: TStringField;
    CDSOTC2WC_CLAIMREF_ID: TStringField;
    CDSOTC2WC_EMPLOYER_PHONE: TStringField;
    CDSOTC2PLANESMEDICOSNO: TIntegerField;
    CDSOTC2RX_SHOW_NOREFDISP_FLOAT: TBooleanField;
    CDSOTC2APPRISS_SENT: TBooleanField;
    CDSOTC2MessageID: TWideStringField;
    CDSOTC2RECORD_LOCKED: TBooleanField;
    dsInventoryImage: TDataSource;
    cdsInventoryImage: TClientDataSet;
    dspInventoryImage: TDataSetProvider;
    qInventoryImage: TFDQuery;
    cdsInventoryImagePRODUCT_ID: TIntegerField;
    cdsInventoryImagePROD_IMAGE: TBlobField;
    POS_INSERT_EDIT_PRODIMAGE: TFDStoredProc;
    cdsProductImagePRODUCT_ID: TIntegerField;
    cdsProductImagePROD_IMAGE: TBlobField;
    cdsOpenTabsTRANS_TYPE: TWideStringField;
    POS_UPDATE_TAX_TFAM: TFDStoredProc;
    CDSSetupMYREFILL_UPDATE_SMARTPICKUP: TBooleanField;
    RX_UPDATE_REFILL_QUERY: TFDStoredProc;
    CDSPasswordsPASSWORD_COL: TWideStringField;
    CDSSetupCLASSIC_LOGIN: TBooleanField;
    CDSPasswordsINICIALES: TStringField;
    CDSPasswordsUSERNO: TAutoIncField;
    CDSPasswordsMAIN_SETUP: TBooleanField;
    CDSPasswordsMAIN_CUST: TBooleanField;
    CDSPasswordsMAIN_LABEL: TBooleanField;
    CDSPasswordsMAIN_INV: TBooleanField;
    CDSPasswordsMAIN_DEPT: TBooleanField;
    CDSPasswordsMAIN_SUPL: TBooleanField;
    CDSPasswordsMAIN_TOTAL: TBooleanField;
    CDSPasswordsMAIN_ACCTS: TBooleanField;
    CDSPasswordsMAIN_INVRPT: TBooleanField;
    CDSPasswordsMAIN_RECV: TBooleanField;
    CDSPasswordsPOS_REFUND: TBooleanField;
    CDSPasswordsPOS_DELPROD: TBooleanField;
    CDSPasswordsPOS_CHGPRICE: TBooleanField;
    CDSPasswordsPOS_DELTRANS: TBooleanField;
    CDSPasswordsPOS_DISCOUNT: TBooleanField;
    CDSPasswordsPOS_PAYOUT: TBooleanField;
    CDSPasswordsPOS_CREDIT: TBooleanField;
    CDSPasswordsPOS_TAB_CANCEL: TBooleanField;
    CDSPasswordsPOS_ADD_BUTTONS: TBooleanField;
    CDSPasswordsPOS_REST_DELETEPRODUCT: TBooleanField;
    CDSPasswordsPOS_LIMITE_CAMBIO_PRECIO: TBooleanField;
    CDSPasswordsPOS_CAMBIAR_PRECIO_INV: TBooleanField;
    CDSPasswordsPOS_NCGH: TBooleanField;
    CDSPasswordsPOS_REPRINT: TBooleanField;
    CDSPasswordsPOS_CANCEL: TBooleanField;
    CDSPasswordsPOS_LOGEADO: TBooleanField;
    CDSPasswordsPOS_OPNDRAWR: TBooleanField;
    CDSPasswordsPOS_BUTTONS: TBooleanField;
    CDSPasswordsPOS_CUADRE_ADMINISTRADOR: TBooleanField;
    CDSPasswordsPOS_VER_TOTAL_CASH: TBooleanField;
    CDSPasswordsPOS_POST_SHOPPER: TBooleanField;
    CDSPasswordsPOS_IVU: TBooleanField;
    CDSPasswordsCUST_IBAL: TBooleanField;
    CDSPasswordsCUST_ILWAY: TBooleanField;
    CDSPasswordsCUST_EDIT: TBooleanField;
    CDSPasswordsCUST_DEL: TBooleanField;
    CDSPasswordsTOT_ADDOLD: TBooleanField;
    CDSPasswordsTOT_EDIT: TBooleanField;
    CDSPasswordsTOT_EDITOLD: TBooleanField;
    CDSPasswordsTOT_DEL: TBooleanField;
    CDSPasswordsRPT_POS: TBooleanField;
    CDSPasswordsRPT_RECETARIO: TBooleanField;
    CDSPasswordsRPT_INVENTARIO: TBooleanField;
    CDSPasswordsRPT_CLIENTES: TBooleanField;
    CDSPasswordsREPORTES: TBooleanField;
    CDSPasswordsMAIN_TRANS: TBooleanField;
    CDSPasswordsVERTRANSACCIONES: TBooleanField;
    CDSPasswordsAGRUPARPRODUCTOS: TBooleanField;
    CDSPasswordsEM_VERQTYORD: TBooleanField;
    CDSPasswordsQUICKENTRY: TBooleanField;
    CDSPasswordsGUARDAR_TRANSACCIONES: TBooleanField;
    CDSPasswordsRECALL_TRANS: TBooleanField;
    CDSPasswordsADMINISTRATOR: TBooleanField;
    CDSPasswordsBACKUP_PERMIT: TBooleanField;
    CDSPasswordsVENTA_MANUAL: TBooleanField;
    CDSPasswordsBORRAR_FIRMA: TBooleanField;
    CDSPasswordsCAPTURAR_FIRMA: TBooleanField;
    CDSPasswordsPORCENTO_DESCUENTO: TBooleanField;
    CDSPasswordsCAMBIAR_PRECIO_OTC_RX: TBooleanField;
    CDSPasswordsREDIMIR_PATROCINIO: TBooleanField;
    CDSPasswordsLOG_DATA: TBooleanField;
    CDSPasswordsSEC_LEVEL: TStringField;
    CDSPasswordsSIGNATURE: TMemoField;
    CDSPasswordsRPT_RECONCILIACION: TBooleanField;
    CDSPasswordsPOS_HOLD: TBooleanField;
    ADD_EDIT_USERS_POS: TFDStoredProc;
    CDSPasswordsCELULAR: TWideStringField;
    CDSPasswordsHOME_PHONE: TWideStringField;
    CDSPasswordsADDRESS1: TWideStringField;
    CDSPasswordsADDRESS2: TWideStringField;
    CDSPasswordsCITY: TWideStringField;
    CDSPasswordsZIP_CODE: TWideStringField;
    CDSPasswordsSTATE: TWideStringField;
    CDSLogOTCNUMBER: TIntegerField;
    CDSLogPRESCRIBER_ID: TIntegerField;
    CDSLogCUSTOMER_ID: TIntegerField;
    CDSLogPASSWORD_ID: TIntegerField;
    CDSLogHEALTH_PLAN_ID: TIntegerField;
    CDSLogPATIENT_HEALTH_PLAN_ID: TIntegerField;
    CDSLogDRUG_ID: TIntegerField;
    CDSLogPOS_RX: TStringField;
    CDSLogTRANSACTIONNUMBER: TIntegerField;
    CDSLogCONTROLLED: TBooleanField;
    CDSLogSUCCESSFUL: TBooleanField;
    CDSLogUSUARIO_DEFINE: TStringField;
    ISAUTHORIZED: TFDStoredProc;
    PWRD_ISAUTHORIZED: TFDStoredProc;
    CDSPasswordsCAMBIARPASSWORD: TBooleanField;
    CDSSetupSSSOTC_StoreKey: TWideStringField;
    CDSSetupSSSOTC_APIKey: TWideStringField;
    RESTClient: TRESTClient;
    RESTRequest: TRESTRequest;
    RESTResponse: TRESTResponse;
    CDSInventarioPisoTRIPLES_PRODUCT: TBooleanField;
    CALC_TRIPLES_TAX: TFDStoredProc;
    POS_INSERT_TRIPLES_PAYMENT: TFDStoredProc;
    CDSDailyTotalsTRIPLESREAD: TFMTBCDField;
    CDSTransShowTRIPLES_PRODUCT: TBooleanField;
    CDSTransShowTRIPLES_COVERED: TBooleanField;
    CDSTransShow2TRIPLES_PRODUCT: TBooleanField;
    CDSTransShow2TRIPLES_COVERED: TBooleanField;
    CDSTransShow2PRICE: TFMTBCDField;
    CALC_PRODUCT_TAX: TFDStoredProc;
    CDSTransShow2TRIPLES_CLAIM_NUMBER: TWideStringField;
    WC_BAGPICKUP_UPDATE: TFDStoredProc;
    CDSPasswordsPOS_MODIFY_PAYOUT: TBooleanField;
    SIGNATURE_LINK: TFDStoredProc;
    CDSClientesTAX_EXEMPT: TBooleanField;
    CDSInventarioPisoBARCODE2: TWideStringField;
    CDSSetupCOMPLEX_SEARCH: TBooleanField;
    CDSSetupRX_ENFORCE_SIGNATURE_ONCHECKOUT: TBooleanField;
    CDSInventarioPisoSHOW_ON_ECOMM: TBooleanField;
    CDSHeadRecallNoTrans: TStringField;
    cdsOpenTabsTRANS_TYPE_DEFINED: TStringField;
    CDSSetupPERMIT_ZERO_MANUALSALE: TBooleanField;
    PWRD_ISAUTHORIZED_CLASSIC: TFDStoredProc;
    INSERT_ESIGNATURE_AI: TFDStoredProc;
    INSERT_PICKUP: TFDStoredProc;
    CDSLogNOTE: TWideMemoField;
    CDSInventarioPisoCUSTOMER_ID_REQUIRED: TBooleanField;
    CDSSetupQR_CODE: TBlobField;
    qCUSTOMER_CLASSIFICATION: TFDQuery;
    dspCUSTOMER_CLASSIFICATION: TDataSetProvider;
    dsCUSTOMER_CLASSIFICATION: TDataSource;
    cdsCUSTOMER_CLASSIFICATION: TClientDataSet;
    cdsCUSTOMER_CLASSIFICATIONID: TAutoIncField;
    cdsCUSTOMER_CLASSIFICATIONCLIENT_CASSIFICATION: TWideStringField;
    CDSClientesRETAILPRICE_SELECTED: TStringField;
    CDSInventarioPisoPRODUCT_CLASSIFICATION: TWideStringField;
    CDSClientesCLASIFICATION: TWideStringField;
    CDSSetupBTN_PRINT_RECEIPT: TBooleanField;
    CDSSetupPRINT_BARCODE_PARTNUMBER: TStringField;
    CDSDetailBARCODEALTERNO1: TWideStringField;
    IdConnectionIntercept1: TIdConnectionIntercept;
    IdMessage1: TIdMessage;
    IdSMTP1: TIdSMTP;
    CDSSetupemail: TWideStringField;
    CDSSetupSIGPLUS: TWideStringField;
    INSERT_PRINT_Q: TFDStoredProc;
    TCPClientPrintServer: TIdTCPClient;
    cdsTabsHeaderGROUP_BY_ID: TIntegerField;
    cdsOpenTabsGROUP_BY_ID: TIntegerField;
    cdsOpenTabsGROUP_BY_NAME: TWideStringField;
    cdsTabsHeaderGROUP_BY_NAME: TWideStringField;
    qryBUTTONS_MOBILE_HEADER: TFDQuery;
    dspBUTTONS_MOBILE_HEADER: TDataSetProvider;
    cdsBUTTONS_MOBILE_HEADER: TClientDataSet;
    dsBUTTONS_MOBILE_HEADER: TDataSource;
    cdsBUTTONS_MOBILE_HEADERcategory_id: TAutoIncField;
    cdsBUTTONS_MOBILE_HEADERdescription: TWideStringField;
    cdsBUTTONS_MOBILE_HEADERbutton_category: TIntegerField;
    qryBUTTONS_MOBILE_DETAIL: TFDQuery;
    dspBUTTONS_MOBILE_DETAIL: TDataSetProvider;
    dsBUTTONS_MOBILE_DETAIL: TDataSource;
    cdsBUTTONS_MOBILE_DETAIL: TClientDataSet;
    cdsBUTTONS_MOBILE_DETAILid: TAutoIncField;
    cdsBUTTONS_MOBILE_DETAILdescription: TWideStringField;
    cdsBUTTONS_MOBILE_DETAILproduct_no: TIntegerField;
    cdsBUTTONS_MOBILE_DETAILqty: TFloatField;
    cdsBUTTONS_MOBILE_DETAILbtn_image: TBlobField;
    cdsBUTTONS_MOBILE_DETAILmodifier: TBooleanField;
    cdsBUTTONS_MOBILE_DETAILcategory_id: TIntegerField;
    cdsBUTTONS_MOBILE_DETAILrow: TIntegerField;
    cdsBUTTONS_MOBILE_DETAILcol: TIntegerField;
    cdsBUTTONS_MOBILE_DETAILtab_id: TIntegerField;
    cdsBUTTONS_MOBILE_DETAILBalance: TFloatField;
    cdsOpenTabsISTABLE: TBooleanField;
    cdsBUTTONS_MOBILE_DETAILadd_on: TWideStringField;
    cdsBUTTONS_MOBILE_DETAILrecipe: TBooleanField;
    ADD_EDIT_BUTTONS_MOBILE_HEADER: TFDStoredProc;
    CDSSetupemail_carbon_copy: TBooleanField;
    CDSSetupPERMIT_ZERO_ANYSALE: TBooleanField;
    CDSPasswordsPOS_DELETE_RX: TBooleanField;
    CDSDailyTotalsPAYPALREAD: TFMTBCDField;
    CDSDailyTotalsPAYPALCOUNT: TFMTBCDField;
    CDSDailyTotalsCASHBACK: TFMTBCDField;
    CDSSetupmax_cashback: TFMTBCDField;
    CDSSetupRX_ENFORCERXCHECK_ONCHECKOUT: TBooleanField;
    CDSSetupNON_WESCOM_STORE: TBooleanField;
    CDSSetupWC_INTERFACE: TWideStringField;
    CDSSetupWC_INTERFACE_HOST: TWideStringField;
    CDSSetupWC_INTERFACE_PORT: TIntegerField;
    CDSSetupPOS_UPCSEARCH_ONLY: TBooleanField;
    cdsInventarioPiso2PRODUCT_CLASSIFICATION: TWideStringField;
    CDSClientesDIRECCION2: TWideStringField;
    CDSHeadTRANS_TYPE: TWideStringField;
    CDSSetupCOOPHARMA_PHARMACY_ID: TWideStringField;
    POS_INSERT_EVERTEC_TRANS: TFDStoredProc;
    cdsEvertec: TClientDataSet;
    dsEvertec: TDataSource;
    dspEvertec: TDataSetProvider;
    qEvertec: TFDQuery;
    cdsEvertecID: TAutoIncField;
    cdsEvertecTRANSACTIONNUMBER: TIntegerField;
    cdsEvertecRESPONSE: TMemoField;
    NEXT_ID: TFDStoredProc;
    CALC_SPLIT_PAYMENT_TAX: TFDStoredProc;
    RESTClient2: TRESTClient;
    RESTRequest2: TRESTRequest;
    RESTResponse2: TRESTResponse;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    CDSSetupSETTLEMENT_AT_LOGOUT: TBooleanField;
    cdsEvertecDATE_TIME: TSQLTimeStampField;
    CDSDailyTotalsUTILITY_CASH_READ: TFMTBCDField;
    INSERTPOS: TFDStoredProc;
    cdsSalesPromoDISCOUNT: TFloatField;
    CDSSetupVENDOR: TWideStringField;
    CDSClientesLANGUAGE: TWideStringField;
    CDSTransShowpseudo: TBooleanField;
    CDSTransShowpep_spray: TBooleanField;
    CDSInventarioPisopseudo: TBooleanField;
    INSERT_PRODUCT_SIGNATURE: TFDStoredProc;
    qProductSignature: TFDQuery;
    dspProductSignature: TDataSetProvider;
    dsProductSignature: TDataSource;
    cdsProductSignature: TClientDataSet;
    cdsProductSignatureENCRYPTED_SIGNATURE: TMemoField;
    cdsProductSignatureSIGNATURE_DATE: TDateField;
    cdsProductSignatureSIGNATURE_USER: TWideStringField;
    cdsProductSignatureTRANSACTIONNUMBER: TIntegerField;
    cdsProductSignaturePICKEDUP_BY: TWideStringField;
    cdsProductSignaturePICKEDUP_ID: TWideStringField;
    cdsProductSignaturePRODDESCRIPTION: TStringField;
    cdsProductSignatureQTY: TFloatField;
    cdsProductSignatureUPC: TStringField;
    cdsProductSignaturepseudo: TBooleanField;
    cdsProductSignaturepep_spray: TBooleanField;
    cdsProductSignatureIMAGE_SIGNATURE: TBlobField;
    cdsProductSignaturePICKEDUP_ADDRESS: TMemoField;
    cdsProductSignaturePICKEDUP_ID_TYPE: TWideStringField;
    cdsInventarioPiso2Faltas: TFloatField;
    cdsInventarioPiso2TOTAL_COST: TFloatField;
    FDConnection2: TFDConnection;
    FDTransaction2: TFDTransaction;
    CDSVentasDpt: TClientDataSet;
    CDSVentasDptProdDepartment: TStringField;
    CDSVentasDptPrecio: TFMTBCDField;
    CDSVentasDptTCosto: TFloatField;
    CDSVentasDptGanancia: TFloatField;
    dsVentasDept: TDataSource;
    dspVentasDpt: TDataSetProvider;
    QVentasDeptFD: TFDQuery;
    QtransPorHora: TFDQuery;
    dspTransPorHora: TDataSetProvider;
    dsTransPorHora: TDataSource;
    CDStransPorHora: TClientDataSet;
    qTotalVentPorEmp: TFDQuery;
    dspTotalVentPorEmp: TDataSetProvider;
    dsTotalVentPorEmp: TDataSource;
    cdsTotalVentPorEmp: TClientDataSet;
    cdsTotalVentPorEmpSalesman: TStringField;
    cdsTotalVentPorEmpTotal: TFMTBCDField;
    CDSPacientes: TClientDataSet;
    CDSPacientesNombreCompleto: TStringField;
    CDSPacientesFullAddress: TStringField;
    CDSPacientesGender: TStringField;
    CDSPacientesFECHANACIMIENTO: TSQLTimeStampField;
    CDSPacientesSEXO: TIntegerField;
    CDSPacientesDIRECCION1: TStringField;
    CDSPacientesDIRECCION2: TWideStringField;
    CDSPacientesULTTRANS: TSQLTimeStampField;
    CDSPacientesINTERES: TStringField;
    CDSPacientesDIRECCIONFISICA: TStringField;
    CDSPacientesTELEFONO: TStringField;
    CDSPacientesFAX: TStringField;
    CDSPacientesCELULAR: TStringField;
    CDSPacientesESTADO: TStringField;
    CDSPacientesSOCIO: TStringField;
    CDSPacientesORIENTACION: TStringField;
    CDSPacientesIDENTIFICACION: TStringField;
    CDSPacientesSMOKER: TStringField;
    CDSPacientesLOCATION: TStringField;
    CDSPacientesEMPLOYER_ID: TStringField;
    CDSPacientesPATIENT_ID_QUAL: TStringField;
    CDSPacientesPREGNANCY_IDICATOR: TStringField;
    CDSPacientesFECHA_HIPPA: TSQLTimeStampField;
    CDSPacientesINFOADICIONAL: TStringField;
    CDSPacientesCONSULTA: TStringField;
    CDSPacientesCIUDAD: TStringField;
    CDSPacientesNOMBRE: TStringField;
    CDSPacientesAPELLIDOPATERNO: TStringField;
    CDSPacientesAPELLIDOMATERNO: TStringField;
    CDSPacientesMAILING_ADDRESS1: TStringField;
    CDSPacientesMAILING_ADDRESS2: TStringField;
    CDSPacientesMAILING_CITY: TStringField;
    CDSPacientesMAILING_STATE: TStringField;
    CDSPacientesMAILING_ZIPCODE: TStringField;
    CDSPacientesPATIENT_RESIDENCE: TWideStringField;
    CDSPacientesCARDHOLDERID: TWideStringField;
    CDSPacientesCODIGOPOSTAL: TWideStringField;
    CDSPacientesEMAIL: TWideStringField;
    CDSPacientesPLACE_OF_SERVICE: TWideStringField;
    CDSPacientesSIGNATURE: TMemoField;
    CDSPacientesOUT_DIAL_PERMISSION: TWideStringField;
    CDSPacientesNOTIFICATION_MODE_PHONE: TSmallintField;
    CDSPacientesNOTIFICATION_MODE_CEL: TSmallintField;
    CDSPacientesNOTIFICATION_MODE_SMS: TSmallintField;
    CDSPacientesNOTIFICATION_MODE_EMAIL: TSmallintField;
    CDSPacientesSSN: TWideStringField;
    CDSPacientesNIGHT_PHONE: TWideStringField;
    CDSPacientesWC_NO_NOTIFICATION: TBooleanField;
    CDSPacientesFACILITY_ID: TIntegerField;
    CDSPacientesNUMEROCLIENTE: TAutoIncField;
    CDSPacientesOVERRIDE_SYSTEM_DEFAULT_PRICE: TBooleanField;
    CDSPacientesDEUDA: TFMTBCDField;
    CDSPacientesLAWAY: TFMTBCDField;
    CDSPacientesAUSPICIO: TFMTBCDField;
    CDSPacientesACCIONES: TFMTBCDField;
    CDSPacientesLIMITECREDITO: TFMTBCDField;
    CDSPacientesALLERGY: TBooleanField;
    CDSPacientesDECEASED: TBooleanField;
    CDSPacientesDEUDA_WEB: TFMTBCDField;
    CDSPacientesDEUDA_EXTENDIDA: TStringField;
    CDSPacientesNOTIFICATION_MODE: TWideStringField;
    CDSPacientesPRIMARY_TELEPHONE: TWideStringField;
    CDSPacientesFACILITY_ADMISSION_DATE: TDateField;
    CDSPacientesFACILITY_ROOM: TWideStringField;
    CDSPacientesFACILITY_PRESCRIBER: TWideStringField;
    CDSPacientesPRICE_TABLE_ID: TIntegerField;
    CDSPacientesADHERENCE: TBooleanField;
    CDSPacientesMIDDLE_NAME: TStringField;
    CDSPacientesSIGNATURE_RX_LINK: TIntegerField;
    CDSPacientesID_IMAGE: TIntegerField;
    CDSPacientesRECORD_LOCKED: TBooleanField;
    CDSPacientesINSTANCIA: TIntegerField;
    CDSPacientesDELIVERY: TBooleanField;
    CDSPacientesCLASIFICATION: TWideStringField;
    CDSPacientesAUTOMATIC_REFILL: TBooleanField;
    CDSPacientesFAMILY_LINK: TWideStringField;
    CDSPacientesLANGUAGE: TWideStringField;
    DSPacientes: TDataSource;
    DSPPacientes: TDataSetProvider;
    qPacientes: TFDQuery;
    CDSInventarioPisoSIZE_IT: TStringField;
    CDSInventarioPisoGm1: TFMTBCDField;
    CDSInventarioPisoGm2: TFMTBCDField;
    CDSInventarioPisoALWDISC: TBooleanField;
    CDSInventarioPisoROUND: TBooleanField;
    CDSInventarioPisoDepL: TStringField;
    CDSInventarioPisoDepS: TStringField;
    CDSInventarioPisoNLINE: TBooleanField;
    CDSInventarioPisoEBT: TBooleanField;
    CDSInventarioPisoSigis: TBooleanField;
    CDSInventarioPisoOTCCard: TBooleanField;
    CDSInventarioPisopseudoMgD: TIntegerField;
    CDSInventarioPisoPseudoMgP: TIntegerField;
    CDSInventarioPisoNonRefund: TBooleanField;
    CDSInventarioPisoPepSpray: TBooleanField;
    CDSInventarioPisoMaxPerTx: TIntegerField;
    CDSInventarioPisoSkipPriceUpd: TBooleanField;
    CDSInventarioPisoDtSkipPriceUpd: TSQLTimeStampField;
    CDSInventarioPisoSkipPriceUpdInit: TStringField;
    CDSInventarioPisoSkipPriceDistUpd: TBooleanField;
    CDSInventarioPisoLST_MODIF_PR: TSQLTimeStampField;
    CDSInventarioPisoGm3: TFMTBCDField;
    CDSInventarioPisoline_loc: TStringField;
    CDSInventarioPisoshelf_loc: TStringField;
    CDSInventarioPisostock_loc: TStringField;
    QRecHandheld: TFDQuery;
    DSRecHandheld: TDataSource;
    DSPRecHandheld: TDataSetProvider;
    CDSRecHandheld: TClientDataSet;
    POS_GET_HANDHELDINFO: TFDStoredProc;
    DSPattributes: TDataSetProvider;
    CDSattributes: TClientDataSet;
    DSattributes: TDataSource;
    Qattributes: TFDQuery;
    POS_UPDATE_DEPART_ATTRIB: TFDStoredProc;
    CDSPasswordsPROCESS_HANDHELD: TBooleanField;
    CDSInventarioPisoAskID: TIntegerField;
    CDSTransShowALWDISC: TBooleanField;
    POS_GET_PROCESS832: TFDStoredProc;
    QProcess832: TFDQuery;
    DSProcess832: TDataSource;
    DSPProcess832: TDataSetProvider;
    CDSProcess832: TClientDataSet;
    cdsPaymentCardLog: TClientDataSet;
    dsPaymentCardLog: TDataSource;
    dspPaymentCardLog: TDataSetProvider;
    qPaymentCardLog: TFDQuery;
    cdsPaymentCardLogID: TAutoIncField;
    cdsPaymentCardLogtransNo: TIntegerField;
    cdsPaymentCardLogcardType: TWideStringField;
    cdsPaymentCardLoglastFour: TIntegerField;
    cdsPaymentCardLogauthNo: TWideStringField;
    CDSProcess832ID: TFMTBCDField;
    CDSProcess832DtCreated: TSQLTimeStampField;
    CDSProcess832UPC: TStringField;
    CDSProcess832DESCRIPCION: TStringField;
    CDSProcess832vendor_ide: TStringField;
    CDSProcess832Size_It: TStringField;
    CDSProcess832Case_qty: TFMTBCDField;
    CDSProcess832Case_cost: TFMTBCDField;
    CDSProcess832Unit_costP: TFMTBCDField;
    CDSProcess832Lp1P: TFMTBCDField;
    CDSProcess832Gm1P: TFMTBCDField;
    CDSProcess832Unit_cost: TFMTBCDField;
    CDSProcess832LP1: TFMTBCDField;
    CDSProcess832Gm1: TFMTBCDField;
    CDSProcess832VEND_NUM: TStringField;
    CDSProcess832UpdateItem: TBooleanField;
    CDSProcess832Process: TIntegerField;
    CDSProcess832WHO_MOD: TStringField;
    CDSProcess832DtProcessed: TSQLTimeStampField;
    CDSProcess832Department: TStringField;
    CDSProcess832inactive: TBooleanField;
    CDSProcess832difGM: TFMTBCDField;
    CDSProcess832difPrice: TFMTBCDField;
    CDSProcess832DISMISS: TBooleanField;
    CDSProcess832REMOVE: TBooleanField;
    CDSTransHeadFSA: TFMTBCDField;
    CDSTransHeadOTCCard: TFMTBCDField;
    CDSDepartamentosDEPARTAMENTO: TSmallintField;
    CDSDepartamentosDESCRIPCION: TStringField;
    CDSDepartamentosCOMENTARIO: TStringField;
    CDSDepartamentosALWDISC: TBooleanField;
    CDSDepartamentosROUND: TBooleanField;
    CDSDepartamentosNLINE: TBooleanField;
    CDSDepartamentosEBT: TBooleanField;
    CDSDepartamentosSigis: TBooleanField;
    CDSDepartamentosOTCCard: TBooleanField;
    CDSDepartamentosPseudo: TBooleanField;
    CDSDepartamentospseudoMgD: TIntegerField;
    CDSDepartamentosPseudoMgP: TIntegerField;
    CDSDepartamentosNonRefund: TBooleanField;
    CDSDepartamentosPepSpray: TBooleanField;
    CDSDepartamentosMaxPerTx: TIntegerField;
    CDSDepartamentosSkipPriceUpd: TBooleanField;
    CDSDepartamentosSkipPriceDistUpd: TBooleanField;
    CDSDepartamentosTAXABLE: TBooleanField;
    CDSDepartamentosGm1: TFMTBCDField;
    CDSDepartamentosAskID: TIntegerField;
    CDSTransShowOTCCard: TBooleanField;
    CDSTransShowFSA: TBooleanField;
    CDSTransShowDISCOUNT_PERCENTAGE: TFMTBCDField;
    cdsCounters: TClientDataSet;
    dspCounters: TDataSetProvider;
    dsCounters: TDataSource;
    qCounters: TFDQuery;
    cdsCountersSTICKER: TLargeintField;
    cdsCounterstitulo1: TStringField;
    cdsCounterstitulo2: TStringField;
    cdsCounterstitulo3: TStringField;
    cdsCounterstitulo4: TStringField;
    cdsCountersReceiptMessage: TStringField;
    CDSDailyTotalsEND_OF_DAY: TBooleanField;
    CDSDailyTotalsEND_OF_DAY_COMPLETED: TBooleanField;
    CDSSetupWF_OVERRIDE_CHECKED: TBooleanField;
    cdsTotalCobrado: TClientDataSet;
    dspTotalCobrado: TDataSetProvider;
    dsTotalCobrado: TDataSource;
    qTotalCobrado: TFDQuery;
    cdsTaxEstatalExcempto: TClientDataSet;
    dspTaxEstatalExcempto: TDataSetProvider;
    dsTaxEstatalExcempto: TDataSource;
    qTaxEstatalExempto: TFDQuery;
    cdsTaxMunExcempto: TClientDataSet;
    dspTaxMunExcempto: TDataSetProvider;
    dsTaxMunExcempto: TDataSource;
    qTaxMunExcempto: TFDQuery;
    cdsTarjFamilia: TClientDataSet;
    dspTarjFamilia: TDataSetProvider;
    dsTarjFamilia: TDataSource;
    qTarjFamilia: TFDQuery;
    cdsTaxServicioExcempto: TClientDataSet;
    dspTaxServicioExcempto: TDataSetProvider;
    dsTaxServicioExcempto: TDataSource;
    qTaxServicioExempto: TFDQuery;
    cdsTaxServicio: TClientDataSet;
    dspTaxServicio: TDataSetProvider;
    dsTaxServicio: TDataSource;
    qTaxServicio: TFDQuery;
    cdsTaxServicioTaxServicio: TFMTBCDField;
    cdsTaxServicioExcemptoTaxServicioExcempto: TFMTBCDField;
    cdsTarjFamiliaTTarjetaFamilia: TFMTBCDField;
    cdsTaxMunExcemptoTaxMunicipalExcempto: TFMTBCDField;
    cdsTaxEstatalExcemptoTaxEstatalExcempto: TFMTBCDField;
    cdsTotalCobradoTotalCobrado: TFMTBCDField;
    CDSDailyTotalsEOD_LINK: TIntegerField;
    CDSTransShowSALES_PROMO: TBooleanField;
    FDConnection3: TFDConnection;
    cdsSpinPOS: TClientDataSet;
    cdsSpinPOSID: TAutoIncField;
    cdsSpinPOSRESPONSE: TMemoField;
    cdsSpinPOSDATE_TIME: TSQLTimeStampField;
    cdsSpinPOSAMOUNT: TFloatField;
    cdsSpinPOSBatchNum: TLargeintField;
    cdsSpinPOSTRANSACTIONNUMBER: TLargeintField;
    cdsSpinPOSREFERENCENUM: TLargeintField;
    cdsSpinPOSPaymentType: TStringField;
    cdsSpinPOSTransactionType: TStringField;
    dsSpinPOS: TDataSource;
    dspSpinPOS: TDataSetProvider;
    qSpinPOS: TFDQuery;
    USP_POS_INSERT_SPINPOS_TRANS: TFDStoredProc;
    CDSSetupSpinPosURL: TStringField;
    CDSPasswordsCREATE_INVENTORY: TBooleanField;
    CDSPasswordsDELETE_INVENTORY: TBooleanField;
    CDSPasswordsEDIT_INVENTORY: TBooleanField;
    CDSInventarioPisoNUMEROSUPLIDOR2: TIntegerField;
    CDSInventarioPisoSUPPLIER_PRICE_DEFINE: TIntegerField;
    CDSInventarioPisoSUPPLIER_PRICE: TFMTBCDField;
    CDSInventarioPisoSUPPLIER_PRICE2: TFMTBCDField;
    cdsInventarioPiso2NUMEROSUPLIDOR2: TIntegerField;
    cdsInventarioPiso2SUPPLIER_PRICE_DEFINE: TIntegerField;
    cdsInventarioPiso2SUPPLIER_PRICE: TFMTBCDField;
    cdsInventarioPiso2SUPPLIER_PRICE2: TFMTBCDField;
    CDSInventarioPisoSUPP_ITEMID: TStringField;
    CDSInventarioPisoSUPP_ITEMID2: TStringField;
    CALC_PAYOUT: TFDStoredProc;
    CDSInventarioPisoMAIN_NDC: TBooleanField;
    CDSPasswordsPOS_COUPON: TBooleanField;
    CDSDailyTotalsCOUPONREAD: TFMTBCDField;
    qHelp: TFDQuery;
    dspHelp: TDataSetProvider;
    dsHelp: TDataSource;
    cdsHelp: TClientDataSet;
    cdsHelpDESCRIPCION: TStringField;
    cdsHelpINDICE: TAutoIncField;
    cdsHelpCAPITULO: TIntegerField;
    cdsHelpDESCRIPCION_DETALLE: TStringField;
    CDSPasswordsMODIFY_HELP_FORM: TBooleanField;
    CDSInventarioPisoQTY_FLOOR: TIntegerField;
    CDSInventarioPisoQTY_STOCK: TIntegerField;
    cdsPR_OTC: TClientDataSet;
    cdsPR_OTCOTCNUMBER: TAutoIncField;
    cdsPR_OTCMEDICAMENTO: TWideStringField;
    cdsPR_OTCMEDICAMENTOMIX: TWideStringField;
    cdsPR_OTCQTY: TFMTBCDField;
    cdsPR_OTCTOTAL: TFMTBCDField;
    cdsPR_OTCCOSTOVENTA: TFMTBCDField;
    cdsPR_OTCATENDIDOPOR: TStringField;
    cdsPR_OTCFECHAOTC: TSQLTimeStampField;
    cdsPR_OTCCOBRADO: TStringField;
    cdsPR_OTCPRODUCT_ID: TIntegerField;
    cdsPR_OTCNUMEROCLIENTE: TIntegerField;
    cdsPR_OTCNDC: TWideStringField;
    cdsPR_OTCCREATED_AT: TSQLTimeStampField;
    dsPR_OTC: TDataSource;
    dspPR_OTC: TDataSetProvider;
    qPR_OTC: TFDQuery;
    CDSTransShowPR_OTC: TBooleanField;
    procedure CDSSetupAfterDelete(DataSet: TDataSet);
    procedure CDSClientTransactionsAfterDelete(DataSet: TDataSet);
    procedure CDSClientesOldCalcFields(DataSet: TDataSet);
    procedure SocketConnection1AfterConnect(Sender: TObject);
    procedure CDSPrintListCalcFields(DataSet: TDataSet);
    procedure CDSTransShowAfterPost(DataSet: TDataSet);
    procedure CDSTransHeadCalcFields(DataSet: TDataSet);
    procedure CDSInventarioPisoBeforeOpen(DataSet: TDataSet);
    //procedure CDSDailyTotalsoldCalcFields(DataSet: TDataSet);
    function CalcTotals(SalesDate: TDateTime; EmpNumber, PayType: String; ID, NoRegister: Integer): Currency;
    function CalcTotals_Cuadre(SalesDate: TDateTime; EmpNumber, PayType: String; ID, NoRegister: Integer): Currency;
    function CalcUtilTotal(SalesDate: TDateTime; EmpNumber: String; ID, NoRegister: Integer): Currency;
    procedure CDSInventarioPisoReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure CDSClientesOldAfterInsert(DataSet: TDataSet);
    procedure CDSTransShowAfterInsert(DataSet: TDataSet);
    procedure CDSCuadrePorCajaOldCalcFields(DataSet: TDataSet);
    procedure CDSInventarioPisoCalcFields(DataSet: TDataSet);
    procedure CDSInventarioPisoAfterInsert(DataSet: TDataSet);
    procedure CDSDailyTotalsAfterInsert(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure CDSDailyTotalsBeforePost(DataSet: TDataSet);
    procedure CDSSuplidoresAfterPost(DataSet: TDataSet);
    procedure CDSPasswordsOLDAfterInsert(DataSet: TDataSet);
    procedure CDSSubDeptAfterInsert(DataSet: TDataSet);
    procedure CDSGroupCalcFields(DataSet: TDataSet);
    procedure CDSGroupAfterDelete(DataSet: TDataSet);
    procedure CDSInventarioPisoBeforePost(DataSet: TDataSet);
    procedure CDSWebCredRepAfterInsert(DataSet: TDataSet);
    procedure CDSWebCredRepAfterPost(DataSet: TDataSet);
    procedure CDSBalanceInicialAfterPost(DataSet: TDataSet);
    procedure CDSBalanceInicialAfterInsert(DataSet: TDataSet);
    procedure CDSAssembly_HeaderAfterInsert(DataSet: TDataSet);
    procedure DSAssemblyHeaderDataChange(Sender: TObject; Field: TField);
    procedure CDSAssembly_HeaderAfterPost(DataSet: TDataSet);
    procedure CDSAssembly_DetailAfterDelete(DataSet: TDataSet);
    procedure CDSPOS_RECETARIOAfterPost(DataSet: TDataSet);
    procedure CDSPlanesMedicosAfterInsert(DataSet: TDataSet);
    procedure CDSPlanesMedicosAfterPost(DataSet: TDataSet);
    procedure CDSPOS_RECETARIOAfterInsert(DataSet: TDataSet);
    procedure CDSDailyTotalsCalcFields(DataSet: TDataSet);
    procedure CDSUtilitiesAfterInsert(DataSet: TDataSet);
    procedure CDSCHKDescriptionAfterPost(DataSet: TDataSet);
    procedure CDSLogAfterPost(DataSet: TDataSet);
    procedure CDSInventarioPisoBeforeDelete(DataSet: TDataSet);
    procedure CDSClientesOldBeforeDelete(DataSet: TDataSet);
    procedure CDSDailyTotalsBeforeDelete(DataSet: TDataSet);
    procedure CDSPasswordsOLDBeforeDelete(DataSet: TDataSet);
    procedure CDSSuplidoresBeforeDelete(DataSet: TDataSet);
    procedure CDSDepartamentosBeforeDelete(DataSet: TDataSet);
    procedure CDSSubDeptBeforeDelete(DataSet: TDataSet);
    procedure CDSLogCalcFields(DataSet: TDataSet);
    procedure CDSDepartamentosAfterPost(DataSet: TDataSet);
    procedure CDSSubDeptAfterDelete(DataSet: TDataSet);
    procedure CDSAssembly_HeaderCalcFields(DataSet: TDataSet);
    procedure DSDepartamentosDataChange(Sender: TObject; Field: TField);
    procedure CDSAssembly_DetailAfterPost(DataSet: TDataSet);
    procedure CDSTransShow2AfterDelete(DataSet: TDataSet);
    procedure CDSReasonsAfterDelete(DataSet: TDataSet);
    procedure CDSIVULOTOAfterDelete(DataSet: TDataSet);
    procedure DSPInventarioPisoBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure DPTransShowBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure CDSCombo_DETAILAfterDelete(DataSet: TDataSet);
    procedure CDSComboAfterDelete(DataSet: TDataSet);
    procedure DSComboDataChange(Sender: TObject; Field: TField);
    procedure CDSCombo_DETAILBeforePost(DataSet: TDataSet);
    procedure CDSComboAfterInsert(DataSet: TDataSet);
    procedure CDSCombo_DETAILAfterInsert(DataSet: TDataSet);
    procedure CDSBotonesAfterDelete(DataSet: TDataSet);
    procedure CDSBotonesAfterInsert(DataSet: TDataSet);
    procedure CDSBotonesBeforePost(DataSet: TDataSet);
    procedure CDSPickUpAfterDelete(DataSet: TDataSet);
    procedure CDSClientesAfterDelete(DataSet: TDataSet);
    procedure CDSOTCCalcFields(DataSet: TDataSet);
    procedure cdsProductImageAfterDelete(DataSet: TDataSet);
    procedure CDSInventarioPisoAfterScroll(DataSet: TDataSet);
    procedure CDSDailyTotalsAfterDelete(DataSet: TDataSet);
    procedure cdsBarcodePrintQAfterDelete(DataSet: TDataSet);
    procedure cdsShopperAfterDelete(DataSet: TDataSet);
    procedure cdsShopperAfterScroll(DataSet: TDataSet);
    procedure cdsShopperDetailAfterDelete(DataSet: TDataSet);
    procedure cdsShopperAfterInsert(DataSet: TDataSet);
    procedure cdsSalesPromoAfterDelete(DataSet: TDataSet);
    procedure cdsSalesPromoCalcFields(DataSet: TDataSet);
    procedure cdsTabsHeaderAfterDelete(DataSet: TDataSet);
    procedure cdsTabsHeaderAfterInsert(DataSet: TDataSet);
    procedure cdsTabsHeaderAfterScroll(DataSet: TDataSet);
    procedure cdsTabsDetailAfterDelete(DataSet: TDataSet);
    procedure cdsOpenTabsCalcFields(DataSet: TDataSet);
    procedure cdsBotonesModifiersAfterDelete(DataSet: TDataSet);
    procedure CDSTransShowCalcFields(DataSet: TDataSet);
    procedure cdsMainCourseCalcFields(DataSet: TDataSet);
    procedure cdsRecipeAfterPost(DataSet: TDataSet);
    procedure cdsTime_CardBeforeDelete(DataSet: TDataSet);
    procedure CDSDepartamentosAfterScroll(DataSet: TDataSet);
    procedure cdsCarsAfterInsert(DataSet: TDataSet);
    procedure cdsCarsAfterPost(DataSet: TDataSet);
    procedure CDSClientesAfterScroll(DataSet: TDataSet);
    procedure CDSTransHeadAfterScroll(DataSet: TDataSet);
    procedure cdsOpenTabsAfterScroll(DataSet: TDataSet);
    procedure Users;
    procedure CDSPasswordsAfterScroll(DataSet: TDataSet);
    procedure CDSHeadCalcFields(DataSet: TDataSet);
    procedure cdsCUSTOMER_CLASSIFICATIONAfterDelete(DataSet: TDataSet);
    procedure CDSClientTransactionsBeforeScroll(DataSet: TDataSet);
    procedure CDSClientesBeforeScroll(DataSet: TDataSet);
    procedure CDSClientTransactionsAfterScroll(DataSet: TDataSet);
    procedure cdsInventarioPiso2AfterScroll(DataSet: TDataSet);
    procedure cdsInventarioPiso2CalcFields(DataSet: TDataSet);
    function getWC_PATIENTS(dbNamePOS, dbNameRx: String): String;
    procedure CDSPacientesCalcFields(DataSet: TDataSet);
    procedure cdsCountersAfterDelete(DataSet: TDataSet);
    procedure cdsHelpAfterDelete(DataSet: TDataSet);
    procedure ApplyExtraFilters(query: TFDQuery);
  private
    { Private declarations }
  public
    { Public declarations }
    PasswordsArray : array[0..199] of String;
    SoftwareName, Language: String;

    //StandalonePOS: Boolean;
  end;

var
  DMMidas: TDMMidas;
  ServerName: String;
  PrecioVenta, Costo: Double;
  Dept, SubDpt, PID: Integer;
implementation

uses untMain, UntCommonPOS, UntDMCentralCredit, UntEstadoCuentaCC,
  UntManualSale, UntTimeCard, UntTabs, UntDepartments, UntPasswords, UntDMWC,
  UntQueries, UntEscojaFecha, untFilters;

{$R *.dfm}

procedure TDMMidas.CDSSetupAfterDelete(DataSet: TDataSet);
begin
  if (CDSSetup.ChangeCount > 0) then CDSSetup.ApplyUpdates(-1);
end;

procedure TDMMidas.cdsShopperAfterDelete(DataSet: TDataSet);
begin
 if (cdsShopper.ChangeCount > 0) then cdsShopper.ApplyUpdates(0);
end;

procedure TDMMidas.cdsShopperAfterInsert(DataSet: TDataSet);
begin
  cdsShopperACTIVE.Value := True;
  cdsShopperSTART_DATE.asDateTime := Now;
  cdsShopperEND_DATE.asDateTime := Now;
end;

procedure TDMMidas.cdsShopperAfterScroll(DataSet: TDataSet);
begin
  if cdsShopperID.Value > 0 then
  begin
    cdsShopperDetail.Close;
    cdsShopperDetail.CommandText := 'Select * from Shopper_Detail where ID = ' + cdsShopperID.AsString;
    cdsShopperDetail.Open;
  end;
end;

procedure TDMMidas.cdsShopperDetailAfterDelete(DataSet: TDataSet);
begin
 if (cdsShopperDetail.ChangeCount > 0) then cdsShopperDetail.ApplyUpdates(0);
end;

procedure TDMMidas.CDSClientTransactionsAfterDelete(DataSet: TDataSet);
begin
  if (CDSClientTransactions.ChangeCount > 0) then CDSClientTransactions.ApplyUpdates(-1);
end;

procedure TDMMidas.CDSClientTransactionsAfterScroll(DataSet: TDataSet);
begin
  //Memo1 := FrmMain.rptClientAccts.FindObject('Memo18') as TfrxMemoView;
  //Memo1.Memo.Text := 'To pay: ' + CDSClientTransactionsBALANCE.asString;
end;

procedure TDMMidas.CDSClientTransactionsBeforeScroll(DataSet: TDataSet);
var
  memo1: TfrxMemoView;
begin
{  if assigned(FrmMain.rptClientAccts) then
  begin
    if CDSClientTransactions.Bof = true then
    begin
      Memo1 := FrmMain.rptClientAccts.FindObject('Memo6') as TfrxMemoView;
      Memo1.Memo.Text := 'Previous balance: ' + CDSClientTransactionsBALANCE.asString;
    end;
    Memo1 := FrmMain.rptClientAccts.FindObject('Memo12') as TfrxMemoView;
    Memo1.Memo.Text := 'To pay: ' + CDSClientTransactionsBALANCE.asString;
  end;      }
end;

procedure TDMMidas.CDSComboAfterDelete(DataSet: TDataSet);
begin
  if (CDSCombo.ChangeCount > 0) then CDSCombo.ApplyUpdates(-1);
end;

procedure TDMMidas.CDSComboAfterInsert(DataSet: TDataSet);
begin
  CDSComboPrice.Value := 0;
end;

procedure TDMMidas.CDSCombo_DETAILAfterDelete(DataSet: TDataSet);
begin

  if (CDSCombo_DETAIL.ChangeCount > 0) then CDSCombo_DETAIL.ApplyUpdates(-1);
  QSumComboPrice.Close;
  QSumComboPrice.SQL.Text := 'Select sum(Total) as TPrice from Combo_detail where Combo_ID = ' + CDSComboCombo_ID.asString;
  QSumComboPrice.Open;
  CDSCombo.Edit;
  CDSComboPrice.Value := QSumComboPrice.Fields[0].Value;
  CDSCombo.Post;
end;

procedure TDMMidas.CDSCombo_DETAILAfterInsert(DataSet: TDataSet);
begin
  CDSCombo_DetailPrice.Value := 0;
end;

procedure TDMMidas.CDSCombo_DETAILBeforePost(DataSet: TDataSet);
begin
  if (CDSCombo_DetailPrice.Value > 0) and (CDSCombo_DetailQuantity.Value > 0) then
    CDSCombo_DetailTotal.Value := (CDSCombo_DetailPrice.Value * CDSCombo_DetailQuantity.Value);
end;

procedure TDMMidas.cdsCountersAfterDelete(DataSet: TDataSet);
begin
  if (cdsCounters.ChangeCount > 0) then cdsCounters.ApplyUpdates(-1);
end;

procedure TDMMidas.CDSClientesOldCalcFields(DataSet: TDataSet);
begin
  if CDSClientesAPELLIDOMATERNO.Value > '' then
    CDSClientesNombreCompleto2.Value := Trim(CDSClientesAPELLIDOPATERNO.Value) + ' ' + Trim(CDSClientesAPELLIDOMATERNO.Value) +', ' +Trim(CDSClientesNOMBRE.Value)
  else
    CDSClientesNombreCompleto2.Value := Trim(CDSClientesAPELLIDOPATERNO.Value) +', ' +Trim(CDSClientesNOMBRE.Value);
  CDSClientesMailingAddDefine.Value :=
  Trim(CDSClientesDIRECCION1.Value) + ' '
  + Trim(CDSClientesDIRECCION2.Value) + ' '
  //+ Trim(CDSClientesCODIGOPOSTAL.Value) + ' '
  + Trim(CDSClientesESTADO.Value) + ' '
  + Trim(CDSClientesCODIGOPOSTAL.Value);
end;

procedure TDMMidas.SocketConnection1AfterConnect(Sender: TObject);
Var
  Registro: TRegistry;
begin
  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_LOCAL_MACHINE;
  Registro.OpenKey('\SOFTWARE\WOW6432Node\FarmaTec2000', True);
  if ServerName <> Registro.ReadString('ServerName') then
  try
    Registro.WriteString('ServerName', ServerName);
  except;
  end;
  Registro.Free;
end;

procedure TDMMidas.CDSPrintListCalcFields(DataSet: TDataSet);
Var
  Save: Currency;
begin
  If CDSPrintListRegPrice.Value <> CDSPrintListDispPrice.Value then
  begin
    CDSPrintListDispRegPrice.Value := 'REGULAR: '+ CDSPrintListRegPrice.Value;
    Save := StrToCurr(Copy(CDSPrintListRegPrice.Value,2,Length(CDSPrintListRegPrice.Value))) -
            StrToCurr(Copy(CDSPrintListDispPrice.Value,2,Length(CDSPrintListDispPrice.Value)));
    If Save > 0.01 then
      CDSPrintListDispSave.Value := Format(' AHORRA: %m',[Save]);
  end;
  If CDSPrintListEndDate.asString > '12/30/1899' then
  begin
    CDSPrintListDispDuration.Value := 'VALIDO DE '+ CDSPrintListStartDate.asString +
                                      ' A ' + CDSPrintListEndDate.asString;
  end
  else
  begin
    CDSPrintListDispDuration.Value := 'IMPRESO EN: ' + CDSPrintListStartDate.asString;
  end;
end;

procedure TDMMidas.cdsProductImageAfterDelete(DataSet: TDataSet);
begin
  cdsProductImage.ApplyUpdates(0);
end;

procedure TDMMidas.CDSTransShowAfterPost(DataSet: TDataSet);
begin
  If CDSTransShow.ApplyUpdates(-1) = 0 then
  begin
    If CDSTransShow.Active then
    begin
      CDSTransShow.Refresh;
      CDSTransShow.First;
    end;
    If CDSTransHead.Active then
    begin
      CDSTransHead.Refresh;
    end;
  end;
end;

procedure TDMMidas.CDSTransShowCalcFields(DataSet: TDataSet);
begin
  CDSTransShowPRODDESC_DEFINE.Value := Trim(Trim(CDSTransShowPRODDESCRIPTION.Value) + ' ' + Trim(CDSTransShowTERMINO.Value));
  if (CDSTransShowMAIN_COURSE.Value = True) then
  begin
    CDSTransShowMAIN_COURSE_DEFINE.Value := '>';
  end;
end;

procedure TDMMidas.CDSTransHeadAfterScroll(DataSet: TDataSet);
begin
  CDSTransShow.Close;
  CDSTransShow.Params[0].Value := IntToStr(CDSTransHeadTRANSACTIONNUMBER.Value);
  CDSTransShow.Open;
end;

procedure TDMMidas.CDSTransHeadCalcFields(DataSet: TDataSet);
begin
  CDSTransHeadRecallNoTrans.Value := 'HK' + IntToStr(CDSTransHeadTRANSACTIONNUMBER.Value);

  CDSTransHeadBALANCE.asFloat := (CDSTransHeadTOTAL.asFloat + CDSTransHeadTIP.asFloat)
                               - (CDSTransHeadPAYAMOUNT1.asFloat
                               - CDSTransHeadPAYAMOUNT2.asFloat
                               - CDSTransHeadPAYAMOUNT3.asFloat
                               - CDSTransHeadPAYAMOUNT4.asFloat);
                               //- CDSTransHeadTIP.AsFloat;

  //CDSTransHeadSUB_TOTAL.Value := CDSTransHeadTOTAL.asFloat - CDSTransHeadTOTAL_TAX.asFloat;
end;

procedure TDMMidas.CDSInventarioPisoBeforeOpen(DataSet: TDataSet);
begin
  CDSDepartamentos.Active := True;
  CDSSuplidores.Active := True;
end;

procedure TDMMidas.CDSDailyTotalsCalcFields(DataSet: TDataSet);
begin
  CDSDailyTotalsDIFF.Value := CDSDailyTotalsTOTAL_COUNT.asFloat
                            - CDSDailyTotalsTOTAL_READ.asFloat;
  If CDSDailyTotalsDIFF.Value >= 0.01 then
    CDSDailyTotalsOVRSHORT.Value := 'OVER'
  else
    If CDSDailyTotalsDIFF.Value <= -0.01 then
      CDSDailyTotalsOVRSHORT.Value := 'SHORT'
    else
      CDSDailyTotalsOVRSHORT.Value := '';
  if CDSDailyTotalsSTATUS_CUADRE.Value = 'O' then
    CDSDailyTotalsSTATUS_CUADRE_DEFINED.Value := 'OPEN'
  ELSE
    CDSDailyTotalsSTATUS_CUADRE_DEFINED.Value := 'CLOSED';
  if CDSDailyTotalsSTATUS_CAJA.Value = 'O' then
    CDSDailyTotalsSTATUS_CAJA_DEFINED.Value := 'OPEN'
  ELSE
    CDSDailyTotalsSTATUS_CAJA_DEFINED.Value := 'CLOSED';

end;


function TDMMidas.CalcTotals_Cuadre(SalesDate: TDateTime; EmpNumber, PayType: String; ID, NoRegister: Integer): Currency;
Var
  Day, Month, Year: Word;
begin
  DecodeDate(SalesDate,Year,Month,Day);
  Result := 0;
  With CDSTrHeadAdHoc2 do
  begin
    if (PayType <> 'TMUNICIPAL') and (PayType <> 'TESTATAL') and (PayType <> 'TSERVICIO') and (PayType <> 'REF') then
    begin
      begin
        if PayType = 'POUT' then
        begin
          Active := False;
          CommandText := '';
          if NoRegister = 0 then
            CommandText := 'Select Sum(PayAmount1) as STotal From TransactionHeader Where '
                       + 'TRANSACTIONDATE = ' + CHR(39) + DateToStr(SalesDate) + chr(39) +
                       ' AND (Voided = 0) AND (PaymentType1 = ''' + PayType + #39 + ')'
          else
            CommandText := 'Select Sum(PayAmount1) as STotal From TransactionHeader Where '
                       + '(ID = ' + IntToStr(ID) + ') AND '
                       + '(EmployNumber = ''' + EmpNumber + ''') AND (Voided = 0) AND '
                       + '(PaymentType1 = ''' + PayType + #39 + ')'
                       + ' and (Register = ' + IntToStr(NoRegister) + ')';
          Active := True;
        end
        else
        begin
          Active := False;
          CommandText := '';
          if NoRegister = 0 then
            CommandText := 'Select Sum(PayAmount1) as STotal From TransactionHeader Where '
                       + 'TRANSACTIONDATE = ' + CHR(39) + DateToStr(SalesDate) + chr(39)
                       + ' AND (Voided = 0) AND '
                       + '(PaymentType1 = ''' + PayType + #39 + ')'
                       + ' and PaymentType1 <> ''' + 'POUT' + CHR(39)
          else
            CommandText := 'Select Sum(PayAmount1) as STotal From TransactionHeader Where '
                       + '(ID = ' + IntToStr(ID) + ') AND '
                       + '(EmployNumber = ''' + EmpNumber + ''') AND (Voided = 0) AND '
                       + '(PaymentType1 = ''' + PayType + #39 + ')'
                       + ' and PaymentType1 <> ''' + 'POUT' + CHR(39)
                       + ' and (Register = ' + IntToStr(NoRegister) + ')';
          Active := True;
        end;
      end;

      If Not FieldByName('STotal').IsNull then
        Result := FieldByName('STotal').asCurrency;
      Active := False;
      if NoRegister = 0 then
        CommandText := 'Select Sum(PayAmount2) as STotal From TransactionHeader Where '
                     + 'TRANSACTIONDATE = ' + CHR(39) + DateToStr(SalesDate) + chr(39)
                     +  ' AND (Voided = 0) AND '
                     +  '(PaymentType2 = ''' + PayType  + #39 + ')'
      else
        CommandText := 'Select Sum(PayAmount2) as STotal From TransactionHeader Where '
                   + '(ID = ' + IntToStr(ID) + ') AND '
                   + '(EmployNumber = ''' + EmpNumber + ''') AND (Voided = 0) AND '
                   + '(PaymentType2 = ''' + PayType  + #39 + ' and Register = ' + IntToStr(NoRegister) + ')';
      Active := True;
      If Not FieldByName('STotal').IsNull then
        Result := Result + FieldByName('STotal').asCurrency;
      Active := False;
      If PayType = 'CASH' then
      begin
        if NoRegister = 0 then
          CommandText := 'Select Sum(Change) as STotal From TransactionHeader Where '
                       + 'TRANSACTIONDATE = ' + CHR(39) + DateToStr(SalesDate) + chr(39)
                       + ' AND (Voided = 0) and (PAYMENTTYPE1 <> ' + #39 + 'PICK' + #39 + ')'
        else
          CommandText := 'Select Sum(Change) as STotal From TransactionHeader Where '
                       + '(ID = ' + IntToStr(ID) + ') AND '
                       + '(Voided = 0) AND (Register = ' + IntToStr(NoRegister) + ' and PAYMENTTYPE1 <> ' + #39 + 'PICK' + #39 + ')';
          Active := True;
          If Not FieldByName('STotal').IsNull then
            Result := Result - FieldByName('STotal').asCurrency;
          Active := False;
      end;
    end
    else
    begin
      Active := False;
      CommandText := '';
      if PayType = 'TMUNICIPAL' then
      begin
        if NoRegister = 0 then
          CommandText := 'Select Sum(TAX) as STotal From TransactionHeader Where '
                     + 'TRANSACTIONDATE = ' + CHR(39) + DateToStr(SalesDate) + chr(39)
                     + ' AND (Voided = 0) '
        else
          CommandText := 'Select Sum(TAX) as STotal From TransactionHeader Where '
                   + '(ID = ' + IntToStr(ID) + ') AND '
                   + '(EmployNumber = ''' + EmpNumber + ''') AND (Voided = 0) AND '
                   + ' (Register = ' + IntToStr(NoRegister) + ')';
      end;
      if PayType = 'TESTATAL' then
      begin
        if NoRegister = 0 then
          CommandText := 'Select Sum(TAX_ESTATAL) as STotal From TransactionHeader Where '
                       + 'TRANSACTIONDATE = ' + CHR(39) + DateToStr(SalesDate) + chr(39)
                       + ' AND (Voided = 0)'
        else
          CommandText := 'Select Sum(TAX_ESTATAL) as STotal From TransactionHeader Where '
                     + '(ID = ' + IntToStr(ID) + ') AND '
                     + '(EmployNumber = ''' + EmpNumber + ''') AND (Voided = 0) AND '
                     + '(Register = ' + IntToStr(NoRegister) + ')';
      end;
      if PayType = 'TSERVICIO' then
      begin
        if NoRegister = 0 then
          CommandText := 'Select Sum(TAX_SERVICIO) as STotal From TransactionHeader Where '
                       + 'TRANSACTIONDATE = ' + CHR(39) + DateToStr(SalesDate) + chr(39)
                       + ' AND (Voided = 0)'
        else
          CommandText := 'Select Sum(TAX_SERVICIO) as STotal From TransactionHeader Where '
                     + '(ID = ' + IntToStr(ID) + ') AND '
                     + '(EmployNumber = ''' + EmpNumber + ''') AND (Voided = 0) AND '
                     + '(Register = ' + IntToStr(NoRegister) + ')';
      end;

      if PayType = 'REF' then
      begin
        if NoRegister = 0 then
          CommandText := 'Select Sum(PayAmount1) as STotal From TransactionHeader Where '
                       + 'TRANSACTIONDATE = ' + CHR(39) + DateToStr(SalesDate) + chr(39)
                       + ' AND PayAmount1 < 0 '
                       + ' AND (Voided = 0)'
        else
          CommandText := 'Select Sum(PayAmount1) as STotal From TransactionHeader Where '
                     + '(ID = ' + IntToStr(ID) + ') AND '
                     + '(EmployNumber = ''' + EmpNumber + ''') AND (Voided = 0) AND '
                     + ' PayAmount1 < 0 and '
                     + '(Register = ' + IntToStr(NoRegister) + ')';
      end;

      Active := True;
      If Not FieldByName('STotal').IsNull then
        Result := FieldByName('STotal').asCurrency
      else
        Result := 0;
    end;
  end;
end;

procedure TDMMidas.ApplyExtraFilters(query: TFDQuery);
begin
  with FrmFilters do
  begin
    if cbDate.Checked = True then
    begin
      query.SQL.text :=
      query.SQL.Text +
      ' AND DATEOFTRANS between ' + chr(39) + DateToStr(Desde.Date) + Chr(39) + ' and ' + chr(39) + DateToStr(Hasta.Date) + chr(39);
    end;
  end;
end;

function TDMMidas.CalcTotals(SalesDate: TDateTime; EmpNumber, PayType: String; ID, NoRegister: Integer): Currency;
Var
  Day, Month, Year: Word;
begin
  DecodeDate(SalesDate,Year,Month,Day);
  Result := 0;
  With CDSTrHeadAdHoc2 do
  begin
    if (PayType <> 'TMUNICIPAL') and (PayType <> 'TESTATAL') then
    begin
      Active := False;
      CommandText := '';
      CommandText := 'Select Sum(PayAmount1) as STotal From TransactionHeader_TEMP Where '
                   + '(ID = ' + IntToStr(ID) + ') AND '
                   + '(EmployNumber = ''' + EmpNumber + ''') AND (Voided = 0) AND '
                   + '(PaymentType1 = ''' + PayType + #39 + ') and (Register = ' + IntToStr(NoRegister) + ')';
      Active := True;

      If Not FieldByName('STotal').IsNull then
        Result := FieldByName('STotal').asCurrency;
      Active := False;
      CommandText := 'Select Sum(PayAmount2) as STotal From TransactionHeader_TEMP Where '
                   + '(ID = ' + IntToStr(ID) + ') AND '
                   + '(EmployNumber = ''' + EmpNumber + ''') AND (Voided = 0) AND '
                   + '(PaymentType2 = ''' + PayType  + #39 + ' and Register = ' + IntToStr(NoRegister) + ')';
      Active := True;
      If Not FieldByName('STotal').IsNull then
        Result := Result + FieldByName('STotal').asCurrency;
      Active := False;
      If PayType = 'CASH' then
      begin
        CommandText := 'Select Sum(Change) as STotal From TransactionHeader_TEMP Where '
                     + '(ID = ' + IntToStr(ID) + ') AND '
                     + '(Voided = 0) AND (Register = ' + IntToStr(NoRegister) + ' and PAYMENTTYPE1 <> ' + #39 + 'PICK' + #39 + ')';
        Active := True;
        If Not FieldByName('STotal').IsNull then
          Result := Result - FieldByName('STotal').asCurrency;
        Active := False;
      end;
    end
    else
    begin
      Active := False;
      CommandText := '';
      if PayType = 'TMUNICIPAL' then
      CommandText := 'Select Sum(TAX) as STotal From TransactionHeader_TEMP Where '
                   + '(ID = ' + IntToStr(ID) + ') AND '
                   + '(EmployNumber = ''' + EmpNumber + ''') AND (Voided = 0) AND '
                   + ' (Register = ' + IntToStr(NoRegister) + ')';
      if PayType = 'TESTATAL' then
      CommandText := 'Select Sum(TAX_ESTATAL) as STotal From TransactionHeader_TEMP Where '
                   + '(ID = ' + IntToStr(ID) + ') AND '
                   + '(EmployNumber = ''' + EmpNumber + ''') AND (Voided = 0) AND '
                   + '(Register = ' + IntToStr(NoRegister) + ')';

      if PayType = 'TSERVICIO' then
      CommandText := 'Select Sum(TAX_SERVICIO) as STotal From TransactionHeader_TEMP Where '
                   + '(ID = ' + IntToStr(ID) + ') AND '
                   + '(EmployNumber = ''' + EmpNumber + ''') AND (Voided = 0) AND '
                   + '(Register = ' + IntToStr(NoRegister) + ')';

      Active := True;
      If Not FieldByName('STotal').IsNull then
        Result := FieldByName('STotal').asCurrency
      else
        Result := 0;
    end;
  end;
end;

function TDMMidas.CalcUtilTotal(SalesDate: TDateTime; EmpNumber: String; ID, NoRegister: Integer): Currency;
Var
  Day, Month, Year: Word;
begin
  DecodeDate(SalesDate,Year,Month,Day);
  Result := 0;
  With CDSTrHeadAdHoc2 do
  begin
    Active := False;
    CommandText := 'Select sum(transactiondetail.total) as STotal From transactiondetail inner join transactionheader '
                 + 'on transactiondetail.transactionnumber = transactionheader.transactionnumber '
                 + 'Where transactiondetail.upc like ''99999999995%'''
                 //+ 'AND (transactionheader.transactiondate = ''' + Format('%.2d/%.2d/%.4d',[Month,Day,Year]) +''') '
                 + 'AND (transactionheader.EmployNumber = ''' + EmpNumber + ''') '
                 + 'AND (transactionheader.Voided = 0) '
                 + 'AND (transactionheader.ID = ' + IntToStr(ID)
                 + 'AND transactionheader.Register = ' + IntToStr(NoRegister) + ')';

    Active := True;

    If Not FieldByName('STotal').IsNull then
      Result := FieldByName('STotal').asCurrency;
    Active := False;
  end;
end;

{Var
  Day, Month, Year: Word;
begin
  DecodeDate(SalesDate,Year,Month,Day);
  Result := 0;
  With CDSTrHeadAdHoc2 do
  begin
    Active := False;

{    CommandText := 'Select sum(transactiondetail.total) as STotal From transactiondetail inner join transactionheader_TEMP '
                 + 'on transactiondetail.transactionnumber = transactionheader_TEMP.transactionnumber '
                 + 'Where transactiondetail.upc like ''99999999995%'''
                 + 'AND (transactionheader_TEMP.transactiondate = ''' + Format('%.2d/%.2d/%.4d',[Month,Day,Year]) +''') '
                 + 'AND (transactionheader_TEMP.EmployNumber = ''' + EmpNumber + ''') '
                 + 'AND (transactionheader_TEMP.Voided = 0) '
                 + 'AND (transactionheader_TEMP.ID = ' + IntToStr(ID)
                 + 'AND transactionheader_TEMP.Register = ' + IntToStr(NoRegister) + ')';
    CommandText := 'Select sum(transactiondetail.total) as STotal From transactiondetail inner join transactionheader '
                 + 'on transactiondetail.transactionnumber = transactionheader.transactionnumber '
                 + 'Where transactiondetail.upc like ''99999999995%'''
                 + 'AND (transactionheader.transactiondate = ''' + Format('%.2d/%.2d/%.4d',[Month,Day,Year]) +''') '
                 + 'AND (transactionheader.EmployNumber = ''' + EmpNumber + ''') '
                 + 'AND (transactionheader.Voided = 0) '
                 + 'AND (transactionheader.ID = ' + IntToStr(ID)
                 + 'AND transactionheader.Register = ' + IntToStr(NoRegister) + ')';


    Active := True;

    If Not FieldByName('STotal').IsNull then
      Result := FieldByName('STotal').asCurrency;
    Active := False;
  end;
end;
}

procedure TDMMidas.CDSInventarioPisoReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ShowMessage(E.Message);
 // Action := raCancel;
end;

procedure TDMMidas.CDSIVULOTOAfterDelete(DataSet: TDataSet);
begin
 // if (CDSIVULOTO.ChangeCount > 0) then CDSIVULOTO.ApplyUpdates(-1);
end;

procedure TDMMidas.CDSClientesAfterDelete(DataSet: TDataSet);
begin
  CDSClientes.ApplyUpdates(0);
end;

procedure TDMMidas.CDSClientesAfterScroll(DataSet: TDataSet);
begin
  if Assigned(FrmFilters) then
  begin
    Memo1 := FrmMain.rptClientAccts.FindObject('Memo12') as TfrxMemoView;
    Memo1.Memo.Text := 'To pay: ' + Format('%m', [CDSClientTransactionsBALANCE.asFloat]);
    CommonPOS.SetConnection(QClientTransactionsFD);
    QClientTransactionsFD.Close;
    CDSClientTransactions.Close;
    QClientTransactionsFD.SQL.Text := 'Select * from clienttransactions where clientno = ' + chr(39) + CDSClientesNUMEROCLIENTE.asString + chr(39);
    ApplyExtraFilters(QClientTransactionsFD);
    CDSClientTransactions.Open;
    CommonPOS.SetConnection(FDQuery1);
    FDQuery1.close;
    FDQuery1.SQL.Text := 'Select Max(ID) as idtrans from clienttransactions where clientno = ' + chr(39) + CDSClientesNUMEROCLIENTE.asString + chr(39) + ' and cast(DATEOFTRANS as Date) < ' + chr(39) + DateToStr(FrmFilters.Desde.Date) + chr(39);
    FDQuery1.Open;
    if FDQuery1.FieldByName('idtrans').IsNull then
    begin
      Memo1 := FrmMain.rptClientAccts.FindObject('Memo17') as TfrxMemoView;
      Memo1.Memo.Text := 'Previous Balance: $0.00';
    end
    else
    begin
      CommonPOS.SetConnection(FDQuery2);
      FDQuery2.Close;
      FDQuery2.SQL.Text := 'Select balance from clienttransactions where id = ' + chr(39) + FDQuery1.FieldByName('idtrans').asString + chr(39);
      FDQuery2.Open;
      Memo1 := FrmMain.rptClientAccts.FindObject('Memo17') as TfrxMemoView;
      Memo1.Memo.Text := 'Previous balance: ' +  Format('%m', [FDQuery2.FieldByName('balance').asFloat]);
    end;
  end;

  {if CDSSetupAUTOMOVIL_APP.Value = True then
  begin
    cdsCars.Close;
    cdsCars.CommandText := 'Select * from Car where NumeroCliente = ' + IntToStr(CDSClientesNUMEROCLIENTE.Value);
    cdsCars.Open;
  end;}

end;

procedure TDMMidas.CDSClientesBeforeScroll(DataSet: TDataSet);
begin
{  CDSClientTransactions.Close;
  CDSClientTransactions.CommandText := 'Select * from clienttransactions where clientno = ' + chr(39) + CDSClientesNUMEROCLIENTE.asString + chr(39);
  CDSClientTransactions.Open;
  Memo1 := FrmMain.rptClientAccts.FindObject('Memo12') as TfrxMemoView;
  Memo1.Memo.Text := 'To pay: ' + CDSClientesDEUDA.asString; }
  Memo1 := FrmMain.rptClientAccts.FindObject('Memo12') as TfrxMemoView;
  Memo1.Memo.Text := 'To pay: ' + Format('%m', [CDSClientTransactionsBALANCE.asFloat]);
end;

procedure TDMMidas.CDSClientesOldAfterInsert(DataSet: TDataSet);
begin
  CDSClientesDECEASED.Value := False;
  CDSClientesALLERGY.Value := false;
  CDSClientesOVERRIDE_SYSTEM_DEFAULT_PRICE.Value := false;
  CDSClientesFACILITY_ID.Value := 0;
  CDSClientesAUSPICIO.Value := 0;
  CDSClientesSOCIO.Value := '';
  CDSClientesDEUDA_EXTENDIDA.Value := 'T';
end;

procedure TDMMidas.CDSTransShowAfterInsert(DataSet: TDataSet);
begin
  CDSTransShowOPENED.Value := 'N';
  CDSTransShowFECHAVENTA.asString := DateToStr(Date);
  CDSTransShowQTY.Value := 0;
  CDSTransShowTOTAL.AsFloat := 0;
  CDSTransShowVOIDED.Value := 0;
  CDSTransShowSUBDETAIL.Value := '';
  CDSTransShowREGTOTAL.asFloat := 0;
  CDSTransShowPRICE.AsFloat := 0;
  CDSTransShowREGPRICE.asFloat := 0;
  CDSTransShowMODIFIED.Value := 0;
  CDSTransShowDISCOUNT.asFloat := 0;
  CDSTransShowCOSTO.asFloat := 0;
  CDSTransShowSUPLIDOR.Value := 0;
  CDSTransShowUPC.Value := '';
  CDSTransShowPRODDESCRIPTION.Value := '';
  CDSTransShowPRODDEPARTMENT.Value := '';
  CDSTransShowFOOD.Value := '';
end;

procedure TDMMidas.CDSCuadrePorCajaOldCalcFields(DataSet: TDataSet);
begin
//  CDSCuadrePorCajaTotalCaja.Value := (CDSCuadrePorCajaTCASH.Value + CDSCuadrePorCajaTCHECK.Value + CDSCuadrePorCajaTATH.Value + CDSCuadrePorCajaTCCARD.Value + CDSCuadrePorCajaTCCARD.Value + CDSCuadrePorCajaTCREDITO.Value) - CDSCuadrePorCajaTPAIDOUT.Value;
end;

procedure TDMMidas.cdsCUSTOMER_CLASSIFICATIONAfterDelete(DataSet: TDataSet);
begin
  if (cdsCUSTOMER_CLASSIFICATION.ChangeCount > 0) then cdsCUSTOMER_CLASSIFICATION.ApplyUpdates(-1);
end;

procedure TDMMidas.CDSInventarioPisoCalcFields(DataSet: TDataSet);
begin
  if (CDSInventarioPisoTAXABLE_ESTATAL.Value = '1') or (CDSInventarioPisoTAXABLE_ESTATAL.Value = 'T') then
  Begin
    CDSInventarioPisoStateTaxDefined.Value := 'True';
  END;

  if (CDSInventarioPisoTaxable_ESTATAL.Value = '0') or (CDSInventarioPisoTAXABLE_ESTATAL.Value = 'F') then
  begin
    CDSInventarioPisoStateTaxDefined.Value := 'False'
  end;

  if (CDSInventarioPisoTAXABLE.Value = '1') or (CDSInventarioPisoTAXABLE.Value = 'T') then
  BEGIN
    CDSInventarioPisoTAX_MUN_DEFINED.Value := 'True'
  END;

  if (CDSInventarioPisoTAXABLE.Value = '0') or (CDSInventarioPisoTAXABLE.Value = 'F') then
  BEGIN
    CDSInventarioPisoTAX_MUN_DEFINED.Value := 'False'
  END;

  if (CDSInventarioPisoFOODITEM.Value = 0) then
  begin
    CDSInventarioPisoFOOD_ITEM_DEFINED.Value := 'False'
  end;

  if (CDSInventarioPisoFOODITEM.Value = 1) then
  begin
    CDSInventarioPisoFOOD_ITEM_DEFINED.Value := 'True'
  end;

  if CDSInventarioPisoULTIMAVENTA.asString > '' then
  begin
    if (StrToDate(CDSInventarioPisoULTIMAVENTA.asString) < Date - 3) or (StrToDate(CDSInventarioPisoULTIMAVENTA.asString) <= Date - 29) then CDSInventarioPisoMOVIMIENTO.Value := 'W';
    if StrToDate(CDSInventarioPisoULTIMAVENTA.asString) < Date - 30 then CDSInventarioPisoMOVIMIENTO.Value := 'M';
    if (StrToDate(CDSInventarioPisoULTIMAVENTA.asString) >= Date - 3) then CDSInventarioPisoMOVIMIENTO.Value := 'D'; // and (StrToDate(CDSInventarioPisoULTIMAVENTA.asString) <= Date - 3)
  end;
end;

procedure TDMMidas.CDSInventarioPisoAfterInsert(DataSet: TDataSet);
begin
  {CDSNoCliente.Close;
  CDSNoCliente.CommandText := 'SELECT GEN_ID(GEN_PRODUCTNOINVPISO, 1)FROM RDB$DATABASE';
  CDSNoCliente.Open;
  CDSInventarioPisoPRODUCTNO.Value := CDSNoClienteGEN_ID.Value;}
  //CDSInventarioPisoGROUP_PRODUCTNO.Value := CDSNoClienteGEN_ID.Value;
  CDSInventarioPisoNONEBC.Value := 0;
  CDSInventarioPisoFOODITEM.Value := 0;
  CDSInventarioPisoRECETARIO.Value := 'P';
  CDSInventarioPisoCOSTO.Value := 0;
  CDSInventarioPisoPRECIO_CAJA.Value := 0;
  CDSInventarioPisoPRECIO.Value := 0;
  CDSInventarioPisoRBP.Value := 0;
  CDSInventarioPisoCMAXINVENTARIO.Value := 0;
  CDSInventarioPisoCMININVENTARIO.Value := 0;
  CDSInventarioPisoQTYINVENTARIO.asFloat := 0;
  CDSInventarioPisoQTY_CAJA.Value := 0;
end;

procedure TDMMidas.CDSInventarioPisoAfterScroll(DataSet: TDataSet);
begin
  {with DMMidas do
  begin
    cdsProductImage.Close;
    cdsProductImage.CommandText := 'Select * from Product_Image where PRODUCT_ID = ' + CDSInventarioPisoPRODUCTNO.AsString;
    cdsProductImage.Open;
  end; }
end;

procedure TDMMidas.CDSDailyTotalsAfterDelete(DataSet: TDataSet);
begin
  if (CDSDailyTotals.ChangeCount > 0) then CDSDailyTotals.ApplyUpdates(-1);
end;

procedure TDMMidas.CDSDailyTotalsAfterInsert(DataSet: TDataSet);
begin
  {CDSNoCliente.Close;
  CDSNoCliente.CommandText := 'SELECT GEN_ID(GEN_NOID, 1)FROM RDB$DATABASE';
  CDSNoCliente.Open;
  CDSDailyTotalsID.Value := CDSNoClienteGEN_ID.Value;}
  CDSDailyTotalsCASHCOUNT.Value := 0;
  CDSDailyTotalsCASHREAD.Value := 0;
  CDSDailyTotalsCHECKCOUNT.Value := 0;
  CDSDailyTotalsCHECKREAD.Value := 0;
  CDSDailyTotalsCCARDCOUNT.Value := 0;
  CDSDailyTotalsCCARDREAD.Value := 0;
  CDSDailyTotalsATHCOUNT.Value := 0;
  CDSDailyTotalsATHREAD.Value := 0;
  CDSDailyTotalsWICCOUNT.Value := 0;
  CDSDailyTotalsWICREAD.Value := 0;
  CDSDailyTotalsPOCOUNT.Value := 0;
  CDSDailyTotalsPOREAD.Value := 0;
  CDSDailyTotalsOTHERCOUNT.Value := 0;
  CDSDailyTotalsOTHERREAD.Value := 0;
  CDSDailyTotalsSTARTBANK.Value := 0;
  CDSDailyTotalsPAYOUTCOUNT.Value := 0;
  CDSDailyTotalsPAYOUTREAD.Value := 0;
  CDSDailyTotalsFAMREAD.Value := 0;
  CDSDailyTotalsFAMCOUNT.Value := 0;
  CDSDailyTotalsCRPAYREAD.Value := 0;
  CDSDailyTotalsCRPAYCOUNT.Value := 0;
  CDSDailyTotalsWICPAYCOUNT.Value := 0;
  CDSDailyTotalsWICPAYREAD.Value := 0;
  CDSDailyTotalsWICCRCOUNT.Value := 0;
  CDSDailyTotalsWICCRREAD.Value := 0;
  CDSDailyTotalsLOTOREAD.Value := 0;
  CDSDailyTotalsLOTOCOUNT.Value := 0;
  CDSDailyTotalsPAYPALREAD.Value := 0;
  CDSDailyTotalsPAYPALCOUNT.Value := 0;
  {CDSDailyTotalsCOUNTTOTAL.asFloat := 0;
  CDSDailyTotalsREADTOTAL.asFloat := 0;
  CDSDailyTotalsDIFF.asFloat := 0;
  CDSDailyTotalsATHDIFF.asFloat := 0;
  CDSDailyTotalsCASHDIFF.asFloat := 0;
  CDSDailyTotalsCHECKDIFF.asFloat := 0;
  CDSDailyTotalsCCARDDIFF.asFloat := 0;
  CDSDailyTotalsPODIFF.asFloat := 0;
  CDSDailyTotalsPAYOUTDIFF.asFloat := 0; }
  CDSDailyTotalsUTILITYREAD.asFloat := 0;
end;

procedure TDMMidas.DataModuleCreate(Sender: TObject);
Var
  Registro: TRegistry;
  SQLStr, ServerTF: String;
  Development: Boolean;
  i: Integer;
  Ini: TIniFile;
begin
  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_LOCAL_MACHINE;
  Registro.OpenKey('\SOFTWARE\WOW6432Node\FarmaTec2000', TRUE);
  CommonPOS.StandalonePOS := Registro.ReadBool('StandalonePOS');
  Ini := TIniFile.Create('C:\Wescom_Decimal\IniFile\farmatec.ini');
  try
    CommonPOS.ServerNameRx := Ini.ReadString('Farmatec', 'Server', '<None>');
    CommonPOS.DataBaseNameRx := Ini.ReadString('Farmatec', 'DataBaseName', '<None>');
    CommonPOS.ServerNamePOS := Ini.ReadString('Farmatec', 'ServerPOS', '<None>');
    CommonPOS.DataBaseNamePOS := Ini.ReadString('Farmatec', 'databasenamePOS', '<None>');
  finally
    Ini.Free;
  end;
  if Trim(CommonPOS.DataBaseNameRx) = '<None>' then
  begin
    try
      begin
        CommonPOS.ServerNameRx := Registro.ReadString('ServerNameMSSQL');
        CommonPOS.DataBaseNameRx := Registro.ReadString('DataBaseName');
        CommonPOS.ServerNamePOS := Registro.ReadString('ServerNamePOS');
        CommonPOS.DataBaseNamePOS := Registro.ReadString('DataBaseNamePOS');
      end;
    except
    end;
  end;
  if CommonPOS.StandalonePOS = true then
  begin
    With FDConnection1.Params do
    begin
      Values['Server'] := CommonPOS.ServerNamePOS;
      Values['Database'] := Trim(CommonPOS.DataBaseNamePOS);
      Values['User_Name'] := 'dbo';
      Values['password'] := 'agabriel';
      FDConnection1.Connected := TRUE;
    end;
    With FDConnection2.Params do
    begin
      Values['Server'] := CommonPOS.ServerNameRx;
      Values['Database'] := Trim(CommonPOS.DataBaseNameRx);
      Values['User_Name'] := 'dbo';
      Values['password'] := 'agabriel';
      FDConnection2.Connected := TRUE;
    end;
    With FDConnection3.Params do
    begin
      Values['Server'] := CommonPOS.ServerNamePOS;
      Values['Database'] := 'InventoryIQ';
      Values['User_Name'] := 'dbo';
      Values['password'] := 'agabriel';
      FDConnection3.Connected := TRUE;
    end;
    QInventarioPisoFD.Connection := FDConnection1;
  end
  else
  begin
    CommonPOS.DataBaseNameRx := CommonPOS.DataBaseNamePOS;
    CommonPOS.ServerNameRx := CommonPOS.ServerNamePOS;
    With FDConnection1.Params do
    begin
      Values['Server'] := CommonPOS.ServerNameRx;
      Values['Database'] := Trim(CommonPOS.DataBaseNameRx);
      Values['User_Name'] := 'dbo';
      Values['password'] := 'agabriel';
      FDConnection1.Connected := TRUE;
      CommonPOS.DataBaseNamePOS := CommonPOS.DataBaseNameRx;
    end;
   { With FDConnection3.Params do
    begin
      Values['Server'] := ServerNameRx;
      Values['Database'] := 'InventoryIQ';
      Values['User_Name'] := 'dbo';
      Values['password'] := 'agabriel';
      FDConnection3.Connected := TRUE;
    end; }
    QInventarioPisoFD.Connection := FDConnection1;
    QOrderDetailHistoryFD.Connection := FDConnection1;
    QSuplidoresFD.Connection := FDConnection1;
  end;

  Language := Registro.ReadString('Language');  CDSPasswords.Active := True;
  CDSSetup.Active := True;

  if CDSSetupVENDOR.Value = 'WesCom, Inc.' then
    SoftwareName := 'SalesTech'
  else
    SoftwareName := 'Wescosoft POS System';
  CommonPOS.settleOnClosePos := CDSSetupSETTLEMENT_AT_LOGOUT.Value;
  CommonPOS.ServerNameSalesTech := Registro.ReadString('ServerNameSalesTech');
  CommonPOS.SelectSalesTechMobile(CommonPOS.ServerNameSalesTech);
  Registro.Free;
  Users;
end;





procedure TDMMidas.DPTransShowBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  //SQLConnection1.CloseDataSets;
end;

procedure TDMMidas.CDSDailyTotalsBeforePost(DataSet: TDataSet);
begin
  //CDSDailyTotalsSALESTIME.asDateTime := Now;
end;

procedure TDMMidas.CDSSuplidoresAfterPost(DataSet: TDataSet);
begin
  CDSSuplidores.ApplyUpdates(0);
end;

procedure TDMMidas.CDSPacientesCalcFields(DataSet: TDataSet);
begin
  if CDSPacientesAPELLIDOMATERNO.Value > '' then
    CDSPacientesNombreCompleto.Value := Trim(CDSPacientesAPELLIDOPATERNO.Value) + ' ' + Trim(CDSPacientesAPELLIDOMATERNO.Value) +', ' + Trim(CDSPacientesNOMBRE.Value)
  else
    CDSPacientesNombreCompleto.Value := Trim(CDSPacientesAPELLIDOPATERNO.Value) +', ' + Trim(CDSPacientesNOMBRE.Value);

  CDSPacientesFullAddress.Value := Trim(CDSPacientesDIRECCION1.Value) + ' ' + Trim(CDSPacientesDIRECCION2.Value) + ' ' +
   ' ' + Trim(CDSPacientesCODIGOPOSTAL.Value) + ' '+ Trim(CDSPacientesESTADO.Value);
 if CDSPacientesSEXO.Value = 1 then CDSPacientesGender.Value := 'Male' else CDSPacientesGender.Value := 'Female';
end;

procedure TDMMidas.CDSPasswordsAfterScroll(DataSet: TDataSet);
begin
  if Assigned(FrmPasswords) then
  begin
    if CDSPasswordsACTIVE.Value = False then
      FrmPasswords.btnActivate.Caption := 'Activate Account'
    else
      FrmPasswords.btnActivate.Caption := 'Deactivate Account'
  end;
end;

procedure TDMMidas.CDSPasswordsOLDAfterInsert(DataSet: TDataSet);
begin
 { CDSNoCliente.Close;
  CDSNoCliente.CommandText := 'SELECT GEN_ID(GEN_USERNO, 1)FROM RDB$DATABASE';
  CDSNoCliente.Open;
  CDSPasswordsUSERNO.Value := CDSNoClienteGEN_ID.Value;
  CDSPasswordsPOS_LOGEADO.Value := 'F'; }
end;

procedure TDMMidas.CDSSubDeptAfterInsert(DataSet: TDataSet);
begin
  CDSSubDeptLINK_SUBDPT.Value := CDSDepartamentosDEPARTAMENTO.Value;
{  CDSNoCliente.Close;
  CDSNoCliente.CommandText := 'SELECT GEN_ID(GEN_DEPT_ID, 1)FROM RDB$DATABASE';
  CDSNoCliente.Open;
  CDSSubDeptDEPARTAMENTO.Value := CDSNoClienteGEN_ID.Value;}
end;

procedure TDMMidas.CDSGroupCalcFields(DataSet: TDataSet);
begin
  if CDSGroupSTRENGTH.IsNull then
    CDSGroupMedicamentoStr.Value := Trim(CDSGroupDESCRIPCION.Value)
  else
  begin
    if CDSGROUPSTRENGTH.Value > '' then CDSGROUPMedicamentoStr.Value := Trim(CDSGroupDESCRIPCION.Value) + ', ' + Trim(CDSGROUPSTRENGTH.Value)
    else
      CDSGROUPMedicamentoStr.Value := Trim(CDSGroupDESCRIPCION.Value);
  end;
end;

procedure TDMMidas.CDSHeadCalcFields(DataSet: TDataSet);
begin
  CDSHeadRecallNoTrans.Value := 'HK' + IntToStr(CDSHeadTRANSACTIONNUMBER.Value);
end;

procedure TDMMidas.cdsHelpAfterDelete(DataSet: TDataSet);
begin
  cdsHelp.ApplyUpdates(-1)
end;

procedure TDMMidas.cdsInventarioPiso2AfterScroll(DataSet: TDataSet);
begin
  CDSSuplidores.Close;
  CDSSuplidores.CommandText := 'Select * from suplidores where NUMEROSUPLIDOR = ' + chr(39) + cdsInventarioPiso2NUMEROSUPLIDOR.asString + chr(39);
  CDSSuplidores.Open;
end;

procedure TDMMidas.cdsInventarioPiso2CalcFields(DataSet: TDataSet);
begin
  cdsInventarioPiso2Faltas.Value := cdsInventarioPiso2CMAXINVENTARIO.asFloat - cdsInventarioPiso2QTYINVENTARIO.asFloat;
  cdsInventarioPiso2TOTAL_COST.Value := cdsInventarioPiso2QTYINVENTARIO.AsFloat * cdsInventarioPiso2COSTO.asFloat;
end;

procedure TDMMidas.CDSGroupAfterDelete(DataSet: TDataSet);
begin
 if (CDSGroup.ChangeCount > 0) then CDSGroup.ApplyUpdates(0);
end;

procedure TDMMidas.CDSInventarioPisoBeforePost(DataSet: TDataSet);
begin
  CDSInventarioPisoULTIMOCAMBIO.Value := FrmMain.sbMain.Panels.Items[0].Text;
  PrecioVenta := CDSInventarioPisoPRECIO.asFloat;
  Costo := CDSInventarioPisoCOSTO.asFloat;
  Dept := CDSInventarioPisoDEPARTAMENTO.Value;
  SubDpt := CDSInventarioPisoSUB_DEPARTAMENTO.Value;
  PID := CDSInventarioPisoPRODUCTNO.Value;
end;

procedure TDMMidas.CDSWebCredRepAfterInsert(DataSet: TDataSet);
begin
  CDSNoCliente.Close;
  CDSNoCliente.CommandText := 'SELECT GEN_ID(GEN_NOWEB_CRED_REP, 1)FROM RDB$DATABASE';
  CDSNoCliente.Open;
  CDSWebCredRepNO_TRANS.Value := CDSNoClienteGEN_ID.Value;
end;

procedure TDMMidas.CDSWebCredRepAfterPost(DataSet: TDataSet);
begin
  if (CDSWebCredRep.ChangeCount > 0) then CDSWebCredRep.ApplyUpdates(-1);
end;

procedure TDMMidas.CDSBalanceInicialAfterPost(DataSet: TDataSet);
begin
  if (CDSBalanceInicial.ChangeCount > 0) then CDSBalanceInicial.ApplyUpdates(-1);
end;

procedure TDMMidas.cdsBarcodePrintQAfterDelete(DataSet: TDataSet);
begin
 if (cdsBarcodePrintQ.ChangeCount > 0) then cdsBarcodePrintQ.ApplyUpdates(0);
end;

procedure TDMMidas.CDSBotonesAfterDelete(DataSet: TDataSet);
begin
  CDSBotones.ApplyUpdates(-1);
end;

procedure TDMMidas.CDSBotonesAfterInsert(DataSet: TDataSet);
begin
  CDSBotonesButton_number.Value := CDSBotones.RecordCount + 1;
  CDSBotonesQTY.asFloat := 0;
  CDSBotonesPRODUCTNO.Value := 0;
  CDSBotonesRECIPE_PRICE.Value := False;
  if CommonPOS.Restaurant = False then
    CDSBotonesRETAIL.Value := True
  else
    CDSBotonesRETAIL.Value := False;
end;

procedure TDMMidas.CDSBotonesBeforePost(DataSet: TDataSet);
begin
  CDSBotonesDESCRIPTION.Value := Copy(CDSBotonesDESCRIPTION.Value,1, 18);
end;

procedure TDMMidas.cdsBotonesModifiersAfterDelete(DataSet: TDataSet);
begin
   if (cdsBotonesModifiers.ChangeCount > 0) then cdsBotonesModifiers.ApplyUpdates(-1);
end;

procedure TDMMidas.cdsCarsAfterInsert(DataSet: TDataSet);
begin
  cdsCarsNUMEROCLIENTE.Value := CDSClientesNUMEROCLIENTE.Value;
end;

procedure TDMMidas.cdsCarsAfterPost(DataSet: TDataSet);
begin
    cdsCars.ApplyUpdates(0);
end;

procedure TDMMidas.CDSBalanceInicialAfterInsert(DataSet: TDataSet);
begin
  CDSBalanceInicialFECHA.asString := DateToStr(Date);
  CDSBalanceInicialNUMEROCLIENTE.Value := CDSClientesNUMEROCLIENTE.Value;
end;

procedure TDMMidas.CDSAssembly_HeaderAfterInsert(DataSet: TDataSet);
begin
{  CDSNoCliente.Close;
  CDSNoCliente.CommandText := 'SELECT GEN_ID(GEN_NOASSEMBLY, 1)FROM RDB$DATABASE';
  CDSNoCliente.Open;
  CDSAssembly_HeaderNO_TRANS.Value := CDSNoClienteGEN_ID.Value;}
  CDSAssembly_HeaderDESCRIPTION.Value := '';
  CDSAssembly_HeaderFECHA_CREADO.asString := DateToStr(Date);
  CDSAssembly_HeaderPRECIO.Value := 0;
  CDSAssembly_HeaderCOSTO.Value := 0; 
end;

procedure TDMMidas.DSAssemblyHeaderDataChange(Sender: TObject;
  Field: TField);
begin
  if CDSAssembly_HeaderNO_TRANS.Value > 0 then
  begin
    CDSAssembly_Detail.Close;
    CDSAssembly_Detail.CommandText := 'Select * from ASSEMBLY_DETAIL where NO_TRANS = ' + CDSAssembly_HeaderNO_TRANS.AsString;
    CDSAssembly_Detail.Open;
  end;  
end;

procedure TDMMidas.DSComboDataChange(Sender: TObject; Field: TField);
begin
  if CDSComboCombo_ID.value > 0 then
  begin
    CDSCombo_Detail.Close;
    CDSCombo_Detail.CommandText := 'Select * from Combo_Detail where COMBO_ID = ' + CDSComboCombo_ID.asString +  ' order by Product';
    CDSCombo_Detail.Open;
  end;
end;

procedure TDMMidas.CDSAssembly_HeaderAfterPost(DataSet: TDataSet);
begin
  if (CDSAssembly_Header.ChangeCount > 0) then CDSAssembly_Header.ApplyUpdates(-1);
  CDSAssembly_Header.Refresh;
end;

procedure TDMMidas.CDSAssembly_DetailAfterDelete(DataSet: TDataSet);
begin
  if (CDSAssembly_Detail.ChangeCount > 0) then CDSAssembly_Detail.ApplyUpdates(-1);
end;

procedure TDMMidas.CDSPOS_RECETARIOAfterPost(DataSet: TDataSet);
begin
 // if (CDSPOS_RECETARIO.ChangeCount > 0) then CDSPOS_RECETARIO.ApplyUpdates(-1);
end;

procedure TDMMidas.CDSPlanesMedicosAfterInsert(DataSet: TDataSet);
begin
  CDSNoCliente.Close;
  CDSNoCliente.CommandText := 'SELECT GEN_ID(GEN_PLANESMEDICOSNO, 1)FROM RDB$DATABASE';
  CDSNoCliente.Open;
  CDSPlanesMedicosPLANESMEDICOSNO.Value := CDSNoClienteGEN_ID.Value;
  CDSPlanesMedicosMULTI_RECETA.Value := 'T';
  CDSPlanesMedicosTELEFONO.Value  := '1-800-654-4518';
  CDSPlanesMedicosVERSIONCOL.Value := '3A';
  CDSPlanesMedicosTONOPULSO.Value := 'T';
  CDSPlanesMedicosVELOCIDAD.Value := 2400;
  CDSPlanesMedicosBITSDATA.Value := 1;
  CDSPlanesMedicosPARIDAD.Value := 'E';
end;

procedure TDMMidas.CDSPlanesMedicosAfterPost(DataSet: TDataSet);
begin
  if (CDSPlanesMedicos.ChangeCount > 0) then CDSPlanesMedicos.ApplyUpdates(-1);
end;

procedure TDMMidas.CDSPOS_RECETARIOAfterInsert(DataSet: TDataSet);
begin
  {CDSPOS_RECETARIODEDUCIBLE.Value := 0;
  CDSPOS_RECETARIOPAGO_PLAN.Value := 0;
  CDSPOS_RECETARIOCANTIDAD.Value := 0;
  CDSPOS_RECETARIOCOSTO.Value := 0;
  CDSPOS_RECETARIOPRECIO_CASH.Value := 0;
  CDSPOS_RECETARIOPLAN_MEDICO.Value := 'CAS'; }
end;


procedure TDMMidas.CDSUtilitiesAfterInsert(DataSet: TDataSet);
begin
  CDSUtilitiesTAXABLE.Value := 'T';
end;

procedure TDMMidas.CDSCHKDescriptionAfterPost(DataSet: TDataSet);
begin
  if (CDSCHKDescription.ChangeCount > 0) then CDSCHKDescription.ApplyUpdates(-1);
end;

procedure TDMMidas.CDSLogAfterPost(DataSet: TDataSet);
begin
  if (CDSLog.ChangeCount > 0) then CDSLog.ApplyUpdates(-1);
end;

procedure TDMMidas.CDSInventarioPisoBeforeDelete(DataSet: TDataSet);
begin
  if (CDSInventarioPiso.ChangeCount > 0) then CDSInventarioPiso.ApplyUpdates(-1);
{  if CDSLog.Active = False then CDSLog.Active := True;
  CDSLog.Append;
  if Trim(CDSInventarioPisoDESCRIPCION.Value) > '' then
    CDSLogDESCRIPCION.Value := CDSInventarioPisoDESCRIPCION.Value
  else
    CDSLogDESCRIPCION.Value := 'No Description';
  CDSLogUSUARIO.Value := CommonPOS.User;
  CDSLogFECHA.asString := DateTimeToStr(Date);
  CDSLogCODIGO.Value := 'I';
  CDSLogNO_RX.Value := CDSInventarioPisoPRODUCTNO.Value;
  CDSLogNDC_BARCODE.Value := CDSInventarioPisoCODIGOBARRA.Value;
  CDSLog.Post;
  CDSLog.Refresh;
   }
end;

procedure TDMMidas.CDSClientesOldBeforeDelete(DataSet: TDataSet);
begin
{  if CDSLog.Active = False then CDSLog.Active := True;
  CDSLog.Append;
  if Trim(CDSClientesNombreCompleto2.Value) > '' then
    CDSLogDESCRIPCION.Value := CDSClientesNombreCompleto2.Value
  else
    CDSLogDESCRIPCION.Value := 'No description';
  CDSLogUSUARIO.Value := CommonPOS.User;
  CDSLogFECHA.asString := DateTimeToStr(Date);
  CDSLogCODIGO.Value := 'P';
  CDSLogNO_RX.Value := cdsclientesNUMEROCLIENTE.Value;
  CDSLog.Post;}
end;

procedure TDMMidas.CDSDailyTotalsBeforeDelete(DataSet: TDataSet);
begin
{  if CDSLog.Active = False then CDSLog.Active := True;
  CDSLog.Append;
  CDSLogDESCRIPCION.Value := CDSDailyTotalsID.AsString + '-' + CDSDailyTotalsEMPLOYNUMBER.Value;
  CDSLogUSUARIO.Value := CommonPOS.User;
  CDSLogFECHA.asString := DateTimeToStr(Date);
  CDSLogCODIGO.Value := 'C';
  CDSLogNO_RX.Value := CDSDailyTotalsID.Value;
  CDSLog.Post;}
end;

procedure TDMMidas.CDSPasswordsOLDBeforeDelete(DataSet: TDataSet);
begin
{  if CDSLog.Active = False then CDSLog.Active := True;
  CDSLog.Append;
  CDSLogDESCRIPCION.Value := CDSPasswordsUSERNAME.Value;
  CDSLogUSUARIO.Value := CommonPOS.User;
  CDSLogFECHA.asString := DateTimeToStr(Date);
  CDSLogCODIGO.Value := 'U';
  CDSLogNO_RX.Value := CDSPasswordsUSERNO.Value;
  CDSLog.Post;
  }
end;

procedure TDMMidas.CDSPickUpAfterDelete(DataSet: TDataSet);
begin
 if (CDSPickUp.ChangeCount > 0) then CDSPickUp.ApplyUpdates(-1);
end;

procedure TDMMidas.CDSSuplidoresBeforeDelete(DataSet: TDataSet);
begin
{  if CDSLog.Active = False then CDSLog.Active := True;
  CDSLog.Append;
  CDSLogDESCRIPCION.Value := CDSSuplidoresSUPLIDOR.Value;
  CDSLogUSUARIO.Value := CommonPOS.User;
  CDSLogFECHA.asString := DateTimeToStr(Date);
  CDSLogCODIGO.Value := 'S';
  CDSLogNO_RX.Value := CDSSuplidoresNUMEROSUPLIDOR.Value;
  CDSLog.Post; }
end;

procedure TDMMidas.cdsTabsDetailAfterDelete(DataSet: TDataSet);
begin
  cdsTabsDetail.ApplyUpdates(-1);
end;

procedure TDMMidas.cdsTabsHeaderAfterDelete(DataSet: TDataSet);
begin
  cdsTabsHeader.ApplyUpdates(-1);
end;

procedure TDMMidas.cdsTabsHeaderAfterInsert(DataSet: TDataSet);
begin
  cdsTabsHeaderSERVER.Value := UserRights.UserNO;
end;

procedure TDMMidas.cdsTabsHeaderAfterScroll(DataSet: TDataSet);
begin
  if cdsTabsHeaderID.Value > 0 then
  begin
    cdsTabsDetail.Close;
    cdsTabsDetail.CommandText := 'Select * from Tabs_Detail where TABS_ID = ' + cdsTabsHeaderID.AsString;
    cdsTabsDetail.Open;
  end;
end;

procedure TDMMidas.cdsTime_CardBeforeDelete(DataSet: TDataSet);
begin
  cdsTime_Card.ApplyUpdates(0);
end;

procedure TDMMidas.CDSDepartamentosBeforeDelete(DataSet: TDataSet);
begin
{  if CDSLog.Active = False then CDSLog.Active := True;
  CDSLog.Append;
  CDSLogDESCRIPCION.Value := CDSDepartamentosDESCRIPCION.Value;
  CDSLogUSUARIO.Value := CommonPOS.User;
  CDSLogFECHA.asString := DateTimeToStr(Date);
  CDSLogCODIGO.Value := 'X';
  CDSLogNO_RX.Value := CDSDepartamentosDEPARTAMENTO.Value;
  CDSLog.Post;  }
end;

procedure TDMMidas.CDSSubDeptBeforeDelete(DataSet: TDataSet);
begin
{  if CDSLog.Active = False then CDSLog.Active := True;
  CDSLog.Append;
  CDSLogDESCRIPCION.Value := CDSSubDeptDESCRIPCION.Value;
  CDSLogUSUARIO.Value := CommonPOS.User;
  CDSLogFECHA.asString := DateTimeToStr(Date);
  CDSLogCODIGO.Value := 'Y';
  CDSLogNO_RX.Value := CDSSubDeptDEPARTAMENTO.Value;
  CDSLog.Post;  }
end;

procedure TDMMidas.CDSLogCalcFields(DataSet: TDataSet);
begin
  if CDSLogCODIGO.Value = 'X' then CDSLogDESC_CODIGO.Value := 'Departamento';
  if CDSLogCODIGO.Value = 'Y' then CDSLogDESC_CODIGO.Value := 'Subdepartamento';
  if CDSLogCODIGO.Value = 'I' then CDSLogDESC_CODIGO.Value := 'Inventario';
  if CDSLogCODIGO.Value = 'P' then CDSLogDESC_CODIGO.Value := 'Clientes';
  if CDSLogCODIGO.Value = 'C' then CDSLogDESC_CODIGO.Value := 'Cuadres';
  if CDSLogCODIGO.Value = 'S' then CDSLogDESC_CODIGO.Value := 'Suplidores';
  if CDSLogCODIGO.Value = 'A' then CDSLogDESC_CODIGO.Value := 'Partners';
  if CDSLogCODIGO.Value = 'U' then CDSLogDESC_CODIGO.Value := 'Usuarios';
  if CDSLogCODIGO.Value = 'T' then CDSLogDESC_CODIGO.Value := 'Transacciones';
end;

procedure TDMMidas.cdsMainCourseCalcFields(DataSet: TDataSet);
begin
  cdsMainCoursePRODDESC_DEFINE.Value := Trim(Trim(cdsMainCoursePRODDESCRIPTION.Value) + ' ' + Trim(cdsMainCourseTERMINO.Value));
end;

procedure TDMMidas.cdsOpenTabsAfterScroll(DataSet: TDataSet);
begin
  if Assigned(FrmOpenTabs) then
  begin
    //CommonPOS.PrintReceipt(DMMidas.cdsOpenTabsTRANSACTIONNUMBER.Value, 1, False, 'CASH','0', False, False, False, False, False);
  end;
end;

procedure TDMMidas.cdsOpenTabsCalcFields(DataSet: TDataSet);
begin
  cdsOpenTabsTRANSACTIONNUMBER_DEFINE.Value := 'Order #: ' + cdsOpenTabsTRANSACTIONNUMBER.AsString;
  if UpperCase(cdsOpenTabsTRANS_TYPE.Value) = 'I' then cdsOpenTabsTRANS_TYPE_DEFINED.Value := 'Quote';
  if UpperCase(cdsOpenTabsTRANS_TYPE.Value) = 'M' then cdsOpenTabsTRANS_TYPE_DEFINED.Value := 'E-Commerce';
  if UpperCase(cdsOpenTabsTRANS_TYPE.Value) = 'S' then cdsOpenTabsTRANS_TYPE_DEFINED.Value := 'Saved Transaction';
  if UpperCase(cdsOpenTabsTRANS_TYPE.Value) = 'D' then cdsOpenTabsTRANS_TYPE_DEFINED.Value := 'Delivery';
end;

procedure TDMMidas.CDSOTCCalcFields(DataSet: TDataSet);
begin
  case CDSOTCCLAIM_STATUS.Value of
  0: CDSOTCCLAIM_STATUS_DEFINE.Value := 'N/A';
  1: CDSOTCCLAIM_STATUS_DEFINE.Value := 'BILLED';
  2: CDSOTCCLAIM_STATUS_DEFINE.Value := 'REJECTED';
  3: CDSOTCCLAIM_STATUS_DEFINE.Value := 'REVERSED';
  4: CDSOTCCLAIM_STATUS_DEFINE.Value := 'POST DATE';
  5: CDSOTCCLAIM_STATUS_DEFINE.Value := 'BILL LATER';
  end;
end;

procedure TDMMidas.CDSDepartamentosAfterPost(DataSet: TDataSet);
begin
  if (CDSDepartamentos.ChangeCount > 0) then  CDSDepartamentos.ApplyUpdates(-1);
end;

procedure TDMMidas.CDSDepartamentosAfterScroll(DataSet: TDataSet);
begin
  if Assigned(FrmDepartments) then
  begin
    if CDSDepartamentosDEPARTAMENTO.Value > 0 then
    begin
      CDSSubDept.Close;
      CDSSubDept.CommandText := 'Select * from SUB_DEPARTAMENTO where LINK_SUBDPT = ' + CDSDepartamentosDEPARTAMENTO.AsString + ' Order by DESCRIPCION';
      CDSSubDept.Open;
    end;
  end;
end;

procedure TDMMidas.CDSSubDeptAfterDelete(DataSet: TDataSet);
begin
  CDSSubDept.ApplyUpdates(-1);
end;

procedure TDMMidas.CDSAssembly_HeaderCalcFields(DataSet: TDataSet);
begin
  CDSAssembly_HeaderRecallNoTrans.Value := 'HT' + IntToStr(CDSAssembly_HeaderNO_TRANS.Value);
end;

procedure TDMMidas.DSDepartamentosDataChange(Sender: TObject;
  Field: TField);
begin
  with DMMidas do
  begin
    if CDSDepartamentosDEPARTAMENTO.AsString > '' then
    begin
      CDSSubDept.Close;
      CDSSubDept.CommandText := 'Select * from sub_departamento where link_subdpt = ' + CDSDepartamentosDEPARTAMENTO.AsString + ' order by departamento';
      CDSSubDept.Open;
    end
    else
    begin
      CDSSubDept.Close;
      CDSSubDept.CommandText := 'Select * from sub_departamento where link_subdpt = ' + '99999999' + ' order by departamento';
      CDSSubDept.Open;
    end
  end;
end;

procedure TDMMidas.DSPInventarioPisoBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  //SQLConnection1.CloseDataSets;
end;

procedure TDMMidas.CDSAssembly_DetailAfterPost(DataSet: TDataSet);
begin
  CDSAssembly_Detail.ApplyUpdates(-1);
end;

procedure TDMMidas.CDSTransShow2AfterDelete(DataSet: TDataSet);
begin
  CDSTransShow2.ApplyUpdates(-1);
end;

procedure TDMMidas.CDSReasonsAfterDelete(DataSet: TDataSet);
begin
  if (CDSReasons.ChangeCount > 0) then CDSReasons.ApplyUpdates(-1);
end;

procedure TDMMidas.cdsRecipeAfterPost(DataSet: TDataSet);
begin
  if (cdsRecipe.ChangeCount > 0) then cdsRecipe.ApplyUpdates(-1);
end;

procedure TDMMidas.cdsSalesPromoAfterDelete(DataSet: TDataSet);
begin
if (cdsSalesPromo.ChangeCount > 0) then cdsSalesPromo.ApplyUpdates(-1);
cdsSalesPromo.Refresh;
end;

procedure TDMMidas.cdsSalesPromoCalcFields(DataSet: TDataSet);
Var
  Free: String;
begin
  if cdsSalesPromoDISCOUNT.Value = 100 then
    cdsSalesPromoDEFINE.Value := 'Buy ' + cdsSalesPromoQTY.AsString + ' get ' + cdsSalesPromoQTY_DISCOUT.AsString + ' free.'
  else
    cdsSalesPromoDEFINE.Value := 'Buy ' + cdsSalesPromoQTY.AsString + ' get ' + cdsSalesPromoQTY_DISCOUT.AsString + ' at ' + cdsSalesPromoDISCOUNT.AsString + '% discount.';
end;

procedure TDMMidas.Users;
Var
  i: integer;
begin
  With DM do
  begin
    CDSPasswords.Close;
    CDSPasswords.CommandText := 'Select * from Passwords where Active = 1 order by UserName';
    CDSPasswords.Open;
    for i := 0 to CDSPasswords.RecordCount -1 do
    begin
      PasswordsArray[i] := CDSPasswordsUSERNAME.Value;
      CDSPasswords.Next;
    end;
  end;
end;

function TDMMidas.getWC_PATIENTS(dbNamePOS, dbNameRx: String): String;
begin
  if CommonPOS.StandalonePOS = false then
  begin
    dbNamePOS := CommonPOS.DataBaseNameRx;
  end;
  result := 'SELECT p.NUMEROCLIENTE, p.NOMBRE, p.APELLIDOPATERNO, p.APELLIDOMATERNO, p.CELULAR, p.DIRECCION1, p.DIRECCION2, '+
                         ' p.NOTIFICATION_MODE_PHONE, p.NOTIFICATION_MODE_CEL, p.NOTIFICATION_MODE_SMS, p.NOTIFICATION_MODE_EMAIL, ' +
                         ' p.email, ' +
                         ' p.CIUDAD, p.CODIGOPOSTAL, w.BAG_NUMBER, w.NOTIFICATION_MODE2_TELEPHONE, w.DATE_CREATED, '+
                         ' p.ESTADO, p.FECHANACIMIENTO, p.TELEFONO, w.STATUS, w.DATE_PICKUP_RTS, p.FAMILY_LINK  '+
                   ' FROM ' +dbNameRx+ '.dbo.PACIENTES as p INNER JOIN  '+
                        dbNamePOS+'.dbo.WILLCALL_STATUS as w ON p.NUMEROCLIENTE = w.CUSTOMER_NUMBER  ';
  DMwc.qWC_PATIENTS.sql.text := result;
end;


end.
