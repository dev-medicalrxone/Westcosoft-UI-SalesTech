object FrmCobroRecetas: TFrmCobroRecetas
  Left = 186
  Top = 127
  Caption = 'Cobro de Recetas'
  ClientHeight = 417
  ClientWidth = 760
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 760
    Height = 383
    Align = alClient
    BevelOuter = bvLowered
    Caption = ' '
    TabOrder = 0
    TabStop = True
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 70
      Height = 13
      Caption = 'DESCRIPCION'
    end
    object Label2: TLabel
      Left = 240
      Top = 8
      Width = 25
      Height = 13
      Caption = 'DEPT'
    end
    object Label3: TLabel
      Left = 396
      Top = 8
      Width = 27
      Height = 13
      Caption = 'CANT'
    end
    object Label4: TLabel
      Left = 480
      Top = 8
      Width = 38
      Height = 13
      Caption = 'PRECIO'
    end
    object EditDescripcion: TEdit
      Left = 8
      Top = 24
      Width = 225
      Height = 21
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 240
      Top = 24
      Width = 145
      Height = 21
      Enabled = False
      TabOrder = 1
      TabStop = False
      Text = '99'
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 62
      Width = 977
      Height = 329
      Caption = 'Keyboard'
      TabOrder = 2
      object TouchKeyboard1: TTouchKeyboard
        Left = 7
        Top = 19
        Width = 744
        Height = 289
        GradientEnd = clSilver
        GradientStart = clGray
        Layout = 'Standard'
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 383
    Width = 760
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 1
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 601
      Top = 3
      Width = 75
      Height = 28
      Align = alRight
      Caption = 'OK'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 1
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 554
      ExplicitTop = 14
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 682
      Top = 3
      Width = 75
      Height = 28
      Align = alRight
      Cancel = True
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 2
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      ExplicitLeft = 560
      ExplicitTop = 6
      ExplicitHeight = 25
    end
  end
end
