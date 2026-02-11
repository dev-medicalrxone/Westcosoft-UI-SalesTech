object FrmEscojaFechas: TFrmEscojaFechas
  Left = 527
  Top = 271
  Caption = 'Select'
  ClientHeight = 111
  ClientWidth = 202
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 13
  object Desde: TDateTimePicker
    Left = 40
    Top = 8
    Width = 105
    Height = 21
    Date = 43326.000000000000000000
    Time = 0.489538101850485000
    TabOrder = 1
  end
  object Hasta: TDateTimePicker
    Left = 40
    Top = 45
    Width = 105
    Height = 21
    Date = 43326.000000000000000000
    Time = 0.489589282413362500
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 77
    Width = 202
    Height = 34
    Align = alBottom
    TabOrder = 0
    object btnOk: TButton
      AlignWithMargins = True
      Left = 123
      Top = 4
      Width = 75
      Height = 26
      Align = alRight
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
    end
  end
end
