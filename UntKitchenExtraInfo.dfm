object FrmKitchenExtraInfo: TFrmKitchenExtraInfo
  Left = 0
  Top = 0
  Caption = 'Enter extra information for the Kitchen'
  ClientHeight = 480
  ClientWidth = 731
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
    Top = 439
    Width = 731
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 447
    ExplicitWidth = 550
    object Button1: TButton
      AlignWithMargins = True
      Left = 652
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
      ExplicitLeft = 624
      ExplicitTop = 8
      ExplicitHeight = 25
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 731
    Height = 224
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 472
    ExplicitHeight = 145
  end
  object TouchKeyboard1: TTouchKeyboard
    Left = 0
    Top = 224
    Width = 731
    Height = 215
    Align = alBottom
    GradientEnd = clSilver
    GradientStart = clGray
    Layout = 'Standard'
  end
end
