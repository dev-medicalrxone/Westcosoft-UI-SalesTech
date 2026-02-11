object FrmSplitTab: TFrmSplitTab
  Left = 0
  Top = 0
  Caption = 'Split TAB'
  ClientHeight = 562
  ClientWidth = 1263
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1263
    Height = 49
    Align = alTop
    TabOrder = 0
    object DBLookupComboBox1: TDBLookupComboBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 509
      Height = 41
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'CUSTOMER'
      ListField = 'CUSTOMER'
      ListSource = DMMidas.dsOpenTabs
      ParentFont = False
      TabOrder = 0
      OnCloseUp = DBLookupComboBox1CloseUp
    end
    object DBLookupComboBox2: TDBLookupComboBox
      AlignWithMargins = True
      Left = 582
      Top = 4
      Width = 415
      Height = 41
      Margins.Left = 66
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'CUSTOMER'
      ListField = 'CUSTOMER'
      ListSource = DMMidas.dsOpenTabs2
      ParentFont = False
      TabOrder = 1
      OnCloseUp = DBLookupComboBox2CloseUp
    end
  end
  object Panel3: TPanel
    Left = -160
    Top = 314
    Width = 1024
    Height = 201
    Caption = 'Panel3'
    TabOrder = 1
    object TouchKeyboard1: TTouchKeyboard
      Left = -39
      Top = -116
      Width = 1041
      Height = 199
      GradientEnd = clSilver
      GradientStart = clGray
      Layout = 'Standard'
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 448
    Width = 1263
    Height = 114
    Align = alBottom
    TabOrder = 2
    object Label5: TLabel
      Left = 149
      Top = 1
      Width = 72
      Height = 25
      Caption = 'Subtotal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Font.Quality = fqClearType
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 149
      Top = 28
      Width = 78
      Height = 25
      Caption = 'Tax Mun.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Font.Quality = fqClearType
      ParentFont = False
      Transparent = True
    end
    object DBText1: TDBText
      Left = 373
      Top = 28
      Width = 122
      Height = 25
      Alignment = taRightJustify
      DataField = 'TAX'
      DataSource = DMMidas.DTSTransHead
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Font.Quality = fqClearType
      ParentFont = False
    end
    object Label4: TLabel
      Left = 149
      Top = 55
      Width = 90
      Height = 25
      Caption = 'Tax Estatal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Font.Quality = fqClearType
      ParentFont = False
      Transparent = True
    end
    object DBText2: TDBText
      Left = 373
      Top = 55
      Width = 122
      Height = 25
      Alignment = taRightJustify
      DataField = 'TAX_ESTATAL'
      DataSource = DMMidas.DTSTransHead
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Font.Quality = fqClearType
      ParentFont = False
    end
    object Label3: TLabel
      Left = 149
      Top = 82
      Width = 41
      Height = 25
      Caption = 'Total'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Font.Quality = fqClearType
      ParentFont = False
      Transparent = True
    end
    object DBText3: TDBText
      Left = 373
      Top = 82
      Width = 122
      Height = 25
      Alignment = taRightJustify
      DataField = 'TOTAL'
      DataSource = DMMidas.DTSTransHead
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Font.Quality = fqClearType
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 373
      Top = 5
      Width = 122
      Height = 25
      Alignment = taRightJustify
      DataField = 'SUBTOTAL'
      DataSource = DMMidas.DTSTransHead
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Font.Quality = fqClearType
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 949
      Top = 1
      Width = 122
      Height = 25
      Alignment = taRightJustify
      DataField = 'SUBTOTAL'
      DataSource = DMMidas.DSHead
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Font.Quality = fqClearType
      ParentFont = False
    end
    object Label2: TLabel
      Left = 725
      Top = 1
      Width = 72
      Height = 25
      Caption = 'Subtotal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Font.Quality = fqClearType
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 725
      Top = 28
      Width = 78
      Height = 25
      Caption = 'Tax Mun.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Font.Quality = fqClearType
      ParentFont = False
      Transparent = True
    end
    object DBText6: TDBText
      Left = 949
      Top = 28
      Width = 122
      Height = 25
      Alignment = taRightJustify
      DataField = 'TAX'
      DataSource = DMMidas.DSHead
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Font.Quality = fqClearType
      ParentFont = False
    end
    object Label7: TLabel
      Left = 725
      Top = 55
      Width = 90
      Height = 25
      Caption = 'Tax Estatal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Font.Quality = fqClearType
      ParentFont = False
      Transparent = True
    end
    object DBText7: TDBText
      Left = 949
      Top = 55
      Width = 122
      Height = 25
      Alignment = taRightJustify
      DataField = 'TAX_ESTATAL'
      DataSource = DMMidas.DSHead
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Font.Quality = fqClearType
      ParentFont = False
    end
    object DBText8: TDBText
      Left = 949
      Top = 81
      Width = 122
      Height = 25
      Alignment = taRightJustify
      DataField = 'TOTAL'
      DataSource = DMMidas.DSHead
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Font.Quality = fqClearType
      ParentFont = False
    end
    object Label8: TLabel
      Left = 725
      Top = 81
      Width = 41
      Height = 25
      Caption = 'Total'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Font.Quality = fqClearType
      ParentFont = False
      Transparent = True
    end
  end
  object Panel5: TPanel
    Left = 1091
    Top = 49
    Width = 172
    Height = 399
    Align = alRight
    TabOrder = 3
    object Button1: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 164
      Height = 57
      Align = alTop
      Caption = 'BEGIN TAB'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 32
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 4
      Top = 256
      Width = 164
      Height = 57
      Align = alTop
      Caption = 'IMPORT TAB'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 11
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button8: TButton
      AlignWithMargins = True
      Left = 4
      Top = 130
      Width = 164
      Height = 57
      Align = alTop
      Caption = 'GROUP TAB'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 26
      ParentFont = False
      TabOrder = 2
      OnClick = Button8Click
    end
    object Button5: TButton
      AlignWithMargins = True
      Left = 4
      Top = 67
      Width = 164
      Height = 57
      Align = alTop
      Caption = 'SHOW MY TABS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 12
      ParentFont = False
      TabOrder = 3
      OnClick = Button5Click
    end
    object btnOk: TButton
      AlignWithMargins = True
      Left = 4
      Top = 319
      Width = 164
      Height = 57
      Align = alTop
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 4
    end
    object btnAllTabs: TButton
      AlignWithMargins = True
      Left = 4
      Top = 193
      Width = 164
      Height = 57
      Align = alTop
      Caption = 'ALL TABS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 44
      ParentFont = False
      TabOrder = 5
      OnClick = btnAllTabsClick
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 49
    Width = 1091
    Height = 399
    Align = alClient
    TabOrder = 4
    object DBGrid2: TDBGrid
      Left = 579
      Top = 1
      Width = 511
      Height = 397
      Align = alClient
      DataSource = DMMidas.dsTransDetailTemp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -21
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PRODDESCRIPTION'
          Width = 234
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTY'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRICE'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Width = 97
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 513
      Top = 1
      Width = 66
      Height = 397
      Align = alLeft
      TabOrder = 1
      object SpeedButton1: TSpeedButton
        Left = 13
        Top = 34
        Width = 40
        Height = 34
        Caption = '>'
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 13
        Top = 76
        Width = 40
        Height = 34
        Caption = '<'
        OnClick = SpeedButton2Click
      end
      object SpeedButton3: TSpeedButton
        Left = 13
        Top = 120
        Width = 40
        Height = 34
        Caption = '>>'
        OnClick = SpeedButton3Click
      end
      object SpeedButton4: TSpeedButton
        Left = 13
        Top = 164
        Width = 40
        Height = 34
        Caption = '<<'
        OnClick = SpeedButton4Click
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 512
      Height = 397
      Align = alLeft
      DataSource = DMMidas.DSTransShow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -21
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PRODDESCRIPTION'
          Width = 242
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTY'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRICE'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Width = 96
          Visible = True
        end>
    end
  end
end
