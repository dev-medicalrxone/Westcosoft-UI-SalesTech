object FrmBarcodePrintQ: TFrmBarcodePrintQ
  Left = 0
  Top = 0
  Caption = 'Print Barcodes'
  ClientHeight = 439
  ClientWidth = 751
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 751
    Height = 349
    Align = alClient
    DataSource = DMMidas.dsBarcodePrintQ
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDblClick = ToolButton1Click
    Columns = <
      item
        Expanded = False
        FieldName = 'PRODUCT'
        Title.Caption = 'Product Description'
        Width = 254
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUCT_ID'
        Title.Caption = 'Product ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COPIES'
        Title.Caption = 'Copies'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 29
    Width = 751
    Height = 28
    Align = alTop
    TabOrder = 1
    object EditSearch: TEdit
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 225
      Height = 20
      Align = alLeft
      TabOrder = 0
      TextHint = 'Product Search'
      OnExit = EditSearchExit
      OnKeyPress = EditSearchKeyPress
      ExplicitHeight = 21
    end
    object CheckBox1: TCheckBox
      Left = 256
      Top = 6
      Width = 121
      Height = 17
      Caption = 'Show Pinting Dialog'
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 406
    Width = 751
    Height = 33
    Align = alBottom
    TabOrder = 2
    object Button1: TButton
      AlignWithMargins = True
      Left = 672
      Top = 4
      Width = 75
      Height = 25
      Align = alRight
      Caption = '&Close'
      ModalResult = 11
      TabOrder = 0
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 88
      Height = 25
      Align = alLeft
      Caption = 'Delete all items'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 751
    Height = 29
    Caption = 'ToolBar1'
    Images = FrmMain.ImageListDB
    TabOrder = 3
    object ToolButton2: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton2'
      ImageIndex = 1
    end
    object ToolButton4: TToolButton
      Left = 23
      Top = 0
      Caption = 'ToolButton4'
      ImageIndex = 3
      OnClick = ToolButton4Click
    end
    object ToolButton3: TToolButton
      Left = 46
      Top = 0
      Caption = 'ToolButton3'
      ImageIndex = 2
      OnClick = ToolButton3Click
    end
    object ToolButton5: TToolButton
      Left = 69
      Top = 0
      Caption = 'ToolButton5'
      ImageIndex = 4
      OnClick = ToolButton5Click
    end
    object ToolButton7: TToolButton
      Left = 92
      Top = 0
      Caption = 'ToolButton7'
      ImageIndex = 17
      OnClick = ToolButton7Click
    end
    object ToolButton1: TToolButton
      Left = 115
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 12
      OnClick = ToolButton1Click
    end
  end
end
