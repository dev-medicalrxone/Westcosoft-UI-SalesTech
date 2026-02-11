object FrmReprintType: TFrmReprintType
  Left = 0
  Top = 0
  Caption = 'FrmReprintType'
  ClientHeight = 301
  ClientWidth = 266
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
    Top = 15
    Width = 260
    Height = 52
    Margins.Top = 15
    Align = alTop
    Caption = 'Merchant'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    AlignWithMargins = True
    Left = 3
    Top = 85
    Width = 260
    Height = 52
    Margins.Top = 15
    Align = alTop
    Caption = 'Customer'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    AlignWithMargins = True
    Left = 3
    Top = 155
    Width = 260
    Height = 52
    Margins.Top = 15
    Align = alTop
    Caption = 'Settle'
    TabOrder = 2
    OnClick = Button3Click
    ExplicitLeft = 8
  end
  object btnTest: TButton
    AlignWithMargins = True
    Left = 3
    Top = 225
    Width = 260
    Height = 52
    Margins.Top = 15
    Align = alTop
    Caption = 'Test'
    TabOrder = 3
    OnClick = btnTestClick
    ExplicitLeft = 6
    ExplicitTop = 163
  end
end
