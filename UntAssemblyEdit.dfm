object FrmAssemblyEdit: TFrmAssemblyEdit
  Left = 379
  Top = 259
  Caption = 'Entre Datos:'
  ClientHeight = 119
  ClientWidth = 424
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
    Width = 424
    Height = 78
    Align = alClient
    TabOrder = 0
    object DBText1: TDBText
      Left = 16
      Top = 8
      Width = 433
      Height = 17
      DataField = 'DESCRIPTION'
      DataSource = DMMidas.DSAssemblyDetail
    end
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 47
      Height = 13
      Caption = 'Cantidad'
    end
    object Label2: TLabel
      Left = 152
      Top = 32
      Width = 33
      Height = 13
      Caption = 'Costo:'
    end
    object Label3: TLabel
      Left = 296
      Top = 32
      Width = 31
      Height = 13
      Caption = 'Precio'
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 48
      Width = 121
      Height = 21
      DataField = 'QTY'
      DataSource = DMMidas.DSAssemblyDetail
      TabOrder = 0
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 152
      Top = 48
      Width = 121
      Height = 21
      DataField = 'COSTO'
      DataSource = DMMidas.DSAssemblyDetail
      TabOrder = 1
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit3: TDBEdit
      Left = 296
      Top = 48
      Width = 121
      Height = 21
      DataField = 'PRECIO'
      DataSource = DMMidas.DSAssemblyDetail
      TabOrder = 2
      OnKeyPress = DBEdit1KeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 78
    Width = 424
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 344
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Close'
      NumGlyphs = 2
      TabOrder = 0
    end
  end
end
