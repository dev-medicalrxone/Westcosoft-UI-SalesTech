object FrmTripleSReport: TFrmTripleSReport
  Left = 0
  Top = 0
  Caption = 'Triple-S Advantage Report'
  ClientHeight = 239
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 13
  object From: TLabel
    Left = 40
    Top = 8
    Width = 24
    Height = 13
    Caption = 'From'
  end
  object Label2: TLabel
    Left = 40
    Top = 50
    Width = 12
    Height = 13
    Caption = 'To'
  end
  object LblDummy: TLabel
    Left = 48
    Top = 226
    Width = 48
    Height = 13
    Caption = 'LblDummy'
    Visible = False
  end
  object Label1: TLabel
    Left = 40
    Top = 134
    Width = 303
    Height = 19
    Caption = 'Cantidad aprobada por Triple-S Advantage'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LabelAmount: TLabel
    Left = 40
    Top = 159
    Width = 77
    Height = 19
    Caption = 'Amount: $'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dtpFrom: TDateTimePicker
    Left = 40
    Top = 26
    Width = 186
    Height = 21
    Date = 44573.000000000000000000
    Time = 0.450359467591624700
    TabOrder = 0
  end
  object dtpTo: TDateTimePicker
    Left = 40
    Top = 64
    Width = 186
    Height = 21
    Date = 44573.000000000000000000
    Time = 0.450359467591624700
    TabOrder = 1
  end
  object Show: TButton
    Left = 40
    Top = 97
    Width = 75
    Height = 25
    Caption = 'Show'
    TabOrder = 2
    OnClick = ShowClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 198
    Width = 788
    Height = 41
    Align = alBottom
    TabOrder = 3
    object Button1: TButton
      AlignWithMargins = True
      Left = 709
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Close'
      ModalResult = 8
      TabOrder = 0
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 628
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Print'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object RichEdit1: TRichEdit
    Left = 528
    Top = 0
    Width = 260
    Height = 198
    Align = alRight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'RichEdit1')
    ParentFont = False
    TabOrder = 4
    Visible = False
  end
  object rgOptions: TRadioGroup
    Left = 337
    Top = 8
    Width = 185
    Height = 105
    Caption = 'Options'
    ItemIndex = 0
    Items.Strings = (
      'Simple'
      'Detailed')
    TabOrder = 5
  end
  object qrySSS: TFDQuery
    Connection = DMMidas.FDConnection1
    SQL.Strings = (
      
        'select TRANSACTIONNUMBER, PAYMENTTYPE1, PAYAMOUNT1, Cast(Transac' +
        'tionDate AS DATE) AS TDATE from TRANSACTIONHEADER where PAYMENTT' +
        'YPE1 like '#39'TS%'#39' order by TRANSACTIONDATE')
    Left = 160
    Top = 174
  end
  object dspSSS: TDataSetProvider
    DataSet = qrySSS
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 216
    Top = 174
  end
  object cdsSSS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSSS'
    Left = 336
    Top = 174
    object cdsSSSTRANSACTIONNUMBER: TIntegerField
      FieldName = 'TRANSACTIONNUMBER'
      Origin = 'TRANSACTIONNUMBER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsSSSPAYMENTTYPE1: TStringField
      FieldName = 'PAYMENTTYPE1'
      Origin = 'PAYMENTTYPE1'
      FixedChar = True
      Size = 4
    end
    object cdsSSSPAYAMOUNT1: TFMTBCDField
      FieldName = 'PAYAMOUNT1'
      Origin = 'PAYAMOUNT1'
      Precision = 18
      Size = 2
    end
    object cdsSSSTDATE: TDateField
      FieldName = 'TDATE'
      Origin = 'TDATE'
      ReadOnly = True
    end
  end
  object dsSSS: TDataSource
    DataSet = cdsSSS
    Left = 272
    Top = 174
  end
  object SSSReport: TfrxReport
    Version = '2023.3.4'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44575.548663657410000000
    ReportOptions.LastChange = 44575.548663657410000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeforePrint = SSSReportBeforePrint
    Left = 512
    Top = 174
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
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
        Height = 60.472480000000000000
        Top = 102.047310000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 102.267780000000000000
          Top = 30.133890000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Transaction '
            'Number')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 725.669760000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            'Triple-S Advantage')
          ParentFont = False
        end
        object frxDBDataset1PAYMENTTYPE1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 39.913368740000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'PAYMENTTYPE1'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PAYMENTTYPE1"]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 200.535560000000000000
          Top = 39.913368740000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Date')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 306.362400000000000000
          Top = 39.913368740000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Amount')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 185.196970000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1TRANSACTIONNUMBER: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 106.047310000000000000
          Top = 2.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'TRANSACTIONNUMBER'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."TRANSACTIONNUMBER"]')
        end
        object frxDBDataset1PAYAMOUNT1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 298.803340000000000000
          Top = 2.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
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
            '[frxDBDataset1."PAYAMOUNT1"]')
          ParentFont = False
        end
        object frxDBDataset1TDATE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 200.535560000000000000
          Top = 2.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'TDATE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."TDATE"]')
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 861.732840000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[PAGE#] of [TOTALPAGES#]')
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] of [TOTALPAGES#]')
          ParentFont = False
        end
        object SetupSTORENAME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 525.354670000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'STORENAME'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."STORENAME"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 268.346630000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 298.803340000000000000
          Top = 12.118120000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clRed
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."PAYAMOUNT1">,MasterData2)]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 102.267780000000000000
          Top = 12.118120000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clRed
          Frame.Typ = []
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(MasterData2)]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 16.118120000000000000
          Top = 11.338590000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total'#39's:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 3.779530000000000000
          Width = 298.582870000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = dsSSS
    BCDToCurrency = False
    DataSetOptions = []
    Left = 416
    Top = 174
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSource = DMMidas.DSSetup
    BCDToCurrency = False
    DataSetOptions = []
    Left = 80
    Top = 184
  end
end
