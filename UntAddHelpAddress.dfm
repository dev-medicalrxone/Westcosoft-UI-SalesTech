object FrmHelpAddress: TFrmHelpAddress
  Left = 354
  Top = 121
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = ' Help...'
  ClientHeight = 442
  ClientWidth = 611
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI Semibold'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object Label35: TLabel
    Left = 8
    Top = 4
    Width = 201
    Height = 25
    Caption = 'Setup del Programa'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -23
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 401
    Width = 611
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TButton
      Left = 491
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Exit'
      ModalResult = 1
      TabOrder = 0
    end
    object ESearchPat2: TEdit
      Left = 8
      Top = 9
      Width = 261
      Height = 21
      TabOrder = 1
      TextHint = 'Search'
      OnChange = ESearchPat2Change
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 29
    Width = 611
    Height = 372
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Index'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 265
        Height = 344
        Align = alLeft
        DataSource = DMMidas.dsHelp
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI Semibold'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DESCRIPCION'
            Title.Caption = 'Description'
            Width = 343
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INDICE'
            Title.Caption = 'Indice'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAPITULO'
            Title.Caption = 'Capitulo'
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 265
        Top = 0
        Width = 25
        Height = 344
        Align = alLeft
        TabOrder = 1
      end
      object DBMemo2: TDBMemo
        Left = 290
        Top = 0
        Width = 313
        Height = 344
        Align = alClient
        Color = clInfoBk
        DataField = 'DESCRIPCION_DETALLE'
        DataSource = DMMidas.dsHelp
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Description'
      ImageIndex = 1
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 603
        Height = 344
        Align = alClient
        Color = clInfoBk
        DataField = 'DESCRIPCION_DETALLE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 611
    Height = 29
    ButtonHeight = 29
    Caption = 'ToolBar3'
    Images = FrmMain.ImageListDB
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    object ToolButton3: TToolButton
      Left = 0
      Top = 0
      Hint = 'Append'
      Caption = 'ToolButton1000'
      ImageIndex = 0
      OnClick = ToolButton7Click
    end
    object ToolButton5: TToolButton
      Left = 23
      Top = 0
      Hint = 'Save'
      Caption = 'ToolButton1'
      ImageIndex = 1
      OnClick = ToolButton1Click
    end
    object ToolButton6: TToolButton
      Left = 46
      Top = 0
      Hint = 'Edit'
      Caption = 'ToolButton4'
      ImageIndex = 3
      OnClick = ToolButton2Click
    end
    object ToolButton27: TToolButton
      Left = 69
      Top = 0
      Hint = 'Cancel'
      Caption = 'ToolButton9'
      ImageIndex = 5
      OnClick = ToolButton4Click
    end
    object ToolButton10: TToolButton
      Left = 92
      Top = 0
      Hint = 'Delete'
      Caption = 'ToolButton10'
      ImageIndex = 4
      OnClick = ToolButton9Click
    end
    object ToolButton11: TToolButton
      Left = 115
      Top = 0
      Hint = 'Refresh'
      Caption = 'ToolButton8'
      ImageIndex = 2
      OnClick = ToolButton8Click
    end
    object ToolButton30: TToolButton
      Left = 138
      Top = 0
      Width = 8
      Caption = 'ToolButton30'
      ImageIndex = 3
      Style = tbsSeparator
    end
  end
end
