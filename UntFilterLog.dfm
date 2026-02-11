object FrmFilterLog: TFrmFilterLog
  Left = 364
  Top = 187
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Filter Log'
  ClientHeight = 229
  ClientWidth = 346
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 194
    Width = 346
    Height = 35
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 239
    object BitBtnOK: TButton
      AlignWithMargins = True
      Left = 186
      Top = 4
      Width = 75
      Height = 27
      Align = alRight
      Caption = '&Ok'
      ModalResult = 1
      TabOrder = 0
    end
    object BitBtnCancel: TButton
      AlignWithMargins = True
      Left = 267
      Top = 4
      Width = 75
      Height = 27
      Align = alRight
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 16
    Top = 8
    Width = 233
    Height = 21
    KeyField = 'USERNAME'
    ListSource = DMMidas.DSPasswords
    TabOrder = 1
    OnClick = DBLookupComboBox1Click
  end
  object CheckBoxByUser: TCheckBox
    Left = 256
    Top = 13
    Width = 65
    Height = 17
    Caption = 'By User'
    TabOrder = 2
  end
  object DateTimePickerDesde: TDateTimePicker
    Left = 16
    Top = 40
    Width = 97
    Height = 21
    Date = 37326.000000000000000000
    Time = 0.987289965298259600
    TabOrder = 3
  end
  object DateTimePickerHasta: TDateTimePicker
    Left = 16
    Top = 72
    Width = 97
    Height = 21
    Date = 37326.000000000000000000
    Time = 0.987289965298259600
    TabOrder = 4
  end
  object CheckBoxAll: TCheckBox
    Left = 16
    Top = 110
    Width = 137
    Height = 17
    Caption = 'All POS transactions'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object cbShowBackups: TCheckBox
    Left = 16
    Top = 158
    Width = 121
    Height = 17
    Caption = 'Show only Backps'
    TabOrder = 6
  end
  object cbUnsuccessful: TCheckBox
    Left = 16
    Top = 133
    Width = 137
    Height = 17
    Caption = 'Show unsuccessful only'
    TabOrder = 7
  end
end
