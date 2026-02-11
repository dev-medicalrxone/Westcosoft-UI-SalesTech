object FrmTimeCard: TFrmTimeCard
  Left = 0
  Top = 0
  Caption = 'Time Card'
  ClientHeight = 471
  ClientWidth = 911
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 54
    Width = 911
    Height = 365
    Align = alClient
    DataSource = DMMidas.dsTime_Card
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = tbEditClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Employee_define'
        Title.Caption = 'Employee'
        Width = 154
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PUNCH_IN_1'
        Title.Caption = 'Punch in 1'
        Width = 137
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PUNCH_OUT_1'
        Title.Caption = 'Punch out 1'
        Width = 132
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PUNCH_IN_2'
        Title.Caption = 'Punch in 2'
        Width = 142
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PUNCH_OUT_2'
        Title.Caption = 'Punch out 2'
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DAILY'
        Title.Caption = 'Daily'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APPROVED'
        Title.Caption = 'Approoved'
        Visible = True
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 419
    Width = 911
    Height = 33
    Align = alBottom
    TabOrder = 1
    object btnOk: TButton
      AlignWithMargins = True
      Left = 832
      Top = 4
      Width = 75
      Height = 25
      Align = alRight
      Caption = '&Ok'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 0
    end
  end
  object dxBarButton2: TToolBar
    Left = 0
    Top = 0
    Width = 911
    Height = 22
    AutoSize = True
    ButtonWidth = 119
    Caption = 'dxBarButton2'
    Images = FrmMain.ImageListDB
    List = True
    ParentShowHint = False
    ShowCaptions = True
    AllowTextButtons = True
    ShowHint = True
    TabOrder = 2
    object tbFilter: TToolButton
      Left = 0
      Top = 0
      Caption = 'Filter'
      ImageIndex = 25
      Style = tbsTextButton
      OnClick = tbFilterClick
    end
    object tbEdit: TToolButton
      Left = 55
      Top = 0
      Caption = 'tbEdit'
      ImageIndex = 3
      OnClick = tbEditClick
    end
    object ToolButton9: TToolButton
      Left = 79
      Top = 0
      Caption = 'ToolButton9'
      ImageIndex = 4
      OnClick = ToolButton9Click
    end
    object ToolButton8: TToolButton
      Left = 103
      Top = 0
      Caption = 'ToolButton8'
      ImageIndex = 2
      OnClick = ToolButton8Click
    end
    object ToolButton1: TToolButton
      Left = 127
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 6
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 151
      Top = 0
      Caption = 'Total hours worked'
      ImageIndex = 25
      Style = tbsTextButton
      OnClick = ToolButton2Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 22
    Width = 911
    Height = 32
    Align = alTop
    TabOrder = 3
    object dtp: TDatePicker
      AlignWithMargins = True
      Left = 4
      Top = 4
      Height = 24
      Align = alLeft
      Date = 43320.000000000000000000
      DateFormat = 'MM/dd/yyyy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      TabOrder = 0
      OnChange = dtpChange
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 452
    Width = 911
    Height = 19
    Panels = <
      item
        Width = 400
      end>
  end
  object qSumTotalTimeCard: TFDQuery
    Connection = DMMidas.FDConnection1
    Left = 115
    Top = 96
  end
end
