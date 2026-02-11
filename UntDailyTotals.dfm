object FrmDailyTotals: TFrmDailyTotals
  Left = 117
  Top = 119
  Caption = 'Daily Totals'
  ClientHeight = 615
  ClientWidth = 1256
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object DBGrid4: TDBGrid
    Left = 0
    Top = 0
    Width = 1120
    Height = 615
    Align = alClient
    DataSource = DMMidas.DTSDailyTotals
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid4DrawColumnCell
    OnDblClick = DBGrid4DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMPLEADO'
        Width = 183
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REGISTER'
        Title.Caption = '# CAJA'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL_COUNT'
        Title.Alignment = taRightJustify
        Title.Caption = 'CAJA'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL_READ'
        Title.Alignment = taRightJustify
        Title.Caption = 'LECTURA'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIFFERENCE_AMOUNT'
        Title.Alignment = taRightJustify
        Title.Caption = 'DIFERENCIA'
        Width = 90
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'OVRSHORT'
        Title.Alignment = taRightJustify
        Width = 93
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'SALESDATE'
        Title.Alignment = taRightJustify
        Width = 220
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS_CAJA_DEFINED'
        Title.Caption = 'STATUS CAJA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS_CUADRE_DEFINED'
        Title.Caption = 'STATUS CUADRE'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 1120
    Top = 0
    Width = 136
    Height = 615
    Align = alRight
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object ToolButton10: TButton
      AlignWithMargins = True
      Left = 2
      Top = 325
      Width = 132
      Height = 55
      Margins.Left = 2
      Margins.Top = 1
      Margins.Right = 2
      Margins.Bottom = 1
      Align = alTop
      Caption = 'End of Day'
      ImageIndex = 25
      Images = FrmMain.ImageList2
      TabOrder = 0
      OnClick = ToolButton10Click
    end
    object TlBtnPrevious: TButton
      AlignWithMargins = True
      Left = 2
      Top = 39
      Width = 132
      Height = 55
      Margins.Left = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alTop
      Caption = 'Prior     '
      ImageIndex = 50
      Images = FrmMain.ImageList2
      TabOrder = 1
      OnClick = TlBtnPreviousClick
    end
    object TlBtnNext: TButton
      AlignWithMargins = True
      Left = 2
      Top = 97
      Width = 132
      Height = 55
      Margins.Left = 2
      Margins.Top = 1
      Margins.Right = 2
      Margins.Bottom = 1
      Align = alTop
      Caption = 'Next      '
      ImageIndex = 49
      Images = FrmMain.ImageList2
      TabOrder = 2
      WordWrap = True
      OnClick = TlBtnNextClick
    end
    object ToolButton16: TButton
      AlignWithMargins = True
      Left = 2
      Top = 154
      Width = 132
      Height = 55
      Margins.Left = 2
      Margins.Top = 1
      Margins.Right = 2
      Margins.Bottom = 1
      Align = alTop
      Caption = 'Edit       '
      ImageIndex = 52
      Images = FrmMain.ImageList2
      TabOrder = 3
      OnClick = ToolButton16Click
    end
    object ToolButton17: TButton
      AlignWithMargins = True
      Left = 2
      Top = 439
      Width = 132
      Height = 55
      Margins.Left = 2
      Margins.Top = 1
      Margins.Right = 2
      Margins.Bottom = 1
      Align = alTop
      Caption = 'Delete  '
      ImageIndex = 6
      Images = FrmMain.ImageList2
      TabOrder = 4
      OnClick = ToolButton17Click
    end
    object TlBtnRefresh: TButton
      AlignWithMargins = True
      Left = 2
      Top = 382
      Width = 132
      Height = 55
      Margins.Left = 2
      Margins.Top = 1
      Margins.Right = 2
      Margins.Bottom = 1
      Align = alTop
      Caption = 'Refresh'
      ImageIndex = 53
      Images = FrmMain.ImageList2
      TabOrder = 5
      OnClick = TlBtnRefreshClick
    end
    object ToolButton23: TButton
      AlignWithMargins = True
      Left = 2
      Top = 268
      Width = 132
      Height = 55
      Margins.Left = 2
      Margins.Top = 1
      Margins.Right = 2
      Margins.Bottom = 1
      Align = alTop
      Caption = 'Recap   '
      ImageIndex = 44
      Images = FrmMain.ImageList2
      TabOrder = 6
      OnClick = ToolButton23Click
    end
    object ToolButton6: TButton
      AlignWithMargins = True
      Left = 2
      Top = 211
      Width = 132
      Height = 55
      Margins.Left = 2
      Margins.Top = 1
      Margins.Right = 2
      Margins.Bottom = 1
      Align = alTop
      Caption = 'Close All'
      ImageIndex = 51
      Images = FrmMain.ImageList2
      TabOrder = 7
      OnClick = ToolButton6Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 0
      Top = 0
      Width = 136
      Height = 36
      Align = alTop
      Date = 37320.000000000000000000
      Time = 0.543233865697402500
      TabOrder = 8
      OnChange = DateTimePicker1Change
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 2
      Top = 553
      Width = 132
      Height = 55
      Margins.Left = 2
      Margins.Top = 1
      Margins.Right = 2
      Margins.Bottom = 1
      Align = alTop
      Caption = 'Close'
      ImageIndex = 22
      Images = FrmMain.ImageList2
      TabOrder = 9
      OnClick = Button1Click
    end
    object BtnTips: TButton
      AlignWithMargins = True
      Left = 2
      Top = 496
      Width = 132
      Height = 55
      Margins.Left = 2
      Margins.Top = 1
      Margins.Right = 2
      Margins.Bottom = 1
      Align = alTop
      Caption = 'Tips'
      ImageIndex = 27
      Images = FrmMain.ImageList2
      TabOrder = 10
      OnClick = BtnTipsClick
    end
  end
end
