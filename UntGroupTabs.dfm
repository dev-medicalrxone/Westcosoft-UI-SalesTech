object FrmGroupTabs: TFrmGroupTabs
  Left = 0
  Top = 0
  Caption = 'Group Tab'#39's'
  ClientHeight = 561
  ClientWidth = 1076
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 520
    Width = 1076
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 360
    ExplicitTop = 384
    ExplicitWidth = 185
  end
  object Panel2: TPanel
    Left = 489
    Top = 41
    Width = 104
    Height = 479
    Align = alLeft
    TabOrder = 1
    ExplicitLeft = 483
    ExplicitTop = 35
    object Button1: TButton
      Left = 13
      Top = 120
      Width = 75
      Height = 25
      Caption = '<='
      TabOrder = 0
    end
    object Button2: TButton
      Left = 13
      Top = 165
      Width = 75
      Height = 25
      Caption = '=>'
      TabOrder = 1
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 489
    Height = 479
    Align = alLeft
    DataSource = DMMidas.dsOpenTabs
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TRANSACTIONNUMBER'
        Title.Caption = 'Trans No.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUSTOMER'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEPHONE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRANSACTIONNUMBER_DEFINE'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 593
    Top = 41
    Width = 483
    Height = 479
    Align = alClient
    DataSource = DMMidas.dsOpenTabs2
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TRANSACTIONNUMBER'
        Title.Caption = 'Trans. No.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUSTOMER'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEPHONE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CREDIT_CARD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BALANCE'
        Visible = True
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1076
    Height = 41
    Align = alTop
    TabOrder = 4
    ExplicitLeft = 312
    ExplicitTop = 88
    ExplicitWidth = 185
    object DBComboBox1: TDBComboBox
      Left = 24
      Top = 12
      Width = 297
      Height = 23
      DataField = 'CUSTOMER'
      DataSource = DMMidas.dsOpenTabs
      TabOrder = 0
    end
  end
end
