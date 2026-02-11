object FrmAssemblySelect: TFrmAssemblySelect
  Left = 298
  Top = 207
  Caption = 'Assembly'
  ClientHeight = 110
  ClientWidth = 263
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 263
    Height = 69
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 113
      Height = 13
      Caption = 'ENTRE # DE ASSEMBLY'
    end
    object Edit1: TEdit
      Left = 17
      Top = 27
      Width = 233
      Height = 21
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 69
    Width = 263
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 184
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      DoubleBuffered = True
      ModalResult = 1
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
    end
  end
end
