object FrmLabels: TFrmLabels
  Left = 428
  Top = 170
  Width = 493
  Height = 344
  Caption = 'Labels'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipelineOrderDetail
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 1270
    PrinterSetup.mmMarginLeft = 1270
    PrinterSetup.mmMarginRight = 1270
    PrinterSetup.mmMarginTop = 1270
    PrinterSetup.mmPaperHeight = 19050
    PrinterSetup.mmPaperWidth = 50800
    PrinterSetup.PaperSize = 896
    BeforePrint = ppReport1BeforePrint
    DeviceType = 'Printer'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 32
    Top = 24
    Version = '9.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipelineOrderDetail'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 14288
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SUPLIDOR'
        DataPipeline = ppDBPipelineSuplidores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 4
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineSuplidores'
        mmHeight = 1588
        mmLeft = 36777
        mmTop = 3969
        mmWidth = 10319
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRIPTION'
        DataPipeline = ppDBPipelineOrderDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineOrderDetail'
        mmHeight = 3440
        mmLeft = 1323
        mmTop = 265
        mmWidth = 47625
        BandType = 4
      end
      object ppDBBarCode1: TppDBBarCode
        UserName = 'DBBarCode1'
        AutoEncode = True
        BarCodeType = bcCode128
        BarColor = clWindowText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UPC'
        DataPipeline = ppDBPipelineOrderDetail
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipelineOrderDetail'
        mmHeight = 10583
        mmLeft = 1323
        mmTop = 3704
        mmWidth = 31750
        BandType = 4
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRICE'
        DataPipeline = ppDBPipelineOrderDetail
        DisplayFormat = '$#.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipelineOrderDetail'
        mmHeight = 5673
        mmLeft = 26194
        mmTop = 9525
        mmWidth = 20902
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 40322
        mmTop = 5556
        mmWidth = 6773
        BandType = 4
      end
    end
  end
  object ppDBPipelineOrderHeader: TppDBPipeline
    DataSource = DSOrderHeader
    UserName = 'DBPipelineOrderHeader'
    Left = 72
    Top = 24
    object ppDBPipelineOrderHeaderppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ORDERID'
      FieldName = 'ORDERID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPipelineOrderHeaderppField2: TppField
      FieldAlias = 'ORDERNUMBER'
      FieldName = 'ORDERNUMBER'
      FieldLength = 30
      DisplayWidth = 30
      Position = 1
    end
    object ppDBPipelineOrderHeaderppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipelineOrderHeaderppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'RECEIVED'
      FieldName = 'RECEIVED'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipelineOrderHeaderppField5: TppField
      FieldAlias = 'ORDERDATE'
      FieldName = 'ORDERDATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 4
    end
    object ppDBPipelineOrderHeaderppField6: TppField
      FieldAlias = 'DESCRIPTION'
      FieldName = 'DESCRIPTION'
      FieldLength = 60
      DisplayWidth = 60
      Position = 5
    end
    object ppDBPipelineOrderHeaderppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUPPLIER'
      FieldName = 'SUPPLIER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppDBPipelineOrderHeaderppField8: TppField
      FieldAlias = 'STATUS'
      FieldName = 'STATUS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 7
    end
    object ppDBPipelineOrderHeaderppField9: TppField
      FieldAlias = 'DUEDATE'
      FieldName = 'DUEDATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 8
    end
    object ppDBPipelineOrderHeaderppField10: TppField
      FieldAlias = 'PAYMENTDATE'
      FieldName = 'PAYMENTDATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 9
    end
    object ppDBPipelineOrderHeaderppField11: TppField
      FieldAlias = 'CHECKNUMBER'
      FieldName = 'CHECKNUMBER'
      FieldLength = 20
      DisplayWidth = 20
      Position = 10
    end
    object ppDBPipelineOrderHeaderppField12: TppField
      FieldAlias = 'RECEIVEDDATE'
      FieldName = 'RECEIVEDDATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 11
    end
    object ppDBPipelineOrderHeaderppField13: TppField
      FieldAlias = 'USUARIO'
      FieldName = 'USUARIO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 12
    end
    object ppDBPipelineOrderHeaderppField14: TppField
      FieldAlias = 'TRANSFERED'
      FieldName = 'TRANSFERED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 13
    end
    object ppDBPipelineOrderHeaderppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'MANEJO'
      FieldName = 'MANEJO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object ppDBPipelineOrderHeaderppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'PORCIENTO_GANANCIA'
      FieldName = 'PORCIENTO_GANANCIA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
  end
  object ppDBPipelineOrderDetail: TppDBPipeline
    DataSource = DSOrderDetail1
    UserName = 'DBPipelineOrderDetail'
    Left = 112
    Top = 24
  end
  object ppDBPipelineSuplidores: TppDBPipeline
    DataSource = DMMidas.DSSuplidores
    UserName = 'DBPipelineSuplidores'
    Left = 72
    Top = 64
    object ppDBPipelineSuplidoresppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUMEROSUPLIDOR'
      FieldName = 'NUMEROSUPLIDOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPipelineSuplidoresppField2: TppField
      FieldAlias = 'SUPLIDOR'
      FieldName = 'SUPLIDOR'
      FieldLength = 28
      DisplayWidth = 28
      Position = 1
    end
    object ppDBPipelineSuplidoresppField3: TppField
      FieldAlias = 'DIRECCION1'
      FieldName = 'DIRECCION1'
      FieldLength = 34
      DisplayWidth = 34
      Position = 2
    end
    object ppDBPipelineSuplidoresppField4: TppField
      FieldAlias = 'DIRECCION2'
      FieldName = 'DIRECCION2'
      FieldLength = 34
      DisplayWidth = 34
      Position = 3
    end
    object ppDBPipelineSuplidoresppField5: TppField
      FieldAlias = 'FAX'
      FieldName = 'FAX'
      FieldLength = 13
      DisplayWidth = 13
      Position = 4
    end
    object ppDBPipelineSuplidoresppField6: TppField
      FieldAlias = 'ZIPCODE'
      FieldName = 'ZIPCODE'
      FieldLength = 10
      DisplayWidth = 10
      Position = 5
    end
    object ppDBPipelineSuplidoresppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'PORCIENTODESCUENTO'
      FieldName = 'PORCIENTODESCUENTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppDBPipelineSuplidoresppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'DIASDESCUENTO'
      FieldName = 'DIASDESCUENTO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppDBPipelineSuplidoresppField9: TppField
      FieldAlias = 'CONTACTO'
      FieldName = 'CONTACTO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 8
    end
    object ppDBPipelineSuplidoresppField10: TppField
      FieldAlias = 'NUMEROCUENTA'
      FieldName = 'NUMEROCUENTA'
      FieldLength = 7
      DisplayWidth = 7
      Position = 9
    end
    object ppDBPipelineSuplidoresppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALCOMPRADO'
      FieldName = 'TOTALCOMPRADO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object ppDBPipelineSuplidoresppField12: TppField
      FieldAlias = 'TELEFONO'
      FieldName = 'TELEFONO'
      FieldLength = 13
      DisplayWidth = 13
      Position = 11
    end
    object ppDBPipelineSuplidoresppField13: TppField
      FieldAlias = 'SUP_ID'
      FieldName = 'SUP_ID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 12
    end
    object ppDBPipelineSuplidoresppField14: TppField
      FieldAlias = 'SUPPLIER_NAME'
      FieldName = 'SUPPLIER_NAME'
      FieldLength = 45
      DisplayWidth = 45
      Position = 13
    end
  end
  object DSOrderHeader: TDataSource
    DataSet = CDSOrderHeader
    Left = 144
    Top = 129
  end
  object DSOrderDetail1: TDataSource
    DataSet = CDSOrderDetail
    Left = 152
    Top = 185
  end
  object CDSOrderHeader: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPOrderHeader'
    Left = 200
    Top = 128
    object CDSOrderHeaderORDERNUMBER: TStringField
      FieldName = 'ORDERNUMBER'
      Size = 30
    end
    object CDSOrderHeaderTOTAL: TFloatField
      FieldName = 'TOTAL'
      Required = True
      DisplayFormat = '#.00'
    end
    object CDSOrderHeaderRECEIVED: TFloatField
      FieldName = 'RECEIVED'
      Required = True
      DisplayFormat = '#.00'
    end
    object CDSOrderHeaderORDERDATE: TSQLTimeStampField
      FieldName = 'ORDERDATE'
      Required = True
    end
    object CDSOrderHeaderDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 60
    end
    object CDSOrderHeaderSUPPLIER: TIntegerField
      FieldName = 'SUPPLIER'
      Required = True
    end
    object CDSOrderHeaderSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOrderHeaderDUEDATE: TSQLTimeStampField
      FieldName = 'DUEDATE'
      Required = True
    end
    object CDSOrderHeaderPAYMENTDATE: TSQLTimeStampField
      FieldName = 'PAYMENTDATE'
    end
    object CDSOrderHeaderCHECKNUMBER: TStringField
      FieldName = 'CHECKNUMBER'
    end
    object CDSOrderHeaderRECEIVEDDATE: TSQLTimeStampField
      FieldName = 'RECEIVEDDATE'
    end
    object CDSOrderHeaderUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
      Size = 3
    end
    object CDSOrderHeaderTRANSFERED: TStringField
      FieldName = 'TRANSFERED'
      FixedChar = True
      Size = 1
    end
    object CDSOrderHeaderMANEJO: TFloatField
      FieldName = 'MANEJO'
    end
    object CDSOrderHeaderPORCIENTO_GANANCIA: TFloatField
      FieldName = 'PORCIENTO_GANANCIA'
      DisplayFormat = '#.00'
    end
    object CDSOrderHeaderORDERID: TIntegerField
      FieldName = 'ORDERID'
      Required = True
    end
    object CDSOrderHeaderPO_NO: TStringField
      FieldName = 'PO_NO'
      FixedChar = True
      Size = 15
    end
    object CDSOrderHeaderINFO_ADICIONAL: TStringField
      FieldName = 'INFO_ADICIONAL'
      Size = 100
    end
    object CDSOrderHeaderCOMPLETE: TStringField
      FieldName = 'COMPLETE'
      FixedChar = True
      Size = 10
    end
  end
  object DSPOrderHeader: TDataSetProvider
    DataSet = SQLDSOrderHeader
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 88
    Top = 128
  end
  object SQLDSOrderHeader: TSQLDataSet
    CommandText = 'Select * From Order_Header order by ordernumber'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMMidas.SQLConnection2
    Left = 40
    Top = 128
    object SQLDSOrderHeaderORDERNUMBER: TStringField
      FieldName = 'ORDERNUMBER'
      Size = 30
    end
    object SQLDSOrderHeaderTOTAL: TFloatField
      FieldName = 'TOTAL'
      Required = True
    end
    object SQLDSOrderHeaderRECEIVED: TFloatField
      FieldName = 'RECEIVED'
      Required = True
    end
    object SQLDSOrderHeaderORDERDATE: TSQLTimeStampField
      FieldName = 'ORDERDATE'
      Required = True
    end
    object SQLDSOrderHeaderDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 60
    end
    object SQLDSOrderHeaderSUPPLIER: TIntegerField
      FieldName = 'SUPPLIER'
      Required = True
    end
    object SQLDSOrderHeaderSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SQLDSOrderHeaderDUEDATE: TSQLTimeStampField
      FieldName = 'DUEDATE'
      Required = True
    end
    object SQLDSOrderHeaderPAYMENTDATE: TSQLTimeStampField
      FieldName = 'PAYMENTDATE'
    end
    object SQLDSOrderHeaderCHECKNUMBER: TStringField
      FieldName = 'CHECKNUMBER'
    end
    object SQLDSOrderHeaderRECEIVEDDATE: TSQLTimeStampField
      FieldName = 'RECEIVEDDATE'
    end
    object SQLDSOrderHeaderUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
      Size = 3
    end
    object SQLDSOrderHeaderTRANSFERED: TStringField
      FieldName = 'TRANSFERED'
      FixedChar = True
      Size = 1
    end
    object SQLDSOrderHeaderMANEJO: TFloatField
      FieldName = 'MANEJO'
    end
    object SQLDSOrderHeaderPORCIENTO_GANANCIA: TFloatField
      FieldName = 'PORCIENTO_GANANCIA'
    end
    object SQLDSOrderHeaderORDERID: TIntegerField
      FieldName = 'ORDERID'
      Required = True
    end
    object SQLDSOrderHeaderPO_NO: TStringField
      FieldName = 'PO_NO'
      FixedChar = True
      Size = 15
    end
    object SQLDSOrderHeaderINFO_ADICIONAL: TStringField
      FieldName = 'INFO_ADICIONAL'
      Size = 100
    end
    object SQLDSOrderHeaderCOMPLETE: TStringField
      FieldName = 'COMPLETE'
      FixedChar = True
      Size = 10
    end
  end
  object CDSOrderDetail: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * from order_detail'
    Params = <>
    ProviderName = 'DSPOrder_Detail'
    Left = 208
    Top = 184
    object CDSOrderDetailUPC: TStringField
      FieldName = 'UPC'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CDSOrderDetailCOSTRECEIVED: TFloatField
      FieldName = 'COSTRECEIVED'
      Required = True
      DisplayFormat = '#.00'
    end
    object CDSOrderDetailREASON: TStringField
      FieldName = 'REASON'
      Size = 100
    end
    object CDSOrderDetailPRICE: TFloatField
      FieldName = 'PRICE'
      DisplayFormat = '#.00'
    end
    object CDSOrderDetailTAMANO: TFloatField
      FieldName = 'TAMANO'
      DisplayFormat = '#.00'
    end
    object CDSOrderDetailPACKAGESIZE: TSmallintField
      FieldName = 'PACKAGESIZE'
      DisplayFormat = '#.00'
    end
    object CDSOrderDetailQTYRECEIVED: TFloatField
      FieldName = 'QTYRECEIVED'
      Required = True
      DisplayFormat = '#.00'
    end
    object CDSOrderDetailLOTE: TStringField
      FieldName = 'LOTE'
      FixedChar = True
      Size = 12
    end
    object CDSOrderDetailFECHA_EXPIRACION: TSQLTimeStampField
      FieldName = 'FECHA_EXPIRACION'
    end
    object CDSOrderDetailDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      FixedChar = True
      Size = 75
    end
    object CDSOrderDetailPRODUCTID: TIntegerField
      FieldName = 'PRODUCTID'
      Required = True
    end
    object CDSOrderDetailCOSTORDERED: TFloatField
      FieldName = 'COSTORDERED'
      DisplayFormat = '#.00'
    end
    object CDSOrderDetailRECETARIO: TStringField
      FieldName = 'RECETARIO'
      FixedChar = True
      Size = 1
    end
    object CDSOrderDetailESPECIAL: TFloatField
      FieldName = 'ESPECIAL'
      DisplayFormat = '#.00'
    end
    object CDSOrderDetailCOMESPECIAL: TSQLTimeStampField
      FieldName = 'COMESPECIAL'
    end
    object CDSOrderDetailTERMESPECIAL: TSQLTimeStampField
      FieldName = 'TERMESPECIAL'
    end
    object CDSOrderDetailAWP: TFloatField
      FieldName = 'AWP'
      DisplayFormat = '#.00'
    end
    object CDSOrderDetailPAQUETES_FRASCOS: TIntegerField
      FieldName = 'PAQUETES_FRASCOS'
    end
    object CDSOrderDetailTOTAL_VALUE: TFloatField
      FieldName = 'TOTAL_VALUE'
      DisplayFormat = '#.00'
    end
    object CDSOrderDetailQTYORDERED: TFloatField
      FieldName = 'QTYORDERED'
      DisplayFormat = '#.00'
    end
    object CDSOrderDetailGROUP_PRODUCTNO: TIntegerField
      FieldName = 'GROUP_PRODUCTNO'
    end
    object CDSOrderDetailORDERID: TIntegerField
      FieldName = 'ORDERID'
    end
    object CDSOrderDetailDETAILID: TIntegerField
      FieldName = 'DETAILID'
      Required = True
    end
  end
  object SQLDSOrderDetail: TSQLDataSet
    CommandText = 'Select * from order_detail'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMMidas.SQLConnection2
    Left = 40
    Top = 184
    object SQLDSOrderDetailUPC: TStringField
      FieldName = 'UPC'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SQLDSOrderDetailCOSTRECEIVED: TFloatField
      FieldName = 'COSTRECEIVED'
      Required = True
    end
    object SQLDSOrderDetailREASON: TStringField
      FieldName = 'REASON'
      Size = 100
    end
    object SQLDSOrderDetailPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object SQLDSOrderDetailTAMANO: TFloatField
      FieldName = 'TAMANO'
    end
    object SQLDSOrderDetailPACKAGESIZE: TSmallintField
      FieldName = 'PACKAGESIZE'
    end
    object SQLDSOrderDetailQTYRECEIVED: TFloatField
      FieldName = 'QTYRECEIVED'
      Required = True
    end
    object SQLDSOrderDetailLOTE: TStringField
      FieldName = 'LOTE'
      FixedChar = True
      Size = 12
    end
    object SQLDSOrderDetailFECHA_EXPIRACION: TSQLTimeStampField
      FieldName = 'FECHA_EXPIRACION'
    end
    object SQLDSOrderDetailDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      FixedChar = True
      Size = 75
    end
    object SQLDSOrderDetailPRODUCTID: TIntegerField
      FieldName = 'PRODUCTID'
      Required = True
    end
    object SQLDSOrderDetailCOSTORDERED: TFloatField
      FieldName = 'COSTORDERED'
    end
    object SQLDSOrderDetailRECETARIO: TStringField
      FieldName = 'RECETARIO'
      FixedChar = True
      Size = 1
    end
    object SQLDSOrderDetailESPECIAL: TFloatField
      FieldName = 'ESPECIAL'
    end
    object SQLDSOrderDetailCOMESPECIAL: TSQLTimeStampField
      FieldName = 'COMESPECIAL'
    end
    object SQLDSOrderDetailTERMESPECIAL: TSQLTimeStampField
      FieldName = 'TERMESPECIAL'
    end
    object SQLDSOrderDetailAWP: TFloatField
      FieldName = 'AWP'
    end
    object SQLDSOrderDetailPAQUETES_FRASCOS: TIntegerField
      FieldName = 'PAQUETES_FRASCOS'
    end
    object SQLDSOrderDetailTOTAL_VALUE: TFloatField
      FieldName = 'TOTAL_VALUE'
    end
    object SQLDSOrderDetailQTYORDERED: TFloatField
      FieldName = 'QTYORDERED'
    end
    object SQLDSOrderDetailGROUP_PRODUCTNO: TIntegerField
      FieldName = 'GROUP_PRODUCTNO'
    end
    object SQLDSOrderDetailORDERID: TIntegerField
      FieldName = 'ORDERID'
    end
    object SQLDSOrderDetailDETAILID: TIntegerField
      FieldName = 'DETAILID'
      Required = True
    end
  end
  object DSPOrder_Detail: TDataSetProvider
    DataSet = SQLDSOrderDetail
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 96
    Top = 184
  end
end
