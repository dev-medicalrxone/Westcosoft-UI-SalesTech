object FrmViewCreditTrans: TFrmViewCreditTrans
  Left = 202
  Top = 139
  Caption = 'FrmViewCreditTrans'
  ClientHeight = 442
  ClientWidth = 680
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 680
    Height = 401
    Align = alClient
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 401
    Width = 680
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 593
      Top = 4
      Width = 83
      Height = 33
      Align = alRight
      Caption = '&Close'
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 448
      ExplicitTop = 6
      ExplicitHeight = 25
    end
  end
  object DSTrans: TDataSource
    Left = 352
    Top = 72
  end
end
