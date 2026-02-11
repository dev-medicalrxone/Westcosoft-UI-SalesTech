object FrmFilterTimeCard: TFrmFilterTimeCard
  Left = 0
  Top = 0
  Caption = 'Time Card Filter'
  ClientHeight = 246
  ClientWidth = 299
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
  object Label1: TLabel
    Left = 40
    Top = 13
    Width = 24
    Height = 13
    Caption = 'From'
  end
  object Label2: TLabel
    Left = 40
    Top = 61
    Width = 12
    Height = 13
    Caption = 'To'
  end
  object Label3: TLabel
    Left = 40
    Top = 116
    Width = 46
    Height = 13
    Caption = 'Employee'
  end
  object dtpFrom: TDateTimePicker
    Left = 40
    Top = 32
    Width = 186
    Height = 21
    Date = 43361.890755208330000000
    Time = 43361.890755208330000000
    TabOrder = 0
  end
  object dtpTo: TDateTimePicker
    Left = 40
    Top = 80
    Width = 186
    Height = 21
    Date = 43361.890755208330000000
    Time = 43361.890755208330000000
    TabOrder = 1
  end
  object DBLookupComboBox1: TDBLookupComboBox
    AlignWithMargins = True
    Left = 40
    Top = 131
    Width = 201
    Height = 21
    KeyField = 'USERNAME'
    ListField = 'USERNAME'
    ListSource = DMMidas.DSPasswords
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 205
    Width = 299
    Height = 41
    Align = alBottom
    TabOrder = 3
    ExplicitLeft = 248
    ExplicitTop = 184
    ExplicitWidth = 185
    object Button1: TButton
      AlignWithMargins = True
      Left = 220
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 0
      ExplicitLeft = 360
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 139
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 1
      ExplicitLeft = 256
      ExplicitTop = 0
      ExplicitHeight = 25
    end
  end
  object cbFilterByEmp: TCheckBox
    Left = 40
    Top = 168
    Width = 97
    Height = 17
    Caption = 'Filter by Employee'
    TabOrder = 4
  end
end
