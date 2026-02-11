object FrmEvertec: TFrmEvertec
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FrmEvertec'
  ClientHeight = 445
  ClientWidth = 798
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  TextHeight = 15
  object lblStatus: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 120
    Width = 7
    Height = 37
    Margins.Top = 120
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Button1: TButton
    Left = 40
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    TabStop = False
    Visible = False
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 5
    Top = 112
    Width = 785
    Height = 67
    TabStop = False
    Alignment = taCenter
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Button2: TButton
    Left = 40
    Top = 320
    Width = 97
    Height = 25
    Caption = 'Merchant copy'
    TabOrder = 3
    TabStop = False
    Visible = False
    OnClick = Button2Click
  end
  object indicator: TActivityIndicator
    Left = 379
    Top = 245
    IndicatorSize = aisXLarge
  end
  object btnClose: TButton
    Left = 360
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 4
    TabStop = False
    Visible = False
    OnClick = btnCloseClick
  end
  object Button3: TButton
    Left = 40
    Top = 351
    Width = 97
    Height = 25
    Caption = 'Customer copy'
    TabOrder = 5
    TabStop = False
    Visible = False
    OnClick = Button3Click
  end
  object Memo2: TMemo
    Left = 121
    Top = 231
    Width = 537
    Height = 186
    TabOrder = 6
    Visible = False
  end
  object tcpClient: TIdTCPClient
    ConnectTimeout = 0
    Port = 0
    ReadTimeout = -1
    Left = 128
    Top = 400
  end
end
