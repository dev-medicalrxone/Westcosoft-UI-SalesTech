object FrmImputBarcode: TFrmImputBarcode
  Left = 0
  Top = 0
  Caption = 'Input barcode'
  ClientHeight = 81
  ClientWidth = 259
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 208
    Top = 8
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = SpeedButton1Click
  end
  object EditBarcode: TEdit
    Left = 8
    Top = 8
    Width = 185
    Height = 21
    TabOrder = 0
    TextHint = 'Enter barcode'
  end
  object Panel1: TPanel
    Left = 0
    Top = 40
    Width = 259
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 232
    ExplicitTop = 72
    ExplicitWidth = 185
    object Button1: TButton
      AlignWithMargins = True
      Left = 180
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
      ExplicitLeft = 935
      ExplicitTop = 3
      ExplicitHeight = 31
    end
  end
end
