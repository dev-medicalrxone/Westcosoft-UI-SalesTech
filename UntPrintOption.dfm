object FrmPrintingOption: TFrmPrintingOption
  Left = 0
  Top = 0
  Caption = 'Printing option'
  ClientHeight = 130
  ClientWidth = 304
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
  object CBPrint: TCheckBox
    Left = 24
    Top = 24
    Width = 97
    Height = 17
    Caption = 'Print'
    Checked = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 0
  end
  object CBemail: TCheckBox
    Left = 24
    Top = 56
    Width = 137
    Height = 17
    Caption = 'Send by email'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 89
    Width = 304
    Height = 41
    Align = alBottom
    TabOrder = 2
    object Button1: TButton
      AlignWithMargins = True
      Left = 225
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = '&Ok'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 157
      ExplicitTop = 0
      ExplicitHeight = 25
    end
  end
end
