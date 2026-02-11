object FrmCreditCard: TFrmCreditCard
  Left = 203
  Top = 150
  Width = 304
  Height = 173
  Caption = 'Enter Amount...'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 9
    Top = 23
    Width = 66
    Height = 13
    Caption = 'Cash Amount:'
  end
  object Label3: TLabel
    Left = 9
    Top = 48
    Width = 94
    Height = 13
    Caption = 'Credit Card Amount:'
  end
  object Label2: TLabel
    Left = 9
    Top = 72
    Width = 78
    Height = 13
    Caption = 'Credit Card type:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 105
    Width = 296
    Height = 41
    Align = alBottom
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 176
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 56
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object EditCash: TEdit
    Left = 112
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object EditCreditCard: TEdit
    Left = 112
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 112
    Top = 65
    Width = 123
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'Visa'
    Items.Strings = (
      'Visa'
      'MasterCard'
      'American Express'
      'Dinners Club'
      'Discover'
      'Targeta de la Familia')
  end
end
