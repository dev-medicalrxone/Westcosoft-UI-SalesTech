object FrmProcess832: TFrmProcess832
  Left = 0
  Top = 0
  Caption = 'Update Prices 832'
  ClientHeight = 600
  ClientWidth = 988
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnResize = FormResize
  TextHeight = 15
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 988
    Height = 117
    Align = alTop
    ParentBackground = False
    TabOrder = 0
    object Label5: TLabel
      Left = 26
      Top = 36
      Width = 45
      Height = 15
      Caption = 'File Date'
    end
    object Label11: TLabel
      Left = 26
      Top = 60
      Width = 68
      Height = 15
      Caption = 'Departments'
    end
    object cboDate: TComboBox
      Left = 100
      Top = 31
      Width = 162
      Height = 23
      TabOrder = 0
      OnChange = cboControlChange
    end
    object cboDpto: TComboBox
      Left = 100
      Top = 57
      Width = 315
      Height = 23
      TabOrder = 1
      OnChange = cboControlChange
    end
    object GroupBox1: TGroupBox
      Left = 441
      Top = 18
      Width = 344
      Height = 65
      TabOrder = 2
      object Label12: TLabel
        Left = 41
        Top = 36
        Width = 38
        Height = 15
        Alignment = taCenter
        Caption = '0 Items'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 140
        Top = 37
        Width = 38
        Height = 15
        Alignment = taCenter
        Caption = '0 Items'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 240
        Top = 36
        Width = 38
        Height = 15
        Alignment = taCenter
        Caption = '0 Items'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object RadioButton1: TRadioButton
        Left = 24
        Top = 13
        Width = 73
        Height = 17
        Caption = 'All Types'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rbOnClick
      end
      object RadioButton2: TRadioButton
        Left = 123
        Top = 14
        Width = 78
        Height = 17
        Caption = 'Actives'
        TabOrder = 1
        OnClick = rbOnClick
      end
      object RadioButton3: TRadioButton
        Left = 223
        Top = 13
        Width = 82
        Height = 17
        Caption = 'Inactives'
        TabOrder = 2
        OnClick = rbOnClick
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 89
      Width = 986
      Height = 27
      Align = alBottom
      BevelOuter = bvNone
      Ctl3D = False
      ParentBackground = False
      ParentCtl3D = False
      ShowCaption = False
      TabOrder = 3
      StyleElements = []
      object Panel2: TPanel
        Left = 753
        Top = 0
        Width = 233
        Height = 27
        Align = alRight
        BevelOuter = bvNone
        Caption = 'Panel2'
        ParentBackground = False
        ShowCaption = False
        TabOrder = 0
        object chkAllDismiss: TCheckBox
          Left = 60
          Top = 4
          Width = 17
          Height = 23
          Caption = 'chkAllDismiss'
          TabOrder = 0
        end
        object chkAllRemove: TCheckBox
          Left = 160
          Top = 7
          Width = 17
          Height = 17
          Caption = 'chkAllRemove'
          TabOrder = 1
        end
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 547
    Width = 988
    Height = 53
    Align = alBottom
    ParentBackground = False
    TabOrder = 1
    object Panel7: TPanel
      Left = 754
      Top = 1
      Width = 233
      Height = 51
      Align = alRight
      BevelOuter = bvNone
      Ctl3D = False
      ParentBackground = False
      ParentCtl3D = False
      TabOrder = 0
      StyleElements = [seFont, seClient]
      object btnCancel: TButton
        Left = 38
        Top = 16
        Width = 75
        Height = 25
        Caption = 'CANCEL'
        TabOrder = 0
        OnClick = btnCancelClick
      end
      object btnProcess: TButton
        Left = 134
        Top = 16
        Width = 75
        Height = 25
        Caption = 'PROCESS'
        TabOrder = 1
        OnClick = btnProcessClick
      end
    end
  end
  object DBGridProcess832: TDBGrid
    Left = 0
    Top = 117
    Width = 988
    Height = 430
    Align = alClient
    Color = clWhite
    DataSource = DMMidas.DSProcess832
    DrawingStyle = gdsClassic
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'Department'
        ReadOnly = True
        Title.Caption = 'DEPARTMENT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'DEVICE ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'UPC'
        ReadOnly = True
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRIPCION'
        Title.Alignment = taCenter
        Title.Caption = 'DESCRIPTION'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEND_NUM'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'ITEM#'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unit_costP'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'CURR.COST'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unit_cost'
        Title.Alignment = taCenter
        Title.Caption = 'NEW COST'
        Width = 136
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lp1P'
        Title.Alignment = taCenter
        Title.Caption = 'CURR.RETAIL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LP1'
        Title.Alignment = taCenter
        Title.Caption = 'NEW RETAIL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DifGM'
        Title.Alignment = taCenter
        Title.Caption = '% Gm Diff'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DifPrice'
        Title.Alignment = taCenter
        Title.Caption = 'Price Diff.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Gm1P'
        Title.Alignment = taCenter
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'inactive'
        ReadOnly = True
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DISMISS'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'REMOVE'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Gm1'
        Visible = False
      end>
  end
end
