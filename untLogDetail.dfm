object FrmLogDetail: TFrmLogDetail
  Left = 0
  Top = 0
  Caption = 'Log detail...'
  ClientHeight = 315
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 282
    Width = 635
    Height = 33
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitTop = 295
    object BBOK: TButton
      AlignWithMargins = True
      Left = 556
      Top = 4
      Width = 75
      Height = 25
      Align = alRight
      Caption = '&Ok'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 846
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 635
    Height = 176
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 170
  end
  object DBMemo1: TDBMemo
    Left = 0
    Top = 200
    Width = 635
    Height = 82
    Align = alBottom
    DataField = 'NOTE'
    DataSource = DM.DSLog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 176
    Width = 635
    Height = 24
    Align = alBottom
    TabOrder = 3
    ExplicitTop = 152
    object Label1: TLabel
      Left = 16
      Top = 5
      Width = 28
      Height = 13
      Caption = 'Memo'
    end
  end
end
