object FrmRepConfig: TFrmRepConfig
  Left = 270
  Top = 156
  Caption = 'Report configuration...'
  ClientHeight = 189
  ClientWidth = 287
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 35
    Height = 13
    Caption = 'Desde:'
  end
  object Label2: TLabel
    Left = 32
    Top = 43
    Width = 32
    Height = 13
    Caption = 'Hasta:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 151
    Width = 287
    Height = 38
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 145
      Top = 4
      Width = 66
      Height = 30
      Align = alRight
      Caption = 'OK'
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 1
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 143
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 217
      Top = 4
      Width = 66
      Height = 30
      Align = alRight
      Cancel = True
      Caption = 'Cancel'
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 2
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
      ExplicitLeft = 216
    end
  end
  object DateTimePickerDesde: TDateTimePicker
    Left = 99
    Top = 8
    Width = 89
    Height = 21
    Date = 37307.555988564800000000
    Time = 37307.555988564800000000
    TabOrder = 1
  end
  object DateTimePickerHasta: TDateTimePicker
    Left = 99
    Top = 36
    Width = 89
    Height = 21
    Date = 37307.555988564800000000
    Time = 37307.555988564800000000
    TabOrder = 2
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 99
    Top = 65
    Width = 161
    Height = 21
    KeyField = 'USERNAME'
    ListSource = DMMidas.DSCDSPasswords
    TabOrder = 3
    OnClick = DBLookupComboBox1Click
  end
  object ComboBoxNoCaja: TComboBox
    Left = 99
    Top = 122
    Width = 145
    Height = 21
    TabOrder = 4
    Text = '0'
    OnClick = ComboBoxNoCajaClick
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10')
  end
  object ComboBoxTurno: TComboBox
    Left = 99
    Top = 94
    Width = 145
    Height = 21
    TabOrder = 5
    Text = '0'
    OnClick = ComboBoxTurnoClick
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10')
  end
  object CheckBoxUsuario: TCheckBox
    Left = 32
    Top = 71
    Width = 57
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Usuario'
    TabOrder = 6
  end
  object CheckBoxTurno: TCheckBox
    Left = 32
    Top = 98
    Width = 57
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Turno'
    TabOrder = 7
  end
  object CheckBoxCaja: TCheckBox
    Left = 32
    Top = 126
    Width = 57
    Height = 17
    Alignment = taLeftJustify
    Caption = '# Caja'
    TabOrder = 8
  end
end
