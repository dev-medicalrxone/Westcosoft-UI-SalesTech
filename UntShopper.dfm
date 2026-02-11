object FrmShopper: TFrmShopper
  Left = 0
  Top = 0
  Caption = 'Shopper'
  ClientHeight = 539
  ClientWidth = 1071
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 29
    Width = 1071
    Height = 120
    Align = alTop
    DataSource = DMMidas.dsShopper
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRIPTION'
        Title.Caption = 'Description'
        Width = 221
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'START_DATE'
        Title.Caption = 'Start Date'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'END_DATE'
        Title.Caption = 'End Date'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ACTIVE'
        Title.Caption = 'Active'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 206
    Width = 1071
    Height = 295
    Align = alClient
    DataSource = DMMidas.dsShopperDetail
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUCT'
        ReadOnly = True
        Title.Caption = 'Product'
        Width = 279
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUCT_ID'
        ReadOnly = True
        Title.Caption = 'Product Id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COPIES'
        Title.Caption = 'Copies'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RETAIL_PRICE'
        ReadOnly = True
        Title.Caption = 'Retail Price'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COST'
        ReadOnly = True
        Title.Caption = 'Cost'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LAST_SPECIAL'
        ReadOnly = True
        Title.Caption = 'Last Special'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SPECIAL'
        Title.Caption = 'Special'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEFINE_SP'
        Title.Caption = 'Define Sales Promotion'
        Width = 314
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 501
    Width = 1071
    Height = 38
    Align = alBottom
    TabOrder = 2
    object Button1: TButton
      AlignWithMargins = True
      Left = 992
      Top = 4
      Width = 75
      Height = 30
      Align = alRight
      Caption = '&Close'
      ModalResult = 11
      TabOrder = 0
    end
    object Button3: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 157
      Height = 30
      Align = alLeft
      Caption = 'Apply batch Special Update'
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object ToolBar2: TToolBar
    Left = 0
    Top = 0
    Width = 1071
    Height = 29
    Caption = 'ToolBar1'
    Images = FrmMain.ImageListDB
    TabOrder = 3
    object ToolButton13: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton13'
      ImageIndex = 0
      OnClick = ToolButton13Click
    end
    object ToolButton2: TToolButton
      Left = 23
      Top = 0
      Caption = 'ToolButton2'
      ImageIndex = 1
    end
    object ToolButton44: TToolButton
      Left = 46
      Top = 0
      Caption = 'ToolButton44'
      ImageIndex = 3
      OnClick = ToolButton44Click
    end
    object ToolButton4: TToolButton
      Left = 69
      Top = 0
      Caption = 'ToolButton4'
      ImageIndex = 2
      OnClick = ToolButton4Click
    end
    object ToolButton5: TToolButton
      Left = 92
      Top = 0
      Caption = 'ToolButton5'
      ImageIndex = 4
      OnClick = ToolButton5Click
    end
    object ToolButton122: TToolButton
      Left = 115
      Top = 0
      Caption = 'ToolButton122'
      ImageIndex = 9
      OnClick = ToolButton122Click
    end
    object ToolButton333: TToolButton
      Left = 138
      Top = 0
      Caption = 'ToolButton333'
      ImageIndex = 11
      OnClick = ToolButton333Click
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 178
    Width = 1071
    Height = 28
    Align = alTop
    TabOrder = 4
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
  object ToolBar1: TToolBar
    Left = 0
    Top = 149
    Width = 1071
    Height = 29
    Caption = 'ToolBar1'
    Images = FrmMain.ImageListDB
    TabOrder = 5
    object ToolButton6: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton2'
      ImageIndex = 1
      OnClick = ToolButton6Click
    end
    object ToolButton8: TToolButton
      Left = 23
      Top = 0
      Caption = 'ToolButton4'
      ImageIndex = 3
      OnClick = ToolButton8Click
    end
    object ToolButton9: TToolButton
      Left = 46
      Top = 0
      Caption = 'ToolButton3'
      ImageIndex = 2
      OnClick = ToolButton3Click
    end
    object ToolButton10: TToolButton
      Left = 69
      Top = 0
      Caption = 'ToolButton5'
      ImageIndex = 4
      OnClick = ToolButton10Click
    end
    object ToolButton11: TToolButton
      Left = 92
      Top = 0
      Caption = 'ToolButton7'
      ImageIndex = 17
      OnClick = ToolButton7Click
    end
    object ToolButton12: TToolButton
      Left = 115
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 12
      OnClick = ToolButton1Click
    end
  end
end
