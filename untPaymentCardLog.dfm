object FrmPaymentCardLog: TFrmPaymentCardLog
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Card Log'
  ClientHeight = 310
  ClientWidth = 448
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object lblTransNo: TLabel
    Left = 253
    Top = 220
    Width = 18
    Height = 15
    Caption = '111'
  end
  object Label5: TLabel
    Left = 136
    Top = 220
    Width = 111
    Height = 15
    Caption = 'Transaction number: '
  end
  object Label3: TLabel
    Left = 10
    Top = 176
    Width = 130
    Height = 21
    Caption = 'Authorization num'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 37
    Top = 128
    Width = 103
    Height = 21
    Caption = 'Last four digits'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 73
    Top = 80
    Width = 67
    Height = 21
    Caption = 'Card type'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 8
    Width = 442
    Height = 25
    Margins.Top = 8
    Align = alTop
    Alignment = taCenter
    Caption = 'Please enter the card info below:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 26
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 275
  end
  object Panel3: TPanel
    Left = 0
    Top = 265
    Width = 448
    Height = 45
    Align = alBottom
    TabOrder = 3
    object ButtonClose: TButton
      AlignWithMargins = True
      Left = 338
      Top = 4
      Width = 106
      Height = 37
      Align = alRight
      Caption = 'Cancel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 8
      ParentFont = False
      TabOrder = 1
      TabStop = False
    end
    object btnManual: TButton
      AlignWithMargins = True
      Left = 226
      Top = 4
      Width = 106
      Height = 37
      Align = alRight
      Caption = 'OK'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 0
      TabStop = False
    end
  end
  object Edit2: TEdit
    Left = 162
    Top = 171
    Width = 217
    Height = 28
    Hint = 'Enter client ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TextHint = 'Enter client ID'
  end
  object Edit1: TEdit
    Left = 162
    Top = 126
    Width = 217
    Height = 28
    Hint = 'Enter client ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Segoe UI'
    Font.Style = []
    MaxLength = 4
    ParentFont = False
    TabOrder = 1
    TextHint = 'Enter client ID'
  end
  object ComboBox1: TComboBox
    Left = 162
    Top = 82
    Width = 217
    Height = 23
    ItemIndex = 0
    TabOrder = 0
    Text = 'Credit'
    Items.Strings = (
      'Credit'
      'FSA'
      '')
  end
end
