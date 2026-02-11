object FrmEbtOptions: TFrmEbtOptions
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'FrmEbtOptions'
  ClientHeight = 639
  ClientWidth = 266
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
    Width = 260
    Height = 20
    Align = alTop
    Caption = 'Food Stamp'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 84
  end
  object Label2: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 326
    Width = 260
    Height = 20
    Margins.Top = 20
    Align = alTop
    Caption = 'Cash'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitTop = 186
    ExplicitWidth = 33
  end
  object Button1: TButton
    AlignWithMargins = True
    Left = 3
    Top = 41
    Width = 260
    Height = 52
    Margins.Top = 15
    Align = alTop
    Caption = 'Purchase'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    AlignWithMargins = True
    Left = 3
    Top = 359
    Width = 260
    Height = 52
    Margins.Top = 10
    Align = alTop
    Caption = 'Purchase'
    TabOrder = 1
    OnClick = Button2Click
    ExplicitTop = 219
  end
  object Button3: TButton
    AlignWithMargins = True
    Left = 3
    Top = 424
    Width = 260
    Height = 52
    Margins.Top = 10
    Align = alTop
    Caption = 'Purchase with cashback'
    TabOrder = 2
    OnClick = Button3Click
    ExplicitTop = 284
  end
  object Button4: TButton
    AlignWithMargins = True
    Left = 3
    Top = 111
    Width = 260
    Height = 52
    Margins.Top = 15
    Align = alTop
    Caption = 'Refund'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    AlignWithMargins = True
    Left = 3
    Top = 489
    Width = 260
    Height = 52
    Margins.Top = 10
    Align = alTop
    Caption = 'Cash withdrawal'
    TabOrder = 4
    OnClick = Button5Click
    ExplicitTop = 349
  end
  object Button6: TButton
    AlignWithMargins = True
    Left = 3
    Top = 574
    Width = 260
    Height = 52
    Margins.Top = 30
    Align = alTop
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 5
    ExplicitTop = 434
  end
  object Button7: TButton
    AlignWithMargins = True
    Left = 3
    Top = 251
    Width = 260
    Height = 52
    Margins.Top = 15
    Align = alTop
    Caption = 'Cash withdrawal'
    TabOrder = 6
    OnClick = Button5Click
    ExplicitLeft = 6
    ExplicitTop = 119
  end
  object Button8: TButton
    AlignWithMargins = True
    Left = 3
    Top = 181
    Width = 260
    Height = 52
    Margins.Top = 15
    Align = alTop
    Caption = 'Purchase with cashback'
    TabOrder = 7
    OnClick = Button8Click
    ExplicitLeft = 6
    ExplicitTop = 119
  end
end
