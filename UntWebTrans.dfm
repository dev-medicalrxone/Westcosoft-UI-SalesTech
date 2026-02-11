object FrmWebTrans: TFrmWebTrans
  Left = 289
  Top = 195
  Caption = 'Transacciones de ventas a credito:'
  ClientHeight = 309
  ClientWidth = 364
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 268
    Width = 364
    Height = 41
    Align = alBottom
    TabOrder = 0
    object DBText1: TDBText
      Left = 72
      Top = 16
      Width = 65
      Height = 17
      DataField = 'DEUDA_WEB'
      DataSource = DMMidas.DSClientes
    end
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 64
      Height = 13
      Caption = 'Deuda Web:'
    end
    object BitBtn1: TBitBtn
      Left = 280
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Close'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 364
    Height = 25
    Caption = 'ToolBar1'
    Images = FrmMain.Images
    TabOrder = 1
    object ToolButton2: TToolButton
      Left = 0
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object cxDateEdit1: TDateTimePicker
      AlignWithMargins = True
      Left = 8
      Top = 0
      Width = 105
      Height = 22
      Align = alLeft
      Date = 43138.647187627310000000
      Time = 43138.647187627310000000
      TabOrder = 0
    end
    object ToolButton1: TToolButton
      Left = 113
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 212
      OnClick = ToolButton1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 25
    Width = 364
    Height = 243
    Align = alClient
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
end
