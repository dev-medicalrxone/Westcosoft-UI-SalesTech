object FrmSeleccioneOpcion: TFrmSeleccioneOpcion
  Left = 421
  Top = 239
  Caption = 'Report'
  ClientHeight = 215
  ClientWidth = 242
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 0
    Width = 242
    Height = 182
    Align = alClient
    Caption = 'Seleccione Opci'#243'n'
    ItemIndex = 0
    Items.Strings = (
      'Barcode .75 x 2.00'
      'Barcode 1.25 x 2.00'
      'Barcode .5 x 2 (Prendas)'
      'Barcode 1.00 x 2.00'
      'Commissions')
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 182
    Width = 242
    Height = 33
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 163
      Top = 4
      Width = 75
      Height = 25
      Align = alRight
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
  end
end
