object FrmRecipe: TFrmRecipe
  Left = 0
  Top = 0
  Caption = 'Recipe'
  ClientHeight = 464
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 241
    Width = 785
    Height = 182
    Align = alClient
    DataSource = DMMidas.dsRecipe
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PRODUCT_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRIPCION'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTY'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAIN_PRODUCT_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COST'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRICE'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 423
    Width = 785
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      AlignWithMargins = True
      Left = 625
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
    end
    object Button3: TButton
      AlignWithMargins = True
      Left = 706
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 25
    Width = 785
    Height = 216
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 12
      Top = 6
      Width = 69
      Height = 13
      Caption = 'DESCRIPCION'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 12
      Top = 47
      Width = 52
      Height = 13
      Caption = 'Qty Ounce'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 12
      Top = 88
      Width = 27
      Height = 13
      Caption = 'COST'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 12
      Top = 131
      Width = 30
      Height = 13
      Caption = 'PRICE'
      FocusControl = DBEdit4
    end
    object SpeedButton1: TSpeedButton
      Left = 408
      Top = 21
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object DBEdit1: TDBEdit
      Left = 12
      Top = 22
      Width = 394
      Height = 21
      DataField = 'DESCRIPCION'
      DataSource = DMMidas.dsRecipe
      Enabled = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 12
      Top = 63
      Width = 53
      Height = 21
      DataField = 'QTY'
      DataSource = DMMidas.dsRecipe
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 12
      Top = 104
      Width = 138
      Height = 21
      DataField = 'COST'
      DataSource = DMMidas.dsRecipe
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 12
      Top = 150
      Width = 138
      Height = 21
      DataField = 'PRICE'
      DataSource = DMMidas.dsRecipe
      TabOrder = 3
    end
    object DBMemo1: TDBMemo
      AlignWithMargins = True
      Left = 472
      Top = 4
      Width = 309
      Height = 208
      Align = alRight
      DataField = 'NOTE'
      DataSource = DMMidas.DSInventarioPiso
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Button2: TButton
      Left = 12
      Top = 181
      Width = 121
      Height = 25
      Caption = 'NEXT PRODUCT'
      TabOrder = 5
      OnClick = Button2Click
    end
  end
  object ToolBar2: TToolBar
    Left = 0
    Top = 0
    Width = 785
    Height = 25
    ButtonHeight = 25
    ButtonWidth = 32
    Caption = 'ToolBar1'
    Images = FrmMain.ImageListDB
    TabOrder = 3
    object TBPost: TToolButton
      Left = 0
      Top = 0
      Caption = 'TBPost'
      ImageIndex = 1
      OnClick = TBPostClick
    end
    object tbNewProduct: TToolButton
      Left = 32
      Top = 0
      Caption = 'tbNewProduct'
      ImageIndex = 0
      OnClick = SpeedButton1Click
    end
    object ToolButton3: TToolButton
      Left = 64
      Top = 0
      Caption = 'ToolButton3'
      ImageIndex = 3
    end
    object ToolButton5: TToolButton
      Left = 96
      Top = 0
      Caption = 'ToolButton5'
      ImageIndex = 4
      OnClick = ToolButton5Click
    end
    object ToolButton2: TToolButton
      Left = 128
      Top = 0
      Caption = 'ToolButton2'
      ImageIndex = 5
      OnClick = ToolButton2Click
    end
    object tbRefresh: TToolButton
      Left = 160
      Top = 0
      Caption = 'tbRefresh'
      ImageIndex = 2
      OnClick = tbRefreshClick
    end
  end
end
