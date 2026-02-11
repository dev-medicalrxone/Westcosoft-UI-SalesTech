object FrmCheckDesc: TFrmCheckDesc
  Left = 281
  Top = 233
  Caption = 'Search'
  ClientHeight = 88
  ClientWidth = 297
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 79
    Height = 13
    Caption = 'Search Barcode'
  end
  object Panel1: TPanel
    Left = 0
    Top = 47
    Width = 297
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 218
      Top = 4
      Width = 75
      Height = 33
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
      ExplicitLeft = 209
      ExplicitTop = 8
      ExplicitHeight = 25
    end
  end
  object EditSearch: TEdit
    Left = 91
    Top = 13
    Width = 169
    Height = 21
    TabOrder = 1
    OnExit = EditSearchExit
    OnKeyPress = FormKeyPress
  end
end
