object FrmOpenTabs: TFrmOpenTabs
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Open Tabs'
  ClientHeight = 697
  ClientWidth = 1266
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object pcMain: TPageControl
    Left = 0
    Top = 92
    Width = 1266
    Height = 605
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -1
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TabPosition = tpBottom
    object TabSheet1: TTabSheet
      object DBCtrlGrid1: TDBCtrlGrid
        Left = 0
        Top = 0
        Width = 811
        Height = 589
        Align = alClient
        DataSource = DMMidas.dsOpenTabs
        PanelHeight = 98
        PanelWidth = 794
        TabOrder = 0
        RowCount = 6
        SelectedColor = clCream
        Touch.InteractiveGestures = [igZoom, igPan, igRotate, igTwoFingerTap, igPressAndTap]
        Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoParentPassthrough]
        OnDblClick = DBCtrlGrid1DblClick
        object DBText1: TDBText
          Left = 20
          Top = 2
          Width = 301
          Height = 25
          DataField = 'CUSTOMER'
          DataSource = DMMidas.dsOpenTabs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnDblClick = DBCtrlGrid1DblClick
        end
        object DBText2: TDBText
          Left = 316
          Top = 6
          Width = 85
          Height = 17
          Alignment = taRightJustify
          DataField = 'BALANCE'
          DataSource = DMMidas.dsOpenTabs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnDblClick = DBCtrlGrid1DblClick
        end
        object DBText3: TDBText
          Left = 20
          Top = 52
          Width = 317
          Height = 16
          DataField = 'DATE'
          DataSource = DMMidas.dsOpenTabs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnDblClick = DBCtrlGrid1DblClick
        end
        object DBText4: TDBText
          Left = 585
          Top = 7
          Width = 177
          Height = 22
          Alignment = taRightJustify
          DataField = 'SERVER_DEFINE'
          DataSource = DMMidas.dsOpenTabs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnDblClick = DBCtrlGrid1DblClick
        end
        object DBText5: TDBText
          Left = 444
          Top = 6
          Width = 85
          Height = 17
          Alignment = taRightJustify
          DataField = 'GROUP_BALANCE'
          DataSource = DMMidas.dsOpenTabs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnDblClick = DBCtrlGrid1DblClick
        end
        object DBText6: TDBText
          Left = 20
          Top = 32
          Width = 317
          Height = 14
          DataField = 'TRANSACTIONNUMBER_DEFINE'
          DataSource = DMMidas.dsOpenTabs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnDblClick = DBCtrlGrid1DblClick
        end
        object DBText7: TDBText
          Left = 584
          Top = 20
          Width = 177
          Height = 16
          Alignment = taRightJustify
          DataField = 'GROUP_BY_NAME'
          DataSource = DMMidas.dsOpenTabs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnDblClick = DBCtrlGrid1DblClick
        end
        object DBText8: TDBText
          Left = 584
          Top = 35
          Width = 177
          Height = 14
          Alignment = taRightJustify
          DataField = 'TELEPHONE'
          DataSource = DMMidas.dsOpenTabs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnDblClick = DBCtrlGrid1DblClick
        end
        object DBText9: TDBText
          Left = 444
          Top = 50
          Width = 317
          Height = 16
          BiDiMode = bdRightToLeft
          DataField = 'DELIVER_BY_DEFINE'
          DataSource = DMMidas.dsOpenTabs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          OnDblClick = DBCtrlGrid1DblClick
        end
        object DBText10: TDBText
          Left = 20
          Top = 74
          Width = 533
          Height = 19
          DataField = 'TRANS_TYPE_DEFINED'
          DataSource = DMMidas.dsOpenTabs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          ParentFont = False
          OnDblClick = DBCtrlGrid1DblClick
        end
        object DBCheckBox1: TDBCheckBox
          Left = 684
          Top = 76
          Width = 78
          Height = 17
          Caption = 'Main Table'
          Color = clBlack
          Ctl3D = True
          DataField = 'ISTABLE'
          DataSource = DMMidas.dsOpenTabs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
      end
      object Panel2: TPanel
        Left = 1086
        Top = 0
        Width = 172
        Height = 589
        Align = alRight
        TabOrder = 1
        object btnBeginTab: TButton
          AlignWithMargins = True
          Left = 4
          Top = 80
          Width = 164
          Height = 35
          Margins.Top = 1
          Align = alTop
          Caption = 'BEGIN TAB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 28
          Images = FrmMain.ImageList2
          ParentFont = False
          TabOrder = 0
          OnClick = btnBeginTabClick
        end
        object Button2: TButton
          AlignWithMargins = True
          Left = 4
          Top = 119
          Width = 164
          Height = 35
          Margins.Top = 1
          Align = alTop
          Caption = 'IMPORT TAB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 38
          Images = FrmMain.ImageList2
          ParentFont = False
          TabOrder = 1
          OnClick = DBCtrlGrid1DblClick
        end
        object btnSplitTab: TButton
          AlignWithMargins = True
          Left = 4
          Top = 158
          Width = 164
          Height = 35
          Margins.Top = 1
          Align = alTop
          Caption = 'SPLIT TAB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 10
          Images = FrmMain.ImageList2
          ParentFont = False
          TabOrder = 2
          OnClick = btnSplitTabClick
        end
        object btnAddTable: TButton
          AlignWithMargins = True
          Left = 4
          Top = 197
          Width = 164
          Height = 35
          Margins.Top = 1
          Align = alTop
          Caption = 'ADD TAB TO TABLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 48
          Images = FrmMain.ImageList2
          ParentFont = False
          TabOrder = 3
          OnClick = btnAddTableClick
        end
        object btnMyTabs: TButton
          AlignWithMargins = True
          Left = 4
          Top = 275
          Width = 164
          Height = 35
          Margins.Top = 1
          Align = alTop
          Caption = 'MY TABS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 12
          Images = FrmMain.ImageList2
          ParentFont = False
          TabOrder = 4
          OnClick = btnMyTabsClick
        end
        object btnEditTabs: TButton
          AlignWithMargins = True
          Left = 4
          Top = 236
          Width = 164
          Height = 35
          Margins.Top = 1
          Align = alTop
          Caption = 'EDIT TABS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 25
          Images = FrmMain.ImageList2
          ParentFont = False
          TabOrder = 5
          OnClick = btnEditTabsClick
        end
        object Button7: TButton
          AlignWithMargins = True
          Left = 4
          Top = 548
          Width = 164
          Height = 35
          Margins.Top = 1
          Align = alTop
          Caption = 'CLOSE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 22
          Images = FrmMain.ImageList2
          ParentFont = False
          TabOrder = 6
          OnClick = Button7Click
        end
        object btnGroupTabs: TButton
          AlignWithMargins = True
          Left = 4
          Top = 314
          Width = 164
          Height = 35
          Margins.Top = 1
          Align = alTop
          Caption = 'GROUP TABS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 26
          Images = FrmMain.ImageList2
          ParentFont = False
          TabOrder = 7
          OnClick = btnGroupTabsClick
        end
        object btnCancelTab: TButton
          AlignWithMargins = True
          Left = 4
          Top = 509
          Width = 164
          Height = 35
          Margins.Top = 1
          Align = alTop
          Caption = 'CANCEL TAB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 7
          Images = FrmMain.ImageList2
          ParentFont = False
          TabOrder = 8
          OnClick = btnCancelTabClick
        end
        object Button10: TButton
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 164
          Height = 35
          Margins.Bottom = 1
          Align = alTop
          Caption = 'NEXT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 49
          Images = FrmMain.ImageList2
          ParentFont = False
          TabOrder = 9
          OnClick = Button10Click
        end
        object Button11: TButton
          AlignWithMargins = True
          Left = 4
          Top = 41
          Width = 164
          Height = 35
          Margins.Top = 1
          Align = alTop
          Caption = 'PREVIOUS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 50
          Images = FrmMain.ImageList2
          ParentFont = False
          TabOrder = 10
          OnClick = Button11Click
        end
        object btnDeliver: TButton
          AlignWithMargins = True
          Left = 4
          Top = 470
          Width = 164
          Height = 35
          Margins.Top = 1
          Align = alTop
          Caption = 'DELIVERY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 47
          Images = FrmMain.ImageList2
          ParentFont = False
          TabOrder = 11
          OnClick = btnDeliverClick
        end
        object btnCotizacion: TButton
          AlignWithMargins = True
          Left = 4
          Top = 353
          Width = 164
          Height = 35
          Margins.Top = 1
          Align = alTop
          Caption = 'Quotes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 52
          Images = FrmMain.ImageList2
          ParentFont = False
          TabOrder = 12
          OnClick = btnCotizacionClick
        end
        object btnPrint: TButton
          AlignWithMargins = True
          Left = 4
          Top = 431
          Width = 164
          Height = 35
          Margins.Top = 1
          Align = alTop
          Caption = 'PRINT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 29
          Images = FrmMain.ImageList2
          ParentFont = False
          TabOrder = 13
          OnClick = btnPrintClick
        end
        object btnMobile: TButton
          AlignWithMargins = True
          Left = 4
          Top = 392
          Width = 164
          Height = 35
          Margins.Top = 1
          Align = alTop
          Caption = 'E-Commerce'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 54
          Images = FrmMain.ImageList2
          ParentFont = False
          TabOrder = 14
          OnClick = btnMobileClick
        end
      end
      object Panel3: TPanel
        Left = 811
        Top = 0
        Width = 275
        Height = 589
        Align = alRight
        TabOrder = 2
        object RichEdit1: TRichEdit
          Left = 1
          Top = 1
          Width = 273
          Height = 587
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Lines.Strings = (
            'RichEdit1')
          ParentFont = False
          TabOrder = 0
          WantTabs = True
        end
      end
    end
    object TabSheet2: TTabSheet
      ImageIndex = 1
      object GridPanel2: TGridPanel
        Left = 0
        Top = 0
        Width = 1258
        Height = 589
        Align = alClient
        ColumnCollection = <
          item
            Value = 15.810645969091030000
          end
          item
            Value = 15.387160356851140000
          end
          item
            Value = 14.912916082165310000
          end
          item
            Value = 14.395748556899890000
          end
          item
            Value = 13.818310265960750000
          end
          item
            Value = 13.179593987792810000
          end
          item
            Value = 12.495624781239070000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = SpeedButton2
            Row = 5
          end
          item
            Column = 1
            Control = SpeedButton3
            Row = 5
          end
          item
            Column = 2
            Control = SpeedButton4
            Row = 5
          end
          item
            Column = 3
            Control = SpeedButton5
            Row = 5
          end
          item
            Column = 0
            Control = SpeedButton6
            Row = 0
          end
          item
            Column = 1
            Control = SpeedButton7
            Row = 0
          end
          item
            Column = 2
            Control = SpeedButton8
            Row = 0
          end
          item
            Column = 3
            Control = SpeedButton9
            Row = 0
          end
          item
            Column = 0
            Control = SpeedButton10
            Row = 1
          end
          item
            Column = 1
            Control = SpeedButton11
            Row = 1
          end
          item
            Column = 2
            Control = SpeedButton12
            Row = 1
          end
          item
            Column = 3
            Control = SpeedButton13
            Row = 1
          end
          item
            Column = 0
            Control = SpeedButton14
            Row = 2
          end
          item
            Column = 1
            Control = SpeedButton15
            Row = 2
          end
          item
            Column = 2
            Control = SpeedButton16
            Row = 2
          end
          item
            Column = 3
            Control = SpeedButton17
            Row = 2
          end
          item
            Column = 0
            Control = SpeedButton18
            Row = 3
          end
          item
            Column = 1
            Control = SpeedButton19
            Row = 3
          end
          item
            Column = 2
            Control = SpeedButton20
            Row = 3
          end
          item
            Column = 3
            Control = SpeedButton21
            Row = 3
          end
          item
            Column = 0
            Control = SpeedButton22
            Row = 4
          end
          item
            Column = 1
            Control = SpeedButton23
            Row = 4
          end
          item
            Column = 2
            Control = SpeedButton24
            Row = 4
          end
          item
            Column = 3
            Control = SpeedButton25
            Row = 4
          end
          item
            Column = 0
            Control = SpeedButton1
            Row = 6
          end
          item
            Column = 1
            Control = SpeedButton26
            Row = 6
          end
          item
            Column = 2
            Control = SpeedButton27
            Row = 6
          end
          item
            Column = 3
            Control = SpeedButton28
            Row = 6
          end
          item
            Column = 0
            Control = SpeedButton29
            Row = 7
          end
          item
            Column = 1
            Control = SpeedButton30
            Row = 7
          end
          item
            Column = 2
            Control = SpeedButton31
            Row = 7
          end
          item
            Column = 3
            Control = SpeedButton32
            Row = 7
          end
          item
            Column = 0
            Control = SpeedButton33
            Row = 8
          end
          item
            Column = 1
            Control = SpeedButton34
            Row = 8
          end
          item
            Column = 2
            Control = SpeedButton35
            Row = 8
          end
          item
            Column = 3
            Control = SpeedButton36
            Row = 8
          end
          item
            Column = 0
            Control = SpeedButton37
            Row = 9
          end
          item
            Column = 1
            Control = SpeedButton38
            Row = 9
          end
          item
            Column = 3
            Control = SpeedButton40
            Row = 9
          end
          item
            Column = 2
            Control = SpeedButton39
            Row = 9
          end
          item
            Column = 4
            Control = SpeedButton41
            Row = 0
          end
          item
            Column = 5
            Control = SpeedButton42
            Row = 0
          end
          item
            Column = 6
            Control = SpeedButton43
            Row = 0
          end
          item
            Column = 4
            Control = SpeedButton44
            Row = 1
          end
          item
            Column = 5
            Control = SpeedButton45
            Row = 1
          end
          item
            Column = 6
            Control = SpeedButton46
            Row = 1
          end
          item
            Column = 4
            Control = SpeedButton47
            Row = 2
          end
          item
            Column = 5
            Control = SpeedButton48
            Row = 2
          end
          item
            Column = 6
            Control = SpeedButton49
            Row = 2
          end
          item
            Column = 4
            Control = SpeedButton50
            Row = 3
          end
          item
            Column = 5
            Control = SpeedButton51
            Row = 3
          end
          item
            Column = 6
            Control = SpeedButton52
            Row = 3
          end
          item
            Column = 4
            Control = SpeedButton53
            Row = 4
          end
          item
            Column = 5
            Control = SpeedButton54
            Row = 4
          end
          item
            Column = 6
            Control = SpeedButton55
            Row = 4
          end
          item
            Column = 4
            Control = SpeedButton56
            Row = 5
          end
          item
            Column = 5
            Control = SpeedButton57
            Row = 5
          end
          item
            Column = 6
            Control = SpeedButton58
            Row = 5
          end
          item
            Column = 4
            Control = SpeedButton59
            Row = 6
          end
          item
            Column = 5
            Control = SpeedButton60
            Row = 6
          end
          item
            Column = 6
            Control = SpeedButton61
            Row = 6
          end
          item
            Column = 4
            Control = SpeedButton62
            Row = 7
          end
          item
            Column = 5
            Control = SpeedButton63
            Row = 7
          end
          item
            Column = 6
            Control = SpeedButton64
            Row = 7
          end
          item
            Column = 4
            Control = SpeedButton65
            Row = 8
          end
          item
            Column = 5
            Control = SpeedButton66
            Row = 8
          end
          item
            Column = 6
            Control = SpeedButton67
            Row = 8
          end
          item
            Column = 4
            Control = SpeedButton68
            Row = 9
          end
          item
            Column = 5
            Control = SpeedButton69
            Row = 9
          end
          item
            Column = 6
            Control = SpeedButton70
            Row = 9
          end>
        RowCollection = <
          item
            Value = 10.196228078695800000
          end
          item
            Value = 10.196228078695800000
          end
          item
            Value = 10.196228078695800000
          end
          item
            Value = 10.170737508499060000
          end
          item
            Value = 10.189855436146610000
          end
          item
            Value = 9.552989471387448000
          end
          item
            Value = 10.113322934728520000
          end
          item
            Value = 10.150260173542300000
          end
          item
            Value = 9.449785131950891000
          end
          item
            Value = 9.784365107657766000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 0
        DesignSize = (
          1258
          589)
        object SpeedButton2: TSpeedButton
          Left = 54
          Top = 303
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton2Click
          ExplicitLeft = 25
          ExplicitTop = 288
        end
        object SpeedButton3: TSpeedButton
          Left = 250
          Top = 303
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton3Click
          ExplicitLeft = 163
          ExplicitTop = 288
        end
        object SpeedButton4: TSpeedButton
          Left = 440
          Top = 303
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton4Click
          ExplicitLeft = 297
          ExplicitTop = 288
        end
        object SpeedButton5: TSpeedButton
          Left = 624
          Top = 303
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton5Click
          ExplicitLeft = 426
          ExplicitTop = 288
        end
        object SpeedButton6: TSpeedButton
          Left = 54
          Top = 6
          Width = 92
          Height = 50
          Anchors = []
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton6Click
          ExplicitTop = 9
        end
        object SpeedButton7: TSpeedButton
          Left = 250
          Top = 6
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton7Click
          ExplicitLeft = 163
          ExplicitTop = 5
        end
        object SpeedButton8: TSpeedButton
          Left = 440
          Top = 6
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton8Click
          ExplicitLeft = 297
          ExplicitTop = 5
        end
        object SpeedButton9: TSpeedButton
          Left = 624
          Top = 6
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton9Click
          ExplicitLeft = 426
          ExplicitTop = 5
        end
        object SpeedButton10: TSpeedButton
          Left = 54
          Top = 65
          Width = 92
          Height = 51
          Anchors = []
          OnClick = SpeedButton10Click
          ExplicitLeft = 25
          ExplicitTop = 63
        end
        object SpeedButton11: TSpeedButton
          Left = 250
          Top = 66
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton11Click
          ExplicitLeft = 163
          ExplicitTop = 62
        end
        object SpeedButton12: TSpeedButton
          Left = 440
          Top = 66
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton12Click
          ExplicitLeft = 297
          ExplicitTop = 62
        end
        object SpeedButton13: TSpeedButton
          Left = 624
          Top = 66
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton13Click
          ExplicitLeft = 426
          ExplicitTop = 62
        end
        object SpeedButton14: TSpeedButton
          Left = 54
          Top = 126
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton14Click
          ExplicitLeft = 25
          ExplicitTop = 119
        end
        object SpeedButton15: TSpeedButton
          Left = 250
          Top = 126
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton15Click
          ExplicitLeft = 163
          ExplicitTop = 119
        end
        object SpeedButton16: TSpeedButton
          Left = 440
          Top = 126
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton16Click
          ExplicitLeft = 297
          ExplicitTop = 119
        end
        object SpeedButton17: TSpeedButton
          Left = 624
          Top = 126
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton17Click
          ExplicitLeft = 426
          ExplicitTop = 119
        end
        object SpeedButton18: TSpeedButton
          Left = 54
          Top = 185
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton18Click
          ExplicitLeft = 25
          ExplicitTop = 176
        end
        object SpeedButton19: TSpeedButton
          Left = 250
          Top = 185
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton19Click
          ExplicitLeft = 163
          ExplicitTop = 176
        end
        object SpeedButton20: TSpeedButton
          Left = 440
          Top = 185
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton20Click
          ExplicitLeft = 297
          ExplicitTop = 176
        end
        object SpeedButton21: TSpeedButton
          Left = 624
          Top = 185
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton21Click
          ExplicitLeft = 426
          ExplicitTop = 176
        end
        object SpeedButton22: TSpeedButton
          Left = 54
          Top = 245
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton22Click
          ExplicitLeft = 25
          ExplicitTop = 233
        end
        object SpeedButton23: TSpeedButton
          Left = 250
          Top = 245
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton23Click
          ExplicitLeft = 163
          ExplicitTop = 233
        end
        object SpeedButton24: TSpeedButton
          Left = 440
          Top = 245
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton24Click
          ExplicitLeft = 297
          ExplicitTop = 233
        end
        object SpeedButton25: TSpeedButton
          Left = 624
          Top = 245
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton25Click
          ExplicitLeft = 426
          ExplicitTop = 233
        end
        object SpeedButton1: TSpeedButton
          Left = 54
          Top = 361
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton1Click
          ExplicitLeft = 25
          ExplicitTop = 342
        end
        object SpeedButton26: TSpeedButton
          Left = 250
          Top = 361
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton26Click
          ExplicitLeft = 163
          ExplicitTop = 342
        end
        object SpeedButton27: TSpeedButton
          Left = 440
          Top = 361
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton27Click
          ExplicitLeft = 297
          ExplicitTop = 342
        end
        object SpeedButton28: TSpeedButton
          Left = 624
          Top = 361
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton28Click
          ExplicitLeft = 426
          ExplicitTop = 342
        end
        object SpeedButton29: TSpeedButton
          Left = 54
          Top = 420
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton29Click
          ExplicitLeft = 25
          ExplicitTop = 398
        end
        object SpeedButton30: TSpeedButton
          Left = 250
          Top = 420
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton30Click
          ExplicitLeft = 163
          ExplicitTop = 398
        end
        object SpeedButton31: TSpeedButton
          Left = 440
          Top = 420
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton31Click
          ExplicitLeft = 297
          ExplicitTop = 398
        end
        object SpeedButton32: TSpeedButton
          Left = 624
          Top = 420
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton32Click
          ExplicitLeft = 426
          ExplicitTop = 398
        end
        object SpeedButton33: TSpeedButton
          Left = 54
          Top = 478
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton33Click
          ExplicitLeft = 25
          ExplicitTop = 453
        end
        object SpeedButton34: TSpeedButton
          Left = 250
          Top = 478
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton34Click
          ExplicitLeft = 163
          ExplicitTop = 453
        end
        object SpeedButton35: TSpeedButton
          Left = 440
          Top = 478
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton35Click
          ExplicitLeft = 297
          ExplicitTop = 455
        end
        object SpeedButton36: TSpeedButton
          Left = 624
          Top = 478
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton36Click
          ExplicitLeft = 426
          ExplicitTop = 453
        end
        object SpeedButton37: TSpeedButton
          Left = 54
          Top = 534
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton37Click
          ExplicitLeft = 25
          ExplicitTop = 507
        end
        object SpeedButton38: TSpeedButton
          Left = 250
          Top = 534
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton38Click
          ExplicitLeft = 163
          ExplicitTop = 507
        end
        object SpeedButton40: TSpeedButton
          Left = 624
          Top = 534
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton40Click
          ExplicitLeft = 426
          ExplicitTop = 506
        end
        object SpeedButton39: TSpeedButton
          Left = 440
          Top = 534
          Width = 92
          Height = 50
          Anchors = []
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton39Click
          ExplicitLeft = 297
          ExplicitTop = 507
        end
        object SpeedButton41: TSpeedButton
          Left = 802
          Top = 6
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton41Click
          ExplicitLeft = 551
          ExplicitTop = 5
        end
        object SpeedButton42: TSpeedButton
          Left = 971
          Top = 6
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton42Click
          ExplicitLeft = 670
          ExplicitTop = 5
        end
        object SpeedButton43: TSpeedButton
          Left = 1132
          Top = 6
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton43Click
          ExplicitLeft = 786
          ExplicitTop = 5
        end
        object SpeedButton44: TSpeedButton
          Left = 802
          Top = 66
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton44Click
          ExplicitLeft = 551
          ExplicitTop = 62
        end
        object SpeedButton45: TSpeedButton
          Left = 971
          Top = 66
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton45Click
          ExplicitLeft = 670
          ExplicitTop = 62
        end
        object SpeedButton46: TSpeedButton
          Left = 1132
          Top = 66
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton46Click
          ExplicitLeft = 786
          ExplicitTop = 62
        end
        object SpeedButton47: TSpeedButton
          Left = 802
          Top = 126
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton47Click
          ExplicitLeft = 551
          ExplicitTop = 119
        end
        object SpeedButton48: TSpeedButton
          Left = 971
          Top = 126
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton48Click
          ExplicitLeft = 670
          ExplicitTop = 119
        end
        object SpeedButton49: TSpeedButton
          Left = 1132
          Top = 126
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton49Click
          ExplicitLeft = 786
          ExplicitTop = 119
        end
        object SpeedButton50: TSpeedButton
          Left = 802
          Top = 185
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton50Click
          ExplicitLeft = 551
          ExplicitTop = 176
        end
        object SpeedButton51: TSpeedButton
          Left = 971
          Top = 185
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton51Click
          ExplicitLeft = 670
          ExplicitTop = 176
        end
        object SpeedButton52: TSpeedButton
          Left = 1132
          Top = 185
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton52Click
          ExplicitLeft = 786
          ExplicitTop = 176
        end
        object SpeedButton53: TSpeedButton
          Left = 802
          Top = 245
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton53Click
          ExplicitLeft = 551
          ExplicitTop = 233
        end
        object SpeedButton54: TSpeedButton
          Left = 971
          Top = 245
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton54Click
          ExplicitLeft = 670
          ExplicitTop = 233
        end
        object SpeedButton55: TSpeedButton
          Left = 1132
          Top = 245
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton55Click
          ExplicitLeft = 786
          ExplicitTop = 233
        end
        object SpeedButton56: TSpeedButton
          Left = 802
          Top = 303
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton56Click
          ExplicitLeft = 551
          ExplicitTop = 289
        end
        object SpeedButton57: TSpeedButton
          Left = 971
          Top = 303
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton57Click
          ExplicitLeft = 670
          ExplicitTop = 289
        end
        object SpeedButton58: TSpeedButton
          Left = 1132
          Top = 303
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton58Click
          ExplicitLeft = 786
          ExplicitTop = 289
        end
        object SpeedButton59: TSpeedButton
          Left = 802
          Top = 361
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton59Click
          ExplicitLeft = 551
          ExplicitTop = 343
        end
        object SpeedButton60: TSpeedButton
          Left = 971
          Top = 361
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton60Click
          ExplicitLeft = 670
          ExplicitTop = 343
        end
        object SpeedButton61: TSpeedButton
          Left = 1132
          Top = 361
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton61Click
          ExplicitLeft = 786
          ExplicitTop = 343
        end
        object SpeedButton62: TSpeedButton
          Left = 802
          Top = 420
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton62Click
          ExplicitLeft = 551
          ExplicitTop = 398
        end
        object SpeedButton63: TSpeedButton
          Left = 971
          Top = 420
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton63Click
          ExplicitLeft = 670
          ExplicitTop = 398
        end
        object SpeedButton64: TSpeedButton
          Left = 1132
          Top = 420
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton64Click
          ExplicitLeft = 786
          ExplicitTop = 398
        end
        object SpeedButton65: TSpeedButton
          Left = 802
          Top = 478
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton65Click
          ExplicitLeft = 551
          ExplicitTop = 455
        end
        object SpeedButton66: TSpeedButton
          Left = 971
          Top = 478
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton66Click
          ExplicitLeft = 670
          ExplicitTop = 455
        end
        object SpeedButton67: TSpeedButton
          Left = 1132
          Top = 478
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton67Click
          ExplicitLeft = 786
          ExplicitTop = 455
        end
        object SpeedButton68: TSpeedButton
          Left = 802
          Top = 534
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton68Click
          ExplicitLeft = 551
          ExplicitTop = 507
        end
        object SpeedButton69: TSpeedButton
          Left = 971
          Top = 534
          Width = 92
          Height = 50
          Anchors = []
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton69Click
          ExplicitLeft = 670
          ExplicitTop = 507
        end
        object SpeedButton70: TSpeedButton
          Left = 1132
          Top = 534
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton70Click
          ExplicitLeft = 786
          ExplicitTop = 507
        end
      end
    end
    object TabSheet3: TTabSheet
      ImageIndex = 2
      object GridPanel1: TGridPanel
        Left = 0
        Top = 0
        Width = 1258
        Height = 589
        Align = alClient
        ColumnCollection = <
          item
            Value = 15.810645969091030000
          end
          item
            Value = 15.387160356851140000
          end
          item
            Value = 14.912916082165310000
          end
          item
            Value = 14.395748556899890000
          end
          item
            Value = 13.818310265960750000
          end
          item
            Value = 13.179593987792810000
          end
          item
            Value = 12.495624781239070000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = SpeedButton71
            Row = 5
          end
          item
            Column = 1
            Control = SpeedButton72
            Row = 5
          end
          item
            Column = 2
            Control = SpeedButton73
            Row = 5
          end
          item
            Column = 3
            Control = SpeedButton74
            Row = 5
          end
          item
            Column = 0
            Control = SpeedButton75
            Row = 0
          end
          item
            Column = 1
            Control = SpeedButton76
            Row = 0
          end
          item
            Column = 2
            Control = SpeedButton77
            Row = 0
          end
          item
            Column = 3
            Control = SpeedButton78
            Row = 0
          end
          item
            Column = 0
            Control = SpeedButton79
            Row = 1
          end
          item
            Column = 1
            Control = SpeedButton80
            Row = 1
          end
          item
            Column = 2
            Control = SpeedButton81
            Row = 1
          end
          item
            Column = 3
            Control = SpeedButton82
            Row = 1
          end
          item
            Column = 0
            Control = SpeedButton83
            Row = 2
          end
          item
            Column = 1
            Control = SpeedButton84
            Row = 2
          end
          item
            Column = 2
            Control = SpeedButton85
            Row = 2
          end
          item
            Column = 3
            Control = SpeedButton86
            Row = 2
          end
          item
            Column = 0
            Control = SpeedButton87
            Row = 3
          end
          item
            Column = 1
            Control = SpeedButton88
            Row = 3
          end
          item
            Column = 2
            Control = SpeedButton89
            Row = 3
          end
          item
            Column = 3
            Control = SpeedButton90
            Row = 3
          end
          item
            Column = 0
            Control = SpeedButton91
            Row = 4
          end
          item
            Column = 1
            Control = SpeedButton92
            Row = 4
          end
          item
            Column = 2
            Control = SpeedButton93
            Row = 4
          end
          item
            Column = 3
            Control = SpeedButton94
            Row = 4
          end
          item
            Column = 0
            Control = SpeedButton95
            Row = 6
          end
          item
            Column = 1
            Control = SpeedButton96
            Row = 6
          end
          item
            Column = 2
            Control = SpeedButton97
            Row = 6
          end
          item
            Column = 3
            Control = SpeedButton98
            Row = 6
          end
          item
            Column = 0
            Control = SpeedButton99
            Row = 7
          end
          item
            Column = 1
            Control = SpeedButton100
            Row = 7
          end
          item
            Column = 2
            Control = SpeedButton101
            Row = 7
          end
          item
            Column = 3
            Control = SpeedButton102
            Row = 7
          end
          item
            Column = 0
            Control = SpeedButton103
            Row = 8
          end
          item
            Column = 1
            Control = SpeedButton104
            Row = 8
          end
          item
            Column = 2
            Control = SpeedButton105
            Row = 8
          end
          item
            Column = 3
            Control = SpeedButton106
            Row = 8
          end
          item
            Column = 0
            Control = SpeedButton107
            Row = 9
          end
          item
            Column = 1
            Control = SpeedButton108
            Row = 9
          end
          item
            Column = 3
            Control = SpeedButton109
            Row = 9
          end
          item
            Column = 2
            Control = SpeedButton110
            Row = 9
          end
          item
            Column = 4
            Control = SpeedButton111
            Row = 0
          end
          item
            Column = 5
            Control = SpeedButton112
            Row = 0
          end
          item
            Column = 6
            Control = SpeedButton113
            Row = 0
          end
          item
            Column = 4
            Control = SpeedButton114
            Row = 1
          end
          item
            Column = 5
            Control = SpeedButton115
            Row = 1
          end
          item
            Column = 6
            Control = SpeedButton116
            Row = 1
          end
          item
            Column = 4
            Control = SpeedButton117
            Row = 2
          end
          item
            Column = 5
            Control = SpeedButton118
            Row = 2
          end
          item
            Column = 6
            Control = SpeedButton119
            Row = 2
          end
          item
            Column = 4
            Control = SpeedButton120
            Row = 3
          end
          item
            Column = 5
            Control = SpeedButton121
            Row = 3
          end
          item
            Column = 6
            Control = SpeedButton122
            Row = 3
          end
          item
            Column = 4
            Control = SpeedButton123
            Row = 4
          end
          item
            Column = 5
            Control = SpeedButton124
            Row = 4
          end
          item
            Column = 6
            Control = SpeedButton125
            Row = 4
          end
          item
            Column = 4
            Control = SpeedButton126
            Row = 5
          end
          item
            Column = 5
            Control = SpeedButton127
            Row = 5
          end
          item
            Column = 6
            Control = SpeedButton128
            Row = 5
          end
          item
            Column = 4
            Control = SpeedButton129
            Row = 6
          end
          item
            Column = 5
            Control = SpeedButton130
            Row = 6
          end
          item
            Column = 6
            Control = SpeedButton131
            Row = 6
          end
          item
            Column = 4
            Control = SpeedButton132
            Row = 7
          end
          item
            Column = 5
            Control = SpeedButton133
            Row = 7
          end
          item
            Column = 6
            Control = SpeedButton134
            Row = 7
          end
          item
            Column = 4
            Control = SpeedButton135
            Row = 8
          end
          item
            Column = 5
            Control = SpeedButton136
            Row = 8
          end
          item
            Column = 6
            Control = SpeedButton137
            Row = 8
          end
          item
            Column = 4
            Control = SpeedButton138
            Row = 9
          end
          item
            Column = 5
            Control = SpeedButton139
            Row = 9
          end
          item
            Column = 6
            Control = SpeedButton140
            Row = 9
          end>
        RowCollection = <
          item
            Value = 10.196228078695800000
          end
          item
            Value = 10.196228078695800000
          end
          item
            Value = 10.196228078695800000
          end
          item
            Value = 10.170737508499060000
          end
          item
            Value = 10.189855436146610000
          end
          item
            Value = 9.552989471387448000
          end
          item
            Value = 10.113322934728520000
          end
          item
            Value = 10.150260173542300000
          end
          item
            Value = 9.449785131950891000
          end
          item
            Value = 9.784365107657766000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 0
        DesignSize = (
          1258
          589)
        object SpeedButton71: TSpeedButton
          Left = 54
          Top = 303
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton71Click
          ExplicitLeft = 25
          ExplicitTop = 288
        end
        object SpeedButton72: TSpeedButton
          Left = 250
          Top = 303
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton72Click
          ExplicitLeft = 163
          ExplicitTop = 288
        end
        object SpeedButton73: TSpeedButton
          Left = 440
          Top = 303
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton73Click
          ExplicitLeft = 297
          ExplicitTop = 288
        end
        object SpeedButton74: TSpeedButton
          Left = 624
          Top = 303
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton74Click
          ExplicitLeft = 410
          ExplicitTop = 293
        end
        object SpeedButton75: TSpeedButton
          Left = 54
          Top = 6
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton75Click
          ExplicitLeft = 25
          ExplicitTop = 5
        end
        object SpeedButton76: TSpeedButton
          Left = 250
          Top = 6
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton76Click
          ExplicitLeft = 163
          ExplicitTop = 5
        end
        object SpeedButton77: TSpeedButton
          Left = 440
          Top = 6
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton77Click
          ExplicitLeft = 297
          ExplicitTop = 5
        end
        object SpeedButton78: TSpeedButton
          Left = 624
          Top = 6
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton78Click
          ExplicitLeft = 426
          ExplicitTop = 2
        end
        object SpeedButton79: TSpeedButton
          Left = 54
          Top = 66
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton79Click
          ExplicitLeft = 25
          ExplicitTop = 62
        end
        object SpeedButton80: TSpeedButton
          Left = 250
          Top = 66
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton80Click
          ExplicitLeft = 163
          ExplicitTop = 62
        end
        object SpeedButton81: TSpeedButton
          Left = 440
          Top = 66
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton81Click
          ExplicitLeft = 297
          ExplicitTop = 62
        end
        object SpeedButton82: TSpeedButton
          Left = 624
          Top = 66
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton82Click
          ExplicitLeft = 426
          ExplicitTop = 62
        end
        object SpeedButton83: TSpeedButton
          Left = 54
          Top = 126
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton83Click
          ExplicitLeft = 25
          ExplicitTop = 119
        end
        object SpeedButton84: TSpeedButton
          Left = 250
          Top = 126
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton84Click
          ExplicitLeft = 163
          ExplicitTop = 119
        end
        object SpeedButton85: TSpeedButton
          Left = 440
          Top = 126
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton85Click
          ExplicitLeft = 297
          ExplicitTop = 119
        end
        object SpeedButton86: TSpeedButton
          Left = 624
          Top = 126
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton86Click
          ExplicitLeft = 426
          ExplicitTop = 119
        end
        object SpeedButton87: TSpeedButton
          Left = 54
          Top = 185
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton87Click
          ExplicitLeft = 25
          ExplicitTop = 176
        end
        object SpeedButton88: TSpeedButton
          Left = 250
          Top = 185
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton88Click
          ExplicitLeft = 163
          ExplicitTop = 176
        end
        object SpeedButton89: TSpeedButton
          Left = 440
          Top = 185
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton89Click
          ExplicitLeft = 297
          ExplicitTop = 176
        end
        object SpeedButton90: TSpeedButton
          Left = 624
          Top = 185
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton90Click
          ExplicitLeft = 426
          ExplicitTop = 176
        end
        object SpeedButton91: TSpeedButton
          Left = 54
          Top = 245
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton91Click
          ExplicitLeft = 25
          ExplicitTop = 233
        end
        object SpeedButton92: TSpeedButton
          Left = 250
          Top = 245
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton92Click
          ExplicitLeft = 163
          ExplicitTop = 233
        end
        object SpeedButton93: TSpeedButton
          Left = 440
          Top = 245
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton93Click
          ExplicitLeft = 297
          ExplicitTop = 233
        end
        object SpeedButton94: TSpeedButton
          Left = 624
          Top = 245
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton94Click
          ExplicitLeft = 426
          ExplicitTop = 233
        end
        object SpeedButton95: TSpeedButton
          Left = 54
          Top = 361
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton95Click
          ExplicitLeft = 25
          ExplicitTop = 342
        end
        object SpeedButton96: TSpeedButton
          Left = 250
          Top = 361
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton96Click
          ExplicitLeft = 163
          ExplicitTop = 342
        end
        object SpeedButton97: TSpeedButton
          Left = 440
          Top = 361
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton97Click
          ExplicitLeft = 297
          ExplicitTop = 342
        end
        object SpeedButton98: TSpeedButton
          Left = 624
          Top = 361
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton98Click
          ExplicitLeft = 426
          ExplicitTop = 342
        end
        object SpeedButton99: TSpeedButton
          Left = 54
          Top = 420
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton99Click
          ExplicitLeft = 25
          ExplicitTop = 398
        end
        object SpeedButton100: TSpeedButton
          Left = 250
          Top = 420
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton100Click
          ExplicitLeft = 163
          ExplicitTop = 398
        end
        object SpeedButton101: TSpeedButton
          Left = 440
          Top = 420
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton101Click
          ExplicitLeft = 297
          ExplicitTop = 398
        end
        object SpeedButton102: TSpeedButton
          Left = 624
          Top = 420
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton102Click
          ExplicitLeft = 426
          ExplicitTop = 398
        end
        object SpeedButton103: TSpeedButton
          Left = 54
          Top = 478
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton103Click
          ExplicitLeft = 25
          ExplicitTop = 453
        end
        object SpeedButton104: TSpeedButton
          Left = 250
          Top = 478
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton104Click
          ExplicitLeft = 163
          ExplicitTop = 453
        end
        object SpeedButton105: TSpeedButton
          Left = 440
          Top = 478
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton105Click
          ExplicitLeft = 297
          ExplicitTop = 455
        end
        object SpeedButton106: TSpeedButton
          Left = 624
          Top = 478
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton106Click
          ExplicitLeft = 426
          ExplicitTop = 453
        end
        object SpeedButton107: TSpeedButton
          Left = 54
          Top = 534
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton107Click
          ExplicitLeft = 25
          ExplicitTop = 507
        end
        object SpeedButton108: TSpeedButton
          Left = 250
          Top = 534
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton108Click
          ExplicitLeft = 163
          ExplicitTop = 507
        end
        object SpeedButton109: TSpeedButton
          Left = 624
          Top = 534
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton109Click
          ExplicitLeft = 426
          ExplicitTop = 506
        end
        object SpeedButton110: TSpeedButton
          Left = 440
          Top = 534
          Width = 92
          Height = 50
          Anchors = []
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton110Click
          ExplicitLeft = 297
          ExplicitTop = 507
        end
        object SpeedButton111: TSpeedButton
          Left = 802
          Top = 6
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton111Click
          ExplicitLeft = 551
          ExplicitTop = 5
        end
        object SpeedButton112: TSpeedButton
          Left = 971
          Top = 6
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton112Click
          ExplicitLeft = 670
          ExplicitTop = 5
        end
        object SpeedButton113: TSpeedButton
          Left = 1132
          Top = 6
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton113Click
          ExplicitLeft = 786
          ExplicitTop = 5
        end
        object SpeedButton114: TSpeedButton
          Left = 802
          Top = 66
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton114Click
          ExplicitLeft = 551
          ExplicitTop = 62
        end
        object SpeedButton115: TSpeedButton
          Left = 971
          Top = 66
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton115Click
          ExplicitLeft = 670
          ExplicitTop = 62
        end
        object SpeedButton116: TSpeedButton
          Left = 1132
          Top = 66
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton116Click
          ExplicitLeft = 786
          ExplicitTop = 65
        end
        object SpeedButton117: TSpeedButton
          Left = 802
          Top = 126
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton117Click
          ExplicitLeft = 551
          ExplicitTop = 119
        end
        object SpeedButton118: TSpeedButton
          Left = 971
          Top = 126
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton118Click
          ExplicitLeft = 670
          ExplicitTop = 119
        end
        object SpeedButton119: TSpeedButton
          Left = 1132
          Top = 126
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton119Click
          ExplicitLeft = 786
          ExplicitTop = 119
        end
        object SpeedButton120: TSpeedButton
          Left = 802
          Top = 185
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton120Click
          ExplicitLeft = 551
          ExplicitTop = 176
        end
        object SpeedButton121: TSpeedButton
          Left = 971
          Top = 185
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton121Click
          ExplicitLeft = 670
          ExplicitTop = 176
        end
        object SpeedButton122: TSpeedButton
          Left = 1132
          Top = 185
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton122Click
          ExplicitLeft = 786
          ExplicitTop = 176
        end
        object SpeedButton123: TSpeedButton
          Left = 802
          Top = 245
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton123Click
          ExplicitLeft = 551
          ExplicitTop = 233
        end
        object SpeedButton124: TSpeedButton
          Left = 971
          Top = 245
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton124Click
          ExplicitLeft = 670
          ExplicitTop = 233
        end
        object SpeedButton125: TSpeedButton
          Left = 1132
          Top = 245
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton125Click
          ExplicitLeft = 786
          ExplicitTop = 233
        end
        object SpeedButton126: TSpeedButton
          Left = 802
          Top = 303
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton126Click
          ExplicitLeft = 551
          ExplicitTop = 289
        end
        object SpeedButton127: TSpeedButton
          Left = 971
          Top = 303
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton127Click
          ExplicitLeft = 670
          ExplicitTop = 289
        end
        object SpeedButton128: TSpeedButton
          Left = 1132
          Top = 303
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton128Click
          ExplicitLeft = 786
          ExplicitTop = 289
        end
        object SpeedButton129: TSpeedButton
          Left = 802
          Top = 361
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton129Click
          ExplicitLeft = 551
          ExplicitTop = 343
        end
        object SpeedButton130: TSpeedButton
          Left = 971
          Top = 361
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton130Click
          ExplicitLeft = 670
          ExplicitTop = 343
        end
        object SpeedButton131: TSpeedButton
          Left = 1132
          Top = 361
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton131Click
          ExplicitLeft = 786
          ExplicitTop = 343
        end
        object SpeedButton132: TSpeedButton
          Left = 802
          Top = 420
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton132Click
          ExplicitLeft = 551
          ExplicitTop = 398
        end
        object SpeedButton133: TSpeedButton
          Left = 971
          Top = 420
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton133Click
          ExplicitLeft = 670
          ExplicitTop = 398
        end
        object SpeedButton134: TSpeedButton
          Left = 1132
          Top = 420
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton134Click
          ExplicitLeft = 786
          ExplicitTop = 398
        end
        object SpeedButton135: TSpeedButton
          Left = 802
          Top = 478
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton135Click
          ExplicitLeft = 551
          ExplicitTop = 455
        end
        object SpeedButton136: TSpeedButton
          Left = 971
          Top = 478
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton136Click
          ExplicitLeft = 670
          ExplicitTop = 455
        end
        object SpeedButton137: TSpeedButton
          Left = 1132
          Top = 478
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton137Click
          ExplicitLeft = 786
          ExplicitTop = 455
        end
        object SpeedButton138: TSpeedButton
          Left = 802
          Top = 534
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton138Click
          ExplicitLeft = 551
          ExplicitTop = 507
        end
        object SpeedButton139: TSpeedButton
          Left = 971
          Top = 534
          Width = 92
          Height = 50
          Anchors = []
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton139Click
          ExplicitLeft = 670
          ExplicitTop = 507
        end
        object SpeedButton140: TSpeedButton
          Left = 1132
          Top = 534
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton140Click
          ExplicitLeft = 786
          ExplicitTop = 518
        end
      end
    end
    object TabSheet4: TTabSheet
      ImageIndex = 3
      object GridPanel3: TGridPanel
        Left = 0
        Top = 0
        Width = 1258
        Height = 589
        Align = alClient
        ColumnCollection = <
          item
            Value = 15.810645969091030000
          end
          item
            Value = 15.387160356851140000
          end
          item
            Value = 14.912916082165310000
          end
          item
            Value = 14.395748556899890000
          end
          item
            Value = 13.818310265960750000
          end
          item
            Value = 13.179593987792810000
          end
          item
            Value = 12.495624781239070000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = SpeedButton141
            Row = 5
          end
          item
            Column = 1
            Control = SpeedButton142
            Row = 5
          end
          item
            Column = 2
            Control = SpeedButton143
            Row = 5
          end
          item
            Column = 3
            Control = SpeedButton144
            Row = 5
          end
          item
            Column = 0
            Control = SpeedButton145
            Row = 0
          end
          item
            Column = 1
            Control = SpeedButton146
            Row = 0
          end
          item
            Column = 2
            Control = SpeedButton147
            Row = 0
          end
          item
            Column = 3
            Control = SpeedButton148
            Row = 0
          end
          item
            Column = 0
            Control = SpeedButton149
            Row = 1
          end
          item
            Column = 1
            Control = SpeedButton150
            Row = 1
          end
          item
            Column = 2
            Control = SpeedButton151
            Row = 1
          end
          item
            Column = 3
            Control = SpeedButton152
            Row = 1
          end
          item
            Column = 0
            Control = SpeedButton153
            Row = 2
          end
          item
            Column = 1
            Control = SpeedButton154
            Row = 2
          end
          item
            Column = 2
            Control = SpeedButton155
            Row = 2
          end
          item
            Column = 3
            Control = SpeedButton156
            Row = 2
          end
          item
            Column = 0
            Control = SpeedButton157
            Row = 3
          end
          item
            Column = 1
            Control = SpeedButton158
            Row = 3
          end
          item
            Column = 2
            Control = SpeedButton159
            Row = 3
          end
          item
            Column = 3
            Control = SpeedButton160
            Row = 3
          end
          item
            Column = 0
            Control = SpeedButton161
            Row = 4
          end
          item
            Column = 1
            Control = SpeedButton162
            Row = 4
          end
          item
            Column = 2
            Control = SpeedButton163
            Row = 4
          end
          item
            Column = 3
            Control = SpeedButton164
            Row = 4
          end
          item
            Column = 0
            Control = SpeedButton165
            Row = 6
          end
          item
            Column = 1
            Control = SpeedButton166
            Row = 6
          end
          item
            Column = 2
            Control = SpeedButton167
            Row = 6
          end
          item
            Column = 3
            Control = SpeedButton168
            Row = 6
          end
          item
            Column = 0
            Control = SpeedButton169
            Row = 7
          end
          item
            Column = 1
            Control = SpeedButton170
            Row = 7
          end
          item
            Column = 2
            Control = SpeedButton171
            Row = 7
          end
          item
            Column = 3
            Control = SpeedButton172
            Row = 7
          end
          item
            Column = 0
            Control = SpeedButton173
            Row = 8
          end
          item
            Column = 1
            Control = SpeedButton174
            Row = 8
          end
          item
            Column = 2
            Control = SpeedButton175
            Row = 8
          end
          item
            Column = 3
            Control = SpeedButton176
            Row = 8
          end
          item
            Column = 0
            Control = SpeedButton177
            Row = 9
          end
          item
            Column = 1
            Control = SpeedButton178
            Row = 9
          end
          item
            Column = 3
            Control = SpeedButton179
            Row = 9
          end
          item
            Column = 2
            Control = SpeedButton180
            Row = 9
          end
          item
            Column = 4
            Control = SpeedButton181
            Row = 0
          end
          item
            Column = 5
            Control = SpeedButton182
            Row = 0
          end
          item
            Column = 6
            Control = SpeedButton183
            Row = 0
          end
          item
            Column = 4
            Control = SpeedButton184
            Row = 1
          end
          item
            Column = 5
            Control = SpeedButton185
            Row = 1
          end
          item
            Column = 6
            Control = SpeedButton186
            Row = 1
          end
          item
            Column = 4
            Control = SpeedButton187
            Row = 2
          end
          item
            Column = 5
            Control = SpeedButton188
            Row = 2
          end
          item
            Column = 6
            Control = SpeedButton189
            Row = 2
          end
          item
            Column = 4
            Control = SpeedButton190
            Row = 3
          end
          item
            Column = 5
            Control = SpeedButton191
            Row = 3
          end
          item
            Column = 6
            Control = SpeedButton192
            Row = 3
          end
          item
            Column = 4
            Control = SpeedButton193
            Row = 4
          end
          item
            Column = 5
            Control = SpeedButton194
            Row = 4
          end
          item
            Column = 6
            Control = SpeedButton195
            Row = 4
          end
          item
            Column = 4
            Control = SpeedButton196
            Row = 5
          end
          item
            Column = 5
            Control = SpeedButton197
            Row = 5
          end
          item
            Column = 6
            Control = SpeedButton198
            Row = 5
          end
          item
            Column = 4
            Control = SpeedButton199
            Row = 6
          end
          item
            Column = 5
            Control = SpeedButton200
            Row = 6
          end
          item
            Column = 6
            Control = SpeedButton201
            Row = 6
          end
          item
            Column = 4
            Control = SpeedButton202
            Row = 7
          end
          item
            Column = 5
            Control = SpeedButton203
            Row = 7
          end
          item
            Column = 6
            Control = SpeedButton204
            Row = 7
          end
          item
            Column = 4
            Control = SpeedButton205
            Row = 8
          end
          item
            Column = 5
            Control = SpeedButton206
            Row = 8
          end
          item
            Column = 6
            Control = SpeedButton207
            Row = 8
          end
          item
            Column = 4
            Control = SpeedButton208
            Row = 9
          end
          item
            Column = 5
            Control = SpeedButton209
            Row = 9
          end
          item
            Column = 6
            Control = SpeedButton210
            Row = 9
          end>
        RowCollection = <
          item
            Value = 10.196228078695800000
          end
          item
            Value = 10.196228078695800000
          end
          item
            Value = 10.196228078695800000
          end
          item
            Value = 10.170737508499060000
          end
          item
            Value = 10.189855436146610000
          end
          item
            Value = 9.552989471387448000
          end
          item
            Value = 10.113322934728520000
          end
          item
            Value = 10.150260173542300000
          end
          item
            Value = 9.449785131950891000
          end
          item
            Value = 9.784365107657766000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 0
        DesignSize = (
          1258
          589)
        object SpeedButton141: TSpeedButton
          Left = 54
          Top = 303
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton141Click
          ExplicitLeft = 25
          ExplicitTop = 288
        end
        object SpeedButton142: TSpeedButton
          Left = 250
          Top = 303
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton142Click
          ExplicitLeft = 163
          ExplicitTop = 288
        end
        object SpeedButton143: TSpeedButton
          Left = 440
          Top = 303
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton143Click
          ExplicitLeft = 297
          ExplicitTop = 288
        end
        object SpeedButton144: TSpeedButton
          Left = 624
          Top = 303
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton144Click
          ExplicitLeft = 426
          ExplicitTop = 288
        end
        object SpeedButton145: TSpeedButton
          Left = 54
          Top = 6
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton145Click
          ExplicitLeft = 25
          ExplicitTop = 5
        end
        object SpeedButton146: TSpeedButton
          Left = 250
          Top = 6
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton146Click
          ExplicitLeft = 163
          ExplicitTop = 5
        end
        object SpeedButton147: TSpeedButton
          Left = 440
          Top = 6
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton147Click
          ExplicitLeft = 297
          ExplicitTop = 5
        end
        object SpeedButton148: TSpeedButton
          Left = 624
          Top = 6
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton148Click
          ExplicitLeft = 426
          ExplicitTop = 5
        end
        object SpeedButton149: TSpeedButton
          Left = 54
          Top = 66
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton149Click
          ExplicitLeft = 25
          ExplicitTop = 62
        end
        object SpeedButton150: TSpeedButton
          Left = 250
          Top = 66
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton150Click
          ExplicitLeft = 163
          ExplicitTop = 62
        end
        object SpeedButton151: TSpeedButton
          Left = 440
          Top = 66
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton151Click
          ExplicitLeft = 297
          ExplicitTop = 62
        end
        object SpeedButton152: TSpeedButton
          Left = 624
          Top = 66
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton152Click
          ExplicitLeft = 426
          ExplicitTop = 62
        end
        object SpeedButton153: TSpeedButton
          Left = 54
          Top = 126
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton153Click
          ExplicitLeft = 25
          ExplicitTop = 119
        end
        object SpeedButton154: TSpeedButton
          Left = 250
          Top = 126
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton154Click
          ExplicitLeft = 163
          ExplicitTop = 119
        end
        object SpeedButton155: TSpeedButton
          Left = 440
          Top = 126
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton155Click
          ExplicitLeft = 297
          ExplicitTop = 119
        end
        object SpeedButton156: TSpeedButton
          Left = 624
          Top = 126
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton156Click
          ExplicitLeft = 426
          ExplicitTop = 119
        end
        object SpeedButton157: TSpeedButton
          Left = 54
          Top = 185
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton157Click
          ExplicitLeft = 25
          ExplicitTop = 176
        end
        object SpeedButton158: TSpeedButton
          Left = 250
          Top = 185
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton158Click
          ExplicitLeft = 163
          ExplicitTop = 176
        end
        object SpeedButton159: TSpeedButton
          Left = 440
          Top = 185
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton159Click
          ExplicitLeft = 297
          ExplicitTop = 176
        end
        object SpeedButton160: TSpeedButton
          Left = 624
          Top = 185
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton160Click
          ExplicitLeft = 426
          ExplicitTop = 176
        end
        object SpeedButton161: TSpeedButton
          Left = 54
          Top = 245
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton161Click
          ExplicitLeft = 25
          ExplicitTop = 233
        end
        object SpeedButton162: TSpeedButton
          Left = 250
          Top = 245
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton162Click
          ExplicitLeft = 163
          ExplicitTop = 233
        end
        object SpeedButton163: TSpeedButton
          Left = 440
          Top = 245
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton163Click
          ExplicitLeft = 297
          ExplicitTop = 233
        end
        object SpeedButton164: TSpeedButton
          Left = 624
          Top = 245
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton164Click
          ExplicitLeft = 426
          ExplicitTop = 233
        end
        object SpeedButton165: TSpeedButton
          Left = 54
          Top = 361
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton165Click
          ExplicitLeft = 25
          ExplicitTop = 342
        end
        object SpeedButton166: TSpeedButton
          Left = 250
          Top = 361
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton166Click
          ExplicitLeft = 163
          ExplicitTop = 342
        end
        object SpeedButton167: TSpeedButton
          Left = 440
          Top = 361
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton167Click
          ExplicitLeft = 297
          ExplicitTop = 342
        end
        object SpeedButton168: TSpeedButton
          Left = 624
          Top = 361
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton168Click
          ExplicitLeft = 426
          ExplicitTop = 342
        end
        object SpeedButton169: TSpeedButton
          Left = 54
          Top = 420
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton169Click
          ExplicitLeft = 25
          ExplicitTop = 398
        end
        object SpeedButton170: TSpeedButton
          Left = 250
          Top = 420
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton170Click
          ExplicitLeft = 163
          ExplicitTop = 398
        end
        object SpeedButton171: TSpeedButton
          Left = 440
          Top = 420
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton171Click
          ExplicitLeft = 297
          ExplicitTop = 398
        end
        object SpeedButton172: TSpeedButton
          Left = 624
          Top = 420
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton172Click
          ExplicitLeft = 426
          ExplicitTop = 398
        end
        object SpeedButton173: TSpeedButton
          Left = 54
          Top = 478
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton173Click
          ExplicitLeft = 25
          ExplicitTop = 453
        end
        object SpeedButton174: TSpeedButton
          Left = 250
          Top = 478
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton174Click
          ExplicitLeft = 163
          ExplicitTop = 453
        end
        object SpeedButton175: TSpeedButton
          Left = 440
          Top = 478
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton175Click
          ExplicitLeft = 297
          ExplicitTop = 455
        end
        object SpeedButton176: TSpeedButton
          Left = 624
          Top = 478
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton176Click
          ExplicitLeft = 426
          ExplicitTop = 453
        end
        object SpeedButton177: TSpeedButton
          Left = 54
          Top = 534
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton177Click
          ExplicitLeft = 25
          ExplicitTop = 507
        end
        object SpeedButton178: TSpeedButton
          Left = 250
          Top = 534
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton178Click
          ExplicitLeft = 163
          ExplicitTop = 507
        end
        object SpeedButton179: TSpeedButton
          Left = 624
          Top = 534
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton179Click
          ExplicitLeft = 426
          ExplicitTop = 506
        end
        object SpeedButton180: TSpeedButton
          Left = 440
          Top = 534
          Width = 92
          Height = 50
          Anchors = []
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton180Click
          ExplicitLeft = 297
          ExplicitTop = 507
        end
        object SpeedButton181: TSpeedButton
          Left = 802
          Top = 6
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton181Click
          ExplicitLeft = 551
          ExplicitTop = 5
        end
        object SpeedButton182: TSpeedButton
          Left = 971
          Top = 6
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton182Click
          ExplicitLeft = 670
          ExplicitTop = 5
        end
        object SpeedButton183: TSpeedButton
          Left = 1132
          Top = 6
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton183Click
          ExplicitLeft = 786
          ExplicitTop = 5
        end
        object SpeedButton184: TSpeedButton
          Left = 802
          Top = 66
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton184Click
          ExplicitLeft = 551
          ExplicitTop = 62
        end
        object SpeedButton185: TSpeedButton
          Left = 971
          Top = 66
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton185Click
          ExplicitLeft = 670
          ExplicitTop = 62
        end
        object SpeedButton186: TSpeedButton
          Left = 1132
          Top = 66
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton186Click
          ExplicitLeft = 786
          ExplicitTop = 62
        end
        object SpeedButton187: TSpeedButton
          Left = 802
          Top = 126
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton187Click
          ExplicitLeft = 551
          ExplicitTop = 119
        end
        object SpeedButton188: TSpeedButton
          Left = 971
          Top = 126
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton188Click
          ExplicitLeft = 670
          ExplicitTop = 119
        end
        object SpeedButton189: TSpeedButton
          Left = 1132
          Top = 126
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton189Click
          ExplicitLeft = 786
          ExplicitTop = 119
        end
        object SpeedButton190: TSpeedButton
          Left = 802
          Top = 185
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton190Click
          ExplicitLeft = 551
          ExplicitTop = 176
        end
        object SpeedButton191: TSpeedButton
          Left = 971
          Top = 185
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton191Click
          ExplicitLeft = 670
          ExplicitTop = 176
        end
        object SpeedButton192: TSpeedButton
          Left = 1132
          Top = 185
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton192Click
          ExplicitLeft = 786
          ExplicitTop = 176
        end
        object SpeedButton193: TSpeedButton
          Left = 802
          Top = 245
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton193Click
          ExplicitLeft = 551
          ExplicitTop = 233
        end
        object SpeedButton194: TSpeedButton
          Left = 971
          Top = 245
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton194Click
          ExplicitLeft = 670
          ExplicitTop = 233
        end
        object SpeedButton195: TSpeedButton
          Left = 1132
          Top = 245
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton195Click
          ExplicitLeft = 786
          ExplicitTop = 233
        end
        object SpeedButton196: TSpeedButton
          Left = 802
          Top = 303
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton196Click
          ExplicitLeft = 551
          ExplicitTop = 289
        end
        object SpeedButton197: TSpeedButton
          Left = 971
          Top = 303
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton197Click
          ExplicitLeft = 670
          ExplicitTop = 289
        end
        object SpeedButton198: TSpeedButton
          Left = 1132
          Top = 303
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton198Click
          ExplicitLeft = 786
          ExplicitTop = 289
        end
        object SpeedButton199: TSpeedButton
          Left = 802
          Top = 361
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton199Click
          ExplicitLeft = 551
          ExplicitTop = 343
        end
        object SpeedButton200: TSpeedButton
          Left = 971
          Top = 361
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton200Click
          ExplicitLeft = 670
          ExplicitTop = 343
        end
        object SpeedButton201: TSpeedButton
          Left = 1132
          Top = 361
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton201Click
          ExplicitLeft = 786
          ExplicitTop = 343
        end
        object SpeedButton202: TSpeedButton
          Left = 802
          Top = 420
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton202Click
          ExplicitLeft = 551
          ExplicitTop = 398
        end
        object SpeedButton203: TSpeedButton
          Left = 971
          Top = 420
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton203Click
          ExplicitLeft = 670
          ExplicitTop = 398
        end
        object SpeedButton204: TSpeedButton
          Left = 1132
          Top = 420
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton204Click
          ExplicitLeft = 786
          ExplicitTop = 398
        end
        object SpeedButton205: TSpeedButton
          Left = 802
          Top = 478
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton205Click
          ExplicitLeft = 551
          ExplicitTop = 455
        end
        object SpeedButton206: TSpeedButton
          Left = 971
          Top = 478
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton206Click
          ExplicitLeft = 670
          ExplicitTop = 455
        end
        object SpeedButton207: TSpeedButton
          Left = 1132
          Top = 478
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton207Click
          ExplicitLeft = 786
          ExplicitTop = 455
        end
        object SpeedButton208: TSpeedButton
          Left = 802
          Top = 534
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton208Click
          ExplicitLeft = 551
          ExplicitTop = 507
        end
        object SpeedButton209: TSpeedButton
          Left = 971
          Top = 534
          Width = 92
          Height = 50
          Anchors = []
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton209Click
          ExplicitLeft = 670
          ExplicitTop = 507
        end
        object SpeedButton210: TSpeedButton
          Left = 1132
          Top = 534
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton210Click
          ExplicitLeft = 786
          ExplicitTop = 507
        end
      end
    end
    object TabSheet5: TTabSheet
      ImageIndex = 4
      object GridPanel4: TGridPanel
        Left = 0
        Top = 0
        Width = 1258
        Height = 589
        Align = alClient
        ColumnCollection = <
          item
            Value = 15.810645969091030000
          end
          item
            Value = 15.387160356851140000
          end
          item
            Value = 14.912916082165310000
          end
          item
            Value = 14.395748556899890000
          end
          item
            Value = 13.818310265960750000
          end
          item
            Value = 13.179593987792810000
          end
          item
            Value = 12.495624781239070000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = SpeedButton211
            Row = 5
          end
          item
            Column = 1
            Control = SpeedButton212
            Row = 5
          end
          item
            Column = 2
            Control = SpeedButton213
            Row = 5
          end
          item
            Column = 3
            Control = SpeedButton214
            Row = 5
          end
          item
            Column = 0
            Control = SpeedButton215
            Row = 0
          end
          item
            Column = 1
            Control = SpeedButton216
            Row = 0
          end
          item
            Column = 2
            Control = SpeedButton217
            Row = 0
          end
          item
            Column = 3
            Control = SpeedButton218
            Row = 0
          end
          item
            Column = 0
            Control = SpeedButton219
            Row = 1
          end
          item
            Column = 1
            Control = SpeedButton220
            Row = 1
          end
          item
            Column = 2
            Control = SpeedButton221
            Row = 1
          end
          item
            Column = 3
            Control = SpeedButton222
            Row = 1
          end
          item
            Column = 0
            Control = SpeedButton223
            Row = 2
          end
          item
            Column = 1
            Control = SpeedButton224
            Row = 2
          end
          item
            Column = 2
            Control = SpeedButton225
            Row = 2
          end
          item
            Column = 3
            Control = SpeedButton226
            Row = 2
          end
          item
            Column = 0
            Control = SpeedButton227
            Row = 3
          end
          item
            Column = 1
            Control = SpeedButton228
            Row = 3
          end
          item
            Column = 2
            Control = SpeedButton229
            Row = 3
          end
          item
            Column = 3
            Control = SpeedButton230
            Row = 3
          end
          item
            Column = 0
            Control = SpeedButton231
            Row = 4
          end
          item
            Column = 1
            Control = SpeedButton232
            Row = 4
          end
          item
            Column = 2
            Control = SpeedButton233
            Row = 4
          end
          item
            Column = 3
            Control = SpeedButton234
            Row = 4
          end
          item
            Column = 0
            Control = SpeedButton235
            Row = 6
          end
          item
            Column = 1
            Control = SpeedButton236
            Row = 6
          end
          item
            Column = 2
            Control = SpeedButton237
            Row = 6
          end
          item
            Column = 3
            Control = SpeedButton238
            Row = 6
          end
          item
            Column = 0
            Control = SpeedButton239
            Row = 7
          end
          item
            Column = 1
            Control = SpeedButton240
            Row = 7
          end
          item
            Column = 2
            Control = SpeedButton241
            Row = 7
          end
          item
            Column = 3
            Control = SpeedButton242
            Row = 7
          end
          item
            Column = 0
            Control = SpeedButton243
            Row = 8
          end
          item
            Column = 1
            Control = SpeedButton244
            Row = 8
          end
          item
            Column = 2
            Control = SpeedButton245
            Row = 8
          end
          item
            Column = 3
            Control = SpeedButton246
            Row = 8
          end
          item
            Column = 0
            Control = SpeedButton247
            Row = 9
          end
          item
            Column = 1
            Control = SpeedButton248
            Row = 9
          end
          item
            Column = 3
            Control = SpeedButton249
            Row = 9
          end
          item
            Column = 2
            Control = SpeedButton250
            Row = 9
          end
          item
            Column = 4
            Control = SpeedButton251
            Row = 0
          end
          item
            Column = 5
            Control = SpeedButton252
            Row = 0
          end
          item
            Column = 6
            Control = SpeedButton253
            Row = 0
          end
          item
            Column = 4
            Control = SpeedButton254
            Row = 1
          end
          item
            Column = 5
            Control = SpeedButton255
            Row = 1
          end
          item
            Column = 6
            Control = SpeedButton256
            Row = 1
          end
          item
            Column = 4
            Control = SpeedButton257
            Row = 2
          end
          item
            Column = 5
            Control = SpeedButton258
            Row = 2
          end
          item
            Column = 6
            Control = SpeedButton259
            Row = 2
          end
          item
            Column = 4
            Control = SpeedButton260
            Row = 3
          end
          item
            Column = 5
            Control = SpeedButton261
            Row = 3
          end
          item
            Column = 6
            Control = SpeedButton262
            Row = 3
          end
          item
            Column = 4
            Control = SpeedButton263
            Row = 4
          end
          item
            Column = 5
            Control = SpeedButton264
            Row = 4
          end
          item
            Column = 6
            Control = SpeedButton265
            Row = 4
          end
          item
            Column = 4
            Control = SpeedButton266
            Row = 5
          end
          item
            Column = 5
            Control = SpeedButton267
            Row = 5
          end
          item
            Column = 6
            Control = SpeedButton268
            Row = 5
          end
          item
            Column = 4
            Control = SpeedButton269
            Row = 6
          end
          item
            Column = 5
            Control = SpeedButton270
            Row = 6
          end
          item
            Column = 6
            Control = SpeedButton271
            Row = 6
          end
          item
            Column = 4
            Control = SpeedButton272
            Row = 7
          end
          item
            Column = 5
            Control = SpeedButton273
            Row = 7
          end
          item
            Column = 6
            Control = SpeedButton274
            Row = 7
          end
          item
            Column = 4
            Control = SpeedButton275
            Row = 8
          end
          item
            Column = 5
            Control = SpeedButton276
            Row = 8
          end
          item
            Column = 6
            Control = SpeedButton277
            Row = 8
          end
          item
            Column = 4
            Control = SpeedButton278
            Row = 9
          end
          item
            Column = 5
            Control = SpeedButton279
            Row = 9
          end
          item
            Column = 6
            Control = SpeedButton280
            Row = 9
          end>
        RowCollection = <
          item
            Value = 10.196228078695800000
          end
          item
            Value = 10.196228078695800000
          end
          item
            Value = 10.196228078695800000
          end
          item
            Value = 10.170737508499060000
          end
          item
            Value = 10.189855436146610000
          end
          item
            Value = 9.552989471387448000
          end
          item
            Value = 10.113322934728520000
          end
          item
            Value = 10.150260173542300000
          end
          item
            Value = 9.449785131950891000
          end
          item
            Value = 9.784365107657766000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 0
        DesignSize = (
          1258
          589)
        object SpeedButton211: TSpeedButton
          Left = 54
          Top = 303
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton211Click
          ExplicitLeft = 25
          ExplicitTop = 288
        end
        object SpeedButton212: TSpeedButton
          Left = 250
          Top = 303
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton212Click
          ExplicitLeft = 163
          ExplicitTop = 288
        end
        object SpeedButton213: TSpeedButton
          Left = 440
          Top = 303
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton213Click
          ExplicitLeft = 297
          ExplicitTop = 288
        end
        object SpeedButton214: TSpeedButton
          Left = 624
          Top = 303
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton214Click
          ExplicitLeft = 426
          ExplicitTop = 288
        end
        object SpeedButton215: TSpeedButton
          Left = 54
          Top = 6
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton215Click
          ExplicitLeft = 25
          ExplicitTop = 5
        end
        object SpeedButton216: TSpeedButton
          Left = 250
          Top = 6
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton216Click
          ExplicitLeft = 163
          ExplicitTop = 5
        end
        object SpeedButton217: TSpeedButton
          Left = 440
          Top = 6
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton217Click
          ExplicitLeft = 297
          ExplicitTop = 5
        end
        object SpeedButton218: TSpeedButton
          Left = 624
          Top = 6
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton218Click
          ExplicitLeft = 426
          ExplicitTop = 5
        end
        object SpeedButton219: TSpeedButton
          Left = 54
          Top = 66
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton219Click
          ExplicitLeft = 25
          ExplicitTop = 62
        end
        object SpeedButton220: TSpeedButton
          Left = 250
          Top = 66
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton220Click
          ExplicitLeft = 163
          ExplicitTop = 62
        end
        object SpeedButton221: TSpeedButton
          Left = 440
          Top = 66
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton221Click
          ExplicitLeft = 297
          ExplicitTop = 62
        end
        object SpeedButton222: TSpeedButton
          Left = 624
          Top = 66
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton222Click
          ExplicitLeft = 426
          ExplicitTop = 62
        end
        object SpeedButton223: TSpeedButton
          Left = 54
          Top = 126
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton223Click
          ExplicitLeft = 25
          ExplicitTop = 119
        end
        object SpeedButton224: TSpeedButton
          Left = 250
          Top = 126
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton224Click
          ExplicitLeft = 163
          ExplicitTop = 119
        end
        object SpeedButton225: TSpeedButton
          Left = 440
          Top = 126
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton225Click
          ExplicitLeft = 297
          ExplicitTop = 119
        end
        object SpeedButton226: TSpeedButton
          Left = 624
          Top = 126
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton226Click
          ExplicitLeft = 426
          ExplicitTop = 119
        end
        object SpeedButton227: TSpeedButton
          Left = 54
          Top = 185
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton227Click
          ExplicitLeft = 25
          ExplicitTop = 176
        end
        object SpeedButton228: TSpeedButton
          Left = 250
          Top = 185
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton228Click
          ExplicitLeft = 163
          ExplicitTop = 176
        end
        object SpeedButton229: TSpeedButton
          Left = 440
          Top = 185
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton229Click
          ExplicitLeft = 297
          ExplicitTop = 176
        end
        object SpeedButton230: TSpeedButton
          Left = 624
          Top = 185
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton230Click
          ExplicitLeft = 426
          ExplicitTop = 176
        end
        object SpeedButton231: TSpeedButton
          Left = 54
          Top = 245
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton231Click
          ExplicitLeft = 25
          ExplicitTop = 233
        end
        object SpeedButton232: TSpeedButton
          Left = 250
          Top = 245
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton232Click
          ExplicitLeft = 163
          ExplicitTop = 233
        end
        object SpeedButton233: TSpeedButton
          Left = 440
          Top = 245
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton233Click
          ExplicitLeft = 297
          ExplicitTop = 233
        end
        object SpeedButton234: TSpeedButton
          Left = 624
          Top = 245
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton234Click
          ExplicitLeft = 426
          ExplicitTop = 233
        end
        object SpeedButton235: TSpeedButton
          Left = 54
          Top = 361
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton235Click
          ExplicitLeft = 25
          ExplicitTop = 342
        end
        object SpeedButton236: TSpeedButton
          Left = 250
          Top = 361
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton236Click
          ExplicitLeft = 163
          ExplicitTop = 342
        end
        object SpeedButton237: TSpeedButton
          Left = 440
          Top = 361
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton237Click
          ExplicitLeft = 297
          ExplicitTop = 342
        end
        object SpeedButton238: TSpeedButton
          Left = 624
          Top = 361
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton238Click
          ExplicitLeft = 426
          ExplicitTop = 342
        end
        object SpeedButton239: TSpeedButton
          Left = 54
          Top = 420
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton239Click
          ExplicitLeft = 25
          ExplicitTop = 398
        end
        object SpeedButton240: TSpeedButton
          Left = 250
          Top = 420
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton240Click
          ExplicitLeft = 163
          ExplicitTop = 398
        end
        object SpeedButton241: TSpeedButton
          Left = 440
          Top = 420
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton241Click
          ExplicitLeft = 297
          ExplicitTop = 398
        end
        object SpeedButton242: TSpeedButton
          Left = 624
          Top = 420
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton242Click
          ExplicitLeft = 426
          ExplicitTop = 398
        end
        object SpeedButton243: TSpeedButton
          Left = 54
          Top = 478
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton243Click
          ExplicitLeft = 25
          ExplicitTop = 453
        end
        object SpeedButton244: TSpeedButton
          Left = 250
          Top = 478
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton244Click
          ExplicitLeft = 163
          ExplicitTop = 453
        end
        object SpeedButton245: TSpeedButton
          Left = 440
          Top = 478
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton245Click
          ExplicitLeft = 297
          ExplicitTop = 455
        end
        object SpeedButton246: TSpeedButton
          Left = 624
          Top = 478
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton246Click
          ExplicitLeft = 426
          ExplicitTop = 453
        end
        object SpeedButton247: TSpeedButton
          Left = 54
          Top = 534
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton247Click
          ExplicitLeft = 25
          ExplicitTop = 507
        end
        object SpeedButton248: TSpeedButton
          Left = 250
          Top = 534
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton248Click
          ExplicitLeft = 163
          ExplicitTop = 507
        end
        object SpeedButton249: TSpeedButton
          Left = 624
          Top = 534
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton249Click
          ExplicitLeft = 426
          ExplicitTop = 506
        end
        object SpeedButton250: TSpeedButton
          Left = 440
          Top = 534
          Width = 92
          Height = 50
          Anchors = []
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton250Click
          ExplicitLeft = 297
          ExplicitTop = 507
        end
        object SpeedButton251: TSpeedButton
          Left = 802
          Top = 6
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton251Click
          ExplicitLeft = 551
          ExplicitTop = 5
        end
        object SpeedButton252: TSpeedButton
          Left = 971
          Top = 6
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton252Click
          ExplicitLeft = 670
          ExplicitTop = 5
        end
        object SpeedButton253: TSpeedButton
          Left = 1132
          Top = 6
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton253Click
          ExplicitLeft = 786
          ExplicitTop = 5
        end
        object SpeedButton254: TSpeedButton
          Left = 802
          Top = 66
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton254Click
          ExplicitLeft = 551
          ExplicitTop = 62
        end
        object SpeedButton255: TSpeedButton
          Left = 971
          Top = 66
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton255Click
          ExplicitLeft = 670
          ExplicitTop = 62
        end
        object SpeedButton256: TSpeedButton
          Left = 1132
          Top = 66
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton256Click
          ExplicitLeft = 786
          ExplicitTop = 62
        end
        object SpeedButton257: TSpeedButton
          Left = 802
          Top = 126
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton257Click
          ExplicitLeft = 551
          ExplicitTop = 119
        end
        object SpeedButton258: TSpeedButton
          Left = 971
          Top = 126
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton258Click
          ExplicitLeft = 670
          ExplicitTop = 119
        end
        object SpeedButton259: TSpeedButton
          Left = 1132
          Top = 126
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton259Click
          ExplicitLeft = 786
          ExplicitTop = 119
        end
        object SpeedButton260: TSpeedButton
          Left = 802
          Top = 185
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton260Click
          ExplicitLeft = 551
          ExplicitTop = 176
        end
        object SpeedButton261: TSpeedButton
          Left = 971
          Top = 185
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton261Click
          ExplicitLeft = 670
          ExplicitTop = 176
        end
        object SpeedButton262: TSpeedButton
          Left = 1132
          Top = 185
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton262Click
          ExplicitLeft = 786
          ExplicitTop = 176
        end
        object SpeedButton263: TSpeedButton
          Left = 802
          Top = 245
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton263Click
          ExplicitLeft = 551
          ExplicitTop = 233
        end
        object SpeedButton264: TSpeedButton
          Left = 971
          Top = 245
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton264Click
          ExplicitLeft = 670
          ExplicitTop = 233
        end
        object SpeedButton265: TSpeedButton
          Left = 1132
          Top = 245
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton265Click
          ExplicitLeft = 786
          ExplicitTop = 233
        end
        object SpeedButton266: TSpeedButton
          Left = 802
          Top = 303
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton266Click
          ExplicitLeft = 551
          ExplicitTop = 289
        end
        object SpeedButton267: TSpeedButton
          Left = 971
          Top = 303
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton267Click
          ExplicitLeft = 670
          ExplicitTop = 289
        end
        object SpeedButton268: TSpeedButton
          Left = 1132
          Top = 303
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton268Click
          ExplicitLeft = 786
          ExplicitTop = 289
        end
        object SpeedButton269: TSpeedButton
          Left = 802
          Top = 361
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton269Click
          ExplicitLeft = 551
          ExplicitTop = 343
        end
        object SpeedButton270: TSpeedButton
          Left = 971
          Top = 361
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton270Click
          ExplicitLeft = 670
          ExplicitTop = 343
        end
        object SpeedButton271: TSpeedButton
          Left = 1132
          Top = 361
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton271Click
          ExplicitLeft = 786
          ExplicitTop = 343
        end
        object SpeedButton272: TSpeedButton
          Left = 802
          Top = 420
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton272Click
          ExplicitLeft = 551
          ExplicitTop = 398
        end
        object SpeedButton273: TSpeedButton
          Left = 971
          Top = 420
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton273Click
          ExplicitLeft = 670
          ExplicitTop = 398
        end
        object SpeedButton274: TSpeedButton
          Left = 1132
          Top = 420
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton274Click
          ExplicitLeft = 786
          ExplicitTop = 398
        end
        object SpeedButton275: TSpeedButton
          Left = 802
          Top = 478
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton275Click
          ExplicitLeft = 551
          ExplicitTop = 455
        end
        object SpeedButton276: TSpeedButton
          Left = 971
          Top = 478
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton276Click
          ExplicitLeft = 670
          ExplicitTop = 455
        end
        object SpeedButton277: TSpeedButton
          Left = 1132
          Top = 478
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton277Click
          ExplicitLeft = 786
          ExplicitTop = 455
        end
        object SpeedButton278: TSpeedButton
          Left = 802
          Top = 534
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton278Click
          ExplicitLeft = 551
          ExplicitTop = 507
        end
        object SpeedButton279: TSpeedButton
          Left = 971
          Top = 534
          Width = 92
          Height = 50
          Anchors = []
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton279Click
          ExplicitLeft = 670
          ExplicitTop = 507
        end
        object SpeedButton280: TSpeedButton
          Left = 1132
          Top = 534
          Width = 92
          Height = 50
          Anchors = []
          OnClick = SpeedButton280Click
          ExplicitLeft = 786
          ExplicitTop = 507
        end
      end
    end
    object TabSheet6: TTabSheet
      ImageIndex = 5
      object GridPanelTables: TGridPanel
        Left = 0
        Top = 0
        Width = 1258
        Height = 589
        Align = alClient
        ColumnCollection = <
          item
            Value = 20.000000000000000000
          end
          item
            Value = 20.000000000000000000
          end
          item
            Value = 20.000000000000000000
          end
          item
            Value = 20.000000000000000000
          end
          item
            Value = 20.000000000000000000
          end>
        ControlCollection = <>
        RowCollection = <
          item
            Value = 20.000000000000000000
          end
          item
            Value = 20.000000000000000000
          end
          item
            Value = 20.000000000000000000
          end
          item
            Value = 20.000000000000000000
          end
          item
            Value = 20.000000000000000000
          end>
        TabOrder = 0
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 53
    Width = 1266
    Height = 39
    ButtonHeight = 41
    ButtonWidth = 39
    Caption = 'ToolBar1'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShowCaptions = True
    TabOrder = 1
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      AutoSize = True
      Caption = ' A '
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 43
      Top = 0
      Caption = 'B'
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 82
      Top = 0
      Caption = 'C'
      ImageIndex = 2
      OnClick = ToolButton3Click
    end
    object ToolButton4: TToolButton
      Left = 121
      Top = 0
      Caption = 'D'
      ImageIndex = 3
      OnClick = ToolButton4Click
    end
    object ToolButton5: TToolButton
      Left = 160
      Top = 0
      Caption = 'E'
      ImageIndex = 4
      OnClick = ToolButton5Click
    end
    object ToolButton6: TToolButton
      Left = 199
      Top = 0
      Caption = 'F'
      ImageIndex = 5
      OnClick = ToolButton6Click
    end
    object ToolButton7: TToolButton
      Left = 238
      Top = 0
      Caption = 'G'
      ImageIndex = 6
      OnClick = ToolButton7Click
    end
    object ToolButton8: TToolButton
      Left = 277
      Top = 0
      Caption = 'H'
      ImageIndex = 7
      OnClick = ToolButton8Click
    end
    object ToolButton9: TToolButton
      Left = 316
      Top = 0
      Caption = 'I'
      ImageIndex = 8
      OnClick = ToolButton9Click
    end
    object ToolButton10: TToolButton
      Left = 355
      Top = 0
      Caption = 'J'
      ImageIndex = 9
      OnClick = ToolButton10Click
    end
    object ToolButton11: TToolButton
      Left = 394
      Top = 0
      Caption = 'K'
      ImageIndex = 10
      OnClick = ToolButton11Click
    end
    object ToolButton12: TToolButton
      Left = 433
      Top = 0
      Caption = 'L'
      ImageIndex = 11
      OnClick = ToolButton12Click
    end
    object ToolButton13: TToolButton
      Left = 472
      Top = 0
      Caption = 'M'
      ImageIndex = 12
      OnClick = ToolButton13Click
    end
    object ToolButton14: TToolButton
      Left = 511
      Top = 0
      Caption = 'N'
      ImageIndex = 13
      OnClick = ToolButton14Click
    end
    object ToolButton26: TToolButton
      Left = 550
      Top = 0
      Caption = 'Z'
      ImageIndex = 25
      OnClick = ToolButton26Click
    end
    object ToolButton15: TToolButton
      Left = 589
      Top = 0
      Caption = 'O'
      ImageIndex = 14
      OnClick = ToolButton15Click
    end
    object ToolButton16: TToolButton
      Left = 628
      Top = 0
      Caption = 'P'
      ImageIndex = 15
      OnClick = ToolButton16Click
    end
    object ToolButton17: TToolButton
      Left = 667
      Top = 0
      Caption = 'Q'
      ImageIndex = 16
      OnClick = ToolButton17Click
    end
    object ToolButton18: TToolButton
      Left = 706
      Top = 0
      Caption = 'R'
      ImageIndex = 17
      OnClick = ToolButton18Click
    end
    object ToolButton19: TToolButton
      Left = 745
      Top = 0
      Caption = 'S'
      ImageIndex = 18
      OnClick = ToolButton19Click
    end
    object ToolButton20: TToolButton
      Left = 784
      Top = 0
      Caption = 'T'
      ImageIndex = 19
      OnClick = ToolButton20Click
    end
    object ToolButton21: TToolButton
      Left = 823
      Top = 0
      Caption = 'U'
      ImageIndex = 20
      OnClick = ToolButton21Click
    end
    object ToolButton22: TToolButton
      Left = 862
      Top = 0
      Caption = 'V'
      ImageIndex = 21
      OnClick = ToolButton22Click
    end
    object ToolButton23: TToolButton
      Left = 901
      Top = 0
      Caption = 'W'
      ImageIndex = 22
      OnClick = ToolButton23Click
    end
    object ToolButton24: TToolButton
      Left = 940
      Top = 0
      Caption = 'X'
      ImageIndex = 23
      OnClick = ToolButton24Click
    end
    object ToolButton25: TToolButton
      Left = 979
      Top = 0
      Caption = 'Y'
      ImageIndex = 24
      OnClick = ToolButton25Click
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1266
    Height = 53
    Align = alTop
    TabOrder = 2
    object Panel1: TPanel
      Left = 180
      Top = 1
      Width = 1085
      Height = 51
      Align = alClient
      BevelEdges = []
      BevelOuter = bvNone
      TabOrder = 0
      object sbCatT5: TSpeedButton
        AlignWithMargins = True
        Left = 540
        Top = 3
        Width = 173
        Height = 45
        Align = alLeft
        OnClick = sbCatT5Click
        ExplicitLeft = 4
        ExplicitTop = 4
        ExplicitHeight = 57
      end
      object sbCatT4: TSpeedButton
        AlignWithMargins = True
        Left = 361
        Top = 3
        Width = 173
        Height = 45
        Align = alLeft
        OnClick = sbCatT4Click
        ExplicitLeft = 541
        ExplicitTop = 2
        ExplicitHeight = 57
      end
      object sbCatT3: TSpeedButton
        AlignWithMargins = True
        Left = 182
        Top = 3
        Width = 173
        Height = 45
        Align = alLeft
        OnClick = sbCatT3Click
        ExplicitLeft = 362
        ExplicitTop = 2
      end
      object sbCatT2: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 173
        Height = 45
        Align = alLeft
        OnClick = sbCatT2Click
        ExplicitLeft = 183
        ExplicitTop = 2
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 179
      Height = 51
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object sbCatT1: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 173
        Height = 45
        Align = alLeft
        OnClick = sbCatT1Click
        ExplicitHeight = 50
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 508
    Top = 233
    object ActivateButtons1: TMenuItem
      Caption = 'Buttons'
      object ActivateButtons2: TMenuItem
        Caption = 'Set buttons visible true'
        Enabled = False
        Visible = False
        OnClick = ActivateButtons2Click
      end
      object Setbuttonsvisiblefalse1: TMenuItem
        Caption = 'Set buttons visible false'
        Enabled = False
        Visible = False
        OnClick = Setbuttonsvisiblefalse1Click
      end
      object Edittables1: TMenuItem
        Caption = 'Edit tables'
        OnClick = Edittables1Click
      end
      object Savetables1: TMenuItem
        Caption = 'Save tables'
        OnClick = Savetables1Click
      end
      object Addtableheader1: TMenuItem
        Caption = 'Add table header'
        OnClick = Addtableheader1Click
      end
    end
  end
end
