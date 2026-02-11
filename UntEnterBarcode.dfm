object FrmEnterBarcode: TFrmEnterBarcode
  Left = 0
  Top = 0
  Caption = 'Entre Barcde del Producto'
  ClientHeight = 134
  ClientWidth = 289
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
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 51
    Height = 13
    Caption = 'Barcode 1'
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 51
    Height = 13
    Caption = 'Barcode 2'
  end
  object Panel1: TPanel
    Left = 0
    Top = 93
    Width = 289
    Height = 41
    Align = alBottom
    TabOrder = 0
    object Button1: TButton
      Left = 200
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 0
    end
    object Button2: TButton
      Left = 120
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Ok'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 1
    end
  end
  object EditBarcode1: TEdit
    Left = 80
    Top = 24
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object EditBarcode2: TEdit
    Left = 80
    Top = 51
    Width = 145
    Height = 21
    TabOrder = 2
  end
end
