object FrmLabelsBC: TFrmLabelsBC
  Left = 0
  Top = 0
  Caption = 'FrmLabelsBC'
  ClientHeight = 685
  ClientWidth = 925
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object frxReport1: TfrxReport
    Version = '2021.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42548.814561481500000000
    ReportOptions.LastChange = 42548.814561481500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeforePrint = frxReport1BeforePrint
    Left = 88
    Top = 48
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 50.800000000000000000
      PaperHeight = 19.100000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object Memo1: TfrxMemoView
        AllowVectorExport = True
        Left = 3.779530000000000000
        Top = 60.094515040000000000
        Width = 185.196970000000000000
        Height = 11.338590000000000000
        DataField = 'Suplidor'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."Suplidor"]')
        ParentFont = False
      end
      object BarCode1: TfrxBarCodeView
        AllowVectorExport = True
        Left = 3.779530000000000000
        Top = 26.456710000000000000
        Width = 80.000000000000000000
        Height = 34.015770000000000000
        BarType = bcCode128
        DataField = 'CODIGOBARRA'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Frame.Typ = []
        Rotation = 0
        TestLine = False
        Text = '12345678'
        WideBarRatio = 2.000000000000000000
        Zoom = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ColorBar = clBlack
      end
      object frxDBDataset1PRECIO: TfrxMemoView
        AllowVectorExport = True
        Left = 83.149660000000000000
        Top = 34.015770000000000000
        Width = 102.047310000000000000
        Height = 26.456710000000000000
        DataField = 'PRECIO'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."PRECIO"]')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        AllowVectorExport = True
        Left = 3.779530000000000000
        Top = 7.559057560000000000
        Width = 185.196850390000000000
        Height = 15.118120000000000000
        DataField = 'DESCRIPCION'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."DESCRIPCION"]')
        ParentFont = False
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ULTIMAVENTA=ULTIMAVENTA'
      'Suplidor=Suplidor'
      'SUBDEPT=SUBDEPT'
      'TIPO=TIPO'
      'FECHA_EXPIRACION=FECHA_EXPIRACION'
      'CODIGO=CODIGO'
      'COSTO=COSTO'
      'RBP=RBP'
      'ESPECIAL=ESPECIAL'
      'DEPARTAMENTO=DEPARTAMENTO'
      'LOTE=LOTE'
      'PRECIO=PRECIO'
      'COMESPECIAL=COMESPECIAL'
      'TERMINAESPECIAL=TERMINAESPECIAL'
      'PORCIENTODESCUENTO=PORCIENTODESCUENTO'
      'ULTIMOCAMBIO=ULTIMOCAMBIO'
      'CMAXINVENTARIO=CMAXINVENTARIO'
      'CMININVENTARIO=CMININVENTARIO'
      'CODIGOBARRA=CODIGOBARRA'
      'FOODITEM=FOODITEM'
      'NONEBC=NONEBC'
      'NUMEROSUPLIDOR=NUMEROSUPLIDOR'
      'PRODUCTNO=PRODUCTNO'
      'SUB_DEPARTAMENTO=SUB_DEPARTAMENTO'
      'DESCRIPCION=DESCRIPCION'
      'CASA_FARMACEUTICA=CASA_FARMACEUTICA'
      'ROUTEOFADMINISTRATION=ROUTEOFADMINISTRATION'
      'CONTROLADO=CONTROLADO'
      'STRENGTH=STRENGTH'
      'INFOADICIONAL=INFOADICIONAL'
      'METRICSIZE=METRICSIZE'
      'CAUTION1=CAUTION1'
      'CAUTION2=CAUTION2'
      'CAUTION3=CAUTION3'
      'GENERICNAME=GENERICNAME'
      'TXR=TXR'
      'BRAND=BRAND'
      'GROUP_PRODUCTNO=GROUP_PRODUCTNO'
      'RECETARIO=RECETARIO'
      'GROUP_QTY=GROUP_QTY'
      'PRECIO_CAJA=PRECIO_CAJA'
      'QTY_CAJA=QTY_CAJA'
      'DESCUENTO=DESCUENTO'
      'IMAGE_CODE=IMAGE_CODE'
      'PACKAGESIZE=PACKAGESIZE'
      'TXR_EXTENSION=TXR_EXTENSION'
      'STATUS=STATUS'
      'TAXABLE=TAXABLE'
      'TAXABLE_ESTATAL=TAXABLE_ESTATAL'
      'PO=PO'
      'ISBN=ISBN'
      'SHOWINDIVIDUAL=SHOWINDIVIDUAL'
      'PRECIO_DACO=PRECIO_DACO'
      'NDC=NDC'
      'MOVIMIENTO=MOVIMIENTO'
      'DESCDEPT=DESCDEPT'
      'PATROCINIO=PATROCINIO'
      'COBRAR_TAX=COBRAR_TAX'
      'PRECIOVENTA2=PRECIOVENTA2'
      'ESCANEAR_BARCODEALTERNO=ESCANEAR_BARCODEALTERNO'
      'EDITAR_PRECIO=EDITAR_PRECIO'
      'SALES_PROMOTION_ID=SALES_PROMOTION_ID'
      'SALES_PROMO_DEFINE=SALES_PROMO_DEFINE'
      'PRECIO2=PRECIO2'
      'QTYINVENTARIO=QTYINVENTARIO'
      'KITCHEN=KITCHEN'
      'HAS_MODIFIER=HAS_MODIFIER'
      'MODIFIER_QTY=MODIFIER_QTY'
      'NOTE=NOTE'
      'RECIPE=RECIPE'
      'RECIPE_PRICE=RECIPE_PRICE')
    DataSource = DMMidas.DSInventarioPiso
    BCDToCurrency = False
    Left = 216
    Top = 64
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 88
    Top = 144
  end
  object frxReport1x2: TfrxReport
    Version = '2021.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42548.814561481500000000
    ReportOptions.LastChange = 42548.814561481500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeforePrint = frxReport1x2BeforePrint
    Left = 88
    Top = 248
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 50.800000000000000000
      PaperHeight = 25.400000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object Memo1: TfrxMemoView
        AllowVectorExport = True
        Left = 3.779530000000000000
        Top = 78.551225040000000000
        Width = 109.606370000000000000
        Height = 11.338590000000000000
        DataField = 'Suplidor'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."Suplidor"]')
        ParentFont = False
      end
      object BarCode1: TfrxBarCodeView
        Align = baCenter
        AllowVectorExport = True
        Left = 34.500062000000000000
        Top = 26.456710000000000000
        Width = 124.000000000000000000
        Height = 34.015770000000000000
        BarType = bcCode128
        DataField = 'CODIGOBARRA'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Frame.Typ = []
        Rotation = 0
        TestLine = False
        Text = '1234567898765'
        WideBarRatio = 2.000000000000000000
        Zoom = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ColorBar = clBlack
      end
      object frxDBDataset1PRECIO: TfrxMemoView
        AllowVectorExport = True
        Left = 54.692950000000010000
        Top = 61.913420000000000000
        Width = 128.504020000000000000
        Height = 22.677180000000000000
        DataField = 'PRECIO'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."PRECIO"]')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Align = baCenter
        AllowVectorExport = True
        Left = 5.291390820000000000
        Top = 3.779527560000000000
        Width = 181.417342360000000000
        Height = 15.118120000000000000
        DataField = 'DESCRIPCION'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."DESCRIPCION"]')
        ParentFont = False
      end
    end
  end
  object sqlVerTransaccionesFD: TFDQuery
    Connection = DMMidas.FDConnection1
    SQL.Strings = (
      'Select * from VerTransacciones')
    Left = 112
    Top = 384
  end
  object dspVerTransacciones: TDataSetProvider
    DataSet = sqlVerTransaccionesFD
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 208
    Top = 384
  end
  object DSTrans: TDataSource
    DataSet = CDSTransactionDetails
    Left = 296
    Top = 384
  end
  object CDSTransactionDetails: TClientDataSet
    Aggregates = <>
    PacketRecords = 1000
    Params = <>
    ProviderName = 'dspVerTransacciones'
    Left = 376
    Top = 384
    object CDSTransactionDetailsID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object CDSTransactionDetailsTRANSACTIONNUMBER: TIntegerField
      FieldName = 'TRANSACTIONNUMBER'
      Origin = 'TRANSACTIONNUMBER'
      Required = True
    end
    object CDSTransactionDetailsTRANSACTIONDATE: TSQLTimeStampField
      FieldName = 'TRANSACTIONDATE'
      Origin = 'TRANSACTIONDATE'
      Required = True
    end
    object CDSTransactionDetailsNUMBERITEMS: TIntegerField
      FieldName = 'NUMBERITEMS'
      Origin = 'NUMBERITEMS'
      Required = True
    end
    object CDSTransactionDetailsPAYMENTTYPE1: TStringField
      FieldName = 'PAYMENTTYPE1'
      Origin = 'PAYMENTTYPE1'
      FixedChar = True
      Size = 4
    end
    object CDSTransactionDetailsCREDITCARD1: TStringField
      FieldName = 'CREDITCARD1'
      Origin = 'CREDITCARD1'
      Size = 50
    end
    object CDSTransactionDetailsOPENED: TStringField
      FieldName = 'OPENED'
      Origin = 'OPENED'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSTransactionDetailsCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
      Origin = 'CUSTOMERID'
    end
    object CDSTransactionDetailsTRANSACTIONTIME: TSQLTimeStampField
      FieldName = 'TRANSACTIONTIME'
      Origin = 'TRANSACTIONTIME'
    end
    object CDSTransactionDetailsPAID: TStringField
      FieldName = 'PAID'
      Origin = 'PAID'
      FixedChar = True
      Size = 1
    end
    object CDSTransactionDetailsPAYMENTTYPE2: TStringField
      FieldName = 'PAYMENTTYPE2'
      Origin = 'PAYMENTTYPE2'
      FixedChar = True
      Size = 4
    end
    object CDSTransactionDetailsCREDITCARD2: TStringField
      FieldName = 'CREDITCARD2'
      Origin = 'CREDITCARD2'
      FixedChar = True
      Size = 50
    end
    object CDSTransactionDetailsSHIFT: TSmallintField
      FieldName = 'SHIFT'
      Origin = 'SHIFT'
    end
    object CDSTransactionDetailsEMPLOYNUMBER: TStringField
      FieldName = 'EMPLOYNUMBER'
      Origin = 'EMPLOYNUMBER'
      Required = True
      Size = 3
    end
    object CDSTransactionDetailsREGISTER: TSmallintField
      FieldName = 'REGISTER'
      Origin = 'REGISTER'
      Required = True
    end
    object CDSTransactionDetailsIDNUMBER: TIntegerField
      FieldName = 'IDNUMBER'
      Origin = 'IDNUMBER'
      Required = True
    end
    object CDSTransactionDetailsUPC: TStringField
      FieldName = 'UPC'
      Origin = 'UPC'
      Required = True
      FixedChar = True
      Size = 13
    end
    object CDSTransactionDetailsQTY: TFloatField
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object CDSTransactionDetailsVOIDED: TIntegerField
      FieldName = 'VOIDED'
      Origin = 'VOIDED'
      Required = True
    end
    object CDSTransactionDetailsSUBDETAIL: TStringField
      FieldName = 'SUBDETAIL'
      Origin = 'SUBDETAIL'
      FixedChar = True
      Size = 10
    end
    object CDSTransactionDetailsPRODDESCRIPTION: TStringField
      FieldName = 'PRODDESCRIPTION'
      Origin = 'PRODDESCRIPTION'
      FixedChar = True
      Size = 30
    end
    object CDSTransactionDetailsPRODDEPARTMENT: TStringField
      FieldName = 'PRODDEPARTMENT'
      Origin = 'PRODDEPARTMENT'
      FixedChar = True
    end
    object CDSTransactionDetailsFOOD: TStringField
      FieldName = 'FOOD'
      Origin = 'FOOD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSTransactionDetailsMODIFIED: TSmallintField
      FieldName = 'MODIFIED'
      Origin = 'MODIFIED'
      Required = True
    end
    object CDSTransactionDetailsFECHAVENTA: TSQLTimeStampField
      FieldName = 'FECHAVENTA'
      Origin = 'FECHAVENTA'
      Required = True
      DisplayFormat = '#.00'
    end
    object CDSTransactionDetailsSUPLIDOR: TIntegerField
      FieldName = 'SUPLIDOR'
      Origin = 'SUPLIDOR'
      Required = True
    end
    object CDSTransactionDetailsSUPERVISOR: TStringField
      FieldName = 'SUPERVISOR'
      Origin = 'SUPERVISOR'
      Size = 3
    end
    object CDSTransactionDetailsTAX_MUNICIPAL: TStringField
      FieldName = 'TAX_MUNICIPAL'
      Origin = 'TAX_MUNICIPAL'
      Size = 1
    end
    object CDSTransactionDetailsTAX_ESTATAL: TStringField
      FieldName = 'TAX_ESTATAL'
      Origin = 'TAX_ESTATAL'
      FixedChar = True
      Size = 1
    end
    object CDSTransactionDetailsBARCODEALTERNO1: TWideStringField
      FieldName = 'BARCODEALTERNO1'
      Origin = 'BARCODEALTERNO1'
      FixedChar = True
    end
    object CDSTransactionDetailsBARCODEALTERNO2: TWideStringField
      FieldName = 'BARCODEALTERNO2'
      Origin = 'BARCODEALTERNO2'
      FixedChar = True
    end
    object CDSTransactionDetailsNOTE: TWideStringField
      FieldName = 'NOTE'
      Origin = 'NOTE'
      FixedChar = True
      Size = 30
    end
    object CDSTransactionDetailsSUBDEPARTAMENTO: TSmallintField
      FieldName = 'SUBDEPARTAMENTO'
      Origin = 'SUBDEPARTAMENTO'
    end
    object CDSTransactionDetailsUTILIDAD: TBooleanField
      FieldName = 'UTILIDAD'
      Origin = 'UTILIDAD'
    end
    object CDSTransactionDetailsSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSTransactionDetailsTAX: TFMTBCDField
      FieldName = 'TAX'
      Origin = 'TAX'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSTransactionDetailsCHANGE: TFMTBCDField
      FieldName = 'CHANGE'
      Origin = 'CHANGE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSTransactionDetailsPAYAMOUNT1: TFMTBCDField
      FieldName = 'PAYAMOUNT1'
      Origin = 'PAYAMOUNT1'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSTransactionDetailsPAYAMOUNT2: TFMTBCDField
      FieldName = 'PAYAMOUNT2'
      Origin = 'PAYAMOUNT2'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSTransactionDetailsREGTOTAL: TFMTBCDField
      FieldName = 'REGTOTAL'
      Origin = 'REGTOTAL'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSTransactionDetailsFOODTOTAL: TFMTBCDField
      FieldName = 'FOODTOTAL'
      Origin = 'FOODTOTAL'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSTransactionDetailsTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSTransactionDetailsPRICE: TFMTBCDField
      FieldName = 'PRICE'
      Origin = 'PRICE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSTransactionDetailsREGPRICE: TFMTBCDField
      FieldName = 'REGPRICE'
      Origin = 'REGPRICE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSTransactionDetailsDISCOUNT: TFMTBCDField
      FieldName = 'DISCOUNT'
      Origin = 'DISCOUNT'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSTransactionDetailsCOSTO: TFMTBCDField
      FieldName = 'COSTO'
      Origin = 'COSTO'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object CDSTransactionDetailsTIP: TFMTBCDField
      FieldName = 'TIP'
      Origin = 'TIP'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
  end
  object Rep_Commissions: TfrxReport
    Version = '2021.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43712.563418564820000000
    ReportOptions.LastChange = 43712.563418564820000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 112
    Top = 464
    Datasets = <
      item
        DataSet = frxDBDatasetVerTrans
        DataSetName = 'frxDBDatasetVerTrans'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 400.000000000000000000
      PaperHeight = 500.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 52.913420000000000000
        Top = 18.897650000000000000
        Width = 1436.221400000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 7.559060000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Commissions')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 94.488250000000000000
        Width = 1436.221400000000000000
        Condition = 'frxDBDatasetVerTrans."SALESMAN"'
        object frxDBDatasetVerTransSALESMAN: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 18.897650000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'SALESMAN'
          DataSet = frxDBDatasetVerTrans
          DataSetName = 'frxDBDatasetVerTrans'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetVerTrans."SALESMAN"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 185.196970000000000000
        Width = 1436.221400000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 139.842610000000000000
        Width = 1436.221400000000000000
        DataSet = frxDBDatasetVerTrans
        DataSetName = 'frxDBDatasetVerTrans'
        RowCount = 0
        object frxDBDatasetVerTransCOMMISSION: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 52.913420000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'COMMISSION'
          DataSet = frxDBDatasetVerTrans
          DataSetName = 'frxDBDatasetVerTrans'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetVerTrans."COMMISSION"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDatasetVerTrans: TfrxDBDataset
    UserName = 'frxDBDatasetVerTrans'
    CloseDataSource = False
    DataSet = sqlVerTransaccionesFD
    BCDToCurrency = False
    Left = 224
    Top = 464
  end
  object frxReport125_2: TfrxReport
    Version = '2021.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 42548.814561481500000000
    ReportOptions.LastChange = 42548.814561481500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeforePrint = frxReport1BeforePrint
    Left = 376
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 50.800000000000000000
      PaperHeight = 31.750000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object Memo1: TfrxMemoView
        AllowVectorExport = True
        Left = 3.779530000000000000
        Top = 60.094515040000000000
        Width = 185.196970000000000000
        Height = 11.338590000000000000
        DataField = 'Suplidor'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."Suplidor"]')
        ParentFont = False
      end
      object BarCode1: TfrxBarCodeView
        AllowVectorExport = True
        Left = 3.779530000000000000
        Top = 26.456710000000000000
        Width = 80.000000000000000000
        Height = 34.015770000000000000
        BarType = bcCode128
        DataField = 'CODIGOBARRA'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Frame.Typ = []
        Rotation = 0
        TestLine = False
        Text = '12345678'
        WideBarRatio = 2.000000000000000000
        Zoom = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ColorBar = clBlack
      end
      object frxDBDataset1PRECIO: TfrxMemoView
        AllowVectorExport = True
        Left = 34.015770000000000000
        Top = 71.811070000000000000
        Width = 102.047310000000000000
        Height = 26.456710000000000000
        DataField = 'PRECIO'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."PRECIO"]')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        AllowVectorExport = True
        Left = 3.779530000000000000
        Top = 7.559057560000000000
        Width = 185.196850390000000000
        Height = 15.118120000000000000
        DataField = 'DESCRIPCION'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."DESCRIPCION"]')
        ParentFont = False
      end
      object frxDBDataset1CMAXINVENTARIO: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 42.574830000000000000
        Top = 102.047310000000000000
        Width = 64.252010000000000000
        Height = 11.338590000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        DisplayFormat.FormatStr = '%2.2f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."CMAXINVENTARIO"]')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        AllowVectorExport = True
        Left = 7.559060000000000000
        Top = 102.047310000000000000
        Width = 34.015770000000000000
        Height = 11.338590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Max Qty:')
        ParentFont = False
      end
    end
  end
end
