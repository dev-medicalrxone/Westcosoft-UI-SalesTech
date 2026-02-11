object FrmServicios: TFrmServicios
  Left = 0
  Top = 0
  Caption = 'Servicios'
  ClientHeight = 117
  ClientWidth = 376
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 78
    Width = 376
    Height = 39
    Align = alBottom
    TabOrder = 0
    object Button1: TButton
      AlignWithMargins = True
      Left = 310
      Top = 4
      Width = 62
      Height = 31
      Align = alRight
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ExplicitLeft = 309
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 242
      Top = 4
      Width = 62
      Height = 31
      Align = alRight
      Caption = 'Ok'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 240
    end
    object CBCobrarImpuesto: TCheckBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 111
      Height = 31
      Align = alLeft
      Caption = 'Cobrar impuesto'
      Checked = True
      State = cbChecked
      TabOrder = 2
      ExplicitLeft = 16
      ExplicitTop = 8
      ExplicitHeight = 17
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 376
    Height = 78
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 79
    ExplicitTop = 29
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 240
      Top = 15
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object Label2: TLabel
      Left = 13
      Top = 15
      Width = 111
      Height = 13
      Caption = 'Descripci'#243'n del Servicio'
    end
    object EditDescripcion: TEdit
      Left = 13
      Top = 34
      Width = 209
      Height = 21
      TabOrder = 0
      OnKeyPress = EditDescripcionKeyPress
    end
    object EditValor: TEdit
      Left = 240
      Top = 34
      Width = 121
      Height = 21
      Alignment = taRightJustify
      TabOrder = 1
      OnExit = EditValorExit
      OnKeyPress = EditDescripcionKeyPress
    end
  end
end
