object FrmPunchInOut: TFrmPunchInOut
  Left = 0
  Top = 0
  Caption = 'Time Stamp'
  ClientHeight = 169
  ClientWidth = 344
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LabelTime: TLabel
    Left = 40
    Top = 16
    Width = 47
    Height = 13
    Caption = 'LabelTime'
  end
  object btnPunchInOut: TButton
    Left = 40
    Top = 48
    Width = 249
    Height = 41
    Caption = 'Record time stamp'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnPunchInOutClick
  end
  object Panel3: TPanel
    Left = 0
    Top = 136
    Width = 344
    Height = 33
    Align = alBottom
    TabOrder = 1
    object btnOk: TButton
      AlignWithMargins = True
      Left = 265
      Top = 4
      Width = 75
      Height = 25
      Align = alRight
      Caption = '&Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 0
    end
  end
  object IdTime1: TIdTime
    BaseDate = 2.000000000000000000
    Left = 304
    Top = 16
  end
end
