object FrmEnterDescription: TFrmEnterDescription
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Enter description'
  ClientHeight = 264
  ClientWidth = 678
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
  object Panel1: TPanel
    Left = 0
    Top = 223
    Width = 678
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      AlignWithMargins = True
      Left = 599
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = '&Ok'
      ModalResult = 1
      TabOrder = 0
      ExplicitLeft = 519
      ExplicitTop = 3
    end
  end
  object TouchKeyboard1: TTouchKeyboard
    AlignWithMargins = True
    Left = 3
    Top = 40
    Width = 672
    Height = 180
    Align = alClient
    GradientEnd = clSilver
    GradientStart = clGray
    Layout = 'Standard'
  end
  object EditDescripcion: TEdit
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 672
    Height = 31
    Align = alTop
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 30
    ParentFont = False
    TabOrder = 0
    OnKeyPress = EditDescripcionKeyPress
  end
end
