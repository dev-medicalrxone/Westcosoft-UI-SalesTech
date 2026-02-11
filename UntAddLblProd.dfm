object FrmAddLblProduct: TFrmAddLblProduct
  Left = 319
  Top = 264
  Width = 376
  Height = 153
  Caption = 'Añadir label'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 94
    Width = 368
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    Caption = '  '
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 298
      Top = 5
      Width = 33
      Height = 25
      Caption = ' '
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 332
      Top = 5
      Width = 33
      Height = 25
      Caption = ' '
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 368
    Height = 94
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 12
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = 'Descripción:'
    end
    object Label2: TLabel
      Left = 50
      Top = 38
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Precio:'
    end
    object Label3: TLabel
      Left = 38
      Top = 65
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cantidad:'
    end
    object Edit1: TEdit
      Left = 88
      Top = 8
      Width = 257
      Height = 21
      TabOrder = 0
      Text = 'Edit1'
    end
    object ComboBox1: TComboBox
      Left = 88
      Top = 34
      Width = 137
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Text = 'ComboBox1'
    end
    object Edit2: TEdit
      Left = 88
      Top = 61
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'Edit2'
    end
  end
end
