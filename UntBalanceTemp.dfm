object FrmTempBalance: TFrmTempBalance
  Left = 0
  Top = 0
  Caption = 'FrmTempBalance'
  ClientHeight = 581
  ClientWidth = 846
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 846
    Height = 521
    Align = alClient
    DataSource = dsBalanceTemp
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CUSTOMER'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AMOUNT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BALANCE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODE'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRANSNO'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 846
    Height = 41
    Align = alTop
    TabOrder = 1
    object Button1: TButton
      AlignWithMargins = True
      Left = 110
      Top = 4
      Width = 225
      Height = 33
      Align = alLeft
      Caption = 'Insert Values'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button3: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 100
      Height = 33
      Align = alLeft
      Caption = 'Customer'
      TabOrder = 1
      OnClick = Button3Click
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 341
      Top = 4
      Width = 225
      Height = 33
      Align = alLeft
      Caption = 'Recalculate Client Balance'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 562
    Width = 846
    Height = 19
    Panels = <
      item
        Width = 200
      end
      item
        Width = 50
      end>
  end
  object qBalanceTemp: TFDQuery
    Connection = DMMidas.FDConnection1
    SQL.Strings = (
      'SELECT * FROM BALANCE_TEMP')
    Left = 432
    Top = 72
  end
  object dspBalanceTemp: TDataSetProvider
    DataSet = qBalanceTemp
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 512
    Top = 72
  end
  object cdsBalanceTemp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBalanceTemp'
    Left = 720
    Top = 72
    object cdsBalanceTempID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object cdsBalanceTempCUSTOMER: TIntegerField
      FieldName = 'CUSTOMER'
    end
    object cdsBalanceTempAMOUNT: TBCDField
      FieldName = 'AMOUNT'
      Precision = 18
      Size = 2
    end
    object cdsBalanceTempBALANCE: TBCDField
      FieldName = 'BALANCE'
      Precision = 18
      Size = 2
    end
    object cdsBalanceTempCODE: TStringField
      FieldName = 'CODE'
      FixedChar = True
      Size = 2
    end
    object cdsBalanceTempTRANSNO: TIntegerField
      FieldName = 'TRANSNO'
    end
  end
  object dsBalanceTemp: TDataSource
    DataSet = cdsBalanceTemp
    Left = 608
    Top = 72
  end
  object FDQuery1: TFDQuery
    Connection = DMMidas.FDConnection1
    Left = 328
    Top = 144
  end
end
