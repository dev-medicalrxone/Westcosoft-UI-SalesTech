object FrmCreditoDebito: TFrmCreditoDebito
  Left = 391
  Top = 146
  Width = 369
  Height = 223
  Caption = 'Debito contra Credito'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 32
    Width = 31
    Height = 13
    Caption = 'Desde'
  end
  object Label2: TLabel
    Left = 16
    Top = 80
    Width = 28
    Height = 13
    Caption = 'Hasta'
  end
  object Label3: TLabel
    Left = 168
    Top = 48
    Width = 36
    Height = 13
    Caption = 'Credito:'
  end
  object Label4: TLabel
    Left = 168
    Top = 80
    Width = 34
    Height = 13
    Caption = 'Debito:'
  end
  object LCredito: TLabel
    Left = 248
    Top = 48
    Width = 6
    Height = 13
    Caption = '$'
  end
  object LDebito: TLabel
    Left = 248
    Top = 80
    Width = 6
    Height = 13
    Caption = '$'
  end
  object Desde: TDateTimePicker
    Left = 16
    Top = 48
    Width = 89
    Height = 21
    CalAlignment = dtaLeft
    Date = 37868.6972773032
    Time = 37868.6972773032
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 0
  end
  object Hasta: TDateTimePicker
    Left = 16
    Top = 96
    Width = 89
    Height = 21
    CalAlignment = dtaLeft
    Date = 37868.6973663194
    Time = 37868.6973663194
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 1
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 361
    Height = 29
    Caption = 'ToolBar1'
    Flat = True
    Images = FrmMain.Images
    TabOrder = 2
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 212
      OnClick = ToolButton1Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 148
    Width = 361
    Height = 41
    Align = alBottom
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 272
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkClose
    end
  end
  object SQLClientDataSet1: TSQLClientDataSet
    Active = True
    CommandText = 
      'select code, sum(amount) from clienttransactions where clientno ' +
      '= 155 group by code'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    DBConnection = DMMidas.SQLConnection1
    Left = 312
    Top = 16
    object SQLClientDataSet1CODE: TStringField
      FieldName = 'CODE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object SQLClientDataSet1SUM: TFloatField
      FieldName = 'SUM'
    end
  end
end
