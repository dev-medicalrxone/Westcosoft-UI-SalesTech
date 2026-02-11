object FrmDuplicateTrans: TFrmDuplicateTrans
  Left = 0
  Top = 0
  Caption = 'FrmDuplicateTrans'
  ClientHeight = 137
  ClientWidth = 556
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object Label1: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 550
    Height = 25
    Align = alTop
    Alignment = taCenter
    Caption = 'Duplicate transaction. Select an option.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 25
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 307
  end
  object Button1: TButton
    Left = 8
    Top = 64
    Width = 121
    Height = 41
    Caption = 'Delete'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 148
    Top = 64
    Width = 121
    Height = 41
    Caption = 'Force'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 288
    Top = 64
    Width = 121
    Height = 41
    Caption = 'Print'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 424
    Top = 64
    Width = 121
    Height = 41
    Caption = 'Cancel'
    TabOrder = 3
    OnClick = Button4Click
  end
end
