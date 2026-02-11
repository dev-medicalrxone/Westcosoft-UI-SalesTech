object FrmSalesPromo: TFrmSalesPromo
  Left = 0
  Top = 0
  Caption = 'Sales Promotions (BOGOF)'
  ClientHeight = 299
  ClientWidth = 549
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 263
    Width = 549
    Height = 36
    Align = alBottom
    TabOrder = 0
    object Button1: TButton
      AlignWithMargins = True
      Left = 389
      Top = 4
      Width = 75
      Height = 28
      Align = alRight
      Caption = 'Ok'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 0
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 470
      Top = 4
      Width = 75
      Height = 28
      Align = alRight
      Caption = 'Cancel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 29
    Width = 549
    Height = 60
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 10
      Top = 4
      Width = 19
      Height = 13
      Caption = 'QTY'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 74
      Top = 4
      Width = 69
      Height = 13
      Caption = 'QTY DISCOUT'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 162
      Top = 4
      Width = 55
      Height = 13
      Caption = 'DISCOUNT'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 264
      Top = 23
      Width = 33
      Height = 13
      Caption = 'Label4'
      Visible = False
    end
    object DBEdit1: TDBEdit
      Left = 10
      Top = 20
      Width = 49
      Height = 21
      DataField = 'QTY'
      DataSource = DMMidas.dsSalesPromo
      TabOrder = 0
      OnChange = DBEdit1Change
    end
    object DBEdit2: TDBEdit
      Left = 74
      Top = 20
      Width = 71
      Height = 21
      DataField = 'QTY_DISCOUT'
      DataSource = DMMidas.dsSalesPromo
      TabOrder = 1
      OnChange = DBEdit1Change
    end
    object DBEdit3: TDBEdit
      Left = 162
      Top = 20
      Width = 71
      Height = 21
      DataField = 'DISCOUNT'
      DataSource = DMMidas.dsSalesPromo
      TabOrder = 2
      OnChange = DBEdit1Change
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 549
    Height = 29
    ButtonWidth = 27
    Caption = 'ToolBar1'
    Images = FrmMain.ImageListDB
    TabOrder = 2
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object TlBtnPost: TToolButton
      Left = 27
      Top = 0
      Caption = 'TlBtnPost'
      ImageIndex = 1
      OnClick = TlBtnPostClick
    end
    object ToolButton16: TToolButton
      Left = 54
      Top = 0
      Caption = 'ToolButton16'
      ImageIndex = 3
      OnClick = ToolButton16Click
    end
    object TlBtnCancel: TToolButton
      Left = 81
      Top = 0
      Caption = 'TlBtnCancel'
      ImageIndex = 5
      OnClick = TlBtnCancelClick
    end
    object ToolButton5: TToolButton
      Left = 108
      Top = 0
      Caption = 'ToolButton5'
      ImageIndex = 4
      OnClick = ToolButton5Click
    end
    object ToolButton13: TToolButton
      Left = 135
      Top = 0
      Width = 8
      Caption = 'ToolButton13'
      ImageIndex = 10
      Style = tbsSeparator
    end
    object TlBtnRefresh: TToolButton
      Left = 143
      Top = 0
      Caption = 'TlBtnRefresh'
      ImageIndex = 2
      OnClick = TlBtnRefreshClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 89
    Width = 549
    Height = 174
    Align = alClient
    DataSource = DMMidas.dsSalesPromo
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'QTY'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTY_DISCOUT'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DISCOUNT'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEFINE'
        Width = 234
        Visible = True
      end>
  end
end
