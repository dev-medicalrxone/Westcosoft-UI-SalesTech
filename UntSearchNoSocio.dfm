object FrmSearchNoSocio: TFrmSearchNoSocio
  Left = 462
  Top = 186
  Caption = 'Confirmar numero de socio'
  ClientHeight = 97
  ClientWidth = 228
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 62
    Width = 228
    Height = 35
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 160
      Top = 4
      Width = 64
      Height = 27
      Align = alRight
      Caption = 'OK'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 1
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 228
    Height = 62
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 121
      Height = 13
      Caption = 'Entre Numero de Socio:'
    end
    object EditSearch: TEdit
      Left = 16
      Top = 32
      Width = 201
      Height = 21
      TabOrder = 0
    end
  end
end
