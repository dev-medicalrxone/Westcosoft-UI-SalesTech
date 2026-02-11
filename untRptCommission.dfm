object frmComReport: TfrmComReport
  Left = 0
  Top = 0
  Caption = 'frmComReport'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object dsCommission: TfrxDBDataset
    UserName = 'dsCommission'
    CloseDataSource = False
    FieldAliases.Strings = (
      'salesman=salesman'
      'TotalCommission=TotalCommission'
      'NombreCompleto=NombreCompleto')
    DataSet = cdsCommission
    BCDToCurrency = False
    DataSetOptions = []
    Left = 424
    Top = 56
  end
  object qCommission: TFDQuery
    Connection = DMMidas.FDConnection1
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    SQL.Strings = (
      
        'select salesman, SUM(commission) as TotalCommission from VERTRAN' +
        'SACCIONES'
      #160#160'where convert(varchar, transactiondate, 101) > '#39'09/04/2019'#39
      #160#160#160'group by salesman')
    Left = 48
    Top = 48
  end
  object rptCommission: TfrxReport
    Version = '2023.3.4'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43718.541562696800000000
    ReportOptions.LastChange = 43718.541562696800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeforePrint = rptCommissionBeforePrint
    Left = 544
    Top = 64
    Datasets = <
      item
        DataSet = dsCommission
        DataSetName = 'dsCommission'
      end
      item
        DataSet = dsSalesPersons
        DataSetName = 'dsSalesPerson'
      end
      item
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 132.283550000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object SetupSTORENAME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'STORENAME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Setup."STORENAME"]')
          ParentFont = False
        end
        object SetupSTOREADDRESS: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'STOREADDRESS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Setup."STOREADDRESS"]')
          ParentFont = False
        end
        object SetupSTORETELEPHONE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 49.133890000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          DataField = 'STORETELEPHONE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Setup."STORETELEPHONE"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 76.370130000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Commission Report')
          ParentFont = False
        end
        object MemoFromTO: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 102.047310000000000000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'From')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 264.567100000000000000
        Width = 740.409927000000000000
        DataSet = dsCommission
        DataSetName = 'dsCommission'
        RowCount = 0
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 2.779530000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'NombreCompleto'
          DataSet = dsCommission
          DataSetName = 'dsCommission'
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsCommission."NombreCompleto"]')
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 22.677180000000000000
          Width = 729.449290000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object dsCommissionTotalCommission: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 162.519790000000000000
          Top = 2.000000000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          DataSet = dsCommission
          DataSetName = 'dsCommission'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dsCommission."TotalCommission"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 173.858380000000000000
        Width = 740.409927000000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Salesman')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Commission')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 3.559060000000000000
          Top = 27.456710000000000000
          Width = 729.449290000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 351.496290000000000000
        Width = 740.409927000000000000
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 132.283550000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Commissions:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dsCommission."TotalCommission">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = -3.779530000000000000
          Width = 729.449290000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object qSalesperson: TFDQuery
    Connection = DMMidas.FDConnection1
    SQL.Strings = (
      'Select username, iniciales from passwords order by username asc')
    Left = 48
    Top = 144
  end
  object dsSalesPersons: TfrxDBDataset
    UserName = 'dsSalesPerson'
    CloseDataSource = False
    FieldAliases.Strings = (
      'username=username')
    DataSet = cdsSalesPerson
    BCDToCurrency = False
    DataSetOptions = []
    Left = 424
    Top = 152
  end
  object dspSalesPerson: TDataSetProvider
    DataSet = qSalesperson
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 128
    Top = 144
  end
  object dsSalesPerson: TDataSource
    DataSet = cdsSalesPerson
    Left = 224
    Top = 144
  end
  object cdsSalesPerson: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSalesPerson'
    Left = 312
    Top = 144
    object cdsSalesPersonusername: TStringField
      FieldName = 'username'
      Origin = 'username'
      Required = True
      Size = 35
    end
    object cdsSalesPersoniniciales: TStringField
      FieldName = 'iniciales'
      Origin = 'iniciales'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
  end
  object dspCommission: TDataSetProvider
    DataSet = qCommission
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 135
    Top = 49
  end
  object dsComission: TDataSource
    DataSet = cdsCommission
    Left = 231
    Top = 49
  end
  object cdsCommission: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCommission'
    Left = 319
    Top = 49
    object cdsCommissionsalesman: TWideStringField
      FieldName = 'salesman'
      Origin = 'salesman'
      FixedChar = True
      Size = 3
    end
    object cdsCommissionTotalCommission: TFMTBCDField
      FieldName = 'TotalCommission'
      Origin = 'TotalCommission'
      ReadOnly = True
      DisplayFormat = '#.00'
      Precision = 38
      Size = 2
    end
    object cdsCommissionNombreCompleto: TStringField
      FieldKind = fkLookup
      FieldName = 'NombreCompleto'
      LookupDataSet = cdsSalesPerson
      LookupKeyFields = 'iniciales'
      LookupResultField = 'username'
      KeyFields = 'salesman'
      Size = 45
      Lookup = True
    end
  end
end
