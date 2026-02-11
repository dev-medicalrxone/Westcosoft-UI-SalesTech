object FrmSelAuspicio: TFrmSelAuspicio
  Left = 321
  Top = 228
  Caption = 'Informaci'#243'n de auspicios'
  ClientHeight = 219
  ClientWidth = 360
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 360
    Height = 185
    Align = alClient
    BevelOuter = bvLowered
    Caption = ' '
    TabOrder = 0
    ExplicitWidth = 337
    ExplicitHeight = 70
    object Label1: TLabel
      Left = 24
      Top = 12
      Width = 38
      Height = 13
      Caption = 'Archivo'
    end
    object CheckBox1: TCheckBox
      Left = 24
      Top = 52
      Width = 97
      Height = 17
      Caption = 'Cliente'
      TabOrder = 0
      Visible = False
      OnClick = CheckBox1Click
    end
    object ComboBox1: TComboBox
      Left = 24
      Top = 76
      Width = 297
      Height = 21
      Style = csDropDownList
      Enabled = False
      TabOrder = 1
      OnChange = ComboBox1Change
    end
    object ComboBox2: TComboBox
      Left = 120
      Top = 76
      Width = 25
      Height = 21
      Style = csDropDownList
      TabOrder = 2
      Visible = False
    end
    object DateTimePicker2: TDateTimePicker
      Left = 176
      Top = 124
      Width = 145
      Height = 21
      Date = 37742.031559965300000000
      Time = 37742.031559965300000000
      Enabled = False
      TabOrder = 3
      Visible = False
    end
    object DateTimePicker1: TDateTimePicker
      Left = 24
      Top = 124
      Width = 145
      Height = 21
      Date = 37742.031450324100000000
      Time = 37742.031450324100000000
      Enabled = False
      TabOrder = 4
      Visible = False
    end
    object CheckBox2: TCheckBox
      Left = 24
      Top = 100
      Width = 97
      Height = 17
      Caption = 'Fecha'
      TabOrder = 5
      Visible = False
      OnClick = CheckBox2Click
    end
    object Edit1: TEdit
      Left = 24
      Top = 28
      Width = 273
      Height = 21
      TabOrder = 6
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 185
    Width = 360
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 1
    ExplicitLeft = 24
    ExplicitTop = 176
    ExplicitWidth = 337
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 217
      Top = 3
      Width = 67
      Height = 28
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
      ExplicitLeft = 196
      ExplicitHeight = 27
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 290
      Top = 3
      Width = 67
      Height = 28
      Align = alRight
      Cancel = True
      Caption = 'Cancelar'
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
      ExplicitLeft = 268
      ExplicitHeight = 27
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.txt'
    FileName = 'Auspicio.txt'
    Filter = 'Log File|*.log|Text File|*.txt'
    FilterIndex = 0
    InitialDir = 'C:\Program Files\WESCOM\Salestec'
    Left = 200
    Top = 8
  end
end
