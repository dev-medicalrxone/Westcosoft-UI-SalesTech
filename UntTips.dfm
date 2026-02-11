object FrmTips: TFrmTips
  Left = 0
  Top = 0
  Caption = 'Gratuity (Tips)'
  ClientHeight = 429
  ClientWidth = 415
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 7
    Width = 28
    Height = 15
    Caption = 'From'
  end
  object Label2: TLabel
    Left = 24
    Top = 52
    Width = 12
    Height = 15
    Caption = 'To'
  end
  object dtpFrom: TDateTimePicker
    Left = 24
    Top = 24
    Width = 121
    Height = 23
    Date = 44819.000000000000000000
    Time = 0.387079780091880800
    TabOrder = 0
  end
  object dtpTo: TDateTimePicker
    Left = 24
    Top = 67
    Width = 121
    Height = 23
    Date = 44819.000000000000000000
    Time = 0.387079780091880800
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 135
    Width = 415
    Height = 234
    Align = alBottom
    DataSource = dsTips
    DrawingStyle = gdsGradient
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Waiter'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalTip'
        Title.Caption = 'Total Tip'
        Width = 194
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 24
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Execute'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 388
    Width = 415
    Height = 41
    Align = alBottom
    TabOrder = 4
    object Button2: TButton
      AlignWithMargins = True
      Left = 336
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Close'
      ModalResult = 8
      TabOrder = 0
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 369
    Width = 415
    Height = 19
    Panels = <
      item
        Width = 200
      end
      item
        Width = 50
      end>
    ExplicitLeft = 8
    ExplicitTop = 394
  end
  object qryTips: TFDQuery
    Connection = DMMidas.FDConnection1
    SQL.Strings = (
      
        'select SALESMAN as Waiter, sum(total_tip) as TotalTip from TRANS' +
        'ACTIONHEADER WHERE SALESMAN > '#39#39' group by SALESMAN;')
    Left = 184
    Top = 40
  end
  object dspTips: TDataSetProvider
    DataSet = qryTips
    Options = [poFetchBlobsOnDemand, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 240
    Top = 40
  end
  object cdsTips: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTips'
    Left = 352
    Top = 48
    object cdsTipsWaiter: TWideStringField
      FieldName = 'Waiter'
      Origin = 'Waiter'
      FixedChar = True
      Size = 3
    end
    object cdsTipsTotalTip: TFMTBCDField
      FieldName = 'TotalTip'
      Origin = 'TotalTip'
      ReadOnly = True
      Precision = 38
      Size = 2
    end
  end
  object dsTips: TDataSource
    DataSet = qryTips
    Left = 296
    Top = 48
  end
  object qryTotal: TFDQuery
    Connection = DMMidas.FDConnection1
    Left = 320
    Top = 16
  end
end
