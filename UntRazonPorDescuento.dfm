object FrmRazonDescuento: TFrmRazonDescuento
  Left = 202
  Top = 48
  BorderIcons = []
  Caption = 'Raz'#243'n por descuento o c'#225'mbio en precio'
  ClientHeight = 629
  ClientWidth = 860
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
    Top = 257
    Width = 860
    Height = 331
    Align = alClient
    TabOrder = 0
    ExplicitTop = 363
    ExplicitHeight = 225
    object TouchKeyboard1: TTouchKeyboard
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 852
      Height = 323
      Align = alClient
      GradientEnd = clSilver
      GradientStart = clGray
      Layout = 'Standard'
      ExplicitLeft = 1
      ExplicitTop = 48
      ExplicitWidth = 858
      ExplicitHeight = 180
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 588
    Width = 860
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 781
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'OK'
      Enabled = False
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
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 860
    Height = 257
    Align = alTop
    TabOrder = 2
    OnClick = cxRadioGroup1Click
    object cxRadioGroup1: TRadioGroup
      Left = 1
      Top = 1
      Width = 419
      Height = 255
      Align = alLeft
      Caption = 'Raz'#243'n por descuento'
      Items.Strings = (
        'Lealtad de cliente'
        'Producto con da'#241'o'
        'Tarjeta de descuento'
        'Sobre almacenamiento de productos'
        'Ciudadano de mayor edad'
        'Producto por expirar'
        'Empleado')
      TabOrder = 0
      OnClick = cxRadioGroup1Click
    end
    object Edit1: TEdit
      AlignWithMargins = True
      Left = 426
      Top = 4
      Width = 430
      Height = 249
      Align = alRight
      TabOrder = 1
      TextHint = 'Entre la raz'#243'n'
      OnChange = Edit1Change
      ExplicitLeft = 437
    end
  end
end
