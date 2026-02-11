object FrmEditBarcodePrintQ: TFrmEditBarcodePrintQ
  Left = 0
  Top = 0
  Caption = 'Edit Print barcodes Queries'
  ClientHeight = 183
  ClientWidth = 394
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 48
    Height = 13
    Caption = 'PRODUCT'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 32
    Top = 56
    Width = 11
    Height = 13
    Caption = 'ID'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 32
    Top = 96
    Width = 37
    Height = 13
    Caption = 'COPIES'
    FocusControl = DBEdit3
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 29
    Width = 289
    Height = 21
    TabStop = False
    DataField = 'PRODUCT'
    DataSource = DMMidas.dsBarcodePrintQ
    ReadOnly = True
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit
    Left = 32
    Top = 72
    Width = 134
    Height = 21
    TabStop = False
    DataField = 'PRODUCT_ID'
    DataSource = DMMidas.dsBarcodePrintQ
    ReadOnly = True
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object DBEdit3: TDBEdit
    Left = 32
    Top = 112
    Width = 134
    Height = 21
    DataField = 'COPIES'
    DataSource = DMMidas.dsBarcodePrintQ
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 151
    Width = 394
    Height = 32
    Align = alBottom
    TabOrder = 3
    ExplicitTop = 335
    object Button1: TButton
      AlignWithMargins = True
      Left = 234
      Top = 4
      Width = 75
      Height = 24
      Align = alRight
      Caption = '&Ok'
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 315
      Top = 4
      Width = 75
      Height = 24
      Align = alRight
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
end
