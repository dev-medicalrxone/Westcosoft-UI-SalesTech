object FrmWebReceipt: TFrmWebReceipt
  Left = 0
  Top = 0
  Caption = 'FrmWebReceipt'
  ClientHeight = 577
  ClientWidth = 321
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  TextHeight = 15
  object WebBrowser1: TWebBrowser
    Left = 0
    Top = 0
    Width = 321
    Height = 552
    TabStop = False
    Align = alClient
    TabOrder = 0
    SelectedEngine = EdgeIfAvailable
    OnDocumentComplete = WebBrowser1DocumentComplete
    ControlData = {
      4C0000002D2100000D3900000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Button1: TButton
    Left = 0
    Top = 552
    Width = 321
    Height = 25
    Align = alBottom
    Caption = 'Button1'
    TabOrder = 1
    TabStop = False
    Visible = False
    OnClick = Button1Click
  end
end
