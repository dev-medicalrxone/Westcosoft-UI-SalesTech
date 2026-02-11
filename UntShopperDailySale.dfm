object FrmShopperDailySale: TFrmShopperDailySale
  Left = 0
  Top = 0
  Caption = 'Daily Sale'
  ClientHeight = 639
  ClientWidth = 1081
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar2: TToolBar
    Left = 0
    Top = 0
    Width = 1081
    Height = 29
    Caption = 'ToolBar1'
    Images = FrmMain.ImageListDB
    TabOrder = 0
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
    end
    object ToolButton333: TToolButton
      Left = 138
      Top = 0
      Caption = 'ToolButton333'
      ImageIndex = 11
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 29
    Width = 1081
    Height = 120
    Align = alTop
    DataSource = DMMidas.dsShopper
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ACTIVE'
        Title.Caption = 'Active'
        Width = 44
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
        FieldName = 'DAILY_SALE_START_TIME'
        Title.Caption = 'Start Time'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DAILY_SALE_END_TIME'
        Title.Caption = 'End Time'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERCENTAGE_DISCOUNT'
        Title.Caption = 'Percentage Discount'
        Width = 136
        Visible = True
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 149
    Width = 1081
    Height = 29
    Caption = 'ToolBar1'
    Images = FrmMain.ImageListDB
    TabOrder = 2
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
    end
    object ToolButton9: TToolButton
      Left = 46
      Top = 0
      Caption = 'ToolButton3'
      ImageIndex = 2
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
    end
    object ToolButton12: TToolButton
      Left = 115
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 12
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 178
    Width = 1081
    Height = 28
    Align = alTop
    TabOrder = 3
    ExplicitWidth = 1071
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
  object DBGrid2: TDBGrid
    Left = 0
    Top = 206
    Width = 1081
    Height = 395
    Align = alClient
    DataSource = DMMidas.dsShopperDetail
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
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
    Top = 601
    Width = 1081
    Height = 38
    Align = alBottom
    TabOrder = 5
    ExplicitTop = 501
    ExplicitWidth = 1071
    object Button1: TButton
      AlignWithMargins = True
      Left = 1002
      Top = 4
      Width = 75
      Height = 30
      Align = alRight
      Caption = '&Close'
      ModalResult = 11
      TabOrder = 0
      ExplicitLeft = 992
    end
    object Button3: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 205
      Height = 30
      Align = alLeft
      Caption = 'Activate Daily Special Update'
      TabOrder = 1
      OnClick = Button3Click
      ExplicitTop = 6
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 215
      Top = 4
      Width = 205
      Height = 30
      Align = alLeft
      Caption = 'Inactivate Daily Special Update'
      TabOrder = 2
      OnClick = Button2Click
      ExplicitTop = 6
    end
  end
end
