object FrmEscoja: TFrmEscoja
  Left = 435
  Top = 222
  Caption = 'FrmEscoja'
  ClientHeight = 136
  ClientWidth = 206
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 0
    Width = 206
    Height = 99
    Align = alClient
    Caption = 'Escoja tipo de reporte'
    ItemIndex = 0
    Items.Strings = (
      'Recibo'
      'Barcode')
    TabOrder = 0
    ExplicitHeight = 95
  end
  object Panel1: TPanel
    Left = 0
    Top = 99
    Width = 206
    Height = 37
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 46
      Top = 4
      Width = 75
      Height = 29
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
      ExplicitLeft = 31
      ExplicitTop = 6
      ExplicitHeight = 33
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 127
      Top = 4
      Width = 75
      Height = 29
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
      ExplicitLeft = 24
      ExplicitTop = 8
      ExplicitHeight = 25
    end
  end
end
