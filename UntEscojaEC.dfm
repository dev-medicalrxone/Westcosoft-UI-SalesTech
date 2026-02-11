object FrmEscojaEC: TFrmEscojaEC
  Left = 507
  Top = 275
  Caption = 'Escoja'
  ClientHeight = 134
  ClientWidth = 310
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 94
    Width = 310
    Height = 40
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 231
      Top = 4
      Width = 75
      Height = 32
      Align = alRight
      Caption = 'OK'
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 1
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 232
      ExplicitTop = 8
      ExplicitHeight = 25
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 0
    Width = 310
    Height = 94
    Align = alClient
    Caption = 'ESTADO DE CUENTA'
    ItemIndex = 0
    Items.Strings = (
      'INDIVIDUAL'
      'GRUPAL')
    TabOrder = 1
    ExplicitHeight = 93
  end
end
