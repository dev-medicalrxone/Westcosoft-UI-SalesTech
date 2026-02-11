object DMMidas: TDMMidas
  OnCreate = DataModuleCreate
  Height = 2076
  Width = 2296
  object DSSetup: TDataSource
    DataSet = CDSSetup
    Left = 328
    Top = 176
  end
  object DSClientes: TDataSource
    DataSet = CDSClientes
    Left = 80
    Top = 264
  end
  object DtSrcSales: TDataSource
    DataSet = CDSSales
    Left = 80
    Top = 520
  end
  object DtSrcPrintList: TDataSource
    DataSet = CDSPrintList
    Left = 328
    Top = 392
  end
  object DSTransaction: TDataSource
    AutoEdit = False
    DataSet = CDSTransShow
    Left = 880
    Top = 432
  end
  object DTSTransHead: TDataSource
    DataSet = CDSTransHead
    Left = 584
    Top = 160
  end
  object DTSDailyTotals: TDataSource
    AutoEdit = False
    DataSet = CDSDailyTotals
    Left = 328
    Top = 72
  end
  object DSPOS: TDataSource
    DataSet = CDSPOS
    Left = 576
    Top = 56
  end
  object DSAdPrintList: TDataSource
    DataSet = CDSAdPrintList
    Left = 579
    Top = 592
  end
  object DSNoCliente: TDataSource
    Left = 328
    Top = 599
  end
  object DSInventarioPiso: TDataSource
    AutoEdit = False
    DataSet = CDSInventarioPiso
    Left = 80
    Top = 72
  end
  object DSGroup: TDataSource
    DataSet = CDSGroup
    Left = 128
    Top = 632
  end
  object DSOrderDetailHistory: TDataSource
    DataSet = CDSOrderDetailHistory
    Left = 328
    Top = 232
  end
  object MainMenu1: TMainMenu
    Left = 29
    Top = 947
    object P1: TMenuItem
      Caption = 'File'
      object Load1: TMenuItem
        Caption = 'Load'
      end
      object Save1: TMenuItem
        Caption = 'Save'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Quit1: TMenuItem
        Caption = 'Quit'
      end
    end
  end
  object TCPClient: TIdTCPClient
    ConnectTimeout = 0
    Host = '63.245.104.121'
    Port = 8091
    ReadTimeout = 0
    Left = 24
    Top = 896
  end
  object DSBalanceInicial: TDataSource
    DataSet = CDSBalanceInicial
    Left = 328
    Top = 643
  end
  object DSAssemblyHeader: TDataSource
    DataSet = CDSAssembly_Header
    OnDataChange = DSAssemblyHeaderDataChange
    Left = 576
    Top = 544
  end
  object DSAssemblyDetail: TDataSource
    DataSet = CDSAssembly_Detail
    Left = 576
    Top = 496
  end
  object DSCalcAusp: TDataSource
    Left = 808
    Top = 432
  end
  object DSPlanesMedicos: TDataSource
    AutoEdit = False
    DataSet = CDSPlanesMedicos
    Left = 576
    Top = 208
  end
  object DSVerTransacciones: TDataSource
    DataSet = CDSVerTransacciones
    Left = 560
    Top = 448
  end
  object DSCHKDescription: TDataSource
    DataSet = CDSCHKDescription
    Left = 128
    Top = 688
  end
  object DSTransferHistory: TDataSource
    DataSet = CDSTransferHistory
    Left = 576
    Top = 8
  end
  object DSLog: TDataSource
    DataSet = CDSLog
    Left = 328
    Top = 16
  end
  object DSTrans: TDataSource
    DataSet = CDSTransHead
    Left = 960
    Top = 434
  end
  object DSDepartamentos: TDataSource
    DataSet = CDSDepartamentos
    OnDataChange = DSDepartamentosDataChange
    Left = 80
    Top = 168
  end
  object CDSInventarioPiso: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPInventarioPiso'
    AfterInsert = CDSInventarioPisoAfterInsert
    AfterPost = CDSInventarioPisoBeforeDelete
    BeforeDelete = CDSInventarioPisoBeforeDelete
    AfterDelete = CDSInventarioPisoBeforeDelete
    AfterScroll = CDSInventarioPisoAfterScroll
    OnCalcFields = CDSInventarioPisoCalcFields
    Left = 192
    Top = 72
    object CDSInventarioPisoULTIMAVENTA: TSQLTimeStampField
      FieldName = 'ULTIMAVENTA'
      Origin = 'ULTIMAVENTA'
    end
    object CDSInventarioPisoSUBDEPT: TStringField
      FieldKind = fkLookup
      FieldName = 'SUBDEPT'
      LookupDataSet = CDSSubDept
      LookupKeyFields = 'DEPARTAMENTO'
      LookupResultField = 'DESCRIPCION'
      KeyFields = 'SUB_DEPARTAMENTO'
      Lookup = True
    end
    object CDSInventarioPisoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 3
    end
    object CDSInventarioPisoFECHA_EXPIRACION: TSQLTimeStampField
      FieldName = 'FECHA_EXPIRACION'
      Origin = 'FECHA_EXPIRACION'
    end
    object CDSInventarioPisoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      FixedChar = True
      Size = 1
    end
    object CDSInventarioPisoDEPARTAMENTO: TSmallintField
      FieldName = 'DEPARTAMENTO'
      Origin = 'DEPARTAMENTO'
    end
    object CDSInventarioPisoLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      FixedChar = True
      Size = 12
    end
    object CDSInventarioPisoCOMESPECIAL: TSQLTimeStampField
      FieldName = 'COMESPECIAL'
      Origin = 'COMESPECIAL'
    end
    object CDSInventarioPisoTERMINAESPECIAL: TSQLTimeStampField
      FieldName = 'TERMINAESPECIAL'
      Origin = 'TERMINAESPECIAL'
    end
    object CDSInventarioPisoPORCIENTODESCUENTO: TStringField
      FieldName = 'PORCIENTODESCUENTO'
      Origin = 'PORCIENTODESCUENTO'
      FixedChar = True
      Size = 1
    end
    object CDSInventarioPisoULTIMOCAMBIO: TStringField
      FieldName = 'ULTIMOCAMBIO'
      Origin = 'ULTIMOCAMBIO'
      FixedChar = True
      Size = 30
    end
    object CDSInventarioPisoCODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Origin = 'CODIGOBARRA'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CDSInventarioPisoFOODITEM: TSmallintField
      FieldName = 'FOODITEM'
      Origin = 'FOODITEM'
      Required = True
    end
    object CDSInventarioPisoNONEBC: TSmallintField
      FieldName = 'NONEBC'
      Origin = 'NONEBC'
      Required = True
    end
    object CDSInventarioPisoNUMEROSUPLIDOR: TIntegerField
      FieldName = 'NUMEROSUPLIDOR'
      Origin = 'NUMEROSUPLIDOR'
    end
    object CDSInventarioPisoPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
      Origin = 'PRODUCTNO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object CDSInventarioPisoSUB_DEPARTAMENTO: TSmallintField
      FieldName = 'SUB_DEPARTAMENTO'
      Origin = 'SUB_DEPARTAMENTO'
    end
    object CDSInventarioPisoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      FixedChar = True
      Size = 35
    end
    object CDSInventarioPisoCASA_FARMACEUTICA: TStringField
      FieldName = 'CASA_FARMACEUTICA'
      Origin = 'CASA_FARMACEUTICA'
      FixedChar = True
      Size = 35
    end
    object CDSInventarioPisoROUTEOFADMINISTRATION: TStringField
      FieldName = 'ROUTEOFADMINISTRATION'
      Origin = 'ROUTEOFADMINISTRATION'
      FixedChar = True
      Size = 16
    end
    object CDSInventarioPisoCONTROLADO: TStringField
      FieldName = 'CONTROLADO'
      Origin = 'CONTROLADO'
      FixedChar = True
      Size = 4
    end
    object CDSInventarioPisoSTRENGTH: TStringField
      FieldName = 'STRENGTH'
      Origin = 'STRENGTH'
      FixedChar = True
      Size = 25
    end
    object CDSInventarioPisoINFOADICIONAL: TStringField
      FieldName = 'INFOADICIONAL'
      Origin = 'INFOADICIONAL'
      FixedChar = True
      Size = 25
    end
    object CDSInventarioPisoCAUTION1: TSmallintField
      FieldName = 'CAUTION1'
      Origin = 'CAUTION1'
    end
    object CDSInventarioPisoCAUTION2: TSmallintField
      FieldName = 'CAUTION2'
      Origin = 'CAUTION2'
    end
    object CDSInventarioPisoCAUTION3: TSmallintField
      FieldName = 'CAUTION3'
      Origin = 'CAUTION3'
    end
    object CDSInventarioPisoGENERICNAME: TStringField
      FieldName = 'GENERICNAME'
      Origin = 'GENERICNAME'
      FixedChar = True
      Size = 60
    end
    object CDSInventarioPisoTXR: TStringField
      FieldName = 'TXR'
      Origin = 'TXR'
      FixedChar = True
      Size = 8
    end
    object CDSInventarioPisoBRAND: TStringField
      FieldName = 'BRAND'
      Origin = 'BRAND'
      FixedChar = True
      Size = 1
    end
    object CDSInventarioPisoGROUP_PRODUCTNO: TIntegerField
      FieldName = 'GROUP_PRODUCTNO'
      Origin = 'GROUP_PRODUCTNO'
    end
    object CDSInventarioPisoRECETARIO: TStringField
      FieldName = 'RECETARIO'
      Origin = 'RECETARIO'
      FixedChar = True
      Size = 1
    end
    object CDSInventarioPisoDESCUENTO: TStringField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      FixedChar = True
      Size = 1
    end
    object CDSInventarioPisoIMAGE_CODE: TStringField
      FieldName = 'IMAGE_CODE'
      Origin = 'IMAGE_CODE'
      FixedChar = True
      Size = 9
    end
    object CDSInventarioPisoPACKAGESIZE: TIntegerField
      FieldName = 'PACKAGESIZE'
      Origin = 'PACKAGESIZE'
    end
    object CDSInventarioPisoTXR_EXTENSION: TStringField
      FieldName = 'TXR_EXTENSION'
      Origin = 'TXR_EXTENSION'
      FixedChar = True
      Size = 14
    end
    object CDSInventarioPisoSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object CDSInventarioPisoTAXABLE: TStringField
      FieldName = 'TAXABLE'
      Origin = 'TAXABLE'
      FixedChar = True
      Size = 1
    end
    object CDSInventarioPisoTAXABLE_ESTATAL: TStringField
      FieldName = 'TAXABLE_ESTATAL'
      Origin = 'TAXABLE_ESTATAL'
      FixedChar = True
      Size = 1
    end
    object CDSInventarioPisoPO: TStringField
      FieldName = 'PO'
      Origin = 'PO'
      Size = 10
    end
    object CDSInventarioPisoISBN: TStringField
      FieldName = 'ISBN'
      Origin = 'ISBN'
    end
    object CDSInventarioPisoNDC: TWideStringField
      FieldName = 'NDC'
      Origin = 'NDC'
      FixedChar = True
      Size = 19
    end
    object CDSInventarioPisoMOVIMIENTO: TStringField
      FieldKind = fkCalculated
      FieldName = 'MOVIMIENTO'
      Size = 1
      Calculated = True
    end
    object CDSInventarioPisoPATROCINIO: TIntegerField
      FieldName = 'PATROCINIO'
      Origin = 'PATROCINIO'
    end
    object CDSInventarioPisoCOBRAR_TAX: TIntegerField
      FieldName = 'COBRAR_TAX'
      Origin = 'COBRAR_TAX'
    end
    object CDSInventarioPisoESCANEAR_BARCODEALTERNO: TSmallintField
      FieldName = 'ESCANEAR_BARCODEALTERNO'
      Origin = 'ESCANEAR_BARCODEALTERNO'
    end
    object CDSInventarioPisoEDITAR_PRECIO: TBooleanField
      FieldName = 'EDITAR_PRECIO'
      Origin = 'EDITAR_PRECIO'
    end
    object CDSInventarioPisoSALES_PROMOTION_ID: TIntegerField
      FieldName = 'SALES_PROMOTION_ID'
      Origin = 'SALES_PROMOTION_ID'
    end
    object CDSInventarioPisoSALES_PROMO_DEFINE: TStringField
      FieldKind = fkLookup
      FieldName = 'SALES_PROMO_DEFINE'
      LookupDataSet = cdsSalesPromo
      LookupKeyFields = 'ID'
      LookupResultField = 'DEFINE'
      KeyFields = 'SALES_PROMOTION_ID'
      Size = 30
      Lookup = True
    end
    object CDSInventarioPisoKITCHEN: TBooleanField
      FieldName = 'KITCHEN'
      Origin = 'KITCHEN'
    end
    object CDSInventarioPisoHAS_MODIFIER: TBooleanField
      FieldName = 'HAS_MODIFIER'
      Origin = 'HAS_MODIFIER'
    end
    object CDSInventarioPisoMODIFIER_QTY: TIntegerField
      FieldName = 'MODIFIER_QTY'
      Origin = 'MODIFIER_QTY'
    end
    object CDSInventarioPisoNOTE: TMemoField
      FieldName = 'NOTE'
      Origin = 'NOTE'
      BlobType = ftMemo
    end
    object CDSInventarioPisoRECIPE: TBooleanField
      FieldName = 'RECIPE'
      Origin = 'RECIPE'
    end
    object CDSInventarioPisoSUPLIDOR: TStringField
      FieldKind = fkLookup
      FieldName = 'SUPLIDOR'
      LookupDataSet = CDSSuplidores
      LookupKeyFields = 'NUMEROSUPLIDOR'
      LookupResultField = 'SUPLIDOR'
      KeyFields = 'NUMEROSUPLIDOR'
      Size = 28
      Lookup = True
    end
    object CDSInventarioPisoDESCDEPT: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCDEPT'
      LookupDataSet = CDSDepartamentos
      LookupKeyFields = 'DEPARTAMENTO'
      LookupResultField = 'DESCRIPCION'
      KeyFields = 'DEPARTAMENTO'
      Size = 30
      Lookup = True
    end
    object CDSInventarioPisoStateTaxDefined: TStringField
      FieldKind = fkCalculated
      FieldName = 'StateTaxDefined'
      Size = 5
      Calculated = True
    end
    object CDSInventarioPisoTAX_MUN_DEFINED: TStringField
      FieldKind = fkCalculated
      FieldName = 'TAX_MUN_DEFINED'
      Size = 5
      Calculated = True
    end
    object CDSInventarioPisoFOOD_ITEM_DEFINED: TStringField
      FieldKind = fkCalculated
      FieldName = 'FOOD_ITEM_DEFINED'
      Size = 5
      Calculated = True
    end
    object CDSInventarioPisoGROUP_QTY: TIntegerField
      FieldName = 'GROUP_QTY'
      Origin = 'GROUP_QTY'
    end
    object CDSInventarioPisoSHOWINDIVIDUAL: TBooleanField
      FieldName = 'SHOWINDIVIDUAL'
      Origin = 'SHOWINDIVIDUAL'
    end
    object CDSInventarioPisoDAILY_SALE_START_TIME: TTimeField
      FieldName = 'DAILY_SALE_START_TIME'
      Origin = 'DAILY_SALE_START_TIME'
    end
    object CDSInventarioPisoDAILY_SALE_END_TIME: TTimeField
      FieldName = 'DAILY_SALE_END_TIME'
      Origin = 'DAILY_SALE_END_TIME'
    end
    object CDSInventarioPisoDAILY_SALE_ACTIVE: TBooleanField
      FieldName = 'DAILY_SALE_ACTIVE'
      Origin = 'DAILY_SALE_ACTIVE'
    end
    object CDSInventarioPisoQTYINVENTARIO: TFMTBCDField
      FieldName = 'QTYINVENTARIO'
      Origin = 'QTYINVENTARIO'
      Precision = 18
      Size = 2
    end
    object CDSInventarioPisoRECIPE_PRICE: TFMTBCDField
      FieldName = 'RECIPE_PRICE'
      Origin = 'RECIPE_PRICE'
      Precision = 18
      Size = 2
    end
    object CDSInventarioPisoDAILY_SPECIAL_PRICE: TFMTBCDField
      FieldName = 'DAILY_SPECIAL_PRICE'
      Origin = 'DAILY_SPECIAL_PRICE'
      EditFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSInventarioPisoPROCESSED_FOOD: TBooleanField
      FieldName = 'PROCESSED_FOOD'
      Origin = 'PROCESSED_FOOD'
    end
    object CDSInventarioPisoCOSTO: TFMTBCDField
      FieldName = 'COSTO'
      Origin = 'COSTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSInventarioPisoRBP: TFMTBCDField
      FieldName = 'RBP'
      Origin = 'RBP'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSInventarioPisoESPECIAL: TFMTBCDField
      FieldName = 'ESPECIAL'
      Origin = 'ESPECIAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSInventarioPisoPRECIO: TFMTBCDField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSInventarioPisoCMAXINVENTARIO: TFMTBCDField
      FieldName = 'CMAXINVENTARIO'
      Origin = 'CMAXINVENTARIO'
      Precision = 18
      Size = 2
    end
    object CDSInventarioPisoCMININVENTARIO: TFMTBCDField
      FieldName = 'CMININVENTARIO'
      Origin = 'CMININVENTARIO'
      Precision = 18
      Size = 2
    end
    object CDSInventarioPisoMETRICSIZE: TFMTBCDField
      FieldName = 'METRICSIZE'
      Origin = 'METRICSIZE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSInventarioPisoPRECIO_CAJA: TFMTBCDField
      FieldName = 'PRECIO_CAJA'
      Origin = 'PRECIO_CAJA'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSInventarioPisoQTY_CAJA: TFMTBCDField
      FieldName = 'QTY_CAJA'
      Origin = 'QTY_CAJA'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSInventarioPisoPRECIO2: TFMTBCDField
      FieldName = 'PRECIO2'
      Origin = 'PRECIO2'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSInventarioPisoPRECIO_DACO: TFMTBCDField
      FieldName = 'PRECIO_DACO'
      Origin = 'PRECIO_DACO'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSInventarioPisoPRECIOVENTA2: TFMTBCDField
      FieldName = 'PRECIOVENTA2'
      Origin = 'PRECIOVENTA2'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSInventarioPisoPRECIOVENTA3: TFMTBCDField
      FieldName = 'PRECIOVENTA3'
      Origin = 'PRECIOVENTA3'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSInventarioPisoTRIPLES_PRODUCT: TBooleanField
      FieldName = 'TRIPLES_PRODUCT'
      Origin = 'TRIPLES_PRODUCT'
    end
    object CDSInventarioPisoBARCODE2: TWideStringField
      FieldName = 'BARCODE2'
      Origin = 'BARCODE2'
      FixedChar = True
      Size = 13
    end
    object CDSInventarioPisoSHOW_ON_ECOMM: TBooleanField
      FieldName = 'SHOW_ON_ECOMM'
      Origin = 'SHOW_ON_ECOMM'
    end
    object CDSInventarioPisoCUSTOMER_ID_REQUIRED: TBooleanField
      FieldName = 'CUSTOMER_ID_REQUIRED'
      Origin = 'CUSTOMER_ID_REQUIRED'
    end
    object CDSInventarioPisoPRODUCT_CLASSIFICATION: TWideStringField
      FieldName = 'PRODUCT_CLASSIFICATION'
      Origin = 'PRODUCT_CLASSIFICATION'
      FixedChar = True
    end
    object CDSInventarioPisopseudo: TBooleanField
      FieldName = 'pseudo'
    end
    object CDSInventarioPisoSIZE_IT: TStringField
      FieldName = 'SIZE_IT'
    end
    object CDSInventarioPisoGm1: TFMTBCDField
      FieldName = 'Gm1'
      Precision = 18
      Size = 2
    end
    object CDSInventarioPisoGm2: TFMTBCDField
      FieldName = 'Gm2'
      Precision = 18
      Size = 2
    end
    object CDSInventarioPisoALWDISC: TBooleanField
      FieldName = 'ALWDISC'
    end
    object CDSInventarioPisoROUND: TBooleanField
      FieldName = 'ROUND'
    end
    object CDSInventarioPisoDepL: TStringField
      FieldName = 'DepL'
      Size = 4
    end
    object CDSInventarioPisoDepS: TStringField
      FieldName = 'DepS'
      Size = 4
    end
    object CDSInventarioPisoNLINE: TBooleanField
      FieldName = 'NLINE'
    end
    object CDSInventarioPisoEBT: TBooleanField
      FieldName = 'EBT'
    end
    object CDSInventarioPisoSigis: TBooleanField
      FieldName = 'Sigis'
    end
    object CDSInventarioPisoOTCCard: TBooleanField
      FieldName = 'OTCCard'
    end
    object CDSInventarioPisopseudoMgD: TIntegerField
      FieldName = 'pseudoMgD'
    end
    object CDSInventarioPisoPseudoMgP: TIntegerField
      FieldName = 'PseudoMgP'
    end
    object CDSInventarioPisoNonRefund: TBooleanField
      FieldName = 'NonRefund'
    end
    object CDSInventarioPisoPepSpray: TBooleanField
      FieldName = 'PepSpray'
    end
    object CDSInventarioPisoMaxPerTx: TIntegerField
      FieldName = 'MaxPerTx'
    end
    object CDSInventarioPisoSkipPriceUpd: TBooleanField
      FieldName = 'SkipPriceUpd'
    end
    object CDSInventarioPisoDtSkipPriceUpd: TSQLTimeStampField
      FieldName = 'DtSkipPriceUpd'
    end
    object CDSInventarioPisoSkipPriceUpdInit: TStringField
      FieldName = 'SkipPriceUpdInit'
      Size = 10
    end
    object CDSInventarioPisoSkipPriceDistUpd: TBooleanField
      FieldName = 'SkipPriceDistUpd'
    end
    object CDSInventarioPisoLST_MODIF_PR: TSQLTimeStampField
      FieldName = 'LST_MODIF_PR'
    end
    object CDSInventarioPisoGm3: TFMTBCDField
      FieldName = 'Gm3'
      Precision = 18
      Size = 2
    end
    object CDSInventarioPisoline_loc: TStringField
      FieldName = 'line_loc'
      Size = 10
    end
    object CDSInventarioPisoshelf_loc: TStringField
      FieldName = 'shelf_loc'
      Size = 10
    end
    object CDSInventarioPisostock_loc: TStringField
      FieldName = 'stock_loc'
      Size = 10
    end
    object CDSInventarioPisoAskID: TIntegerField
      FieldName = 'AskID'
      Required = True
    end
  end
  object DSPInventarioPiso: TDataSetProvider
    DataSet = QInventarioPisoFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 136
    Top = 72
  end
  object DSPSuplidores: TDataSetProvider
    DataSet = QSuplidoresFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 136
    Top = 120
  end
  object DSSuplidores: TDataSource
    DataSet = CDSSuplidores
    Left = 80
    Top = 120
  end
  object CDSSuplidores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSuplidores'
    AfterPost = CDSSuplidoresAfterPost
    BeforeDelete = CDSSuplidoresBeforeDelete
    AfterDelete = CDSSuplidoresAfterPost
    Left = 184
    Top = 120
    object CDSSuplidoresNUMEROSUPLIDOR: TIntegerField
      FieldName = 'NUMEROSUPLIDOR'
      Origin = 'NUMEROSUPLIDOR'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object CDSSuplidoresSUPLIDOR: TStringField
      FieldName = 'SUPLIDOR'
      Origin = 'SUPLIDOR'
      FixedChar = True
      Size = 28
    end
    object CDSSuplidoresDIRECCION1: TStringField
      FieldName = 'DIRECCION1'
      Origin = 'DIRECCION1'
      FixedChar = True
      Size = 34
    end
    object CDSSuplidoresDIRECCION2: TStringField
      FieldName = 'DIRECCION2'
      Origin = 'DIRECCION2'
      FixedChar = True
      Size = 34
    end
    object CDSSuplidoresFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      FixedChar = True
      Size = 13
    end
    object CDSSuplidoresZIPCODE: TStringField
      FieldName = 'ZIPCODE'
      Origin = 'ZIPCODE'
      FixedChar = True
      Size = 10
    end
    object CDSSuplidoresPORCIENTODESCUENTO: TSingleField
      FieldName = 'PORCIENTODESCUENTO'
      Origin = 'PORCIENTODESCUENTO'
    end
    object CDSSuplidoresDIASDESCUENTO: TIntegerField
      FieldName = 'DIASDESCUENTO'
      Origin = 'DIASDESCUENTO'
    end
    object CDSSuplidoresCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Origin = 'CONTACTO'
      FixedChar = True
      Size = 30
    end
    object CDSSuplidoresNUMEROCUENTA: TStringField
      FieldName = 'NUMEROCUENTA'
      Origin = 'NUMEROCUENTA'
      FixedChar = True
      Size = 7
    end
    object CDSSuplidoresTOTALCOMPRADO: TSingleField
      FieldName = 'TOTALCOMPRADO'
      Origin = 'TOTALCOMPRADO'
    end
    object CDSSuplidoresTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Origin = 'TELEFONO'
      FixedChar = True
      Size = 13
    end
    object CDSSuplidoresSUP_ID: TStringField
      FieldName = 'SUP_ID'
      Origin = 'SUP_ID'
      FixedChar = True
      Size = 10
    end
  end
  object CDSDepartamentos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPDepartamentos'
    AfterPost = CDSDepartamentosAfterPost
    BeforeDelete = CDSDepartamentosBeforeDelete
    AfterDelete = CDSDepartamentosAfterPost
    AfterScroll = CDSDepartamentosAfterScroll
    Left = 184
    Top = 168
    object CDSDepartamentosDEPARTAMENTO: TSmallintField
      FieldName = 'DEPARTAMENTO'
      ReadOnly = True
    end
    object CDSDepartamentosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 30
    end
    object CDSDepartamentosCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
    end
    object CDSDepartamentosALWDISC: TBooleanField
      FieldName = 'ALWDISC'
    end
    object CDSDepartamentosROUND: TBooleanField
      FieldName = 'ROUND'
    end
    object CDSDepartamentosNLINE: TBooleanField
      FieldName = 'NLINE'
    end
    object CDSDepartamentosEBT: TBooleanField
      FieldName = 'EBT'
    end
    object CDSDepartamentosSigis: TBooleanField
      FieldName = 'Sigis'
    end
    object CDSDepartamentosOTCCard: TBooleanField
      FieldName = 'OTCCard'
    end
    object CDSDepartamentosPseudo: TBooleanField
      FieldName = 'Pseudo'
    end
    object CDSDepartamentospseudoMgD: TIntegerField
      FieldName = 'pseudoMgD'
    end
    object CDSDepartamentosPseudoMgP: TIntegerField
      FieldName = 'PseudoMgP'
    end
    object CDSDepartamentosNonRefund: TBooleanField
      FieldName = 'NonRefund'
    end
    object CDSDepartamentosPepSpray: TBooleanField
      FieldName = 'PepSpray'
    end
    object CDSDepartamentosMaxPerTx: TIntegerField
      FieldName = 'MaxPerTx'
    end
    object CDSDepartamentosSkipPriceUpd: TBooleanField
      FieldName = 'SkipPriceUpd'
    end
    object CDSDepartamentosSkipPriceDistUpd: TBooleanField
      FieldName = 'SkipPriceDistUpd'
    end
    object CDSDepartamentosTAXABLE: TBooleanField
      FieldName = 'TAXABLE'
    end
    object CDSDepartamentosGm1: TFMTBCDField
      FieldName = 'Gm1'
      Precision = 18
      Size = 2
    end
    object CDSDepartamentosAskID: TIntegerField
      FieldName = 'AskID'
    end
  end
  object DSPDepartamentos: TDataSetProvider
    DataSet = QDepartamentosFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 136
    Top = 168
  end
  object CDSSubDept: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSubDept'
    AfterInsert = CDSSubDeptAfterInsert
    AfterPost = CDSSubDeptAfterDelete
    BeforeDelete = CDSSubDeptBeforeDelete
    AfterDelete = CDSSubDeptAfterDelete
    Left = 184
    Top = 216
    object CDSSubDeptDEPARTAMENTO: TSmallintField
      FieldName = 'DEPARTAMENTO'
      Origin = 'DEPARTAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSSubDeptDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 30
    end
    object CDSSubDeptCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Origin = 'COMENTARIO'
    end
    object CDSSubDeptLINK_SUBDPT: TIntegerField
      FieldName = 'LINK_SUBDPT'
      Origin = 'LINK_SUBDPT'
    end
    object CDSSubDeptEXCLUDE: TBooleanField
      FieldName = 'EXCLUDE'
      Origin = 'EXCLUDE'
    end
  end
  object DSPSubDept: TDataSetProvider
    DataSet = QSub_DeapartamentoFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 136
    Top = 216
  end
  object DSSubDept: TDataSource
    DataSet = CDSSubDept
    Left = 80
    Top = 213
  end
  object CDSClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPClientes'
    AfterInsert = CDSClientesOldAfterInsert
    AfterPost = CDSClientesAfterDelete
    BeforeDelete = CDSClientesOldBeforeDelete
    AfterDelete = CDSClientesAfterDelete
    BeforeScroll = CDSClientesBeforeScroll
    AfterScroll = CDSClientesAfterScroll
    OnCalcFields = CDSClientesOldCalcFields
    Left = 192
    Top = 264
    object CDSClientesNombreCompleto2: TStringField
      FieldKind = fkCalculated
      FieldName = 'NombreCompleto2'
      Size = 45
      Calculated = True
    end
    object CDSClientesMailingAddDefine: TStringField
      FieldKind = fkCalculated
      FieldName = 'MailingAddDefine'
      Size = 90
      Calculated = True
    end
    object CDSClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      FixedChar = True
      Size = 12
    end
    object CDSClientesFECHANACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHANACIMIENTO'
      Origin = 'FECHANACIMIENTO'
    end
    object CDSClientesSEXO: TIntegerField
      FieldName = 'SEXO'
      Origin = 'SEXO'
    end
    object CDSClientesDIRECCION1: TStringField
      FieldName = 'DIRECCION1'
      Origin = 'DIRECCION1'
      FixedChar = True
      Size = 30
    end
    object CDSClientesDIRECCION2: TWideStringField
      FieldName = 'DIRECCION2'
      Origin = 'DIRECCION2'
      FixedChar = True
      Size = 40
    end
    object CDSClientesULTTRANS: TSQLTimeStampField
      FieldName = 'ULTTRANS'
      Origin = 'ULTTRANS'
    end
    object CDSClientesNUMEROCLIENTE: TAutoIncField
      FieldName = 'NUMEROCLIENTE'
      Origin = 'NUMEROCLIENTE'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object CDSClientesINTERES: TStringField
      FieldName = 'INTERES'
      Origin = 'INTERES'
      FixedChar = True
      Size = 1
    end
    object CDSClientesDIRECCIONFISICA: TStringField
      FieldName = 'DIRECCIONFISICA'
      Origin = 'DIRECCIONFISICA'
      FixedChar = True
      Size = 50
    end
    object CDSClientesAPELLIDOPATERNO: TStringField
      FieldName = 'APELLIDOPATERNO'
      Origin = 'APELLIDOPATERNO'
      FixedChar = True
      Size = 15
    end
    object CDSClientesAPELLIDOMATERNO: TStringField
      FieldName = 'APELLIDOMATERNO'
      Origin = 'APELLIDOMATERNO'
      FixedChar = True
      Size = 15
    end
    object CDSClientesTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Origin = 'TELEFONO'
      FixedChar = True
      Size = 13
    end
    object CDSClientesFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      FixedChar = True
      Size = 13
    end
    object CDSClientesCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      FixedChar = True
      Size = 13
    end
    object CDSClientesESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object CDSClientesAUSPICIO: TFMTBCDField
      FieldName = 'AUSPICIO'
      Origin = 'AUSPICIO'
      Precision = 18
      Size = 2
    end
    object CDSClientesSOCIO: TStringField
      FieldName = 'SOCIO'
      Origin = 'SOCIO'
      Size = 12
    end
    object CDSClientesORIENTACION: TStringField
      FieldName = 'ORIENTACION'
      Origin = 'ORIENTACION'
      FixedChar = True
      Size = 5
    end
    object CDSClientesIDENTIFICACION: TStringField
      FieldName = 'IDENTIFICACION'
      Origin = 'IDENTIFICACION'
      FixedChar = True
    end
    object CDSClientesSMOKER: TStringField
      FieldName = 'SMOKER'
      Origin = 'SMOKER'
      FixedChar = True
      Size = 1
    end
    object CDSClientesLOCATION: TStringField
      FieldName = 'LOCATION'
      Origin = 'LOCATION'
      FixedChar = True
      Size = 2
    end
    object CDSClientesEMPLOYER_ID: TStringField
      FieldName = 'EMPLOYER_ID'
      Origin = 'EMPLOYER_ID'
      FixedChar = True
      Size = 15
    end
    object CDSClientesPATIENT_ID_QUAL: TStringField
      FieldName = 'PATIENT_ID_QUAL'
      Origin = 'PATIENT_ID_QUAL'
      FixedChar = True
      Size = 2
    end
    object CDSClientesPREGNANCY_IDICATOR: TStringField
      FieldName = 'PREGNANCY_IDICATOR'
      Origin = 'PREGNANCY_IDICATOR'
      FixedChar = True
      Size = 1
    end
    object CDSClientesFECHA_HIPPA: TSQLTimeStampField
      FieldName = 'FECHA_HIPPA'
      Origin = 'FECHA_HIPPA'
    end
    object CDSClientesINFOADICIONAL: TStringField
      FieldName = 'INFOADICIONAL'
      Origin = 'INFOADICIONAL'
      Size = 100
    end
    object CDSClientesCONSULTA: TStringField
      FieldName = 'CONSULTA'
      Origin = 'CONSULTA'
      Size = 100
    end
    object CDSClientesCIUDAD: TStringField
      FieldName = 'CIUDAD'
      Origin = 'CIUDAD'
      FixedChar = True
    end
    object CDSClientesMAILING_ADDRESS1: TStringField
      FieldName = 'MAILING_ADDRESS1'
      Origin = 'MAILING_ADDRESS1'
      Size = 30
    end
    object CDSClientesMAILING_ADDRESS2: TStringField
      FieldName = 'MAILING_ADDRESS2'
      Origin = 'MAILING_ADDRESS2'
      Size = 30
    end
    object CDSClientesMAILING_CITY: TStringField
      FieldName = 'MAILING_CITY'
      Origin = 'MAILING_CITY'
      Size = 15
    end
    object CDSClientesMAILING_STATE: TStringField
      FieldName = 'MAILING_STATE'
      Origin = 'MAILING_STATE'
      Size = 2
    end
    object CDSClientesMAILING_ZIPCODE: TStringField
      FieldName = 'MAILING_ZIPCODE'
      Origin = 'MAILING_ZIPCODE'
      Size = 12
    end
    object CDSClientesPATIENT_RESIDENCE: TWideStringField
      FieldName = 'PATIENT_RESIDENCE'
      Origin = 'PATIENT_RESIDENCE'
      FixedChar = True
      Size = 2
    end
    object CDSClientesPLACE_OF_SERVICE: TWideStringField
      FieldName = 'PLACE_OF_SERVICE'
      Origin = 'PLACE_OF_SERVICE'
      FixedChar = True
      Size = 2
    end
    object CDSClientesEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      FixedChar = True
      Size = 80
    end
    object CDSClientesCARDHOLDERID: TWideStringField
      FieldName = 'CARDHOLDERID'
      Origin = 'CARDHOLDERID'
      FixedChar = True
    end
    object CDSClientesCODIGOPOSTAL: TWideStringField
      FieldName = 'CODIGOPOSTAL'
      Origin = 'CODIGOPOSTAL'
      FixedChar = True
      Size = 15
    end
    object CDSClientesSIGNATURE: TMemoField
      FieldName = 'SIGNATURE'
      Origin = 'SIGNATURE'
      BlobType = ftMemo
    end
    object CDSClientesOUT_DIAL_PERMISSION: TWideStringField
      FieldName = 'OUT_DIAL_PERMISSION'
      Origin = 'OUT_DIAL_PERMISSION'
      FixedChar = True
      Size = 1
    end
    object CDSClientesSSN: TWideStringField
      FieldName = 'SSN'
      Origin = 'SSN'
      FixedChar = True
      Size = 9
    end
    object CDSClientesNOTIFICATION_MODE_PHONE: TSmallintField
      FieldName = 'NOTIFICATION_MODE_PHONE'
      Origin = 'NOTIFICATION_MODE_PHONE'
    end
    object CDSClientesNOTIFICATION_MODE_CEL: TSmallintField
      FieldName = 'NOTIFICATION_MODE_CEL'
      Origin = 'NOTIFICATION_MODE_CEL'
    end
    object CDSClientesNOTIFICATION_MODE_SMS: TSmallintField
      FieldName = 'NOTIFICATION_MODE_SMS'
      Origin = 'NOTIFICATION_MODE_SMS'
    end
    object CDSClientesNOTIFICATION_MODE_EMAIL: TSmallintField
      FieldName = 'NOTIFICATION_MODE_EMAIL'
      Origin = 'NOTIFICATION_MODE_EMAIL'
    end
    object CDSClientesNIGHT_PHONE: TWideStringField
      FieldName = 'NIGHT_PHONE'
      Origin = 'NIGHT_PHONE'
      FixedChar = True
      Size = 13
    end
    object CDSClientesWC_NO_NOTIFICATION: TBooleanField
      FieldName = 'WC_NO_NOTIFICATION'
      Origin = 'WC_NO_NOTIFICATION'
    end
    object CDSClientesNOTIFICATION_MODE: TWideStringField
      FieldName = 'NOTIFICATION_MODE'
      Origin = 'NOTIFICATION_MODE'
      FixedChar = True
      Size = 1
    end
    object CDSClientesPRIMARY_TELEPHONE: TWideStringField
      FieldName = 'PRIMARY_TELEPHONE'
      Origin = 'PRIMARY_TELEPHONE'
      FixedChar = True
      Size = 7
    end
    object CDSClientesFACILITY_ID: TIntegerField
      FieldName = 'FACILITY_ID'
      Origin = 'FACILITY_ID'
      Required = True
    end
    object CDSClientesFACILITY_ADMISSION_DATE: TDateField
      FieldName = 'FACILITY_ADMISSION_DATE'
      Origin = 'FACILITY_ADMISSION_DATE'
    end
    object CDSClientesFACILITY_ROOM: TWideStringField
      FieldName = 'FACILITY_ROOM'
      Origin = 'FACILITY_ROOM'
      FixedChar = True
      Size = 10
    end
    object CDSClientesFACILITY_PRESCRIBER: TWideStringField
      FieldName = 'FACILITY_PRESCRIBER'
      Origin = 'FACILITY_PRESCRIBER'
      FixedChar = True
      Size = 50
    end
    object CDSClientesPRICE_TABLE_ID: TIntegerField
      FieldName = 'PRICE_TABLE_ID'
      Origin = 'PRICE_TABLE_ID'
    end
    object CDSClientesOVERRIDE_SYSTEM_DEFAULT_PRICE: TBooleanField
      FieldName = 'OVERRIDE_SYSTEM_DEFAULT_PRICE'
      Origin = 'OVERRIDE_SYSTEM_DEFAULT_PRICE'
      Required = True
    end
    object CDSClientesADHERENCE: TBooleanField
      FieldName = 'ADHERENCE'
      Origin = 'ADHERENCE'
    end
    object CDSClientesNUMERO_REGISTRO_COMERCIANTE: TWideStringField
      FieldName = 'NUMERO_REGISTRO_COMERCIANTE'
      Origin = 'NUMERO_REGISTRO_COMERCIANTE'
      FixedChar = True
      Size = 15
    end
    object CDSClientesALLERGY: TBooleanField
      FieldName = 'ALLERGY'
      Origin = 'ALLERGY'
      Required = True
    end
    object CDSClientesDECEASED: TBooleanField
      FieldName = 'DECEASED'
      Origin = 'DECEASED'
      Required = True
    end
    object CDSClientesMIDDLE_NAME: TStringField
      FieldName = 'MIDDLE_NAME'
      Origin = 'MIDDLE_NAME'
      Size = 12
    end
    object CDSClientesSIGNATURE_RX_LINK: TIntegerField
      FieldName = 'SIGNATURE_RX_LINK'
      Origin = 'SIGNATURE_RX_LINK'
    end
    object CDSClientesID_IMAGE: TIntegerField
      FieldName = 'ID_IMAGE'
      Origin = 'ID_IMAGE'
    end
    object CDSClientesRECORD_LOCKED: TBooleanField
      FieldName = 'RECORD_LOCKED'
      Origin = 'RECORD_LOCKED'
    end
    object CDSClientesINSTANCIA: TIntegerField
      FieldName = 'INSTANCIA'
      Origin = 'INSTANCIA'
    end
    object CDSClientesDEUDA_EXTENDIDA: TStringField
      FieldName = 'DEUDA_EXTENDIDA'
      Origin = 'DEUDA_EXTENDIDA'
      Size = 1
    end
    object CDSClientesDEUDA: TFMTBCDField
      FieldName = 'DEUDA'
      Origin = 'DEUDA'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSClientesLIMITECREDITO: TFMTBCDField
      FieldName = 'LIMITECREDITO'
      Origin = 'LIMITECREDITO'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSClientesLAWAY: TFMTBCDField
      FieldName = 'LAWAY'
      Origin = 'LAWAY'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSClientesDEUDA_WEB: TFMTBCDField
      FieldName = 'DEUDA_WEB'
      Origin = 'DEUDA_WEB'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSClientesACCIONES: TFMTBCDField
      FieldName = 'ACCIONES'
      Origin = 'ACCIONES'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSClientesPATROCINIO: TFMTBCDField
      FieldName = 'PATROCINIO'
      Origin = 'PATROCINIO'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSClientesVETERANO: TFMTBCDField
      FieldName = 'VETERANO'
      Origin = 'VETERANO'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSClientesTAX_EXEMPT: TBooleanField
      FieldName = 'TAX_EXEMPT'
      Origin = 'TAX_EXEMPT'
    end
    object CDSClientesRETAILPRICE_SELECTED: TStringField
      FieldName = 'RETAILPRICE_SELECTED'
      Origin = 'RETAILPRICE_SELECTED'
      FixedChar = True
      Size = 7
    end
    object CDSClientesCLASIFICATION: TWideStringField
      FieldName = 'CLASIFICATION'
      Origin = 'CLASIFICATION'
      FixedChar = True
    end
    object CDSClientesLANGUAGE: TWideStringField
      FieldName = 'LANGUAGE'
      Origin = 'LANGUAGE'
      FixedChar = True
      Size = 12
    end
  end
  object DSPClientes: TDataSetProvider
    DataSet = QClientesFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 136
    Top = 264
  end
  object CDSPasswords: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPPasswords'
    AfterScroll = CDSPasswordsAfterScroll
    Left = 192
    Top = 312
    object CDSPasswordsUSERNAME: TStringField
      FieldName = 'USERNAME'
      Origin = 'USERNAME'
      Required = True
      Size = 35
    end
    object CDSPasswordsINICIALES: TStringField
      FieldName = 'INICIALES'
      Origin = 'INICIALES'
      Required = True
      Size = 3
    end
    object CDSPasswordsTIME_CARD: TBooleanField
      FieldName = 'TIME_CARD'
      Origin = 'TIME_CARD'
    end
    object CDSPasswordsACTIVE: TBooleanField
      FieldName = 'ACTIVE'
      Origin = 'ACTIVE'
    end
    object CDSPasswordsPOS_CERRAR_CUADRE_ALIMPIRIMIR: TBooleanField
      FieldName = 'POS_CERRAR_CUADRE_ALIMPIRIMIR'
      Origin = 'POS_CERRAR_CUADRE_ALIMPIRIMIR'
    end
    object CDSPasswordsPASSWORD_COL: TWideStringField
      FieldName = 'PASSWORD_COL'
      Origin = 'PASSWORD_COL'
      FixedChar = True
      Size = 30
    end
    object CDSPasswordsUSERNO: TAutoIncField
      FieldName = 'USERNO'
      Origin = 'USERNO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object CDSPasswordsMAIN_SETUP: TBooleanField
      FieldName = 'MAIN_SETUP'
      Origin = 'MAIN_SETUP'
    end
    object CDSPasswordsMAIN_CUST: TBooleanField
      FieldName = 'MAIN_CUST'
      Origin = 'MAIN_CUST'
    end
    object CDSPasswordsMAIN_LABEL: TBooleanField
      FieldName = 'MAIN_LABEL'
      Origin = 'MAIN_LABEL'
    end
    object CDSPasswordsMAIN_INV: TBooleanField
      FieldName = 'MAIN_INV'
      Origin = 'MAIN_INV'
    end
    object CDSPasswordsMAIN_DEPT: TBooleanField
      FieldName = 'MAIN_DEPT'
      Origin = 'MAIN_DEPT'
    end
    object CDSPasswordsMAIN_SUPL: TBooleanField
      FieldName = 'MAIN_SUPL'
      Origin = 'MAIN_SUPL'
    end
    object CDSPasswordsMAIN_TOTAL: TBooleanField
      FieldName = 'MAIN_TOTAL'
      Origin = 'MAIN_TOTAL'
    end
    object CDSPasswordsMAIN_ACCTS: TBooleanField
      FieldName = 'MAIN_ACCTS'
      Origin = 'MAIN_ACCTS'
    end
    object CDSPasswordsMAIN_INVRPT: TBooleanField
      FieldName = 'MAIN_INVRPT'
      Origin = 'MAIN_INVRPT'
    end
    object CDSPasswordsMAIN_TRANS: TBooleanField
      FieldName = 'MAIN_TRANS'
      Origin = 'MAIN_TRANS'
    end
    object CDSPasswordsMAIN_RECV: TBooleanField
      FieldName = 'MAIN_RECV'
      Origin = 'MAIN_RECV'
    end
    object CDSPasswordsPOS_REFUND: TBooleanField
      FieldName = 'POS_REFUND'
      Origin = 'POS_REFUND'
    end
    object CDSPasswordsPOS_DELPROD: TBooleanField
      FieldName = 'POS_DELPROD'
      Origin = 'POS_DELPROD'
    end
    object CDSPasswordsPOS_CHGPRICE: TBooleanField
      FieldName = 'POS_CHGPRICE'
      Origin = 'POS_CHGPRICE'
    end
    object CDSPasswordsPOS_DELTRANS: TBooleanField
      FieldName = 'POS_DELTRANS'
      Origin = 'POS_DELTRANS'
    end
    object CDSPasswordsPOS_DISCOUNT: TBooleanField
      FieldName = 'POS_DISCOUNT'
      Origin = 'POS_DISCOUNT'
    end
    object CDSPasswordsPOS_PAYOUT: TBooleanField
      FieldName = 'POS_PAYOUT'
      Origin = 'POS_PAYOUT'
    end
    object CDSPasswordsPOS_CREDIT: TBooleanField
      FieldName = 'POS_CREDIT'
      Origin = 'POS_CREDIT'
    end
    object CDSPasswordsPOS_TAB_CANCEL: TBooleanField
      FieldName = 'POS_TAB_CANCEL'
      Origin = 'POS_TAB_CANCEL'
    end
    object CDSPasswordsPOS_ADD_BUTTONS: TBooleanField
      FieldName = 'POS_ADD_BUTTONS'
      Origin = 'POS_ADD_BUTTONS'
    end
    object CDSPasswordsPOS_REST_DELETEPRODUCT: TBooleanField
      FieldName = 'POS_REST_DELETEPRODUCT'
      Origin = 'POS_REST_DELETEPRODUCT'
    end
    object CDSPasswordsPOS_LIMITE_CAMBIO_PRECIO: TBooleanField
      FieldName = 'POS_LIMITE_CAMBIO_PRECIO'
      Origin = 'POS_LIMITE_CAMBIO_PRECIO'
    end
    object CDSPasswordsPOS_CAMBIAR_PRECIO_INV: TBooleanField
      FieldName = 'POS_CAMBIAR_PRECIO_INV'
      Origin = 'POS_CAMBIAR_PRECIO_INV'
    end
    object CDSPasswordsPOS_NCGH: TBooleanField
      FieldName = 'POS_NCGH'
      Origin = 'POS_NCGH'
    end
    object CDSPasswordsPOS_REPRINT: TBooleanField
      FieldName = 'POS_REPRINT'
      Origin = 'POS_REPRINT'
    end
    object CDSPasswordsPOS_CANCEL: TBooleanField
      FieldName = 'POS_CANCEL'
      Origin = 'POS_CANCEL'
    end
    object CDSPasswordsPOS_LOGEADO: TBooleanField
      FieldName = 'POS_LOGEADO'
      Origin = 'POS_LOGEADO'
    end
    object CDSPasswordsPOS_OPNDRAWR: TBooleanField
      FieldName = 'POS_OPNDRAWR'
      Origin = 'POS_OPNDRAWR'
    end
    object CDSPasswordsPOS_BUTTONS: TBooleanField
      FieldName = 'POS_BUTTONS'
      Origin = 'POS_BUTTONS'
    end
    object CDSPasswordsPOS_CUADRE_ADMINISTRADOR: TBooleanField
      FieldName = 'POS_CUADRE_ADMINISTRADOR'
      Origin = 'POS_CUADRE_ADMINISTRADOR'
    end
    object CDSPasswordsPOS_VER_TOTAL_CASH: TBooleanField
      FieldName = 'POS_VER_TOTAL_CASH'
      Origin = 'POS_VER_TOTAL_CASH'
    end
    object CDSPasswordsPOS_POST_SHOPPER: TBooleanField
      FieldName = 'POS_POST_SHOPPER'
      Origin = 'POS_POST_SHOPPER'
    end
    object CDSPasswordsPOS_IVU: TBooleanField
      FieldName = 'POS_IVU'
      Origin = 'POS_IVU'
    end
    object CDSPasswordsPOS_HOLD: TBooleanField
      FieldName = 'POS_HOLD'
    end
    object CDSPasswordsCUST_IBAL: TBooleanField
      FieldName = 'CUST_IBAL'
      Origin = 'CUST_IBAL'
    end
    object CDSPasswordsCUST_ILWAY: TBooleanField
      FieldName = 'CUST_ILWAY'
      Origin = 'CUST_ILWAY'
    end
    object CDSPasswordsCUST_EDIT: TBooleanField
      FieldName = 'CUST_EDIT'
      Origin = 'CUST_EDIT'
    end
    object CDSPasswordsCUST_DEL: TBooleanField
      FieldName = 'CUST_DEL'
      Origin = 'CUST_DEL'
    end
    object CDSPasswordsTOT_ADDOLD: TBooleanField
      FieldName = 'TOT_ADDOLD'
      Origin = 'TOT_ADDOLD'
    end
    object CDSPasswordsTOT_EDIT: TBooleanField
      FieldName = 'TOT_EDIT'
      Origin = 'TOT_EDIT'
    end
    object CDSPasswordsTOT_EDITOLD: TBooleanField
      FieldName = 'TOT_EDITOLD'
      Origin = 'TOT_EDITOLD'
    end
    object CDSPasswordsTOT_DEL: TBooleanField
      FieldName = 'TOT_DEL'
      Origin = 'TOT_DEL'
    end
    object CDSPasswordsRPT_POS: TBooleanField
      FieldName = 'RPT_POS'
      Origin = 'RPT_POS'
    end
    object CDSPasswordsRPT_RECETARIO: TBooleanField
      FieldName = 'RPT_RECETARIO'
      Origin = 'RPT_RECETARIO'
    end
    object CDSPasswordsRPT_INVENTARIO: TBooleanField
      FieldName = 'RPT_INVENTARIO'
      Origin = 'RPT_INVENTARIO'
    end
    object CDSPasswordsRPT_CLIENTES: TBooleanField
      FieldName = 'RPT_CLIENTES'
      Origin = 'RPT_CLIENTES'
    end
    object CDSPasswordsREPORTES: TBooleanField
      FieldName = 'REPORTES'
      Origin = 'REPORTES'
    end
    object CDSPasswordsVERTRANSACCIONES: TBooleanField
      FieldName = 'VERTRANSACCIONES'
      Origin = 'VERTRANSACCIONES'
    end
    object CDSPasswordsAGRUPARPRODUCTOS: TBooleanField
      FieldName = 'AGRUPARPRODUCTOS'
      Origin = 'AGRUPARPRODUCTOS'
    end
    object CDSPasswordsEM_VERQTYORD: TBooleanField
      FieldName = 'EM_VERQTYORD'
      Origin = 'EM_VERQTYORD'
    end
    object CDSPasswordsQUICKENTRY: TBooleanField
      FieldName = 'QUICKENTRY'
      Origin = 'QUICKENTRY'
    end
    object CDSPasswordsGUARDAR_TRANSACCIONES: TBooleanField
      FieldName = 'GUARDAR_TRANSACCIONES'
      Origin = 'GUARDAR_TRANSACCIONES'
    end
    object CDSPasswordsRECALL_TRANS: TBooleanField
      FieldName = 'RECALL_TRANS'
      Origin = 'RECALL_TRANS'
    end
    object CDSPasswordsADMINISTRATOR: TBooleanField
      FieldName = 'ADMINISTRATOR'
      Origin = 'ADMINISTRATOR'
    end
    object CDSPasswordsBACKUP_PERMIT: TBooleanField
      FieldName = 'BACKUP_PERMIT'
      Origin = 'BACKUP_PERMIT'
    end
    object CDSPasswordsVENTA_MANUAL: TBooleanField
      FieldName = 'VENTA_MANUAL'
      Origin = 'VENTA_MANUAL'
    end
    object CDSPasswordsBORRAR_FIRMA: TBooleanField
      FieldName = 'BORRAR_FIRMA'
      Origin = 'BORRAR_FIRMA'
    end
    object CDSPasswordsCAPTURAR_FIRMA: TBooleanField
      FieldName = 'CAPTURAR_FIRMA'
      Origin = 'CAPTURAR_FIRMA'
    end
    object CDSPasswordsPORCENTO_DESCUENTO: TBooleanField
      FieldName = 'PORCENTO_DESCUENTO'
      Origin = 'PORCENTO_DESCUENTO'
    end
    object CDSPasswordsCAMBIAR_PRECIO_OTC_RX: TBooleanField
      FieldName = 'CAMBIAR_PRECIO_OTC_RX'
      Origin = 'CAMBIAR_PRECIO_OTC_RX'
    end
    object CDSPasswordsREDIMIR_PATROCINIO: TBooleanField
      FieldName = 'REDIMIR_PATROCINIO'
      Origin = 'REDIMIR_PATROCINIO'
    end
    object CDSPasswordsLOG_DATA: TBooleanField
      FieldName = 'LOG_DATA'
      Origin = 'LOG_DATA'
    end
    object CDSPasswordsSEC_LEVEL: TStringField
      FieldName = 'SEC_LEVEL'
      Origin = 'SEC_LEVEL'
      FixedChar = True
      Size = 1
    end
    object CDSPasswordsSIGNATURE: TMemoField
      FieldName = 'SIGNATURE'
      BlobType = ftMemo
    end
    object CDSPasswordsRPT_RECONCILIACION: TBooleanField
      FieldName = 'RPT_RECONCILIACION'
    end
    object CDSPasswordsCELULAR: TWideStringField
      FieldName = 'CELULAR'
      FixedChar = True
      Size = 13
    end
    object CDSPasswordsHOME_PHONE: TWideStringField
      FieldName = 'HOME_PHONE'
      FixedChar = True
      Size = 13
    end
    object CDSPasswordsADDRESS1: TWideStringField
      FieldName = 'ADDRESS1'
      FixedChar = True
      Size = 30
    end
    object CDSPasswordsADDRESS2: TWideStringField
      FieldName = 'ADDRESS2'
      FixedChar = True
      Size = 30
    end
    object CDSPasswordsCITY: TWideStringField
      FieldName = 'CITY'
      FixedChar = True
    end
    object CDSPasswordsZIP_CODE: TWideStringField
      FieldName = 'ZIP_CODE'
      FixedChar = True
      Size = 15
    end
    object CDSPasswordsSTATE: TWideStringField
      FieldName = 'STATE'
      FixedChar = True
      Size = 2
    end
    object CDSPasswordsCAMBIARPASSWORD: TBooleanField
      FieldName = 'CAMBIARPASSWORD'
    end
    object CDSPasswordsPOS_MODIFY_PAYOUT: TBooleanField
      FieldName = 'POS_MODIFY_PAYOUT'
    end
    object CDSPasswordsPOS_DELETE_RX: TBooleanField
      FieldName = 'POS_DELETE_RX'
    end
    object CDSPasswordsPROCESS_HANDHELD: TBooleanField
      FieldName = 'PROCESS_HANDHELD'
    end
    object CDSPasswordsCREATE_INVENTORY: TBooleanField
      FieldName = 'CREATE_INVENTORY'
    end
    object CDSPasswordsDELETE_INVENTORY: TBooleanField
      FieldName = 'DELETE_INVENTORY'
    end
    object CDSPasswordsEDIT_INVENTORY: TBooleanField
      FieldName = 'EDIT_INVENTORY'
    end
  end
  object DSPPasswords: TDataSetProvider
    DataSet = QPasswordsFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 136
    Top = 312
  end
  object DSPasswords: TDataSource
    DataSet = CDSPasswords
    Left = 80
    Top = 312
  end
  object DtSrcProductos: TDataSource
    DataSet = CDSProductos
    Left = 80
    Top = 360
  end
  object DSPProductos: TDataSetProvider
    DataSet = QProductosFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 136
    Top = 360
  end
  object CDSProductos: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select inventariopiso.*, suplidores.suplidor, '#13#10'departamento.des' +
      'cripcion as descdepartamento '#13#10'from inventariopiso '#13#10'left join s' +
      'uplidores on inventariopiso.numerosuplidor = suplidores.numerosu' +
      'plidor '#13#10'left join departamento on inventariopiso.departamento =' +
      ' departamento.departamento'
    Params = <>
    ProviderName = 'DSPProductos'
    Left = 192
    Top = 360
    object CDSProductosTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 3
    end
    object CDSProductosFECHA_EXPIRACION: TSQLTimeStampField
      FieldName = 'FECHA_EXPIRACION'
      Origin = 'FECHA_EXPIRACION'
    end
    object CDSProductosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      FixedChar = True
      Size = 1
    end
    object CDSProductosCOSTO: TFMTBCDField
      FieldName = 'COSTO'
      Origin = 'COSTO'
      Precision = 18
      Size = 2
    end
    object CDSProductosDEPARTAMENTO: TSmallintField
      FieldName = 'DEPARTAMENTO'
      Origin = 'DEPARTAMENTO'
    end
    object CDSProductosLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      FixedChar = True
      Size = 12
    end
    object CDSProductosCOMESPECIAL: TSQLTimeStampField
      FieldName = 'COMESPECIAL'
      Origin = 'COMESPECIAL'
    end
    object CDSProductosTERMINAESPECIAL: TSQLTimeStampField
      FieldName = 'TERMINAESPECIAL'
      Origin = 'TERMINAESPECIAL'
    end
    object CDSProductosPORCIENTODESCUENTO: TStringField
      FieldName = 'PORCIENTODESCUENTO'
      Origin = 'PORCIENTODESCUENTO'
      FixedChar = True
      Size = 1
    end
    object CDSProductosULTIMOCAMBIO: TStringField
      FieldName = 'ULTIMOCAMBIO'
      Origin = 'ULTIMOCAMBIO'
      FixedChar = True
      Size = 30
    end
    object CDSProductosULTIMAVENTA: TSQLTimeStampField
      FieldName = 'ULTIMAVENTA'
      Origin = 'ULTIMAVENTA'
    end
    object CDSProductosCODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Origin = 'CODIGOBARRA'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CDSProductosFOODITEM: TSmallintField
      FieldName = 'FOODITEM'
      Origin = 'FOODITEM'
    end
    object CDSProductosNONEBC: TSmallintField
      FieldName = 'NONEBC'
      Origin = 'NONEBC'
    end
    object CDSProductosNUMEROSUPLIDOR: TIntegerField
      FieldName = 'NUMEROSUPLIDOR'
      Origin = 'NUMEROSUPLIDOR'
    end
    object CDSProductosEDITAR_PRECIO: TBooleanField
      FieldName = 'EDITAR_PRECIO'
      Origin = 'EDITAR_PRECIO'
    end
    object CDSProductosPRODUCTNO: TAutoIncField
      FieldName = 'PRODUCTNO'
      Origin = 'PRODUCTNO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object CDSProductosSUB_DEPARTAMENTO: TSmallintField
      FieldName = 'SUB_DEPARTAMENTO'
      Origin = 'SUB_DEPARTAMENTO'
    end
    object CDSProductosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      FixedChar = True
      Size = 35
    end
    object CDSProductosROUTEOFADMINISTRATION: TStringField
      FieldName = 'ROUTEOFADMINISTRATION'
      Origin = 'ROUTEOFADMINISTRATION'
      FixedChar = True
      Size = 16
    end
    object CDSProductosCONTROLADO: TStringField
      FieldName = 'CONTROLADO'
      Origin = 'CONTROLADO'
      FixedChar = True
      Size = 4
    end
    object CDSProductosSTRENGTH: TStringField
      FieldName = 'STRENGTH'
      Origin = 'STRENGTH'
      FixedChar = True
      Size = 25
    end
    object CDSProductosINFOADICIONAL: TStringField
      FieldName = 'INFOADICIONAL'
      Origin = 'INFOADICIONAL'
      FixedChar = True
      Size = 25
    end
    object CDSProductosMETRICSIZE: TFMTBCDField
      FieldName = 'METRICSIZE'
      Origin = 'METRICSIZE'
      Precision = 18
      Size = 2
    end
    object CDSProductosCAUTION1: TSmallintField
      FieldName = 'CAUTION1'
      Origin = 'CAUTION1'
    end
    object CDSProductosCAUTION2: TSmallintField
      FieldName = 'CAUTION2'
      Origin = 'CAUTION2'
    end
    object CDSProductosCAUTION3: TSmallintField
      FieldName = 'CAUTION3'
      Origin = 'CAUTION3'
    end
    object CDSProductosGENERICNAME: TStringField
      FieldName = 'GENERICNAME'
      Origin = 'GENERICNAME'
      FixedChar = True
      Size = 60
    end
    object CDSProductosTXR: TStringField
      FieldName = 'TXR'
      Origin = 'TXR'
      FixedChar = True
      Size = 8
    end
    object CDSProductosBRAND: TStringField
      FieldName = 'BRAND'
      Origin = 'BRAND'
      FixedChar = True
      Size = 1
    end
    object CDSProductosGROUP_PRODUCTNO: TIntegerField
      FieldName = 'GROUP_PRODUCTNO'
      Origin = 'GROUP_PRODUCTNO'
    end
    object CDSProductosRECETARIO: TStringField
      FieldName = 'RECETARIO'
      Origin = 'RECETARIO'
      FixedChar = True
      Size = 1
    end
    object CDSProductosGROUP_QTY: TIntegerField
      FieldName = 'GROUP_QTY'
      Origin = 'GROUP_QTY'
    end
    object CDSProductosPRECIO_CAJA: TFMTBCDField
      FieldName = 'PRECIO_CAJA'
      Origin = 'PRECIO_CAJA'
      Precision = 18
      Size = 2
    end
    object CDSProductosDESCUENTO: TStringField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      FixedChar = True
      Size = 1
    end
    object CDSProductosIMAGE_CODE: TStringField
      FieldName = 'IMAGE_CODE'
      Origin = 'IMAGE_CODE'
      FixedChar = True
      Size = 9
    end
    object CDSProductosPACKAGESIZE: TIntegerField
      FieldName = 'PACKAGESIZE'
      Origin = 'PACKAGESIZE'
    end
    object CDSProductosTXR_EXTENSION: TStringField
      FieldName = 'TXR_EXTENSION'
      Origin = 'TXR_EXTENSION'
      FixedChar = True
      Size = 14
    end
    object CDSProductosSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object CDSProductosTAXABLE: TStringField
      FieldName = 'TAXABLE'
      Origin = 'TAXABLE'
      FixedChar = True
      Size = 1
    end
    object CDSProductosTAXABLE_ESTATAL: TStringField
      FieldName = 'TAXABLE_ESTATAL'
      Origin = 'TAXABLE_ESTATAL'
      FixedChar = True
      Size = 1
    end
    object CDSProductosPRECIO2: TFMTBCDField
      FieldName = 'PRECIO2'
      Origin = 'PRECIO2'
      Precision = 18
      Size = 2
    end
    object CDSProductosISBN: TStringField
      FieldName = 'ISBN'
      Origin = 'ISBN'
    end
    object CDSProductosPO: TStringField
      FieldName = 'PO'
      Origin = 'PO'
      Size = 10
    end
    object CDSProductosNDC: TWideStringField
      FieldName = 'NDC'
      Origin = 'NDC'
      FixedChar = True
      Size = 19
    end
    object CDSProductosMETRIC_UNIT: TWideStringField
      FieldName = 'METRIC_UNIT'
      Origin = 'METRIC_UNIT'
      FixedChar = True
      Size = 3
    end
    object CDSProductosROBOT: TIntegerField
      FieldName = 'ROBOT'
      Origin = 'ROBOT'
    end
    object CDSProductosROBOT_NDC: TWideStringField
      FieldName = 'ROBOT_NDC'
      Origin = 'ROBOT_NDC'
      FixedChar = True
      Size = 11
    end
    object CDSProductosPATROCINIO: TIntegerField
      FieldName = 'PATROCINIO'
      Origin = 'PATROCINIO'
    end
    object CDSProductosCOBRAR_TAX: TIntegerField
      FieldName = 'COBRAR_TAX'
      Origin = 'COBRAR_TAX'
    end
    object CDSProductosALCHEMY_PRODUCTID: TIntegerField
      FieldName = 'ALCHEMY_PRODUCTID'
      Origin = 'ALCHEMY_PRODUCTID'
    end
    object CDSProductosMARKET_STATUS: TWideStringField
      FieldName = 'MARKET_STATUS'
      Origin = 'MARKET_STATUS'
      FixedChar = True
      Size = 10
    end
    object CDSProductosOUTERPACKAGEUNIT: TWideStringField
      FieldName = 'OUTERPACKAGEUNIT'
      Origin = 'OUTERPACKAGEUNIT'
      FixedChar = True
      Size = 10
    end
    object CDSProductosPAKAGE_ID: TIntegerField
      FieldName = 'PAKAGE_ID'
      Origin = 'PAKAGE_ID'
    end
    object CDSProductosCASA_FARMACEUTICA: TStringField
      FieldName = 'CASA_FARMACEUTICA'
      Origin = 'CASA_FARMACEUTICA'
      FixedChar = True
      Size = 150
    end
    object CDSProductosVERSION_DESCRIPTION: TWideStringField
      FieldName = 'VERSION_DESCRIPTION'
      Origin = 'VERSION_DESCRIPTION'
      FixedChar = True
      Size = 150
    end
    object CDSProductosPAKAGE_DESCRIPTION: TWideStringField
      FieldName = 'PAKAGE_DESCRIPTION'
      Origin = 'PAKAGE_DESCRIPTION'
      FixedChar = True
      Size = 150
    end
    object CDSProductosREVENUE_CODE: TWideStringField
      FieldName = 'REVENUE_CODE'
      Origin = 'REVENUE_CODE'
      FixedChar = True
      Size = 4
    end
    object CDSProductosHCPCS: TWideStringField
      FieldName = 'HCPCS'
      Origin = 'HCPCS'
      FixedChar = True
      Size = 5
    end
    object CDSProductosAllowControledRefills: TBooleanField
      FieldName = 'AllowControledRefills'
      Origin = 'AllowControledRefills'
    end
    object CDSProductosESCANEAR_BARCODEALTERNO: TSmallintField
      FieldName = 'ESCANEAR_BARCODEALTERNO'
      Origin = 'ESCANEAR_BARCODEALTERNO'
    end
    object CDSProductosPRICE_TABLE_ID: TIntegerField
      FieldName = 'PRICE_TABLE_ID'
      Origin = 'PRICE_TABLE_ID'
    end
    object CDSProductosOVERRIDE_SYSTEM_DEFAULT_PRICE: TBooleanField
      FieldName = 'OVERRIDE_SYSTEM_DEFAULT_PRICE'
      Origin = 'OVERRIDE_SYSTEM_DEFAULT_PRICE'
    end
    object CDSProductosPRICE_UPDATE: TBooleanField
      FieldName = 'PRICE_UPDATE'
      Origin = 'PRICE_UPDATE'
    end
    object CDSProductosENTER_LAB_RESULTS: TBooleanField
      FieldName = 'ENTER_LAB_RESULTS'
      Origin = 'ENTER_LAB_RESULTS'
    end
    object CDSProductosEXPIRE_OPTION: TWideStringField
      FieldName = 'EXPIRE_OPTION'
      Origin = 'EXPIRE_OPTION'
      FixedChar = True
      Size = 15
    end
    object CDSProductosEXPIRE_DAYS: TIntegerField
      FieldName = 'EXPIRE_DAYS'
      Origin = 'EXPIRE_DAYS'
    end
    object CDSProductosEXPIRE_OTHER: TWideStringField
      FieldName = 'EXPIRE_OTHER'
      Origin = 'EXPIRE_OTHER'
      FixedChar = True
      Size = 15
    end
    object CDSProductosMARKETEDPRODUCTID: TIntegerField
      FieldName = 'MARKETEDPRODUCTID'
      Origin = 'MARKETEDPRODUCTID'
    end
    object CDSProductosMAIN_NDC: TBooleanField
      FieldName = 'MAIN_NDC'
      Origin = 'MAIN_NDC'
    end
    object CDSProductosPSEUDOEPHEDRINE: TBooleanField
      FieldName = 'PSEUDOEPHEDRINE'
      Origin = 'PSEUDOEPHEDRINE'
    end
    object CDSProductosEDITAR_PRECIO_NEW: TBooleanField
      FieldName = 'EDITAR_PRECIO_NEW'
      Origin = 'EDITAR_PRECIO_NEW'
    end
    object CDSProductosSALES_PROMOTION_ID: TIntegerField
      FieldName = 'SALES_PROMOTION_ID'
      Origin = 'SALES_PROMOTION_ID'
    end
    object CDSProductosKITCHEN: TBooleanField
      FieldName = 'KITCHEN'
      Origin = 'KITCHEN'
    end
    object CDSProductosRECIPE: TBooleanField
      FieldName = 'RECIPE'
      Origin = 'RECIPE'
    end
    object CDSProductosNOTE: TMemoField
      FieldName = 'NOTE'
      Origin = 'NOTE'
      BlobType = ftMemo
    end
    object CDSProductosMODIFIER_QTY: TIntegerField
      FieldName = 'MODIFIER_QTY'
      Origin = 'MODIFIER_QTY'
    end
    object CDSProductosHAS_MODIFIER: TBooleanField
      FieldName = 'HAS_MODIFIER'
      Origin = 'HAS_MODIFIER'
    end
    object CDSProductosTYPIST: TWideStringField
      FieldName = 'TYPIST'
      Origin = 'TYPIST'
      FixedChar = True
      Size = 3
    end
    object CDSProductosPRODUCT_IMAGE: TBlobField
      FieldName = 'PRODUCT_IMAGE'
      Origin = 'PRODUCT_IMAGE'
    end
    object CDSProductosRECIPE_PRICE: TFMTBCDField
      FieldName = 'RECIPE_PRICE'
      Origin = 'RECIPE_PRICE'
      Precision = 18
      Size = 2
    end
    object CDSProductosSHOWINDIVIDUAL: TBooleanField
      FieldName = 'SHOWINDIVIDUAL'
      Origin = 'SHOWINDIVIDUAL'
    end
    object CDSProductosDAILY_SALE_START_TIME: TTimeField
      FieldName = 'DAILY_SALE_START_TIME'
      Origin = 'DAILY_SALE_START_TIME'
    end
    object CDSProductosDAILY_SALE_END_TIME: TTimeField
      FieldName = 'DAILY_SALE_END_TIME'
      Origin = 'DAILY_SALE_END_TIME'
    end
    object CDSProductosDAILY_SALE_ACTIVE: TBooleanField
      FieldName = 'DAILY_SALE_ACTIVE'
      Origin = 'DAILY_SALE_ACTIVE'
    end
    object CDSProductosDAILY_SPECIAL_PRICE: TFMTBCDField
      FieldName = 'DAILY_SPECIAL_PRICE'
      Origin = 'DAILY_SPECIAL_PRICE'
      Precision = 18
      Size = 2
    end
    object CDSProductosPROCESSED_FOOD: TBooleanField
      FieldName = 'PROCESSED_FOOD'
      Origin = 'PROCESSED_FOOD'
    end
    object CDSProductosQuantityUnitOfMeasure: TWideStringField
      FieldName = 'QuantityUnitOfMeasure'
      Origin = 'QuantityUnitOfMeasure'
      FixedChar = True
      Size = 50
    end
    object CDSProductosStrengthForm: TWideStringField
      FieldName = 'StrengthForm'
      Origin = 'StrengthForm'
      FixedChar = True
      Size = 50
    end
    object CDSProductosStrengthUnitOfMeasure: TWideStringField
      FieldName = 'StrengthUnitOfMeasure'
      Origin = 'StrengthUnitOfMeasure'
      FixedChar = True
      Size = 50
    end
    object CDSProductossuplidor: TStringField
      FieldName = 'suplidor'
      Origin = 'suplidor'
      FixedChar = True
      Size = 28
    end
    object CDSProductosdescdepartamento: TStringField
      FieldName = 'descdepartamento'
      Origin = 'descdepartamento'
      Size = 30
    end
    object CDSProductosRBP: TFMTBCDField
      FieldName = 'RBP'
      Origin = 'RBP'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSProductosESPECIAL: TFMTBCDField
      FieldName = 'ESPECIAL'
      Origin = 'ESPECIAL'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSProductosPRECIO: TFMTBCDField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSProductosCMAXINVENTARIO: TFMTBCDField
      FieldName = 'CMAXINVENTARIO'
      Origin = 'CMAXINVENTARIO'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSProductosCMININVENTARIO: TFMTBCDField
      FieldName = 'CMININVENTARIO'
      Origin = 'CMININVENTARIO'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSProductosQTY_CAJA: TFMTBCDField
      FieldName = 'QTY_CAJA'
      Origin = 'QTY_CAJA'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSProductosPRECIO_DACO: TFMTBCDField
      FieldName = 'PRECIO_DACO'
      Origin = 'PRECIO_DACO'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSProductosPRECIOVENTA2: TFMTBCDField
      FieldName = 'PRECIOVENTA2'
      Origin = 'PRECIOVENTA2'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSProductosAAC_PRICE: TFMTBCDField
      FieldName = 'AAC_PRICE'
      Origin = 'AAC_PRICE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSProductosMAC_PRICE: TFMTBCDField
      FieldName = 'MAC_PRICE'
      Origin = 'MAC_PRICE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSProductosDIRECT_PRICE: TFMTBCDField
      FieldName = 'DIRECT_PRICE'
      Origin = 'DIRECT_PRICE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSProductosUC_PRICE: TFMTBCDField
      FieldName = 'UC_PRICE'
      Origin = 'UC_PRICE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSProductosWAC_PRICE: TFMTBCDField
      FieldName = 'WAC_PRICE'
      Origin = 'WAC_PRICE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSProductosINITIAL_QTY: TFMTBCDField
      FieldName = 'INITIAL_QTY'
      Origin = 'INITIAL_QTY'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSProductosQTYINVENTARIO: TFMTBCDField
      FieldName = 'QTYINVENTARIO'
      Origin = 'QTYINVENTARIO'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSProductosPRECIOVENTA3: TFMTBCDField
      FieldName = 'PRECIOVENTA3'
      Origin = 'PRECIOVENTA3'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
  end
  object DSOTC: TDataSource
    DataSet = CDSOTC
    Left = 80
    Top = 416
  end
  object CDSOTC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPOTC'
    OnCalcFields = CDSOTCCalcFields
    Left = 192
    Top = 416
    object CDSOTCCLAIM_STATUS_DEFINE: TStringField
      FieldKind = fkCalculated
      FieldName = 'CLAIM_STATUS_DEFINE'
      Size = 10
      Calculated = True
    end
    object CDSOTCOTCNUMBER: TAutoIncField
      FieldName = 'OTCNUMBER'
      Origin = 'OTCNUMBER'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object CDSOTCCOBRADO: TStringField
      FieldName = 'COBRADO'
      Origin = 'COBRADO'
      FixedChar = True
      Size = 1
    end
    object CDSOTCFECHAOTC: TSQLTimeStampField
      FieldName = 'FECHAOTC'
      Origin = 'FECHAOTC'
    end
    object CDSOTCRX: TStringField
      FieldName = 'RX'
      Origin = 'RX'
      FixedChar = True
      Size = 1
    end
    object CDSOTCNUMEROCLIENTE: TIntegerField
      FieldName = 'NUMEROCLIENTE'
      Origin = 'NUMEROCLIENTE'
    end
    object CDSOTCMEDICAMENTOMIX: TStringField
      FieldName = 'MEDICAMENTOMIX'
      Origin = 'MEDICAMENTOMIX'
      FixedChar = True
      Size = 120
    end
    object CDSOTCNUMEROTRANSACCION: TIntegerField
      FieldName = 'NUMEROTRANSACCION'
      Origin = 'NUMEROTRANSACCION'
    end
    object CDSOTCPARTIAL_COMPLETION: TStringField
      FieldName = 'PARTIAL_COMPLETION'
      Origin = 'PARTIAL_COMPLETION'
      FixedChar = True
      Size = 1
    end
    object CDSOTCRX_STATUS: TStringField
      FieldName = 'RX_STATUS'
      Origin = 'RX_STATUS'
      FixedChar = True
      Size = 1
    end
    object CDSOTCNO_REF_DISPENSADO: TIntegerField
      FieldName = 'NO_REF_DISPENSADO'
      Origin = 'NO_REF_DISPENSADO'
    end
    object CDSOTCPHARMACIST: TStringField
      FieldName = 'PHARMACIST'
      Origin = 'PHARMACIST'
      FixedChar = True
      Size = 3
    end
    object CDSOTCDAYS_SUPPLY: TIntegerField
      FieldName = 'DAYS_SUPPLY'
      Origin = 'DAYS_SUPPLY'
    end
    object CDSOTCPAGADA: TStringField
      FieldName = 'PAGADA'
      Origin = 'PAGADA'
      FixedChar = True
      Size = 1
    end
    object CDSOTCPRECIOFACTURACION: TFMTBCDField
      FieldName = 'PRECIOFACTURACION'
      Origin = 'PRECIOFACTURACION'
      Precision = 18
      Size = 2
    end
    object CDSOTCPRODUCT_ID: TIntegerField
      FieldName = 'PRODUCT_ID'
      Origin = 'PRODUCT_ID'
    end
    object CDSOTCTIME_RX: TSQLTimeStampField
      FieldName = 'TIME_RX'
      Origin = 'TIME_RX'
    end
    object CDSOTCNO_HORA: TIntegerField
      FieldName = 'NO_HORA'
      Origin = 'NO_HORA'
    end
    object CDSOTCNUMEROPLAN: TIntegerField
      FieldName = 'NUMEROPLAN'
      Origin = 'NUMEROPLAN'
    end
    object CDSOTCMETRICDECIMALQUANTITY: TIntegerField
      FieldName = 'METRICDECIMALQUANTITY'
      Origin = 'METRICDECIMALQUANTITY'
    end
    object CDSOTCPLAN_MEDICO: TStringField
      FieldName = 'PLAN_MEDICO'
      Origin = 'PLAN_MEDICO'
      Size = 3
    end
    object CDSOTCNUMERO_AUTORIZACION: TStringField
      FieldName = 'NUMERO_AUTORIZACION'
      Origin = 'NUMERO_AUTORIZACION'
    end
    object CDSOTCMEDICAMENTO: TStringField
      FieldName = 'MEDICAMENTO'
      Origin = 'MEDICAMENTO'
      Size = 30
    end
    object CDSOTCNDC: TStringField
      FieldName = 'NDC'
      Origin = 'NDC'
      Size = 15
    end
    object CDSOTCATENDIDOPOR: TStringField
      FieldName = 'ATENDIDOPOR'
      Origin = 'ATENDIDOPOR'
      Size = 5
    end
    object CDSOTCLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 12
    end
    object CDSOTCSIGNATURE_LINK: TIntegerField
      FieldName = 'SIGNATURE_LINK'
      Origin = 'SIGNATURE_LINK'
    end
    object CDSOTCCHECKED: TIntegerField
      FieldName = 'CHECKED'
      Origin = 'CHECKED'
    end
    object CDSOTCUSUARIO_NO: TIntegerField
      FieldName = 'USUARIO_NO'
      Origin = 'USUARIO_NO'
    end
    object CDSOTCNUMERORECETA: TLargeintField
      FieldName = 'NUMERORECETA'
      Origin = 'NUMERORECETA'
    end
    object CDSOTCMEZCLA_TRAN_NO: TIntegerField
      FieldName = 'MEZCLA_TRAN_NO'
      Origin = 'MEZCLA_TRAN_NO'
    end
    object CDSOTCREFILL_REMINDED: TIntegerField
      FieldName = 'REFILL_REMINDED'
      Origin = 'REFILL_REMINDED'
    end
    object CDSOTCAUDITED: TIntegerField
      FieldName = 'AUDITED'
      Origin = 'AUDITED'
    end
    object CDSOTCBATCH_NUMBER: TIntegerField
      FieldName = 'BATCH_NUMBER'
      Origin = 'BATCH_NUMBER'
    end
    object CDSOTCWC_PICKUP: TBooleanField
      FieldName = 'WC_PICKUP'
      Origin = 'WC_PICKUP'
    end
    object CDSOTCEP_TRANSACTION_NUMBER: TIntegerField
      FieldName = 'EP_TRANSACTION_NUMBER'
      Origin = 'EP_TRANSACTION_NUMBER'
    end
    object CDSOTCREFILL_NOTIFIED: TBooleanField
      FieldName = 'REFILL_NOTIFIED'
      Origin = 'REFILL_NOTIFIED'
    end
    object CDSOTCPRICE_TABLE_ID: TIntegerField
      FieldName = 'PRICE_TABLE_ID'
      Origin = 'PRICE_TABLE_ID'
    end
    object CDSOTCWF_TYPED: TWideStringField
      FieldName = 'WF_TYPED'
      Origin = 'WF_TYPED'
      FixedChar = True
      Size = 30
    end
    object CDSOTCWF_BILLED: TWideStringField
      FieldName = 'WF_BILLED'
      Origin = 'WF_BILLED'
      FixedChar = True
      Size = 30
    end
    object CDSOTCWF_PRINTED: TWideStringField
      FieldName = 'WF_PRINTED'
      Origin = 'WF_PRINTED'
      FixedChar = True
      Size = 30
    end
    object CDSOTCWF_CHECKED: TWideStringField
      FieldName = 'WF_CHECKED'
      Origin = 'WF_CHECKED'
      FixedChar = True
      Size = 30
    end
    object CDSOTCWF_DELIVERED: TWideStringField
      FieldName = 'WF_DELIVERED'
      Origin = 'WF_DELIVERED'
      FixedChar = True
      Size = 30
    end
    object CDSOTCWF_FILLED: TWideStringField
      FieldName = 'WF_FILLED'
      Origin = 'WF_FILLED'
      FixedChar = True
      Size = 30
    end
    object CDSOTCCLAIM_STATUS: TIntegerField
      FieldName = 'CLAIM_STATUS'
      Origin = 'CLAIM_STATUS'
    end
    object CDSOTCFACILITY_ID: TIntegerField
      FieldName = 'FACILITY_ID'
      Origin = 'FACILITY_ID'
    end
    object CDSOTCADHERENCE: TBooleanField
      FieldName = 'ADHERENCE'
      Origin = 'ADHERENCE'
    end
    object CDSOTCUNIT_PRICE: TFMTBCDField
      FieldName = 'UNIT_PRICE'
      Origin = 'UNIT_PRICE'
      Precision = 18
      Size = 2
    end
    object CDSOTCMED_CHART: TBooleanField
      FieldName = 'MED_CHART'
      Origin = 'MED_CHART'
    end
    object CDSOTCPRINT_Q: TWideStringField
      FieldName = 'PRINT_Q'
      Origin = 'PRINT_Q'
      FixedChar = True
      Size = 1
    end
    object CDSOTCBILL_LATTER: TBooleanField
      FieldName = 'BILL_LATTER'
      Origin = 'BILL_LATTER'
    end
    object CDSOTCWFSTORAGE: TWideStringField
      FieldName = 'WFSTORAGE'
      Origin = 'WFSTORAGE'
      FixedChar = True
      Size = 30
    end
    object CDSOTCWF_STORAGE: TWideStringField
      FieldName = 'WF_STORAGE'
      Origin = 'WF_STORAGE'
      FixedChar = True
      Size = 30
    end
    object CDSOTCWF_CASHIER: TWideStringField
      FieldName = 'WF_CASHIER'
      Origin = 'WF_CASHIER'
      FixedChar = True
      Size = 30
    end
    object CDSOTCWF_SIGNATURE: TWideStringField
      FieldName = 'WF_SIGNATURE'
      Origin = 'WF_SIGNATURE'
      FixedChar = True
      Size = 30
    end
    object CDSOTCALCHEMY_PRODUCTID: TIntegerField
      FieldName = 'ALCHEMY_PRODUCTID'
      Origin = 'ALCHEMY_PRODUCTID'
    end
    object CDSOTCMARKETEDPRODUCTID: TIntegerField
      FieldName = 'MARKETEDPRODUCTID'
      Origin = 'MARKETEDPRODUCTID'
    end
    object CDSOTCPA: TBooleanField
      FieldName = 'PA'
      Origin = 'PA'
    end
    object CDSOTCWF_REVERSE: TBooleanField
      FieldName = 'WF_REVERSE'
      Origin = 'WF_REVERSE'
    end
    object CDSOTCPDN_SENT: TBooleanField
      FieldName = 'PDN_SENT'
      Origin = 'PDN_SENT'
    end
    object CDSOTCREFILL_REQ_TRANSNO: TIntegerField
      FieldName = 'REFILL_REQ_TRANSNO'
      Origin = 'REFILL_REQ_TRANSNO'
    end
    object CDSOTCBATCH_REFILLREQ_DATE: TDateField
      FieldName = 'BATCH_REFILLREQ_DATE'
      Origin = 'BATCH_REFILLREQ_DATE'
    end
    object CDSOTCPRIORAUTHORIZATION: TStringField
      FieldName = 'PRIORAUTHORIZATION'
      Origin = 'PRIORAUTHORIZATION'
      Size = 12
    end
    object CDSOTCBASISOFCOST: TStringField
      FieldName = 'BASISOFCOST'
      Origin = 'BASISOFCOST'
      FixedChar = True
      Size = 2
    end
    object CDSOTCCLINICIDNUMBER: TIntegerField
      FieldName = 'CLINICIDNUMBER'
      Origin = 'CLINICIDNUMBER'
    end
    object CDSOTCDIAGNOSISCODE: TWideStringField
      FieldName = 'DIAGNOSISCODE'
      Origin = 'DIAGNOSISCODE'
      FixedChar = True
      Size = 6
    end
    object CDSOTCDURCONFLICTCODE: TWideStringField
      FieldName = 'DURCONFLICTCODE'
      Origin = 'DURCONFLICTCODE'
      FixedChar = True
      Size = 2
    end
    object CDSOTCDURINTERVENTIONCODE: TWideStringField
      FieldName = 'DURINTERVENTIONCODE'
      Origin = 'DURINTERVENTIONCODE'
      FixedChar = True
      Size = 2
    end
    object CDSOTCDUROUTCOMECODE: TWideStringField
      FieldName = 'DUROUTCOMECODE'
      Origin = 'DUROUTCOMECODE'
      FixedChar = True
      Size = 2
    end
    object CDSOTCLEVELOFSERVICE: TIntegerField
      FieldName = 'LEVELOFSERVICE'
      Origin = 'LEVELOFSERVICE'
    end
    object CDSOTCPRIMARYPRESCRIBER: TWideStringField
      FieldName = 'PRIMARYPRESCRIBER'
      Origin = 'PRIMARYPRESCRIBER'
      FixedChar = True
      Size = 10
    end
    object CDSOTCRXDENIALCLARIF: TWideStringField
      FieldName = 'RXDENIALCLARIF'
      Origin = 'RXDENIALCLARIF'
      FixedChar = True
      Size = 2
    end
    object CDSOTCRXDENIALOVERRIDE: TIntegerField
      FieldName = 'RXDENIALOVERRIDE'
      Origin = 'RXDENIALOVERRIDE'
    end
    object CDSOTCPATIENTPAIDAMOUNT: TFMTBCDField
      FieldName = 'PATIENTPAIDAMOUNT'
      Origin = 'PATIENTPAIDAMOUNT'
      Precision = 18
      Size = 2
    end
    object CDSOTCSALESTAX: TFMTBCDField
      FieldName = 'SALESTAX'
      Origin = 'SALESTAX'
      Precision = 18
      Size = 2
    end
    object CDSOTCOTAMCLDSUBCOUNTQUAL: TWideStringField
      FieldName = 'OTAMCLDSUBCOUNTQUAL'
      Origin = 'OTAMCLDSUBCOUNTQUAL'
      FixedChar = True
      Size = 2
    end
    object CDSOTCPRODUCTSERVIDQUAL: TWideStringField
      FieldName = 'PRODUCTSERVIDQUAL'
      Origin = 'PRODUCTSERVIDQUAL'
      FixedChar = True
      Size = 2
    end
    object CDSOTCPROVIDERID: TWideStringField
      FieldName = 'PROVIDERID'
      Origin = 'PROVIDERID'
      FixedChar = True
      Size = 15
    end
    object CDSOTCUNIT_DOSE_INDICATOR: TWideStringField
      FieldName = 'UNIT_DOSE_INDICATOR'
      Origin = 'UNIT_DOSE_INDICATOR'
      FixedChar = True
      Size = 1
    end
    object CDSOTCUNIT_OF_MEASURE: TWideStringField
      FieldName = 'UNIT_OF_MEASURE'
      Origin = 'UNIT_OF_MEASURE'
      FixedChar = True
      Size = 2
    end
    object CDSOTCSUB_CLARIF_CODE: TWideStringField
      FieldName = 'SUB_CLARIF_CODE'
      Origin = 'SUB_CLARIF_CODE'
      FixedChar = True
      Size = 2
    end
    object CDSOTCOTHERCOVERAGECODE: TWideStringField
      FieldName = 'OTHERCOVERAGECODE'
      Origin = 'OTHERCOVERAGECODE'
      FixedChar = True
      Size = 1
    end
    object CDSOTCSERVICEPROVIDQUALIFIER: TWideStringField
      FieldName = 'SERVICEPROVIDQUALIFIER'
      Origin = 'SERVICEPROVIDQUALIFIER'
      FixedChar = True
      Size = 2
    end
    object CDSOTCOP_AMOUNTPAIDCOUNT: TIntegerField
      FieldName = 'OP_AMOUNTPAIDCOUNT'
      Origin = 'OP_AMOUNTPAIDCOUNT'
    end
    object CDSOTCOP_REJECTCOUNT: TIntegerField
      FieldName = 'OP_REJECTCOUNT'
      Origin = 'OP_REJECTCOUNT'
    end
    object CDSOTCCOB_OTHERPAYMENTCOUNT: TIntegerField
      FieldName = 'COB_OTHERPAYMENTCOUNT'
      Origin = 'COB_OTHERPAYMENTCOUNT'
    end
    object CDSOTCCOMPDOSAGE_FORM_DESC_CODE: TWideStringField
      FieldName = 'COMPDOSAGE_FORM_DESC_CODE'
      Origin = 'COMPDOSAGE_FORM_DESC_CODE'
      FixedChar = True
      Size = 2
    end
    object CDSOTCCOMPDISP_UNIT_FORM_INDI: TWideStringField
      FieldName = 'COMPDISP_UNIT_FORM_INDI'
      Origin = 'COMPDISP_UNIT_FORM_INDI'
      FixedChar = True
      Size = 1
    end
    object CDSOTCCOMPROUTE_OF_ADMINISTRATION: TWideStringField
      FieldName = 'COMPROUTE_OF_ADMINISTRATION'
      Origin = 'COMPROUTE_OF_ADMINISTRATION'
      FixedChar = True
      Size = 2
    end
    object CDSOTCCOMPING_COMP_COUNT: TIntegerField
      FieldName = 'COMPING_COMP_COUNT'
      Origin = 'COMPING_COMP_COUNT'
    end
    object CDSOTCDISPENSING_STATUS: TWideStringField
      FieldName = 'DISPENSING_STATUS'
      Origin = 'DISPENSING_STATUS'
      FixedChar = True
      Size = 1
    end
    object CDSOTCQTY_INTENDED_DISP: TIntegerField
      FieldName = 'QTY_INTENDED_DISP'
      Origin = 'QTY_INTENDED_DISP'
    end
    object CDSOTCDAYS_SUPPLY_INTEND_DISP: TIntegerField
      FieldName = 'DAYS_SUPPLY_INTEND_DISP'
      Origin = 'DAYS_SUPPLY_INTEND_DISP'
    end
    object CDSOTCFLAT_SALES_TAXSUB: TFMTBCDField
      FieldName = 'FLAT_SALES_TAXSUB'
      Origin = 'FLAT_SALES_TAXSUB'
      Precision = 18
      Size = 2
    end
    object CDSOTCASSOC_RX_SERVICE_DATE: TSQLTimeStampField
      FieldName = 'ASSOC_RX_SERVICE_DATE'
      Origin = 'ASSOC_RX_SERVICE_DATE'
    end
    object CDSOTCASSOC_RX_SERVICE_REF_NO: TWideStringField
      FieldName = 'ASSOC_RX_SERVICE_REF_NO'
      Origin = 'ASSOC_RX_SERVICE_REF_NO'
      FixedChar = True
      Size = 7
    end
    object CDSOTCCUPONTYPE: TWideStringField
      FieldName = 'CUPONTYPE'
      Origin = 'CUPONTYPE'
      FixedChar = True
      Size = 2
    end
    object CDSOTCCUPON_NUMBER: TWideStringField
      FieldName = 'CUPON_NUMBER'
      Origin = 'CUPON_NUMBER'
      FixedChar = True
      Size = 15
    end
    object CDSOTCCUPON_VALUE_AMT: TFMTBCDField
      FieldName = 'CUPON_VALUE_AMT'
      Origin = 'CUPON_VALUE_AMT'
      Precision = 18
      Size = 2
    end
    object CDSOTCPRIMARYCAREPROVIDQUALIFIER: TWideStringField
      FieldName = 'PRIMARYCAREPROVIDQUALIFIER'
      Origin = 'PRIMARYCAREPROVIDQUALIFIER'
      FixedChar = True
      Size = 2
    end
    object CDSOTCPRIMARYCAREPROVID: TWideStringField
      FieldName = 'PRIMARYCAREPROVID'
      Origin = 'PRIMARYCAREPROVID'
      FixedChar = True
      Size = 15
    end
    object CDSOTCPRIMARYCAREPROVLASTNAME: TWideStringField
      FieldName = 'PRIMARYCAREPROVLASTNAME'
      Origin = 'PRIMARYCAREPROVLASTNAME'
      FixedChar = True
      Size = 15
    end
    object CDSOTCIAID_464_EX: TWideStringField
      FieldName = 'IAID_464_EX'
      Origin = 'IAID_464_EX'
      FixedChar = True
      Size = 11
    end
    object CDSOTCDRC_357_NV: TWideStringField
      FieldName = 'DRC_357_NV'
      Origin = 'DRC_357_NV'
      FixedChar = True
      Size = 2
    end
    object CDSOTCPAI_391_MT: TWideStringField
      FieldName = 'PAI_391_MT'
      Origin = 'PAI_391_MT'
      FixedChar = True
      Size = 2
    end
    object CDSOTCCOMPOUND_TYPE_996_G1: TWideStringField
      FieldName = 'COMPOUND_TYPE_996_G1'
      Origin = 'COMPOUND_TYPE_996_G1'
      FixedChar = True
      Size = 2
    end
    object CDSOTCPST_147_U7: TWideStringField
      FieldName = 'PST_147_U7'
      Origin = 'PST_147_U7'
      FixedChar = True
      Size = 2
    end
    object CDSOTCSCCD_354_NX: TSmallintField
      FieldName = 'SCCD_354_NX'
      Origin = 'SCCD_354_NX'
    end
    object CDSOTCPRAC_353_NR: TSmallintField
      FieldName = 'PRAC_353_NR'
      Origin = 'PRAC_353_NR'
    end
    object CDSOTCBSC_392_MU: TSmallintField
      FieldName = 'BSC_392_MU'
      Origin = 'BSC_392_MU'
    end
    object CDSOTCSPECIAL_PACK_INDI_429_DT: TWideStringField
      FieldName = 'SPECIAL_PACK_INDI_429_DT'
      Origin = 'SPECIAL_PACK_INDI_429_DT'
      FixedChar = True
      Size = 2
    end
    object CDSOTCROUTEOFADMIN_995_E2: TWideStringField
      FieldName = 'ROUTEOFADMIN_995_E2'
      Origin = 'ROUTEOFADMIN_995_E2'
      FixedChar = True
      Size = 11
    end
    object CDSOTCWC_117_TR: TSmallintField
      FieldName = 'WC_117_TR'
      Origin = 'WC_117_TR'
    end
    object CDSOTCWC_118_TS: TWideStringField
      FieldName = 'WC_118_TS'
      Origin = 'WC_118_TS'
      FixedChar = True
      Size = 2
    end
    object CDSOTCWC_119_TT: TWideStringField
      FieldName = 'WC_119_TT'
      Origin = 'WC_119_TT'
      FixedChar = True
      Size = 15
    end
    object CDSOTCWC_120_TU: TWideStringField
      FieldName = 'WC_120_TU'
      Origin = 'WC_120_TU'
      FixedChar = True
    end
    object CDSOTCWC_121_TV: TWideStringField
      FieldName = 'WC_121_TV'
      Origin = 'WC_121_TV'
      FixedChar = True
      Size = 30
    end
    object CDSOTCWC_122_TW: TWideStringField
      FieldName = 'WC_122_TW'
      Origin = 'WC_122_TW'
      FixedChar = True
    end
    object CDSOTCWC_123_TX: TWideStringField
      FieldName = 'WC_123_TX'
      Origin = 'WC_123_TX'
      FixedChar = True
      Size = 2
    end
    object CDSOTCWC_124_TY: TWideStringField
      FieldName = 'WC_124_TY'
      Origin = 'WC_124_TY'
      FixedChar = True
      Size = 15
    end
    object CDSOTCWC_125_TZ: TWideStringField
      FieldName = 'WC_125_TZ'
      Origin = 'WC_125_TZ'
      FixedChar = True
      Size = 2
    end
    object CDSOTCWC_126_UA: TWideStringField
      FieldName = 'WC_126_UA'
      Origin = 'WC_126_UA'
      FixedChar = True
      Size = 19
    end
    object CDSOTCPRIMARYCAREPROVLOCATIONCODE: TWideStringField
      FieldName = 'PRIMARYCAREPROVLOCATIONCODE'
      Origin = 'PRIMARYCAREPROVLOCATIONCODE'
      FixedChar = True
      Size = 3
    end
    object CDSOTCPATIENTLOCATION: TIntegerField
      FieldName = 'PATIENTLOCATION'
      Origin = 'PATIENTLOCATION'
    end
    object CDSOTCPRESC_SRNM: TWideStringField
      FieldName = 'PRESC_SRNM'
      Origin = 'PRESC_SRNM'
      FixedChar = True
      Size = 7
    end
    object CDSOTCPS_558_AW: TFMTBCDField
      FieldName = 'PS_558_AW'
      Origin = 'PS_558_AW'
      Precision = 18
      Size = 2
    end
    object CDSOTCPS_559_AX: TFMTBCDField
      FieldName = 'PS_559_AX'
      Origin = 'PS_559_AX'
      Precision = 18
      Size = 2
    end
    object CDSOTCREVENUE_CODE: TWideStringField
      FieldName = 'REVENUE_CODE'
      Origin = 'REVENUE_CODE'
      FixedChar = True
      Size = 4
    end
    object CDSOTCDAW: TSmallintField
      FieldName = 'DAW'
      Origin = 'DAW'
    end
    object CDSOTCBATCH_NUMBER_BILLING: TLargeintField
      FieldName = 'BATCH_NUMBER_BILLING'
      Origin = 'BATCH_NUMBER_BILLING'
    end
    object CDSOTCTERMINADA: TBooleanField
      FieldName = 'TERMINADA'
      Origin = 'TERMINADA'
    end
    object CDSOTCMEDICAID_PAID_AMOUNT: TFMTBCDField
      FieldName = 'MEDICAID_PAID_AMOUNT'
      Origin = 'MEDICAID_PAID_AMOUNT'
      Precision = 18
      Size = 2
    end
    object CDSOTCPMC_459_ER: TWideStringField
      FieldName = 'PMC_459_ER'
      Origin = 'PMC_459_ER'
      FixedChar = True
      Size = 2
    end
    object CDSOTCPMCC_458_SE: TIntegerField
      FieldName = 'PMCC_458_SE'
      Origin = 'PMCC_458_SE'
    end
    object CDSOTCSPIDN_454_EK: TWideStringField
      FieldName = 'SPIDN_454_EK'
      Origin = 'SPIDN_454_EK'
      FixedChar = True
      Size = 12
    end
    object CDSOTCIATID_463_EW: TWideStringField
      FieldName = 'IATID_463_EW'
      Origin = 'IATID_463_EW'
      FixedChar = True
      Size = 2
    end
    object CDSOTCQTY: TFMTBCDField
      FieldName = 'QTY'
      Origin = 'QTY'
      Precision = 18
      Size = 2
    end
    object CDSOTCCONTROLADO: TWideStringField
      FieldName = 'CONTROLADO'
      Origin = 'CONTROLADO'
      FixedChar = True
      Size = 4
    end
    object CDSOTCCODIGOREFILLNUEVO: TSmallintField
      FieldName = 'CODIGOREFILLNUEVO'
      Origin = 'CODIGOREFILLNUEVO'
    end
    object CDSOTCRXNUMBERSRNQ: TWideStringField
      FieldName = 'RXNUMBERSRNQ'
      Origin = 'RXNUMBERSRNQ'
      FixedChar = True
      Size = 1
    end
    object CDSOTCTRANSACTION_CODE: TWideStringField
      FieldName = 'TRANSACTION_CODE'
      Origin = 'TRANSACTION_CODE'
      FixedChar = True
      Size = 2
    end
    object CDSOTCMEDICAMENTOORIGINAL: TWideStringField
      FieldName = 'MEDICAMENTOORIGINAL'
      Origin = 'MEDICAMENTOORIGINAL'
      FixedChar = True
      Size = 30
    end
    object CDSOTCROBOT: TIntegerField
      FieldName = 'ROBOT'
      Origin = 'ROBOT'
    end
    object CDSOTCLABEL_NAME: TWideStringField
      FieldName = 'LABEL_NAME'
      Origin = 'LABEL_NAME'
      FixedChar = True
    end
    object CDSOTCFECHAEXPIRACION: TDateField
      FieldName = 'FECHAEXPIRACION'
      Origin = 'FECHAEXPIRACION'
    end
    object CDSOTCIMPRIMIR: TBooleanField
      FieldName = 'IMPRIMIR'
      Origin = 'IMPRIMIR'
    end
    object CDSOTCINSTANCIA: TIntegerField
      FieldName = 'INSTANCIA'
      Origin = 'INSTANCIA'
    end
    object CDSOTCORG_PROS_PROD_SERVID: TStringField
      FieldName = 'ORG_PROS_PROD_SERVID'
      Origin = 'ORG_PROS_PROD_SERVID'
      FixedChar = True
      Size = 2
    end
    object CDSOTCORG_PRESC_QTY: TIntegerField
      FieldName = 'ORG_PRESC_QTY'
      Origin = 'ORG_PRESC_QTY'
    end
    object CDSOTCORG_PRES_PROD_SIDQ: TStringField
      FieldName = 'ORG_PRES_PROD_SIDQ'
      Origin = 'ORG_PRES_PROD_SIDQ'
      FixedChar = True
      Size = 2
    end
    object CDSOTCPRIOR_AUTH_TYPE_CODE: TStringField
      FieldName = 'PRIOR_AUTH_TYPE_CODE'
      Origin = 'PRIOR_AUTH_TYPE_CODE'
      FixedChar = True
      Size = 1
    end
    object CDSOTCINCENTIVE_AMOUNT_SUB: TFMTBCDField
      FieldName = 'INCENTIVE_AMOUNT_SUB'
      Origin = 'INCENTIVE_AMOUNT_SUB'
      Precision = 18
      Size = 2
    end
    object CDSOTCPROF_SERV_FEE_SUB: TFMTBCDField
      FieldName = 'PROF_SERV_FEE_SUB'
      Origin = 'PROF_SERV_FEE_SUB'
      Precision = 18
      Size = 2
    end
    object CDSOTCPERCENTAGE_SALES_TAX_SUB: TFMTBCDField
      FieldName = 'PERCENTAGE_SALES_TAX_SUB'
      Origin = 'PERCENTAGE_SALES_TAX_SUB'
      Precision = 18
      Size = 2
    end
    object CDSOTCPERCENTAGE_SALES_TAX_RATE: TFMTBCDField
      FieldName = 'PERCENTAGE_SALES_TAX_RATE'
      Origin = 'PERCENTAGE_SALES_TAX_RATE'
      Precision = 18
      Size = 2
    end
    object CDSOTCOTHERAMOUNTCLAIMEDSUB: TFMTBCDField
      FieldName = 'OTHERAMOUNTCLAIMEDSUB'
      Origin = 'OTHERAMOUNTCLAIMEDSUB'
      Precision = 18
      Size = 2
    end
    object CDSOTCQTY_TEMP: TFMTBCDField
      FieldName = 'QTY_TEMP'
      Origin = 'QTY_TEMP'
      Precision = 18
      Size = 2
    end
    object CDSOTCOTHERAMOUNTCLAIMEDSUBCOUNT: TIntegerField
      FieldName = 'OTHERAMOUNTCLAIMEDSUBCOUNT'
      Origin = 'OTHERAMOUNTCLAIMEDSUBCOUNT'
    end
    object CDSOTCPER_SALESTAX_BASIS_SUB: TStringField
      FieldName = 'PER_SALESTAX_BASIS_SUB'
      Origin = 'PER_SALESTAX_BASIS_SUB'
      FixedChar = True
      Size = 2
    end
    object CDSOTCWC_DATE_OF_INJURY: TSQLTimeStampField
      FieldName = 'WC_DATE_OF_INJURY'
      Origin = 'WC_DATE_OF_INJURY'
    end
    object CDSOTCWC_EMPLOYER_NAME: TStringField
      FieldName = 'WC_EMPLOYER_NAME'
      Origin = 'WC_EMPLOYER_NAME'
      FixedChar = True
      Size = 3
    end
    object CDSOTCWC_EMPLOYER_STREET: TStringField
      FieldName = 'WC_EMPLOYER_STREET'
      Origin = 'WC_EMPLOYER_STREET'
      FixedChar = True
      Size = 30
    end
    object CDSOTCWC_EMPLOYER_CITY: TStringField
      FieldName = 'WC_EMPLOYER_CITY'
      Origin = 'WC_EMPLOYER_CITY'
      FixedChar = True
      Size = 15
    end
    object CDSOTCWC_EMPLOYER_STATE: TStringField
      FieldName = 'WC_EMPLOYER_STATE'
      Origin = 'WC_EMPLOYER_STATE'
      FixedChar = True
      Size = 2
    end
    object CDSOTCWC_EMPLOYER_CONTACT: TStringField
      FieldName = 'WC_EMPLOYER_CONTACT'
      Origin = 'WC_EMPLOYER_CONTACT'
      FixedChar = True
      Size = 30
    end
    object CDSOTCWC_EMLPOYER_ZIP: TStringField
      FieldName = 'WC_EMLPOYER_ZIP'
      Origin = 'WC_EMLPOYER_ZIP'
      FixedChar = True
      Size = 15
    end
    object CDSOTCWC_CARRIER_ID: TStringField
      FieldName = 'WC_CARRIER_ID'
      Origin = 'WC_CARRIER_ID'
      FixedChar = True
      Size = 10
    end
    object CDSOTCWC_CLAIMREF_ID: TStringField
      FieldName = 'WC_CLAIMREF_ID'
      Origin = 'WC_CLAIMREF_ID'
      FixedChar = True
      Size = 30
    end
    object CDSOTCWC_EMPLOYER_PHONE: TStringField
      FieldName = 'WC_EMPLOYER_PHONE'
      Origin = 'WC_EMPLOYER_PHONE'
      FixedChar = True
      Size = 13
    end
    object CDSOTCPLANESMEDICOSNO: TIntegerField
      FieldName = 'PLANESMEDICOSNO'
      Origin = 'PLANESMEDICOSNO'
    end
    object CDSOTCRX_SHOW_NOREFDISP_FLOAT: TBooleanField
      FieldName = 'RX_SHOW_NOREFDISP_FLOAT'
      Origin = 'RX_SHOW_NOREFDISP_FLOAT'
    end
    object CDSOTCAPPRISS_SENT: TBooleanField
      FieldName = 'APPRISS_SENT'
      Origin = 'APPRISS_SENT'
    end
    object CDSOTCMessageID: TWideStringField
      FieldName = 'MessageID'
      Origin = 'MessageID'
      FixedChar = True
      Size = 40
    end
    object CDSOTCRECORD_LOCKED: TBooleanField
      FieldName = 'RECORD_LOCKED'
      Origin = 'RECORD_LOCKED'
    end
    object CDSOTCTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCCOSTOVENTA: TFMTBCDField
      FieldName = 'COSTOVENTA'
      Origin = 'COSTOVENTA'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCPAGO_PLAN: TFMTBCDField
      FieldName = 'PAGO_PLAN'
      Origin = 'PAGO_PLAN'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCDEDUCIBLE: TFMTBCDField
      FieldName = 'DEDUCIBLE'
      Origin = 'DEDUCIBLE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCINGREDIENT_COST_PAID: TFMTBCDField
      FieldName = 'INGREDIENT_COST_PAID'
      Origin = 'INGREDIENT_COST_PAID'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCINCENTIVE_FEE_PAID: TFMTBCDField
      FieldName = 'INCENTIVE_FEE_PAID'
      Origin = 'INCENTIVE_FEE_PAID'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCDISPENSING_FEE_PAID: TFMTBCDField
      FieldName = 'DISPENSING_FEE_PAID'
      Origin = 'DISPENSING_FEE_PAID'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCOTHER_AMOUNT_PAID: TFMTBCDField
      FieldName = 'OTHER_AMOUNT_PAID'
      Origin = 'OTHER_AMOUNT_PAID'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCAMOUNT_COPAY_COINS: TFMTBCDField
      FieldName = 'AMOUNT_COPAY_COINS'
      Origin = 'AMOUNT_COPAY_COINS'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCGANANCIA: TFMTBCDField
      FieldName = 'GANANCIA'
      Origin = 'GANANCIA'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCPS_521_FL: TFMTBCDField
      FieldName = 'PS_521_FL'
      Origin = 'PS_521_FL'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCPS_523_FN: TFMTBCDField
      FieldName = 'PS_523_FN'
      Origin = 'PS_523_FN'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCPS_512_FC: TFMTBCDField
      FieldName = 'PS_512_FC'
      Origin = 'PS_512_FC'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCPS_513_FD: TFMTBCDField
      FieldName = 'PS_513_FD'
      Origin = 'PS_513_FD'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCPS_517_FH: TFMTBCDField
      FieldName = 'PS_517_FH'
      Origin = 'PS_517_FH'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCPS_518_FI: TFMTBCDField
      FieldName = 'PS_518_FI'
      Origin = 'PS_518_FI'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCPS_520_FK: TFMTBCDField
      FieldName = 'PS_520_FK'
      Origin = 'PS_520_FK'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCPS_514_FE: TFMTBCDField
      FieldName = 'PS_514_FE'
      Origin = 'PS_514_FE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCPS_346_HH: TFMTBCDField
      FieldName = 'PS_346_HH'
      Origin = 'PS_346_HH'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCPS_347_HJ: TFMTBCDField
      FieldName = 'PS_347_HJ'
      Origin = 'PS_347_HJ'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCPS_348_HK: TFMTBCDField
      FieldName = 'PS_348_HK'
      Origin = 'PS_348_HK'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCPS_571_NZ: TFMTBCDField
      FieldName = 'PS_571_NZ'
      Origin = 'PS_571_NZ'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCPS_575_EQ: TFMTBCDField
      FieldName = 'PS_575_EQ'
      Origin = 'PS_575_EQ'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCPS_574_2Y: TFMTBCDField
      FieldName = 'PS_574_2Y'
      Origin = 'PS_574_2Y'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCPS_572_4U: TFMTBCDField
      FieldName = 'PS_572_4U'
      Origin = 'PS_572_4U'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCPS_577_G3: TFMTBCDField
      FieldName = 'PS_577_G3'
      Origin = 'PS_577_G3'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCPS_133_UJ: TFMTBCDField
      FieldName = 'PS_133_UJ'
      Origin = 'PS_133_UJ'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCPS_134_UK: TFMTBCDField
      FieldName = 'PS_134_UK'
      Origin = 'PS_134_UK'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCPS_135_UM: TFMTBCDField
      FieldName = 'PS_135_UM'
      Origin = 'PS_135_UM'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCPS_136_UN: TFMTBCDField
      FieldName = 'PS_136_UN'
      Origin = 'PS_136_UN'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCPS_137_UP: TFMTBCDField
      FieldName = 'PS_137_UP'
      Origin = 'PS_137_UP'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCDISPENSINGFEE: TFMTBCDField
      FieldName = 'DISPENSINGFEE'
      Origin = 'DISPENSINGFEE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOTCGROSSAMOUNTDUE: TFMTBCDField
      FieldName = 'GROSSAMOUNTDUE'
      Origin = 'GROSSAMOUNTDUE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
  end
  object DSPOTC: TDataSetProvider
    DataSet = QOTCFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 136
    Top = 416
  end
  object DSPLog: TDataSetProvider
    DataSet = QLogFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 384
    Top = 16
  end
  object CDSLog: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPLog'
    AfterPost = CDSLogAfterPost
    AfterDelete = CDSLogAfterPost
    OnCalcFields = CDSLogCalcFields
    Left = 432
    Top = 16
    object CDSLogCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSLogNDC_BARCODE: TStringField
      FieldName = 'NDC_BARCODE'
      Origin = 'NDC_BARCODE'
      FixedChar = True
      Size = 13
    end
    object CDSLogFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object CDSLogUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object CDSLogDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Required = True
      FixedChar = True
      Size = 30
    end
    object CDSLogNOLOG: TIntegerField
      FieldName = 'NOLOG'
      Origin = 'NOLOG'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object CDSLogDESC_CODIGO: TStringField
      FieldKind = fkCalculated
      FieldName = 'DESC_CODIGO'
      Calculated = True
    end
    object CDSLogSUPERVISOR: TStringField
      FieldName = 'SUPERVISOR'
      Origin = 'SUPERVISOR'
      Size = 3
    end
    object CDSLogNO_RX: TLargeintField
      FieldName = 'NO_RX'
      Origin = 'NO_RX'
    end
    object CDSLogOTCNUMBER: TIntegerField
      FieldName = 'OTCNUMBER'
    end
    object CDSLogPRESCRIBER_ID: TIntegerField
      FieldName = 'PRESCRIBER_ID'
    end
    object CDSLogCUSTOMER_ID: TIntegerField
      FieldName = 'CUSTOMER_ID'
    end
    object CDSLogPASSWORD_ID: TIntegerField
      FieldName = 'PASSWORD_ID'
    end
    object CDSLogHEALTH_PLAN_ID: TIntegerField
      FieldName = 'HEALTH_PLAN_ID'
    end
    object CDSLogPATIENT_HEALTH_PLAN_ID: TIntegerField
      FieldName = 'PATIENT_HEALTH_PLAN_ID'
    end
    object CDSLogDRUG_ID: TIntegerField
      FieldName = 'DRUG_ID'
    end
    object CDSLogPOS_RX: TStringField
      FieldName = 'POS_RX'
      FixedChar = True
      Size = 1
    end
    object CDSLogTRANSACTIONNUMBER: TIntegerField
      FieldName = 'TRANSACTIONNUMBER'
    end
    object CDSLogCONTROLLED: TBooleanField
      FieldName = 'CONTROLLED'
    end
    object CDSLogSUCCESSFUL: TBooleanField
      FieldName = 'SUCCESSFUL'
    end
    object CDSLogUSUARIO_DEFINE: TStringField
      FieldKind = fkLookup
      FieldName = 'USUARIO_DEFINE'
      LookupDataSet = CDSPasswords
      LookupKeyFields = 'INICIALES'
      LookupResultField = 'USERNAME'
      KeyFields = 'USUARIO'
      Size = 35
      Lookup = True
    end
    object CDSLogNOTE: TWideMemoField
      FieldName = 'NOTE'
      BlobType = ftWideMemo
      Size = 1073741823
    end
  end
  object CDSDailyTotals: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DSPDailyTotals'
    AfterInsert = CDSDailyTotalsAfterInsert
    AfterPost = CDSDailyTotalsAfterDelete
    BeforeDelete = CDSDailyTotalsBeforeDelete
    AfterDelete = CDSDailyTotalsAfterDelete
    OnCalcFields = CDSDailyTotalsCalcFields
    Left = 432
    Top = 72
    object CDSDailyTotalsID: TAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object CDSDailyTotalsCASHCOUNT: TFMTBCDField
      FieldName = 'CASHCOUNT'
      Origin = 'CASHCOUNT'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsCASHREAD: TFMTBCDField
      FieldName = 'CASHREAD'
      Origin = 'CASHREAD'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsCHECKCOUNT: TFMTBCDField
      FieldName = 'CHECKCOUNT'
      Origin = 'CHECKCOUNT'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsCHECKREAD: TFMTBCDField
      FieldName = 'CHECKREAD'
      Origin = 'CHECKREAD'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsCCARDCOUNT: TFMTBCDField
      FieldName = 'CCARDCOUNT'
      Origin = 'CCARDCOUNT'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsCCARDREAD: TFMTBCDField
      FieldName = 'CCARDREAD'
      Origin = 'CCARDREAD'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsATHCOUNT: TFMTBCDField
      FieldName = 'ATHCOUNT'
      Origin = 'ATHCOUNT'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsATHREAD: TFMTBCDField
      FieldName = 'ATHREAD'
      Origin = 'ATHREAD'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsWICCOUNT: TFMTBCDField
      FieldName = 'WICCOUNT'
      Origin = 'WICCOUNT'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsWICREAD: TFMTBCDField
      FieldName = 'WICREAD'
      Origin = 'WICREAD'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsPOCOUNT: TFMTBCDField
      FieldName = 'POCOUNT'
      Origin = 'POCOUNT'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsPOREAD: TFMTBCDField
      FieldName = 'POREAD'
      Origin = 'POREAD'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsOTHERCOUNT: TFMTBCDField
      FieldName = 'OTHERCOUNT'
      Origin = 'OTHERCOUNT'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsOTHERREAD: TFMTBCDField
      FieldName = 'OTHERREAD'
      Origin = 'OTHERREAD'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsSTARTBANK: TFMTBCDField
      FieldName = 'STARTBANK'
      Origin = 'STARTBANK'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsPAYOUTCOUNT: TFMTBCDField
      FieldName = 'PAYOUTCOUNT'
      Origin = 'PAYOUTCOUNT'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsPAYOUTREAD: TFMTBCDField
      FieldName = 'PAYOUTREAD'
      Origin = 'PAYOUTREAD'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsFAMREAD: TFMTBCDField
      FieldName = 'FAMREAD'
      Origin = 'FAMREAD'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsFAMCOUNT: TFMTBCDField
      FieldName = 'FAMCOUNT'
      Origin = 'FAMCOUNT'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsCRPAYREAD: TFMTBCDField
      FieldName = 'CRPAYREAD'
      Origin = 'CRPAYREAD'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsCRPAYCOUNT: TFMTBCDField
      FieldName = 'CRPAYCOUNT'
      Origin = 'CRPAYCOUNT'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsWICPAYCOUNT: TFMTBCDField
      FieldName = 'WICPAYCOUNT'
      Origin = 'WICPAYCOUNT'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsWICPAYREAD: TFMTBCDField
      FieldName = 'WICPAYREAD'
      Origin = 'WICPAYREAD'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsWICCRCOUNT: TFMTBCDField
      FieldName = 'WICCRCOUNT'
      Origin = 'WICCRCOUNT'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsWICCRREAD: TFMTBCDField
      FieldName = 'WICCRREAD'
      Origin = 'WICCRREAD'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsLOTOREAD: TFMTBCDField
      FieldName = 'LOTOREAD'
      Origin = 'LOTOREAD'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsLOTOCOUNT: TFMTBCDField
      FieldName = 'LOTOCOUNT'
      Origin = 'LOTOCOUNT'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsCOMMENTS: TStringField
      FieldName = 'COMMENTS'
      Origin = 'COMMENTS'
      Size = 80
    end
    object CDSDailyTotalsSALESDATE: TSQLTimeStampField
      FieldName = 'SALESDATE'
      Origin = 'SALESDATE'
      Required = True
    end
    object CDSDailyTotalsEMPLOYNUMBER: TStringField
      FieldName = 'EMPLOYNUMBER'
      Origin = 'EMPLOYNUMBER'
      Required = True
      Size = 3
    end
    object CDSDailyTotalsSHIFT: TSmallintField
      FieldName = 'SHIFT'
      Origin = 'SHIFT'
      Required = True
    end
    object CDSDailyTotalsREGISTER: TIntegerField
      FieldName = 'REGISTER'
      Origin = 'REGISTER'
      Required = True
    end
    object CDSDailyTotalsREFUNDREAD: TFMTBCDField
      FieldName = 'REFUNDREAD'
      Origin = 'REFUNDREAD'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsSALESTIME: TSQLTimeStampField
      FieldName = 'SALESTIME'
      Origin = 'SALESTIME'
    end
    object CDSDailyTotalsUTILITYREAD: TFMTBCDField
      FieldName = 'UTILITYREAD'
      Origin = 'UTILITYREAD'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsSALESDATE_END: TSQLTimeStampField
      FieldName = 'SALESDATE_END'
      Origin = 'SALESDATE_END'
    end
    object CDSDailyTotalsSTATUS_CUADRE: TStringField
      FieldName = 'STATUS_CUADRE'
      Origin = 'STATUS_CUADRE'
      FixedChar = True
      Size = 1
    end
    object CDSDailyTotalsSTATUS_CAJA: TStringField
      FieldName = 'STATUS_CAJA'
      Origin = 'STATUS_CAJA'
      FixedChar = True
      Size = 1
    end
    object CDSDailyTotalsTAX_ESTATAL: TFMTBCDField
      FieldName = 'TAX_ESTATAL'
      Origin = 'TAX_ESTATAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsTAX_MUNICIPAL: TFMTBCDField
      FieldName = 'TAX_MUNICIPAL'
      Origin = 'TAX_MUNICIPAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsTAX_SERVICIO: TFMTBCDField
      FieldName = 'TAX_SERVICIO'
      Origin = 'TAX_SERVICIO'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsTOTAL_READ: TFMTBCDField
      FieldName = 'TOTAL_READ'
      Origin = 'TOTAL_READ'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsDIFFERENCE_AMOUNT: TFMTBCDField
      FieldName = 'DIFFERENCE_AMOUNT'
      Origin = 'DIFFERENCE_AMOUNT'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsTOTAL_COUNT: TFMTBCDField
      FieldName = 'TOTAL_COUNT'
      Origin = 'TOTAL_COUNT'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsATHMCOUNT: TFMTBCDField
      FieldName = 'ATHMCOUNT'
      Origin = 'ATHMCOUNT'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsATHMREAD: TFMTBCDField
      FieldName = 'ATHMREAD'
      Origin = 'ATHMREAD'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsTIPSREAD: TFMTBCDField
      FieldName = 'TIPSREAD'
      Origin = 'TIPSREAD'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsTAX_PROCESSED_FOOD: TFMTBCDField
      FieldName = 'TAX_PROCESSED_FOOD'
      Origin = 'TAX_PROCESSED_FOOD'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsEMPLEADO: TStringField
      FieldKind = fkLookup
      FieldName = 'EMPLEADO'
      LookupDataSet = CDSPasswords
      LookupKeyFields = 'INICIALES'
      LookupResultField = 'USERNAME'
      KeyFields = 'EMPLOYNUMBER'
      Size = 45
      Lookup = True
    end
    object CDSDailyTotalsDIFF: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DIFF'
      currency = True
      Calculated = True
    end
    object CDSDailyTotalsOVRSHORT: TStringField
      FieldKind = fkCalculated
      FieldName = 'OVRSHORT'
      Size = 5
      Calculated = True
    end
    object CDSDailyTotalsSTATUS_CAJA_DEFINED: TStringField
      FieldKind = fkCalculated
      FieldName = 'STATUS_CAJA_DEFINED'
      Size = 6
      Calculated = True
    end
    object CDSDailyTotalsSTATUS_CUADRE_DEFINED: TStringField
      FieldKind = fkCalculated
      FieldName = 'STATUS_CUADRE_DEFINED'
      Size = 6
      Calculated = True
    end
    object CDSDailyTotalsTRIPLESREAD: TFMTBCDField
      FieldName = 'TRIPLESREAD'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsPAYPALREAD: TFMTBCDField
      FieldName = 'PAYPALREAD'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsPAYPALCOUNT: TFMTBCDField
      FieldName = 'PAYPALCOUNT'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsCASHBACK: TFMTBCDField
      FieldName = 'CASHBACK'
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsUTILITY_CASH_READ: TFMTBCDField
      FieldName = 'UTILITY_CASH_READ'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDailyTotalsEND_OF_DAY: TBooleanField
      FieldName = 'END_OF_DAY'
    end
    object CDSDailyTotalsEND_OF_DAY_COMPLETED: TBooleanField
      FieldName = 'END_OF_DAY_COMPLETED'
    end
    object CDSDailyTotalsEOD_LINK: TIntegerField
      FieldName = 'EOD_LINK'
    end
  end
  object DSPDailyTotals: TDataSetProvider
    DataSet = QDailytotalsFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 384
    Top = 72
  end
  object DSPUtilities: TDataSetProvider
    DataSet = QUtilitiesFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 384
    Top = 128
  end
  object DSUtilities: TDataSource
    DataSet = CDSUtilities
    Left = 328
    Top = 128
  end
  object CDSUtilities: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPUtilities'
    AfterInsert = CDSUtilitiesAfterInsert
    Left = 432
    Top = 128
    object CDSUtilitiesNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
    end
    object CDSUtilitiesCHARGE_AMNT: TSingleField
      FieldName = 'CHARGE_AMNT'
      Origin = 'CHARGE_AMNT'
      Required = True
      DisplayFormat = '#.00'
    end
    object CDSUtilitiesCHARGE_PER: TSingleField
      FieldName = 'CHARGE_PER'
      Origin = 'CHARGE_PER'
      Required = True
      DisplayFormat = '#.00'
    end
    object CDSUtilitiesUTILITY_ID: TIntegerField
      FieldName = 'UTILITY_ID'
      Origin = 'UTILITY_ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object CDSUtilitiesBARCODE: TStringField
      FieldName = 'BARCODE'
      Origin = 'BARCODE'
      FixedChar = True
      Size = 15
    end
    object CDSUtilitiesTAXABLE: TStringField
      FieldName = 'TAXABLE'
      FixedChar = True
      Size = 1
    end
  end
  object DSPSetup: TDataSetProvider
    DataSet = QSetupFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 384
    Top = 176
  end
  object CDSSetup: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSetup'
    AfterPost = CDSSetupAfterDelete
    AfterDelete = CDSSetupAfterDelete
    Left = 432
    Top = 176
    object CDSSetupROUTINGDATA: TStringField
      FieldName = 'ROUTINGDATA'
      Origin = 'ROUTINGDATA'
    end
    object CDSSetupMODEMCOMPORT: TIntegerField
      FieldName = 'MODEMCOMPORT'
      Origin = 'MODEMCOMPORT'
    end
    object CDSSetupSTORENAME: TStringField
      FieldName = 'STORENAME'
      Origin = 'STORENAME'
      Size = 30
    end
    object CDSSetupSTORETELEPHONE: TStringField
      FieldName = 'STORETELEPHONE'
      Origin = 'STORETELEPHONE'
      Size = 13
    end
    object CDSSetupSTOREADDRESS: TStringField
      FieldName = 'STOREADDRESS'
      Origin = 'STOREADDRESS'
      Size = 50
    end
    object CDSSetupFACTURARECIBO: TStringField
      FieldName = 'FACTURARECIBO'
      Origin = 'FACTURARECIBO'
      Size = 1
    end
    object CDSSetupSETTLEMENTBANKID: TStringField
      FieldName = 'SETTLEMENTBANKID'
      Origin = 'SETTLEMENTBANKID'
      Size = 6
    end
    object CDSSetupCHEQUE: TIntegerField
      FieldName = 'CHEQUE'
      Origin = 'CHEQUE'
    end
    object CDSSetupTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Origin = 'TELEFONO'
      Size = 12
    end
    object CDSSetupDOSWINDOWS: TStringField
      FieldName = 'DOSWINDOWS'
      Origin = 'DOSWINDOWS'
      Size = 1
    end
    object CDSSetupPOLEDISPLAYCOMPORT: TIntegerField
      FieldName = 'POLEDISPLAYCOMPORT'
      Origin = 'POLEDISPLAYCOMPORT'
    end
    object CDSSetupHEADING: TStringField
      FieldName = 'HEADING'
      Origin = 'HEADING'
      Size = 1
    end
    object CDSSetupSTOREZIPCODE: TStringField
      FieldName = 'STOREZIPCODE'
      Origin = 'STOREZIPCODE'
      Size = 5
    end
    object CDSSetupPOLEDISPLAYMESSAGE: TStringField
      FieldName = 'POLEDISPLAYMESSAGE'
      Origin = 'POLEDISPLAYMESSAGE'
      Size = 60
    end
    object CDSSetupLABELLONGFORM: TStringField
      FieldName = 'LABELLONGFORM'
      Origin = 'LABELLONGFORM'
      Size = 1
    end
    object CDSSetupFARMACIA: TStringField
      FieldName = 'FARMACIA'
      Origin = 'FARMACIA'
      Size = 1
    end
    object CDSSetupSEARCHBY: TStringField
      FieldName = 'SEARCHBY'
      Origin = 'SEARCHBY'
      Size = 1
    end
    object CDSSetupNOCAJA: TIntegerField
      FieldName = 'NOCAJA'
      Origin = 'NOCAJA'
    end
    object CDSSetupRXNOCONTINUO: TStringField
      FieldName = 'RXNOCONTINUO'
      Origin = 'RXNOCONTINUO'
      Size = 1
    end
    object CDSSetupSTORENAMEHEADING: TStringField
      FieldName = 'STORENAMEHEADING'
      Origin = 'STORENAMEHEADING'
      Size = 30
    end
    object CDSSetupSTOREADDRESSHEADING: TStringField
      FieldName = 'STOREADDRESSHEADING'
      Origin = 'STOREADDRESSHEADING'
      Size = 50
    end
    object CDSSetupSTOREPHONEHEADING: TStringField
      FieldName = 'STOREPHONEHEADING'
      Origin = 'STOREPHONEHEADING'
      Size = 12
    end
    object CDSSetupPUEBLO: TStringField
      FieldName = 'PUEBLO'
      Origin = 'PUEBLO'
      Size = 30
    end
    object CDSSetupINTERACCION: TStringField
      FieldName = 'INTERACCION'
      Origin = 'INTERACCION'
      Size = 10
    end
    object CDSSetupMESSAGEID: TStringField
      FieldName = 'MESSAGEID'
      Origin = 'MESSAGEID'
      Size = 1
    end
    object CDSSetupVERSIONCOL: TStringField
      FieldName = 'VERSIONCOL'
      Origin = 'VERSIONCOL'
      Size = 2
    end
    object CDSSetupBANKID: TStringField
      FieldName = 'BANKID'
      Origin = 'BANKID'
      Size = 6
    end
    object CDSSetupMERCHANTID: TStringField
      FieldName = 'MERCHANTID'
      Origin = 'MERCHANTID'
      Size = 15
    end
    object CDSSetupTERMINALTYPE: TStringField
      FieldName = 'TERMINALTYPE'
      Origin = 'TERMINALTYPE'
      Size = 3
    end
    object CDSSetupNUMERO_TRANS: TIntegerField
      FieldName = 'NUMERO_TRANS'
      Origin = 'NUMERO_TRANS'
      Required = True
    end
    object CDSSetupESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object CDSSetupMENSAGE: TStringField
      FieldName = 'MENSAGE'
      Origin = 'MENSAGE'
      FixedChar = True
      Size = 50
    end
    object CDSSetupNEXT_BARCODE: TStringField
      FieldName = 'NEXT_BARCODE'
      Origin = 'NEXT_BARCODE'
      Required = True
      FixedChar = True
      Size = 12
    end
    object CDSSetupDATA_COLECTOR_COLUMNS: TIntegerField
      FieldName = 'DATA_COLECTOR_COLUMNS'
      Origin = 'DATA_COLECTOR_COLUMNS'
    end
    object CDSSetupPORCIENTO_AWP: TSingleField
      FieldName = 'PORCIENTO_AWP'
      Origin = 'PORCIENTO_AWP'
      Required = True
    end
    object CDSSetupNO_FARMACIA: TIntegerField
      FieldName = 'NO_FARMACIA'
      Origin = 'NO_FARMACIA'
    end
    object CDSSetupTAX_RATE: TFloatField
      FieldName = 'TAX_RATE'
      Origin = 'TAX_RATE'
    end
    object CDSSetupTAX_RATE_FROM: TFloatField
      FieldName = 'TAX_RATE_FROM'
      Origin = 'TAX_RATE_FROM'
    end
    object CDSSetupTAX_RATE_ESTATAL: TFloatField
      FieldName = 'TAX_RATE_ESTATAL'
      Origin = 'TAX_RATE_ESTATAL'
    end
    object CDSSetupCOBRAR_OTC_TAX: TStringField
      FieldName = 'COBRAR_OTC_TAX'
      Origin = 'COBRAR_OTC_TAX'
      FixedChar = True
      Size = 1
    end
    object CDSSetupNABP: TWideStringField
      FieldName = 'NABP'
      Origin = 'NABP'
      FixedChar = True
      Size = 7
    end
    object CDSSetupIVULOTO_MERCHANT_ID: TStringField
      FieldName = 'IVULOTO_MERCHANT_ID'
      Origin = 'IVULOTO_MERCHANT_ID'
      Size = 15
    end
    object CDSSetupIVULOTO_PASSWORD: TStringField
      FieldName = 'IVULOTO_PASSWORD'
      Origin = 'IVULOTO_PASSWORD'
      Size = 15
    end
    object CDSSetupPORCIENTO_PATROCINIO: TFloatField
      FieldName = 'PORCIENTO_PATROCINIO'
      Origin = 'PORCIENTO_PATROCINIO'
    end
    object CDSSetupWC_STOP_TAG_SEARCH_INTERVAL: TIntegerField
      FieldName = 'WC_STOP_TAG_SEARCH_INTERVAL'
      Origin = 'WC_STOP_TAG_SEARCH_INTERVAL'
      Required = True
    end
    object CDSSetupPOS_SHOW_RX_SIGNATURE: TBooleanField
      FieldName = 'POS_SHOW_RX_SIGNATURE'
      Origin = 'POS_SHOW_RX_SIGNATURE'
    end
    object CDSSetupPOS_SIGNATURE_PASSWORD: TBooleanField
      FieldName = 'POS_SIGNATURE_PASSWORD'
      Origin = 'POS_SIGNATURE_PASSWORD'
    end
    object CDSSetupCOSTO_CALCULADO: TBooleanField
      FieldName = 'COSTO_CALCULADO'
      Origin = 'COSTO_CALCULADO'
    end
    object CDSSetupSALESTECH_STAND_ALONE: TBooleanField
      FieldName = 'SALESTECH_STAND_ALONE'
      Origin = 'SALESTECH_STAND_ALONE'
    end
    object CDSSetupCONFIRM_OPEN_REGISTER: TBooleanField
      FieldName = 'CONFIRM_OPEN_REGISTER'
      Origin = 'CONFIRM_OPEN_REGISTER'
    end
    object CDSSetupCD_TERMINAL_ID: TStringField
      FieldName = 'CD_TERMINAL_ID'
      Origin = 'CD_TERMINAL_ID'
      FixedChar = True
      Size = 10
    end
    object CDSSetupCD_MERCHANT_ID: TStringField
      FieldName = 'CD_MERCHANT_ID'
      Origin = 'CD_MERCHANT_ID'
      FixedChar = True
      Size = 15
    end
    object CDSSetupCD_SERVER_IP: TStringField
      FieldName = 'CD_SERVER_IP'
      Origin = 'CD_SERVER_IP'
      FixedChar = True
      Size = 30
    end
    object CDSSetupCD_SECUREDEVICE_EMV: TStringField
      FieldName = 'CD_SECUREDEVICE_EMV'
      Origin = 'CD_SECUREDEVICE_EMV'
      FixedChar = True
      Size = 30
    end
    object CDSSetupCD_SECURE_DEVICE: TStringField
      FieldName = 'CD_SECURE_DEVICE'
      Origin = 'CD_SECURE_DEVICE'
      FixedChar = True
      Size = 30
    end
    object CDSSetupCD_PINPAD_TYPE: TStringField
      FieldName = 'CD_PINPAD_TYPE'
      Origin = 'CD_PINPAD_TYPE'
      FixedChar = True
      Size = 30
    end
    object CDSSetupCD_LOG_ACTIVATION: TBooleanField
      FieldName = 'CD_LOG_ACTIVATION'
      Origin = 'CD_LOG_ACTIVATION'
    end
    object CDSSetupCD_COMUNICATION_PORT: TStringField
      FieldName = 'CD_COMUNICATION_PORT'
      Origin = 'CD_COMUNICATION_PORT'
      FixedChar = True
      Size = 2
    end
    object CDSSetupCD_ACTIVE: TBooleanField
      FieldName = 'CD_ACTIVE'
      Origin = 'CD_ACTIVE'
    end
    object CDSSetupPOS_IMPORT_SIGNATURE: TBooleanField
      FieldName = 'POS_IMPORT_SIGNATURE'
      Origin = 'POS_IMPORT_SIGNATURE'
    end
    object CDSSetupPOS_INCLUDE_BATCH: TBooleanField
      FieldName = 'POS_INCLUDE_BATCH'
      Origin = 'POS_INCLUDE_BATCH'
    end
    object CDSSetupSP_SELECTALL: TBooleanField
      FieldName = 'SP_SELECTALL'
      Origin = 'SP_SELECTALL'
    end
    object CDSSetupPOS_RESTAURANT: TBooleanField
      FieldName = 'POS_RESTAURANT'
      Origin = 'POS_RESTAURANT'
    end
    object CDSSetupPOS_INSERT_NEW_PRODUCT: TBooleanField
      FieldName = 'POS_INSERT_NEW_PRODUCT'
      Origin = 'POS_INSERT_NEW_PRODUCT'
    end
    object CDSSetupLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'LOGO'
    end
    object CDSSetupID: TAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object CDSSetupPOS_ADD_QTY: TBooleanField
      FieldName = 'POS_ADD_QTY'
      Origin = 'POS_ADD_QTY'
    end
    object CDSSetupADDRESS2: TWideStringField
      FieldName = 'ADDRESS2'
      Origin = 'ADDRESS2'
      FixedChar = True
      Size = 35
    end
    object CDSSetupPOS_CLASIC_PETTYCASH: TBooleanField
      FieldName = 'POS_CLASIC_PETTYCASH'
      Origin = 'POS_CLASIC_PETTYCASH'
    end
    object CDSSetupPOS_PRINT_LOGO: TBooleanField
      FieldName = 'POS_PRINT_LOGO'
      Origin = 'POS_PRINT_LOGO'
    end
    object CDSSetupPOS_REST_ALWAYSLOGOUT: TBooleanField
      FieldName = 'POS_REST_ALWAYSLOGOUT'
      Origin = 'POS_REST_ALWAYSLOGOUT'
    end
    object CDSSetupPOS_USER_INDIVIDUAL_BALANCING: TBooleanField
      FieldName = 'POS_USER_INDIVIDUAL_BALANCING'
      Origin = 'POS_USER_INDIVIDUAL_BALANCING'
    end
    object CDSSetupPOS_ACTIVE_TIP: TBooleanField
      FieldName = 'POS_ACTIVE_TIP'
      Origin = 'POS_ACTIVE_TIP'
    end
    object CDSSetupAUTOMOVIL_APP: TBooleanField
      FieldName = 'AUTOMOVIL_APP'
      Origin = 'AUTOMOVIL_APP'
    end
    object CDSSetupTIP_PERCENTAGE1: TFMTBCDField
      FieldName = 'TIP_PERCENTAGE1'
      Origin = 'TIP_PERCENTAGE1'
      Precision = 18
      Size = 2
    end
    object CDSSetupTIP_PERCENTAGE2: TFMTBCDField
      FieldName = 'TIP_PERCENTAGE2'
      Origin = 'TIP_PERCENTAGE2'
      Precision = 18
      Size = 2
    end
    object CDSSetupTIP_PERCENTAGE3: TFMTBCDField
      FieldName = 'TIP_PERCENTAGE3'
      Origin = 'TIP_PERCENTAGE3'
      Precision = 18
      Size = 2
    end
    object CDSSetupCOMMISSION1: TFMTBCDField
      FieldName = 'COMMISSION1'
      Origin = 'COMMISSION1'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSSetupCOMMISSION2: TFMTBCDField
      FieldName = 'COMMISSION2'
      Origin = 'COMMISSION2'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSSetupCOMMISSION3: TFMTBCDField
      FieldName = 'COMMISSION3'
      Origin = 'COMMISSION3'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSSetupACTIVE_COMMISSIONS: TBooleanField
      FieldName = 'ACTIVE_COMMISSIONS'
      Origin = 'ACTIVE_COMMISSIONS'
    end
    object CDSSetupTAX_PROCESSED_FOOD: TFMTBCDField
      FieldName = 'TAX_PROCESSED_FOOD'
      Precision = 18
      Size = 2
    end
    object CDSSetupRECEIPT_MESSAGE: TMemoField
      FieldName = 'RECEIPT_MESSAGE'
      BlobType = ftMemo
      Size = 2147483647
    end
    object CDSSetupPOS_APP_OPEN_DRAWER: TBooleanField
      FieldName = 'POS_APP_OPEN_DRAWER'
    end
    object CDSSetupMYREFILL_UPDATE_SMARTPICKUP: TBooleanField
      FieldName = 'MYREFILL_UPDATE_SMARTPICKUP'
    end
    object CDSSetupCLASSIC_LOGIN: TBooleanField
      FieldName = 'CLASSIC_LOGIN'
    end
    object CDSSetupSSSOTC_StoreKey: TWideStringField
      FieldName = 'SSSOTC_StoreKey'
      FixedChar = True
      Size = 50
    end
    object CDSSetupSSSOTC_APIKey: TWideStringField
      FieldName = 'SSSOTC_APIKey'
      FixedChar = True
      Size = 50
    end
    object CDSSetupCOMPLEX_SEARCH: TBooleanField
      FieldName = 'COMPLEX_SEARCH'
    end
    object CDSSetupRX_ENFORCE_SIGNATURE_ONCHECKOUT: TBooleanField
      FieldName = 'RX_ENFORCE_SIGNATURE_ONCHECKOUT'
    end
    object CDSSetupPERMIT_ZERO_MANUALSALE: TBooleanField
      FieldName = 'PERMIT_ZERO_MANUALSALE'
    end
    object CDSSetupQR_CODE: TBlobField
      FieldName = 'QR_CODE'
    end
    object CDSSetupBTN_PRINT_RECEIPT: TBooleanField
      FieldName = 'BTN_PRINT_RECEIPT'
    end
    object CDSSetupPRINT_BARCODE_PARTNUMBER: TStringField
      FieldName = 'PRINT_BARCODE_PARTNUMBER'
      FixedChar = True
      Size = 1
    end
    object CDSSetupemail: TWideStringField
      FieldName = 'email'
      FixedChar = True
      Size = 80
    end
    object CDSSetupSIGPLUS: TWideStringField
      FieldName = 'SIGPLUS'
      FixedChar = True
      Size = 10
    end
    object CDSSetupemail_carbon_copy: TBooleanField
      FieldName = 'email_carbon_copy'
    end
    object CDSSetupPERMIT_ZERO_ANYSALE: TBooleanField
      FieldName = 'PERMIT_ZERO_ANYSALE'
    end
    object CDSSetupmax_cashback: TFMTBCDField
      FieldName = 'max_cashback'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSSetupRX_ENFORCERXCHECK_ONCHECKOUT: TBooleanField
      FieldName = 'RX_ENFORCERXCHECK_ONCHECKOUT'
    end
    object CDSSetupNON_WESCOM_STORE: TBooleanField
      FieldName = 'NON_WESCOM_STORE'
      Required = True
    end
    object CDSSetupWC_INTERFACE: TWideStringField
      FieldName = 'WC_INTERFACE'
      FixedChar = True
    end
    object CDSSetupWC_INTERFACE_HOST: TWideStringField
      FieldName = 'WC_INTERFACE_HOST'
      FixedChar = True
      Size = 15
    end
    object CDSSetupWC_INTERFACE_PORT: TIntegerField
      FieldName = 'WC_INTERFACE_PORT'
    end
    object CDSSetupPOS_UPCSEARCH_ONLY: TBooleanField
      FieldName = 'POS_UPCSEARCH_ONLY'
    end
    object CDSSetupCOOPHARMA_PHARMACY_ID: TWideStringField
      FieldName = 'COOPHARMA_PHARMACY_ID'
      FixedChar = True
      Size = 10
    end
    object CDSSetupSETTLEMENT_AT_LOGOUT: TBooleanField
      FieldName = 'SETTLEMENT_AT_LOGOUT'
    end
    object CDSSetupVENDOR: TWideStringField
      FieldName = 'VENDOR'
      FixedChar = True
      Size = 10
    end
    object CDSSetupWF_OVERRIDE_CHECKED: TBooleanField
      FieldName = 'WF_OVERRIDE_CHECKED'
    end
    object CDSSetupSpinPosURL: TStringField
      FieldName = 'SpinPosURL'
      Required = True
      Size = 50
    end
  end
  object CDSTransferHistory: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPTransferHistory'
    Left = 688
    Top = 8
    object CDSTransferHistoryTRANSFERDATE: TSQLTimeStampField
      FieldName = 'TRANSFERDATE'
      Origin = 'TRANSFERDATE'
      Required = True
    end
    object CDSTransferHistoryPARTNER: TIntegerField
      FieldName = 'PARTNER'
      Origin = 'PARTNER'
      Required = True
    end
    object CDSTransferHistoryTRANSFERID: TIntegerField
      FieldName = 'TRANSFERID'
      Origin = 'TRANSFERID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object CDSTransferHistoryTRANSFERID_1: TIntegerField
      FieldName = 'TRANSFERID_1'
      Origin = 'TRANSFERID'
      Required = True
    end
    object CDSTransferHistoryPRODUCTO: TStringField
      FieldName = 'PRODUCTO'
      Origin = 'PRODUCTO'
      FixedChar = True
      Size = 45
    end
    object CDSTransferHistoryUPC: TStringField
      FieldName = 'UPC'
      Origin = 'UPC'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CDSTransferHistoryPARTNER_NAME: TStringField
      FieldKind = fkLookup
      FieldName = 'PARTNER_NAME'
      LookupDataSet = CDSPartners
      LookupKeyFields = 'PARTNERID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'PARTNER'
      Size = 40
      Lookup = True
    end
    object CDSTransferHistoryPRICE: TFMTBCDField
      FieldName = 'PRICE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSTransferHistoryCOSTSENT: TFMTBCDField
      FieldName = 'COSTSENT'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSTransferHistoryAWP: TFMTBCDField
      FieldName = 'AWP'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSTransferHistoryQTYRECEIVED: TFMTBCDField
      FieldName = 'QTYRECEIVED'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
  end
  object DPTransferHistory: TDataSetProvider
    DataSet = QTransferHistoryFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 632
    Top = 8
  end
  object CDSPOS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPPOS'
    Left = 688
    Top = 56
  end
  object DPPOS: TDataSetProvider
    DataSet = QPOSFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 632
    Top = 56
  end
  object DSTransShow: TDataSource
    DataSet = CDSTransShow
    Left = 584
    Top = 104
  end
  object DPTransShow: TDataSetProvider
    DataSet = QTransShow1FD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 640
    Top = 104
  end
  object CDSTransShow: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT * FROM TransactionDetail_Temp WHERE TransactionNumber= :T' +
      'ransactionNumber Order By IDNumber, MAIN_COURSE_ID'
    Params = <
      item
        DataType = ftInteger
        Name = 'TransactionNumber'
        ParamType = ptInput
      end>
    ProviderName = 'DPTransShow'
    AfterInsert = CDSTransShowAfterInsert
    AfterPost = CDSTransShowAfterPost
    AfterDelete = CDSTransShowAfterPost
    OnCalcFields = CDSTransShowCalcFields
    Left = 688
    Top = 104
    object CDSTransShowIDNUMBER: TAutoIncField
      FieldName = 'IDNUMBER'
      Origin = 'IDNUMBER'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object CDSTransShowTRANSACTIONNUMBER: TIntegerField
      FieldName = 'TRANSACTIONNUMBER'
      Origin = 'TRANSACTIONNUMBER'
      Required = True
    end
    object CDSTransShowUPC: TStringField
      DisplayWidth = 14
      FieldName = 'UPC'
      Origin = 'UPC'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CDSTransShowVOIDED: TIntegerField
      FieldName = 'VOIDED'
      Origin = 'VOIDED'
      Required = True
    end
    object CDSTransShowSUBDETAIL: TStringField
      FieldName = 'SUBDETAIL'
      Origin = 'SUBDETAIL'
      FixedChar = True
      Size = 10
    end
    object CDSTransShowPRODDESCRIPTION: TStringField
      FieldName = 'PRODDESCRIPTION'
      Origin = 'PRODDESCRIPTION'
      FixedChar = True
      Size = 30
    end
    object CDSTransShowPRODDEPARTMENT: TStringField
      FieldName = 'PRODDEPARTMENT'
      Origin = 'PRODDEPARTMENT'
      FixedChar = True
    end
    object CDSTransShowFOOD: TStringField
      FieldName = 'FOOD'
      Origin = 'FOOD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSTransShowMODIFIED: TSmallintField
      FieldName = 'MODIFIED'
      Origin = 'MODIFIED'
      Required = True
    end
    object CDSTransShowFECHAVENTA: TSQLTimeStampField
      FieldName = 'FECHAVENTA'
      Origin = 'FECHAVENTA'
      Required = True
    end
    object CDSTransShowSUPLIDOR: TIntegerField
      FieldName = 'SUPLIDOR'
      Origin = 'SUPLIDOR'
      Required = True
    end
    object CDSTransShowID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object CDSTransShowPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
      Origin = 'PRODUCTNO'
    end
    object CDSTransShowTAX_ESTATAL: TStringField
      FieldName = 'TAX_ESTATAL'
      Origin = 'TAX_ESTATAL'
      FixedChar = True
      Size = 1
    end
    object CDSTransShowTAX_MUNICIPAL: TStringField
      FieldName = 'TAX_MUNICIPAL'
      Origin = 'TAX_MUNICIPAL'
      Size = 1
    end
    object CDSTransShowQTY: TFloatField
      FieldName = 'QTY'
      Origin = 'QTY'
      DisplayFormat = '#.00'
    end
    object CDSTransShowOPENED: TStringField
      FieldName = 'OPENED'
      Origin = 'OPENED'
      Size = 1
    end
    object CDSTransShowGROUP_PROD: TStringField
      FieldName = 'GROUP_PROD'
      Origin = 'GROUP_PROD'
      Size = 1
    end
    object CDSTransShowREGISTER: TSmallintField
      FieldName = 'REGISTER'
      Origin = 'REGISTER'
    end
    object CDSTransShowSUPERVISOR: TStringField
      FieldName = 'SUPERVISOR'
      Origin = 'SUPERVISOR'
      Size = 3
    end
    object CDSTransShowPATROCINIO: TSmallintField
      FieldName = 'PATROCINIO'
      Origin = 'PATROCINIO'
    end
    object CDSTransShowSUBDEPARTAMENTO: TSmallintField
      FieldName = 'SUBDEPARTAMENTO'
      Origin = 'SUBDEPARTAMENTO'
    end
    object CDSTransShowBARCODEALTERNO1: TWideStringField
      FieldName = 'BARCODEALTERNO1'
      Origin = 'BARCODEALTERNO1'
      FixedChar = True
    end
    object CDSTransShowBARCODEALTERNO2: TWideStringField
      FieldName = 'BARCODEALTERNO2'
      Origin = 'BARCODEALTERNO2'
      FixedChar = True
    end
    object CDSTransShowBAG_NUMBER: TIntegerField
      FieldName = 'BAG_NUMBER'
      Origin = 'BAG_NUMBER'
    end
    object CDSTransShowUTILIDAD: TBooleanField
      FieldName = 'UTILIDAD'
      Origin = 'UTILIDAD'
    end
    object CDSTransShowOTC_NUMBER: TIntegerField
      FieldName = 'OTC_NUMBER'
      Origin = 'OTC_NUMBER'
    end
    object CDSTransShowTRANS_TIME: TSQLTimeStampField
      FieldName = 'TRANS_TIME'
      Origin = 'TRANS_TIME'
    end
    object CDSTransShowTAX_SERVICIO: TBooleanField
      FieldName = 'TAX_SERVICIO'
      Origin = 'TAX_SERVICIO'
    end
    object CDSTransShowNOTE: TWideStringField
      FieldName = 'NOTE'
      Origin = 'NOTE'
      FixedChar = True
      Size = 30
    end
    object CDSTransShowKITCHEN: TBooleanField
      FieldName = 'KITCHEN'
      Origin = 'KITCHEN'
    end
    object CDSTransShowMAIN_COURSE_ID: TIntegerField
      FieldName = 'MAIN_COURSE_ID'
      Origin = 'MAIN_COURSE_ID'
    end
    object CDSTransShowMAIN_COURSE_DEFINE: TStringField
      FieldKind = fkCalculated
      FieldName = 'MAIN_COURSE_DEFINE'
      Size = 1
      Calculated = True
    end
    object CDSTransShowMAIN_COURSE: TBooleanField
      FieldName = 'MAIN_COURSE'
      Origin = 'MAIN_COURSE'
    end
    object CDSTransShowPRODDESC_DEFINE: TStringField
      FieldKind = fkCalculated
      FieldName = 'PRODDESC_DEFINE'
      Size = 46
      Calculated = True
    end
    object CDSTransShowTERMINO: TWideStringField
      FieldName = 'TERMINO'
      Origin = 'TERMINO'
      FixedChar = True
      Size = 15
    end
    object CDSTransShowTAB_SAVED: TBooleanField
      FieldName = 'TAB_SAVED'
      Origin = 'TAB_SAVED'
    end
    object CDSTransShowTAX: TFMTBCDField
      FieldName = 'TAX'
      Origin = 'TAX'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSTransShowCOSTO: TFMTBCDField
      FieldName = 'COSTO'
      Origin = 'COSTO'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSTransShowPRICE: TFMTBCDField
      FieldName = 'PRICE'
      Origin = 'PRICE'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransShowTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransShowREGTOTAL: TFMTBCDField
      FieldName = 'REGTOTAL'
      Origin = 'REGTOTAL'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSTransShowREGPRICE: TFMTBCDField
      FieldName = 'REGPRICE'
      Origin = 'REGPRICE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSTransShowAWP: TFMTBCDField
      FieldName = 'AWP'
      Origin = 'AWP'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSTransShowTOTAL_VALUE: TFMTBCDField
      FieldName = 'TOTAL_VALUE'
      Origin = 'TOTAL_VALUE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSTransShowDISCOUNT: TFMTBCDField
      FieldName = 'DISCOUNT'
      Origin = 'DISCOUNT'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSTransShowTRIPLES_PRODUCT: TBooleanField
      FieldName = 'TRIPLES_PRODUCT'
    end
    object CDSTransShowTRIPLES_COVERED: TBooleanField
      FieldName = 'TRIPLES_COVERED'
    end
    object CDSTransShowpseudo: TBooleanField
      FieldName = 'pseudo'
    end
    object CDSTransShowpep_spray: TBooleanField
      FieldName = 'pep_spray'
    end
    object CDSTransShowALWDISC: TBooleanField
      FieldName = 'ALWDISC'
    end
    object CDSTransShowOTCCard: TBooleanField
      FieldName = 'OTCCard'
    end
    object CDSTransShowFSA: TBooleanField
      FieldName = 'FSA'
    end
    object CDSTransShowDISCOUNT_PERCENTAGE: TFMTBCDField
      FieldName = 'DISCOUNT_PERCENTAGE'
      Precision = 18
      Size = 2
    end
    object CDSTransShowSALES_PROMO: TBooleanField
      FieldName = 'SALES_PROMO'
    end
  end
  object CDSOrderDetailHistory: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPOrderDetailHistory'
    Left = 432
    Top = 232
    object CDSOrderDetailHistoryORDERDATE: TSQLTimeStampField
      FieldName = 'ORDERDATE'
      Origin = 'ORDERDATE'
      Required = True
    end
    object CDSOrderDetailHistorySUPPLIER: TIntegerField
      FieldName = 'SUPPLIER'
      Origin = 'SUPPLIER'
      Required = True
    end
    object CDSOrderDetailHistoryORDERID: TIntegerField
      FieldName = 'ORDERID'
      Origin = 'ORDERID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object CDSOrderDetailHistoryPO_NO: TStringField
      FieldName = 'PO_NO'
      Origin = 'PO_NO'
      FixedChar = True
      Size = 15
    end
    object CDSOrderDetailHistoryORDERID_1: TIntegerField
      FieldName = 'ORDERID_1'
      Origin = 'ORDERID'
    end
    object CDSOrderDetailHistoryDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      FixedChar = True
      Size = 75
    end
    object CDSOrderDetailHistorySUPLIER_NAME: TStringField
      FieldKind = fkLookup
      FieldName = 'SUPLIER_NAME'
      LookupDataSet = CDSSuplidores
      LookupKeyFields = 'NUMEROSUPLIDOR'
      LookupResultField = 'SUPLIDOR'
      KeyFields = 'SUPPLIER'
      Size = 15
      Lookup = True
    end
    object CDSOrderDetailHistoryPRICE: TFMTBCDField
      FieldName = 'PRICE'
      Origin = 'PRICE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOrderDetailHistoryCOSTRECEIVED: TFMTBCDField
      FieldName = 'COSTRECEIVED'
      Origin = 'COSTRECEIVED'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOrderDetailHistoryCOSTORDERED: TFMTBCDField
      FieldName = 'COSTORDERED'
      Origin = 'COSTORDERED'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOrderDetailHistoryAWP: TFMTBCDField
      FieldName = 'AWP'
      Origin = 'AWP'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSOrderDetailHistoryQTYRECEIVED: TFMTBCDField
      FieldName = 'QTYRECEIVED'
      Origin = 'QTYRECEIVED'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
  end
  object DPOrderDetailHistory: TDataSetProvider
    DataSet = QOrderDetailHistoryFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 384
    Top = 232
  end
  object CDSPrintList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPPrintList'
    OnCalcFields = CDSPrintListCalcFields
    Left = 432
    Top = 392
    object CDSPrintListDEPARTMENT: TStringField
      FieldName = 'DEPARTMENT'
      Origin = 'DEPARTMENT'
    end
    object CDSPrintListDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 60
    end
    object CDSPrintListDISPCOST: TStringField
      FieldName = 'DISPCOST'
      Origin = 'DISPCOST'
      Size = 10
    end
    object CDSPrintListDISPPRICE: TStringField
      FieldName = 'DISPPRICE'
      Origin = 'DISPPRICE'
      Size = 10
    end
    object CDSPrintListSTARTDATE: TSQLTimeStampField
      FieldName = 'STARTDATE'
      Origin = 'STARTDATE'
      Required = True
    end
    object CDSPrintListENDDATE: TSQLTimeStampField
      FieldName = 'ENDDATE'
      Origin = 'ENDDATE'
    end
    object CDSPrintListREGPRICE: TStringField
      FieldName = 'REGPRICE'
      Origin = 'REGPRICE'
      Size = 10
    end
    object CDSPrintListPRODLISTID: TIntegerField
      FieldName = 'PRODLISTID'
      Origin = 'PRODLISTID'
      Required = True
    end
    object CDSPrintListUPC: TStringField
      FieldName = 'UPC'
      Origin = 'UPC'
      Size = 16
    end
    object CDSPrintListDispRegPrice: TStringField
      FieldKind = fkCalculated
      FieldName = 'DispRegPrice'
      Size = 30
      Calculated = True
    end
    object CDSPrintListDispSave: TStringField
      FieldKind = fkCalculated
      FieldName = 'DispSave'
      Size = 30
      Calculated = True
    end
    object CDSPrintListDispDuration: TStringField
      DisplayLabel = 'DispDuration'
      FieldKind = fkCalculated
      FieldName = 'Duration'
      Size = 50
      Calculated = True
    end
  end
  object DPPrintList: TDataSetProvider
    DataSet = QPrintListFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 384
    Top = 392
  end
  object DSDetail: TDataSource
    DataSet = CDSDetail
    Left = 328
    Top = 448
  end
  object DPDetail: TDataSetProvider
    DataSet = QDetailFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 384
    Top = 448
  end
  object CDSDetail: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT * FROM TransactionDetail  WHERE TransactionNumber = 100  ' +
      'Order By IDNumber'
    Params = <>
    ProviderName = 'DPDetail'
    Left = 432
    Top = 448
    object CDSDetailTRANSACTIONNUMBER: TIntegerField
      FieldName = 'TRANSACTIONNUMBER'
      Origin = 'TRANSACTIONNUMBER'
      Required = True
    end
    object CDSDetailUPC: TStringField
      FieldName = 'UPC'
      Origin = 'UPC'
      Required = True
      FixedChar = True
      Size = 13
    end
    object CDSDetailVOIDED: TIntegerField
      FieldName = 'VOIDED'
      Origin = 'VOIDED'
      Required = True
    end
    object CDSDetailSUBDETAIL: TStringField
      FieldName = 'SUBDETAIL'
      Origin = 'SUBDETAIL'
      FixedChar = True
      Size = 10
    end
    object CDSDetailPRODDESCRIPTION: TStringField
      FieldName = 'PRODDESCRIPTION'
      Origin = 'PRODDESCRIPTION'
      FixedChar = True
      Size = 30
    end
    object CDSDetailPRODDEPARTMENT: TStringField
      FieldName = 'PRODDEPARTMENT'
      Origin = 'PRODDEPARTMENT'
      FixedChar = True
    end
    object CDSDetailFOOD: TStringField
      FieldName = 'FOOD'
      Origin = 'FOOD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSDetailMODIFIED: TSmallintField
      FieldName = 'MODIFIED'
      Origin = 'MODIFIED'
      Required = True
    end
    object CDSDetailFECHAVENTA: TSQLTimeStampField
      FieldName = 'FECHAVENTA'
      Origin = 'FECHAVENTA'
      Required = True
    end
    object CDSDetailSUPLIDOR: TIntegerField
      FieldName = 'SUPLIDOR'
      Origin = 'SUPLIDOR'
      Required = True
    end
    object CDSDetailID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object CDSDetailPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
      Origin = 'PRODUCTNO'
    end
    object CDSDetailTAX_ESTATAL: TStringField
      FieldName = 'TAX_ESTATAL'
      Origin = 'TAX_ESTATAL'
      FixedChar = True
      Size = 1
    end
    object CDSDetailTAX_MUNICIPAL: TStringField
      FieldName = 'TAX_MUNICIPAL'
      Origin = 'TAX_MUNICIPAL'
      Size = 1
    end
    object CDSDetailQTY: TFloatField
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object CDSDetailOPENED: TStringField
      FieldName = 'OPENED'
      Origin = 'OPENED'
      Size = 1
    end
    object CDSDetailGROUP_PROD: TStringField
      FieldName = 'GROUP_PROD'
      Origin = 'GROUP_PROD'
      Size = 1
    end
    object CDSDetailREGISTER: TSmallintField
      FieldName = 'REGISTER'
      Origin = 'REGISTER'
    end
    object CDSDetailSUPERVISOR: TStringField
      FieldName = 'SUPERVISOR'
      Origin = 'SUPERVISOR'
      Size = 3
    end
    object CDSDetailPATROCINIO: TSmallintField
      FieldName = 'PATROCINIO'
      Origin = 'PATROCINIO'
    end
    object CDSDetailSUBDEPARTAMENTO: TSmallintField
      FieldName = 'SUBDEPARTAMENTO'
      Origin = 'SUBDEPARTAMENTO'
    end
    object CDSDetailIDNUMBER: TIntegerField
      FieldName = 'IDNUMBER'
      Origin = 'IDNUMBER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDetailMAIN_COURSE: TBooleanField
      FieldName = 'MAIN_COURSE'
      Origin = 'MAIN_COURSE'
    end
    object CDSDetailMAIN_COURSE_ID: TIntegerField
      FieldName = 'MAIN_COURSE_ID'
      Origin = 'MAIN_COURSE_ID'
    end
    object CDSDetailTERMINO: TWideStringField
      FieldName = 'TERMINO'
      Origin = 'TERMINO'
      FixedChar = True
      Size = 15
    end
    object CDSDetailTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDetailTAX: TFMTBCDField
      FieldName = 'TAX'
      Origin = 'TAX'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDetailCOSTO: TFMTBCDField
      FieldName = 'COSTO'
      Origin = 'COSTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDetailPRICE: TFMTBCDField
      FieldName = 'PRICE'
      Origin = 'PRICE'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDetailREGTOTAL: TFMTBCDField
      FieldName = 'REGTOTAL'
      Origin = 'REGTOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDetailREGPRICE: TFMTBCDField
      FieldName = 'REGPRICE'
      Origin = 'REGPRICE'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDetailAWP: TFMTBCDField
      FieldName = 'AWP'
      Origin = 'AWP'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDetailTOTAL_VALUE: TFMTBCDField
      FieldName = 'TOTAL_VALUE'
      Origin = 'TOTAL_VALUE'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDetailDISCOUNT: TFMTBCDField
      FieldName = 'DISCOUNT'
      Origin = 'DISCOUNT'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSDetailBARCODEALTERNO1: TWideStringField
      FieldName = 'BARCODEALTERNO1'
      FixedChar = True
    end
  end
  object DSClientTransactions: TDataSource
    DataSet = CDSClientTransactions
    Left = 328
    Top = 504
  end
  object DPClientTransactions: TDataSetProvider
    DataSet = QClientTransactionsFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 384
    Top = 504
  end
  object CDSClientTransactions: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPClientTransactions'
    AfterPost = CDSClientTransactionsAfterDelete
    AfterDelete = CDSClientTransactionsAfterDelete
    BeforeScroll = CDSClientTransactionsBeforeScroll
    AfterScroll = CDSClientTransactionsAfterScroll
    Left = 440
    Top = 504
    object CDSClientTransactionsCODE: TStringField
      FieldName = 'CODE'
      Origin = 'CODE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSClientTransactionsDATEOFTRANS: TSQLTimeStampField
      FieldName = 'DATEOFTRANS'
      Origin = 'DATEOFTRANS'
      Required = True
    end
    object CDSClientTransactionsATTENDEDBY: TStringField
      FieldName = 'ATTENDEDBY'
      Origin = 'ATTENDEDBY'
      Required = True
      FixedChar = True
      Size = 3
    end
    object CDSClientTransactionsCLIENTNO: TIntegerField
      FieldName = 'CLIENTNO'
      Origin = 'CLIENTNO'
      Required = True
    end
    object CDSClientTransactionsTRANSNO: TIntegerField
      FieldName = 'TRANSNO'
      Origin = 'TRANSNO'
      Required = True
    end
    object CDSClientTransactionsNO_SEGURO_SOCIAL: TStringField
      FieldName = 'NO_SEGURO_SOCIAL'
      Origin = 'NO_SEGURO_SOCIAL'
      FixedChar = True
      Size = 9
    end
    object CDSClientTransactionsAMOUNT: TFMTBCDField
      FieldName = 'AMOUNT'
      Origin = 'AMOUNT'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSClientTransactionsPAIDAMOUNT: TFMTBCDField
      FieldName = 'PAIDAMOUNT'
      Origin = 'PAIDAMOUNT'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSClientTransactionsBALANCE: TFMTBCDField
      FieldName = 'BALANCE'
      Origin = 'BALANCE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
  end
  object CDSClientTransLC: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select Sum(Amount) as TCR from ClientTransactions  where ClientN' +
      'o = :NC and Code = '#39'LC'#39
    Params = <
      item
        DataType = ftUnknown
        Name = 'NC'
        ParamType = ptUnknown
      end>
    ProviderName = 'DPClientTransLC'
    Left = 432
    Top = 552
  end
  object DPClientTransLC: TDataSetProvider
    DataSet = QClientTransLCFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 384
    Top = 552
  end
  object DSClientTransLC: TDataSource
    DataSet = CDSClientTransLC
    Left = 328
    Top = 552
  end
  object CDSTransHead: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * from TransactionHeader_TEMP'
    Params = <>
    ProviderName = 'DPTransHead'
    AfterScroll = CDSTransHeadAfterScroll
    OnCalcFields = CDSTransHeadCalcFields
    Left = 688
    Top = 160
    object CDSTransHeadSUB_TOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SUB_TOTAL'
      currency = True
      Calculated = True
    end
    object CDSTransHeadRecallNoTrans: TStringField
      FieldKind = fkCalculated
      FieldName = 'RecallNoTrans'
      Size = 15
      Calculated = True
    end
    object CDSTransHeadBALANCE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'BALANCE'
      Calculated = True
    end
    object CDSTransHeadPAYMENTTYPE1: TStringField
      FieldName = 'PAYMENTTYPE1'
      Origin = 'PAYMENTTYPE1'
      FixedChar = True
      Size = 4
    end
    object CDSTransHeadTRANSACTIONDATE: TSQLTimeStampField
      FieldName = 'TRANSACTIONDATE'
      Origin = 'TRANSACTIONDATE'
      Required = True
    end
    object CDSTransHeadNUMBERITEMS: TIntegerField
      FieldName = 'NUMBERITEMS'
      Origin = 'NUMBERITEMS'
      Required = True
    end
    object CDSTransHeadCREDITCARD1: TStringField
      FieldName = 'CREDITCARD1'
      Origin = 'CREDITCARD1'
      Size = 50
    end
    object CDSTransHeadOPENED: TStringField
      FieldName = 'OPENED'
      Origin = 'OPENED'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSTransHeadVOIDED: TIntegerField
      FieldName = 'VOIDED'
      Origin = 'VOIDED'
      Required = True
    end
    object CDSTransHeadCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
      Origin = 'CUSTOMERID'
    end
    object CDSTransHeadTRANSACTIONTIME: TSQLTimeStampField
      FieldName = 'TRANSACTIONTIME'
      Origin = 'TRANSACTIONTIME'
    end
    object CDSTransHeadPAID: TStringField
      FieldName = 'PAID'
      Origin = 'PAID'
      FixedChar = True
      Size = 1
    end
    object CDSTransHeadPAYMENTTYPE2: TStringField
      FieldName = 'PAYMENTTYPE2'
      Origin = 'PAYMENTTYPE2'
      FixedChar = True
      Size = 4
    end
    object CDSTransHeadCREDITCARD2: TStringField
      FieldName = 'CREDITCARD2'
      Origin = 'CREDITCARD2'
      FixedChar = True
      Size = 50
    end
    object CDSTransHeadSHIFT: TSmallintField
      FieldName = 'SHIFT'
      Origin = 'SHIFT'
    end
    object CDSTransHeadREGISTER: TSmallintField
      FieldName = 'REGISTER'
      Origin = 'REGISTER'
      Required = True
    end
    object CDSTransHeadEMPLOYNUMBER: TStringField
      FieldName = 'EMPLOYNUMBER'
      Origin = 'EMPLOYNUMBER'
      Required = True
      Size = 3
    end
    object CDSTransHeadDELIVERYADDRESS1: TStringField
      FieldName = 'DELIVERYADDRESS1'
      Origin = 'DELIVERYADDRESS1'
      Size = 30
    end
    object CDSTransHeadDELIVERYADDRESS2: TStringField
      FieldName = 'DELIVERYADDRESS2'
      Origin = 'DELIVERYADDRESS2'
      Size = 30
    end
    object CDSTransHeadDELIVERYNAME: TStringField
      FieldName = 'DELIVERYNAME'
      Origin = 'DELIVERYNAME'
      Size = 30
    end
    object CDSTransHeadDELIVEREDBY: TStringField
      FieldName = 'DELIVEREDBY'
      Origin = 'DELIVEREDBY'
      Size = 30
    end
    object CDSTransHeadPONUMBER: TStringField
      FieldName = 'PONUMBER'
      Origin = 'PONUMBER'
    end
    object CDSTransHeadDELIVERYPHONE: TStringField
      FieldName = 'DELIVERYPHONE'
      Origin = 'DELIVERYPHONE'
      Size = 13
    end
    object CDSTransHeadID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object CDSTransHeadTRANSACTIONNUMBER: TAutoIncField
      FieldName = 'TRANSACTIONNUMBER'
      Origin = 'TRANSACTIONNUMBER'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object CDSTransHeadPAYMENTTYPE3: TStringField
      FieldName = 'PAYMENTTYPE3'
      Origin = 'PAYMENTTYPE3'
      FixedChar = True
      Size = 4
    end
    object CDSTransHeadPAYMENTTYPE4: TStringField
      FieldName = 'PAYMENTTYPE4'
      Origin = 'PAYMENTTYPE4'
      FixedChar = True
      Size = 4
    end
    object CDSTransHeadCREDITCARD3: TStringField
      FieldName = 'CREDITCARD3'
      Origin = 'CREDITCARD3'
      Size = 50
    end
    object CDSTransHeadCREDITCARD4: TStringField
      FieldName = 'CREDITCARD4'
      Origin = 'CREDITCARD4'
      Size = 50
    end
    object CDSTransHeadDELIVERED: TStringField
      FieldName = 'DELIVERED'
      Origin = 'DELIVERED'
      Size = 1
    end
    object CDSTransHeadSUPERVISOR: TStringField
      FieldName = 'SUPERVISOR'
      Origin = 'SUPERVISOR'
      Size = 3
    end
    object CDSTransHeadCUSTOMER: TWideStringField
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      FixedChar = True
      Size = 30
    end
    object CDSTransHeadSERVER: TStringField
      FieldKind = fkLookup
      FieldName = 'SERVER'
      LookupDataSet = CDSPasswords
      LookupKeyFields = 'INICIALES'
      LookupResultField = 'USERNAME'
      KeyFields = 'EMPLOYNUMBER'
      Size = 30
      Lookup = True
    end
    object CDSTransHeadCUSTOMER_DEFINED: TStringField
      FieldKind = fkCalculated
      FieldName = 'CUSTOMER_DEFINED'
      Size = 45
      Calculated = True
    end
    object CDSTransHeadPAYAMOUNT1: TFMTBCDField
      FieldName = 'PAYAMOUNT1'
      Origin = 'PAYAMOUNT1'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransHeadPAYAMOUNT2: TFMTBCDField
      FieldName = 'PAYAMOUNT2'
      Origin = 'PAYAMOUNT2'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransHeadTAX: TFMTBCDField
      FieldName = 'TAX'
      Origin = 'TAX'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransHeadTOTAL_TAX: TFMTBCDField
      FieldName = 'TOTAL_TAX'
      Origin = 'TOTAL_TAX'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransHeadTAX_ESTATAL: TFMTBCDField
      FieldName = 'TAX_ESTATAL'
      Origin = 'TAX_ESTATAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransHeadSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransHeadTAX_SERVICIO: TFMTBCDField
      FieldName = 'TAX_SERVICIO'
      Origin = 'TAX_SERVICIO'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransHeadPAYAMOUNT3: TFMTBCDField
      FieldName = 'PAYAMOUNT3'
      Origin = 'PAYAMOUNT3'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSTransHeadPAYAMOUNT4: TFMTBCDField
      FieldName = 'PAYAMOUNT4'
      Origin = 'PAYAMOUNT4'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSTransHeadREGTOTAL: TFMTBCDField
      FieldName = 'REGTOTAL'
      Origin = 'REGTOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransHeadTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransHeadCHANGE: TFMTBCDField
      FieldName = 'CHANGE'
      Origin = 'CHANGE'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransHeadFOODTOTAL: TFMTBCDField
      FieldName = 'FOODTOTAL'
      Origin = 'FOODTOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransHeadTAX_FOOD_MUNICIPAL: TFMTBCDField
      FieldName = 'TAX_FOOD_MUNICIPAL'
      Origin = 'TAX_FOOD_MUNICIPAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransHeadTAX_FOOD_ESTATAL: TFMTBCDField
      FieldName = 'TAX_FOOD_ESTATAL'
      Origin = 'TAX_FOOD_ESTATAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransHeadTOTAL_DISCOUNT: TFMTBCDField
      FieldName = 'TOTAL_DISCOUNT'
      Origin = 'TOTAL_DISCOUNT'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransHeadTOTAL_TIP: TFMTBCDField
      FieldName = 'TOTAL_TIP'
      Origin = 'TOTAL_TIP'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransHeadTIP: TFMTBCDField
      FieldName = 'TIP'
      Origin = 'TIP'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransHeadTAX_PROCESSED_FOOD: TFMTBCDField
      FieldName = 'TAX_PROCESSED_FOOD'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransHeadFSA: TFMTBCDField
      FieldName = 'FSA'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransHeadOTCCard: TFMTBCDField
      FieldName = 'OTCCard'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object DPTransHead: TDataSetProvider
    DataSet = QTransHeadFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 632
    Top = 160
  end
  object CDSPlanesMedicos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPPlanesMedicos'
    AfterInsert = CDSPlanesMedicosAfterInsert
    AfterPost = CDSPlanesMedicosAfterPost
    AfterDelete = CDSPlanesMedicosAfterPost
    Left = 688
    Top = 208
    object CDSPlanesMedicosABREVIATURA: TStringField
      FieldName = 'ABREVIATURA'
      Origin = 'ABREVIATURA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 3
    end
    object CDSPlanesMedicosBINNUMBER: TStringField
      FieldName = 'BINNUMBER'
      Origin = 'BINNUMBER'
      Required = True
      Size = 6
    end
    object CDSPlanesMedicosTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Origin = 'TELEFONO'
      Required = True
      Size = 14
    end
    object CDSPlanesMedicosMULTI_RECETA: TStringField
      FieldName = 'MULTI_RECETA'
      Origin = 'MULTI_RECETA'
      Required = True
      Size = 1
    end
    object CDSPlanesMedicosVERSIONCOL: TStringField
      FieldName = 'VERSIONCOL'
      Origin = 'VERSIONCOL'
      Required = True
      Size = 2
    end
    object CDSPlanesMedicosTONOPULSO: TStringField
      FieldName = 'TONOPULSO'
      Origin = 'TONOPULSO'
      Required = True
      Size = 1
    end
    object CDSPlanesMedicosVELOCIDAD: TIntegerField
      FieldName = 'VELOCIDAD'
      Origin = 'VELOCIDAD'
      Required = True
    end
    object CDSPlanesMedicosBITSDATA: TIntegerField
      FieldName = 'BITSDATA'
      Origin = 'BITSDATA'
      Required = True
    end
    object CDSPlanesMedicosPARIDAD: TStringField
      FieldName = 'PARIDAD'
      Origin = 'PARIDAD'
      Required = True
      Size = 1
    end
    object CDSPlanesMedicosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 15
    end
    object CDSPlanesMedicosPROCESSORCONTROL: TStringField
      FieldName = 'PROCESSORCONTROL'
      Origin = 'PROCESSORCONTROL'
      Size = 10
    end
    object CDSPlanesMedicosTELEFONO_SERVICIO1: TStringField
      FieldName = 'TELEFONO_SERVICIO1'
      Origin = 'TELEFONO_SERVICIO1'
      FixedChar = True
      Size = 13
    end
    object CDSPlanesMedicosSOFTWARE_VENDOR_ID: TStringField
      FieldName = 'SOFTWARE_VENDOR_ID'
      Origin = 'SOFTWARE_VENDOR_ID'
      FixedChar = True
      Size = 10
    end
    object CDSPlanesMedicosMANUAL_PLAN: TStringField
      FieldName = 'MANUAL_PLAN'
      Origin = 'MANUAL_PLAN'
      FixedChar = True
      Size = 1
    end
    object CDSPlanesMedicosDISPENSING_FEE: TSingleField
      FieldName = 'DISPENSING_FEE'
      Origin = 'DISPENSING_FEE'
    end
    object CDSPlanesMedicosTELEFONO_SERVICIO2: TStringField
      FieldName = 'TELEFONO_SERVICIO2'
      Origin = 'TELEFONO_SERVICIO2'
      FixedChar = True
      Size = 13
    end
    object CDSPlanesMedicosPRECIO_CASH_AWP: TStringField
      FieldName = 'PRECIO_CASH_AWP'
      Origin = 'PRECIO_CASH_AWP'
      FixedChar = True
      Size = 4
    end
    object CDSPlanesMedicosNUMEROFARMACIA: TStringField
      FieldName = 'NUMEROFARMACIA'
      Origin = 'NUMEROFARMACIA'
      Required = True
      Size = 15
    end
    object CDSPlanesMedicosSERVICE_PROVIDER_ID_QUAL: TStringField
      FieldName = 'SERVICE_PROVIDER_ID_QUAL'
      Origin = 'SERVICE_PROVIDER_ID_QUAL'
      FixedChar = True
      Size = 2
    end
    object CDSPlanesMedicosPROVIDERIDQUALIFIER: TStringField
      FieldName = 'PROVIDERIDQUALIFIER'
      Origin = 'PROVIDERIDQUALIFIER'
      FixedChar = True
      Size = 2
    end
    object CDSPlanesMedicosCOMPOUND_SEGMENT: TStringField
      FieldName = 'COMPOUND_SEGMENT'
      Origin = 'COMPOUND_SEGMENT'
      FixedChar = True
      Size = 5
    end
    object CDSPlanesMedicosPLANESMEDICOSNO: TIntegerField
      FieldName = 'PLANESMEDICOSNO'
      Origin = 'PLANESMEDICOSNO'
      ProviderFlags = [pfInWhere]
      Required = True
    end
    object CDSPlanesMedicosSTOPBITS: TSmallintField
      FieldName = 'STOPBITS'
      Origin = 'STOPBITS'
    end
    object CDSPlanesMedicosCONSIDER_NON_MATCHENDC: TStringField
      FieldName = 'CONSIDER_NON_MATCHENDC'
      Origin = 'CONSIDER_NON_MATCHENDC'
      FixedChar = True
      Size = 1
    end
  end
  object DPPlanesMedicos: TDataSetProvider
    DataSet = QPlanesMedicosFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 632
    Top = 208
  end
  object CDSHead: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT * FROM TransactionHeader_temp WHERE TransactionNumber = :' +
      'TransactionNumber'
    Params = <
      item
        DataType = ftInteger
        Name = 'TransactionNumber'
        ParamType = ptUnknown
      end>
    ProviderName = 'DPHead'
    OnCalcFields = CDSHeadCalcFields
    Left = 688
    Top = 256
    object CDSHeadPAYMENTTYPE1: TStringField
      FieldName = 'PAYMENTTYPE1'
      Origin = 'PAYMENTTYPE1'
      FixedChar = True
      Size = 4
    end
    object CDSHeadTRANSACTIONDATE: TSQLTimeStampField
      FieldName = 'TRANSACTIONDATE'
      Origin = 'TRANSACTIONDATE'
      Required = True
    end
    object CDSHeadNUMBERITEMS: TIntegerField
      FieldName = 'NUMBERITEMS'
      Origin = 'NUMBERITEMS'
      Required = True
    end
    object CDSHeadCREDITCARD1: TStringField
      FieldName = 'CREDITCARD1'
      Origin = 'CREDITCARD1'
      Size = 50
    end
    object CDSHeadOPENED: TStringField
      FieldName = 'OPENED'
      Origin = 'OPENED'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSHeadVOIDED: TIntegerField
      FieldName = 'VOIDED'
      Origin = 'VOIDED'
      Required = True
    end
    object CDSHeadCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
      Origin = 'CUSTOMERID'
    end
    object CDSHeadTRANSACTIONTIME: TSQLTimeStampField
      FieldName = 'TRANSACTIONTIME'
      Origin = 'TRANSACTIONTIME'
    end
    object CDSHeadPAID: TStringField
      FieldName = 'PAID'
      Origin = 'PAID'
      FixedChar = True
      Size = 1
    end
    object CDSHeadPAYMENTTYPE2: TStringField
      FieldName = 'PAYMENTTYPE2'
      Origin = 'PAYMENTTYPE2'
      FixedChar = True
      Size = 4
    end
    object CDSHeadCREDITCARD2: TStringField
      FieldName = 'CREDITCARD2'
      Origin = 'CREDITCARD2'
      FixedChar = True
      Size = 50
    end
    object CDSHeadSHIFT: TSmallintField
      FieldName = 'SHIFT'
      Origin = 'SHIFT'
    end
    object CDSHeadREGISTER: TSmallintField
      FieldName = 'REGISTER'
      Origin = 'REGISTER'
      Required = True
    end
    object CDSHeadEMPLOYNUMBER: TStringField
      FieldName = 'EMPLOYNUMBER'
      Origin = 'EMPLOYNUMBER'
      Required = True
      Size = 3
    end
    object CDSHeadDELIVERYADDRESS1: TStringField
      FieldName = 'DELIVERYADDRESS1'
      Origin = 'DELIVERYADDRESS1'
      Size = 30
    end
    object CDSHeadDELIVERYADDRESS2: TStringField
      FieldName = 'DELIVERYADDRESS2'
      Origin = 'DELIVERYADDRESS2'
      Size = 30
    end
    object CDSHeadDELIVERYNAME: TStringField
      FieldName = 'DELIVERYNAME'
      Origin = 'DELIVERYNAME'
      Size = 30
    end
    object CDSHeadDELIVEREDBY: TStringField
      FieldName = 'DELIVEREDBY'
      Origin = 'DELIVEREDBY'
      Size = 30
    end
    object CDSHeadPONUMBER: TStringField
      FieldName = 'PONUMBER'
      Origin = 'PONUMBER'
    end
    object CDSHeadDELIVERYPHONE: TStringField
      FieldName = 'DELIVERYPHONE'
      Origin = 'DELIVERYPHONE'
      Size = 13
    end
    object CDSHeadID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object CDSHeadTRANSACTIONNUMBER: TAutoIncField
      FieldName = 'TRANSACTIONNUMBER'
      Origin = 'TRANSACTIONNUMBER'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object CDSHeadPAYMENTTYPE3: TStringField
      FieldName = 'PAYMENTTYPE3'
      Origin = 'PAYMENTTYPE3'
      FixedChar = True
      Size = 4
    end
    object CDSHeadPAYMENTTYPE4: TStringField
      FieldName = 'PAYMENTTYPE4'
      Origin = 'PAYMENTTYPE4'
      FixedChar = True
      Size = 4
    end
    object CDSHeadCREDITCARD3: TStringField
      FieldName = 'CREDITCARD3'
      Origin = 'CREDITCARD3'
      Size = 50
    end
    object CDSHeadCREDITCARD4: TStringField
      FieldName = 'CREDITCARD4'
      Origin = 'CREDITCARD4'
      Size = 50
    end
    object CDSHeadDELIVERED: TStringField
      FieldName = 'DELIVERED'
      Origin = 'DELIVERED'
      Size = 1
    end
    object CDSHeadSUPERVISOR: TStringField
      FieldName = 'SUPERVISOR'
      Origin = 'SUPERVISOR'
      Size = 3
    end
    object CDSHeadCUSTOMER: TWideStringField
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      FixedChar = True
      Size = 30
    end
    object CDSHeadPAYAMOUNT1: TFMTBCDField
      FieldName = 'PAYAMOUNT1'
      Origin = 'PAYAMOUNT1'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSHeadPAYAMOUNT2: TFMTBCDField
      FieldName = 'PAYAMOUNT2'
      Origin = 'PAYAMOUNT2'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSHeadTAX: TFMTBCDField
      FieldName = 'TAX'
      Origin = 'TAX'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSHeadTOTAL_TAX: TFMTBCDField
      FieldName = 'TOTAL_TAX'
      Origin = 'TOTAL_TAX'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSHeadTAX_ESTATAL: TFMTBCDField
      FieldName = 'TAX_ESTATAL'
      Origin = 'TAX_ESTATAL'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSHeadSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSHeadTAX_SERVICIO: TFMTBCDField
      FieldName = 'TAX_SERVICIO'
      Origin = 'TAX_SERVICIO'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSHeadPAYAMOUNT3: TFMTBCDField
      FieldName = 'PAYAMOUNT3'
      Origin = 'PAYAMOUNT3'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSHeadPAYAMOUNT4: TFMTBCDField
      FieldName = 'PAYAMOUNT4'
      Origin = 'PAYAMOUNT4'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSHeadREGTOTAL: TFMTBCDField
      FieldName = 'REGTOTAL'
      Origin = 'REGTOTAL'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSHeadTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSHeadCHANGE: TFMTBCDField
      FieldName = 'CHANGE'
      Origin = 'CHANGE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSHeadFOODTOTAL: TFMTBCDField
      FieldName = 'FOODTOTAL'
      Origin = 'FOODTOTAL'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSHeadTAX_FOOD_MUNICIPAL: TFMTBCDField
      FieldName = 'TAX_FOOD_MUNICIPAL'
      Origin = 'TAX_FOOD_MUNICIPAL'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSHeadTAX_FOOD_ESTATAL: TFMTBCDField
      FieldName = 'TAX_FOOD_ESTATAL'
      Origin = 'TAX_FOOD_ESTATAL'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSHeadTOTAL_DISCOUNT: TFMTBCDField
      FieldName = 'TOTAL_DISCOUNT'
      Origin = 'TOTAL_DISCOUNT'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSHeadTIP: TFMTBCDField
      FieldName = 'TIP'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSHeadTIP2: TFMTBCDField
      FieldName = 'TIP2'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSHeadTOTAL_TIP: TFMTBCDField
      FieldName = 'TOTAL_TIP'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSHeadTAX_PROCESSED_FOOD: TFMTBCDField
      FieldName = 'TAX_PROCESSED_FOOD'
      Precision = 18
      Size = 2
    end
    object CDSHeadRecallNoTrans: TStringField
      FieldKind = fkCalculated
      FieldName = 'RecallNoTrans'
      Size = 15
      Calculated = True
    end
    object CDSHeadTRANS_TYPE: TWideStringField
      FieldName = 'TRANS_TYPE'
      FixedChar = True
      Size = 2
    end
  end
  object DSHead: TDataSource
    DataSet = CDSHead
    Left = 576
    Top = 256
  end
  object DPHead: TDataSetProvider
    DataSet = QHeadFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 632
    Top = 256
  end
  object CDSTrHeadAdHoc2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPTrHeadAdHoc2'
    Left = 688
    Top = 336
  end
  object DSTrHeadAdHoc2: TDataSource
    DataSet = CDSTrHeadAdHoc2
    Left = 576
    Top = 336
  end
  object DPTrHeadAdHoc2: TDataSetProvider
    DataSet = QTrHeadAdHoc2
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 632
    Top = 336
  end
  object CDSVerTransacciones: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPVerTransacciones'
    Left = 688
    Top = 440
    object CDSVerTransaccionesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object CDSVerTransaccionesUPC: TStringField
      FieldName = 'UPC'
      Origin = 'UPC'
      Required = True
      FixedChar = True
      Size = 13
    end
    object CDSVerTransaccionesQTY: TFloatField
      FieldName = 'QTY'
      Origin = 'QTY'
      DisplayFormat = '#.00'
    end
    object CDSVerTransaccionesTRANSACTIONNUMBER: TIntegerField
      FieldName = 'TRANSACTIONNUMBER'
      Origin = 'TRANSACTIONNUMBER'
      Required = True
    end
    object CDSVerTransaccionesemploynumber: TStringField
      FieldName = 'employnumber'
      Origin = 'employnumber'
      Required = True
      Size = 3
    end
    object CDSVerTransaccionesregister: TSmallintField
      FieldName = 'register'
      Origin = 'register'
      Required = True
    end
    object CDSVerTransaccionesfechaventa: TSQLTimeStampField
      FieldName = 'fechaventa'
      Origin = 'fechaventa'
      Required = True
    end
    object CDSVerTransaccionesPRICE: TFMTBCDField
      FieldName = 'PRICE'
      Origin = 'PRICE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
  end
  object DPVerTransacciones: TDataSetProvider
    DataSet = QVerTransaccionesFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 624
    Top = 448
  end
  object CDSBalanceInicial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPBalanceInicial'
    AfterInsert = CDSBalanceInicialAfterInsert
    AfterPost = CDSBalanceInicialAfterPost
    AfterDelete = CDSBalanceInicialAfterPost
    Left = 432
    Top = 600
    object CDSBalanceInicialCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSBalanceInicialFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object CDSBalanceInicialAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Required = True
    end
    object CDSBalanceInicialREASON: TStringField
      FieldName = 'REASON'
      Required = True
      FixedChar = True
      Size = 50
    end
    object CDSBalanceInicialNUMEROCLIENTE: TIntegerField
      FieldName = 'NUMEROCLIENTE'
      Required = True
    end
    object CDSBalanceInicialTRANS_NO: TIntegerField
      FieldName = 'TRANS_NO'
      Required = True
    end
    object CDSBalanceInicialUSUARIO: TStringField
      FieldName = 'USUARIO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object CDSBalanceInicialUSUARIO2: TStringField
      FieldKind = fkLookup
      FieldName = 'USUARIO2'
      LookupDataSet = CDSPasswords
      LookupKeyFields = 'INICIALES'
      LookupResultField = 'USERNAME'
      KeyFields = 'USUARIO'
      Lookup = True
    end
    object CDSBalanceInicialCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIENTE'
      LookupDataSet = CDSClientes
      LookupKeyFields = 'NUMEROCLIENTE'
      LookupResultField = 'NombreCompleto2'
      KeyFields = 'NUMEROCLIENTE'
      Size = 45
      Lookup = True
    end
  end
  object DPBalanceInicial: TDataSetProvider
    DataSet = QBalanceInicialFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 384
    Top = 600
  end
  object CDSAssembly_Detail: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPQAssembly_Detail'
    AfterPost = CDSAssembly_DetailAfterPost
    AfterDelete = CDSAssembly_DetailAfterPost
    Left = 688
    Top = 496
    object CDSAssembly_DetailNO_TRANS: TIntegerField
      FieldName = 'NO_TRANS'
      Origin = 'NO_TRANS'
    end
    object CDSAssembly_DetailBARCODE: TStringField
      FieldName = 'BARCODE'
      Origin = 'BARCODE'
      Required = True
      FixedChar = True
      Size = 13
    end
    object CDSAssembly_DetailDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Required = True
      FixedChar = True
      Size = 30
    end
    object CDSAssembly_DetailQTY: TIntegerField
      FieldName = 'QTY'
      Origin = 'QTY'
      Required = True
    end
    object CDSAssembly_DetailPRECIO: TSingleField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      Required = True
    end
    object CDSAssembly_DetailCOSTO: TSingleField
      FieldName = 'COSTO'
      Origin = 'COSTO'
      Required = True
    end
    object CDSAssembly_DetailNOASSEMBLY: TIntegerField
      FieldName = 'NOASSEMBLY'
      Origin = 'NOASSEMBLY'
    end
  end
  object DPQAssembly_Detail: TDataSetProvider
    DataSet = QAssembly_DetailFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 632
    Top = 496
  end
  object CDSAssembly_Header: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPAssembly_Header'
    AfterInsert = CDSAssembly_HeaderAfterInsert
    AfterPost = CDSAssembly_HeaderAfterPost
    AfterDelete = CDSAssembly_HeaderAfterPost
    OnCalcFields = CDSAssembly_HeaderCalcFields
    Left = 688
    Top = 544
    object CDSAssembly_HeaderRecallNoTrans: TStringField
      FieldKind = fkCalculated
      FieldName = 'RecallNoTrans'
      Calculated = True
    end
    object CDSAssembly_HeaderNO_TRANS: TIntegerField
      FieldName = 'NO_TRANS'
      Origin = 'NO_TRANS'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object CDSAssembly_HeaderDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Required = True
      FixedChar = True
      Size = 30
    end
    object CDSAssembly_HeaderFECHA_CREADO: TSQLTimeStampField
      FieldName = 'FECHA_CREADO'
      Origin = 'FECHA_CREADO'
      Required = True
    end
    object CDSAssembly_HeaderPRECIO: TSingleField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      Required = True
      DisplayFormat = '#.00'
    end
    object CDSAssembly_HeaderCOSTO: TSingleField
      FieldName = 'COSTO'
      Origin = 'COSTO'
      Required = True
      DisplayFormat = '#.00'
    end
  end
  object DPAssembly_Header: TDataSetProvider
    DataSet = QAssembly_HeaderFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 632
    Top = 544
  end
  object CDSSales: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPSales'
    Left = 200
    Top = 528
    object CDSSalesTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 3
    end
    object CDSSalesCODIGO: TStringField
      FieldName = 'CODIGO'
      FixedChar = True
      Size = 1
    end
    object CDSSalesCOSTO: TFloatField
      FieldName = 'COSTO'
    end
    object CDSSalesRBP: TFloatField
      FieldName = 'RBP'
    end
    object CDSSalesESPECIAL: TFloatField
      FieldName = 'ESPECIAL'
    end
    object CDSSalesDEPARTAMENTO: TSmallintField
      FieldName = 'DEPARTAMENTO'
    end
    object CDSSalesLOTE: TStringField
      FieldName = 'LOTE'
      FixedChar = True
      Size = 12
    end
    object CDSSalesPRECIO: TFloatField
      FieldName = 'PRECIO'
    end
    object CDSSalesPORCIENTODESCUENTO: TStringField
      FieldName = 'PORCIENTODESCUENTO'
      FixedChar = True
      Size = 1
    end
    object CDSSalesQTYINVENTARIO: TFloatField
      FieldName = 'QTYINVENTARIO'
    end
    object CDSSalesCMAXINVENTARIO: TFloatField
      FieldName = 'CMAXINVENTARIO'
    end
    object CDSSalesCMININVENTARIO: TFloatField
      FieldName = 'CMININVENTARIO'
    end
    object CDSSalesNDC: TStringField
      FieldName = 'NDC'
      FixedChar = True
      Size = 11
    end
    object CDSSalesCODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CDSSalesNUMEROSUPLIDOR: TIntegerField
      FieldName = 'NUMEROSUPLIDOR'
    end
    object CDSSalesEDITAR_PRECIO: TStringField
      FieldName = 'EDITAR_PRECIO'
      FixedChar = True
      Size = 5
    end
    object CDSSalesPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
      Required = True
    end
    object CDSSalesSUB_DEPARTAMENTO: TSmallintField
      FieldName = 'SUB_DEPARTAMENTO'
    end
    object CDSSalesGROUP_QTY: TIntegerField
      FieldName = 'GROUP_QTY'
    end
    object CDSSalesPRECIO_CAJA: TFloatField
      FieldName = 'PRECIO_CAJA'
    end
    object CDSSalesQTY_CAJA: TFloatField
      FieldName = 'QTY_CAJA'
    end
    object CDSSalesDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      FixedChar = True
      Size = 35
    end
    object CDSSalesDESCUENTO: TStringField
      FieldName = 'DESCUENTO'
      FixedChar = True
      Size = 1
    end
    object CDSSalesCASA_FARMACEUTICA: TStringField
      FieldName = 'CASA_FARMACEUTICA'
      FixedChar = True
      Size = 35
    end
    object CDSSalesROUTEOFADMINISTRATION: TStringField
      FieldName = 'ROUTEOFADMINISTRATION'
      FixedChar = True
      Size = 16
    end
    object CDSSalesCONTROLADO: TStringField
      FieldName = 'CONTROLADO'
      FixedChar = True
      Size = 4
    end
    object CDSSalesSTRENGTH: TStringField
      FieldName = 'STRENGTH'
      FixedChar = True
      Size = 25
    end
    object CDSSalesINFOADICIONAL: TStringField
      FieldName = 'INFOADICIONAL'
      FixedChar = True
      Size = 25
    end
    object CDSSalesMETRICSIZE: TFloatField
      FieldName = 'METRICSIZE'
    end
    object CDSSalesCAUTION1: TSmallintField
      FieldName = 'CAUTION1'
    end
    object CDSSalesCAUTION2: TSmallintField
      FieldName = 'CAUTION2'
    end
    object CDSSalesCAUTION3: TSmallintField
      FieldName = 'CAUTION3'
    end
    object CDSSalesGENERICNAME: TStringField
      FieldName = 'GENERICNAME'
      FixedChar = True
      Size = 60
    end
    object CDSSalesTXR: TStringField
      FieldName = 'TXR'
      FixedChar = True
      Size = 8
    end
    object CDSSalesBRAND: TStringField
      FieldName = 'BRAND'
      FixedChar = True
      Size = 1
    end
    object CDSSalesGROUP_PRODUCTNO: TIntegerField
      FieldName = 'GROUP_PRODUCTNO'
    end
    object CDSSalesRECETARIO: TStringField
      FieldName = 'RECETARIO'
      FixedChar = True
      Size = 1
    end
    object CDSSalesPACKAGESIZE: TIntegerField
      FieldName = 'PACKAGESIZE'
    end
    object CDSSalesFOODITEM: TSmallintField
      FieldName = 'FOODITEM'
      Required = True
    end
    object CDSSalesNONEBC: TSmallintField
      FieldName = 'NONEBC'
      Required = True
    end
    object CDSSalesIMAGE_CODE: TStringField
      FieldName = 'IMAGE_CODE'
      FixedChar = True
      Size = 9
    end
    object CDSSalesSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object CDSSalesTAXABLE: TStringField
      FieldName = 'TAXABLE'
      FixedChar = True
      Size = 1
    end
    object CDSSalesSUPLIDOR: TStringField
      FieldName = 'SUPLIDOR'
      FixedChar = True
      Size = 28
    end
    object CDSSalesDESCDEPARTAMENTO: TStringField
      FieldName = 'DESCDEPARTAMENTO'
      Size = 30
    end
  end
  object DPSales: TDataSetProvider
    DataSet = QSalesFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 136
    Top = 520
  end
  object CDSGroup: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * from InventarioPiso order by Descripcion'
    Params = <>
    ProviderName = 'DPGroup'
    AfterPost = CDSGroupAfterDelete
    AfterDelete = CDSGroupAfterDelete
    OnCalcFields = CDSGroupCalcFields
    Left = 184
    Top = 632
    object CDSGroupTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 3
    end
    object CDSGroupFECHA_EXPIRACION: TSQLTimeStampField
      FieldName = 'FECHA_EXPIRACION'
      Origin = 'FECHA_EXPIRACION'
    end
    object CDSGroupCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      FixedChar = True
      Size = 1
    end
    object CDSGroupDEPARTAMENTO: TSmallintField
      FieldName = 'DEPARTAMENTO'
      Origin = 'DEPARTAMENTO'
    end
    object CDSGroupLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      FixedChar = True
      Size = 12
    end
    object CDSGroupCOMESPECIAL: TSQLTimeStampField
      FieldName = 'COMESPECIAL'
      Origin = 'COMESPECIAL'
    end
    object CDSGroupTERMINAESPECIAL: TSQLTimeStampField
      FieldName = 'TERMINAESPECIAL'
      Origin = 'TERMINAESPECIAL'
    end
    object CDSGroupPORCIENTODESCUENTO: TStringField
      FieldName = 'PORCIENTODESCUENTO'
      Origin = 'PORCIENTODESCUENTO'
      FixedChar = True
      Size = 1
    end
    object CDSGroupULTIMOCAMBIO: TStringField
      FieldName = 'ULTIMOCAMBIO'
      Origin = 'ULTIMOCAMBIO'
      FixedChar = True
      Size = 30
    end
    object CDSGroupULTIMAVENTA: TSQLTimeStampField
      FieldName = 'ULTIMAVENTA'
      Origin = 'ULTIMAVENTA'
    end
    object CDSGroupCODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Origin = 'CODIGOBARRA'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CDSGroupNUMEROSUPLIDOR: TIntegerField
      FieldName = 'NUMEROSUPLIDOR'
      Origin = 'NUMEROSUPLIDOR'
    end
    object CDSGroupPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
      Origin = 'PRODUCTNO'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object CDSGroupSUB_DEPARTAMENTO: TSmallintField
      FieldName = 'SUB_DEPARTAMENTO'
      Origin = 'SUB_DEPARTAMENTO'
    end
    object CDSGroupGROUP_QTY: TIntegerField
      FieldName = 'GROUP_QTY'
      Origin = 'GROUP_QTY'
    end
    object CDSGroupDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      FixedChar = True
      Size = 35
    end
    object CDSGroupDESCUENTO: TStringField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      FixedChar = True
      Size = 1
    end
    object CDSGroupCASA_FARMACEUTICA: TStringField
      FieldName = 'CASA_FARMACEUTICA'
      Origin = 'CASA_FARMACEUTICA'
      FixedChar = True
      Size = 35
    end
    object CDSGroupROUTEOFADMINISTRATION: TStringField
      FieldName = 'ROUTEOFADMINISTRATION'
      Origin = 'ROUTEOFADMINISTRATION'
      FixedChar = True
      Size = 16
    end
    object CDSGroupCONTROLADO: TStringField
      FieldName = 'CONTROLADO'
      Origin = 'CONTROLADO'
      FixedChar = True
      Size = 4
    end
    object CDSGroupSTRENGTH: TStringField
      FieldName = 'STRENGTH'
      Origin = 'STRENGTH'
      FixedChar = True
      Size = 25
    end
    object CDSGroupINFOADICIONAL: TStringField
      FieldName = 'INFOADICIONAL'
      Origin = 'INFOADICIONAL'
      FixedChar = True
      Size = 25
    end
    object CDSGroupCAUTION1: TSmallintField
      FieldName = 'CAUTION1'
      Origin = 'CAUTION1'
    end
    object CDSGroupCAUTION2: TSmallintField
      FieldName = 'CAUTION2'
      Origin = 'CAUTION2'
    end
    object CDSGroupCAUTION3: TSmallintField
      FieldName = 'CAUTION3'
      Origin = 'CAUTION3'
    end
    object CDSGroupGENERICNAME: TStringField
      FieldName = 'GENERICNAME'
      Origin = 'GENERICNAME'
      FixedChar = True
      Size = 60
    end
    object CDSGroupTXR: TStringField
      FieldName = 'TXR'
      Origin = 'TXR'
      FixedChar = True
      Size = 8
    end
    object CDSGroupBRAND: TStringField
      FieldName = 'BRAND'
      Origin = 'BRAND'
      FixedChar = True
      Size = 1
    end
    object CDSGroupGROUP_PRODUCTNO: TIntegerField
      FieldName = 'GROUP_PRODUCTNO'
      Origin = 'GROUP_PRODUCTNO'
    end
    object CDSGroupRECETARIO: TStringField
      FieldName = 'RECETARIO'
      Origin = 'RECETARIO'
      FixedChar = True
      Size = 1
    end
    object CDSGroupPACKAGESIZE: TIntegerField
      FieldName = 'PACKAGESIZE'
      Origin = 'PACKAGESIZE'
    end
    object CDSGroupFOODITEM: TSmallintField
      FieldName = 'FOODITEM'
      Origin = 'FOODITEM'
      Required = True
    end
    object CDSGroupNONEBC: TSmallintField
      FieldName = 'NONEBC'
      Origin = 'NONEBC'
      Required = True
    end
    object CDSGroupIMAGE_CODE: TStringField
      FieldName = 'IMAGE_CODE'
      Origin = 'IMAGE_CODE'
      FixedChar = True
      Size = 9
    end
    object CDSGroupTXR_EXTENSION: TStringField
      FieldName = 'TXR_EXTENSION'
      Origin = 'TXR_EXTENSION'
      FixedChar = True
      Size = 14
    end
    object CDSGroupSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object CDSGroupTAXABLE: TStringField
      FieldName = 'TAXABLE'
      Origin = 'TAXABLE'
      FixedChar = True
      Size = 1
    end
    object CDSGroupMedicamentoStr: TStringField
      FieldKind = fkCalculated
      FieldName = 'MedicamentoStr'
      Size = 45
      Calculated = True
    end
    object CDSGroupCOSTO: TSingleField
      FieldName = 'COSTO'
      Origin = 'COSTO'
      DisplayFormat = '#.00'
    end
    object CDSGroupRBP: TSingleField
      FieldName = 'RBP'
      Origin = 'RBP'
      DisplayFormat = '#.00'
    end
    object CDSGroupESPECIAL: TSingleField
      FieldName = 'ESPECIAL'
      Origin = 'ESPECIAL'
      DisplayFormat = '#.00'
    end
    object CDSGroupPRECIO: TSingleField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      DisplayFormat = '#.00'
    end
    object CDSGroupQTYINVENTARIO: TFMTBCDField
      FieldName = 'QTYINVENTARIO'
      Origin = 'QTYINVENTARIO'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSGroupCMAXINVENTARIO: TSingleField
      FieldName = 'CMAXINVENTARIO'
      Origin = 'CMAXINVENTARIO'
      DisplayFormat = '#.00'
    end
    object CDSGroupCMININVENTARIO: TSingleField
      FieldName = 'CMININVENTARIO'
      Origin = 'CMININVENTARIO'
      DisplayFormat = '#.00'
    end
    object CDSGroupNDC: TWideStringField
      FieldName = 'NDC'
      Origin = 'NDC'
      FixedChar = True
      Size = 19
    end
    object CDSGroupEDITAR_PRECIO: TBooleanField
      FieldName = 'EDITAR_PRECIO'
      Origin = 'EDITAR_PRECIO'
    end
    object CDSGroupPRECIO_CAJA: TSingleField
      FieldName = 'PRECIO_CAJA'
      Origin = 'PRECIO_CAJA'
      DisplayFormat = '#.00'
    end
    object CDSGroupQTY_CAJA: TSingleField
      FieldName = 'QTY_CAJA'
      Origin = 'QTY_CAJA'
      DisplayFormat = '#.00'
    end
    object CDSGroupMETRICSIZE: TSingleField
      FieldName = 'METRICSIZE'
      Origin = 'METRICSIZE'
      DisplayFormat = '#.00'
    end
  end
  object DPGroup: TDataSetProvider
    DataSet = QGroupFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 80
    Top = 648
  end
  object CDSCHKDescription: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPCHKDescription'
    AfterPost = CDSCHKDescriptionAfterPost
    AfterDelete = CDSCHKDescriptionAfterPost
    Left = 184
    Top = 688
    object CDSCHKDescriptionNOTRANS: TIntegerField
      FieldName = 'NOTRANS'
      Origin = 'NOTRANS'
      Required = True
    end
    object CDSCHKDescriptionDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Required = True
      Size = 100
    end
  end
  object DPCHKDescription: TDataSetProvider
    DataSet = QCHKDescriptionFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 80
    Top = 696
  end
  object QAdPrintList: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    Left = 544
    Top = 600
  end
  object DPAdPrintList: TDataSetProvider
    DataSet = QAdPrintList
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 638
    Top = 592
  end
  object CDSAdPrintList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPAdPrintList'
    Left = 692
    Top = 593
  end
  object CDSWebCredRep: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPWebCredRep'
    Left = 694
    Top = 642
    object CDSWebCredRepNO_TRANS: TIntegerField
      FieldName = 'NO_TRANS'
      Origin = 'NO_TRANS'
      Required = True
    end
    object CDSWebCredRepSQL_COMMAND: TStringField
      FieldName = 'SQL_COMMAND'
      Origin = 'SQL_COMMAND'
      Required = True
      FixedChar = True
      Size = 250
    end
  end
  object DSWebCredRep: TDataSource
    DataSet = CDSWebCredRep
    Left = 581
    Top = 643
  end
  object DPWebCredRep: TDataSetProvider
    DataSet = QWebCredRepFD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 642
    Top = 643
  end
  object CDSNoCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPNoCliente'
    Left = 440
    Top = 643
    object CDSNoClienteGEN_ID: TIntegerField
      FieldName = 'GEN_ID'
      Required = True
    end
  end
  object DPNoCliente: TDataSetProvider
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 384
    Top = 643
  end
  object CDSPartners: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPPartners'
    Left = 712
    Top = 1104
    object CDSPartnersDIRECCION1: TStringField
      FieldName = 'DIRECCION1'
      Origin = 'DIRECCION1'
      FixedChar = True
      Size = 34
    end
    object CDSPartnersDIRECCION2: TStringField
      FieldName = 'DIRECCION2'
      Origin = 'DIRECCION2'
      FixedChar = True
      Size = 34
    end
    object CDSPartnersFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      FixedChar = True
      Size = 13
    end
    object CDSPartnersZIPCODE: TStringField
      FieldName = 'ZIPCODE'
      Origin = 'ZIPCODE'
      FixedChar = True
      Size = 10
    end
    object CDSPartnersPORCIENTODESCUENTO: TSingleField
      FieldName = 'PORCIENTODESCUENTO'
      Origin = 'PORCIENTODESCUENTO'
      DisplayFormat = '#.00'
    end
    object CDSPartnersCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Origin = 'CONTACTO'
      FixedChar = True
      Size = 30
    end
    object CDSPartnersNUMEROCUENTA: TStringField
      FieldName = 'NUMEROCUENTA'
      Origin = 'NUMEROCUENTA'
      FixedChar = True
      Size = 7
    end
    object CDSPartnersTOTALCOMPRADO: TSingleField
      FieldName = 'TOTALCOMPRADO'
      Origin = 'TOTALCOMPRADO'
    end
    object CDSPartnersTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Origin = 'TELEFONO'
      FixedChar = True
      Size = 13
    end
    object CDSPartnersPARTNERID: TIntegerField
      FieldName = 'PARTNERID'
      Origin = 'PARTNERID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object CDSPartnersNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      FixedChar = True
      Size = 28
    end
    object CDSPartnersIP_ADDRESS: TStringField
      FieldName = 'IP_ADDRESS'
      Origin = 'IP_ADDRESS'
      FixedChar = True
    end
    object CDSPartnersSUP_ID: TStringField
      FieldName = 'SUP_ID'
      Origin = 'SUP_ID'
      FixedChar = True
      Size = 10
    end
  end
  object DataSource2: TDataSource
    Left = 592
    Top = 1104
  end
  object DSPPartners: TDataSetProvider
    DataSet = SQLDSPartnersFD
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 640
    Top = 1104
  end
  object DSRecallTrans: TDataSource
    DataSet = CDSRecallTrans
    Left = 592
    Top = 1048
  end
  object CDSRecallTrans: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRecallTrans'
    Left = 712
    Top = 1048
    object CDSRecallTransPAYMENTTYPE1: TStringField
      FieldName = 'PAYMENTTYPE1'
      Origin = 'PAYMENTTYPE1'
      FixedChar = True
      Size = 4
    end
    object CDSRecallTransTRANSACTIONDATE: TSQLTimeStampField
      FieldName = 'TRANSACTIONDATE'
      Origin = 'TRANSACTIONDATE'
      Required = True
    end
    object CDSRecallTransNUMBERITEMS: TIntegerField
      FieldName = 'NUMBERITEMS'
      Origin = 'NUMBERITEMS'
      Required = True
    end
    object CDSRecallTransCREDITCARD1: TStringField
      FieldName = 'CREDITCARD1'
      Origin = 'CREDITCARD1'
      Size = 50
    end
    object CDSRecallTransOPENED: TStringField
      FieldName = 'OPENED'
      Origin = 'OPENED'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSRecallTransVOIDED: TIntegerField
      FieldName = 'VOIDED'
      Origin = 'VOIDED'
      Required = True
    end
    object CDSRecallTransCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
      Origin = 'CUSTOMERID'
    end
    object CDSRecallTransTRANSACTIONTIME: TSQLTimeStampField
      FieldName = 'TRANSACTIONTIME'
      Origin = 'TRANSACTIONTIME'
    end
    object CDSRecallTransPAID: TStringField
      FieldName = 'PAID'
      Origin = 'PAID'
      FixedChar = True
      Size = 1
    end
    object CDSRecallTransPAYMENTTYPE2: TStringField
      FieldName = 'PAYMENTTYPE2'
      Origin = 'PAYMENTTYPE2'
      FixedChar = True
      Size = 4
    end
    object CDSRecallTransCREDITCARD2: TStringField
      FieldName = 'CREDITCARD2'
      Origin = 'CREDITCARD2'
      FixedChar = True
      Size = 50
    end
    object CDSRecallTransSHIFT: TSmallintField
      FieldName = 'SHIFT'
      Origin = 'SHIFT'
    end
    object CDSRecallTransREGISTER: TSmallintField
      FieldName = 'REGISTER'
      Origin = 'REGISTER'
      Required = True
    end
    object CDSRecallTransEMPLOYNUMBER: TStringField
      FieldName = 'EMPLOYNUMBER'
      Origin = 'EMPLOYNUMBER'
      Required = True
      Size = 3
    end
    object CDSRecallTransDELIVERYADDRESS1: TStringField
      FieldName = 'DELIVERYADDRESS1'
      Origin = 'DELIVERYADDRESS1'
      Size = 30
    end
    object CDSRecallTransDELIVERYADDRESS2: TStringField
      FieldName = 'DELIVERYADDRESS2'
      Origin = 'DELIVERYADDRESS2'
      Size = 30
    end
    object CDSRecallTransDELIVERYNAME: TStringField
      FieldName = 'DELIVERYNAME'
      Origin = 'DELIVERYNAME'
      Size = 30
    end
    object CDSRecallTransDELIVEREDBY: TStringField
      FieldName = 'DELIVEREDBY'
      Origin = 'DELIVEREDBY'
      Size = 30
    end
    object CDSRecallTransPONUMBER: TStringField
      FieldName = 'PONUMBER'
      Origin = 'PONUMBER'
    end
    object CDSRecallTransDELIVERYPHONE: TStringField
      FieldName = 'DELIVERYPHONE'
      Origin = 'DELIVERYPHONE'
      Size = 13
    end
    object CDSRecallTransID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object CDSRecallTransTRANSACTIONNUMBER: TAutoIncField
      FieldName = 'TRANSACTIONNUMBER'
      Origin = 'TRANSACTIONNUMBER'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object CDSRecallTransPAYMENTTYPE3: TStringField
      FieldName = 'PAYMENTTYPE3'
      Origin = 'PAYMENTTYPE3'
      FixedChar = True
      Size = 4
    end
    object CDSRecallTransPAYMENTTYPE4: TStringField
      FieldName = 'PAYMENTTYPE4'
      Origin = 'PAYMENTTYPE4'
      FixedChar = True
      Size = 4
    end
    object CDSRecallTransCREDITCARD3: TStringField
      FieldName = 'CREDITCARD3'
      Origin = 'CREDITCARD3'
      Size = 50
    end
    object CDSRecallTransCREDITCARD4: TStringField
      FieldName = 'CREDITCARD4'
      Origin = 'CREDITCARD4'
      Size = 50
    end
    object CDSRecallTransDELIVERED: TStringField
      FieldName = 'DELIVERED'
      Origin = 'DELIVERED'
      Size = 1
    end
    object CDSRecallTransSUPERVISOR: TStringField
      FieldName = 'SUPERVISOR'
      Origin = 'SUPERVISOR'
      Size = 3
    end
    object CDSRecallTransCUSTOMER: TWideStringField
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      FixedChar = True
      Size = 30
    end
    object CDSRecallTransPAYAMOUNT1: TFMTBCDField
      FieldName = 'PAYAMOUNT1'
      Origin = 'PAYAMOUNT1'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSRecallTransPAYAMOUNT2: TFMTBCDField
      FieldName = 'PAYAMOUNT2'
      Origin = 'PAYAMOUNT2'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSRecallTransTAX: TFMTBCDField
      FieldName = 'TAX'
      Origin = 'TAX'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSRecallTransTOTAL_TAX: TFMTBCDField
      FieldName = 'TOTAL_TAX'
      Origin = 'TOTAL_TAX'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSRecallTransTAX_ESTATAL: TFMTBCDField
      FieldName = 'TAX_ESTATAL'
      Origin = 'TAX_ESTATAL'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSRecallTransSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSRecallTransTAX_SERVICIO: TFMTBCDField
      FieldName = 'TAX_SERVICIO'
      Origin = 'TAX_SERVICIO'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSRecallTransPAYAMOUNT3: TFMTBCDField
      FieldName = 'PAYAMOUNT3'
      Origin = 'PAYAMOUNT3'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSRecallTransPAYAMOUNT4: TFMTBCDField
      FieldName = 'PAYAMOUNT4'
      Origin = 'PAYAMOUNT4'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSRecallTransREGTOTAL: TFMTBCDField
      FieldName = 'REGTOTAL'
      Origin = 'REGTOTAL'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSRecallTransTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSRecallTransCHANGE: TFMTBCDField
      FieldName = 'CHANGE'
      Origin = 'CHANGE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSRecallTransFOODTOTAL: TFMTBCDField
      FieldName = 'FOODTOTAL'
      Origin = 'FOODTOTAL'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSRecallTransTAX_FOOD_MUNICIPAL: TFMTBCDField
      FieldName = 'TAX_FOOD_MUNICIPAL'
      Origin = 'TAX_FOOD_MUNICIPAL'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSRecallTransTAX_FOOD_ESTATAL: TFMTBCDField
      FieldName = 'TAX_FOOD_ESTATAL'
      Origin = 'TAX_FOOD_ESTATAL'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSRecallTransTOTAL_DISCOUNT: TFMTBCDField
      FieldName = 'TOTAL_DISCOUNT'
      Origin = 'TOTAL_DISCOUNT'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
  end
  object DSPRecallTrans: TDataSetProvider
    DataSet = QRecallTransFD
    Options = [poFetchDetailsOnDemand, poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 640
    Top = 1048
  end
  object CDSClientes2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPClientes2'
    Left = 184
    Top = 752
    object CDSClientes2NOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      FixedChar = True
      Size = 12
    end
    object CDSClientes2SOCIO: TStringField
      FieldName = 'SOCIO'
      Origin = 'SOCIO'
      Size = 12
    end
  end
  object DSClientes2: TDataSource
    DataSet = CDSClientes2
    Left = 136
    Top = 752
  end
  object DSPClientes2: TDataSetProvider
    DataSet = QClientes2FD
    Options = [poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 72
    Top = 752
  end
  object CDSTransShow2: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT * FROM TransactionDetail WHERE TransactionNumber=1 Order ' +
      'By IDNumber Desc'
    Params = <>
    ProviderName = 'DSPTransShow2'
    AfterPost = CDSTransShow2AfterDelete
    AfterDelete = CDSTransShow2AfterDelete
    Left = 696
    Top = 696
    object CDSTransShow2TRANSACTIONNUMBER: TIntegerField
      FieldName = 'TRANSACTIONNUMBER'
      Origin = 'TRANSACTIONNUMBER'
      Required = True
    end
    object CDSTransShow2QTY: TFloatField
      FieldName = 'QTY'
      Origin = 'QTY'
      DisplayFormat = '#.00'
    end
    object CDSTransShow2FOOD: TStringField
      FieldName = 'FOOD'
      Origin = 'FOOD'
      FixedChar = True
      Size = 1
    end
    object CDSTransShow2UPC: TStringField
      FieldName = 'UPC'
      Origin = 'UPC'
      FixedChar = True
      Size = 14
    end
    object CDSTransShow2ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object CDSTransShow2IDNUMBER: TIntegerField
      FieldName = 'IDNUMBER'
      Origin = 'IDNUMBER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSTransShow2REGISTER: TSmallintField
      FieldName = 'REGISTER'
      Origin = 'REGISTER'
    end
    object CDSTransShow2SUPERVISOR: TStringField
      FieldName = 'SUPERVISOR'
      Origin = 'SUPERVISOR'
      Size = 3
    end
    object CDSTransShow2VOIDED: TIntegerField
      FieldName = 'VOIDED'
      Origin = 'VOIDED'
      Required = True
    end
    object CDSTransShow2SUBDETAIL: TStringField
      FieldName = 'SUBDETAIL'
      Origin = 'SUBDETAIL'
      FixedChar = True
      Size = 10
    end
    object CDSTransShow2PRODDESCRIPTION: TStringField
      FieldName = 'PRODDESCRIPTION'
      Origin = 'PRODDESCRIPTION'
      FixedChar = True
      Size = 30
    end
    object CDSTransShow2PRODDEPARTMENT: TStringField
      FieldName = 'PRODDEPARTMENT'
      Origin = 'PRODDEPARTMENT'
      FixedChar = True
    end
    object CDSTransShow2MODIFIED: TSmallintField
      FieldName = 'MODIFIED'
      Origin = 'MODIFIED'
      Required = True
    end
    object CDSTransShow2FECHAVENTA: TSQLTimeStampField
      FieldName = 'FECHAVENTA'
      Origin = 'FECHAVENTA'
      Required = True
    end
    object CDSTransShow2SUPLIDOR: TIntegerField
      FieldName = 'SUPLIDOR'
      Origin = 'SUPLIDOR'
      Required = True
    end
    object CDSTransShow2PRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
      Origin = 'PRODUCTNO'
    end
    object CDSTransShow2OPENED: TStringField
      FieldName = 'OPENED'
      Origin = 'OPENED'
      Size = 1
    end
    object CDSTransShow2GROUP_PROD: TStringField
      FieldName = 'GROUP_PROD'
      Origin = 'GROUP_PROD'
      Size = 1
    end
    object CDSTransShow2PATROCINIO: TSmallintField
      FieldName = 'PATROCINIO'
      Origin = 'PATROCINIO'
    end
    object CDSTransShow2TRIPLES_PRODUCT: TBooleanField
      FieldName = 'TRIPLES_PRODUCT'
    end
    object CDSTransShow2TRIPLES_COVERED: TBooleanField
      FieldName = 'TRIPLES_COVERED'
    end
    object CDSTransShow2PRICE: TFMTBCDField
      FieldName = 'PRICE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSTransShow2TRIPLES_CLAIM_NUMBER: TWideStringField
      FieldName = 'TRIPLES_CLAIM_NUMBER'
      FixedChar = True
      Size = 10
    end
  end
  object DSPTransShow2: TDataSetProvider
    DataSet = QTransShow2FD
    Options = [poFetchDetailsOnDemand, poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 632
    Top = 696
  end
  object DSTransShow2: TDataSource
    DataSet = CDSTransShow2
    Left = 576
    Top = 692
  end
  object CDSULT_TRANS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPULT_TRANS'
    Left = 440
    Top = 641
    object CDSULT_TRANSULT_TRANS: TSQLTimeStampField
      FieldName = 'ULT_TRANS'
      Origin = 'ULT_TRANS'
      Required = True
    end
    object CDSULT_TRANSCODE: TStringField
      FieldName = 'CODE'
      Origin = 'CODE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSULT_TRANSAMOUNT: TFMTBCDField
      FieldName = 'AMOUNT'
      Origin = 'AMOUNT'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
  end
  object DSULT_TRANS: TDataSource
    DataSet = CDSULT_TRANS
    Left = 328
    Top = 641
  end
  object DSPULT_TRANS: TDataSetProvider
    DataSet = QULT_TRANSFD
    Options = [poFetchBlobsOnDemand, poFetchDetailsOnDemand, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 384
    Top = 641
  end
  object DSReasons: TDataSource
    DataSet = CDSReasons
    Left = 584
    Top = 392
  end
  object CDSReasons: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPReasons'
    AfterPost = CDSReasonsAfterDelete
    AfterDelete = CDSReasonsAfterDelete
    Left = 688
    Top = 392
    object CDSReasonsNOTRANS: TIntegerField
      FieldName = 'NOTRANS'
    end
    object CDSReasonsDESCRIPCION: TMemoField
      FieldName = 'DESCRIPCION'
      BlobType = ftMemo
      Size = 1
    end
  end
  object DSPReasons: TDataSetProvider
    DataSet = QReasonsFD
    Options = [poFetchBlobsOnDemand, poPropogateChanges, poAllowCommandText]
    BeforeApplyUpdates = DPTransShowBeforeApplyUpdates
    Left = 632
    Top = 392
  end
  object CDSCombo_DETAIL: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCombo_DETAIL'
    AfterInsert = CDSCombo_DETAILAfterInsert
    BeforePost = CDSCombo_DETAILBeforePost
    AfterPost = CDSCombo_DETAILAfterDelete
    AfterDelete = CDSCombo_DETAILAfterDelete
    Left = 440
    Top = 768
    object CDSCombo_DETAILPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
      Origin = 'PRODUCTNO'
      Required = True
    end
    object CDSCombo_DETAILPRICE: TFloatField
      FieldName = 'PRICE'
      Origin = 'PRICE'
      Required = True
      DisplayFormat = '#.00'
    end
    object CDSCombo_DETAILPRODUCT: TWideStringField
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      Required = True
      FixedChar = True
      Size = 35
    end
    object CDSCombo_DETAILCOMBO_ID: TIntegerField
      FieldName = 'COMBO_ID'
      Origin = 'COMBO_ID'
    end
    object CDSCombo_DETAILTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = '#.00'
    end
    object CDSCombo_DETAILQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'QUANTITY'
    end
  end
  object DSCombo_DETAIL: TDataSource
    DataSet = CDSCombo_DETAIL
    Left = 328
    Top = 768
  end
  object DSPCombo_DETAIL: TDataSetProvider
    DataSet = QCombo_DETAILFD
    Options = [poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 384
    Top = 768
  end
  object CDSCombo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCombo'
    AfterInsert = CDSComboAfterInsert
    AfterPost = CDSComboAfterDelete
    AfterDelete = CDSComboAfterDelete
    Left = 440
    Top = 704
    object CDSComboPRICE: TFloatField
      FieldName = 'PRICE'
      Origin = 'PRICE'
      Required = True
      DisplayFormat = '#.00'
    end
    object CDSComboPRODUCT: TWideStringField
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      Required = True
      FixedChar = True
      Size = 35
    end
    object CDSComboCOMBO_ID: TIntegerField
      FieldName = 'COMBO_ID'
      Origin = 'COMBO_ID'
      ProviderFlags = [pfInWhere]
    end
  end
  object DSCombo: TDataSource
    DataSet = CDSCombo
    OnDataChange = DSComboDataChange
    Left = 326
    Top = 703
  end
  object DSPCombo: TDataSetProvider
    DataSet = QComboFD
    Options = [poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 384
    Top = 704
  end
  object DSPOTC2: TDataSetProvider
    DataSet = DQLDSOTC2FD
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 888
    Top = 778
  end
  object DSOTC2: TDataSource
    DataSet = CDSOTC2
    Left = 944
    Top = 778
  end
  object CDSOTC2: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    PacketRecords = 5
    Params = <>
    ProviderName = 'DSPOTC2'
    Left = 1032
    Top = 786
    object CDSOTC2OTCNUMBER: TAutoIncField
      FieldName = 'OTCNUMBER'
      Origin = 'OTCNUMBER'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object CDSOTC2TOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object CDSOTC2COBRADO: TStringField
      FieldName = 'COBRADO'
      Origin = 'COBRADO'
      FixedChar = True
      Size = 1
    end
    object CDSOTC2FECHAOTC: TSQLTimeStampField
      FieldName = 'FECHAOTC'
      Origin = 'FECHAOTC'
    end
    object CDSOTC2RX: TStringField
      FieldName = 'RX'
      Origin = 'RX'
      FixedChar = True
      Size = 1
    end
    object CDSOTC2COSTOVENTA: TFMTBCDField
      FieldName = 'COSTOVENTA'
      Origin = 'COSTOVENTA'
      Precision = 18
      Size = 2
    end
    object CDSOTC2NUMEROCLIENTE: TIntegerField
      FieldName = 'NUMEROCLIENTE'
      Origin = 'NUMEROCLIENTE'
    end
    object CDSOTC2MEDICAMENTOMIX: TStringField
      FieldName = 'MEDICAMENTOMIX'
      Origin = 'MEDICAMENTOMIX'
      FixedChar = True
      Size = 120
    end
    object CDSOTC2NUMEROTRANSACCION: TIntegerField
      FieldName = 'NUMEROTRANSACCION'
      Origin = 'NUMEROTRANSACCION'
    end
    object CDSOTC2PAGO_PLAN: TFMTBCDField
      FieldName = 'PAGO_PLAN'
      Origin = 'PAGO_PLAN'
      Precision = 18
      Size = 2
    end
    object CDSOTC2DEDUCIBLE: TFMTBCDField
      FieldName = 'DEDUCIBLE'
      Origin = 'DEDUCIBLE'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PARTIAL_COMPLETION: TStringField
      FieldName = 'PARTIAL_COMPLETION'
      Origin = 'PARTIAL_COMPLETION'
      FixedChar = True
      Size = 1
    end
    object CDSOTC2RX_STATUS: TStringField
      FieldName = 'RX_STATUS'
      Origin = 'RX_STATUS'
      FixedChar = True
      Size = 1
    end
    object CDSOTC2NO_REF_DISPENSADO: TIntegerField
      FieldName = 'NO_REF_DISPENSADO'
      Origin = 'NO_REF_DISPENSADO'
    end
    object CDSOTC2INGREDIENT_COST_PAID: TFMTBCDField
      FieldName = 'INGREDIENT_COST_PAID'
      Origin = 'INGREDIENT_COST_PAID'
      Precision = 18
      Size = 2
    end
    object CDSOTC2INCENTIVE_FEE_PAID: TFMTBCDField
      FieldName = 'INCENTIVE_FEE_PAID'
      Origin = 'INCENTIVE_FEE_PAID'
      Precision = 18
      Size = 2
    end
    object CDSOTC2DISPENSING_FEE_PAID: TFMTBCDField
      FieldName = 'DISPENSING_FEE_PAID'
      Origin = 'DISPENSING_FEE_PAID'
      Precision = 18
      Size = 2
    end
    object CDSOTC2OTHER_AMOUNT_PAID: TFMTBCDField
      FieldName = 'OTHER_AMOUNT_PAID'
      Origin = 'OTHER_AMOUNT_PAID'
      Precision = 18
      Size = 2
    end
    object CDSOTC2AMOUNT_COPAY_COINS: TFMTBCDField
      FieldName = 'AMOUNT_COPAY_COINS'
      Origin = 'AMOUNT_COPAY_COINS'
      Precision = 18
      Size = 2
    end
    object CDSOTC2GANANCIA: TFMTBCDField
      FieldName = 'GANANCIA'
      Origin = 'GANANCIA'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PHARMACIST: TStringField
      FieldName = 'PHARMACIST'
      Origin = 'PHARMACIST'
      FixedChar = True
      Size = 3
    end
    object CDSOTC2DAYS_SUPPLY: TIntegerField
      FieldName = 'DAYS_SUPPLY'
      Origin = 'DAYS_SUPPLY'
    end
    object CDSOTC2PAGADA: TStringField
      FieldName = 'PAGADA'
      Origin = 'PAGADA'
      FixedChar = True
      Size = 1
    end
    object CDSOTC2PRECIOFACTURACION: TFMTBCDField
      FieldName = 'PRECIOFACTURACION'
      Origin = 'PRECIOFACTURACION'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PRODUCT_ID: TIntegerField
      FieldName = 'PRODUCT_ID'
      Origin = 'PRODUCT_ID'
    end
    object CDSOTC2TIME_RX: TSQLTimeStampField
      FieldName = 'TIME_RX'
      Origin = 'TIME_RX'
    end
    object CDSOTC2NO_HORA: TIntegerField
      FieldName = 'NO_HORA'
      Origin = 'NO_HORA'
    end
    object CDSOTC2NUMEROPLAN: TIntegerField
      FieldName = 'NUMEROPLAN'
      Origin = 'NUMEROPLAN'
    end
    object CDSOTC2METRICDECIMALQUANTITY: TIntegerField
      FieldName = 'METRICDECIMALQUANTITY'
      Origin = 'METRICDECIMALQUANTITY'
    end
    object d: TStringField
      FieldName = 'PLAN_MEDICO'
      Origin = 'PLAN_MEDICO'
      Size = 3
    end
    object CDSOTC2NUMERO_AUTORIZACION: TStringField
      FieldName = 'NUMERO_AUTORIZACION'
      Origin = 'NUMERO_AUTORIZACION'
    end
    object CDSOTC2MEDICAMENTO: TStringField
      FieldName = 'MEDICAMENTO'
      Origin = 'MEDICAMENTO'
      Size = 30
    end
    object CDSOTC2NDC: TStringField
      FieldName = 'NDC'
      Origin = 'NDC'
      Size = 15
    end
    object CDSOTC2ATENDIDOPOR: TStringField
      FieldName = 'ATENDIDOPOR'
      Origin = 'ATENDIDOPOR'
      Size = 5
    end
    object CDSOTC2LOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 12
    end
    object CDSOTC2SIGNATURE_LINK: TIntegerField
      FieldName = 'SIGNATURE_LINK'
      Origin = 'SIGNATURE_LINK'
    end
    object CDSOTC2CHECKED: TIntegerField
      FieldName = 'CHECKED'
      Origin = 'CHECKED'
    end
    object CDSOTC2TXR: TStringField
      FieldName = 'TXR'
      Origin = 'TXR'
      FixedChar = True
      Size = 8
    end
    object CDSOTC2PS_521_FL: TFMTBCDField
      FieldName = 'PS_521_FL'
      Origin = 'PS_521_FL'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PS_523_FN: TFMTBCDField
      FieldName = 'PS_523_FN'
      Origin = 'PS_523_FN'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PS_512_FC: TFMTBCDField
      FieldName = 'PS_512_FC'
      Origin = 'PS_512_FC'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PS_513_FD: TFMTBCDField
      FieldName = 'PS_513_FD'
      Origin = 'PS_513_FD'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PS_517_FH: TFMTBCDField
      FieldName = 'PS_517_FH'
      Origin = 'PS_517_FH'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PS_518_FI: TFMTBCDField
      FieldName = 'PS_518_FI'
      Origin = 'PS_518_FI'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PS_520_FK: TFMTBCDField
      FieldName = 'PS_520_FK'
      Origin = 'PS_520_FK'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PS_514_FE: TFMTBCDField
      FieldName = 'PS_514_FE'
      Origin = 'PS_514_FE'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PS_346_HH: TFMTBCDField
      FieldName = 'PS_346_HH'
      Origin = 'PS_346_HH'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PS_347_HJ: TFMTBCDField
      FieldName = 'PS_347_HJ'
      Origin = 'PS_347_HJ'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PS_348_HK: TFMTBCDField
      FieldName = 'PS_348_HK'
      Origin = 'PS_348_HK'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PS_571_NZ: TFMTBCDField
      FieldName = 'PS_571_NZ'
      Origin = 'PS_571_NZ'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PS_575_EQ: TFMTBCDField
      FieldName = 'PS_575_EQ'
      Origin = 'PS_575_EQ'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PS_574_2Y: TFMTBCDField
      FieldName = 'PS_574_2Y'
      Origin = 'PS_574_2Y'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PS_572_4U: TFMTBCDField
      FieldName = 'PS_572_4U'
      Origin = 'PS_572_4U'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PS_577_G3: TFMTBCDField
      FieldName = 'PS_577_G3'
      Origin = 'PS_577_G3'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PS_133_UJ: TFMTBCDField
      FieldName = 'PS_133_UJ'
      Origin = 'PS_133_UJ'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PS_134_UK: TFMTBCDField
      FieldName = 'PS_134_UK'
      Origin = 'PS_134_UK'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PS_135_UM: TFMTBCDField
      FieldName = 'PS_135_UM'
      Origin = 'PS_135_UM'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PS_136_UN: TFMTBCDField
      FieldName = 'PS_136_UN'
      Origin = 'PS_136_UN'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PS_137_UP: TFMTBCDField
      FieldName = 'PS_137_UP'
      Origin = 'PS_137_UP'
      Precision = 18
      Size = 2
    end
    object CDSOTC2USUARIO_NO: TIntegerField
      FieldName = 'USUARIO_NO'
      Origin = 'USUARIO_NO'
    end
    object CDSOTC2NUMERORECETA: TLargeintField
      FieldName = 'NUMERORECETA'
      Origin = 'NUMERORECETA'
    end
    object CDSOTC2MEZCLA_TRAN_NO: TIntegerField
      FieldName = 'MEZCLA_TRAN_NO'
      Origin = 'MEZCLA_TRAN_NO'
    end
    object CDSOTC2REFILL_REMINDED: TIntegerField
      FieldName = 'REFILL_REMINDED'
      Origin = 'REFILL_REMINDED'
    end
    object CDSOTC2AUDITED: TIntegerField
      FieldName = 'AUDITED'
      Origin = 'AUDITED'
    end
    object CDSOTC2BATCH_NUMBER: TIntegerField
      FieldName = 'BATCH_NUMBER'
      Origin = 'BATCH_NUMBER'
    end
    object CDSOTC2WC_PICKUP: TBooleanField
      FieldName = 'WC_PICKUP'
      Origin = 'WC_PICKUP'
    end
    object CDSOTC2EP_TRANSACTION_NUMBER: TIntegerField
      FieldName = 'EP_TRANSACTION_NUMBER'
      Origin = 'EP_TRANSACTION_NUMBER'
    end
    object CDSOTC2REFILL_NOTIFIED: TBooleanField
      FieldName = 'REFILL_NOTIFIED'
      Origin = 'REFILL_NOTIFIED'
    end
    object CDSOTC2PRICE_TABLE_ID: TIntegerField
      FieldName = 'PRICE_TABLE_ID'
      Origin = 'PRICE_TABLE_ID'
    end
    object CDSOTC2WF_TYPED: TWideStringField
      FieldName = 'WF_TYPED'
      Origin = 'WF_TYPED'
      FixedChar = True
      Size = 30
    end
    object CDSOTC2WF_BILLED: TWideStringField
      FieldName = 'WF_BILLED'
      Origin = 'WF_BILLED'
      FixedChar = True
      Size = 30
    end
    object CDSOTC2WF_PRINTED: TWideStringField
      FieldName = 'WF_PRINTED'
      Origin = 'WF_PRINTED'
      FixedChar = True
      Size = 30
    end
    object CDSOTC2WF_CHECKED: TWideStringField
      FieldName = 'WF_CHECKED'
      Origin = 'WF_CHECKED'
      FixedChar = True
      Size = 30
    end
    object CDSOTC2WF_DELIVERED: TWideStringField
      FieldName = 'WF_DELIVERED'
      Origin = 'WF_DELIVERED'
      FixedChar = True
      Size = 30
    end
    object CDSOTC2WF_FILLED: TWideStringField
      FieldName = 'WF_FILLED'
      Origin = 'WF_FILLED'
      FixedChar = True
      Size = 30
    end
    object CDSOTC2CLAIM_STATUS: TIntegerField
      FieldName = 'CLAIM_STATUS'
      Origin = 'CLAIM_STATUS'
    end
    object CDSOTC2FACILITY_ID: TIntegerField
      FieldName = 'FACILITY_ID'
      Origin = 'FACILITY_ID'
    end
    object CDSOTC2ADHERENCE: TBooleanField
      FieldName = 'ADHERENCE'
      Origin = 'ADHERENCE'
    end
    object CDSOTC2UNIT_PRICE: TFMTBCDField
      FieldName = 'UNIT_PRICE'
      Origin = 'UNIT_PRICE'
      Precision = 18
      Size = 2
    end
    object CDSOTC2MED_CHART: TBooleanField
      FieldName = 'MED_CHART'
      Origin = 'MED_CHART'
    end
    object CDSOTC2PRINT_Q: TWideStringField
      FieldName = 'PRINT_Q'
      Origin = 'PRINT_Q'
      FixedChar = True
      Size = 1
    end
    object CDSOTC2BILL_LATTER: TBooleanField
      FieldName = 'BILL_LATTER'
      Origin = 'BILL_LATTER'
    end
    object CDSOTC2WFSTORAGE: TWideStringField
      FieldName = 'WFSTORAGE'
      Origin = 'WFSTORAGE'
      FixedChar = True
      Size = 30
    end
    object CDSOTC2WF_STORAGE: TWideStringField
      FieldName = 'WF_STORAGE'
      Origin = 'WF_STORAGE'
      FixedChar = True
      Size = 30
    end
    object CDSOTC2WF_CASHIER: TWideStringField
      FieldName = 'WF_CASHIER'
      Origin = 'WF_CASHIER'
      FixedChar = True
      Size = 30
    end
    object CDSOTC2WF_SIGNATURE: TWideStringField
      FieldName = 'WF_SIGNATURE'
      Origin = 'WF_SIGNATURE'
      FixedChar = True
      Size = 30
    end
    object CDSOTC2ALCHEMY_PRODUCTID: TIntegerField
      FieldName = 'ALCHEMY_PRODUCTID'
      Origin = 'ALCHEMY_PRODUCTID'
    end
    object CDSOTC2MARKETEDPRODUCTID: TIntegerField
      FieldName = 'MARKETEDPRODUCTID'
      Origin = 'MARKETEDPRODUCTID'
    end
    object CDSOTC2PA: TBooleanField
      FieldName = 'PA'
      Origin = 'PA'
    end
    object CDSOTC2WF_REVERSE: TBooleanField
      FieldName = 'WF_REVERSE'
      Origin = 'WF_REVERSE'
    end
    object CDSOTC2PDN_SENT: TBooleanField
      FieldName = 'PDN_SENT'
      Origin = 'PDN_SENT'
    end
    object CDSOTC2REFILL_REQ_TRANSNO: TIntegerField
      FieldName = 'REFILL_REQ_TRANSNO'
      Origin = 'REFILL_REQ_TRANSNO'
    end
    object CDSOTC2BATCH_REFILLREQ_DATE: TDateField
      FieldName = 'BATCH_REFILLREQ_DATE'
      Origin = 'BATCH_REFILLREQ_DATE'
    end
    object CDSOTC2PRIORAUTHORIZATION: TStringField
      FieldName = 'PRIORAUTHORIZATION'
      Origin = 'PRIORAUTHORIZATION'
      Size = 12
    end
    object CDSOTC2BASISOFCOST: TStringField
      FieldName = 'BASISOFCOST'
      Origin = 'BASISOFCOST'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2CLINICIDNUMBER: TIntegerField
      FieldName = 'CLINICIDNUMBER'
      Origin = 'CLINICIDNUMBER'
    end
    object CDSOTC2DIAGNOSISCODE: TWideStringField
      FieldName = 'DIAGNOSISCODE'
      Origin = 'DIAGNOSISCODE'
      FixedChar = True
      Size = 6
    end
    object CDSOTC2DURCONFLICTCODE: TWideStringField
      FieldName = 'DURCONFLICTCODE'
      Origin = 'DURCONFLICTCODE'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2DURINTERVENTIONCODE: TWideStringField
      FieldName = 'DURINTERVENTIONCODE'
      Origin = 'DURINTERVENTIONCODE'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2DUROUTCOMECODE: TWideStringField
      FieldName = 'DUROUTCOMECODE'
      Origin = 'DUROUTCOMECODE'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2LEVELOFSERVICE: TIntegerField
      FieldName = 'LEVELOFSERVICE'
      Origin = 'LEVELOFSERVICE'
    end
    object CDSOTC2PRIMARYPRESCRIBER: TWideStringField
      FieldName = 'PRIMARYPRESCRIBER'
      Origin = 'PRIMARYPRESCRIBER'
      FixedChar = True
      Size = 10
    end
    object CDSOTC2RXDENIALCLARIF: TWideStringField
      FieldName = 'RXDENIALCLARIF'
      Origin = 'RXDENIALCLARIF'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2RXDENIALOVERRIDE: TIntegerField
      FieldName = 'RXDENIALOVERRIDE'
      Origin = 'RXDENIALOVERRIDE'
    end
    object CDSOTC2DISPENSINGFEE: TFMTBCDField
      FieldName = 'DISPENSINGFEE'
      Origin = 'DISPENSINGFEE'
      Precision = 18
      Size = 2
    end
    object CDSOTC2GROSSAMOUNTDUE: TFMTBCDField
      FieldName = 'GROSSAMOUNTDUE'
      Origin = 'GROSSAMOUNTDUE'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PATIENTPAIDAMOUNT: TFMTBCDField
      FieldName = 'PATIENTPAIDAMOUNT'
      Origin = 'PATIENTPAIDAMOUNT'
      Precision = 18
      Size = 2
    end
    object CDSOTC2SALESTAX: TFMTBCDField
      FieldName = 'SALESTAX'
      Origin = 'SALESTAX'
      Precision = 18
      Size = 2
    end
    object CDSOTC2OTAMCLDSUBCOUNTQUAL: TWideStringField
      FieldName = 'OTAMCLDSUBCOUNTQUAL'
      Origin = 'OTAMCLDSUBCOUNTQUAL'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2PRODUCTSERVIDQUAL: TWideStringField
      FieldName = 'PRODUCTSERVIDQUAL'
      Origin = 'PRODUCTSERVIDQUAL'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2PROVIDERID: TWideStringField
      FieldName = 'PROVIDERID'
      Origin = 'PROVIDERID'
      FixedChar = True
      Size = 15
    end
    object CDSOTC2UNIT_DOSE_INDICATOR: TWideStringField
      FieldName = 'UNIT_DOSE_INDICATOR'
      Origin = 'UNIT_DOSE_INDICATOR'
      FixedChar = True
      Size = 1
    end
    object CDSOTC2UNIT_OF_MEASURE: TWideStringField
      FieldName = 'UNIT_OF_MEASURE'
      Origin = 'UNIT_OF_MEASURE'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2SUB_CLARIF_CODE: TWideStringField
      FieldName = 'SUB_CLARIF_CODE'
      Origin = 'SUB_CLARIF_CODE'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2OTHERCOVERAGECODE: TWideStringField
      FieldName = 'OTHERCOVERAGECODE'
      Origin = 'OTHERCOVERAGECODE'
      FixedChar = True
      Size = 1
    end
    object CDSOTC2SERVICEPROVIDQUALIFIER: TWideStringField
      FieldName = 'SERVICEPROVIDQUALIFIER'
      Origin = 'SERVICEPROVIDQUALIFIER'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2OP_AMOUNTPAIDCOUNT: TIntegerField
      FieldName = 'OP_AMOUNTPAIDCOUNT'
      Origin = 'OP_AMOUNTPAIDCOUNT'
    end
    object CDSOTC2OP_REJECTCOUNT: TIntegerField
      FieldName = 'OP_REJECTCOUNT'
      Origin = 'OP_REJECTCOUNT'
    end
    object CDSOTC2COB_OTHERPAYMENTCOUNT: TIntegerField
      FieldName = 'COB_OTHERPAYMENTCOUNT'
      Origin = 'COB_OTHERPAYMENTCOUNT'
    end
    object CDSOTC2COMPDOSAGE_FORM_DESC_CODE: TWideStringField
      FieldName = 'COMPDOSAGE_FORM_DESC_CODE'
      Origin = 'COMPDOSAGE_FORM_DESC_CODE'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2COMPDISP_UNIT_FORM_INDI: TWideStringField
      FieldName = 'COMPDISP_UNIT_FORM_INDI'
      Origin = 'COMPDISP_UNIT_FORM_INDI'
      FixedChar = True
      Size = 1
    end
    object CDSOTC2COMPROUTE_OF_ADMINISTRATION: TWideStringField
      FieldName = 'COMPROUTE_OF_ADMINISTRATION'
      Origin = 'COMPROUTE_OF_ADMINISTRATION'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2COMPING_COMP_COUNT: TIntegerField
      FieldName = 'COMPING_COMP_COUNT'
      Origin = 'COMPING_COMP_COUNT'
    end
    object CDSOTC2DISPENSING_STATUS: TWideStringField
      FieldName = 'DISPENSING_STATUS'
      Origin = 'DISPENSING_STATUS'
      FixedChar = True
      Size = 1
    end
    object CDSOTC2QTY_INTENDED_DISP: TIntegerField
      FieldName = 'QTY_INTENDED_DISP'
      Origin = 'QTY_INTENDED_DISP'
    end
    object CDSOTC2DAYS_SUPPLY_INTEND_DISP: TIntegerField
      FieldName = 'DAYS_SUPPLY_INTEND_DISP'
      Origin = 'DAYS_SUPPLY_INTEND_DISP'
    end
    object CDSOTC2FLAT_SALES_TAXSUB: TFMTBCDField
      FieldName = 'FLAT_SALES_TAXSUB'
      Origin = 'FLAT_SALES_TAXSUB'
      Precision = 18
      Size = 2
    end
    object CDSOTC2ASSOC_RX_SERVICE_DATE: TSQLTimeStampField
      FieldName = 'ASSOC_RX_SERVICE_DATE'
      Origin = 'ASSOC_RX_SERVICE_DATE'
    end
    object CDSOTC2ASSOC_RX_SERVICE_REF_NO: TWideStringField
      FieldName = 'ASSOC_RX_SERVICE_REF_NO'
      Origin = 'ASSOC_RX_SERVICE_REF_NO'
      FixedChar = True
      Size = 7
    end
    object CDSOTC2CUPONTYPE: TWideStringField
      FieldName = 'CUPONTYPE'
      Origin = 'CUPONTYPE'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2CUPON_NUMBER: TWideStringField
      FieldName = 'CUPON_NUMBER'
      Origin = 'CUPON_NUMBER'
      FixedChar = True
      Size = 15
    end
    object CDSOTC2CUPON_VALUE_AMT: TFMTBCDField
      FieldName = 'CUPON_VALUE_AMT'
      Origin = 'CUPON_VALUE_AMT'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PRIMARYCAREPROVIDQUALIFIER: TWideStringField
      FieldName = 'PRIMARYCAREPROVIDQUALIFIER'
      Origin = 'PRIMARYCAREPROVIDQUALIFIER'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2PRIMARYCAREPROVID: TWideStringField
      FieldName = 'PRIMARYCAREPROVID'
      Origin = 'PRIMARYCAREPROVID'
      FixedChar = True
      Size = 15
    end
    object CDSOTC2PRIMARYCAREPROVLASTNAME: TWideStringField
      FieldName = 'PRIMARYCAREPROVLASTNAME'
      Origin = 'PRIMARYCAREPROVLASTNAME'
      FixedChar = True
      Size = 15
    end
    object CDSOTC2IAID_464_EX: TWideStringField
      FieldName = 'IAID_464_EX'
      Origin = 'IAID_464_EX'
      FixedChar = True
      Size = 11
    end
    object CDSOTC2DRC_357_NV: TWideStringField
      FieldName = 'DRC_357_NV'
      Origin = 'DRC_357_NV'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2PAI_391_MT: TWideStringField
      FieldName = 'PAI_391_MT'
      Origin = 'PAI_391_MT'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2COMPOUND_TYPE_996_G1: TWideStringField
      FieldName = 'COMPOUND_TYPE_996_G1'
      Origin = 'COMPOUND_TYPE_996_G1'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2PST_147_U7: TWideStringField
      FieldName = 'PST_147_U7'
      Origin = 'PST_147_U7'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2SCCD_354_NX: TSmallintField
      FieldName = 'SCCD_354_NX'
      Origin = 'SCCD_354_NX'
    end
    object CDSOTC2PRAC_353_NR: TSmallintField
      FieldName = 'PRAC_353_NR'
      Origin = 'PRAC_353_NR'
    end
    object CDSOTC2BSC_392_MU: TSmallintField
      FieldName = 'BSC_392_MU'
      Origin = 'BSC_392_MU'
    end
    object CDSOTC2SPECIAL_PACK_INDI_429_DT: TWideStringField
      FieldName = 'SPECIAL_PACK_INDI_429_DT'
      Origin = 'SPECIAL_PACK_INDI_429_DT'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2ROUTEOFADMIN_995_E2: TWideStringField
      FieldName = 'ROUTEOFADMIN_995_E2'
      Origin = 'ROUTEOFADMIN_995_E2'
      FixedChar = True
      Size = 11
    end
    object CDSOTC2WC_117_TR: TSmallintField
      FieldName = 'WC_117_TR'
      Origin = 'WC_117_TR'
    end
    object CDSOTC2WC_118_TS: TWideStringField
      FieldName = 'WC_118_TS'
      Origin = 'WC_118_TS'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2WC_119_TT: TWideStringField
      FieldName = 'WC_119_TT'
      Origin = 'WC_119_TT'
      FixedChar = True
      Size = 15
    end
    object CDSOTC2WC_120_TU: TWideStringField
      FieldName = 'WC_120_TU'
      Origin = 'WC_120_TU'
      FixedChar = True
    end
    object CDSOTC2WC_121_TV: TWideStringField
      FieldName = 'WC_121_TV'
      Origin = 'WC_121_TV'
      FixedChar = True
      Size = 30
    end
    object CDSOTC2WC_122_TW: TWideStringField
      FieldName = 'WC_122_TW'
      Origin = 'WC_122_TW'
      FixedChar = True
    end
    object CDSOTC2WC_123_TX: TWideStringField
      FieldName = 'WC_123_TX'
      Origin = 'WC_123_TX'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2WC_124_TY: TWideStringField
      FieldName = 'WC_124_TY'
      Origin = 'WC_124_TY'
      FixedChar = True
      Size = 15
    end
    object CDSOTC2WC_125_TZ: TWideStringField
      FieldName = 'WC_125_TZ'
      Origin = 'WC_125_TZ'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2WC_126_UA: TWideStringField
      FieldName = 'WC_126_UA'
      Origin = 'WC_126_UA'
      FixedChar = True
      Size = 19
    end
    object CDSOTC2PRIMARYCAREPROVLOCATIONCODE: TWideStringField
      FieldName = 'PRIMARYCAREPROVLOCATIONCODE'
      Origin = 'PRIMARYCAREPROVLOCATIONCODE'
      FixedChar = True
      Size = 3
    end
    object CDSOTC2PATIENTLOCATION: TIntegerField
      FieldName = 'PATIENTLOCATION'
      Origin = 'PATIENTLOCATION'
    end
    object CDSOTC2PRESC_SRNM: TWideStringField
      FieldName = 'PRESC_SRNM'
      Origin = 'PRESC_SRNM'
      FixedChar = True
      Size = 7
    end
    object CDSOTC2PS_558_AW: TFMTBCDField
      FieldName = 'PS_558_AW'
      Origin = 'PS_558_AW'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PS_559_AX: TFMTBCDField
      FieldName = 'PS_559_AX'
      Origin = 'PS_559_AX'
      Precision = 18
      Size = 2
    end
    object CDSOTC2REVENUE_CODE: TWideStringField
      FieldName = 'REVENUE_CODE'
      Origin = 'REVENUE_CODE'
      FixedChar = True
      Size = 4
    end
    object CDSOTC2DAW: TSmallintField
      FieldName = 'DAW'
      Origin = 'DAW'
    end
    object CDSOTC2BATCH_NUMBER_BILLING: TLargeintField
      FieldName = 'BATCH_NUMBER_BILLING'
      Origin = 'BATCH_NUMBER_BILLING'
    end
    object CDSOTC2TERMINADA: TBooleanField
      FieldName = 'TERMINADA'
      Origin = 'TERMINADA'
    end
    object CDSOTC2MEDICAID_PAID_AMOUNT: TFMTBCDField
      FieldName = 'MEDICAID_PAID_AMOUNT'
      Origin = 'MEDICAID_PAID_AMOUNT'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PMC_459_ER: TWideStringField
      FieldName = 'PMC_459_ER'
      Origin = 'PMC_459_ER'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2PMCC_458_SE: TIntegerField
      FieldName = 'PMCC_458_SE'
      Origin = 'PMCC_458_SE'
    end
    object CDSOTC2SPIDN_454_EK: TWideStringField
      FieldName = 'SPIDN_454_EK'
      Origin = 'SPIDN_454_EK'
      FixedChar = True
      Size = 12
    end
    object CDSOTC2IATID_463_EW: TWideStringField
      FieldName = 'IATID_463_EW'
      Origin = 'IATID_463_EW'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2QTY: TFMTBCDField
      FieldName = 'QTY'
      Origin = 'QTY'
      Precision = 18
      Size = 2
    end
    object CDSOTC2CONTROLADO: TWideStringField
      FieldName = 'CONTROLADO'
      Origin = 'CONTROLADO'
      FixedChar = True
      Size = 4
    end
    object CDSOTC2CODIGOREFILLNUEVO: TSmallintField
      FieldName = 'CODIGOREFILLNUEVO'
      Origin = 'CODIGOREFILLNUEVO'
    end
    object CDSOTC2RXNUMBERSRNQ: TWideStringField
      FieldName = 'RXNUMBERSRNQ'
      Origin = 'RXNUMBERSRNQ'
      FixedChar = True
      Size = 1
    end
    object CDSOTC2TRANSACTION_CODE: TWideStringField
      FieldName = 'TRANSACTION_CODE'
      Origin = 'TRANSACTION_CODE'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2MEDICAMENTOORIGINAL: TWideStringField
      FieldName = 'MEDICAMENTOORIGINAL'
      Origin = 'MEDICAMENTOORIGINAL'
      FixedChar = True
      Size = 30
    end
    object CDSOTC2ROBOT: TIntegerField
      FieldName = 'ROBOT'
      Origin = 'ROBOT'
    end
    object CDSOTC2LABEL_NAME: TWideStringField
      FieldName = 'LABEL_NAME'
      Origin = 'LABEL_NAME'
      FixedChar = True
    end
    object CDSOTC2FECHAEXPIRACION: TDateField
      FieldName = 'FECHAEXPIRACION'
      Origin = 'FECHAEXPIRACION'
    end
    object CDSOTC2IMPRIMIR: TBooleanField
      FieldName = 'IMPRIMIR'
      Origin = 'IMPRIMIR'
    end
    object CDSOTC2INSTANCIA: TIntegerField
      FieldName = 'INSTANCIA'
      Origin = 'INSTANCIA'
    end
    object CDSOTC2ORG_PROS_PROD_SERVID: TStringField
      FieldName = 'ORG_PROS_PROD_SERVID'
      Origin = 'ORG_PROS_PROD_SERVID'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2ORG_PRESC_QTY: TIntegerField
      FieldName = 'ORG_PRESC_QTY'
      Origin = 'ORG_PRESC_QTY'
    end
    object CDSOTC2ORG_PRES_PROD_SIDQ: TStringField
      FieldName = 'ORG_PRES_PROD_SIDQ'
      Origin = 'ORG_PRES_PROD_SIDQ'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2PRIOR_AUTH_TYPE_CODE: TStringField
      FieldName = 'PRIOR_AUTH_TYPE_CODE'
      Origin = 'PRIOR_AUTH_TYPE_CODE'
      FixedChar = True
      Size = 1
    end
    object CDSOTC2INCENTIVE_AMOUNT_SUB: TFMTBCDField
      FieldName = 'INCENTIVE_AMOUNT_SUB'
      Origin = 'INCENTIVE_AMOUNT_SUB'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PROF_SERV_FEE_SUB: TFMTBCDField
      FieldName = 'PROF_SERV_FEE_SUB'
      Origin = 'PROF_SERV_FEE_SUB'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PERCENTAGE_SALES_TAX_SUB: TFMTBCDField
      FieldName = 'PERCENTAGE_SALES_TAX_SUB'
      Origin = 'PERCENTAGE_SALES_TAX_SUB'
      Precision = 18
      Size = 2
    end
    object CDSOTC2PERCENTAGE_SALES_TAX_RATE: TFMTBCDField
      FieldName = 'PERCENTAGE_SALES_TAX_RATE'
      Origin = 'PERCENTAGE_SALES_TAX_RATE'
      Precision = 18
      Size = 2
    end
    object CDSOTC2OTHERAMOUNTCLAIMEDSUB: TFMTBCDField
      FieldName = 'OTHERAMOUNTCLAIMEDSUB'
      Origin = 'OTHERAMOUNTCLAIMEDSUB'
      Precision = 18
      Size = 2
    end
    object CDSOTC2QTY_TEMP: TFMTBCDField
      FieldName = 'QTY_TEMP'
      Origin = 'QTY_TEMP'
      Precision = 18
      Size = 2
    end
    object CDSOTC2OTHERAMOUNTCLAIMEDSUBCOUNT: TIntegerField
      FieldName = 'OTHERAMOUNTCLAIMEDSUBCOUNT'
      Origin = 'OTHERAMOUNTCLAIMEDSUBCOUNT'
    end
    object CDSOTC2PER_SALESTAX_BASIS_SUB: TStringField
      FieldName = 'PER_SALESTAX_BASIS_SUB'
      Origin = 'PER_SALESTAX_BASIS_SUB'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2WC_DATE_OF_INJURY: TSQLTimeStampField
      FieldName = 'WC_DATE_OF_INJURY'
      Origin = 'WC_DATE_OF_INJURY'
    end
    object CDSOTC2WC_EMPLOYER_NAME: TStringField
      FieldName = 'WC_EMPLOYER_NAME'
      Origin = 'WC_EMPLOYER_NAME'
      FixedChar = True
      Size = 3
    end
    object CDSOTC2WC_EMPLOYER_STREET: TStringField
      FieldName = 'WC_EMPLOYER_STREET'
      Origin = 'WC_EMPLOYER_STREET'
      FixedChar = True
      Size = 30
    end
    object CDSOTC2WC_EMPLOYER_CITY: TStringField
      FieldName = 'WC_EMPLOYER_CITY'
      Origin = 'WC_EMPLOYER_CITY'
      FixedChar = True
      Size = 15
    end
    object CDSOTC2WC_EMPLOYER_STATE: TStringField
      FieldName = 'WC_EMPLOYER_STATE'
      Origin = 'WC_EMPLOYER_STATE'
      FixedChar = True
      Size = 2
    end
    object CDSOTC2WC_EMPLOYER_CONTACT: TStringField
      FieldName = 'WC_EMPLOYER_CONTACT'
      Origin = 'WC_EMPLOYER_CONTACT'
      FixedChar = True
      Size = 30
    end
    object CDSOTC2WC_EMLPOYER_ZIP: TStringField
      FieldName = 'WC_EMLPOYER_ZIP'
      Origin = 'WC_EMLPOYER_ZIP'
      FixedChar = True
      Size = 15
    end
    object CDSOTC2WC_CARRIER_ID: TStringField
      FieldName = 'WC_CARRIER_ID'
      Origin = 'WC_CARRIER_ID'
      FixedChar = True
      Size = 10
    end
    object CDSOTC2WC_CLAIMREF_ID: TStringField
      FieldName = 'WC_CLAIMREF_ID'
      Origin = 'WC_CLAIMREF_ID'
      FixedChar = True
      Size = 30
    end
    object CDSOTC2WC_EMPLOYER_PHONE: TStringField
      FieldName = 'WC_EMPLOYER_PHONE'
      Origin = 'WC_EMPLOYER_PHONE'
      FixedChar = True
      Size = 13
    end
    object CDSOTC2PLANESMEDICOSNO: TIntegerField
      FieldName = 'PLANESMEDICOSNO'
      Origin = 'PLANESMEDICOSNO'
    end
    object CDSOTC2RX_SHOW_NOREFDISP_FLOAT: TBooleanField
      FieldName = 'RX_SHOW_NOREFDISP_FLOAT'
      Origin = 'RX_SHOW_NOREFDISP_FLOAT'
    end
    object CDSOTC2APPRISS_SENT: TBooleanField
      FieldName = 'APPRISS_SENT'
      Origin = 'APPRISS_SENT'
    end
    object CDSOTC2MessageID: TWideStringField
      FieldName = 'MessageID'
      Origin = 'MessageID'
      FixedChar = True
      Size = 40
    end
    object CDSOTC2RECORD_LOCKED: TBooleanField
      FieldName = 'RECORD_LOCKED'
      Origin = 'RECORD_LOCKED'
    end
  end
  object DSPPrescriptions2: TDataSetProvider
    DataSet = SQLQPrescriptions2FD
    Options = [poAllowCommandText]
    Left = 888
    Top = 728
  end
  object DSPrescriptions2: TDataSource
    DataSet = CDSPrescriptions2
    Left = 944
    Top = 728
  end
  object CDSPrescriptions2: TClientDataSet
    Aggregates = <>
    PacketRecords = 5
    Params = <>
    ProviderName = 'DSPPrescriptions2'
    Left = 1032
    Top = 736
    object CDSPrescriptions2NUMERODOCTOR: TIntegerField
      FieldName = 'NUMERODOCTOR'
      Origin = 'NUMERODOCTOR'
    end
    object CDSPrescriptions2NUMEROCLIENTE: TIntegerField
      FieldName = 'NUMEROCLIENTE'
      Origin = 'NUMEROCLIENTE'
    end
    object CDSPrescriptions2NUMEROREFILLSAUTORIZADOS: TSmallintField
      FieldName = 'NUMEROREFILLSAUTORIZADOS'
      Origin = 'NUMEROREFILLSAUTORIZADOS'
    end
    object CDSPrescriptions2MEDICAMENTO: TStringField
      FieldName = 'MEDICAMENTO'
      Origin = 'MEDICAMENTO'
      Size = 30
    end
    object CDSPrescriptions2RXORIGINCODE: TStringField
      FieldName = 'RXORIGINCODE'
      Origin = 'RXORIGINCODE'
      Size = 1
    end
    object CDSPrescriptions2COMPOUNDCODE: TIntegerField
      FieldName = 'COMPOUNDCODE'
      Origin = 'COMPOUNDCODE'
    end
    object CDSPrescriptions2FECHAULTIMOREFILL: TSQLTimeStampField
      FieldName = 'FECHAULTIMOREFILL'
      Origin = 'FECHAULTIMOREFILL'
    end
    object CDSPrescriptions2FECHARECETA: TSQLTimeStampField
      FieldName = 'FECHARECETA'
      Origin = 'FECHARECETA'
    end
    object CDSPrescriptions2LICENCIA: TStringField
      FieldName = 'LICENCIA'
      Origin = 'LICENCIA'
      Size = 15
    end
    object CDSPrescriptions2NDC: TStringField
      FieldName = 'NDC'
      Origin = 'NDC'
      Size = 15
    end
    object CDSPrescriptions2PRODUCT_ID: TIntegerField
      FieldName = 'PRODUCT_ID'
      Origin = 'PRODUCT_ID'
    end
    object CDSPrescriptions2PRESCRIBERIDQUALIFIER: TStringField
      FieldName = 'PRESCRIBERIDQUALIFIER'
      Origin = 'PRESCRIBERIDQUALIFIER'
      Size = 2
    end
    object CDSPrescriptions2SCANED_RX_LINK: TIntegerField
      FieldName = 'SCANED_RX_LINK'
      Origin = 'SCANED_RX_LINK'
    end
    object CDSPrescriptions2INFORMACION_EXT: TMemoField
      FieldName = 'INFORMACION_EXT'
      Origin = 'INFORMACION_EXT'
      BlobType = ftMemo
    end
    object CDSPrescriptions2NUMERORECETA: TLargeintField
      FieldName = 'NUMERORECETA'
      Origin = 'NUMERORECETA'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object CDSPrescriptions2ePRESCRIBE_IDMess: TLargeintField
      FieldName = 'ePRESCRIBE_IDMess'
      Origin = 'ePRESCRIBE_IDMess'
    end
    object CDSPrescriptions2LABELCODESNO: TIntegerField
      FieldName = 'LABELCODESNO'
      Origin = 'LABELCODESNO'
    end
    object CDSPrescriptions2SPI: TWideStringField
      FieldName = 'SPI'
      Origin = 'SPI'
      FixedChar = True
      Size = 13
    end
    object CDSPrescriptions2MessageID: TWideStringField
      FieldName = 'MessageID'
      Origin = 'MessageID'
      FixedChar = True
      Size = 40
    end
    object CDSPrescriptions2ETIQUETA: TWideStringField
      FieldName = 'ETIQUETA'
      Origin = 'ETIQUETA'
      FixedChar = True
      Size = 296
    end
    object CDSPrescriptions2ACTIVE: TBooleanField
      FieldName = 'ACTIVE'
      Origin = 'ACTIVE'
      Required = True
    end
    object CDSPrescriptions2SIG: TWideStringField
      FieldName = 'SIG'
      Origin = 'SIG'
      FixedChar = True
      Size = 296
    end
    object CDSPrescriptions2DAYS_SUPPLY: TIntegerField
      FieldName = 'DAYS_SUPPLY'
      Origin = 'DAYS_SUPPLY'
    end
    object CDSPrescriptions2INSTANCIA: TIntegerField
      FieldName = 'INSTANCIA'
      Origin = 'INSTANCIA'
    end
    object CDSPrescriptions2CANTIDADRECETADA: TFloatField
      FieldName = 'CANTIDADRECETADA'
      Origin = 'CANTIDADRECETADA'
      DisplayFormat = '#.00'
    end
    object CDSPrescriptions2CANTIDAD_DISPONIBLE: TFMTBCDField
      FieldName = 'CANTIDAD_DISPONIBLE'
      Origin = 'CANTIDAD_DISPONIBLE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
  end
  object CDSPickUp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPPickUp'
    AfterPost = CDSPickUpAfterDelete
    AfterDelete = CDSPickUpAfterDelete
    Left = 1024
    Top = 840
    object CDSPickUpQTY: TFloatField
      FieldKind = fkLookup
      FieldName = 'QTY'
      LookupDataSet = CDSOTC
      LookupKeyFields = 'OTCNUMBER'
      LookupResultField = 'QTY'
      KeyFields = 'OTCNUMBER'
      DisplayFormat = '#.00'
      Lookup = True
    end
    object CDSPickUpOTCNUMBER: TIntegerField
      FieldName = 'OTCNUMBER'
      Origin = 'OTCNUMBER'
      Required = True
    end
    object CDSPickUpDeducible: TFloatField
      FieldKind = fkLookup
      FieldName = 'Deducible'
      LookupDataSet = CDSOTC
      LookupKeyFields = 'OTCNUMBER'
      LookupResultField = 'DEDUCIBLE'
      KeyFields = 'OTCNUMBER'
      DisplayFormat = '#.00'
      currency = True
      Lookup = True
    end
    object CDSPickUpPrecioVenta: TFloatField
      FieldKind = fkLookup
      FieldName = 'PrecioVenta'
      LookupDataSet = CDSOTC
      LookupKeyFields = 'OTCNUMBER'
      LookupResultField = 'TOTAL'
      KeyFields = 'OTCNUMBER'
      DisplayFormat = '#.00'
      currency = True
      Lookup = True
    end
    object CDSPickUpNumeroAutorizacion: TStringField
      FieldKind = fkLookup
      FieldName = 'NumeroAutorizacion'
      LookupDataSet = CDSOTC
      LookupKeyFields = 'OTCNUMBER'
      LookupResultField = 'NUMERO_AUTORIZACION'
      KeyFields = 'OTCNUMBER'
      Size = 15
      Lookup = True
    end
    object CDSPickUpINSTANCIA: TIntegerField
      FieldName = 'INSTANCIA'
      Origin = 'INSTANCIA'
    end
    object CDSPickUpFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSPickUpMEDICAMENTO: TStringField
      FieldKind = fkLookup
      FieldName = 'MEDICAMENTO'
      LookupDataSet = CDSOTC
      LookupKeyFields = 'OTCNUMBER'
      LookupResultField = 'MEDICAMENTO'
      KeyFields = 'OTCNUMBER'
      Size = 45
      Lookup = True
    end
    object CDSPickUpNUMERORECETA: TLargeintField
      FieldName = 'NUMERORECETA'
      Origin = 'NUMERORECETA'
    end
  end
  object DSPPickUp: TDataSetProvider
    DataSet = QPICKUPFD
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 888
    Top = 832
  end
  object DSPickUp: TDataSource
    DataSet = CDSPickUp
    Left = 944
    Top = 832
  end
  object DSPPrescriptions: TDataSetProvider
    DataSet = QCDSPrescriptionsFD
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 80
    Top = 473
  end
  object DSPrescriptions: TDataSource
    AutoEdit = False
    DataSet = CDSPrescriptions
    Left = 136
    Top = 473
  end
  object CDSPrescriptions: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    PacketRecords = 10
    Params = <>
    ProviderName = 'DSPPrescriptions'
    Left = 192
    Top = 473
    object CDSPrescriptionsNUMERODOCTOR: TIntegerField
      FieldName = 'NUMERODOCTOR'
      Origin = 'NUMERODOCTOR'
    end
    object CDSPrescriptionsNUMEROCLIENTE: TIntegerField
      FieldName = 'NUMEROCLIENTE'
      Origin = 'NUMEROCLIENTE'
    end
    object CDSPrescriptionsNUMEROREFILLSAUTORIZADOS: TSmallintField
      FieldName = 'NUMEROREFILLSAUTORIZADOS'
      Origin = 'NUMEROREFILLSAUTORIZADOS'
    end
    object CDSPrescriptionsMEDICAMENTO: TStringField
      FieldName = 'MEDICAMENTO'
      Origin = 'MEDICAMENTO'
      Size = 30
    end
    object CDSPrescriptionsRXORIGINCODE: TStringField
      FieldName = 'RXORIGINCODE'
      Origin = 'RXORIGINCODE'
      Size = 1
    end
    object CDSPrescriptionsCOMPOUNDCODE: TIntegerField
      FieldName = 'COMPOUNDCODE'
      Origin = 'COMPOUNDCODE'
    end
    object CDSPrescriptionsFECHAULTIMOREFILL: TSQLTimeStampField
      FieldName = 'FECHAULTIMOREFILL'
      Origin = 'FECHAULTIMOREFILL'
    end
    object CDSPrescriptionsFECHARECETA: TSQLTimeStampField
      FieldName = 'FECHARECETA'
      Origin = 'FECHARECETA'
    end
    object CDSPrescriptionsLICENCIA: TStringField
      FieldName = 'LICENCIA'
      Origin = 'LICENCIA'
      Size = 15
    end
    object CDSPrescriptionsNDC: TStringField
      FieldName = 'NDC'
      Origin = 'NDC'
      Size = 15
    end
    object CDSPrescriptionsPRODUCT_ID: TIntegerField
      FieldName = 'PRODUCT_ID'
      Origin = 'PRODUCT_ID'
    end
    object CDSPrescriptionsPRESCRIBERIDQUALIFIER: TStringField
      FieldName = 'PRESCRIBERIDQUALIFIER'
      Origin = 'PRESCRIBERIDQUALIFIER'
      Size = 2
    end
    object CDSPrescriptionsSCANED_RX_LINK: TIntegerField
      FieldName = 'SCANED_RX_LINK'
      Origin = 'SCANED_RX_LINK'
    end
    object CDSPrescriptionsINFORMACION_EXT: TMemoField
      FieldName = 'INFORMACION_EXT'
      Origin = 'INFORMACION_EXT'
      BlobType = ftMemo
    end
    object CDSPrescriptionsNUMERORECETA: TLargeintField
      FieldName = 'NUMERORECETA'
      Origin = 'NUMERORECETA'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object CDSPrescriptionsePRESCRIBE_IDMess: TLargeintField
      FieldName = 'ePRESCRIBE_IDMess'
      Origin = 'ePRESCRIBE_IDMess'
    end
    object CDSPrescriptionsLABELCODESNO: TIntegerField
      FieldName = 'LABELCODESNO'
      Origin = 'LABELCODESNO'
    end
    object CDSPrescriptionsSPI: TWideStringField
      FieldName = 'SPI'
      Origin = 'SPI'
      FixedChar = True
      Size = 13
    end
    object CDSPrescriptionsMessageID: TWideStringField
      FieldName = 'MessageID'
      Origin = 'MessageID'
      FixedChar = True
      Size = 40
    end
    object CDSPrescriptionsETIQUETA: TWideStringField
      FieldName = 'ETIQUETA'
      Origin = 'ETIQUETA'
      FixedChar = True
      Size = 296
    end
    object CDSPrescriptionsACTIVE: TBooleanField
      FieldName = 'ACTIVE'
      Origin = 'ACTIVE'
      Required = True
    end
    object CDSPrescriptionsSIG: TWideStringField
      FieldName = 'SIG'
      Origin = 'SIG'
      FixedChar = True
      Size = 296
    end
    object CDSPrescriptionsDAYS_SUPPLY: TIntegerField
      FieldName = 'DAYS_SUPPLY'
      Origin = 'DAYS_SUPPLY'
    end
    object CDSPrescriptionsINSTANCIA: TIntegerField
      FieldName = 'INSTANCIA'
      Origin = 'INSTANCIA'
    end
    object CDSPrescriptionsCANTIDADRECETADA: TFloatField
      FieldName = 'CANTIDADRECETADA'
      Origin = 'CANTIDADRECETADA'
      DisplayFormat = '#.00'
    end
    object CDSPrescriptionsCANTIDAD_DISPONIBLE: TFMTBCDField
      FieldName = 'CANTIDAD_DISPONIBLE'
      Origin = 'CANTIDAD_DISPONIBLE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
  end
  object CDSNextRxNumber: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPNextRxNumber'
    Left = 1024
    Top = 897
    object CDSNextRxNumberRX_TRAN_NO: TIntegerField
      FieldName = 'RX_TRAN_NO'
      Origin = 'RX_TRAN_NO'
    end
    object CDSNextRxNumberBARCODE: TIntegerField
      FieldName = 'BARCODE'
      Origin = 'BARCODE'
    end
    object CDSNextRxNumberSCANED_RX_LINK: TIntegerField
      FieldName = 'SCANED_RX_LINK'
      Origin = 'SCANED_RX_LINK'
    end
    object CDSNextRxNumberINSTANCIA: TIntegerField
      FieldName = 'INSTANCIA'
      Origin = 'INSTANCIA'
    end
    object CDSNextRxNumberINSTANCIA_SIGNATURE: TIntegerField
      FieldName = 'INSTANCIA_SIGNATURE'
      Origin = 'INSTANCIA_SIGNATURE'
    end
    object CDSNextRxNumberMEZCLA_TRAN_NO: TIntegerField
      FieldName = 'MEZCLA_TRAN_NO'
      Origin = 'MEZCLA_TRAN_NO'
    end
    object CDSNextRxNumberRX_NUMBER: TLargeintField
      FieldName = 'RX_NUMBER'
      Origin = 'RX_NUMBER'
    end
    object CDSNextRxNumberParata: TIntegerField
      FieldName = 'Parata'
      Origin = 'Parata'
    end
    object CDSNextRxNumberBATCH_NUMBER: TIntegerField
      FieldName = 'BATCH_NUMBER'
      Origin = 'BATCH_NUMBER'
    end
  end
  object DSNextRxNumber: TDataSource
    DataSet = CDSNextRxNumber
    Left = 944
    Top = 889
  end
  object DSPNextRxNumber: TDataSetProvider
    DataSet = QNextRxNumberFD
    Options = [poFetchBlobsOnDemand, poPropogateChanges, poAllowCommandText]
    Left = 888
    Top = 889
  end
  object CDSPRESC_ESIGNATURE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPPRESC_ESIGNATURE'
    Left = 1024
    Top = 944
    object CDSPRESC_ESIGNATUREENCRIPPTED_SIGNATURE: TMemoField
      FieldName = 'ENCRIPPTED_SIGNATURE'
      Origin = 'ENCRIPPTED_SIGNATURE'
      BlobType = ftMemo
    end
    object CDSPRESC_ESIGNATURESIGNATURE_DATE: TDateField
      FieldName = 'SIGNATURE_DATE'
      Origin = 'SIGNATURE_DATE'
    end
    object CDSPRESC_ESIGNATURESIGNATURE_USER: TWideStringField
      FieldName = 'SIGNATURE_USER'
      Origin = 'SIGNATURE_USER'
      FixedChar = True
      Size = 3
    end
    object CDSPRESC_ESIGNATURESIGNATURE_LINK: TIntegerField
      FieldName = 'SIGNATURE_LINK'
      Origin = 'SIGNATURE_LINK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPRESC_ESIGNATUREPICKEDUP_BY_RELATION: TSmallintField
      FieldName = 'PICKEDUP_BY_RELATION'
      Origin = 'PICKEDUP_BY_RELATION'
    end
    object CDSPRESC_ESIGNATUREPICKEDUP_ID: TWideStringField
      FieldName = 'PICKEDUP_ID'
      Origin = 'PICKEDUP_ID'
      FixedChar = True
      Size = 10
    end
    object CDSPRESC_ESIGNATUREPICKEDUP_BY_RELATION_DEF: TStringField
      FieldKind = fkCalculated
      FieldName = 'PICKEDUP_BY_RELATION_DEF'
      Calculated = True
    end
  end
  object DSPRES_ESIGNATURE: TDataSource
    DataSet = CDSPRESC_ESIGNATURE
    Left = 944
    Top = 944
  end
  object DSPPRESC_ESIGNATURE: TDataSetProvider
    DataSet = SQLPRES_ESIGNATUREFD
    Options = [poFetchBlobsOnDemand, poAllowCommandText, poUseQuoteChar]
    Left = 888
    Top = 944
  end
  object dspBotones1: TDataSetProvider
    DataSet = SQLBotonesFD
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 640
    Top = 808
  end
  object CDSBotones: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBotones1'
    AfterInsert = CDSBotonesAfterInsert
    AfterPost = CDSBotonesAfterDelete
    AfterDelete = CDSBotonesAfterDelete
    Left = 704
    Top = 808
    object CDSBotonesPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
      Origin = 'PRODUCTNO'
      Required = True
    end
    object CDSBotonesDESCRIPTION: TWideStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      FixedChar = True
      Size = 18
    end
    object CDSBotonesPROCEDURE_ADD_ON: TWideStringField
      FieldName = 'PROCEDURE_ADD_ON'
      Origin = 'PROCEDURE_ADD_ON'
      FixedChar = True
    end
    object CDSBotonesBUTTON_IMAGE: TBlobField
      FieldName = 'BUTTON_IMAGE'
      Origin = 'BUTTON_IMAGE'
    end
    object CDSBotonesBUTTON_NUMBER: TIntegerField
      FieldName = 'BUTTON_NUMBER'
      Origin = 'BUTTON_NUMBER'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object CDSBotonesBUTTON_NAME: TStringField
      FieldName = 'BUTTON_NAME'
      Origin = 'BUTTON_NAME'
    end
    object CDSBotonesASSEMBLY_YN: TBooleanField
      FieldName = 'ASSEMBLY_YN'
      Origin = 'ASSEMBLY_YN'
    end
    object CDSBotonesRECIPE_PRICE: TBooleanField
      FieldName = 'RECIPE_PRICE'
      Origin = 'RECIPE_PRICE'
    end
    object CDSBotonesCATEGORY: TIntegerField
      FieldName = 'CATEGORY'
      Origin = 'CATEGORY'
    end
    object CDSBotonesRETAIL: TBooleanField
      FieldName = 'RETAIL'
      Origin = 'RETAIL'
      Required = True
    end
    object CDSBotonesQTY: TFMTBCDField
      FieldName = 'QTY'
      Origin = 'QTY'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object dsBotones: TDataSource
    DataSet = CDSBotones
    Left = 584
    Top = 808
  end
  object dspProductImage: TDataSetProvider
    DataSet = QProductImageFD
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 312
    Top = 1072
  end
  object dsProductImage: TDataSource
    DataSet = cdsProductImage
    Left = 392
    Top = 1072
  end
  object cdsProductImage: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProductImage'
    AfterPost = cdsProductImageAfterDelete
    AfterDelete = cdsProductImageAfterDelete
    Left = 464
    Top = 1072
    object cdsProductImagePRODUCT_ID: TIntegerField
      FieldName = 'PRODUCT_ID'
      Origin = 'PRODUCT_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProductImagePROD_IMAGE: TBlobField
      FieldName = 'PROD_IMAGE'
      Origin = 'PROD_IMAGE'
    end
  end
  object dsBarcodePrintQ: TDataSource
    DataSet = cdsBarcodePrintQ
    Left = 576
    Top = 744
  end
  object dspBarcodePrintQ: TDataSetProvider
    DataSet = qBarcodePrintQFD
    Options = [poFetchDetailsOnDemand, poAllowCommandText, poUseQuoteChar]
    Left = 632
    Top = 752
  end
  object cdsBarcodePrintQ: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBarcodePrintQ'
    AfterPost = cdsBarcodePrintQAfterDelete
    AfterDelete = cdsBarcodePrintQAfterDelete
    Left = 696
    Top = 752
    object cdsBarcodePrintQID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsBarcodePrintQPRODUCT: TWideStringField
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      FixedChar = True
      Size = 35
    end
    object cdsBarcodePrintQPRODUCT_ID: TIntegerField
      FieldName = 'PRODUCT_ID'
      Origin = 'PRODUCT_ID'
    end
    object cdsBarcodePrintQCOPIES: TIntegerField
      FieldName = 'COPIES'
      Origin = 'COPIES'
    end
    object cdsBarcodePrintQREGISTER_NO: TIntegerField
      FieldName = 'REGISTER_NO'
      Origin = 'REGISTER_NO'
    end
  end
  object dsShopper: TDataSource
    DataSet = cdsShopper
    Left = 328
    Top = 832
  end
  object dsShopperDetail: TDataSource
    DataSet = cdsShopperDetail
    Left = 328
    Top = 896
  end
  object cdsShopper: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspShopper'
    AfterInsert = cdsShopperAfterInsert
    AfterPost = cdsShopperAfterDelete
    AfterDelete = cdsShopperAfterDelete
    AfterScroll = cdsShopperAfterScroll
    Left = 440
    Top = 832
    object cdsShopperID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsShopperDESCRIPTION: TWideStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      FixedChar = True
      Size = 40
    end
    object cdsShopperACTIVE: TBooleanField
      FieldName = 'ACTIVE'
      Origin = 'ACTIVE'
    end
    object cdsShopperDEPARTMENT: TIntegerField
      FieldName = 'DEPARTMENT'
      Origin = 'DEPARTMENT'
    end
    object cdsShopperSUB_DEPARTMENT: TIntegerField
      FieldName = 'SUB_DEPARTMENT'
      Origin = 'SUB_DEPARTMENT'
    end
    object cdsShopperSTART_DATE: TSQLTimeStampField
      FieldName = 'START_DATE'
      Origin = 'START_DATE'
    end
    object cdsShopperEND_DATE: TSQLTimeStampField
      FieldName = 'END_DATE'
      Origin = 'END_DATE'
    end
    object cdsShopperDAILY_SALE_START_TIME: TTimeField
      FieldName = 'DAILY_SALE_START_TIME'
      Origin = 'DAILY_SALE_START_TIME'
    end
    object cdsShopperDAILY_SALE_END_TIME: TTimeField
      FieldName = 'DAILY_SALE_END_TIME'
      Origin = 'DAILY_SALE_END_TIME'
    end
    object cdsShopperPERCENTAGE_DISCOUNT: TFMTBCDField
      FieldName = 'PERCENTAGE_DISCOUNT'
      Origin = 'PERCENTAGE_DISCOUNT'
      DisplayFormat = '#,.00'
      Precision = 18
      Size = 2
    end
  end
  object cdsShopperDetail: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspShopperDetail'
    AfterPost = cdsShopperDetailAfterDelete
    AfterDelete = cdsShopperDetailAfterDelete
    Left = 440
    Top = 896
    object cdsShopperDetailID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object cdsShopperDetailPRODUCT: TWideStringField
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      FixedChar = True
      Size = 35
    end
    object cdsShopperDetailPRODUCT_ID: TIntegerField
      FieldName = 'PRODUCT_ID'
      Origin = 'PRODUCT_ID'
    end
    object cdsShopperDetailCOPIES: TIntegerField
      FieldName = 'COPIES'
      Origin = 'COPIES'
    end
    object cdsShopperDetailLAST_SPECIAL: TFloatField
      FieldName = 'LAST_SPECIAL'
      Origin = 'LAST_SPECIAL'
      DisplayFormat = '#.00'
    end
    object cdsShopperDetailSPECIAL: TFloatField
      FieldName = 'SPECIAL'
      Origin = 'SPECIAL'
      DisplayFormat = '#.00'
    end
    object cdsShopperDetailRETAIL_PRICE: TFloatField
      FieldName = 'RETAIL_PRICE'
      Origin = 'RETAIL_PRICE'
      DisplayFormat = '#.00'
    end
    object cdsShopperDetailCOST: TFloatField
      FieldName = 'COST'
      Origin = 'COST'
      DisplayFormat = '#.00'
    end
    object cdsShopperDetailSALES_PROMOTION_ID: TIntegerField
      FieldName = 'SALES_PROMOTION_ID'
      Origin = 'SALES_PROMOTION_ID'
    end
    object cdsShopperDetailDEFINE_SP: TStringField
      FieldKind = fkLookup
      FieldName = 'DEFINE_SP'
      LookupDataSet = cdsSalesPromo
      LookupKeyFields = 'ID'
      LookupResultField = 'DEFINE'
      KeyFields = 'SALES_PROMOTION_ID'
      Lookup = True
    end
    object cdsShopperDetailSHOPER_ID: TAutoIncField
      FieldName = 'SHOPER_ID'
      Origin = 'SHOPER_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
  end
  object dspShopper: TDataSetProvider
    DataSet = qShopperFD
    Options = [poFetchBlobsOnDemand, poAllowCommandText, poUseQuoteChar]
    Left = 384
    Top = 832
  end
  object dspShopperDetail: TDataSetProvider
    DataSet = qShopperDetailFD
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 384
    Top = 896
  end
  object dspSalesPromo: TDataSetProvider
    DataSet = qSalesPromoFD
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 576
    Top = 992
  end
  object cdsSalesPromo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSalesPromo'
    AfterPost = cdsSalesPromoAfterDelete
    AfterDelete = cdsSalesPromoAfterDelete
    OnCalcFields = cdsSalesPromoCalcFields
    Left = 720
    Top = 992
    object cdsSalesPromoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsSalesPromoQTY: TIntegerField
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object cdsSalesPromoQTY_DISCOUT: TIntegerField
      FieldName = 'QTY_DISCOUT'
      Origin = 'QTY_DISCOUT'
    end
    object cdsSalesPromoDISCOUNT: TFloatField
      FieldName = 'DISCOUNT'
      DisplayFormat = '#.00'
    end
    object cdsSalesPromoDEFINE: TStringField
      FieldKind = fkCalculated
      FieldName = 'DEFINE'
      Size = 30
      Calculated = True
    end
  end
  object dsSalesPromo: TDataSource
    DataSet = cdsSalesPromo
    Left = 648
    Top = 992
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 152
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 96
    Top = 24
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Server=192.168.4.217,1433'
      'User_Name=dbo'
      'Password=agabriel'
      'ApplicationName=Enterprise/Architect/Ultimate'
      'Workstation=SERVER'
      'MARS=yes'
      'Database=familiar'
      'DriverID=MSSQL')
    LoginPrompt = False
    Transaction = FDTransaction1
    Left = 24
    Top = 8
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnection1
    Left = 216
    Top = 24
  end
  object QInventarioPisoFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'Select * from InventarioPiso where Descripcion like '#39'ANA%'#39' order' +
        ' by CODIGOBARRA')
    Left = 24
    Top = 72
  end
  object QSuplidoresFD: TFDQuery
    Connection = FDConnection3
    SQL.Strings = (
      'Select * from Suplidores')
    Left = 24
    Top = 120
  end
  object QSumComboPrice: TFDQuery
    Connection = FDConnection1
    Left = 806
    Top = 384
  end
  object qShopperDetailFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from Shopper_Detail')
    Left = 264
    Top = 896
  end
  object QDepartamentosFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * From departamento order by DESCRIPCION')
    Left = 40
    Top = 168
  end
  object QSub_DeapartamentoFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * From Sub_departamento order by DESCRIPCION')
    Left = 32
    Top = 216
  end
  object QClientesFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from Pacientes where NumeroCliente > 0')
    Left = 16
    Top = 264
  end
  object QPasswordsFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from Passwords')
    Left = 16
    Top = 312
  end
  object QProductosFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'Select inventariopiso.*, suplidores.suplidor, '#13#10'departamento.des' +
        'cripcion as descdepartamento '#13#10'from inventariopiso '#13#10'left join s' +
        'uplidores on inventariopiso.numerosuplidor = suplidores.numerosu' +
        'plidor '#13#10'left join departamento on inventariopiso.departamento =' +
        ' departamento.departamento')
    Left = 16
    Top = 360
  end
  object QOTCFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from OTC where NumeroReceta = 0')
    Left = 16
    Top = 416
  end
  object QCDSPrescriptionsFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from Prescriptions where NumeroReceta = 148701')
    Left = 16
    Top = 472
  end
  object QSalesFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select inventariopiso.*, suplidores.suplidor, '
      'departamento.descripcion as descdepartamento '
      'from inventariopiso '
      
        'left join suplidores on inventariopiso.numerosuplidor = suplidor' +
        'es.numerosuplidor '
      
        'left join departamento on inventariopiso.departamento = departam' +
        'ento.departamento'
      'Where terminaespecial >= '#39'today'#39)
    Left = 16
    Top = 528
  end
  object QGroupFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from InventarioPiso order by Descripcion')
    Left = 16
    Top = 632
  end
  object QCHKDescriptionFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from CHK_DESCRIPTON')
    Left = 16
    Top = 688
  end
  object QClientes2FD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from pacientes')
    Left = 16
    Top = 752
  end
  object QLogFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from Log')
    Left = 272
    Top = 16
  end
  object QDailytotalsFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from DailyTotals  Where ID = 1')
    Left = 272
    Top = 72
  end
  object QUtilitiesFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from utilities')
    Left = 272
    Top = 128
  end
  object QSetupFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from creditdebitsetup')
    Left = 272
    Top = 176
  end
  object QOrderDetailHistoryFD: TFDQuery
    Connection = FDConnection3
    SQL.Strings = (
      'SELECT ORDER_HEADER_1.ORDERDATE,'
      '       ORDER_HEADER_1.SUPPLIER,'
      '       ORDER_HEADER_1.ORDERID,'
      '       ORDER_HEADER_1.PO_NO,'
      '       ORDER_DETAIL_1.ORDERID,       '
      '       ORDER_DETAIL_1.DESCRIPTION,'
      '       ORDER_DETAIL_1.PRICE,'
      '       ORDER_DETAIL_1.COSTRECEIVED,'
      '      ORDER_DETAIL_1.COSTORDERED,'
      '       ORDER_DETAIL_1.AWP,'
      '       ORDER_DETAIL_1.QTYRECEIVED'
      'FROM ORDER_HEADER ORDER_HEADER_1'
      '      INNER JOIN ORDER_DETAIL ORDER_DETAIL_1 ON'
      '     (ORDER_DETAIL_1.ORDERID = ORDER_HEADER_1.ORDERID)'
      'ORDER BY ORDER_HEADER_1.ORDERID, ORDER_HEADER_1.ORDERDATE')
    Left = 272
    Top = 232
  end
  object QPrintListFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from PrintLabels')
    Left = 272
    Top = 392
  end
  object QDetailFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT * FROM TransactionDetail  WHERE TransactionNumber = 100  ' +
        'Order By IDNumber')
    Left = 272
    Top = 448
  end
  object QClientTransactionsFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from ClientTransactions where clientNo = 1')
    Left = 272
    Top = 504
  end
  object QClientTransLCFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'Select Sum(Amount) as TCR from ClientTransactions  where ClientN' +
        'o = :NC and Code = '#39'LC'#39)
    Left = 272
    Top = 552
    ParamData = <
      item
        Position = 1
        Name = 'NC'
        ParamType = ptInput
      end>
  end
  object QBalanceInicialFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from BalanceInicial')
    Left = 272
    Top = 600
  end
  object QULT_TRANSFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT AMOUNT, DATEOFTRANS AS ULT_TRANS, CODE FROM CLIENTTRANSAC' +
        'TIONS WHERE TRANSNO = 0')
    Left = 264
    Top = 648
  end
  object QComboFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from COMBO')
    Left = 270
    Top = 704
  end
  object QCombo_DETAILFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from COMBO_DETAIL')
    Left = 270
    Top = 768
  end
  object qShopperFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from Shopper_Header')
    Left = 267
    Top = 830
  end
  object QTransferHistoryFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT ORDER_HEADER_1.TRANSFERDATE, ORDER_HEADER_1.PARTNER, ORDE' +
        'R_HEADER_1.TRANSFERID,'
      
        '                                             ORDER_DETAIL_1.TRAN' +
        'SFERID, ORDER_DETAIL_1.PRODUCTO, ORDER_DETAIL_1.PRICE, ORDER_DET' +
        'AIL_1.COSTSENT,'
      
        '                                             ORDER_DETAIL_1.AWP,' +
        ' ORDER_DETAIL_1.QTYRECEIVED, ORDER_DETAIL_1.UPC FROM TRANSFER_HE' +
        'ADER ORDER_HEADER_1'
      
        '                                             INNER JOIN TRANSFER' +
        '_DETAIL ORDER_DETAIL_1 ON'
      
        '                                             (ORDER_DETAIL_1.TRA' +
        'NSFERID = ORDER_HEADER_1.TRANSFERID)')
    Left = 528
    Top = 8
  end
  object QPOSFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from POS')
    Left = 528
    Top = 56
  end
  object QTransShow1FD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT * FROM TransactionDetail_Temp WHERE TransactionNumber= :T' +
        'ransactionNumber Order By IDNumber, MAIN_COURSE_ID')
    Left = 528
    Top = 112
    ParamData = <
      item
        Position = 1
        Name = 'TransactionNumber'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QTransHeadFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from TransactionHeader_TEMP')
    Left = 528
    Top = 160
  end
  object QPlanesMedicosFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from PlanesMedicos')
    Left = 528
    Top = 208
  end
  object QHeadFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT * FROM TransactionHeader_temp WHERE TransactionNumber = :' +
        'TransactionNumber')
    Left = 528
    Top = 256
    ParamData = <
      item
        Position = 1
        Name = 'TransactionNumber'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QTrHeadAdHoc2: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from POS_RECETARIO')
    Left = 528
    Top = 336
  end
  object QVerTransaccionesFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'Select ID, UPC, QTY, PRICE, TRANSACTIONNUMBER, employnumber, reg' +
        'ister, fechaventa from VerTransacciones WHERE UPC = '#39'1'#39)
    Left = 512
    Top = 448
  end
  object QAssembly_DetailFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM ASSEMBLY_DETAIL')
    Left = 528
    Top = 496
  end
  object QAssembly_HeaderFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM ASSEMBLY_HEADER ORDER BY FECHA_CREADO, NO_TRANS')
    Left = 528
    Top = 544
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM ASSEMBLY_HEADER ORDER BY FECHA_CREADO, NO_TRANS')
    Left = 512
    Top = 592
  end
  object QWebCredRepFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from Web_Credit_Replicator')
    Left = 528
    Top = 644
  end
  object QTransShow2FD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT * FROM TransactionDetail WHERE TransactionNumber=1 Order ' +
        'By IDNumber Desc')
    Left = 528
    Top = 692
  end
  object qBarcodePrintQFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from BARCODE_PRINTING_Q order by Product')
    Left = 528
    Top = 748
  end
  object FDQuery3: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from BARCODE_PRINTING_Q order by Product')
    Left = 536
    Top = 940
  end
  object UPDATE_OTC_WFCASHIER: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'UPDATE_OTC_WFCASHIER'
    Left = 1424
    Top = 8
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@OTCNUMBER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@WF_CASHIER'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 30
      end>
  end
  object SQLQuery: TFDQuery
    Connection = FDConnection1
    Left = 1110
    Top = 384
  end
  object SQLDSPartnersFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from Partners')
    Left = 553
    Top = 1106
  end
  object QRecallTransFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from TransactionHeader_temp where Opened = '#39'S'#39)
    Left = 545
    Top = 1050
  end
  object QReasonsFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from Reasons Where NoTrans = 0')
    Left = 529
    Top = 394
  end
  object SQLQPrescriptions2FD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from Prescriptions where NumeroReceta = 1')
    Left = 808
    Top = 732
  end
  object DQLDSOTC2FD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from OTC WHERE OTCNUMBER = 1')
    Left = 808
    Top = 780
  end
  object QPICKUPFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM PICK_UP')
    Left = 808
    Top = 836
  end
  object QNextRxNumberFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from NEXT_RXNUMBER')
    Left = 808
    Top = 892
  end
  object SQLPRES_ESIGNATUREFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM PRESCRIPTION_ESIGNATURE')
    Left = 808
    Top = 948
  end
  object INSERT_TROUTD: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'INSERT_TROUTD'
    Left = 1426
    Top = 72
  end
  object CAL_HEAD_TOTAL: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'CALC_HEAD_TOTALS'
    Left = 1292
    Top = 8
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@INTRANS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@NO_TAX_CHARGE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@SUPER'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 5
        Name = '@TAXRATE_Estatal'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@TAXRATE_Municipal'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@TAXFROM'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end>
  end
  object INSERT_TRANS: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'INSERT_TRANS'
    Left = 1421
    Top = 140
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@TRANSACTIONNUMBER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@UPC'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 14
      end
      item
        Position = 4
        Name = '@QTY'
        DataType = ftSingle
        Precision = 8
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@TOTAL'
        DataType = ftSingle
        Precision = 8
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@VOIDED'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@SUBDETAIL'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 8
        Name = '@PRODDESCRIPTION'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 9
        Name = '@PRODDEPARTMENT'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 10
        Name = '@REGTOTAL'
        DataType = ftSingle
        Precision = 8
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@FOOD'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 12
        Name = '@PRICE'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 13
        Name = '@REGPRICE'
        DataType = ftSingle
        Precision = 8
        ParamType = ptInput
      end
      item
        Position = 14
        Name = '@MODIFIED'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Position = 15
        Name = '@DISCOUNT'
        DataType = ftSingle
        Precision = 8
        ParamType = ptInput
      end
      item
        Position = 16
        Name = '@COSTO'
        DataType = ftSingle
        Precision = 8
        ParamType = ptInput
      end
      item
        Position = 17
        Name = '@FECHAVENTA'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 18
        Name = '@SUPLIDOR'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 19
        Name = '@TOTAL_VALUE'
        DataType = ftSingle
        Precision = 8
        ParamType = ptInput
      end
      item
        Position = 20
        Name = '@AWP'
        DataType = ftSingle
        Precision = 8
        ParamType = ptInput
      end
      item
        Position = 21
        Name = '@ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 22
        Name = '@PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 23
        Name = '@TAX_ESTATAL'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 24
        Name = '@TAX_MUNICIPAL'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 25
        Name = '@GROUP_PROD'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 26
        Name = '@REGISTER'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Position = 27
        Name = '@SUPER'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 28
        Name = '@PATROCINIO'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Position = 29
        Name = '@SUBDPT'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Position = 30
        Name = '@BARCODEALTERNO1'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 31
        Name = '@BARCODEALTERNO2'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 32
        Name = '@BAG_NUMBER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 33
        Name = '@OTC_NUMBER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 34
        Name = '@UTILIDAD'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 35
        Name = '@TAX_SERVICIO'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 36
        Name = '@NOTE'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 37
        Name = '@INSERT_NEW_PRODUCT'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 38
        Name = '@KITCHEN'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 39
        Name = '@MAIN_COURSE_ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 40
        Name = '@MAIN_COURSE'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 41
        Name = '@INVCONTROL_RECIPE'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 42
        Name = '@TAX_PROCESSED_FOOD'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 43
        Name = '@BUTTON_QTY'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 44
        Name = '@TRIPLES_PRODUCT'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 45
        Name = '@PSEUDO'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 46
        Name = '@PEP_SPRAY'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 47
        Name = '@ALWDISC'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 48
        Name = '@FSA'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 49
        Name = '@OTCCard'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 50
        Name = '@DISCOUNT_PERCENTAGE'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 50
        Name = '@SALES_PROMO'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 51
        Name = '@DBName'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 52
        Name = '@Current_Identity'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object DEUDA: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'DEUDA'
    Left = 1431
    Top = 198
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@FECHA_DESDE'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 3
        Name = '@NO_CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@BALANCE'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInputOutput
      end>
  end
  object QUpdateDebt: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'UPDATE_DEBT'
    Left = 1431
    Top = 261
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@SSN'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 9
      end
      item
        Position = 3
        Name = '@BALANCE'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end>
  end
  object INSERT_LOG: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'INSERT_LOG'
    Left = 1431
    Top = 325
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@DESCRIPCION'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 3
        Name = '@CODIGO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 4
        Name = '@NDC_BARCODE'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 13
      end
      item
        Position = 5
        Name = '@USUARIO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 6
        Name = '@SUPERVISOR'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 7
        Name = '@NO_RX'
        DataType = ftLargeint
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@OTCNUMBER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@PRESCRIBER_ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@CUSTOMER_ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@PASSWORD_ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 12
        Name = '@HEALTH_PLAN_ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 13
        Name = '@PATIENT_HEALTH_PLAN_ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 14
        Name = '@DRUG_ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object UPDATE_OTC_SIGNATURELINK: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'UPDATE_OTC_SIGNATURELINK'
    Left = 1431
    Top = 389
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@SCANED_RX_LINK'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@OTCNumber'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@WF_SIGNATURE'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 30
      end>
  end
  object SQLSPCalcularAusp: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'CALCULARAUSPICIO'
    Left = 1431
    Top = 445
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@StrAuspicio'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@NoCliente'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TRANSACTIONDETAIL_DELETE_PRODUCT2: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'TRANSACTIONDETAIL_DELETE_PRODUCT2'
    Left = 1439
    Top = 493
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IDNUMBER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@NO_RX'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object SPCalcHeadTotal: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'CALC_HEAD_TOTALS'
    Left = 1431
    Top = 549
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@INTRANS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@NO_TAX_CHARGE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@SUPER'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 5
        Name = '@TAXRATE_Estatal'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@TAXRATE_Municipal'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@TAXFROM'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end>
  end
  object SPNextInstanciaSignature: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'NEXTINSTANCIA_SIGNATURE'
    Left = 1431
    Top = 605
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@INSTANCIA_SIGNATURE'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object TRANSACTIONDETAIL_DELETE: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'TRANSACTIONDETAIL_DELETE'
    Left = 1431
    Top = 645
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@TNUMBER'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object SPCalcHeadTotals: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'CALC_HEAD_TOTALS'
    Left = 1431
    Top = 709
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@INTRANS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@NO_TAX_CHARGE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@SUPER'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 5
        Name = '@TAXRATE_Estatal'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@TAXRATE_Municipal'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@TAXFROM'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end>
  end
  object SPNEXT_BARCODE: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'NEXTBARCODE'
    Left = 1292
    Top = 72
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@BARCODE_NO'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object TRANSACTIONDETAIL_DELETE_PRODUCT: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'TRANSACTIONDETAIL_DELETE_PRODUCT'
    Left = 1292
    Top = 128
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IDNUMBER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@NO_RX'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@TRIPLES_BALANCE'
        DataType = ftSingle
        Precision = 8
        ParamType = ptInputOutput
      end
      item
        Position = 5
        Name = '@DBName'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 20
      end>
  end
  object INSERT_ESIGNATURE: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'INSERT_ESIGNATURE'
    Left = 1292
    Top = 184
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@ENCRIPPTED_SIGNATURE'
        DataType = ftMemo
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@SIGNATURE_DATE'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@SIGNATURE_USER'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 5
        Name = '@PICKEDUP_BY_RELATION'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@PICKEDUP_ID'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 7
        Name = '@NUMEROCLIENTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@SAVE_PAT_SIGNATURE'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@PICKEDUP_BY'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 45
      end
      item
        Position = 10
        Name = '@NORX'
        DataType = ftLargeint
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@OTCNUMBER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 12
        Name = '@INSTANCIA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 13
        Name = '@SIGNATURE_LINK'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TRANSACTIONDETAIL_UPDATEPRICE: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'TRANSACTIONDETAIL_UPDATEPRICE'
    Left = 1292
    Top = 240
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IDNUMBER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@TRANSNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@PRICE'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@QTY'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@TAXRATE'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@SUPER'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 9
        Name = '@UPDATE_PRICE'
        DataType = ftBoolean
        ParamType = ptInput
      end>
  end
  object TRANSACTIONDETAIL_CANCELTRANS: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'TRANSACTIONDETAIL_CANCELTRANS'
    Left = 1292
    Top = 304
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@TRANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object SPSCANED_RX_LINK: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'SCANED_RX_LINK'
    Left = 1292
    Top = 360
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@SCANED_RX_LINK'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object QInsertTransDetailTemp: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'INSERT_TRANS_TEMP'
    Left = 1292
    Top = 424
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@TRANSACTIONNUMBER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@UPC'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 13
      end
      item
        Position = 4
        Name = '@QTY'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@TOTAL'
        DataType = ftSingle
        Precision = 8
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@REGTOTAL'
        DataType = ftSingle
        Precision = 8
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@FOOD'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 8
        Name = '@TAX_ESTATAL'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 9
        Name = '@TAX_MUNICIPAL'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 10
        Name = '@PRICE'
        DataType = ftSingle
        Precision = 8
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@IDNUMBER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 12
        Name = '@REGISTER'
        DataType = ftSmallint
        ParamType = ptInput
      end>
  end
  object CLONE_PRODUCT: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'CLONE_PRODUCT'
    Left = 1292
    Top = 488
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@BARCODE'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 14
      end
      item
        Position = 4
        Name = '@PRODUCTID'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object SPDatabaseBackup: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'BACKUPDATABASE'
    Left = 1292
    Top = 552
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@database'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 3
        Name = '@backupDir'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Position = 4
        Name = '@backupDate'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 6
      end>
  end
  object SPUpdateInventory: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'UPDATE_INVENTORYPISO'
    Left = 1292
    Top = 616
  end
  object LOGEADOPOS: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'LOGEADOPOS'
    Left = 1292
    Top = 672
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@USERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@LOGEADO'
        DataType = ftBoolean
        ParamType = ptInput
      end>
  end
  object INSERT_TRANSACTION_CREDITO: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'INSERT_TRANSACTION_CREDITO'
    Left = 1292
    Top = 728
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@CODE'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 3
        Name = '@AMOUNT'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@ATTENDEDBY'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 5
        Name = '@CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@TRANSNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object UPDATE_INVENTORY: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'UPDATE_INVENTORY'
    Left = 1431
    Top = 773
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@NDC_SEARCH'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 11
      end
      item
        Position = 3
        Name = '@PRODUCTID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@QTY'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@RECETARIO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end>
  end
  object LASTIDENTITY: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'LAST_IDENTITY'
    Left = 1292
    Top = 784
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@LASTIDENTITY'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object SPGROUP_PROD_POS: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'GROUP_PROD_POS'
    Left = 1292
    Top = 840
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PRECIOPAR'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@COSTOPAR'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@DEPTPAR'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@SUBDPT'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@GPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QProductImageFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM INVENTORY_IMAGE')
    Left = 232
    Top = 1072
  end
  object qSalesPromoFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from Sales_Promotion')
    Left = 520
    Top = 992
  end
  object sdsLastIdentity: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT @@Identity')
    Left = 806
    Top = 152
  end
  object SQLDataSet2: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT @@Identity as NextNumber')
    Left = 886
    Top = 152
  end
  object SQLQuery1: TFDQuery
    Connection = FDConnection1
    Left = 958
    Top = 152
  end
  object SQLQuery1SA: TFDQuery
    Connection = FDConnection1
    Left = 1030
    Top = 152
  end
  object SQLQuery2: TFDQuery
    Connection = FDConnection1
    Left = 1102
    Top = 152
  end
  object SQLQuery2SA: TFDQuery
    Connection = FDConnection1
    Left = 806
    Top = 208
  end
  object QTransDetail: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select max(TRANSNO) from clienttransactions')
    Left = 878
    Top = 208
  end
  object CDSAdHocPrintList: TFDQuery
    Connection = FDConnection1
    Left = 958
    Top = 208
  end
  object QBorrarNonMatchedNDC: TFDQuery
    Connection = FDConnection1
    Left = 1030
    Top = 208
  end
  object QSecurity: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select max(transactiondate) as Fecha from transactionheader')
    Left = 1102
    Top = 208
  end
  object QAlterProcedureINSERT_TRANS: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'ALTER PROCEDURE [dbo].[INSERT_TRANS](@TRANSACTIONNUMBER int,@UPC' +
        ' char(13),@QTY int,@TOTAL real,'
      
        '@VOIDED int,@SUBDETAIL char(10),@PRODDESCRIPTION char(30),@PRODD' +
        'EPARTMENT char(20),'
      
        '@REGTOTAL real,@FOOD char(1),@PRICE float,@REGPRICE real,@MODIFI' +
        'ED smallint,@DISCOUNT real,'
      
        '@COSTO real,@FECHAVENTA CHAR(10),@SUPLIDOR int,@TOTAL_VALUE real' +
        ',@AWP real,@ID int,'
      
        '@PRODUCTNO int,@TAX_ESTATAL char(1),@TAX_MUNICIPAL varchar(1),@G' +
        'ROUP_PROD varchar(1),'
      
        '@REGISTER SMALLINT, @SUPER CHAR(3),@PATROCINIO SMALLINT, @SUBDPT' +
        ' SMALLINT,'
      
        '@BARCODEALTERNO1 nchar(20), @BARCODEALTERNO2 nchar(20), @BAG_NUM' +
        'BER INT, @OTC_NUMBER INT, @UTILIDAD BIT, @TAX_SERVICIO BIT)'
      'AS'
      'BEGIN'
      
        ' Insert into TRANSACTIONDETAIL_TEMP(TRANSACTIONNUMBER, UPC, QTY,' +
        ' TOTAL,VOIDED,SUBDETAIL,'
      
        'PRODDESCRIPTION, PRODDEPARTMENT, REGTOTAL, FOOD, PRICE, REGPRICE' +
        ',MODIFIED, DISCOUNT, COSTO,'
      
        'FECHAVENTA, SUPLIDOR, TOTAL_VALUE, AWP, ID, PRODUCTNO, TAX_ESTAT' +
        'AL,TAX_MUNICIPAL, OPENED,'
      
        ' GROUP_PROD, REGISTER, SUPERVISOR, PATROCINIO, SUBDEPARTAMENTO, ' +
        'BARCODEALTERNO1, BARCODEALTERNO2,BAG_NUMBER,'
      ' OTC_NUMBER, UTILIDAD, TAX_SERVICIO) '
      
        ' Values (@TRANSACTIONNUMBER, @UPC, @QTY, @TOTAL, @VOIDED, @SUBDE' +
        'TAIL,'
      
        '@PRODDESCRIPTION, @PRODDEPARTMENT, @REGTOTAL, @FOOD, @PRICE,@REG' +
        'PRICE, @MODIFIED,'
      
        ' @DISCOUNT,@COSTO, @FECHAVENTA, @SUPLIDOR, @TOTAL_VALUE, @AWP, @' +
        'ID, @PRODUCTNO,'
      
        '@TAX_ESTATAL, @TAX_MUNICIPAL, '#39'T'#39', @GROUP_PROD, @REGISTER, @SUPE' +
        'R, @PATROCINIO, @SUBDPT, '
      
        '@BARCODEALTERNO1, @BARCODEALTERNO2, @BAG_NUMBER, @OTC_NUMBER, @U' +
        'TILIDAD, @TAX_SERVICIO);'
      'END')
    Left = 806
    Top = 264
  end
  object CDSTrHeadAdHoc: TFDQuery
    Connection = FDConnection1
    Left = 878
    Top = 264
  end
  object SQLQSumPatrocinio: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select sum(Total) as Amount FROM TRANSACTIONDETAIL_TEMP')
    Left = 958
    Top = 264
  end
  object SQLQViewAuspicioTotal: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'Select * from AuspicioTotal where Socio = :Socio and dateoftrans' +
        '  between  :dateoftransDesde'
      'and :dateoftransHasta')
    Left = 1030
    Top = 264
    ParamData = <
      item
        Name = 'SOCIO'
        ParamType = ptInput
      end
      item
        Name = 'DATEOFTRANSDESDE'
        ParamType = ptInput
      end
      item
        Name = 'DATEOFTRANSHASTA'
        ParamType = ptInput
      end>
  end
  object SQLQueryCalcAusp: TFDQuery
    Connection = FDConnection1
    Left = 1102
    Top = 264
  end
  object QCalcTarjetaFamilia: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'Select sum(Total) as Total from TransactionDetail_Temp where Foo' +
        'd = '#39'F'#39'  and TransactionNumber = :TN'
      '')
    Left = 806
    Top = 320
    ParamData = <
      item
        Name = 'TN'
        ParamType = ptInput
      end>
  end
  object QUpdateTax: TFDQuery
    Connection = FDConnection1
    Left = 878
    Top = 320
  end
  object QUpdateTaxFood: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'Select Tax_food_estatal + Tax_food_municipal as TTaxFood from Tr' +
        'ansactionHeader where TransactionNumber = :TN')
    Left = 958
    Top = 323
    ParamData = <
      item
        Name = 'TN'
        ParamType = ptInput
      end>
  end
  object QDeletePickUp: TFDQuery
    Connection = FDConnection1
    Left = 1030
    Top = 323
  end
  object QUpdateRxSignatureLink: TFDQuery
    Connection = FDConnection1
    Left = 1102
    Top = 323
  end
  object QNoCliente: TFDQuery
    Connection = FDConnection1
    Left = 886
    Top = 384
  end
  object SQLBotonesFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from botones')
    Left = 528
    Top = 808
  end
  object qTabsHeader: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM TABS_HEADER')
    Left = 808
    Top = 480
  end
  object dspTabsHeader: TDataSetProvider
    DataSet = qTabsHeader
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 864
    Top = 480
  end
  object cdsTabsHeader: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTabsHeader'
    AfterInsert = cdsTabsHeaderAfterInsert
    AfterPost = cdsTabsHeaderAfterDelete
    AfterDelete = cdsTabsHeaderAfterDelete
    AfterScroll = cdsTabsHeaderAfterScroll
    Left = 1016
    Top = 480
    object cdsTabsHeaderID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object cdsTabsHeaderBUTTON_NAME: TWideStringField
      FieldName = 'BUTTON_NAME'
      FixedChar = True
      Size = 30
    end
    object cdsTabsHeaderSERVER: TIntegerField
      FieldName = 'SERVER'
    end
    object cdsTabsHeaderBUTTON_IMAGE: TBlobField
      FieldName = 'BUTTON_IMAGE'
    end
    object cdsTabsHeaderBUTTON_CAPTION: TWideStringField
      FieldName = 'BUTTON_CAPTION'
      FixedChar = True
      Size = 30
    end
    object cdsTabsHeaderGROUP_BALANCE: TFMTBCDField
      FieldName = 'GROUP_BALANCE'
      Precision = 18
      Size = 2
    end
    object cdsTabsHeaderGROUP_BY_ID: TIntegerField
      FieldName = 'GROUP_BY_ID'
    end
    object cdsTabsHeaderGROUP_BY_NAME: TWideStringField
      FieldName = 'GROUP_BY_NAME'
      FixedChar = True
    end
  end
  object dsTabsHeader: TDataSource
    DataSet = cdsTabsHeader
    Left = 936
    Top = 480
  end
  object qTabsDetail: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from TABS_DETAIL')
    Left = 808
    Top = 528
  end
  object dspTabsDetail: TDataSetProvider
    DataSet = qTabsDetail
    Options = [poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 872
    Top = 528
  end
  object dsTabsDetail: TDataSource
    DataSet = cdsTabsDetail
    Left = 936
    Top = 528
  end
  object cdsTabsDetail: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTabsDetail'
    AfterPost = cdsTabsDetailAfterDelete
    AfterDelete = cdsTabsDetailAfterDelete
    Left = 1016
    Top = 536
    object cdsTabsDetailID: TAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdsTabsDetailTABS_ID: TIntegerField
      FieldName = 'TABS_ID'
      Origin = 'TABS_ID'
      Required = True
    end
    object cdsTabsDetailCUSTOMER: TWideStringField
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      FixedChar = True
      Size = 45
    end
    object cdsTabsDetailCREDIT_CARD: TWideStringField
      FieldName = 'CREDIT_CARD'
      Origin = 'CREDIT_CARD'
      FixedChar = True
    end
    object cdsTabsDetailDATE: TSQLTimeStampField
      FieldName = 'DATE'
      Origin = 'DATE'
    end
    object cdsTabsDetailTRANSACTIONNUMBER: TIntegerField
      FieldName = 'TRANSACTIONNUMBER'
      Origin = 'TRANSACTIONNUMBER'
      Required = True
    end
    object cdsTabsDetailTELEPHONE: TWideStringField
      FieldName = 'TELEPHONE'
      Origin = 'TELEPHONE'
      FixedChar = True
      Size = 13
    end
    object cdsTabsDetailBALANCE: TFMTBCDField
      FieldName = 'BALANCE'
      Origin = 'BALANCE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
  end
  object qOpenTabs: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from OPEN_TABS')
    Left = 808
    Top = 576
  end
  object dsOpenTabs: TDataSource
    DataSet = cdsOpenTabs
    Left = 952
    Top = 576
  end
  object cdsOpenTabs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOpenTabs'
    AfterScroll = cdsOpenTabsAfterScroll
    OnCalcFields = cdsOpenTabsCalcFields
    Left = 1016
    Top = 576
    object cdsOpenTabsID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object cdsOpenTabsSERVER: TIntegerField
      FieldName = 'SERVER'
      Origin = 'SERVER'
    end
    object cdsOpenTabsTRANSACTIONNUMBER: TIntegerField
      FieldName = 'TRANSACTIONNUMBER'
      Origin = 'TRANSACTIONNUMBER'
    end
    object cdsOpenTabsCUSTOMER: TWideStringField
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      FixedChar = True
      Size = 45
    end
    object cdsOpenTabsTELEPHONE: TWideStringField
      FieldName = 'TELEPHONE'
      Origin = 'TELEPHONE'
      FixedChar = True
      Size = 13
    end
    object cdsOpenTabsCREDIT_CARD: TWideStringField
      FieldName = 'CREDIT_CARD'
      Origin = 'CREDIT_CARD'
      FixedChar = True
    end
    object cdsOpenTabsDATE: TSQLTimeStampField
      FieldName = 'DATE'
      Origin = 'DATE'
    end
    object cdsOpenTabsSERVER_DEFINE: TStringField
      FieldKind = fkLookup
      FieldName = 'SERVER_DEFINE'
      LookupDataSet = CDSPasswords
      LookupKeyFields = 'USERNO'
      LookupResultField = 'USERNAME'
      KeyFields = 'SERVER'
      Size = 35
      Lookup = True
    end
    object cdsOpenTabsTRANSACTIONNUMBER_DEFINE: TStringField
      FieldKind = fkCalculated
      FieldName = 'TRANSACTIONNUMBER_DEFINE'
      Size = 40
      Calculated = True
    end
    object cdsOpenTabsBUTTON_CAPTION: TWideStringField
      FieldName = 'BUTTON_CAPTION'
      Origin = 'BUTTON_CAPTION'
      FixedChar = True
      Size = 30
    end
    object cdsOpenTabsCUSTOMER_ID: TIntegerField
      FieldName = 'CUSTOMER_ID'
      Origin = 'CUSTOMER_ID'
    end
    object cdsOpenTabsDELIVER_BY_ID: TIntegerField
      FieldName = 'DELIVER_BY_ID'
      Origin = 'DELIVER_BY_ID'
    end
    object cdsOpenTabsDELIVER_BY_DEFINE: TStringField
      FieldKind = fkLookup
      FieldName = 'DELIVER_BY_DEFINE'
      LookupDataSet = cdsDeliverBy
      LookupKeyFields = 'USERNO'
      LookupResultField = 'USERNAME'
      KeyFields = 'DELIVER_BY_ID'
      Size = 45
      Lookup = True
    end
    object cdsOpenTabsGROUP_BALANCE: TFMTBCDField
      FieldName = 'GROUP_BALANCE'
      Origin = 'GROUP_BALANCE'
      currency = True
      Precision = 18
      Size = 2
    end
    object cdsOpenTabsBALANCE: TFMTBCDField
      FieldName = 'BALANCE'
      Origin = 'BALANCE'
      currency = True
      Precision = 18
      Size = 2
    end
    object cdsOpenTabsTRANS_TYPE: TWideStringField
      FieldName = 'TRANS_TYPE'
      FixedChar = True
      Size = 1
    end
    object cdsOpenTabsTRANS_TYPE_DEFINED: TStringField
      FieldKind = fkCalculated
      FieldName = 'TRANS_TYPE_DEFINED'
      Size = 25
      Calculated = True
    end
    object cdsOpenTabsGROUP_BY_ID: TIntegerField
      FieldName = 'GROUP_BY_ID'
    end
    object cdsOpenTabsGROUP_BY_NAME: TWideStringField
      FieldName = 'GROUP_BY_NAME'
      FixedChar = True
    end
    object cdsOpenTabsISTABLE: TBooleanField
      FieldName = 'ISTABLE'
    end
  end
  object dspOpenTabs: TDataSetProvider
    DataSet = qOpenTabs
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 872
    Top = 576
  end
  object INSERT_NEWTAB: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'INSERT_NEWTAB'
    Left = 1648
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@SERVER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@TRANNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@CUSTOMER'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 45
      end
      item
        Position = 5
        Name = '@TELEPHONE'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 13
      end
      item
        Position = 6
        Name = '@CREDITCARD'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 7
        Name = '@BALANCE'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@CUSTOMER_ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@TRANS_TYPE'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 10
        Name = '@BUTTON_ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@LASTIDENTITY'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 12
        Name = '@ISTABLE'
        DataType = ftBoolean
        ParamType = ptInput
      end>
  end
  object GETNEWHEADER: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'GETNEWHEADER'
    Left = 1432
    Top = 832
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@EMPLOYNUMBER'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 3
        Name = '@REGISTER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@TRANSNO'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object qOpenTabs2: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from OPEN_TABS')
    Left = 808
    Top = 624
  end
  object dspOpenTabs2: TDataSetProvider
    DataSet = qOpenTabs2
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 880
    Top = 624
  end
  object dsOpenTabs2: TDataSource
    DataSet = cdsOpenTabs2
    Left = 952
    Top = 624
  end
  object cdsOpenTabs2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOpenTabs2'
    Left = 1016
    Top = 624
    object cdsOpenTabs2ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object cdsOpenTabs2SERVER: TIntegerField
      FieldName = 'SERVER'
      Origin = 'SERVER'
    end
    object cdsOpenTabs2CUSTOMER: TWideStringField
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      FixedChar = True
      Size = 45
    end
    object cdsOpenTabs2TELEPHONE: TWideStringField
      FieldName = 'TELEPHONE'
      Origin = 'TELEPHONE'
      FixedChar = True
      Size = 13
    end
    object cdsOpenTabs2CREDIT_CARD: TWideStringField
      FieldName = 'CREDIT_CARD'
      Origin = 'CREDIT_CARD'
      FixedChar = True
    end
    object cdsOpenTabs2DATE: TSQLTimeStampField
      FieldName = 'DATE'
      Origin = 'DATE'
    end
    object cdsOpenTabs2TRANSACTIONNUMBER: TIntegerField
      FieldName = 'TRANSACTIONNUMBER'
      Origin = 'TRANSACTIONNUMBER'
      Required = True
    end
    object cdsOpenTabs2BUTTON_CAPTION: TWideStringField
      FieldName = 'BUTTON_CAPTION'
      Origin = 'BUTTON_CAPTION'
      FixedChar = True
      Size = 30
    end
    object cdsOpenTabs2CUSTOMER_ID: TIntegerField
      FieldName = 'CUSTOMER_ID'
      Origin = 'CUSTOMER_ID'
    end
    object cdsOpenTabs2GROUP_BALANCE: TFMTBCDField
      FieldName = 'GROUP_BALANCE'
      Origin = 'GROUP_BALANCE'
      Precision = 18
      Size = 2
    end
    object cdsOpenTabs2BALANCE: TFMTBCDField
      FieldName = 'BALANCE'
      Origin = 'BALANCE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsOpenTabs2DELIVER_BY_ID: TIntegerField
      FieldName = 'DELIVER_BY_ID'
      Origin = 'DELIVER_BY_ID'
      DisplayFormat = '#.00'
    end
  end
  object qTabsDetail2: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from TABS_DETAIL')
    Left = 808
    Top = 680
  end
  object dspTabsDetail2: TDataSetProvider
    DataSet = qTabsDetail2
    Options = [poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 880
    Top = 680
  end
  object dsTabsDetail2: TDataSource
    DataSet = cdsTabsDetail2
    Left = 952
    Top = 680
  end
  object cdsTabsDetail2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTabsDetail2'
    Left = 1024
    Top = 680
    object cdsTabsDetail2ID: TAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdsTabsDetail2TABS_ID: TIntegerField
      FieldName = 'TABS_ID'
      Origin = 'TABS_ID'
      Required = True
    end
    object cdsTabsDetail2CUSTOMER: TWideStringField
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      FixedChar = True
      Size = 45
    end
    object cdsTabsDetail2TELEPHONE: TWideStringField
      FieldName = 'TELEPHONE'
      Origin = 'TELEPHONE'
      FixedChar = True
      Size = 13
    end
    object cdsTabsDetail2CREDIT_CARD: TWideStringField
      FieldName = 'CREDIT_CARD'
      Origin = 'CREDIT_CARD'
      FixedChar = True
    end
    object cdsTabsDetail2TRANSACTIONNUMBER: TIntegerField
      FieldName = 'TRANSACTIONNUMBER'
      Origin = 'TRANSACTIONNUMBER'
      Required = True
    end
    object cdsTabsDetail2DATE: TSQLTimeStampField
      FieldName = 'DATE'
      Origin = 'DATE'
    end
    object cdsTabsDetail2BALANCE: TFMTBCDField
      FieldName = 'BALANCE'
      Origin = 'BALANCE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
  end
  object qTransDetailTemp: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from TRANSACTIONDETAIL_TEMP')
    Left = 528
    Top = 880
  end
  object cdsTransDetailTemp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTransDetailTemp'
    Left = 720
    Top = 880
    object cdsTransDetailTempIDNUMBER: TAutoIncField
      FieldName = 'IDNUMBER'
      Origin = 'IDNUMBER'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdsTransDetailTempTRANSACTIONNUMBER: TIntegerField
      FieldName = 'TRANSACTIONNUMBER'
      Origin = 'TRANSACTIONNUMBER'
      Required = True
    end
    object cdsTransDetailTempUPC: TStringField
      FieldName = 'UPC'
      Origin = 'UPC'
      Required = True
      FixedChar = True
      Size = 14
    end
    object cdsTransDetailTempVOIDED: TIntegerField
      FieldName = 'VOIDED'
      Origin = 'VOIDED'
      Required = True
    end
    object cdsTransDetailTempSUBDETAIL: TStringField
      FieldName = 'SUBDETAIL'
      Origin = 'SUBDETAIL'
      FixedChar = True
      Size = 10
    end
    object cdsTransDetailTempPRODDESCRIPTION: TStringField
      FieldName = 'PRODDESCRIPTION'
      Origin = 'PRODDESCRIPTION'
      FixedChar = True
      Size = 30
    end
    object cdsTransDetailTempPRODDEPARTMENT: TStringField
      FieldName = 'PRODDEPARTMENT'
      Origin = 'PRODDEPARTMENT'
      FixedChar = True
    end
    object cdsTransDetailTempFOOD: TStringField
      FieldName = 'FOOD'
      Origin = 'FOOD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsTransDetailTempMODIFIED: TSmallintField
      FieldName = 'MODIFIED'
      Origin = 'MODIFIED'
      Required = True
    end
    object cdsTransDetailTempFECHAVENTA: TSQLTimeStampField
      FieldName = 'FECHAVENTA'
      Origin = 'FECHAVENTA'
      Required = True
    end
    object cdsTransDetailTempSUPLIDOR: TIntegerField
      FieldName = 'SUPLIDOR'
      Origin = 'SUPLIDOR'
      Required = True
    end
    object cdsTransDetailTempID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object cdsTransDetailTempPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
      Origin = 'PRODUCTNO'
    end
    object cdsTransDetailTempTAX_ESTATAL: TStringField
      FieldName = 'TAX_ESTATAL'
      Origin = 'TAX_ESTATAL'
      FixedChar = True
      Size = 1
    end
    object cdsTransDetailTempTAX_MUNICIPAL: TStringField
      FieldName = 'TAX_MUNICIPAL'
      Origin = 'TAX_MUNICIPAL'
      Size = 1
    end
    object cdsTransDetailTempQTY: TFloatField
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object cdsTransDetailTempOPENED: TStringField
      FieldName = 'OPENED'
      Origin = 'OPENED'
      Size = 1
    end
    object cdsTransDetailTempGROUP_PROD: TStringField
      FieldName = 'GROUP_PROD'
      Origin = 'GROUP_PROD'
      Size = 1
    end
    object cdsTransDetailTempREGISTER: TSmallintField
      FieldName = 'REGISTER'
      Origin = 'REGISTER'
    end
    object cdsTransDetailTempSUPERVISOR: TStringField
      FieldName = 'SUPERVISOR'
      Origin = 'SUPERVISOR'
      Size = 3
    end
    object cdsTransDetailTempPATROCINIO: TSmallintField
      FieldName = 'PATROCINIO'
      Origin = 'PATROCINIO'
    end
    object cdsTransDetailTempSUBDEPARTAMENTO: TSmallintField
      FieldName = 'SUBDEPARTAMENTO'
      Origin = 'SUBDEPARTAMENTO'
    end
    object cdsTransDetailTempBARCODEALTERNO1: TWideStringField
      FieldName = 'BARCODEALTERNO1'
      Origin = 'BARCODEALTERNO1'
      FixedChar = True
    end
    object cdsTransDetailTempBARCODEALTERNO2: TWideStringField
      FieldName = 'BARCODEALTERNO2'
      Origin = 'BARCODEALTERNO2'
      FixedChar = True
    end
    object cdsTransDetailTempBAG_NUMBER: TIntegerField
      FieldName = 'BAG_NUMBER'
      Origin = 'BAG_NUMBER'
    end
    object cdsTransDetailTempUTILIDAD: TBooleanField
      FieldName = 'UTILIDAD'
      Origin = 'UTILIDAD'
    end
    object cdsTransDetailTempOTC_NUMBER: TIntegerField
      FieldName = 'OTC_NUMBER'
      Origin = 'OTC_NUMBER'
    end
    object cdsTransDetailTempTRANS_TIME: TSQLTimeStampField
      FieldName = 'TRANS_TIME'
      Origin = 'TRANS_TIME'
    end
    object cdsTransDetailTempTAX_SERVICIO: TBooleanField
      FieldName = 'TAX_SERVICIO'
      Origin = 'TAX_SERVICIO'
    end
    object cdsTransDetailTempNOTE: TWideStringField
      FieldName = 'NOTE'
      Origin = 'NOTE'
      FixedChar = True
      Size = 30
    end
    object cdsTransDetailTempKITCHEN: TBooleanField
      FieldName = 'KITCHEN'
      Origin = 'KITCHEN'
    end
    object cdsTransDetailTempTAX: TFMTBCDField
      FieldName = 'TAX'
      Origin = 'TAX'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsTransDetailTempTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsTransDetailTempREGTOTAL: TFMTBCDField
      FieldName = 'REGTOTAL'
      Origin = 'REGTOTAL'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsTransDetailTempREGPRICE: TFMTBCDField
      FieldName = 'REGPRICE'
      Origin = 'REGPRICE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsTransDetailTempAWP: TFMTBCDField
      FieldName = 'AWP'
      Origin = 'AWP'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsTransDetailTempTOTAL_VALUE: TFMTBCDField
      FieldName = 'TOTAL_VALUE'
      Origin = 'TOTAL_VALUE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsTransDetailTempDISCOUNT: TFMTBCDField
      FieldName = 'DISCOUNT'
      Origin = 'DISCOUNT'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
  end
  object dspTransDetailTemp: TDataSetProvider
    DataSet = qTransDetailTemp
    Options = [poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 592
    Top = 880
  end
  object dsTransDetailTemp: TDataSource
    DataSet = cdsTransDetailTemp
    Left = 656
    Top = 880
  end
  object CALC_TAB_BALANCE: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'CALC_TAB_BALANCE'
    Left = 1200
    Top = 840
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@TRANSNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object qBOTONES_MIDIFIERS: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM BOTONES_MIDIFIERS')
    Left = 808
    Top = 1016
  end
  object dspBotonesModifiers: TDataSetProvider
    DataSet = qBOTONES_MIDIFIERS
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 888
    Top = 1016
  end
  object cdsBotonesModifiers: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBotonesModifiers'
    AfterPost = cdsBotonesModifiersAfterDelete
    AfterDelete = cdsBotonesModifiersAfterDelete
    Left = 1032
    Top = 1016
    object cdsBotonesModifiersBUTTON_NUMBER: TAutoIncField
      FieldName = 'BUTTON_NUMBER'
      Origin = 'BUTTON_NUMBER'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdsBotonesModifiersPRODUCT_NO: TIntegerField
      FieldName = 'PRODUCT_NO'
      Origin = 'PRODUCT_NO'
    end
    object cdsBotonesModifiersQTY: TIntegerField
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object cdsBotonesModifiersBUTTON_NAME: TStringField
      FieldName = 'BUTTON_NAME'
      Origin = 'BUTTON_NAME'
    end
    object cdsBotonesModifiersMASTER_BUTTON_NUMBER: TIntegerField
      FieldName = 'MASTER_BUTTON_NUMBER'
      Origin = 'MASTER_BUTTON_NUMBER'
    end
    object cdsBotonesModifiersDESCRIPTION: TWideStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      FixedChar = True
    end
    object cdsBotonesModifiersPRICE: TFMTBCDField
      FieldName = 'PRICE'
      Origin = 'PRICE'
      Precision = 18
      Size = 2
    end
  end
  object dsBotonesModifiers: TDataSource
    DataSet = cdsBotonesModifiers
    Left = 960
    Top = 1016
  end
  object NEXT_MAIN_COURSE_ID: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'NEXT_MAIN_COURSE_ID'
    Left = 1448
    Top = 920
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@ID'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object qMainCourse: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from Transactiondetail_temp')
    Left = 800
    Top = 1088
  end
  object dspMainCourse: TDataSetProvider
    DataSet = qMainCourse
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 864
    Top = 1088
  end
  object cdsMainCourse: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMainCourse'
    OnCalcFields = cdsMainCourseCalcFields
    Left = 1024
    Top = 1088
    object cdsMainCourseIDNUMBER: TAutoIncField
      FieldName = 'IDNUMBER'
      Origin = 'IDNUMBER'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdsMainCourseTRANSACTIONNUMBER: TIntegerField
      FieldName = 'TRANSACTIONNUMBER'
      Origin = 'TRANSACTIONNUMBER'
      Required = True
    end
    object cdsMainCourseUPC: TStringField
      FieldName = 'UPC'
      Origin = 'UPC'
      Required = True
      FixedChar = True
      Size = 13
    end
    object cdsMainCourseVOIDED: TIntegerField
      FieldName = 'VOIDED'
      Origin = 'VOIDED'
      Required = True
    end
    object cdsMainCourseSUBDETAIL: TStringField
      FieldName = 'SUBDETAIL'
      Origin = 'SUBDETAIL'
      FixedChar = True
      Size = 10
    end
    object cdsMainCoursePRODDESCRIPTION: TStringField
      FieldName = 'PRODDESCRIPTION'
      Origin = 'PRODDESCRIPTION'
      FixedChar = True
      Size = 30
    end
    object cdsMainCoursePRODDEPARTMENT: TStringField
      FieldName = 'PRODDEPARTMENT'
      Origin = 'PRODDEPARTMENT'
      FixedChar = True
    end
    object cdsMainCourseFOOD: TStringField
      FieldName = 'FOOD'
      Origin = 'FOOD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsMainCourseMODIFIED: TSmallintField
      FieldName = 'MODIFIED'
      Origin = 'MODIFIED'
      Required = True
    end
    object cdsMainCourseFECHAVENTA: TSQLTimeStampField
      FieldName = 'FECHAVENTA'
      Origin = 'FECHAVENTA'
      Required = True
    end
    object cdsMainCourseSUPLIDOR: TIntegerField
      FieldName = 'SUPLIDOR'
      Origin = 'SUPLIDOR'
      Required = True
    end
    object cdsMainCourseID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object cdsMainCoursePRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
      Origin = 'PRODUCTNO'
    end
    object cdsMainCourseTAX_ESTATAL: TStringField
      FieldName = 'TAX_ESTATAL'
      Origin = 'TAX_ESTATAL'
      FixedChar = True
      Size = 1
    end
    object cdsMainCourseTAX_MUNICIPAL: TStringField
      FieldName = 'TAX_MUNICIPAL'
      Origin = 'TAX_MUNICIPAL'
      Size = 1
    end
    object cdsMainCourseQTY: TFloatField
      FieldName = 'QTY'
      Origin = 'QTY'
      DisplayFormat = '#.00'
    end
    object cdsMainCourseOPENED: TStringField
      FieldName = 'OPENED'
      Origin = 'OPENED'
      Size = 1
    end
    object cdsMainCourseGROUP_PROD: TStringField
      FieldName = 'GROUP_PROD'
      Origin = 'GROUP_PROD'
      Size = 1
    end
    object cdsMainCourseREGISTER: TSmallintField
      FieldName = 'REGISTER'
      Origin = 'REGISTER'
    end
    object cdsMainCourseSUPERVISOR: TStringField
      FieldName = 'SUPERVISOR'
      Origin = 'SUPERVISOR'
      Size = 3
    end
    object cdsMainCoursePATROCINIO: TSmallintField
      FieldName = 'PATROCINIO'
      Origin = 'PATROCINIO'
    end
    object cdsMainCourseSUBDEPARTAMENTO: TSmallintField
      FieldName = 'SUBDEPARTAMENTO'
      Origin = 'SUBDEPARTAMENTO'
    end
    object cdsMainCourseBARCODEALTERNO1: TWideStringField
      FieldName = 'BARCODEALTERNO1'
      Origin = 'BARCODEALTERNO1'
      FixedChar = True
    end
    object cdsMainCourseBARCODEALTERNO2: TWideStringField
      FieldName = 'BARCODEALTERNO2'
      Origin = 'BARCODEALTERNO2'
      FixedChar = True
    end
    object cdsMainCourseBAG_NUMBER: TIntegerField
      FieldName = 'BAG_NUMBER'
      Origin = 'BAG_NUMBER'
    end
    object cdsMainCourseUTILIDAD: TBooleanField
      FieldName = 'UTILIDAD'
      Origin = 'UTILIDAD'
    end
    object cdsMainCourseOTC_NUMBER: TIntegerField
      FieldName = 'OTC_NUMBER'
      Origin = 'OTC_NUMBER'
    end
    object cdsMainCourseTRANS_TIME: TSQLTimeStampField
      FieldName = 'TRANS_TIME'
      Origin = 'TRANS_TIME'
    end
    object cdsMainCourseNOTE: TWideStringField
      FieldName = 'NOTE'
      Origin = 'NOTE'
      FixedChar = True
      Size = 30
    end
    object cdsMainCourseKITCHEN: TBooleanField
      FieldName = 'KITCHEN'
      Origin = 'KITCHEN'
    end
    object cdsMainCourseMAIN_COURSE_ID: TIntegerField
      FieldName = 'MAIN_COURSE_ID'
      Origin = 'MAIN_COURSE_ID'
    end
    object cdsMainCourseMAIN_COURSE: TBooleanField
      FieldName = 'MAIN_COURSE'
      Origin = 'MAIN_COURSE'
    end
    object cdsMainCourseTERMINO: TWideStringField
      FieldName = 'TERMINO'
      Origin = 'TERMINO'
      ReadOnly = True
      FixedChar = True
      Size = 15
    end
    object cdsMainCoursePRODDESC_DEFINE: TStringField
      FieldKind = fkCalculated
      FieldName = 'PRODDESC_DEFINE'
      Size = 46
      Calculated = True
    end
    object cdsMainCourseTAX: TFMTBCDField
      FieldName = 'TAX'
      Origin = 'TAX'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsMainCourseCOSTO: TFMTBCDField
      FieldName = 'COSTO'
      Origin = 'COSTO'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsMainCoursePRICE: TFMTBCDField
      FieldName = 'PRICE'
      Origin = 'PRICE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsMainCourseTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsMainCourseREGTOTAL: TFMTBCDField
      FieldName = 'REGTOTAL'
      Origin = 'REGTOTAL'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsMainCourseREGPRICE: TFMTBCDField
      FieldName = 'REGPRICE'
      Origin = 'REGPRICE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsMainCourseAWP: TFMTBCDField
      FieldName = 'AWP'
      Origin = 'AWP'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsMainCourseTOTAL_VALUE: TFMTBCDField
      FieldName = 'TOTAL_VALUE'
      Origin = 'TOTAL_VALUE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsMainCourseDISCOUNT: TFMTBCDField
      FieldName = 'DISCOUNT'
      Origin = 'DISCOUNT'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
  end
  object dsMainCourse: TDataSource
    DataSet = cdsMainCourse
    Left = 944
    Top = 1088
  end
  object dsRecipe: TDataSource
    DataSet = cdsRecipe
    Left = 952
    Top = 1160
  end
  object cdsRecipe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRecipe'
    AfterPost = cdsRecipeAfterPost
    BeforeDelete = cdsRecipeAfterPost
    AfterDelete = cdsRecipeAfterPost
    Left = 1032
    Top = 1168
    object cdsRecipeID: TAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdsRecipePRODUCT_ID: TIntegerField
      FieldName = 'PRODUCT_ID'
      Origin = 'PRODUCT_ID'
      Required = True
    end
    object cdsRecipeDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      FixedChar = True
      Size = 30
    end
    object cdsRecipeMAIN_PRODUCT_ID: TIntegerField
      FieldName = 'MAIN_PRODUCT_ID'
      Origin = 'MAIN_PRODUCT_ID'
    end
    object cdsRecipeQTY: TFMTBCDField
      FieldName = 'QTY'
      Origin = 'QTY'
      Precision = 18
      Size = 2
    end
    object cdsRecipeCOST: TFMTBCDField
      FieldName = 'COST'
      Origin = 'COST'
      Precision = 18
      Size = 2
    end
    object cdsRecipePRICE: TFMTBCDField
      FieldName = 'PRICE'
      Origin = 'PRICE'
      Precision = 18
      Size = 2
    end
  end
  object dspRecipe: TDataSetProvider
    DataSet = qRecipe
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 880
    Top = 1160
  end
  object qRecipe: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM RECIPE')
    Left = 800
    Top = 1160
  end
  object qInventarioPiso2: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from InventarioPiso')
    Left = 248
    Top = 1024
  end
  object dspInventarioPisi2: TDataSetProvider
    DataSet = qInventarioPiso2
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 328
    Top = 1024
  end
  object cdsInventarioPiso2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInventarioPisi2'
    AfterScroll = cdsInventarioPiso2AfterScroll
    OnCalcFields = cdsInventarioPiso2CalcFields
    Left = 456
    Top = 1024
    object cdsInventarioPiso2TIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 3
    end
    object cdsInventarioPiso2FECHA_EXPIRACION: TSQLTimeStampField
      FieldName = 'FECHA_EXPIRACION'
      Origin = 'FECHA_EXPIRACION'
    end
    object cdsInventarioPiso2CODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      FixedChar = True
      Size = 1
    end
    object cdsInventarioPiso2COSTO: TFMTBCDField
      FieldName = 'COSTO'
      Origin = 'COSTO'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsInventarioPiso2RBP: TFMTBCDField
      FieldName = 'RBP'
      Origin = 'RBP'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsInventarioPiso2ESPECIAL: TFMTBCDField
      FieldName = 'ESPECIAL'
      Origin = 'ESPECIAL'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsInventarioPiso2DEPARTAMENTO: TSmallintField
      FieldName = 'DEPARTAMENTO'
      Origin = 'DEPARTAMENTO'
    end
    object cdsInventarioPiso2LOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      FixedChar = True
      Size = 12
    end
    object cdsInventarioPiso2PRECIO: TFMTBCDField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsInventarioPiso2COMESPECIAL: TSQLTimeStampField
      FieldName = 'COMESPECIAL'
      Origin = 'COMESPECIAL'
    end
    object cdsInventarioPiso2TERMINAESPECIAL: TSQLTimeStampField
      FieldName = 'TERMINAESPECIAL'
      Origin = 'TERMINAESPECIAL'
    end
    object cdsInventarioPiso2PORCIENTODESCUENTO: TStringField
      FieldName = 'PORCIENTODESCUENTO'
      Origin = 'PORCIENTODESCUENTO'
      FixedChar = True
      Size = 1
    end
    object cdsInventarioPiso2ULTIMOCAMBIO: TStringField
      FieldName = 'ULTIMOCAMBIO'
      Origin = 'ULTIMOCAMBIO'
      FixedChar = True
      Size = 30
    end
    object cdsInventarioPiso2ULTIMAVENTA: TSQLTimeStampField
      FieldName = 'ULTIMAVENTA'
      Origin = 'ULTIMAVENTA'
    end
    object cdsInventarioPiso2CMAXINVENTARIO: TFMTBCDField
      FieldName = 'CMAXINVENTARIO'
      Origin = 'CMAXINVENTARIO'
      Precision = 18
      Size = 2
    end
    object cdsInventarioPiso2CMININVENTARIO: TFMTBCDField
      FieldName = 'CMININVENTARIO'
      Origin = 'CMININVENTARIO'
      Precision = 18
      Size = 2
    end
    object cdsInventarioPiso2CODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Origin = 'CODIGOBARRA'
      Required = True
      FixedChar = True
      Size = 14
    end
    object cdsInventarioPiso2FOODITEM: TSmallintField
      FieldName = 'FOODITEM'
      Origin = 'FOODITEM'
    end
    object cdsInventarioPiso2NONEBC: TSmallintField
      FieldName = 'NONEBC'
      Origin = 'NONEBC'
    end
    object cdsInventarioPiso2NUMEROSUPLIDOR: TIntegerField
      FieldName = 'NUMEROSUPLIDOR'
      Origin = 'NUMEROSUPLIDOR'
    end
    object cdsInventarioPiso2EDITAR_PRECIO: TBooleanField
      FieldName = 'EDITAR_PRECIO'
      Origin = 'EDITAR_PRECIO'
    end
    object cdsInventarioPiso2PRODUCTNO: TAutoIncField
      FieldName = 'PRODUCTNO'
      Origin = 'PRODUCTNO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdsInventarioPiso2SUB_DEPARTAMENTO: TSmallintField
      FieldName = 'SUB_DEPARTAMENTO'
      Origin = 'SUB_DEPARTAMENTO'
    end
    object cdsInventarioPiso2DESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      FixedChar = True
      Size = 35
    end
    object cdsInventarioPiso2ROUTEOFADMINISTRATION: TStringField
      FieldName = 'ROUTEOFADMINISTRATION'
      Origin = 'ROUTEOFADMINISTRATION'
      FixedChar = True
      Size = 16
    end
    object cdsInventarioPiso2CONTROLADO: TStringField
      FieldName = 'CONTROLADO'
      Origin = 'CONTROLADO'
      FixedChar = True
      Size = 4
    end
    object cdsInventarioPiso2STRENGTH: TStringField
      FieldName = 'STRENGTH'
      Origin = 'STRENGTH'
      FixedChar = True
      Size = 25
    end
    object cdsInventarioPiso2INFOADICIONAL: TStringField
      FieldName = 'INFOADICIONAL'
      Origin = 'INFOADICIONAL'
      FixedChar = True
      Size = 25
    end
    object cdsInventarioPiso2METRICSIZE: TFMTBCDField
      FieldName = 'METRICSIZE'
      Origin = 'METRICSIZE'
      Precision = 18
      Size = 2
    end
    object cdsInventarioPiso2CAUTION1: TSmallintField
      FieldName = 'CAUTION1'
      Origin = 'CAUTION1'
    end
    object cdsInventarioPiso2CAUTION2: TSmallintField
      FieldName = 'CAUTION2'
      Origin = 'CAUTION2'
    end
    object cdsInventarioPiso2CAUTION3: TSmallintField
      FieldName = 'CAUTION3'
      Origin = 'CAUTION3'
    end
    object cdsInventarioPiso2GENERICNAME: TStringField
      FieldName = 'GENERICNAME'
      Origin = 'GENERICNAME'
      FixedChar = True
      Size = 60
    end
    object cdsInventarioPiso2TXR: TStringField
      FieldName = 'TXR'
      Origin = 'TXR'
      FixedChar = True
      Size = 8
    end
    object cdsInventarioPiso2BRAND: TStringField
      FieldName = 'BRAND'
      Origin = 'BRAND'
      FixedChar = True
      Size = 1
    end
    object cdsInventarioPiso2GROUP_PRODUCTNO: TIntegerField
      FieldName = 'GROUP_PRODUCTNO'
      Origin = 'GROUP_PRODUCTNO'
    end
    object cdsInventarioPiso2RECETARIO: TStringField
      FieldName = 'RECETARIO'
      Origin = 'RECETARIO'
      FixedChar = True
      Size = 1
    end
    object cdsInventarioPiso2GROUP_QTY: TIntegerField
      FieldName = 'GROUP_QTY'
      Origin = 'GROUP_QTY'
      DisplayFormat = '#.00'
    end
    object cdsInventarioPiso2PRECIO_CAJA: TFMTBCDField
      FieldName = 'PRECIO_CAJA'
      Origin = 'PRECIO_CAJA'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsInventarioPiso2QTY_CAJA: TFMTBCDField
      FieldName = 'QTY_CAJA'
      Origin = 'QTY_CAJA'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsInventarioPiso2DESCUENTO: TStringField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      FixedChar = True
      Size = 1
    end
    object cdsInventarioPiso2IMAGE_CODE: TStringField
      FieldName = 'IMAGE_CODE'
      Origin = 'IMAGE_CODE'
      FixedChar = True
      Size = 9
    end
    object cdsInventarioPiso2PACKAGESIZE: TIntegerField
      FieldName = 'PACKAGESIZE'
      Origin = 'PACKAGESIZE'
    end
    object cdsInventarioPiso2TXR_EXTENSION: TStringField
      FieldName = 'TXR_EXTENSION'
      Origin = 'TXR_EXTENSION'
      FixedChar = True
      Size = 14
    end
    object cdsInventarioPiso2STATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsInventarioPiso2TAXABLE: TStringField
      FieldName = 'TAXABLE'
      Origin = 'TAXABLE'
      FixedChar = True
      Size = 1
    end
    object cdsInventarioPiso2TAXABLE_ESTATAL: TStringField
      FieldName = 'TAXABLE_ESTATAL'
      Origin = 'TAXABLE_ESTATAL'
      FixedChar = True
      Size = 1
    end
    object cdsInventarioPiso2PRECIO2: TFMTBCDField
      FieldName = 'PRECIO2'
      Origin = 'PRECIO2'
      Precision = 18
      Size = 2
    end
    object cdsInventarioPiso2ISBN: TStringField
      FieldName = 'ISBN'
      Origin = 'ISBN'
    end
    object cdsInventarioPiso2PO: TStringField
      FieldName = 'PO'
      Origin = 'PO'
      Size = 10
    end
    object cdsInventarioPiso2PRECIO_DACO: TFMTBCDField
      FieldName = 'PRECIO_DACO'
      Origin = 'PRECIO_DACO'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsInventarioPiso2NDC: TWideStringField
      FieldName = 'NDC'
      Origin = 'NDC'
      FixedChar = True
      Size = 19
    end
    object cdsInventarioPiso2METRIC_UNIT: TWideStringField
      FieldName = 'METRIC_UNIT'
      Origin = 'METRIC_UNIT'
      FixedChar = True
      Size = 3
    end
    object cdsInventarioPiso2ROBOT: TIntegerField
      FieldName = 'ROBOT'
      Origin = 'ROBOT'
    end
    object cdsInventarioPiso2ROBOT_NDC: TWideStringField
      FieldName = 'ROBOT_NDC'
      Origin = 'ROBOT_NDC'
      FixedChar = True
      Size = 11
    end
    object cdsInventarioPiso2PATROCINIO: TIntegerField
      FieldName = 'PATROCINIO'
      Origin = 'PATROCINIO'
    end
    object cdsInventarioPiso2COBRAR_TAX: TIntegerField
      FieldName = 'COBRAR_TAX'
      Origin = 'COBRAR_TAX'
    end
    object cdsInventarioPiso2ALCHEMY_PRODUCTID: TIntegerField
      FieldName = 'ALCHEMY_PRODUCTID'
      Origin = 'ALCHEMY_PRODUCTID'
    end
    object cdsInventarioPiso2MARKET_STATUS: TWideStringField
      FieldName = 'MARKET_STATUS'
      Origin = 'MARKET_STATUS'
      FixedChar = True
      Size = 10
    end
    object cdsInventarioPiso2OUTERPACKAGEUNIT: TWideStringField
      FieldName = 'OUTERPACKAGEUNIT'
      Origin = 'OUTERPACKAGEUNIT'
      FixedChar = True
      Size = 10
    end
    object cdsInventarioPiso2PAKAGE_ID: TIntegerField
      FieldName = 'PAKAGE_ID'
      Origin = 'PAKAGE_ID'
    end
    object cdsInventarioPiso2CASA_FARMACEUTICA: TStringField
      FieldName = 'CASA_FARMACEUTICA'
      Origin = 'CASA_FARMACEUTICA'
      FixedChar = True
      Size = 150
    end
    object cdsInventarioPiso2VERSION_DESCRIPTION: TWideStringField
      FieldName = 'VERSION_DESCRIPTION'
      Origin = 'VERSION_DESCRIPTION'
      FixedChar = True
      Size = 150
    end
    object cdsInventarioPiso2PAKAGE_DESCRIPTION: TWideStringField
      FieldName = 'PAKAGE_DESCRIPTION'
      Origin = 'PAKAGE_DESCRIPTION'
      FixedChar = True
      Size = 150
    end
    object cdsInventarioPiso2REVENUE_CODE: TWideStringField
      FieldName = 'REVENUE_CODE'
      Origin = 'REVENUE_CODE'
      FixedChar = True
      Size = 4
    end
    object cdsInventarioPiso2HCPCS: TWideStringField
      FieldName = 'HCPCS'
      Origin = 'HCPCS'
      FixedChar = True
      Size = 5
    end
    object cdsInventarioPiso2AllowControledRefills: TBooleanField
      FieldName = 'AllowControledRefills'
      Origin = 'AllowControledRefills'
    end
    object cdsInventarioPiso2PRECIOVENTA2: TFMTBCDField
      FieldName = 'PRECIOVENTA2'
      Origin = 'PRECIOVENTA2'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsInventarioPiso2ESCANEAR_BARCODEALTERNO: TSmallintField
      FieldName = 'ESCANEAR_BARCODEALTERNO'
      Origin = 'ESCANEAR_BARCODEALTERNO'
    end
    object cdsInventarioPiso2AAC_PRICE: TFMTBCDField
      FieldName = 'AAC_PRICE'
      Origin = 'AAC_PRICE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsInventarioPiso2MAC_PRICE: TFMTBCDField
      FieldName = 'MAC_PRICE'
      Origin = 'MAC_PRICE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsInventarioPiso2DIRECT_PRICE: TFMTBCDField
      FieldName = 'DIRECT_PRICE'
      Origin = 'DIRECT_PRICE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsInventarioPiso2UC_PRICE: TFMTBCDField
      FieldName = 'UC_PRICE'
      Origin = 'UC_PRICE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsInventarioPiso2PRICE_TABLE_ID: TIntegerField
      FieldName = 'PRICE_TABLE_ID'
      Origin = 'PRICE_TABLE_ID'
    end
    object cdsInventarioPiso2OVERRIDE_SYSTEM_DEFAULT_PRICE: TBooleanField
      FieldName = 'OVERRIDE_SYSTEM_DEFAULT_PRICE'
      Origin = 'OVERRIDE_SYSTEM_DEFAULT_PRICE'
    end
    object cdsInventarioPiso2WAC_PRICE: TFMTBCDField
      FieldName = 'WAC_PRICE'
      Origin = 'WAC_PRICE'
      Precision = 18
      Size = 2
    end
    object cdsInventarioPiso2PRICE_UPDATE: TBooleanField
      FieldName = 'PRICE_UPDATE'
      Origin = 'PRICE_UPDATE'
    end
    object cdsInventarioPiso2ENTER_LAB_RESULTS: TBooleanField
      FieldName = 'ENTER_LAB_RESULTS'
      Origin = 'ENTER_LAB_RESULTS'
    end
    object cdsInventarioPiso2EXPIRE_OPTION: TWideStringField
      FieldName = 'EXPIRE_OPTION'
      Origin = 'EXPIRE_OPTION'
      FixedChar = True
      Size = 15
    end
    object cdsInventarioPiso2EXPIRE_DAYS: TIntegerField
      FieldName = 'EXPIRE_DAYS'
      Origin = 'EXPIRE_DAYS'
    end
    object cdsInventarioPiso2EXPIRE_OTHER: TWideStringField
      FieldName = 'EXPIRE_OTHER'
      Origin = 'EXPIRE_OTHER'
      FixedChar = True
      Size = 15
    end
    object cdsInventarioPiso2MARKETEDPRODUCTID: TIntegerField
      FieldName = 'MARKETEDPRODUCTID'
      Origin = 'MARKETEDPRODUCTID'
    end
    object cdsInventarioPiso2MAIN_NDC: TBooleanField
      FieldName = 'MAIN_NDC'
      Origin = 'MAIN_NDC'
    end
    object cdsInventarioPiso2PSEUDOEPHEDRINE: TBooleanField
      FieldName = 'PSEUDOEPHEDRINE'
      Origin = 'PSEUDOEPHEDRINE'
    end
    object cdsInventarioPiso2INITIAL_QTY: TFMTBCDField
      FieldName = 'INITIAL_QTY'
      Origin = 'INITIAL_QTY'
      Precision = 18
      Size = 2
    end
    object cdsInventarioPiso2QTYINVENTARIO: TFMTBCDField
      FieldName = 'QTYINVENTARIO'
      Origin = 'QTYINVENTARIO'
      Precision = 18
      Size = 2
    end
    object cdsInventarioPiso2SALES_PROMOTION_ID: TIntegerField
      FieldName = 'SALES_PROMOTION_ID'
      Origin = 'SALES_PROMOTION_ID'
    end
    object cdsInventarioPiso2KITCHEN: TBooleanField
      FieldName = 'KITCHEN'
      Origin = 'KITCHEN'
    end
    object cdsInventarioPiso2RECIPE: TBooleanField
      FieldName = 'RECIPE'
      Origin = 'RECIPE'
    end
    object cdsInventarioPiso2NOTE: TMemoField
      FieldName = 'NOTE'
      Origin = 'NOTE'
      BlobType = ftMemo
    end
    object cdsInventarioPiso2MODIFIER_QTY: TIntegerField
      FieldName = 'MODIFIER_QTY'
      Origin = 'MODIFIER_QTY'
    end
    object cdsInventarioPiso2HAS_MODIFIER: TBooleanField
      FieldName = 'HAS_MODIFIER'
      Origin = 'HAS_MODIFIER'
    end
    object cdsInventarioPiso2TYPIST: TWideStringField
      FieldName = 'TYPIST'
      Origin = 'TYPIST'
      FixedChar = True
      Size = 3
    end
    object cdsInventarioPiso2PRODUCT_IMAGE: TBlobField
      FieldName = 'PRODUCT_IMAGE'
      Origin = 'PRODUCT_IMAGE'
    end
    object cdsInventarioPiso2RECIPE_PRICE: TFMTBCDField
      FieldName = 'RECIPE_PRICE'
      Origin = 'RECIPE_PRICE'
      Precision = 18
      Size = 2
    end
    object cdsInventarioPiso2SHOWINDIVIDUAL: TBooleanField
      FieldName = 'SHOWINDIVIDUAL'
      Origin = 'SHOWINDIVIDUAL'
    end
    object cdsInventarioPiso2DAILY_SALE_START_TIME: TTimeField
      FieldName = 'DAILY_SALE_START_TIME'
      Origin = 'DAILY_SALE_START_TIME'
    end
    object cdsInventarioPiso2DAILY_SALE_END_TIME: TTimeField
      FieldName = 'DAILY_SALE_END_TIME'
      Origin = 'DAILY_SALE_END_TIME'
    end
    object cdsInventarioPiso2DAILY_SALE_ACTIVE: TBooleanField
      FieldName = 'DAILY_SALE_ACTIVE'
      Origin = 'DAILY_SALE_ACTIVE'
    end
    object cdsInventarioPiso2DAILY_SPECIAL_PRICE: TFMTBCDField
      FieldName = 'DAILY_SPECIAL_PRICE'
      Origin = 'DAILY_SPECIAL_PRICE'
      Precision = 18
      Size = 2
    end
    object cdsInventarioPiso2PRECIOVENTA3: TFMTBCDField
      FieldName = 'PRECIOVENTA3'
      Origin = 'PRECIOVENTA3'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsInventarioPiso2PROCESSED_FOOD: TBooleanField
      FieldName = 'PROCESSED_FOOD'
      Origin = 'PROCESSED_FOOD'
    end
    object cdsInventarioPiso2QuantityUnitOfMeasure: TWideStringField
      FieldName = 'QuantityUnitOfMeasure'
      Origin = 'QuantityUnitOfMeasure'
      FixedChar = True
      Size = 50
    end
    object cdsInventarioPiso2StrengthForm: TWideStringField
      FieldName = 'StrengthForm'
      Origin = 'StrengthForm'
      FixedChar = True
      Size = 50
    end
    object cdsInventarioPiso2StrengthUnitOfMeasure: TWideStringField
      FieldName = 'StrengthUnitOfMeasure'
      Origin = 'StrengthUnitOfMeasure'
      FixedChar = True
      Size = 50
    end
    object cdsInventarioPiso2PRODUCT_CLASSIFICATION: TWideStringField
      FieldName = 'PRODUCT_CLASSIFICATION'
      Origin = 'PRODUCT_CLASSIFICATION'
      FixedChar = True
    end
    object cdsInventarioPiso2Faltas: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Faltas'
      Calculated = True
    end
    object cdsInventarioPiso2TOTAL_COST: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_COST'
      Calculated = True
    end
  end
  object dsInventarioPiso2: TDataSource
    DataSet = cdsInventarioPiso2
    Left = 392
    Top = 1024
  end
  object POS_INVENTORY_CONTROL: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'POS_INVENTORY_CONTROL'
    Left = 1456
    Top = 1000
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@TRASNNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object CALC_DAILYTOTALS_READ: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'CALC_DAILYTOTALS_READ'
    Left = 1456
    Top = 1088
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@TRANSACTIONDATE'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@TRANS_HEAD_ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object CALC_DAILYTOTALS_READ_REST: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'CALC_DAILYTOTALS_READ_REST'
    Left = 1464
    Top = 1144
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 1064
    Top = 88
  end
  object TIME_STAMP: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'TIME_STAMP'
    Left = 1554
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@EMPLOYEE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@DATETIME'
        DataType = ftTimeStamp
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@RESULT'
        DataType = ftFixedChar
        ParamType = ptInputOutput
        Size = 15
      end>
  end
  object qTime_Card: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM TIMECARD')
    Left = 1552
    Top = 80
  end
  object dsTime_Card: TDataSource
    DataSet = cdsTime_Card
    Left = 1704
    Top = 80
  end
  object dspTime_Card: TDataSetProvider
    DataSet = qTime_Card
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 1624
    Top = 80
  end
  object qPwrd: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from passwords')
    Left = 1552
    Top = 160
  end
  object dspPwrd: TDataSetProvider
    DataSet = qPwrd
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 1608
    Top = 160
  end
  object cdsPwrd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPwrd'
    Left = 1760
    Top = 160
    object cdsPwrdUSERNAME: TStringField
      FieldName = 'USERNAME'
      Origin = 'USERNAME'
      Required = True
      Size = 35
    end
    object cdsPwrdINICIALES: TStringField
      FieldName = 'INICIALES'
      Origin = 'INICIALES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object cdsPwrdUSERNO: TAutoIncField
      FieldName = 'USERNO'
      ReadOnly = True
    end
  end
  object dsPwrd: TDataSource
    Left = 1680
    Top = 160
  end
  object cdsTime_Card: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTime_Card'
    AfterPost = cdsTime_CardBeforeDelete
    BeforeDelete = cdsTime_CardBeforeDelete
    AfterDelete = cdsTime_CardBeforeDelete
    Left = 1763
    Top = 80
    object cdsTime_CardID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object cdsTime_CardPUNCH_IN_1: TSQLTimeStampField
      FieldName = 'PUNCH_IN_1'
    end
    object cdsTime_CardPUNCH_OUT_1: TSQLTimeStampField
      FieldName = 'PUNCH_OUT_1'
    end
    object cdsTime_CardEMPLOYEE: TIntegerField
      FieldName = 'EMPLOYEE'
    end
    object cdsTime_CardSHIFT: TStringField
      FieldName = 'SHIFT'
      Size = 8
    end
    object cdsTime_CardCOMULATIVE: TStringField
      FieldName = 'COMULATIVE'
      Size = 8
    end
    object cdsTime_CardPUNCH_IN_2: TSQLTimeStampField
      FieldName = 'PUNCH_IN_2'
    end
    object cdsTime_CardPUNCH_OUT_2: TSQLTimeStampField
      FieldName = 'PUNCH_OUT_2'
    end
    object cdsTime_CardAPPROVED: TBooleanField
      FieldName = 'APPROVED'
      Required = True
    end
    object cdsTime_CardSECONDS: TIntegerField
      FieldName = 'SECONDS'
    end
    object cdsTime_CardEmployee_define: TStringField
      FieldKind = fkLookup
      FieldName = 'Employee_define'
      LookupDataSet = cdsPwrd
      LookupKeyFields = 'USERNO'
      LookupResultField = 'USERNAME'
      KeyFields = 'EMPLOYEE'
      Size = 45
      Lookup = True
    end
    object cdsTime_CardDAILY: TStringField
      FieldName = 'DAILY'
      Size = 16
    end
  end
  object HOLD_SAVE_TRANSACTION: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'HOLD_SAVE_TRANSACTION'
    Left = 1584
    Top = 368
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@TRANNO'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 3
        Name = '@ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@OPTION'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 5
        Name = '@DELIVER'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 6
        Name = '@DELIVERNAME'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 7
        Name = '@CUSTOMER'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 8
        Name = '@DELIVERYADDRESS1'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 9
        Name = '@DELIVERYADDRESS2'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 10
        Name = '@DELIVERY_CITY'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 11
        Name = '@DELIVERY_ZIPCODE'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 15
      end
      item
        Position = 12
        Name = '@DELIVERY_STATE'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 13
        Name = '@REGISTER_NO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 14
        Name = '@EMPLOYNUMBER'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 15
        Name = '@DELIVERYPHONE'
        DataType = ftString
        ParamType = ptInput
        Size = 13
      end
      item
        Position = 16
        Name = '@PONUMBER'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
  end
  object POS_DELETE_OPEN_TRANSACTIONS: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'POS_DELETE_OPEN_TRANSACTIONS'
    Left = 1592
    Top = 424
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@REGISTER'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object TIMECARD_TOTALHOURSWORKED: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'TIMECARD_TOTALHOURSWORKED'
    Left = 1608
    Top = 496
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@FROM'
        DataType = ftTimeStamp
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@TO'
        DataType = ftTimeStamp
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@EMPLOEE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@THW'
        DataType = ftFixedChar
        ParamType = ptInputOutput
        Size = 16
      end>
  end
  object qDeliverBy: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from passwords')
    Left = 1560
    Top = 240
  end
  object dspDeliverBy: TDataSetProvider
    DataSet = qDeliverBy
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 1624
    Top = 240
  end
  object dsDeliverBy: TDataSource
    DataSet = cdsDeliverBy
    Left = 1696
    Top = 240
  end
  object cdsDeliverBy: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDeliverBy'
    Left = 1768
    Top = 240
    object cdsDeliverByUSERNAME: TStringField
      FieldName = 'USERNAME'
      Origin = 'USERNAME'
      Required = True
      Size = 35
    end
    object cdsDeliverByUSERNO: TAutoIncField
      FieldName = 'USERNO'
      Origin = 'USERNO'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
  end
  object UPDATE_TRANSACTION_HEADER: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'UPDATE_TRANSACTION_HEADER'
    Left = 1616
    Top = 568
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@TRANSNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@AMOUNT_TENDERED'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@PAYMENTTYPE'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 4
      end
      item
        Position = 5
        Name = '@CHANGE'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@CUSTOMERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@TRANS_TYPE'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 8
        Name = '@TIP'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@PAYAMOUNT_TYPE'
        DataType = ftFixedChar
        ParamType = ptInputOutput
        Size = 10
      end
      item
        Position = 10
        Name = '@ISVALID'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end>
  end
  object POS_INSERT_EDIT_INVENTORY: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'POS_INSERT_EDIT_INVENTORY'
    Left = 1768
    Top = 376
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@ADD_EDIT'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@PROCUCT_ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@DESCRIPCION'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 35
      end
      item
        Position = 5
        Name = '@COSTO'
        DataType = ftSingle
        Precision = 8
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@PRECIO'
        DataType = ftSingle
        Precision = 8
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@PRECIOVENTA2'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@PRECIOVENTA3'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@RBP'
        DataType = ftSingle
        Precision = 8
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@GROUP_QTY'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@PRECIO_CAJA'
        DataType = ftSingle
        Precision = 8
        ParamType = ptInput
      end
      item
        Position = 12
        Name = '@QTY_CAJA'
        DataType = ftSingle
        Precision = 8
        ParamType = ptInput
      end
      item
        Position = 13
        Name = '@ESPECIAL'
        DataType = ftSingle
        Precision = 8
        ParamType = ptInput
      end
      item
        Position = 14
        Name = '@COMESPECIAL'
        DataType = ftTimeStamp
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 15
        Name = '@TERMINAESPECIAL'
        DataType = ftTimeStamp
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 16
        Name = '@SALES_PROMO_DEFINE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 17
        Name = '@KITCHEN'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 18
        Name = '@HAS_MODIFIER'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 19
        Name = '@MODIFIER_QTY'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 20
        Name = '@DESCDEPT'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Position = 21
        Name = '@SUBDEPT'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Position = 22
        Name = '@Suplidor'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 23
        Name = '@CMININVENTARIO'
        DataType = ftSingle
        Precision = 8
        ParamType = ptInput
      end
      item
        Position = 24
        Name = '@CMAXINVENTARIO'
        DataType = ftSingle
        Precision = 8
        ParamType = ptInput
      end
      item
        Position = 25
        Name = '@QTYINVENTARIO'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 26
        Name = '@EDITAR_PRECIO'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 27
        Name = '@PO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 28
        Name = '@CODIGOBARRA'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 14
      end
      item
        Position = 29
        Name = '@BARCODE2'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 14
      end
      item
        Position = 30
        Name = '@INFOADICIONAL'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 25
      end
      item
        Position = 31
        Name = '@SHOWINDIVIDUAL'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 32
        Name = '@PATROCINIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 33
        Name = '@TAXABLE_ESTATAL'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 34
        Name = '@TAXABLE'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 35
        Name = '@FOODITEM'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Position = 36
        Name = '@NONEBC'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Position = 37
        Name = '@RECIPE'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 38
        Name = '@PID'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 39
        Name = '@RECIPEPRICE'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 40
        Name = '@DAILY_SALE_START_TIME'
        DataType = ftTime
        ParamType = ptInput
      end
      item
        Position = 41
        Name = '@DAILY_SALE_END_TIME'
        DataType = ftTime
        ParamType = ptInput
      end
      item
        Position = 42
        Name = '@DAILY_SALE_ACTIVE'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 43
        Name = '@DAILY_SPECIAL_PRICE'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 44
        Name = '@PROCESSED_FOOD'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 45
        Name = '@SHOW_ON_ECOMM'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 46
        Name = '@TRIPLES_PRODUCT'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 47
        Name = '@ULTIMOCAMBIO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 48
        Name = '@CUSTOMER_ID_REQUIRED'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 49
        Name = '@NOTE'
        DataType = ftMemo
        ParamType = ptInput
      end
      item
        Position = 50
        Name = '@PRODUCT_CLASSIFICATION'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 50
        Name = '@GM1'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 51
        Name = '@GM2'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 52
        Name = '@GM3'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 53
        Name = '@ALWDISC'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 54
        Name = '@ROUND'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 55
        Name = '@DEPL'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Position = 56
        Name = '@DEPS'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Position = 57
        Name = '@NLINE'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 58
        Name = '@EBT'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 59
        Name = '@SIGIS'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 60
        Name = '@OTCCARD'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 61
        Name = '@PSEUDO'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 62
        Name = '@PSEUDOMGD'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 63
        Name = '@PSEUDOMGP'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 64
        Name = '@NONREFUND'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 65
        Name = '@PEP_SPRAY'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 66
        Name = '@MAXPERTX'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 67
        Name = '@SKIPPRICEUPD'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 68
        Name = '@DTSKIPPRICEUPD'
        DataType = ftTimeStamp
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 69
        Name = '@SKIPPRICEUPDINIT'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 70
        Name = '@LINE_LOC'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 71
        Name = '@SHELF_LOC'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 72
        Name = '@STOCK_LOC'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 73
        Name = '@SIZE_IT'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 74
        Name = '@AskID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 75
        Name = '@LST_MODIF_PR'
        DataType = ftTimeStamp
        NumericScale = 3
        ParamType = ptInput
      end>
  end
  object POS_CANCEL_TRANS: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'POS_CANCEL_TRANS'
    Left = 1776
    Top = 448
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@NOTRANS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@UPDATE_INV'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@isVoid'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@DBName'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 20
      end>
  end
  object NEXTRX_TRAN_NO: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'dbo.NEXTRX_TRAN_NO'
    Left = 1544
    Top = 296
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@RX_TRAN_NO'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object POS_RECALL_TRANSACTION: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'POS_RECALL_TRANSACTION'
    Left = 1776
    Top = 528
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@EMPLOYEE'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 4
        Name = '@REGISTER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@TRANSNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object POS_SPLIT_TAB: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'POS_SPLIT_TAB'
    Left = 1776
    Top = 608
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = '@TRANSNO_FROM'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@TRANSNO_TO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@CANCEL_TRANS'
        DataType = ftBoolean
        ParamType = ptInput
      end>
  end
  object POST_SHOPPER: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'POST_SHOPPER'
    Left = 1776
    Top = 688
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = '@ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@COMESPECIAL'
        DataType = ftTimeStamp
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@TERMINAESPECIAL'
        DataType = ftTimeStamp
        NumericScale = 3
        ParamType = ptInput
      end>
  end
  object POS_INSERT_BUTTON_IMAGE: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'POS_INSERT_BUTTON_IMAGE'
    Left = 1776
    Top = 768
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = '@BUTTON_IMAGE'
        DataType = ftBlob
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@BUTTON_NUMBER'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object POS_UPDATE_PRINTED: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'POS_UPDATE_PRINTED'
    Left = 1904
    Top = 88
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@TRANSNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object POS_INSERT_DAILYTOTALS: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'POS_INSERT_DAILYTOTALS'
    Left = 1920
    Top = 160
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@STARTBANK'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@EMPLOYNUMBER'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 4
        Name = '@REGISTER'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object CALC_HEAD_TOTALS: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'CALC_HEAD_TOTALS'
    Left = 1920
    Top = 232
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@INTRANS'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object POS_UPDATE_PAYMENTTYPE: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'POS_UPDATE_PAYMENTTYPE'
    Left = 1920
    Top = 296
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@TRANSNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@PAYMENTTYPE'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 4
      end
      item
        Position = 4
        Name = '@AMOUNT'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end>
  end
  object POST_SHOPPER_DAILY: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'POST_SHOPPER_DAILY'
    Left = 1936
    Top = 384
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@COMESPECIAL'
        DataType = ftTime
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@TERMINAESPECIAL'
        DataType = ftTime
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@PERCENTAGE_DISCOUNT'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@ACTIVE_INACTIVE'
        DataType = ftBoolean
        ParamType = ptInput
      end>
  end
  object qCars: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from car')
    Left = 272
    Top = 304
  end
  object dspCars: TDataSetProvider
    DataSet = qCars
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 320
    Top = 304
  end
  object dsCars: TDataSource
    DataSet = cdsCars
    Left = 384
    Top = 304
  end
  object cdsCars: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCars'
    AfterInsert = cdsCarsAfterInsert
    AfterPost = cdsCarsAfterPost
    BeforeDelete = cdsCarsAfterPost
    Left = 440
    Top = 304
    object cdsCarsNUMEROCLIENTE: TIntegerField
      FieldName = 'NUMEROCLIENTE'
      Origin = 'NUMEROCLIENTE'
      Required = True
    end
    object cdsCarsCAR_ID: TAutoIncField
      FieldName = 'CAR_ID'
      Origin = 'CAR_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdsCarsLICENCE_PLATE: TWideStringField
      FieldName = 'LICENCE_PLATE'
      Origin = 'LICENCE_PLATE'
      FixedChar = True
      Size = 10
    end
    object cdsCarsBIN_NUMBER: TWideStringField
      FieldName = 'BIN_NUMBER'
      Origin = 'BIN_NUMBER'
      FixedChar = True
    end
    object cdsCarsYEAR: TDateField
      FieldName = 'YEAR'
      Origin = 'YEAR'
    end
    object cdsCarsCOLOR: TWideStringField
      FieldName = 'COLOR'
      Origin = 'COLOR'
      FixedChar = True
      Size = 10
    end
    object cdsCarsNOTE: TMemoField
      FieldName = 'NOTE'
      Origin = 'NOTE'
      BlobType = ftMemo
    end
    object cdsCarsBRAND: TWideStringField
      FieldName = 'BRAND'
      Origin = 'BRAND'
      FixedChar = True
    end
    object cdsCarsMODEL: TWideStringField
      FieldName = 'MODEL'
      Origin = 'MODEL'
      FixedChar = True
    end
  end
  object POS_TFAM_CALC: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'POS_TFAM_CALC'
    Left = 1944
    Top = 472
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@TRANSNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@AMOUNT'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInputOutput
      end
      item
        Position = 4
        Name = '@UPDATEDATA'
        DataType = ftBoolean
        ParamType = ptInput
      end>
  end
  object WF_UPDATE: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'WF_UPDATE'
    Left = 1920
    Top = 24
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@OTCNUMBER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@TOKEN'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 4
        Name = '@OPTION'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 5
        Name = '@SIGNATURE_LINK'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object dsInventoryImage: TDataSource
    DataSet = cdsInventoryImage
    Left = 328
    Top = 968
  end
  object cdsInventoryImage: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInventoryImage'
    AfterPost = cdsShopperDetailAfterDelete
    AfterDelete = cdsShopperDetailAfterDelete
    Left = 440
    Top = 968
    object cdsInventoryImagePRODUCT_ID: TIntegerField
      FieldName = 'PRODUCT_ID'
      Required = True
    end
    object cdsInventoryImagePROD_IMAGE: TBlobField
      FieldName = 'PROD_IMAGE'
    end
  end
  object dspInventoryImage: TDataSetProvider
    DataSet = qInventoryImage
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 384
    Top = 968
  end
  object qInventoryImage: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from INVENTORY_IMAGE')
    Left = 264
    Top = 968
  end
  object POS_INSERT_EDIT_PRODIMAGE: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'INSERT_EDIT_PRODUCT_IMAGE'
    Left = 1784
    Top = 840
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@productId'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@productImage'
        DataType = ftBlob
        ParamType = ptInput
      end>
  end
  object POS_UPDATE_TAX_TFAM: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'POS_UPDATE_TAX_TFAM'
    Left = 1952
    Top = 552
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@TRANS_NO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object RX_UPDATE_REFILL_QUERY: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'RX_UPDATE_REFILL_QUERY'
    Left = 1040
    Top = 664
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@NORX'
        DataType = ftLargeint
        ParamType = ptInput
      end>
  end
  object ADD_EDIT_USERS_POS: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'ADD_EDIT_USERS_POS'
    Left = 816
    Top = 48
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@ACTIVATE'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@USERNAME'
        DataType = ftString
        ParamType = ptInput
        Size = 35
      end
      item
        Position = 4
        Name = '@INICIALES'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 5
        Name = '@SEC_LEVEL'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 6
        Name = '@MAIN_SETUP'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@MAIN_CUST'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@MAIN_LABEL'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@MAIN_INV'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@MAIN_DEPT'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@MAIN_SUPL'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 12
        Name = '@MAIN_TOTAL'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 13
        Name = '@MAIN_ACCTS'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 14
        Name = '@MAIN_INVRPT'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 15
        Name = '@MAIN_RECV'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 16
        Name = '@POS_REFUND'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 17
        Name = '@POS_DELPROD'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 18
        Name = '@POS_CHGPRICE'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 19
        Name = '@POS_DELTRANS'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 20
        Name = '@POS_DISCOUNT'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 21
        Name = '@POS_PAYOUT'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 22
        Name = '@POS_OPNDRAWR'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 23
        Name = '@CUST_IBAL'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 24
        Name = '@CUST_ILWAY'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 25
        Name = '@CUST_EDIT'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 26
        Name = '@CUST_DEL'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 27
        Name = '@TOT_ADDOLD'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 28
        Name = '@TOT_EDIT'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 29
        Name = '@TOT_EDITOLD'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 30
        Name = '@TOT_DEL'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 31
        Name = '@POS_NCGH'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 32
        Name = '@POS_REPRINT'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 33
        Name = '@POS_CANCEL'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 34
        Name = '@MAIN_TRANS'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 35
        Name = '@POS_CREDIT'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 36
        Name = '@VERTRANSACCIONES'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 37
        Name = '@POS_LOGEADO'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 38
        Name = '@AGRUPARPRODUCTOS'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 39
        Name = '@EM_VERQTYORD'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 40
        Name = '@POS_IVU'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 41
        Name = '@QUICKENTRY'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 42
        Name = '@GUARDAR_TRANSACCIONES'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 43
        Name = '@RECALL_TRANS'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 44
        Name = '@BACKUP_PERMIT'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 45
        Name = '@POS_HOLD'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 46
        Name = '@VENTA_MANUAL'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 47
        Name = '@REDIMIR_PATROCINIO'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 48
        Name = '@RPT_POS'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 49
        Name = '@RPT_INVENTARIO'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 50
        Name = '@RPT_RECONCILIACION'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 50
        Name = '@RPT_CLIENTES'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 51
        Name = '@REPORTES'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 52
        Name = '@CAMBIAR_PRECIO_OTC_RX'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 53
        Name = '@PORCENTO_DESCUENTO'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 54
        Name = '@CAPTURAR_FIRMA'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 55
        Name = '@POS_BUTTONS'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 56
        Name = '@POS_CUADRE_ADMINISTRADOR'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 57
        Name = '@POS_VER_TOTAL_CASH'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 58
        Name = '@POS_POST_SHOPPER'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 59
        Name = '@TIME_CARD'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 60
        Name = '@POS_TAB_CANCEL'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 61
        Name = '@POS_ADD_BUTTONS'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 62
        Name = '@POS_REST_DELETEPRODUCT'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 63
        Name = '@POS_LIMITE_CAMBIO_PRECIO'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 64
        Name = '@POS_CAMBIAR_PRECIO_INV'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 65
        Name = '@CELULAR'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 13
      end
      item
        Position = 66
        Name = '@HOME_PHONE'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 13
      end
      item
        Position = 67
        Name = '@ADDRESS1'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 68
        Name = '@ADDRESS2'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 69
        Name = '@CITY'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 70
        Name = '@ZIP_CODE'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 15
      end
      item
        Position = 71
        Name = '@STATE'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 72
        Name = '@USERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 73
        Name = '@LOG_DATA'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 74
        Name = '@PASSWORD_COL'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 75
        Name = '@ACTIVE'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 76
        Name = '@POS_CERRAR_CUADRE_ALIMPIRIMIR'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 77
        Name = '@CAMBIARPASSWORD'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 78
        Name = '@USER'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 79
        Name = '@NOTE'
        DataType = ftMemo
        ParamType = ptInput
        Size = 2147483647
      end
      item
        Position = 80
        Name = '@USERNO_OUTPUT'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 81
        Name = '@RX_UPDATE_INV_BROWSE'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 82
        Name = '@POS_MODIFY_PAYOUT'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 83
        Name = '@PROCESS_HANDHELD'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 84
        Name = '@CREATE_INVENTORY'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 85
        Name = '@EDIT_INVENTORY'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 86
        Name = '@DELETE_INVENTORY'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 87
        Name = '@POS_DELETE_RX'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end>
  end
  object ISAUTHORIZED: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'ISAUTHORIZED'
    Left = 1952
    Top = 640
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@USERNO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 4
      end
      item
        Position = 3
        Name = '@Field'
        DataType = ftMemo
        ParamType = ptInput
        Size = 2147483647
      end
      item
        Position = 4
        Name = '@ResultValue'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 5
        Name = '@USER'
        DataType = ftFixedChar
        ParamType = ptInputOutput
        Size = 3
      end>
  end
  object PWRD_ISAUTHORIZED: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'PWRD_ISAUTHORIZED'
    Left = 1952
    Top = 720
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@USERNAME'
        DataType = ftString
        ParamType = ptInput
        Size = 35
      end
      item
        Position = 3
        Name = '@PASSWORD_COL'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 4
        Name = '@PWRDResultValue'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 5
        Name = '@INICIALES'
        DataType = ftFixedChar
        ParamType = ptInputOutput
        Size = 3
      end
      item
        Position = 6
        Name = '@USERNO'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 7
        Name = '@PHARMACIST'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 8
        Name = '@ANADIRRECETAS'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 9
        Name = '@HISTORIALRECETAS'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 10
        Name = '@BORRARPACIENTE'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 11
        Name = '@RX_PRESCRIPTION_NOTE'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 12
        Name = '@MAIN_ACCTS'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 13
        Name = '@ACTIVE'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 14
        Name = '@THIRDPARTY'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 15
        Name = '@OTC'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 16
        Name = '@RX_CAMBIARPRECIO_RX'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 17
        Name = '@BORRARRECETAS'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 18
        Name = '@BORRARRECETAS_CASH'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 19
        Name = '@RX_CHANGE_QTY'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 20
        Name = '@BORRAR_CANTIDA_RX'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 21
        Name = '@EDITAR_NOMBRE'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 22
        Name = '@MERGE_PAT_DOC'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 23
        Name = '@BORRAR_FIRMA'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 24
        Name = '@CAPTURAR_FIRMA'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 25
        Name = '@REVERSAL'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 26
        Name = '@LOG_DATA'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 27
        Name = '@BORRAR_PAT_PLAN'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 28
        Name = '@BORRAR_EPRESCRIBE'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 29
        Name = '@RX_CHANGE_REFILL'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 30
        Name = '@DOCTORES'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 31
        Name = '@RX_NO_EDIT_HISTORY'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 32
        Name = '@RX_EDIT_SIG'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 33
        Name = '@RX_ATIVE'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 34
        Name = '@OVERRIDE_GENERIC'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 35
        Name = '@WORKFLOW'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 36
        Name = '@RECALL_LOCKED_RX'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 37
        Name = '@RX_RECALL_EPRESRIBE_HIST'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 38
        Name = '@INVENTARIORX'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 39
        Name = '@BORRARINVENTARIO'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 40
        Name = '@QUICKENTRY'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 41
        Name = '@RX_UPDATE_INV_BROWSE'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 42
        Name = '@MERGE_INV_QTY'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 43
        Name = '@REPORTES'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 44
        Name = '@CAMBIARPASSWORD'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 45
        Name = '@FACTURAS_WESCOM'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 46
        Name = '@BACKUP_PERMIT'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 47
        Name = '@TIME_CARD'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 48
        Name = '@SETUP'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 49
        Name = '@RX_CONTROLLED_ANOTATE'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 50
        Name = '@RX_CONTROLLED_DELETE'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 50
        Name = '@CONTROLLED_SUBSTANCE'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 51
        Name = '@APPRISS'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 52
        Name = '@RX_COTROLLED_LOG'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 53
        Name = '@DUR'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 54
        Name = '@PEDIDOSMERCANCIA'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 55
        Name = '@PHARMACY'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 56
        Name = '@MAIN_SETUP'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 57
        Name = '@MAIN_CUST'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 58
        Name = '@MAIN_INV'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 59
        Name = '@MAIN_DEPT'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 60
        Name = '@MAIN_SUPL'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 61
        Name = '@MAIN_TOTAL'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 62
        Name = '@POS_REFUND'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 63
        Name = '@POS_DELPROD'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 64
        Name = '@POS_CHGPRICE'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 65
        Name = '@POS_DELTRANS'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 66
        Name = '@POS_NCGH'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 67
        Name = '@POS_CANCEL'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 68
        Name = '@POS_DISCOUNT'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 69
        Name = '@POS_IVU'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 70
        Name = '@POS_PAYOUT'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 71
        Name = '@POS_OPNDRAWR'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 72
        Name = '@POS_REPRINT'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 73
        Name = '@POS_CREDIT'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 74
        Name = '@GUARDAR_TRANSACCIONES'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 75
        Name = '@RECALL_TRANS'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 76
        Name = '@POS_HOLD'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 77
        Name = '@VENTA_MANUAL'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 78
        Name = '@CAMBIAR_PRECIO_OTC_RX'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 79
        Name = '@POS_BUTTONS'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 80
        Name = '@REDIMIR_PATROCINIO'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 81
        Name = '@POS_ADD_BUTTONS'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 82
        Name = '@POS_TAB_CANCEL'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 83
        Name = '@POS_VER_TOTAL_CASH'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 84
        Name = '@POS_POST_SHOPPER'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 85
        Name = '@POS_REST_DELETEPRODUCT'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 86
        Name = '@POS_LIMITE_CAMBIO_PRECIO'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 87
        Name = '@CUST_IBAL'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 88
        Name = '@CUST_EDIT'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 89
        Name = '@CUST_DEL'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 90
        Name = '@TOT_DEL'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 91
        Name = '@TOT_EDIT'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 92
        Name = '@POS_CUADRE_ADMINISTRADOR'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 93
        Name = '@MAIN_RECV'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 94
        Name = '@EM_VERQTYORD'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 95
        Name = '@WC_LOAD'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 96
        Name = '@MAIN_TRANS'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 97
        Name = '@TOT_EDITOLD'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 98
        Name = '@CAMBIARCOSTOYPRECIOVENTA'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 99
        Name = '@Pesc_Sig_isIdentity'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 100
        Name = '@RX_CONTROLLED_MODIFY'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 101
        Name = '@RPT_RECETARIO'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 102
        Name = '@RPT_RECONCILIACION'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 103
        Name = '@RPT_POS'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 104
        Name = '@RPT_INVENTARIO'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 105
        Name = '@RPT_CLIENTES'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 106
        Name = '@CLASSIC_SIG'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 107
        Name = '@WC_SETUP'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 108
        Name = '@WC_RETREIVE'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 109
        Name = '@WC_RTS'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 110
        Name = '@WC_SENDMESSAGE'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 111
        Name = '@WC_REPORTS'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 112
        Name = '@WILLCALL'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 113
        Name = '@PHARMACIST_NPI'
        DataType = ftString
        ParamType = ptInputOutput
        Size = 15
      end
      item
        Position = 114
        Name = '@PHARMACIST_LICENCE'
        DataType = ftString
        ParamType = ptInputOutput
        Size = 15
      end
      item
        Position = 115
        Name = '@POS_DELETE_RX'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 116
        Name = '@WC_DELETE_RX'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 117
        Name = '@HOLD_RECALL_EPRESCRIBE'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 118
        Name = '@RX_CHANGE_ORIGINCODE'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 119
        Name = '@Change_PriceTable'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 120
        Name = '@ADMINISTRATOR'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 121
        Name = '@PROCESS_HANDHELD'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 122
        Name = '@CREATE_INVENTORY'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 123
        Name = '@EDIT_INVENTORY'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 124
        Name = '@DELETE_INVENTORY'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 125
        Name = '@INV_CHANGE_FACILITY'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 126
        Name = '@LTC'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end>
  end
  object RESTClient: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://www.rbrlink1.com/4017148'
    ContentType = 'ctAPPLICATION_JSON'
    Params = <>
    RedirectsWithGET = [Post301, Post302, Post303, Post307, Post308, Put303, Delete303]
    SynchronizedEvents = False
    Left = 1696
    Top = 984
  end
  object RESTRequest: TRESTRequest
    Client = RESTClient
    Params = <>
    Response = RESTResponse
    SynchronizedEvents = False
    Left = 1793
    Top = 984
  end
  object RESTResponse: TRESTResponse
    Left = 1896
    Top = 984
  end
  object CALC_TRIPLES_TAX: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'CALC_TRIPLES_TAX'
    Left = 960
    Top = 40
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@transactionnumber'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@TOTAL_BALANCE_PLUS_TAX'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInputOutput
      end>
  end
  object POS_INSERT_TRIPLES_PAYMENT: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'POS_INSERT_TRIPLES_PAYMENT'
    Left = 1984
    Top = 824
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@TRANSACTIONNUMBER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@AMOUNT'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@CLAIMNUMBER'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 5
        Name = '@ITEMCODE'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 14
      end
      item
        Position = 6
        Name = '@CUSTOMERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@UNIQUE_ID'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 8
        Name = '@OLD_TRANSACTION'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@BALANCE'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInputOutput
      end>
  end
  object CALC_PRODUCT_TAX: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'CALC_PRODUCT_TAX'
    Left = 2064
    Top = 952
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@QTY'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@TOTAL_TAX'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInputOutput
      end
      item
        Position = 5
        Name = '@BALANCE_MUNICIPAL_TAX'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInputOutput
      end
      item
        Position = 6
        Name = '@BALANCE_STATE_TAX'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInputOutput
      end
      item
        Position = 7
        Name = '@TOTAL_TAX_PLUS_PRICE'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInputOutput
      end
      item
        Position = 8
        Name = '@PRICE'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end>
  end
  object WC_BAGPICKUP_UPDATE: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'WC_BAGPICKUP_UPDATE'
    Left = 1608
    Top = 896
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@BAG_NUMBER'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 3
        Name = '@DBName'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 4
        Name = '@USER'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 5
        Name = '@INTERFACE'
        DataType = ftBoolean
        ParamType = ptInput
      end>
  end
  object SIGNATURE_LINK: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'SIGNATURE_LINK'
    Left = 2064
    Top = 32
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@SIGNATURE_LINK'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object PWRD_ISAUTHORIZED_CLASSIC: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'PWRD_ISAUTHORIZED_CLASSIC'
    Left = 2088
    Top = 688
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PASSWORD_COL'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 3
        Name = '@USERNAME'
        DataType = ftString
        ParamType = ptInputOutput
        Size = 35
      end
      item
        Position = 4
        Name = '@PWRDResultValue'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 5
        Name = '@INICIALES'
        DataType = ftFixedChar
        ParamType = ptInputOutput
        Size = 3
      end
      item
        Position = 6
        Name = '@USERNO'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 7
        Name = '@PHARMACIST'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 8
        Name = '@ANADIRRECETAS'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 9
        Name = '@HISTORIALRECETAS'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 10
        Name = '@BORRARPACIENTE'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 11
        Name = '@RX_PRESCRIPTION_NOTE'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 12
        Name = '@MAIN_ACCTS'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 13
        Name = '@ACTIVE'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 14
        Name = '@THIRDPARTY'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 15
        Name = '@OTC'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 16
        Name = '@RX_CAMBIARPRECIO_RX'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 17
        Name = '@BORRARRECETAS'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 18
        Name = '@BORRARRECETAS_CASH'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 19
        Name = '@RX_CHANGE_QTY'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 20
        Name = '@BORRAR_CANTIDA_RX'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 21
        Name = '@EDITAR_NOMBRE'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 22
        Name = '@MERGE_PAT_DOC'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 23
        Name = '@BORRAR_FIRMA'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 24
        Name = '@CAPTURAR_FIRMA'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 25
        Name = '@REVERSAL'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 26
        Name = '@LOG_DATA'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 27
        Name = '@BORRAR_PAT_PLAN'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 28
        Name = '@BORRAR_EPRESCRIBE'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 29
        Name = '@RX_CHANGE_REFILL'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 30
        Name = '@DOCTORES'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 31
        Name = '@RX_NO_EDIT_HISTORY'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 32
        Name = '@RX_EDIT_SIG'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 33
        Name = '@RX_ATIVE'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 34
        Name = '@OVERRIDE_GENERIC'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 35
        Name = '@WORKFLOW'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 36
        Name = '@RECALL_LOCKED_RX'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 37
        Name = '@RX_RECALL_EPRESRIBE_HIST'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 38
        Name = '@INVENTARIORX'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 39
        Name = '@BORRARINVENTARIO'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 40
        Name = '@QUICKENTRY'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 41
        Name = '@RX_UPDATE_INV_BROWSE'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 42
        Name = '@MERGE_INV_QTY'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 43
        Name = '@REPORTES'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 44
        Name = '@CAMBIARPASSWORD'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 45
        Name = '@FACTURAS_WESCOM'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 46
        Name = '@BACKUP_PERMIT'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 47
        Name = '@TIME_CARD'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 48
        Name = '@SETUP'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 49
        Name = '@RX_CONTROLLED_ANOTATE'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 50
        Name = '@RX_CONTROLLED_DELETE'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 50
        Name = '@CONTROLLED_SUBSTANCE'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 51
        Name = '@APPRISS'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 52
        Name = '@RX_COTROLLED_LOG'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 53
        Name = '@DUR'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 54
        Name = '@PEDIDOSMERCANCIA'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 55
        Name = '@PHARMACY'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 56
        Name = '@MAIN_SETUP'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 57
        Name = '@MAIN_CUST'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 58
        Name = '@MAIN_INV'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 59
        Name = '@MAIN_DEPT'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 60
        Name = '@MAIN_SUPL'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 61
        Name = '@MAIN_TOTAL'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 62
        Name = '@POS_REFUND'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 63
        Name = '@POS_DELPROD'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 64
        Name = '@POS_CHGPRICE'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 65
        Name = '@POS_DELTRANS'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 66
        Name = '@POS_NCGH'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 67
        Name = '@POS_CANCEL'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 68
        Name = '@POS_DISCOUNT'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 69
        Name = '@POS_IVU'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 70
        Name = '@POS_PAYOUT'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 71
        Name = '@POS_OPNDRAWR'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 72
        Name = '@POS_REPRINT'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 73
        Name = '@POS_CREDIT'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 74
        Name = '@GUARDAR_TRANSACCIONES'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 75
        Name = '@RECALL_TRANS'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 76
        Name = '@POS_HOLD'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 77
        Name = '@VENTA_MANUAL'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 78
        Name = '@CAMBIAR_PRECIO_OTC_RX'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 79
        Name = '@POS_BUTTONS'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 80
        Name = '@REDIMIR_PATROCINIO'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 81
        Name = '@POS_ADD_BUTTONS'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 82
        Name = '@POS_TAB_CANCEL'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 83
        Name = '@POS_VER_TOTAL_CASH'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 84
        Name = '@POS_POST_SHOPPER'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 85
        Name = '@POS_REST_DELETEPRODUCT'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 86
        Name = '@POS_LIMITE_CAMBIO_PRECIO'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 87
        Name = '@CUST_IBAL'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 88
        Name = '@CUST_EDIT'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 89
        Name = '@CUST_DEL'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 90
        Name = '@TOT_DEL'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 91
        Name = '@TOT_EDIT'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 92
        Name = '@POS_CUADRE_ADMINISTRADOR'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 93
        Name = '@MAIN_RECV'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 94
        Name = '@EM_VERQTYORD'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 95
        Name = '@WC_LOAD'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 96
        Name = '@MAIN_TRANS'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 97
        Name = '@TOT_EDITOLD'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end
      item
        Position = 98
        Name = '@CAMBIARCOSTOYPRECIOVENTA'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end>
  end
  object INSERT_ESIGNATURE_AI: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'INSERT_ESIGNATURE_AI'
    Left = 2064
    Top = 96
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@ENCRIPPTED_SIGNATURE'
        DataType = ftMemo
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@SIGNATURE_DATE'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@SIGNATURE_USER'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 5
        Name = '@PICKEDUP_BY_RELATION'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@PICKEDUP_ID'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 7
        Name = '@NUMEROCLIENTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@SAVE_PAT_SIGNATURE'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@PICKEDUP_BY'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 45
      end
      item
        Position = 10
        Name = '@NORX'
        DataType = ftLargeint
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@OTCNUMBER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 12
        Name = '@INSTANCIA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 13
        Name = '@SIGNATURE_LINK2'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 14
        Name = '@SIGNATURE_LINK'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object INSERT_PICKUP: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'INSERT_PICKUP'
    Left = 2096
    Top = 176
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@NORX'
        DataType = ftLargeint
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@OTCNUMBER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@INSTANCIA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@FECHA'
        DataType = ftTimeStamp
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@ALL'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@REGISTER_ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@INSERTED'
        DataType = ftBoolean
        ParamType = ptInputOutput
      end>
  end
  object qCUSTOMER_CLASSIFICATION: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from CUSTOMER_CLASSIFICATION')
    Left = 800
    Top = 1232
  end
  object dspCUSTOMER_CLASSIFICATION: TDataSetProvider
    DataSet = qCUSTOMER_CLASSIFICATION
    Options = [poFetchBlobsOnDemand, poAllowCommandText, poUseQuoteChar]
    Left = 872
    Top = 1232
  end
  object dsCUSTOMER_CLASSIFICATION: TDataSource
    DataSet = cdsCUSTOMER_CLASSIFICATION
    Left = 960
    Top = 1232
  end
  object cdsCUSTOMER_CLASSIFICATION: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCUSTOMER_CLASSIFICATION'
    AfterPost = cdsCUSTOMER_CLASSIFICATIONAfterDelete
    AfterDelete = cdsCUSTOMER_CLASSIFICATIONAfterDelete
    Left = 1056
    Top = 1232
    object cdsCUSTOMER_CLASSIFICATIONID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object cdsCUSTOMER_CLASSIFICATIONCLIENT_CASSIFICATION: TWideStringField
      FieldName = 'CLIENT_CASSIFICATION'
      FixedChar = True
    end
  end
  object IdConnectionIntercept1: TIdConnectionIntercept
    Left = 2114
    Top = 288
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 2114
    Top = 344
  end
  object IdSMTP1: TIdSMTP
    AuthType = satNone
    Host = 'smtpout.secureserver.net'
    Password = 'Sarerrac047'
    SASLMechanisms = <>
    Username = 'axelcarreras@soallco.com'
    Left = 2114
    Top = 400
  end
  object INSERT_PRINT_Q: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'INSERT_PRINT_Q'
    Left = 2112
    Top = 496
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@RX_ID'
        DataType = ftLargeint
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@COPIES'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@RX_OTC'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 5
        Name = '@LABEL_NAME'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 6
        Name = '@TYPIST'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 4
      end
      item
        Position = 7
        Name = '@PRINTTOSCREEN'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@PATIENT'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 45
      end
      item
        Position = 9
        Name = '@INDICATIONS'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 296
      end
      item
        Position = 10
        Name = '@PRINTER_ID'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 11
        Name = '@PRINT_TYPE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 12
        Name = '@TRANS_NO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 13
        Name = '@TRANS_TYPE'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 4
      end
      item
        Position = 14
        Name = '@FINAL_RECEIPT'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 15
        Name = '@EMAIL'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 80
      end
      item
        Position = 16
        Name = '@MOBILE_PHONE'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 17
        Name = '@CUSTOMER_NUMBER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 18
        Name = '@DELIVERY'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 19
        Name = '@QUOTE'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 20
        Name = '@PRINT_PAT_EDU'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 21
        Name = '@PRINTER_IP'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 15
      end>
  end
  object TCPClientPrintServer: TIdTCPClient
    ConnectTimeout = 0
    Port = 2022
    ReadTimeout = -1
    Left = 2120
    Top = 600
  end
  object qryBUTTONS_MOBILE_HEADER: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from  BUTTONS_MOBILE_HEADER order by category_id')
    Left = 1696
    Top = 1080
  end
  object dspBUTTONS_MOBILE_HEADER: TDataSetProvider
    DataSet = qryBUTTONS_MOBILE_HEADER
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 1784
    Top = 1088
  end
  object cdsBUTTONS_MOBILE_HEADER: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBUTTONS_MOBILE_HEADER'
    Left = 2064
    Top = 1088
    object cdsBUTTONS_MOBILE_HEADERcategory_id: TAutoIncField
      FieldName = 'category_id'
      ReadOnly = True
    end
    object cdsBUTTONS_MOBILE_HEADERdescription: TWideStringField
      FieldName = 'description'
      FixedChar = True
    end
    object cdsBUTTONS_MOBILE_HEADERbutton_category: TIntegerField
      FieldName = 'button_category'
    end
  end
  object dsBUTTONS_MOBILE_HEADER: TDataSource
    DataSet = cdsBUTTONS_MOBILE_HEADER
    Left = 1920
    Top = 1088
  end
  object qryBUTTONS_MOBILE_DETAIL: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from BUTTONS_MOBILE_DETAIL order by description')
    Left = 1688
    Top = 1160
  end
  object dspBUTTONS_MOBILE_DETAIL: TDataSetProvider
    DataSet = qryBUTTONS_MOBILE_DETAIL
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 1784
    Top = 1160
  end
  object dsBUTTONS_MOBILE_DETAIL: TDataSource
    DataSet = cdsBUTTONS_MOBILE_DETAIL
    Left = 1920
    Top = 1168
  end
  object cdsBUTTONS_MOBILE_DETAIL: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBUTTONS_MOBILE_DETAIL'
    Left = 2056
    Top = 1176
    object cdsBUTTONS_MOBILE_DETAILid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object cdsBUTTONS_MOBILE_DETAILdescription: TWideStringField
      FieldName = 'description'
      FixedChar = True
    end
    object cdsBUTTONS_MOBILE_DETAILproduct_no: TIntegerField
      FieldName = 'product_no'
    end
    object cdsBUTTONS_MOBILE_DETAILqty: TFloatField
      FieldName = 'qty'
    end
    object cdsBUTTONS_MOBILE_DETAILbtn_image: TBlobField
      FieldName = 'btn_image'
    end
    object cdsBUTTONS_MOBILE_DETAILmodifier: TBooleanField
      FieldName = 'modifier'
    end
    object cdsBUTTONS_MOBILE_DETAILcategory_id: TIntegerField
      FieldName = 'category_id'
    end
    object cdsBUTTONS_MOBILE_DETAILrow: TIntegerField
      FieldName = 'row'
    end
    object cdsBUTTONS_MOBILE_DETAILcol: TIntegerField
      FieldName = 'col'
    end
    object cdsBUTTONS_MOBILE_DETAILtab_id: TIntegerField
      FieldName = 'tab_id'
    end
    object cdsBUTTONS_MOBILE_DETAILBalance: TFloatField
      FieldKind = fkLookup
      FieldName = 'Balance'
      LookupDataSet = cdsTabsHeader
      LookupKeyFields = 'ID'
      LookupResultField = 'GROUP_BALANCE'
      KeyFields = 'tab_id'
      Lookup = True
    end
    object cdsBUTTONS_MOBILE_DETAILadd_on: TWideStringField
      FieldName = 'add_on'
      FixedChar = True
    end
    object cdsBUTTONS_MOBILE_DETAILrecipe: TBooleanField
      FieldName = 'recipe'
    end
  end
  object ADD_EDIT_BUTTONS_MOBILE_HEADER: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'ADD_EDIT_BUTTONS_MOBILE_HEADER'
    Left = 1688
    Top = 1264
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@description'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 3
        Name = '@button_category'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@category_id'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object POS_INSERT_EVERTEC_TRANS: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'POS_INSERT_EVERTEC_TRANS'
    Left = 2216
    Top = 32
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@TRANS_NO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@RESPONSE'
        DataType = ftMemo
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@ID'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object cdsEvertec: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEvertec'
    AfterPost = cdsCUSTOMER_CLASSIFICATIONAfterDelete
    AfterDelete = cdsCUSTOMER_CLASSIFICATIONAfterDelete
    Left = 1056
    Top = 1304
    object cdsEvertecID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object cdsEvertecTRANSACTIONNUMBER: TIntegerField
      FieldName = 'TRANSACTIONNUMBER'
    end
    object cdsEvertecRESPONSE: TMemoField
      FieldName = 'RESPONSE'
      BlobType = ftMemo
    end
    object cdsEvertecDATE_TIME: TSQLTimeStampField
      FieldName = 'DATE_TIME'
    end
  end
  object dsEvertec: TDataSource
    DataSet = cdsEvertec
    Left = 960
    Top = 1304
  end
  object dspEvertec: TDataSetProvider
    DataSet = qEvertec
    Options = [poFetchBlobsOnDemand, poAllowCommandText, poUseQuoteChar]
    Left = 872
    Top = 1304
  end
  object qEvertec: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from evertec')
    Left = 800
    Top = 1304
  end
  object NEXT_ID: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'NEXT_ID'
    Left = 1296
    Top = 920
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@OPTION'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Position = 3
        Name = '@ID'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object CALC_SPLIT_PAYMENT_TAX: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'CALC_SPLIT_PAYMENT_TAX'
    Left = 2192
    Top = 128
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@TOTALAMOUNT'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@SPLIT_AMOUNT'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@STATE_TAX'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInputOutput
      end
      item
        Position = 5
        Name = '@MUNICIPAL_TAX'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInputOutput
      end
      item
        Position = 6
        Name = '@REDUCED_TAX'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInputOutput
      end
      item
        Position = 7
        Name = '@PROCESS_FOOD_TAX'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInputOutput
      end>
  end
  object RESTClient2: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 
      'https://axelhomeoffice.dyndns.biz:8081/wescom/pharmacies_isapi.d' +
      'll/rx?Option=al ar carmen'
    Params = <>
    SynchronizedEvents = False
    Left = 1736
    Top = 912
  end
  object RESTRequest2: TRESTRequest
    Client = RESTClient2
    Params = <>
    Response = RESTResponse2
    SynchronizedEvents = False
    Left = 1808
    Top = 912
  end
  object RESTResponse2: TRESTResponse
    Left = 1888
    Top = 912
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://192.168.4.217:8081/pharmacies'
    ContentType = 'application/x-www-form-urlencoded'
    Params = <>
    SynchronizedEvents = False
    Left = 1456
    Top = 1512
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 1568
    Top = 1512
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'text/html'
    Left = 1672
    Top = 1512
  end
  object INSERTPOS: TFDStoredProc
    Connection = FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'INSERTPOS'
    Left = 2216
    Top = 208
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@QTY'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@OTC_NUMBER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@TRANS_NO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@REGISTER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@bag_number'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@utility'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@sssproduct'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@note'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 12
        Name = '@PATROCINIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 13
        Name = '@Current_Identity'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 14
        Name = '@percentage_discount'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end>
  end
  object INSERT_PRODUCT_SIGNATURE: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'INSERT_PRODUCT_SIGNATURE'
    Left = 2224
    Top = 312
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@IMAGE_SIGNATURE'
        DataType = ftBlob
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@SIGNATURE_DATE'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@SIGNATURE_USER'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 5
        Name = '@PICKEDUP_ID'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 6
        Name = '@PICKEDUP_BY'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 45
      end
      item
        Position = 7
        Name = '@TRANSACTIONNUMBER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@PICKEDUP_ADDRESS'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 80
      end
      item
        Position = 9
        Name = '@PICKEDUP_ID_TYPE'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 15
      end>
  end
  object qProductSignature: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM PSEUDO_SALES_LOG')
    Left = 224
    Top = 1136
  end
  object dspProductSignature: TDataSetProvider
    DataSet = qProductSignature
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 304
    Top = 1136
  end
  object dsProductSignature: TDataSource
    DataSet = cdsProductSignature
    Left = 384
    Top = 1136
  end
  object cdsProductSignature: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProductSignature'
    AfterPost = cdsProductImageAfterDelete
    AfterDelete = cdsProductImageAfterDelete
    Left = 456
    Top = 1136
    object cdsProductSignatureENCRYPTED_SIGNATURE: TMemoField
      FieldName = 'ENCRYPTED_SIGNATURE'
      BlobType = ftMemo
    end
    object cdsProductSignatureSIGNATURE_DATE: TDateField
      FieldName = 'SIGNATURE_DATE'
    end
    object cdsProductSignatureSIGNATURE_USER: TWideStringField
      FieldName = 'SIGNATURE_USER'
      FixedChar = True
      Size = 3
    end
    object cdsProductSignatureTRANSACTIONNUMBER: TIntegerField
      FieldName = 'TRANSACTIONNUMBER'
      Required = True
    end
    object cdsProductSignaturePICKEDUP_BY: TWideStringField
      FieldName = 'PICKEDUP_BY'
      FixedChar = True
      Size = 45
    end
    object cdsProductSignaturePICKEDUP_ID: TWideStringField
      FieldName = 'PICKEDUP_ID'
      FixedChar = True
    end
    object cdsProductSignaturePRODDESCRIPTION: TStringField
      FieldName = 'PRODDESCRIPTION'
      FixedChar = True
      Size = 30
    end
    object cdsProductSignatureQTY: TFloatField
      FieldName = 'QTY'
    end
    object cdsProductSignatureUPC: TStringField
      FieldName = 'UPC'
      FixedChar = True
      Size = 14
    end
    object cdsProductSignaturepseudo: TBooleanField
      FieldName = 'pseudo'
    end
    object cdsProductSignaturepep_spray: TBooleanField
      FieldName = 'pep_spray'
    end
    object cdsProductSignatureIMAGE_SIGNATURE: TBlobField
      FieldName = 'IMAGE_SIGNATURE'
    end
    object cdsProductSignaturePICKEDUP_ADDRESS: TMemoField
      FieldName = 'PICKEDUP_ADDRESS'
      BlobType = ftMemo
    end
    object cdsProductSignaturePICKEDUP_ID_TYPE: TWideStringField
      FieldName = 'PICKEDUP_ID_TYPE'
      FixedChar = True
      Size = 30
    end
  end
  object FDConnection2: TFDConnection
    Params.Strings = (
      'Server=192.168.4.217,1433'
      'User_Name=dbo'
      'Password=agabriel'
      'ApplicationName=Enterprise/Architect/Ultimate'
      'Workstation=SERVER'
      'MARS=yes'
      'Database=familiar'
      'DriverID=MSSQL')
    LoginPrompt = False
    Transaction = FDTransaction2
    Left = 1136
    Top = 472
  end
  object FDTransaction2: TFDTransaction
    Connection = FDConnection3
    Left = 232
    Top = 80
  end
  object CDSVentasDpt: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVentasDpt'
    Left = 448
    Top = 1240
    object CDSVentasDptProdDepartment: TStringField
      FieldName = 'ProdDepartment'
      Origin = 'ProdDepartment'
      FixedChar = True
    end
    object CDSVentasDptPrecio: TFMTBCDField
      FieldName = 'Precio'
      Origin = 'Precio'
      ReadOnly = True
      currency = True
      MaxValue = '0'
      MinValue = '0'
      Precision = 15
      Size = 2
    end
    object CDSVentasDptTCosto: TFloatField
      FieldName = 'TCosto'
      Origin = 'TCosto'
      ReadOnly = True
      currency = True
    end
    object CDSVentasDptGanancia: TFloatField
      FieldName = 'Ganancia'
      Origin = 'Ganancia'
      ReadOnly = True
      currency = True
    end
  end
  object dsVentasDept: TDataSource
    DataSet = CDSVentasDpt
    Left = 368
    Top = 1240
  end
  object dspVentasDpt: TDataSetProvider
    DataSet = QVentasDeptFD
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 296
    Top = 1240
  end
  object QVentasDeptFD: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'Select ProdDepartment, Sum(Total) as Precio, Sum(Costo * Qty) as' +
        ' TCosto, Sum(Total) - Sum(Costo * Qty) as Ganancia from Transact' +
        'ionDetail group by  ProdDepartment ')
    Left = 208
    Top = 1240
  end
  object QtransPorHora: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'Select datepart(hh,TRANSACTIONTIME) as hora, COUNT(*) as TotalTr' +
        'ans, Sum(total) as Total from'
      'TRANSACTIONHEADER'
      'group by datepart(hh,TRANSACTIONTIME)'
      'order by datepart(hh,TRANSACTIONTIME)')
    Left = 203
    Top = 1306
  end
  object dspTransPorHora: TDataSetProvider
    DataSet = QtransPorHora
    Left = 296
    Top = 1304
  end
  object dsTransPorHora: TDataSource
    DataSet = CDStransPorHora
    Left = 400
    Top = 1304
  end
  object CDStransPorHora: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTransPorHora'
    Left = 496
    Top = 1304
  end
  object qTotalVentPorEmp: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT USERNAME as Salesman, SUM(subtotal) as Total'
      'FROM TOTAL_COMISIONES where SALESMAN is not null'
      'group by USERNAME order by USERNAME;')
    Left = 179
    Top = 1386
  end
  object dspTotalVentPorEmp: TDataSetProvider
    DataSet = qTotalVentPorEmp
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 296
    Top = 1384
  end
  object dsTotalVentPorEmp: TDataSource
    DataSet = cdsTotalVentPorEmp
    Left = 400
    Top = 1384
  end
  object cdsTotalVentPorEmp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTotalVentPorEmp'
    Left = 512
    Top = 1384
    object cdsTotalVentPorEmpSalesman: TStringField
      FieldName = 'Salesman'
      Required = True
      Size = 35
    end
    object cdsTotalVentPorEmpTotal: TFMTBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 38
      Size = 2
    end
  end
  object FDConnection3: TFDConnection
    Params.Strings = (
      'Server=192.168.4.217,1433'
      'User_Name=dbo'
      'Password=agabriel'
      'ApplicationName=Enterprise/Architect/Ultimate'
      'Workstation=SERVER'
      'MARS=yes'
      'Database=InventoryIQ'
      'DriverID=MSSQL')
    LoginPrompt = False
    Transaction = FDTransaction2
    Left = 1136
    Top = 528
  end
  object CDSPacientes: TClientDataSet
    Aggregates = <>
    PacketRecords = 20
    Params = <>
    ProviderName = 'DSPPacientes'
    OnCalcFields = CDSPacientesCalcFields
    Left = 480
    Top = 1473
    object CDSPacientesNombreCompleto: TStringField
      FieldKind = fkCalculated
      FieldName = 'NombreCompleto'
      Size = 45
      Calculated = True
    end
    object CDSPacientesFullAddress: TStringField
      FieldKind = fkCalculated
      FieldName = 'FullAddress'
      Size = 75
      Calculated = True
    end
    object CDSPacientesGender: TStringField
      FieldKind = fkCalculated
      FieldName = 'Gender'
      Size = 6
      Calculated = True
    end
    object CDSPacientesFECHANACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHANACIMIENTO'
      Origin = 'FECHANACIMIENTO'
    end
    object CDSPacientesSEXO: TIntegerField
      FieldName = 'SEXO'
      Origin = 'SEXO'
    end
    object CDSPacientesDIRECCION1: TStringField
      FieldName = 'DIRECCION1'
      Origin = 'DIRECCION1'
      FixedChar = True
      Size = 30
    end
    object CDSPacientesDIRECCION2: TWideStringField
      FieldName = 'DIRECCION2'
      FixedChar = True
      Size = 40
    end
    object CDSPacientesULTTRANS: TSQLTimeStampField
      FieldName = 'ULTTRANS'
      Origin = 'ULTTRANS'
    end
    object CDSPacientesINTERES: TStringField
      FieldName = 'INTERES'
      Origin = 'INTERES'
      FixedChar = True
      Size = 1
    end
    object CDSPacientesDIRECCIONFISICA: TStringField
      FieldName = 'DIRECCIONFISICA'
      Origin = 'DIRECCIONFISICA'
      FixedChar = True
      Size = 50
    end
    object CDSPacientesTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Origin = 'TELEFONO'
      EditMask = '!\(999\)000-0000;1;_'
      FixedChar = True
      Size = 13
    end
    object CDSPacientesFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      EditMask = '!\(999\)000-0000;1;_'
      FixedChar = True
      Size = 13
    end
    object CDSPacientesCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      EditMask = '!\(999\)000-0000;1;_'
      FixedChar = True
      Size = 13
    end
    object CDSPacientesESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object CDSPacientesSOCIO: TStringField
      FieldName = 'SOCIO'
      Origin = 'SOCIO'
      Size = 12
    end
    object CDSPacientesORIENTACION: TStringField
      FieldName = 'ORIENTACION'
      Origin = 'ORIENTACION'
      FixedChar = True
      Size = 5
    end
    object CDSPacientesIDENTIFICACION: TStringField
      FieldName = 'IDENTIFICACION'
      Origin = 'IDENTIFICACION'
      FixedChar = True
    end
    object CDSPacientesSMOKER: TStringField
      FieldName = 'SMOKER'
      Origin = 'SMOKER'
      FixedChar = True
      Size = 1
    end
    object CDSPacientesLOCATION: TStringField
      FieldName = 'LOCATION'
      Origin = 'LOCATION'
      FixedChar = True
      Size = 2
    end
    object CDSPacientesEMPLOYER_ID: TStringField
      FieldName = 'EMPLOYER_ID'
      Origin = 'EMPLOYER_ID'
      FixedChar = True
      Size = 15
    end
    object CDSPacientesPATIENT_ID_QUAL: TStringField
      FieldName = 'PATIENT_ID_QUAL'
      Origin = 'PATIENT_ID_QUAL'
      FixedChar = True
      Size = 2
    end
    object CDSPacientesPREGNANCY_IDICATOR: TStringField
      FieldName = 'PREGNANCY_IDICATOR'
      Origin = 'PREGNANCY_IDICATOR'
      FixedChar = True
      Size = 1
    end
    object CDSPacientesFECHA_HIPPA: TSQLTimeStampField
      FieldName = 'FECHA_HIPPA'
      Origin = 'FECHA_HIPPA'
    end
    object CDSPacientesINFOADICIONAL: TStringField
      FieldName = 'INFOADICIONAL'
      Origin = 'INFOADICIONAL'
      Size = 100
    end
    object CDSPacientesCONSULTA: TStringField
      FieldName = 'CONSULTA'
      Origin = 'CONSULTA'
      Size = 100
    end
    object CDSPacientesCIUDAD: TStringField
      FieldName = 'CIUDAD'
      Origin = 'CIUDAD'
      FixedChar = True
    end
    object CDSPacientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      FixedChar = True
      Size = 12
    end
    object CDSPacientesAPELLIDOPATERNO: TStringField
      FieldName = 'APELLIDOPATERNO'
      Origin = 'APELLIDOPATERNO'
      FixedChar = True
      Size = 15
    end
    object CDSPacientesAPELLIDOMATERNO: TStringField
      FieldName = 'APELLIDOMATERNO'
      Origin = 'APELLIDOMATERNO'
      FixedChar = True
      Size = 15
    end
    object CDSPacientesMAILING_ADDRESS1: TStringField
      FieldName = 'MAILING_ADDRESS1'
      Origin = 'MAILING_ADDRESS1'
      Size = 30
    end
    object CDSPacientesMAILING_ADDRESS2: TStringField
      FieldName = 'MAILING_ADDRESS2'
      Origin = 'MAILING_ADDRESS2'
      Size = 30
    end
    object CDSPacientesMAILING_CITY: TStringField
      FieldName = 'MAILING_CITY'
      Origin = 'MAILING_CITY'
      Size = 15
    end
    object CDSPacientesMAILING_STATE: TStringField
      FieldName = 'MAILING_STATE'
      Origin = 'MAILING_STATE'
      Size = 2
    end
    object CDSPacientesMAILING_ZIPCODE: TStringField
      FieldName = 'MAILING_ZIPCODE'
      Origin = 'MAILING_ZIPCODE'
      Size = 12
    end
    object CDSPacientesPATIENT_RESIDENCE: TWideStringField
      DisplayWidth = 2
      FieldName = 'PATIENT_RESIDENCE'
      Origin = 'PATIENT_RESIDENCE'
      FixedChar = True
      Size = 2
    end
    object CDSPacientesCARDHOLDERID: TWideStringField
      FieldName = 'CARDHOLDERID'
      Origin = 'CARDHOLDERID'
      FixedChar = True
    end
    object CDSPacientesCODIGOPOSTAL: TWideStringField
      FieldName = 'CODIGOPOSTAL'
      Origin = 'CODIGOPOSTAL'
      FixedChar = True
      Size = 15
    end
    object CDSPacientesEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      FixedChar = True
      Size = 80
    end
    object CDSPacientesPLACE_OF_SERVICE: TWideStringField
      FieldName = 'PLACE_OF_SERVICE'
      Origin = 'PLACE_OF_SERVICE'
      FixedChar = True
      Size = 2
    end
    object CDSPacientesSIGNATURE: TMemoField
      FieldName = 'SIGNATURE'
      Origin = 'SIGNATURE'
      BlobType = ftMemo
    end
    object CDSPacientesOUT_DIAL_PERMISSION: TWideStringField
      FieldName = 'OUT_DIAL_PERMISSION'
      Origin = 'OUT_DIAL_PERMISSION'
      FixedChar = True
      Size = 1
    end
    object CDSPacientesNOTIFICATION_MODE_PHONE: TSmallintField
      FieldName = 'NOTIFICATION_MODE_PHONE'
      Origin = 'NOTIFICATION_MODE_PHONE'
    end
    object CDSPacientesNOTIFICATION_MODE_CEL: TSmallintField
      FieldName = 'NOTIFICATION_MODE_CEL'
      Origin = 'NOTIFICATION_MODE_CEL'
    end
    object CDSPacientesNOTIFICATION_MODE_SMS: TSmallintField
      FieldName = 'NOTIFICATION_MODE_SMS'
      Origin = 'NOTIFICATION_MODE_SMS'
    end
    object CDSPacientesNOTIFICATION_MODE_EMAIL: TSmallintField
      FieldName = 'NOTIFICATION_MODE_EMAIL'
      Origin = 'NOTIFICATION_MODE_EMAIL'
    end
    object CDSPacientesSSN: TWideStringField
      FieldName = 'SSN'
      Origin = 'SSN'
      FixedChar = True
      Size = 9
    end
    object CDSPacientesNIGHT_PHONE: TWideStringField
      FieldName = 'NIGHT_PHONE'
      Origin = 'NIGHT_PHONE'
      FixedChar = True
      Size = 13
    end
    object CDSPacientesWC_NO_NOTIFICATION: TBooleanField
      FieldName = 'WC_NO_NOTIFICATION'
      Origin = 'WC_NO_NOTIFICATION'
    end
    object CDSPacientesFACILITY_ID: TIntegerField
      FieldName = 'FACILITY_ID'
      Origin = 'FACILITY_ID'
      Required = True
    end
    object CDSPacientesNUMEROCLIENTE: TAutoIncField
      FieldName = 'NUMEROCLIENTE'
      Origin = 'NUMEROCLIENTE'
      ProviderFlags = [pfInWhere]
    end
    object CDSPacientesOVERRIDE_SYSTEM_DEFAULT_PRICE: TBooleanField
      FieldName = 'OVERRIDE_SYSTEM_DEFAULT_PRICE'
      Origin = 'OVERRIDE_SYSTEM_DEFAULT_PRICE'
    end
    object CDSPacientesDEUDA: TFMTBCDField
      FieldName = 'DEUDA'
      Origin = 'DEUDA'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSPacientesLAWAY: TFMTBCDField
      FieldName = 'LAWAY'
      Origin = 'LAWAY'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSPacientesAUSPICIO: TFMTBCDField
      FieldName = 'AUSPICIO'
      Origin = 'AUSPICIO'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSPacientesACCIONES: TFMTBCDField
      FieldName = 'ACCIONES'
      Origin = 'ACCIONES'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSPacientesLIMITECREDITO: TFMTBCDField
      FieldName = 'LIMITECREDITO'
      Origin = 'LIMITECREDITO'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSPacientesALLERGY: TBooleanField
      FieldName = 'ALLERGY'
      Required = True
    end
    object CDSPacientesDECEASED: TBooleanField
      FieldName = 'DECEASED'
      Required = True
    end
    object CDSPacientesDEUDA_WEB: TFMTBCDField
      FieldName = 'DEUDA_WEB'
      Precision = 18
      Size = 2
    end
    object CDSPacientesDEUDA_EXTENDIDA: TStringField
      FieldName = 'DEUDA_EXTENDIDA'
      Size = 1
    end
    object CDSPacientesNOTIFICATION_MODE: TWideStringField
      FieldName = 'NOTIFICATION_MODE'
      FixedChar = True
      Size = 1
    end
    object CDSPacientesPRIMARY_TELEPHONE: TWideStringField
      FieldName = 'PRIMARY_TELEPHONE'
      FixedChar = True
      Size = 7
    end
    object CDSPacientesFACILITY_ADMISSION_DATE: TDateField
      FieldName = 'FACILITY_ADMISSION_DATE'
    end
    object CDSPacientesFACILITY_ROOM: TWideStringField
      FieldName = 'FACILITY_ROOM'
      FixedChar = True
      Size = 10
    end
    object CDSPacientesFACILITY_PRESCRIBER: TWideStringField
      FieldName = 'FACILITY_PRESCRIBER'
      FixedChar = True
      Size = 50
    end
    object CDSPacientesPRICE_TABLE_ID: TIntegerField
      FieldName = 'PRICE_TABLE_ID'
    end
    object CDSPacientesADHERENCE: TBooleanField
      FieldName = 'ADHERENCE'
    end
    object CDSPacientesMIDDLE_NAME: TStringField
      FieldName = 'MIDDLE_NAME'
      Size = 12
    end
    object CDSPacientesSIGNATURE_RX_LINK: TIntegerField
      FieldName = 'SIGNATURE_RX_LINK'
    end
    object CDSPacientesID_IMAGE: TIntegerField
      FieldName = 'ID_IMAGE'
    end
    object CDSPacientesRECORD_LOCKED: TBooleanField
      FieldName = 'RECORD_LOCKED'
    end
    object CDSPacientesINSTANCIA: TIntegerField
      FieldName = 'INSTANCIA'
    end
    object CDSPacientesANIMAL_NAME: TWideStringField
      FieldName = 'ANIMAL_NAME'
      FixedChar = True
      Size = 45
    end
    object CDSPacientesDELIVERY: TBooleanField
      FieldName = 'DELIVERY'
    end
    object CDSPacientesCLASIFICATION: TWideStringField
      FieldName = 'CLASIFICATION'
      FixedChar = True
    end
    object CDSPacientesAUTOMATIC_REFILL: TBooleanField
      FieldName = 'AUTOMATIC_REFILL'
    end
    object CDSPacientesFAMILY_LINK: TWideStringField
      FieldName = 'FAMILY_LINK'
      FixedChar = True
      Size = 36
    end
    object CDSPacientesLANGUAGE: TWideStringField
      FieldName = 'LANGUAGE'
      FixedChar = True
      Size = 12
    end
  end
  object DSPacientes: TDataSource
    DataSet = CDSPacientes
    Left = 360
    Top = 1473
  end
  object DSPPacientes: TDataSetProvider
    DataSet = qPacientes
    Options = [poFetchBlobsOnDemand, poFetchDetailsOnDemand, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 264
    Top = 1473
  end
  object qPacientes: TFDQuery
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereAll
    UpdateOptions.KeyFields = 'NUMEROCLIENTE'
    SQL.Strings = (
      'select * from pacientes order by ApellidoPaterno')
    Left = 160
    Top = 1472
  end
  object QRecHandheld: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT [ID],[TYPE],'#39#39' TYPENAME,[DeviceID],[USERNAME],'#39#39' USERDETA' +
        'IL,CONVERT(VARCHAR,DATE,101) as Date,[UPC],[QSource],[QTY],DISMI' +
        'SS,[REMOVE],[QDest],[Processed],[Reason],'#39#39' DESCRIPCION,'#39#39' VENDI' +
        'D  FROM [dbo].[HANDHELD] WHERE DeviceID='#39'99999'#39)
    Left = 712
    Top = 1400
  end
  object DSRecHandheld: TDataSource
    AutoEdit = False
    DataSet = CDSRecHandheld
    Left = 760
    Top = 1400
  end
  object DSPRecHandheld: TDataSetProvider
    DataSet = QRecHandheld
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 808
    Top = 1400
  end
  object CDSRecHandheld: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRecHandheld'
    Left = 856
    Top = 1400
  end
  object POS_GET_HANDHELDINFO: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'POS_GET_HANDHELDINFO'
    Left = 720
    Top = 1520
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@pType'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@pUPC'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Position = 4
        Name = '@pID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@pTypeProcess'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@pQtyInv'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@pDevices'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 8
        Name = '@pUsers'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 9
        Name = '@pStickers'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@pNUM'
        DataType = ftFMTBcd
        Precision = 18
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@pVENDID'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 12
        Name = '@pDATE'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
  end
  object DSPattributes: TDataSetProvider
    DataSet = Qattributes
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 808
    Top = 1456
  end
  object CDSattributes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPattributes'
    Left = 856
    Top = 1456
  end
  object DSattributes: TDataSource
    DataSet = CDSattributes
    Left = 760
    Top = 1456
  end
  object Qattributes: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT [CODIGOBARRA]'
      '      ,[COSTO]'
      '      ,[PRECIO]'
      '      ,[PRODUCTNO]'
      #9'  ,DEPARTAMENTO'
      '      ,[SUB_DEPARTAMENTO]'
      '      ,[DESCRIPCION]'
      'FROM [dbo].[INVENTARIOPISO]')
    Left = 712
    Top = 1456
  end
  object POS_UPDATE_DEPART_ATTRIB: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'POS_UPDATE_DEPART_ATTRIB'
    Left = 888
    Top = 1520
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@pOPC'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@pType'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 4
        Name = '@DEPARTAMENTO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 5
        Name = '@ALWDISC'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@ROUND'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@DepL'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Position = 8
        Name = '@DepS'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Position = 9
        Name = '@NLINE'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@EBT'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@Sigis'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 12
        Name = '@OTCCard'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 13
        Name = '@Pseudo'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 14
        Name = '@pseudoMgD'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 15
        Name = '@PseudoMgP'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 16
        Name = '@NonRefund'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 17
        Name = '@bogodate'
        DataType = ftTimeStamp
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 18
        Name = '@BOGODatetmp'
        DataType = ftTimeStamp
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 19
        Name = '@BOGOEndtmp'
        DataType = ftTimeStamp
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 20
        Name = '@BOGOOffertmp'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 21
        Name = '@BOGOEnd'
        DataType = ftTimeStamp
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 22
        Name = '@BOGOOffer'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 23
        Name = '@PepSpray'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 24
        Name = '@MaxPerTx'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 25
        Name = '@SkipPriceUpd'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 26
        Name = '@SkipPriceDistUpd'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 27
        Name = '@Taxable'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 28
        Name = '@txtgm'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 29
        Name = '@userini'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
  end
  object POS_GET_PROCESS832: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'POS_GET_PROCESS832INFO'
    Left = 696
    Top = 1648
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@pType'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@pUPC'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Position = 4
        Name = '@pID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@pTypeProcess'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@pQtyInv'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@pDevices'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 8
        Name = '@pUsers'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 9
        Name = '@pStickers'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@pNUM'
        DataType = ftFMTBcd
        Precision = 18
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@pVENDID'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 12
        Name = '@pDATE'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
  end
  object QProcess832: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT it1.[ID],[DtCreated],it1.[UPC],items.DESCRIPCION,items.ve' +
        'ndor_ide,items.[Size_It],it1.[Case_qty],it1.[Case_cost]'
      
        ' ,items.COSTO Unit_costP,items.PRECIO Lp1P,items.Gm1 Gm1P,it1.[U' +
        'nit_cost],it1.[LP1],it1.[Gm1],it1.[VEND_NUM]'
      
        ' ,[UpdateItem],[Process],[WHO_MOD],[DtProcessed],dp2.DESCRIPCION' +
        ' Department,items.inactive'
      
        ' ,it1.[Gm1]-items.Gm1 difGM,it1.[LP1]-items.PRECIO difPrice,DISM' +
        'ISS,REMOVE'
      ' FROM [dbo].[Items832spool] it1 '
      ' INNER join INVENTARIOPISO Items on It1.upc=items.CODIGOBARRA'
      
        ' left join DEPARTAMENTO dp2 on items.DEPARTAMENTO=dp2.DEPARTAMEN' +
        'TO '
      ' Where Process=99999 and DtProcessed is null ')
    Left = 688
    Top = 1584
  end
  object DSProcess832: TDataSource
    AutoEdit = False
    DataSet = CDSProcess832
    Left = 768
    Top = 1584
  end
  object DSPProcess832: TDataSetProvider
    DataSet = QProcess832
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 840
    Top = 1584
  end
  object CDSProcess832: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPProcess832'
    Left = 928
    Top = 1584
    object CDSProcess832ID: TFMTBCDField
      FieldName = 'ID'
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object CDSProcess832DtCreated: TSQLTimeStampField
      FieldName = 'DtCreated'
    end
    object CDSProcess832UPC: TStringField
      FieldName = 'UPC'
      Required = True
      Size = 15
    end
    object CDSProcess832DESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      FixedChar = True
      Size = 35
    end
    object CDSProcess832vendor_ide: TStringField
      FieldName = 'vendor_ide'
      Size = 10
    end
    object CDSProcess832Size_It: TStringField
      FieldName = 'Size_It'
    end
    object CDSProcess832Case_qty: TFMTBCDField
      FieldName = 'Case_qty'
      Required = True
      Precision = 18
      Size = 0
    end
    object CDSProcess832Case_cost: TFMTBCDField
      FieldName = 'Case_cost'
      Required = True
      Precision = 18
      Size = 2
    end
    object CDSProcess832Unit_costP: TFMTBCDField
      FieldName = 'Unit_costP'
      Precision = 18
      Size = 2
    end
    object CDSProcess832Lp1P: TFMTBCDField
      FieldName = 'Lp1P'
      Precision = 18
      Size = 2
    end
    object CDSProcess832Gm1P: TFMTBCDField
      FieldName = 'Gm1P'
      Precision = 18
      Size = 2
    end
    object CDSProcess832Unit_cost: TFMTBCDField
      FieldName = 'Unit_cost'
      Required = True
      Precision = 18
      Size = 2
    end
    object CDSProcess832LP1: TFMTBCDField
      FieldName = 'LP1'
      Required = True
      Precision = 18
      Size = 2
    end
    object CDSProcess832Gm1: TFMTBCDField
      FieldName = 'Gm1'
      Required = True
      Precision = 18
      Size = 2
    end
    object CDSProcess832VEND_NUM: TStringField
      FieldName = 'VEND_NUM'
    end
    object CDSProcess832UpdateItem: TBooleanField
      FieldName = 'UpdateItem'
      Required = True
    end
    object CDSProcess832Process: TIntegerField
      FieldName = 'Process'
      Required = True
    end
    object CDSProcess832WHO_MOD: TStringField
      FieldName = 'WHO_MOD'
      FixedChar = True
      Size = 5
    end
    object CDSProcess832DtProcessed: TSQLTimeStampField
      FieldName = 'DtProcessed'
    end
    object CDSProcess832Department: TStringField
      FieldName = 'Department'
      Size = 30
    end
    object CDSProcess832inactive: TBooleanField
      FieldName = 'inactive'
      Required = True
    end
    object CDSProcess832difGM: TFMTBCDField
      FieldName = 'difGM'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object CDSProcess832difPrice: TFMTBCDField
      FieldName = 'difPrice'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object CDSProcess832DISMISS: TBooleanField
      FieldName = 'DISMISS'
      Required = True
    end
    object CDSProcess832REMOVE: TBooleanField
      FieldName = 'REMOVE'
      Required = True
    end
  end
  object cdsPaymentCardLog: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPaymentCardLog'
    AfterPost = cdsCUSTOMER_CLASSIFICATIONAfterDelete
    AfterDelete = cdsCUSTOMER_CLASSIFICATIONAfterDelete
    Left = 1208
    Top = 1368
    object cdsPaymentCardLogID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object cdsPaymentCardLogtransNo: TIntegerField
      FieldName = 'transNo'
      Required = True
    end
    object cdsPaymentCardLogcardType: TWideStringField
      FieldName = 'cardType'
      FixedChar = True
      Size = 15
    end
    object cdsPaymentCardLoglastFour: TIntegerField
      FieldName = 'lastFour'
    end
    object cdsPaymentCardLogauthNo: TWideStringField
      FieldName = 'authNo'
      FixedChar = True
      Size = 30
    end
  end
  object dsPaymentCardLog: TDataSource
    DataSet = cdsPaymentCardLog
    Left = 1104
    Top = 1368
  end
  object dspPaymentCardLog: TDataSetProvider
    DataSet = qPaymentCardLog
    Options = [poFetchBlobsOnDemand, poAllowCommandText, poUseQuoteChar]
    Left = 1000
    Top = 1368
  end
  object qPaymentCardLog: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from payment_card_log')
    Left = 928
    Top = 1368
  end
  object cdsCounters: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCounters'
    AfterPost = cdsCountersAfterDelete
    AfterDelete = cdsCountersAfterDelete
    Left = 488
    Top = 1536
    object cdsCountersSTICKER: TLargeintField
      FieldName = 'STICKER'
      Required = True
    end
    object cdsCounterstitulo1: TStringField
      FieldName = 'titulo1'
      Size = 40
    end
    object cdsCounterstitulo2: TStringField
      FieldName = 'titulo2'
      Size = 40
    end
    object cdsCounterstitulo3: TStringField
      FieldName = 'titulo3'
      Size = 40
    end
    object cdsCounterstitulo4: TStringField
      FieldName = 'titulo4'
      Size = 40
    end
    object cdsCountersReceiptMessage: TStringField
      FieldName = 'ReceiptMessage'
      Size = 1600
    end
  end
  object dspCounters: TDataSetProvider
    DataSet = qCounters
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 368
    Top = 1536
  end
  object dsCounters: TDataSource
    DataSet = cdsCounters
    Left = 256
    Top = 1536
  end
  object qCounters: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from counters')
    Left = 160
    Top = 1536
  end
  object cdsTotalCobrado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTotalCobrado'
    Left = 480
    Top = 1608
    object cdsTotalCobradoTotalCobrado: TFMTBCDField
      FieldName = 'TotalCobrado'
      ReadOnly = True
      Precision = 38
      Size = 2
    end
  end
  object dspTotalCobrado: TDataSetProvider
    DataSet = qTotalCobrado
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 360
    Top = 1608
  end
  object dsTotalCobrado: TDataSource
    DataSet = cdsTotalCobrado
    Left = 248
    Top = 1608
  end
  object qTotalCobrado: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select Sum(Total) as TotalCobrado from TransactionDetail')
    Left = 152
    Top = 1608
  end
  object cdsTaxEstatalExcempto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTaxEstatalExcempto'
    Left = 480
    Top = 1664
    object cdsTaxEstatalExcemptoTaxEstatalExcempto: TFMTBCDField
      FieldName = 'TaxEstatalExcempto'
      ReadOnly = True
      Precision = 38
      Size = 2
    end
  end
  object dspTaxEstatalExcempto: TDataSetProvider
    DataSet = qTaxEstatalExempto
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 360
    Top = 1664
  end
  object dsTaxEstatalExcempto: TDataSource
    DataSet = cdsTaxEstatalExcempto
    Left = 248
    Top = 1664
  end
  object qTaxEstatalExempto: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select Sum(Total) as TaxEstatalExcempto from TransactionDetail')
    Left = 152
    Top = 1664
  end
  object cdsTaxMunExcempto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTaxMunExcempto'
    Left = 480
    Top = 1720
    object cdsTaxMunExcemptoTaxMunicipalExcempto: TFMTBCDField
      FieldName = 'TaxMunicipalExcempto'
      ReadOnly = True
      Precision = 38
      Size = 2
    end
  end
  object dspTaxMunExcempto: TDataSetProvider
    DataSet = qTaxMunExcempto
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 360
    Top = 1720
  end
  object dsTaxMunExcempto: TDataSource
    DataSet = cdsTaxMunExcempto
    Left = 248
    Top = 1720
  end
  object qTaxMunExcempto: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select Sum(Total) as TaxMunicipalExcempto from TransactionDetail')
    Left = 152
    Top = 1720
  end
  object cdsTarjFamilia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTarjFamilia'
    Left = 480
    Top = 1776
    object cdsTarjFamiliaTTarjetaFamilia: TFMTBCDField
      FieldName = 'TTarjetaFamilia'
      ReadOnly = True
      Precision = 38
      Size = 2
    end
  end
  object dspTarjFamilia: TDataSetProvider
    DataSet = qTarjFamilia
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 360
    Top = 1776
  end
  object dsTarjFamilia: TDataSource
    DataSet = cdsTarjFamilia
    Left = 248
    Top = 1776
  end
  object qTarjFamilia: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select Sum(Total) as TTarjetaFamilia from TransactionHeader')
    Left = 152
    Top = 1776
  end
  object cdsTaxServicioExcempto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTaxServicioExcempto'
    Left = 480
    Top = 1832
    object cdsTaxServicioExcemptoTaxServicioExcempto: TFMTBCDField
      FieldName = 'TaxServicioExcempto'
      ReadOnly = True
      Precision = 38
      Size = 2
    end
  end
  object dspTaxServicioExcempto: TDataSetProvider
    DataSet = qTaxServicioExempto
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 368
    Top = 1832
  end
  object dsTaxServicioExcempto: TDataSource
    DataSet = cdsTaxServicioExcempto
    Left = 248
    Top = 1832
  end
  object qTaxServicioExempto: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select Sum(Total) as TaxServicioExcempto from TransactionDetail')
    Left = 152
    Top = 1832
  end
  object cdsTaxServicio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTaxServicio'
    Left = 480
    Top = 1888
    object cdsTaxServicioTaxServicio: TFMTBCDField
      FieldName = 'TaxServicio'
      ReadOnly = True
      Precision = 38
      Size = 2
    end
  end
  object dspTaxServicio: TDataSetProvider
    DataSet = qTaxServicio
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 368
    Top = 1888
  end
  object dsTaxServicio: TDataSource
    DataSet = cdsTaxServicio
    Left = 248
    Top = 1888
  end
  object qTaxServicio: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select Sum(Total) as TaxServicio from TransactionDetail')
    Left = 152
    Top = 1888
  end
  object cdsSpinPOS: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'TRANSACTIONNUMBER'
        DataType = ftLargeint
      end
      item
        Name = 'RESPONSE'
        DataType = ftMemo
      end
      item
        Name = 'DATE_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'AMOUNT'
        DataType = ftFloat
      end
      item
        Name = 'REFERENCENUM'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'BatchNum'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'PaymentType'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TransactionType'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspSpinPOS'
    StoreDefs = True
    AfterPost = cdsCUSTOMER_CLASSIFICATIONAfterDelete
    AfterDelete = cdsCUSTOMER_CLASSIFICATIONAfterDelete
    Left = 1208
    Top = 1467
    object cdsSpinPOSID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object cdsSpinPOSRESPONSE: TMemoField
      FieldName = 'RESPONSE'
      BlobType = ftMemo
    end
    object cdsSpinPOSDATE_TIME: TSQLTimeStampField
      FieldName = 'DATE_TIME'
    end
    object cdsSpinPOSAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Required = True
    end
    object cdsSpinPOSBatchNum: TLargeintField
      FieldName = 'BatchNum'
      Required = True
    end
    object cdsSpinPOSTRANSACTIONNUMBER: TLargeintField
      FieldName = 'TRANSACTIONNUMBER'
    end
    object cdsSpinPOSREFERENCENUM: TLargeintField
      FieldName = 'REFERENCENUM'
      Required = True
    end
    object cdsSpinPOSPaymentType: TStringField
      FieldName = 'PaymentType'
    end
    object cdsSpinPOSTransactionType: TStringField
      FieldName = 'TransactionType'
      Size = 30
    end
  end
  object dsSpinPOS: TDataSource
    DataSet = cdsSpinPOS
    Left = 1112
    Top = 1467
  end
  object dspSpinPOS: TDataSetProvider
    DataSet = qSpinPOS
    Options = [poFetchBlobsOnDemand, poAllowCommandText, poUseQuoteChar]
    Left = 1024
    Top = 1467
  end
  object qSpinPOS: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from SpinPOS')
    Left = 952
    Top = 1467
  end
  object USP_POS_INSERT_SPINPOS_TRANS: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'USP_POS_INSERT_SPINPOS_TRANS'
    Left = 864
    Top = 1648
    ParamData = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Name = '@TRANS_NO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = '@RESPONSE'
        DataType = ftMemo
        ParamType = ptInput
      end
      item
        Name = '@AMOUNT'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = '@REFERENCENUM'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = '@BatchNum'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = '@PaymentType'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = '@TransactionType'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = '@ID'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
end
