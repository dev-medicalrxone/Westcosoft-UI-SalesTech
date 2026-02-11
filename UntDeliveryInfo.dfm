object FrmDeliveryInfo: TFrmDeliveryInfo
  Left = 403
  Top = 211
  BorderStyle = bsDialog
  Caption = 'Informaci'#243'n de entrega'
  ClientHeight = 234
  ClientWidth = 435
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 435
    Height = 200
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 62
      Top = 16
      Width = 50
      Height = 13
      Alignment = taRightJustify
      Caption = 'NOMBRE:'
    end
    object Label2: TLabel
      Left = 51
      Top = 40
      Width = 61
      Height = 13
      Alignment = taRightJustify
      Caption = 'DIRECCION:'
    end
    object Label3: TLabel
      Left = 55
      Top = 104
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'TELEFONO:'
    end
    object Label4: TLabel
      Left = 43
      Top = 136
      Width = 69
      Height = 13
      Alignment = taRightJustify
      Caption = 'NUMERO PO:'
    end
    object Label5: TLabel
      Left = 20
      Top = 168
      Width = 92
      Height = 13
      Alignment = taRightJustify
      Caption = 'ENTREGADO POR:'
    end
    object Edit1: TEdit
      Left = 120
      Top = 12
      Width = 297
      Height = 21
      MaxLength = 30
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 120
      Top = 44
      Width = 297
      Height = 21
      MaxLength = 30
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 120
      Top = 68
      Width = 297
      Height = 21
      MaxLength = 30
      TabOrder = 2
    end
    object Edit5: TEdit
      Left = 120
      Top = 132
      Width = 113
      Height = 21
      MaxLength = 20
      TabOrder = 4
    end
    object Edit6: TEdit
      Left = 120
      Top = 164
      Width = 297
      Height = 21
      MaxLength = 30
      TabOrder = 5
    end
    object MaskEdit1: TMaskEdit
      Left = 120
      Top = 100
      Width = 81
      Height = 21
      EditMask = '!\(999\)000-0000;1;_'
      MaxLength = 13
      TabOrder = 3
      Text = '(   )   -    '
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 200
    Width = 435
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 1
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 276
      Top = 3
      Width = 75
      Height = 28
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
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 357
      Top = 3
      Width = 75
      Height = 28
      Align = alRight
      Cancel = True
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 2
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
  end
end
