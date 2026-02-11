object FrmSartNewTab: TFrmSartNewTab
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Start New Tab'
  ClientHeight = 207
  ClientWidth = 307
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 15
  object Button1: TButton
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 301
    Height = 62
    Align = alTop
    Caption = 'Start a New Tab'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ImageIndex = 16
    ImageMargins.Left = 20
    Images = FrmMain.ImageList2
    ModalResult = 1
    ParentFont = False
    TabOrder = 0
  end
  object btnStartTable: TButton
    AlignWithMargins = True
    Left = 3
    Top = 71
    Width = 301
    Height = 62
    Align = alTop
    Caption = 'Start a New Table'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ImageIndex = 26
    ImageMargins.Left = 20
    Images = FrmMain.ImageList2
    ModalResult = 6
    ParentFont = False
    TabOrder = 1
  end
  object Button3: TButton
    AlignWithMargins = True
    Left = 3
    Top = 139
    Width = 301
    Height = 62
    Align = alTop
    Caption = 'Cancel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ImageIndex = 7
    ImageMargins.Left = 20
    Images = FrmMain.ImageList2
    ModalResult = 2
    ParentFont = False
    TabOrder = 2
  end
end
