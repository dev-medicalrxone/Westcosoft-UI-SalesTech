object FrmPOSRest: TFrmPOSRest
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'POS Restaurant'
  ClientHeight = 729
  ClientWidth = 1262
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object Label7: TLabel
    Left = 293
    Top = 14
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
    Visible = False
  end
  object DBText7: TDBText
    Left = 437
    Top = 14
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
    Visible = False
  end
  object Panel2: TPanel
    Left = 702
    Top = 0
    Width = 560
    Height = 710
    Align = alRight
    TabOrder = 0
    object cxDBCurrencyEdit1: TDBEdit
      Left = 16
      Top = 275
      Width = 159
      Height = 31
      TabStop = False
      Color = clMenuText
      DataField = 'TOTAL'
      DataSource = DMMidas.DTSTransHead
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -19
      Font.Name = 'Roboto Cn'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      OnChange = cxDBCurrencyEdit1Change
    end
    object DBGrid2: TDBGrid
      AlignWithMargins = True
      Left = 1
      Top = 42
      Width = 558
      Height = 246
      Hint = 'Test'
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      CustomHint = BalloonHint1
      TabStop = False
      Align = alClient
      DataSource = DMMidas.DSTransaction
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI Semibold'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid2DrawColumnCell
      OnDblClick = DBGrid2DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'TAX_ESTATAL'
          Title.Caption = 'TX'
          Width = 22
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MAIN_COURSE_DEFINE'
          Title.Caption = 'MC'
          Width = 22
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODDESC_DEFINE'
          Title.Caption = 'PRODUCT'
          Width = 267
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRICE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBtnText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTY'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Width = 95
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 288
      Width = 558
      Height = 192
      Align = alBottom
      Font.Charset = ANSI_CHARSET
      Font.Color = clMoneyGreen
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      object Panel4: TPanel
        Left = 277
        Top = 3
        Width = 2
        Height = 140
        BevelOuter = bvLowered
        TabOrder = 0
        object Panel5: TPanel
          Left = -31
          Top = -6
          Width = 1
          Height = 106
          TabOrder = 0
        end
      end
      object Panel9: TPanel
        Left = 1
        Top = 1
        Width = 278
        Height = 149
        Align = alLeft
        TabOrder = 1
        DesignSize = (
          278
          149)
        object lblTotal: TLabel
          Left = 5
          Top = 108
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
          Left = 149
          Top = 108
          Width = 122
          Height = 25
          Alignment = taRightJustify
          Anchors = []
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
        object DBTextRedTax: TDBText
          Left = 149
          Top = 82
          Width = 122
          Height = 25
          Alignment = taRightJustify
          Anchors = []
          DataField = 'TAX_PROCESSED_FOOD'
          DataSource = DMMidas.DTSTransHead
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Font.Quality = fqClearType
          ParentFont = False
        end
        object lblRedTax: TLabel
          Left = 5
          Top = 82
          Width = 106
          Height = 25
          Caption = 'Reduced Tax'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Font.Quality = fqClearType
          ParentFont = False
          Transparent = True
        end
        object lblStateTax: TLabel
          Left = 5
          Top = 57
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
        object DBTextStateTax: TDBText
          Left = 149
          Top = 57
          Width = 122
          Height = 25
          Alignment = taRightJustify
          Anchors = []
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
        object DBTextMunTax: TDBText
          Left = 149
          Top = 31
          Width = 122
          Height = 25
          Alignment = taRightJustify
          Anchors = []
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
        object lblMunTax: TLabel
          Left = 5
          Top = 31
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
        object lblSubTotal: TLabel
          Left = 5
          Top = 6
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
        object DBTextSubTotal: TDBText
          Left = 149
          Top = 6
          Width = 122
          Height = 25
          Alignment = taRightJustify
          Anchors = []
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
        object DBTextFSA: TDBText
          Left = 149
          Top = 118
          Width = 122
          Height = 25
          Alignment = taRightJustify
          Anchors = []
          DataField = 'FSA'
          DataSource = DMMidas.DTSTransHead
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Font.Quality = fqClearType
          ParentFont = False
          Visible = False
        end
        object DBTextOtcCard: TDBText
          Left = 149
          Top = 96
          Width = 122
          Height = 25
          Alignment = taRightJustify
          Anchors = []
          Color = clBtnFace
          DataField = 'OTCCard'
          DataSource = DMMidas.DTSTransHead
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Font.Quality = fqClearType
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object lblFSA: TLabel
          Left = 101
          Top = 26
          Width = 33
          Height = 25
          Caption = 'FSA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Font.Quality = fqClearType
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object lblOtcCard: TLabel
          Left = 64
          Top = 0
          Width = 79
          Height = 25
          Caption = 'OTC Card'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Font.Quality = fqClearType
          ParentFont = False
          Transparent = True
          Visible = False
        end
      end
      object Panel10: TPanel
        Left = 279
        Top = 1
        Width = 278
        Height = 149
        Align = alRight
        Alignment = taLeftJustify
        TabOrder = 2
        DesignSize = (
          278
          149)
        object DBTextDiscount: TDBText
          Left = 146
          Top = 6
          Width = 122
          Height = 25
          Alignment = taRightJustify
          Anchors = []
          DataField = 'TOTAL_DISCOUNT'
          DataSource = DMMidas.DTSTransHead
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Font.Quality = fqClearType
          ParentFont = False
          Visible = False
        end
        object lblDiscount: TLabel
          Left = 3
          Top = 6
          Width = 87
          Height = 25
          Caption = 'Total Disc.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Font.Quality = fqClearType
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object btnPrintReceipt: TButton
          Left = 64
          Top = 99
          Width = 210
          Height = 44
          Anchors = []
          Caption = 'PRINT RECEIPT'
          ImageIndex = 29
          ImageMargins.Left = 3
          Images = FrmMain.ImageList2
          TabOrder = 0
          OnClick = btnPrintReceiptClick
        end
        object btnCheckout: TButton
          Left = 64
          Top = 49
          Width = 210
          Height = 44
          Anchors = []
          Caption = 'CHECKOUT'
          ImageIndex = 11
          ImageMargins.Left = 2
          Images = FrmMain.ImageList2
          TabOrder = 1
          OnClick = btnCheckoutClick
        end
      end
      object Panel11: TPanel
        Left = 1
        Top = 150
        Width = 556
        Height = 41
        Margins.Bottom = 0
        Align = alBottom
        BevelEdges = [beLeft, beTop, beRight]
        BevelOuter = bvNone
        TabOrder = 3
        object LabelRecibido: TLabel
          Left = 4
          Top = 8
          Width = 85
          Height = 25
          Caption = 'RECIBIDO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Font.Quality = fqClearType
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object LabelCambio: TLabel
          Left = 474
          Top = 8
          Width = 65
          Height = 25
          Alignment = taRightJustify
          Caption = 'Change'
          Color = clRed
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Font.Quality = fqClearType
          ParentColor = False
          ParentFont = False
          Transparent = True
          Visible = False
        end
      end
    end
    object pcOptions: TPageControl
      Left = 1
      Top = 480
      Width = 558
      Height = 229
      ActivePage = TabSheet22
      Align = alBottom
      TabOrder = 3
      object TabSheet21: TTabSheet
        Caption = 'Main'
        object GridPanel12: TGridPanel
          Left = 0
          Top = -4
          Width = 550
          Height = 205
          Align = alBottom
          ColumnCollection = <
            item
              Value = 33.049447526772440000
            end
            item
              Value = 33.372198876016670000
            end
            item
              Value = 33.578353597210900000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = BtnOpenTabs
              Row = 0
            end
            item
              Column = 2
              Control = BPrecio
              Row = 0
            end
            item
              Column = 0
              Control = btnStartTab
              Row = 1
            end
            item
              Column = 1
              Control = BBorrar
              Row = 1
            end
            item
              Column = 2
              Control = BQty
              Row = 1
            end
            item
              Column = 0
              Control = btnCombine
              Row = 2
            end
            item
              Column = 1
              Control = BLimpiar
              Row = 2
            end
            item
              Column = 0
              Control = btnDone
              Row = 3
            end
            item
              Column = 1
              Control = btnEditMainCourse
              Row = 3
            end
            item
              Column = 2
              Control = btnLogout
              Row = 3
            end
            item
              Column = 1
              Control = cxButton22
              Row = 0
            end
            item
              Column = 2
              Control = RzBitBtn16
              Row = 2
            end>
          RowCollection = <
            item
              Value = 25.013728808852630000
            end
            item
              Value = 24.973652406288570000
            end
            item
              Value = 24.995797725983540000
            end
            item
              Value = 25.016821058875260000
            end>
          TabOrder = 0
          object BtnOpenTabs: TButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 175
            Height = 45
            Align = alClient
            Caption = 'OPEN TAB'#39'S'
            ImageIndex = 25
            ImageMargins.Left = 3
            Images = FrmMain.ImageList2
            TabOrder = 0
            OnClick = BtnOpenTabsClick
          end
          object BPrecio: TButton
            AlignWithMargins = True
            Left = 368
            Top = 4
            Width = 178
            Height = 45
            Align = alClient
            Caption = 'CAMBIO PRECIO(F10)'
            ImageIndex = 21
            ImageMargins.Left = 3
            Images = FrmMain.ImageList2
            TabOrder = 1
            OnClick = BPrecioClick
          end
          object btnStartTab: TButton
            AlignWithMargins = True
            Left = 4
            Top = 55
            Width = 175
            Height = 44
            Align = alClient
            Caption = 'SART TAB'
            ImageIndex = 10
            ImageMargins.Left = 3
            Images = FrmMain.ImageList2
            TabOrder = 2
            OnClick = btnStartTabClick
          end
          object BBorrar: TButton
            AlignWithMargins = True
            Left = 185
            Top = 55
            Width = 177
            Height = 44
            Align = alClient
            Caption = 'DELETE PROD.(F7)  '
            ImageIndex = 6
            ImageMargins.Left = 2
            Images = FrmMain.ImageList2
            TabOrder = 3
            OnClick = BBorrarClick
          end
          object BQty: TButton
            AlignWithMargins = True
            Left = 368
            Top = 55
            Width = 178
            Height = 44
            Align = alClient
            Caption = 'QUANTITY (F9)       '
            ImageIndex = 20
            ImageMargins.Left = 3
            Images = FrmMain.ImageList2
            TabOrder = 4
            OnClick = BQtyClick
          end
          object btnCombine: TButton
            AlignWithMargins = True
            Left = 4
            Top = 105
            Width = 175
            Height = 45
            Align = alClient
            Caption = 'COMBINE TAB'
            ImageIndex = 38
            Images = FrmMain.ImageList2
            TabOrder = 5
            OnClick = btnCombineClick
          end
          object BLimpiar: TButton
            AlignWithMargins = True
            Left = 185
            Top = 105
            Width = 177
            Height = 45
            Align = alClient
            Caption = 'CANCEL TRANS. (F8)'
            ImageIndex = 7
            ImageMargins.Left = 2
            Images = FrmMain.ImageList2
            TabOrder = 6
            OnClick = BLimpiarClick
          end
          object btnDone: TButton
            AlignWithMargins = True
            Left = 4
            Top = 156
            Width = 175
            Height = 45
            Align = alClient
            Caption = 'DONE'
            ImageIndex = 15
            ImageMargins.Left = 3
            Images = FrmMain.ImageList2
            TabOrder = 7
            OnClick = btnDoneClick
          end
          object btnEditMainCourse: TButton
            AlignWithMargins = True
            Left = 185
            Top = 156
            Width = 177
            Height = 45
            Align = alClient
            Caption = 'EDIT MAIN COURSE'
            ImageIndex = 13
            ImageMargins.Left = 2
            Images = FrmMain.ImageList2
            TabOrder = 8
            OnClick = btnEditMainCourseClick
          end
          object btnLogout: TButton
            AlignWithMargins = True
            Left = 368
            Top = 156
            Width = 178
            Height = 45
            Align = alClient
            Caption = 'LOGOUT'
            ImageIndex = 22
            ImageMargins.Left = 2
            Images = FrmMain.ImageList2
            TabOrder = 9
            OnClick = btnLogoutClick
          end
          object cxButton22: TButton
            AlignWithMargins = True
            Left = 185
            Top = 4
            Width = 177
            Height = 45
            Align = alClient
            Caption = 'PAYOUT                 '
            ImageIndex = 33
            ImageMargins.Left = 3
            Images = FrmMain.ImageList2
            TabOrder = 10
            OnClick = cxButton22Click
          end
          object RzBitBtn16: TButton
            AlignWithMargins = True
            Left = 368
            Top = 105
            Width = 178
            Height = 45
            Align = alClient
            Caption = 'TRANS. EN HOLD   '
            DisabledImageIndex = 0
            ImageIndex = 19
            ImageMargins.Left = 3
            Images = FrmMain.ImageList2
            TabOrder = 11
            OnClick = RzBitBtn16Click
          end
        end
      end
      object TabSheet23: TTabSheet
        Caption = 'Main'
        ImageIndex = 2
        object GridPanel24: TGridPanel
          Left = 0
          Top = -4
          Width = 550
          Height = 205
          Align = alBottom
          ColumnCollection = <
            item
              Value = 33.049447526772440000
            end
            item
              Value = 33.372198876016670000
            end
            item
              Value = 33.578353597210900000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = btnRecallTrans
              Row = 0
            end
            item
              Column = 2
              Control = Button4
              Row = 0
            end
            item
              Column = 0
              Control = Button5
              Row = 1
            end
            item
              Column = 1
              Control = Button6
              Row = 1
            end
            item
              Column = 2
              Control = Button7
              Row = 1
            end
            item
              Column = 1
              Control = Button9
              Row = 2
            end
            item
              Column = 0
              Control = Button11
              Row = 3
            end
            item
              Column = 2
              Control = Button13
              Row = 3
            end
            item
              Column = 1
              Control = Button14
              Row = 0
            end
            item
              Column = 0
              Control = Button8
              Row = 2
            end
            item
              Column = 1
              Control = Button12
              Row = 3
            end
            item
              Column = 2
              Control = Button10
              Row = 2
            end>
          RowCollection = <
            item
              Value = 25.013728808852630000
            end
            item
              Value = 24.973652406288570000
            end
            item
              Value = 24.995797725983540000
            end
            item
              Value = 25.016821058875260000
            end>
          TabOrder = 0
          object btnRecallTrans: TButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 175
            Height = 45
            Align = alClient
            Caption = 'RECALL TRANSACTION'
            ImageIndex = 25
            ImageMargins.Left = 3
            Images = FrmMain.ImageList2
            TabOrder = 0
            OnClick = BtnOpenTabsClick
          end
          object Button4: TButton
            AlignWithMargins = True
            Left = 368
            Top = 4
            Width = 178
            Height = 45
            Align = alClient
            Caption = 'CAMBIO PRECIO(F10 )'
            ImageIndex = 21
            ImageMargins.Left = 3
            Images = FrmMain.ImageList2
            TabOrder = 1
            OnClick = BPrecioClick
          end
          object Button5: TButton
            AlignWithMargins = True
            Left = 4
            Top = 55
            Width = 175
            Height = 44
            Align = alClient
            Caption = 'SAVE TRANSACTION'
            ImageIndex = 10
            ImageMargins.Left = 3
            Images = FrmMain.ImageList2
            TabOrder = 2
            OnClick = btnStartTabClick
          end
          object Button6: TButton
            AlignWithMargins = True
            Left = 185
            Top = 55
            Width = 177
            Height = 44
            Align = alClient
            Caption = 'DELETE PROD.(F7)  '
            ImageIndex = 6
            ImageMargins.Left = 2
            Images = FrmMain.ImageList2
            TabOrder = 3
            OnClick = BBorrarClick
          end
          object Button7: TButton
            AlignWithMargins = True
            Left = 368
            Top = 55
            Width = 178
            Height = 44
            Align = alClient
            Caption = 'QUANTITY (F9)         '
            ImageIndex = 20
            ImageMargins.Left = 3
            Images = FrmMain.ImageList2
            TabOrder = 4
            OnClick = BQtyClick
          end
          object Button9: TButton
            AlignWithMargins = True
            Left = 185
            Top = 105
            Width = 177
            Height = 45
            Align = alClient
            Caption = 'CANCEL TRANS. (F8)'
            ImageIndex = 7
            ImageMargins.Left = 2
            Images = FrmMain.ImageList2
            TabOrder = 5
            OnClick = BLimpiarClick
          end
          object Button11: TButton
            AlignWithMargins = True
            Left = 4
            Top = 156
            Width = 175
            Height = 45
            Align = alClient
            Caption = 'DONE                   '
            ImageIndex = 15
            ImageMargins.Left = 3
            Images = FrmMain.ImageList2
            TabOrder = 6
            OnClick = btnDoneClick
          end
          object Button13: TButton
            AlignWithMargins = True
            Left = 368
            Top = 156
            Width = 178
            Height = 45
            Align = alClient
            Caption = 'LOGOUT                '
            ImageIndex = 22
            ImageMargins.Left = 2
            Images = FrmMain.ImageList2
            TabOrder = 7
            OnClick = btnLogoutClick
          end
          object Button14: TButton
            AlignWithMargins = True
            Left = 185
            Top = 4
            Width = 177
            Height = 45
            Align = alClient
            Caption = 'PAYOUT                 '
            ImageIndex = 33
            ImageMargins.Left = 3
            Images = FrmMain.ImageList2
            TabOrder = 8
            OnClick = cxButton22Click
          end
          object Button8: TButton
            AlignWithMargins = True
            Left = 4
            Top = 105
            Width = 175
            Height = 45
            Align = alClient
            Caption = 'REPRINT RECEIPT   '
            ImageIndex = 29
            ImageMargins.Left = 3
            Images = FrmMain.ImageList2
            TabOrder = 9
            OnClick = cxButton16Click
          end
          object Button12: TButton
            AlignWithMargins = True
            Left = 185
            Top = 156
            Width = 177
            Height = 45
            Align = alClient
            Caption = 'VENTA MANUAL     '
            ImageIndex = 27
            ImageMargins.Left = 3
            Images = FrmMain.ImageList2
            TabOrder = 10
            OnClick = cxButton6Click
          end
          object Button10: TButton
            AlignWithMargins = True
            Left = 368
            Top = 105
            Width = 178
            Height = 45
            Align = alClient
            Caption = 'TRANS. EN HOLD     '
            DisabledImageIndex = 0
            ImageIndex = 19
            ImageMargins.Left = 3
            Images = FrmMain.ImageList2
            TabOrder = 11
            OnClick = RzBitBtn16Click
          end
        end
      end
      object TabSheet22: TTabSheet
        Caption = 'Miscellaneous'
        ImageIndex = 1
        object GridPanel13: TGridPanel
          Left = 0
          Top = -4
          Width = 550
          Height = 205
          Align = alBottom
          ColumnCollection = <
            item
              Value = 33.049447526772440000
            end
            item
              Value = 33.372198876016670000
            end
            item
              Value = 33.578353597210900000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = btnPickup
              Row = 0
            end
            item
              Column = 0
              Control = btnCloseRegister
              Row = 1
            end
            item
              Column = 1
              Control = btnRefund
              Row = 0
            end
            item
              Column = 2
              Control = cxButton23
              Row = 0
            end
            item
              Column = 1
              Control = cxButton16
              Row = 1
            end
            item
              Column = 2
              Control = cxButton6
              Row = 1
            end
            item
              Column = 1
              Control = cxButton18
              Row = 2
            end
            item
              Column = 2
              Control = btnEditButtons
              Row = 2
            end
            item
              Column = 0
              Control = btnNoChargeTax
              Row = 3
            end
            item
              Column = 0
              Control = RzBitBtn23
              Row = 2
            end
            item
              Column = 1
              Control = BPrecio1
              Row = 3
            end
            item
              Column = 2
              Control = btnCommission
              Row = 3
            end>
          RowCollection = <
            item
              Value = 25.013728808852630000
            end
            item
              Value = 24.973652406288570000
            end
            item
              Value = 24.995797725983540000
            end
            item
              Value = 25.016821058875260000
            end>
          TabOrder = 0
          object btnPickup: TButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 175
            Height = 45
            Align = alClient
            Caption = 'PICKUP                 '
            ImageIndex = 35
            ImageMargins.Left = 3
            Images = FrmMain.ImageList2
            TabOrder = 0
            OnClick = btnPickupClick
          end
          object btnCloseRegister: TButton
            AlignWithMargins = True
            Left = 4
            Top = 55
            Width = 175
            Height = 44
            Align = alClient
            Caption = 'CLOSE REGISTER'
            ImageIndex = 11
            ImageMargins.Left = 2
            Images = FrmMain.ImageList2
            TabOrder = 1
            OnClick = btnCloseRegisterClick
          end
          object btnRefund: TButton
            AlignWithMargins = True
            Left = 185
            Top = 4
            Width = 177
            Height = 45
            Align = alClient
            Caption = 'REFUND                '
            DisabledImageIndex = 0
            ImageIndex = 10
            ImageMargins.Left = 3
            Images = FrmMain.ImageList2
            TabOrder = 2
            OnClick = btnRefundClick
          end
          object cxButton23: TButton
            AlignWithMargins = True
            Left = 368
            Top = 4
            Width = 178
            Height = 45
            Align = alClient
            Caption = 'NO CHARGE           '
            ImageIndex = 34
            ImageMargins.Left = 3
            Images = FrmMain.ImageList2
            TabOrder = 3
            OnClick = cxButton23Click
          end
          object cxButton16: TButton
            AlignWithMargins = True
            Left = 185
            Top = 55
            Width = 177
            Height = 44
            Align = alClient
            Caption = 'REPRINT RECEIPT   '
            ImageIndex = 29
            ImageMargins.Left = 3
            Images = FrmMain.ImageList2
            TabOrder = 4
            OnClick = cxButton16Click
          end
          object cxButton6: TButton
            AlignWithMargins = True
            Left = 368
            Top = 55
            Width = 178
            Height = 44
            Align = alClient
            Caption = 'VENTA MANUAL     '
            ImageIndex = 15
            ImageMargins.Left = 3
            Images = FrmMain.ImageList2
            TabOrder = 5
            OnClick = cxButton6Click
          end
          object cxButton18: TButton
            AlignWithMargins = True
            Left = 185
            Top = 105
            Width = 177
            Height = 45
            Align = alClient
            Caption = 'OPEN REGISTER     '
            ImageIndex = 28
            ImageMargins.Left = 3
            Images = FrmMain.ImageList2
            TabOrder = 6
            OnClick = cxButton18Click
          end
          object btnEditButtons: TButton
            AlignWithMargins = True
            Left = 368
            Top = 105
            Width = 178
            Height = 45
            Align = alClient
            Caption = 'EDIT BUTTONS'
            ImageIndex = 28
            ImageMargins.Left = 3
            Images = FrmMain.ImageList2
            TabOrder = 7
            OnClick = btnEditButtonsClick
          end
          object btnNoChargeTax: TButton
            AlignWithMargins = True
            Left = 4
            Top = 156
            Width = 175
            Height = 45
            Align = alClient
            Caption = 'CHARGE TAX         '
            DisabledImageIndex = 0
            ImageIndex = 8
            ImageMargins.Left = 3
            Images = FrmMain.ImageList2
            TabOrder = 8
            OnClick = btnNoChargeTaxClick
          end
          object RzBitBtn23: TButton
            AlignWithMargins = True
            Left = 4
            Top = 105
            Width = 175
            Height = 45
            Align = alClient
            Caption = 'DISCOUNT     '
            ImageIndex = 45
            ImageMargins.Left = 3
            Images = FrmMain.ImageList2
            TabOrder = 9
            OnClick = RzBitBtn23Click
          end
          object BPrecio1: TButton
            AlignWithMargins = True
            Left = 185
            Top = 156
            Width = 177
            Height = 45
            Align = alClient
            Caption = 'PRICE INQUIRE     '
            DisabledImageIndex = 0
            ImageIndex = 25
            ImageMargins.Left = 3
            TabOrder = 10
            OnClick = BPrecio1Click
          end
          object btnCommission: TButton
            AlignWithMargins = True
            Left = 368
            Top = 156
            Width = 178
            Height = 45
            Align = alClient
            Caption = 'COMMISSION'
            DisabledImageIndex = 0
            ImageIndex = 25
            ImageMargins.Left = 3
            TabOrder = 11
            OnClick = btnCommissionClick
          end
        end
      end
    end
    object Panel8: TPanel
      Left = 1
      Top = 1
      Width = 558
      Height = 41
      Align = alTop
      Caption = 'Panel8'
      Color = -11319490
      ParentBackground = False
      TabOrder = 4
      object LabelCustomer: TLabel
        AlignWithMargins = True
        Left = -2
        Top = 4
        Width = 554
        Height = 33
        Margins.Right = 5
        Align = alRight
        Alignment = taCenter
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Font.Quality = fqAntialiased
        ParentFont = False
        ExplicitLeft = -3
        ExplicitTop = 2
      end
    end
    object Panel6: TPanel
      Left = 208
      Top = 130
      Width = 225
      Height = 85
      TabOrder = 5
      Visible = False
      DesignSize = (
        225
        85)
      object DBText1: TDBText
        Left = 47
        Top = 6
        Width = 122
        Height = 25
        Alignment = taRightJustify
        Anchors = []
        DataField = 'DISCOUNT'
        DataSource = DMMidas.DSTransaction
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Font.Quality = fqClearType
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 55
        Top = 37
        Width = 122
        Height = 25
        Alignment = taRightJustify
        Anchors = []
        DataField = 'DISCOUNT_PERCENTAGE'
        DataSource = DMMidas.DSTransaction
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Font.Quality = fqClearType
        ParentFont = False
        OnClick = DBText2Click
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 710
    Width = 1262
    Height = 19
    Panels = <
      item
        Width = 200
      end
      item
        Width = 140
      end
      item
        Width = 100
      end
      item
        Width = 175
      end
      item
        Width = 100
      end
      item
        Width = 120
      end
      item
        Width = 200
      end
      item
        Width = 120
      end
      item
        Width = 100
      end>
    OnClick = StatusBar1Click
  end
  object Panel7: TPanel
    Left = 0
    Top = 0
    Width = 702
    Height = 710
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object GridPanel1: TGridPanel
      Left = 0
      Top = 36
      Width = 201
      Height = 674
      Align = alLeft
      ColumnCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = sbCat1
          Row = 0
        end
        item
          Column = 1
          Control = sbCat2
          Row = 0
        end
        item
          Column = 0
          Control = sbCat3
          Row = 1
        end
        item
          Column = 1
          Control = sbCat4
          Row = 1
        end
        item
          Column = 0
          Control = sbCat5
          Row = 2
        end
        item
          Column = 1
          Control = sbCat6
          Row = 2
        end
        item
          Column = 0
          Control = sbCat7
          Row = 3
        end
        item
          Column = 1
          Control = sbCat8
          Row = 3
        end
        item
          Column = 0
          Control = sbCat9
          Row = 4
        end
        item
          Column = 1
          Control = sbCat10
          Row = 4
        end
        item
          Column = 0
          Control = sbCat11
          Row = 5
        end
        item
          Column = 1
          Control = sbCat12
          Row = 5
        end
        item
          Column = 0
          Control = sbCat13
          Row = 6
        end
        item
          Column = 1
          Control = sbCat14
          Row = 6
        end
        item
          Column = 0
          Control = sbCat15
          Row = 7
        end
        item
          Column = 1
          Control = sbCat16
          Row = 7
        end
        item
          Column = 0
          Control = sbCat19
          Row = 9
        end
        item
          Column = 1
          Control = sbCat18
          Row = 8
        end
        item
          Column = 0
          Control = sbCat17
          Row = 8
        end
        item
          Column = 1
          Control = sbCat20
          Row = 9
        end>
      RowCollection = <
        item
          Value = 9.995522049112964000
        end
        item
          Value = 9.997263662575913000
        end
        item
          Value = 9.998721639794937000
        end
        item
          Value = 9.999921171041780000
        end
        item
          Value = 10.001198060735250000
        end
        item
          Value = 10.002069781300770000
        end
        item
          Value = 10.002348462238170000
        end
        item
          Value = 10.001763195723040000
        end
        item
          Value = 10.000939108244800000
        end
        item
          Value = 10.000252869232390000
        end>
      TabOrder = 0
      object sbCat1: TSpeedButton
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 94
        Height = 61
        Align = alClient
        OnClick = sbCat1Click
        ExplicitLeft = 20
        ExplicitTop = 23
        ExplicitWidth = 75
        ExplicitHeight = 60
      end
      object sbCat2: TSpeedButton
        AlignWithMargins = True
        Left = 104
        Top = 4
        Width = 93
        Height = 61
        Align = alClient
        OnClick = sbCat2Click
        ExplicitLeft = 120
        ExplicitTop = 6
        ExplicitWidth = 75
        ExplicitHeight = 60
      end
      object sbCat3: TSpeedButton
        AlignWithMargins = True
        Left = 4
        Top = 71
        Width = 94
        Height = 61
        Align = alClient
        OnClick = sbCat3Click
        ExplicitLeft = 39
        ExplicitTop = 152
        ExplicitWidth = 75
        ExplicitHeight = 59
      end
      object sbCat4: TSpeedButton
        AlignWithMargins = True
        Left = 104
        Top = 71
        Width = 93
        Height = 61
        Align = alClient
        OnClick = sbCat4Click
        ExplicitLeft = 138
        ExplicitTop = 152
        ExplicitWidth = 75
        ExplicitHeight = 59
      end
      object sbCat5: TSpeedButton
        AlignWithMargins = True
        Left = 4
        Top = 138
        Width = 94
        Height = 62
        Align = alClient
        OnClick = sbCat5Click
        ExplicitLeft = 39
        ExplicitTop = 273
        ExplicitWidth = 75
        ExplicitHeight = 60
      end
      object sbCat6: TSpeedButton
        AlignWithMargins = True
        Left = 104
        Top = 138
        Width = 93
        Height = 62
        Align = alClient
        OnClick = sbCat6Click
        ExplicitLeft = 120
        ExplicitTop = 146
        ExplicitWidth = 75
        ExplicitHeight = 60
      end
      object sbCat7: TSpeedButton
        AlignWithMargins = True
        Left = 4
        Top = 206
        Width = 94
        Height = 61
        Align = alClient
        OnClick = sbCat7Click
        ExplicitLeft = 39
        ExplicitTop = 394
        ExplicitWidth = 75
        ExplicitHeight = 60
      end
      object sbCat8: TSpeedButton
        AlignWithMargins = True
        Left = 104
        Top = 206
        Width = 93
        Height = 61
        Align = alClient
        OnClick = sbCat8Click
        ExplicitLeft = 120
        ExplicitTop = 226
        ExplicitWidth = 75
        ExplicitHeight = 60
      end
      object sbCat9: TSpeedButton
        AlignWithMargins = True
        Left = 4
        Top = 273
        Width = 94
        Height = 61
        Align = alClient
        OnClick = sbCat9Click
        ExplicitLeft = 39
        ExplicitTop = 515
        ExplicitWidth = 75
        ExplicitHeight = 60
      end
      object sbCat10: TSpeedButton
        AlignWithMargins = True
        Left = 104
        Top = 273
        Width = 93
        Height = 61
        Align = alClient
        OnClick = sbCat10Click
        ExplicitLeft = 120
        ExplicitTop = 335
        ExplicitWidth = 75
        ExplicitHeight = 60
      end
      object sbCat11: TSpeedButton
        AlignWithMargins = True
        Left = 4
        Top = 340
        Width = 94
        Height = 61
        Align = alClient
        OnClick = sbCat11Click
        ExplicitLeft = 39
        ExplicitTop = 635
        ExplicitWidth = 75
        ExplicitHeight = 56
      end
      object sbCat12: TSpeedButton
        AlignWithMargins = True
        Left = 104
        Top = 340
        Width = 93
        Height = 61
        Align = alClient
        OnClick = sbCat12Click
        ExplicitLeft = 138
        ExplicitTop = 635
        ExplicitWidth = 75
        ExplicitHeight = 56
      end
      object sbCat13: TSpeedButton
        AlignWithMargins = True
        Left = 4
        Top = 407
        Width = 94
        Height = 61
        Align = alClient
        OnClick = sbCat13Click
        ExplicitLeft = 13
        ExplicitTop = 430
        ExplicitWidth = 75
        ExplicitHeight = 59
      end
      object sbCat14: TSpeedButton
        AlignWithMargins = True
        Left = 104
        Top = 407
        Width = 93
        Height = 61
        Align = alClient
        OnClick = sbCat14Click
        ExplicitLeft = 120
        ExplicitTop = 444
        ExplicitWidth = 75
        ExplicitHeight = 59
      end
      object sbCat15: TSpeedButton
        AlignWithMargins = True
        Left = 4
        Top = 474
        Width = 94
        Height = 62
        Align = alClient
        OnClick = sbCat15Click
        ExplicitLeft = 39
        ExplicitTop = 570
        ExplicitWidth = 75
        ExplicitHeight = 60
      end
      object sbCat16: TSpeedButton
        AlignWithMargins = True
        Left = 104
        Top = 474
        Width = 93
        Height = 62
        Align = alClient
        OnClick = sbCat16Click
        ExplicitLeft = 138
        ExplicitTop = 570
        ExplicitWidth = 75
        ExplicitHeight = 60
      end
      object sbCat19: TSpeedButton
        AlignWithMargins = True
        Left = 4
        Top = 609
        Width = 94
        Height = 61
        Align = alClient
        OnClick = sbCat19Click
        ExplicitLeft = 39
        ExplicitTop = 653
        ExplicitWidth = 75
        ExplicitHeight = 60
      end
      object sbCat18: TSpeedButton
        AlignWithMargins = True
        Left = 104
        Top = 542
        Width = 93
        Height = 61
        Align = alClient
        OnClick = sbCat18Click
        ExplicitLeft = 138
        ExplicitTop = 653
        ExplicitWidth = 75
        ExplicitHeight = 60
      end
      object sbCat17: TSpeedButton
        AlignWithMargins = True
        Left = 4
        Top = 542
        Width = 94
        Height = 61
        Align = alClient
        OnClick = sbCat17Click
        ExplicitLeft = 13
        ExplicitTop = 586
        ExplicitWidth = 75
        ExplicitHeight = 60
      end
      object sbCat20: TSpeedButton
        AlignWithMargins = True
        Left = 104
        Top = 609
        Width = 93
        Height = 61
        Align = alClient
        OnClick = sbCat20Click
        ExplicitLeft = 120
        ExplicitTop = 659
        ExplicitWidth = 75
        ExplicitHeight = 60
      end
    end
    object pcMain: TPageControl
      Left = 201
      Top = 36
      Width = 501
      Height = 674
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = 'TabSheet1'
        object GridPanel2: TGridPanel
          Left = 0
          Top = 0
          Width = 493
          Height = 646
          Align = alClient
          ColumnCollection = <
            item
              Value = 24.779119604786030000
            end
            item
              Value = 25.543272797287100000
            end
            item
              Value = 24.685555526025840000
            end
            item
              Value = 24.992052071901020000
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
          object SpeedButton2: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 332
            Width = 116
            Height = 56
            Align = alClient
            OnClick = SpeedButton2Click
            ExplicitLeft = 8
            ExplicitWidth = 92
          end
          object SpeedButton3: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 332
            Width = 119
            Height = 56
            Align = alClient
            OnClick = SpeedButton3Click
            ExplicitLeft = 115
            ExplicitWidth = 92
          end
          object SpeedButton4: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 332
            Width = 115
            Height = 56
            Align = alClient
            OnClick = SpeedButton4Click
            ExplicitLeft = 223
            ExplicitWidth = 92
          end
          object SpeedButton5: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 332
            Width = 117
            Height = 56
            Align = alClient
            OnClick = SpeedButton5Click
            ExplicitLeft = 330
            ExplicitWidth = 92
          end
          object SpeedButton6: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton6Click
            ExplicitLeft = 16
            ExplicitTop = 1
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton7: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 4
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton7Click
            ExplicitLeft = 115
            ExplicitTop = 9
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton8: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 4
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton8Click
            ExplicitLeft = 223
            ExplicitTop = 9
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton9: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 4
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton9Click
            ExplicitLeft = 330
            ExplicitTop = 9
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton10: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 70
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton10Click
            ExplicitLeft = 8
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton11: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 70
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton11Click
            ExplicitLeft = 115
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton12: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 70
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton12Click
            ExplicitLeft = 223
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton13: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 70
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton13Click
            ExplicitLeft = 330
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton14: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 135
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton14Click
            ExplicitLeft = 8
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton15: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 135
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton15Click
            ExplicitLeft = 115
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton16: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 135
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton16Click
            ExplicitLeft = 223
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton17: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 135
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton17Click
            ExplicitLeft = 330
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton18: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 201
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton18Click
            ExplicitLeft = 8
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton19: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 201
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton19Click
            ExplicitLeft = 115
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton20: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 201
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton20Click
            ExplicitLeft = 223
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton21: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 201
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton21Click
            ExplicitLeft = 375
          end
          object SpeedButton22: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 266
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton22Click
            ExplicitLeft = 8
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton23: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 266
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton23Click
            ExplicitLeft = 115
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton24: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 266
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton24Click
            ExplicitLeft = 223
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton25: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 266
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton25Click
            ExplicitLeft = 330
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton1: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 394
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton1Click
            ExplicitLeft = 16
            ExplicitTop = 375
            ExplicitWidth = 92
          end
          object SpeedButton26: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 394
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton26Click
            ExplicitLeft = 115
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton27: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 394
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton27Click
            ExplicitLeft = 223
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton28: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 394
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton28Click
            ExplicitLeft = 330
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton29: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 459
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton29Click
            ExplicitLeft = 8
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton30: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 459
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton30Click
            ExplicitLeft = 115
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton31: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 459
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton31Click
            ExplicitLeft = 223
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton32: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 459
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton32Click
            ExplicitLeft = 330
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton33: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 524
            Width = 116
            Height = 55
            Align = alClient
            OnClick = SpeedButton33Click
            ExplicitLeft = 8
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton34: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 524
            Width = 119
            Height = 55
            Align = alClient
            OnClick = SpeedButton34Click
            ExplicitLeft = 115
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton35: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 524
            Width = 115
            Height = 55
            Align = alClient
            OnClick = SpeedButton35Click
            ExplicitLeft = 223
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton36: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 524
            Width = 117
            Height = 55
            Align = alClient
            OnClick = SpeedButton36Click
            ExplicitLeft = 330
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton37: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 585
            Width = 116
            Height = 57
            Align = alClient
            OnClick = SpeedButton37Click
            ExplicitLeft = 8
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton38: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 585
            Width = 119
            Height = 57
            Align = alClient
            OnClick = SpeedButton38Click
            ExplicitLeft = 115
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton40: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 585
            Width = 117
            Height = 57
            Align = alClient
            OnClick = SpeedButton40Click
            ExplicitLeft = 330
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton39: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 585
            Width = 115
            Height = 57
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton39Click
            ExplicitLeft = 257
            ExplicitTop = 667
            ExplicitWidth = 92
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'TabSheet2'
        ImageIndex = 1
        object GridPanel3: TGridPanel
          Left = 0
          Top = 0
          Width = 493
          Height = 646
          Align = alClient
          ColumnCollection = <
            item
              Value = 24.779119604786030000
            end
            item
              Value = 25.543272797287100000
            end
            item
              Value = 24.685555526025840000
            end
            item
              Value = 24.992052071901020000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = SpeedButton41
              Row = 5
            end
            item
              Column = 1
              Control = SpeedButton42
              Row = 5
            end
            item
              Column = 2
              Control = SpeedButton43
              Row = 5
            end
            item
              Column = 3
              Control = SpeedButton44
              Row = 5
            end
            item
              Column = 0
              Control = SpeedButton45
              Row = 0
            end
            item
              Column = 1
              Control = SpeedButton46
              Row = 0
            end
            item
              Column = 2
              Control = SpeedButton47
              Row = 0
            end
            item
              Column = 3
              Control = SpeedButton48
              Row = 0
            end
            item
              Column = 0
              Control = SpeedButton49
              Row = 1
            end
            item
              Column = 1
              Control = SpeedButton50
              Row = 1
            end
            item
              Column = 2
              Control = SpeedButton51
              Row = 1
            end
            item
              Column = 3
              Control = SpeedButton52
              Row = 1
            end
            item
              Column = 0
              Control = SpeedButton53
              Row = 2
            end
            item
              Column = 1
              Control = SpeedButton54
              Row = 2
            end
            item
              Column = 2
              Control = SpeedButton55
              Row = 2
            end
            item
              Column = 3
              Control = SpeedButton56
              Row = 2
            end
            item
              Column = 0
              Control = SpeedButton57
              Row = 3
            end
            item
              Column = 1
              Control = SpeedButton58
              Row = 3
            end
            item
              Column = 2
              Control = SpeedButton59
              Row = 3
            end
            item
              Column = 3
              Control = SpeedButton60
              Row = 3
            end
            item
              Column = 0
              Control = SpeedButton61
              Row = 4
            end
            item
              Column = 1
              Control = SpeedButton62
              Row = 4
            end
            item
              Column = 2
              Control = SpeedButton63
              Row = 4
            end
            item
              Column = 3
              Control = SpeedButton64
              Row = 4
            end
            item
              Column = 0
              Control = SpeedButton65
              Row = 6
            end
            item
              Column = 1
              Control = SpeedButton66
              Row = 6
            end
            item
              Column = 2
              Control = SpeedButton67
              Row = 6
            end
            item
              Column = 3
              Control = SpeedButton68
              Row = 6
            end
            item
              Column = 0
              Control = SpeedButton69
              Row = 7
            end
            item
              Column = 1
              Control = SpeedButton70
              Row = 7
            end
            item
              Column = 2
              Control = SpeedButton71
              Row = 7
            end
            item
              Column = 3
              Control = SpeedButton72
              Row = 7
            end
            item
              Column = 0
              Control = SpeedButton73
              Row = 8
            end
            item
              Column = 1
              Control = SpeedButton74
              Row = 8
            end
            item
              Column = 2
              Control = SpeedButton75
              Row = 8
            end
            item
              Column = 3
              Control = SpeedButton76
              Row = 8
            end
            item
              Column = 0
              Control = SpeedButton77
              Row = 9
            end
            item
              Column = 1
              Control = SpeedButton78
              Row = 9
            end
            item
              Column = 3
              Control = SpeedButton79
              Row = 9
            end
            item
              Column = 2
              Control = SpeedButton80
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
          object SpeedButton41: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 332
            Width = 116
            Height = 56
            Align = alClient
            OnClick = SpeedButton41Click
            ExplicitLeft = 8
            ExplicitWidth = 92
          end
          object SpeedButton42: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 332
            Width = 119
            Height = 56
            Align = alClient
            OnClick = SpeedButton42Click
            ExplicitLeft = 115
            ExplicitWidth = 92
          end
          object SpeedButton43: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 332
            Width = 115
            Height = 56
            Align = alClient
            OnClick = SpeedButton43Click
            ExplicitLeft = 223
            ExplicitWidth = 92
          end
          object SpeedButton44: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 332
            Width = 117
            Height = 56
            Align = alClient
            OnClick = SpeedButton44Click
            ExplicitLeft = 330
            ExplicitWidth = 92
          end
          object SpeedButton45: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton45Click
            ExplicitLeft = 8
            ExplicitTop = 9
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton46: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 4
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton46Click
            ExplicitLeft = 115
            ExplicitTop = 9
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton47: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 4
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton47Click
            ExplicitLeft = 223
            ExplicitTop = 9
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton48: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 4
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton48Click
            ExplicitLeft = 330
            ExplicitTop = 9
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton49: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 70
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton49Click
            ExplicitLeft = 8
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton50: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 70
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton50Click
            ExplicitLeft = 115
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton51: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 70
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton51Click
            ExplicitLeft = 223
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton52: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 70
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton52Click
            ExplicitLeft = 330
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton53: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 135
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton53Click
            ExplicitLeft = 8
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton54: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 135
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton54Click
            ExplicitLeft = 115
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton55: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 135
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton55Click
            ExplicitLeft = 223
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton56: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 135
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton56Click
            ExplicitLeft = 330
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton57: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 201
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton57Click
            ExplicitLeft = 8
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton58: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 201
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton58Click
            ExplicitLeft = 115
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton59: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 201
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton59Click
            ExplicitLeft = 223
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton60: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 201
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton60Click
            ExplicitLeft = 330
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton61: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 266
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton61Click
            ExplicitLeft = 8
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton62: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 266
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton62Click
            ExplicitLeft = 115
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton63: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 266
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton63Click
            ExplicitLeft = 223
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton64: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 266
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton64Click
            ExplicitLeft = 330
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton65: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 394
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton65Click
            ExplicitLeft = 8
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton66: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 394
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton66Click
            ExplicitLeft = 115
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton67: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 394
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton67Click
            ExplicitLeft = 223
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton68: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 394
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton68Click
            ExplicitLeft = 330
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton69: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 459
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton69Click
            ExplicitLeft = 8
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton70: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 459
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton70Click
            ExplicitLeft = 115
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton71: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 459
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton71Click
            ExplicitLeft = 223
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton72: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 459
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton72Click
            ExplicitLeft = 330
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton73: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 524
            Width = 116
            Height = 55
            Align = alClient
            OnClick = SpeedButton73Click
            ExplicitLeft = 8
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton74: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 524
            Width = 119
            Height = 55
            Align = alClient
            OnClick = SpeedButton74Click
            ExplicitLeft = 115
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton75: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 524
            Width = 115
            Height = 55
            Align = alClient
            OnClick = SpeedButton75Click
            ExplicitLeft = 223
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton76: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 524
            Width = 117
            Height = 55
            Align = alClient
            OnClick = SpeedButton76Click
            ExplicitLeft = 330
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton77: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 585
            Width = 116
            Height = 57
            Align = alClient
            OnClick = SpeedButton77Click
            ExplicitLeft = 8
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton78: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 585
            Width = 119
            Height = 57
            Align = alClient
            OnClick = SpeedButton78Click
            ExplicitLeft = 115
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton79: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 585
            Width = 117
            Height = 57
            Align = alClient
            OnClick = SpeedButton79Click
            ExplicitLeft = 330
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton80: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 585
            Width = 115
            Height = 57
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton80Click
            ExplicitLeft = 257
            ExplicitTop = 667
            ExplicitWidth = 92
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'TabSheet3'
        ImageIndex = 2
        object GridPanel4: TGridPanel
          Left = 0
          Top = 0
          Width = 493
          Height = 646
          Align = alClient
          ColumnCollection = <
            item
              Value = 24.779119604786030000
            end
            item
              Value = 25.543272797287100000
            end
            item
              Value = 24.685555526025840000
            end
            item
              Value = 24.992052071901020000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = SpeedButton81
              Row = 5
            end
            item
              Column = 1
              Control = SpeedButton82
              Row = 5
            end
            item
              Column = 2
              Control = SpeedButton83
              Row = 5
            end
            item
              Column = 3
              Control = SpeedButton84
              Row = 5
            end
            item
              Column = 0
              Control = SpeedButton85
              Row = 0
            end
            item
              Column = 1
              Control = SpeedButton86
              Row = 0
            end
            item
              Column = 2
              Control = SpeedButton87
              Row = 0
            end
            item
              Column = 3
              Control = SpeedButton88
              Row = 0
            end
            item
              Column = 0
              Control = SpeedButton89
              Row = 1
            end
            item
              Column = 1
              Control = SpeedButton90
              Row = 1
            end
            item
              Column = 2
              Control = SpeedButton91
              Row = 1
            end
            item
              Column = 3
              Control = SpeedButton92
              Row = 1
            end
            item
              Column = 0
              Control = SpeedButton93
              Row = 2
            end
            item
              Column = 1
              Control = SpeedButton94
              Row = 2
            end
            item
              Column = 2
              Control = SpeedButton95
              Row = 2
            end
            item
              Column = 3
              Control = SpeedButton96
              Row = 2
            end
            item
              Column = 0
              Control = SpeedButton97
              Row = 3
            end
            item
              Column = 1
              Control = SpeedButton98
              Row = 3
            end
            item
              Column = 2
              Control = SpeedButton99
              Row = 3
            end
            item
              Column = 3
              Control = SpeedButton100
              Row = 3
            end
            item
              Column = 0
              Control = SpeedButton101
              Row = 4
            end
            item
              Column = 1
              Control = SpeedButton102
              Row = 4
            end
            item
              Column = 2
              Control = SpeedButton103
              Row = 4
            end
            item
              Column = 3
              Control = SpeedButton104
              Row = 4
            end
            item
              Column = 0
              Control = SpeedButton105
              Row = 6
            end
            item
              Column = 1
              Control = SpeedButton106
              Row = 6
            end
            item
              Column = 2
              Control = SpeedButton107
              Row = 6
            end
            item
              Column = 3
              Control = SpeedButton108
              Row = 6
            end
            item
              Column = 0
              Control = SpeedButton109
              Row = 7
            end
            item
              Column = 1
              Control = SpeedButton110
              Row = 7
            end
            item
              Column = 2
              Control = SpeedButton111
              Row = 7
            end
            item
              Column = 3
              Control = SpeedButton112
              Row = 7
            end
            item
              Column = 0
              Control = SpeedButton113
              Row = 8
            end
            item
              Column = 1
              Control = SpeedButton114
              Row = 8
            end
            item
              Column = 2
              Control = SpeedButton115
              Row = 8
            end
            item
              Column = 3
              Control = SpeedButton116
              Row = 8
            end
            item
              Column = 0
              Control = SpeedButton117
              Row = 9
            end
            item
              Column = 1
              Control = SpeedButton118
              Row = 9
            end
            item
              Column = 3
              Control = SpeedButton119
              Row = 9
            end
            item
              Column = 2
              Control = SpeedButton120
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
          object SpeedButton81: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 332
            Width = 116
            Height = 56
            Align = alClient
            OnClick = SpeedButton81Click
            ExplicitLeft = 2
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton82: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 332
            Width = 119
            Height = 56
            Align = alClient
            OnClick = SpeedButton82Click
            ExplicitLeft = 115
            ExplicitWidth = 92
          end
          object SpeedButton83: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 332
            Width = 115
            Height = 56
            Align = alClient
            OnClick = SpeedButton83Click
            ExplicitLeft = 223
            ExplicitWidth = 92
          end
          object SpeedButton84: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 332
            Width = 117
            Height = 56
            Align = alClient
            OnClick = SpeedButton84Click
            ExplicitLeft = 330
            ExplicitWidth = 92
          end
          object SpeedButton85: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton85Click
            ExplicitLeft = 14
            ExplicitWidth = 96
          end
          object SpeedButton86: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 4
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton86Click
            ExplicitLeft = 115
            ExplicitTop = 9
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton87: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 4
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton87Click
            ExplicitLeft = 223
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton88: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 4
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton88Click
            ExplicitLeft = 338
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton89: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 70
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton89Click
            ExplicitLeft = 8
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton90: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 70
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton90Click
            ExplicitLeft = 115
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton91: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 70
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton91Click
            ExplicitLeft = 232
            ExplicitTop = 83
            ExplicitWidth = 92
          end
          object SpeedButton92: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 70
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton92Click
            ExplicitLeft = 330
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton93: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 135
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton93Click
            ExplicitLeft = 8
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton94: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 135
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton94Click
            ExplicitLeft = 115
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton95: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 135
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton95Click
            ExplicitLeft = 223
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton96: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 135
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton96Click
            ExplicitLeft = 330
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton97: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 201
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton97Click
            ExplicitLeft = 8
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton98: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 201
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton98Click
            ExplicitLeft = 115
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton99: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 201
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton99Click
            ExplicitLeft = 223
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton100: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 201
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton100Click
            ExplicitLeft = 330
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton101: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 266
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton101Click
            ExplicitLeft = 8
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton102: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 266
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton102Click
            ExplicitLeft = 115
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton103: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 266
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton103Click
            ExplicitLeft = 223
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton104: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 266
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton104Click
            ExplicitLeft = 330
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton105: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 394
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton105Click
            ExplicitLeft = 8
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton106: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 394
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton106Click
            ExplicitLeft = 115
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton107: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 394
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton107Click
            ExplicitLeft = 223
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton108: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 394
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton108Click
            ExplicitLeft = 338
            ExplicitTop = 436
            ExplicitWidth = 92
          end
          object SpeedButton109: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 459
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton109Click
            ExplicitLeft = 8
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton110: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 459
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton110Click
            ExplicitLeft = 115
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton111: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 459
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton111Click
            ExplicitLeft = 223
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton112: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 459
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton112Click
            ExplicitLeft = 330
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton113: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 524
            Width = 116
            Height = 55
            Align = alClient
            OnClick = SpeedButton113Click
            ExplicitLeft = 2
            ExplicitTop = 579
            ExplicitWidth = 92
          end
          object SpeedButton114: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 524
            Width = 119
            Height = 55
            Align = alClient
            OnClick = SpeedButton114Click
            ExplicitLeft = 115
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton115: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 524
            Width = 115
            Height = 55
            Align = alClient
            OnClick = SpeedButton115Click
            ExplicitLeft = 223
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton116: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 524
            Width = 117
            Height = 55
            Align = alClient
            OnClick = SpeedButton116Click
            ExplicitLeft = 330
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton117: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 585
            Width = 116
            Height = 57
            Align = alClient
            OnClick = SpeedButton117Click
            ExplicitLeft = 8
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton118: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 585
            Width = 119
            Height = 57
            Align = alClient
            OnClick = SpeedButton118Click
            ExplicitLeft = 115
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton119: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 585
            Width = 117
            Height = 57
            Align = alClient
            OnClick = SpeedButton119Click
            ExplicitLeft = 330
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton120: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 585
            Width = 115
            Height = 57
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton120Click
            ExplicitLeft = 223
            ExplicitTop = 647
            ExplicitWidth = 92
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'TabSheet4'
        ImageIndex = 3
        object GridPanel5: TGridPanel
          Left = 0
          Top = 0
          Width = 493
          Height = 646
          Align = alClient
          ColumnCollection = <
            item
              Value = 24.779119604786030000
            end
            item
              Value = 25.543272797287100000
            end
            item
              Value = 24.685555526025840000
            end
            item
              Value = 24.992052071901020000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = SpeedButton121
              Row = 5
            end
            item
              Column = 1
              Control = SpeedButton122
              Row = 5
            end
            item
              Column = 2
              Control = SpeedButton123
              Row = 5
            end
            item
              Column = 3
              Control = SpeedButton124
              Row = 5
            end
            item
              Column = 0
              Control = SpeedButton125
              Row = 0
            end
            item
              Column = 1
              Control = SpeedButton126
              Row = 0
            end
            item
              Column = 2
              Control = SpeedButton127
              Row = 0
            end
            item
              Column = 3
              Control = SpeedButton128
              Row = 0
            end
            item
              Column = 0
              Control = SpeedButton129
              Row = 1
            end
            item
              Column = 1
              Control = SpeedButton130
              Row = 1
            end
            item
              Column = 2
              Control = SpeedButton131
              Row = 1
            end
            item
              Column = 3
              Control = SpeedButton132
              Row = 1
            end
            item
              Column = 0
              Control = SpeedButton133
              Row = 2
            end
            item
              Column = 1
              Control = SpeedButton134
              Row = 2
            end
            item
              Column = 2
              Control = SpeedButton135
              Row = 2
            end
            item
              Column = 3
              Control = SpeedButton136
              Row = 2
            end
            item
              Column = 0
              Control = SpeedButton137
              Row = 3
            end
            item
              Column = 1
              Control = SpeedButton138
              Row = 3
            end
            item
              Column = 2
              Control = SpeedButton139
              Row = 3
            end
            item
              Column = 3
              Control = SpeedButton140
              Row = 3
            end
            item
              Column = 0
              Control = SpeedButton141
              Row = 4
            end
            item
              Column = 1
              Control = SpeedButton142
              Row = 4
            end
            item
              Column = 2
              Control = SpeedButton143
              Row = 4
            end
            item
              Column = 3
              Control = SpeedButton144
              Row = 4
            end
            item
              Column = 0
              Control = SpeedButton145
              Row = 6
            end
            item
              Column = 1
              Control = SpeedButton146
              Row = 6
            end
            item
              Column = 2
              Control = SpeedButton147
              Row = 6
            end
            item
              Column = 3
              Control = SpeedButton148
              Row = 6
            end
            item
              Column = 0
              Control = SpeedButton149
              Row = 7
            end
            item
              Column = 1
              Control = SpeedButton150
              Row = 7
            end
            item
              Column = 2
              Control = SpeedButton151
              Row = 7
            end
            item
              Column = 3
              Control = SpeedButton152
              Row = 7
            end
            item
              Column = 0
              Control = SpeedButton153
              Row = 8
            end
            item
              Column = 1
              Control = SpeedButton154
              Row = 8
            end
            item
              Column = 2
              Control = SpeedButton155
              Row = 8
            end
            item
              Column = 3
              Control = SpeedButton156
              Row = 8
            end
            item
              Column = 0
              Control = SpeedButton157
              Row = 9
            end
            item
              Column = 1
              Control = SpeedButton158
              Row = 9
            end
            item
              Column = 3
              Control = SpeedButton159
              Row = 9
            end
            item
              Column = 2
              Control = SpeedButton160
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
          object SpeedButton121: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 332
            Width = 116
            Height = 56
            Align = alClient
            OnClick = SpeedButton121Click
            ExplicitLeft = 2
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton122: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 332
            Width = 119
            Height = 56
            Align = alClient
            OnClick = SpeedButton122Click
            ExplicitLeft = 115
            ExplicitWidth = 92
          end
          object SpeedButton123: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 332
            Width = 115
            Height = 56
            Align = alClient
            OnClick = SpeedButton123Click
            ExplicitLeft = 223
            ExplicitWidth = 92
          end
          object SpeedButton124: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 332
            Width = 117
            Height = 56
            Align = alClient
            OnClick = SpeedButton124Click
            ExplicitLeft = 338
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton125: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton125Click
            ExplicitLeft = 13
            ExplicitTop = 3
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton126: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 4
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton126Click
            ExplicitLeft = 115
            ExplicitTop = 9
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton127: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 4
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton127Click
            ExplicitLeft = 223
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton128: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 4
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton128Click
            ExplicitLeft = 338
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton129: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 70
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton129Click
            ExplicitLeft = 8
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton130: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 70
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton130Click
            ExplicitLeft = 115
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton131: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 70
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton131Click
            ExplicitLeft = 232
            ExplicitTop = 83
            ExplicitWidth = 92
          end
          object SpeedButton132: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 70
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton132Click
            ExplicitLeft = 330
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton133: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 135
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton133Click
            ExplicitLeft = 8
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton134: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 135
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton134Click
            ExplicitLeft = 115
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton135: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 135
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton135Click
            ExplicitLeft = 223
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton136: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 135
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton136Click
            ExplicitLeft = 330
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton137: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 201
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton137Click
            ExplicitLeft = 8
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton138: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 201
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton138Click
            ExplicitLeft = 115
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton139: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 201
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton139Click
            ExplicitLeft = 223
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton140: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 201
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton140Click
            ExplicitLeft = 330
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton141: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 266
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton141Click
            ExplicitLeft = 8
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton142: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 266
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton142Click
            ExplicitLeft = 115
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton143: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 266
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton143Click
            ExplicitLeft = 223
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton144: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 266
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton144Click
            ExplicitLeft = 330
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton145: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 394
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton145Click
            ExplicitLeft = 8
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton146: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 394
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton146Click
            ExplicitLeft = 115
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton147: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 394
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton147Click
            ExplicitLeft = 223
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton148: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 394
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton148Click
            ExplicitLeft = 338
            ExplicitTop = 436
            ExplicitWidth = 92
          end
          object SpeedButton149: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 459
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton149Click
            ExplicitLeft = 8
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton150: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 459
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton150Click
            ExplicitLeft = 115
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton151: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 459
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton151Click
            ExplicitLeft = 223
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton152: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 459
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton152Click
            ExplicitLeft = 330
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton153: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 524
            Width = 116
            Height = 55
            Align = alClient
            OnClick = SpeedButton153Click
            ExplicitLeft = 2
            ExplicitTop = 579
            ExplicitWidth = 92
          end
          object SpeedButton154: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 524
            Width = 119
            Height = 55
            Align = alClient
            OnClick = SpeedButton154Click
            ExplicitLeft = 115
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton155: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 524
            Width = 115
            Height = 55
            Align = alClient
            OnClick = SpeedButton155Click
            ExplicitLeft = 223
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton156: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 524
            Width = 117
            Height = 55
            Align = alClient
            OnClick = SpeedButton156Click
            ExplicitLeft = 330
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton157: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 585
            Width = 116
            Height = 57
            Align = alClient
            OnClick = SpeedButton157Click
            ExplicitLeft = 8
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton158: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 585
            Width = 119
            Height = 57
            Align = alClient
            OnClick = SpeedButton158Click
            ExplicitLeft = 115
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton159: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 585
            Width = 117
            Height = 57
            Align = alClient
            OnClick = SpeedButton159Click
            ExplicitLeft = 330
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton160: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 585
            Width = 115
            Height = 57
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton160Click
            ExplicitLeft = 223
            ExplicitTop = 647
            ExplicitWidth = 92
          end
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'TabSheet5'
        ImageIndex = 4
        object GridPanel6: TGridPanel
          Left = 0
          Top = 0
          Width = 493
          Height = 646
          Align = alClient
          ColumnCollection = <
            item
              Value = 24.779119604786030000
            end
            item
              Value = 25.543272797287100000
            end
            item
              Value = 24.685555526025840000
            end
            item
              Value = 24.992052071901020000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = SpeedButton161
              Row = 5
            end
            item
              Column = 1
              Control = SpeedButton162
              Row = 5
            end
            item
              Column = 2
              Control = SpeedButton163
              Row = 5
            end
            item
              Column = 3
              Control = SpeedButton164
              Row = 5
            end
            item
              Column = 0
              Control = SpeedButton165
              Row = 0
            end
            item
              Column = 1
              Control = SpeedButton166
              Row = 0
            end
            item
              Column = 2
              Control = SpeedButton167
              Row = 0
            end
            item
              Column = 3
              Control = SpeedButton168
              Row = 0
            end
            item
              Column = 0
              Control = SpeedButton169
              Row = 1
            end
            item
              Column = 1
              Control = SpeedButton170
              Row = 1
            end
            item
              Column = 2
              Control = SpeedButton171
              Row = 1
            end
            item
              Column = 3
              Control = SpeedButton172
              Row = 1
            end
            item
              Column = 0
              Control = SpeedButton173
              Row = 2
            end
            item
              Column = 1
              Control = SpeedButton174
              Row = 2
            end
            item
              Column = 2
              Control = SpeedButton175
              Row = 2
            end
            item
              Column = 3
              Control = SpeedButton176
              Row = 2
            end
            item
              Column = 0
              Control = SpeedButton177
              Row = 3
            end
            item
              Column = 1
              Control = SpeedButton178
              Row = 3
            end
            item
              Column = 2
              Control = SpeedButton179
              Row = 3
            end
            item
              Column = 3
              Control = SpeedButton180
              Row = 3
            end
            item
              Column = 0
              Control = SpeedButton181
              Row = 4
            end
            item
              Column = 1
              Control = SpeedButton182
              Row = 4
            end
            item
              Column = 2
              Control = SpeedButton183
              Row = 4
            end
            item
              Column = 3
              Control = SpeedButton184
              Row = 4
            end
            item
              Column = 0
              Control = SpeedButton185
              Row = 6
            end
            item
              Column = 1
              Control = SpeedButton186
              Row = 6
            end
            item
              Column = 2
              Control = SpeedButton187
              Row = 6
            end
            item
              Column = 3
              Control = SpeedButton188
              Row = 6
            end
            item
              Column = 0
              Control = SpeedButton189
              Row = 7
            end
            item
              Column = 1
              Control = SpeedButton190
              Row = 7
            end
            item
              Column = 2
              Control = SpeedButton191
              Row = 7
            end
            item
              Column = 3
              Control = SpeedButton192
              Row = 7
            end
            item
              Column = 0
              Control = SpeedButton193
              Row = 8
            end
            item
              Column = 1
              Control = SpeedButton194
              Row = 8
            end
            item
              Column = 2
              Control = SpeedButton195
              Row = 8
            end
            item
              Column = 3
              Control = SpeedButton196
              Row = 8
            end
            item
              Column = 0
              Control = SpeedButton197
              Row = 9
            end
            item
              Column = 1
              Control = SpeedButton198
              Row = 9
            end
            item
              Column = 3
              Control = SpeedButton199
              Row = 9
            end
            item
              Column = 2
              Control = SpeedButton200
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
          object SpeedButton161: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 332
            Width = 116
            Height = 56
            Align = alClient
            OnClick = SpeedButton161Click
            ExplicitLeft = 2
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton162: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 332
            Width = 119
            Height = 56
            Align = alClient
            OnClick = SpeedButton162Click
            ExplicitLeft = 106
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton163: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 332
            Width = 115
            Height = 56
            Align = alClient
            OnClick = SpeedButton163Click
            ExplicitLeft = 223
            ExplicitWidth = 92
          end
          object SpeedButton164: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 332
            Width = 117
            Height = 56
            Align = alClient
            OnClick = SpeedButton164Click
            ExplicitLeft = 338
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton165: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton165Click
            ExplicitLeft = 13
            ExplicitTop = 3
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton166: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 4
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton166Click
            ExplicitLeft = 115
            ExplicitTop = 9
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton167: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 4
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton167Click
            ExplicitLeft = 223
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton168: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 4
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton168Click
            ExplicitLeft = 338
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton169: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 70
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton169Click
            ExplicitLeft = 8
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton170: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 70
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton170Click
            ExplicitLeft = 115
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton171: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 70
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton171Click
            ExplicitLeft = 232
            ExplicitTop = 83
            ExplicitWidth = 92
          end
          object SpeedButton172: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 70
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton172Click
            ExplicitLeft = 330
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton173: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 135
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton173Click
            ExplicitLeft = 8
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton174: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 135
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton174Click
            ExplicitLeft = 115
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton175: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 135
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton175Click
            ExplicitLeft = 223
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton176: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 135
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton176Click
            ExplicitLeft = 330
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton177: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 201
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton177Click
            ExplicitLeft = 8
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton178: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 201
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton178Click
            ExplicitLeft = 115
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton179: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 201
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton179Click
            ExplicitLeft = 223
            ExplicitTop = 221
            ExplicitWidth = 92
          end
          object SpeedButton180: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 201
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton180Click
            ExplicitLeft = 338
            ExplicitTop = 221
            ExplicitWidth = 92
          end
          object SpeedButton181: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 266
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton181Click
            ExplicitLeft = 8
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton182: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 266
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton182Click
            ExplicitLeft = 115
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton183: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 266
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton183Click
            ExplicitLeft = 223
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton184: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 266
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton184Click
            ExplicitLeft = 330
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton185: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 394
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton185Click
            ExplicitLeft = 8
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton186: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 394
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton186Click
            ExplicitLeft = 115
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton187: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 394
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton187Click
            ExplicitLeft = 223
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton188: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 394
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton188Click
            ExplicitLeft = 338
            ExplicitTop = 441
            ExplicitWidth = 92
          end
          object SpeedButton189: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 459
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton189Click
            ExplicitLeft = 2
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton190: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 459
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton190Click
            ExplicitLeft = 115
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton191: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 459
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton191Click
            ExplicitLeft = 223
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton192: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 459
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton192Click
            ExplicitLeft = 330
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton193: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 524
            Width = 116
            Height = 55
            Align = alClient
            OnClick = SpeedButton193Click
            ExplicitLeft = 2
            ExplicitTop = 583
            ExplicitWidth = 92
          end
          object SpeedButton194: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 524
            Width = 119
            Height = 55
            Align = alClient
            OnClick = SpeedButton194Click
            ExplicitLeft = 115
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton195: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 524
            Width = 115
            Height = 55
            Align = alClient
            OnClick = SpeedButton195Click
            ExplicitLeft = 223
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton196: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 524
            Width = 117
            Height = 55
            Align = alClient
            OnClick = SpeedButton196Click
            ExplicitLeft = 338
            ExplicitTop = 583
            ExplicitWidth = 92
          end
          object SpeedButton197: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 585
            Width = 116
            Height = 57
            Align = alClient
            OnClick = SpeedButton197Click
            ExplicitLeft = 2
            ExplicitTop = 647
            ExplicitWidth = 92
          end
          object SpeedButton198: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 585
            Width = 119
            Height = 57
            Align = alClient
            OnClick = SpeedButton198Click
            ExplicitLeft = 115
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton199: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 585
            Width = 117
            Height = 57
            Align = alClient
            OnClick = SpeedButton199Click
            ExplicitLeft = 330
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton200: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 585
            Width = 115
            Height = 57
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton200Click
            ExplicitLeft = 223
            ExplicitTop = 647
            ExplicitWidth = 92
          end
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'TabSheet6'
        ImageIndex = 5
        object GridPanel7: TGridPanel
          Left = 0
          Top = 0
          Width = 493
          Height = 646
          Align = alClient
          ColumnCollection = <
            item
              Value = 24.779119604786030000
            end
            item
              Value = 25.543272797287100000
            end
            item
              Value = 24.685555526025840000
            end
            item
              Value = 24.992052071901020000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = SpeedButton201
              Row = 5
            end
            item
              Column = 1
              Control = SpeedButton202
              Row = 5
            end
            item
              Column = 2
              Control = SpeedButton203
              Row = 5
            end
            item
              Column = 3
              Control = SpeedButton204
              Row = 5
            end
            item
              Column = 0
              Control = SpeedButton205
              Row = 0
            end
            item
              Column = 1
              Control = SpeedButton206
              Row = 0
            end
            item
              Column = 2
              Control = SpeedButton207
              Row = 0
            end
            item
              Column = 3
              Control = SpeedButton208
              Row = 0
            end
            item
              Column = 0
              Control = SpeedButton209
              Row = 1
            end
            item
              Column = 1
              Control = SpeedButton210
              Row = 1
            end
            item
              Column = 2
              Control = SpeedButton211
              Row = 1
            end
            item
              Column = 3
              Control = SpeedButton212
              Row = 1
            end
            item
              Column = 0
              Control = SpeedButton213
              Row = 2
            end
            item
              Column = 1
              Control = SpeedButton214
              Row = 2
            end
            item
              Column = 2
              Control = SpeedButton215
              Row = 2
            end
            item
              Column = 3
              Control = SpeedButton216
              Row = 2
            end
            item
              Column = 0
              Control = SpeedButton217
              Row = 3
            end
            item
              Column = 1
              Control = SpeedButton218
              Row = 3
            end
            item
              Column = 2
              Control = SpeedButton219
              Row = 3
            end
            item
              Column = 3
              Control = SpeedButton220
              Row = 3
            end
            item
              Column = 0
              Control = SpeedButton221
              Row = 4
            end
            item
              Column = 1
              Control = SpeedButton222
              Row = 4
            end
            item
              Column = 2
              Control = SpeedButton223
              Row = 4
            end
            item
              Column = 3
              Control = SpeedButton224
              Row = 4
            end
            item
              Column = 0
              Control = SpeedButton225
              Row = 6
            end
            item
              Column = 1
              Control = SpeedButton226
              Row = 6
            end
            item
              Column = 2
              Control = SpeedButton227
              Row = 6
            end
            item
              Column = 3
              Control = SpeedButton228
              Row = 6
            end
            item
              Column = 0
              Control = SpeedButton229
              Row = 7
            end
            item
              Column = 1
              Control = SpeedButton230
              Row = 7
            end
            item
              Column = 2
              Control = SpeedButton231
              Row = 7
            end
            item
              Column = 3
              Control = SpeedButton232
              Row = 7
            end
            item
              Column = 0
              Control = SpeedButton233
              Row = 8
            end
            item
              Column = 1
              Control = SpeedButton234
              Row = 8
            end
            item
              Column = 2
              Control = SpeedButton235
              Row = 8
            end
            item
              Column = 3
              Control = SpeedButton236
              Row = 8
            end
            item
              Column = 0
              Control = SpeedButton237
              Row = 9
            end
            item
              Column = 1
              Control = SpeedButton238
              Row = 9
            end
            item
              Column = 3
              Control = SpeedButton239
              Row = 9
            end
            item
              Column = 2
              Control = SpeedButton240
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
          object SpeedButton201: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 332
            Width = 116
            Height = 56
            Align = alClient
            OnClick = SpeedButton201Click
            ExplicitLeft = 2
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton202: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 332
            Width = 119
            Height = 56
            Align = alClient
            OnClick = SpeedButton202Click
            ExplicitLeft = 106
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton203: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 332
            Width = 115
            Height = 56
            Align = alClient
            OnClick = SpeedButton203Click
            ExplicitLeft = 223
            ExplicitTop = 367
            ExplicitWidth = 92
          end
          object SpeedButton204: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 332
            Width = 117
            Height = 56
            Align = alClient
            OnClick = SpeedButton204Click
            ExplicitLeft = 338
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton205: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton205Click
            ExplicitLeft = 13
            ExplicitTop = 3
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton206: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 4
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton206Click
            ExplicitLeft = 108
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton207: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 4
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton207Click
            ExplicitLeft = 223
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton208: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 4
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton208Click
            ExplicitLeft = 338
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton209: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 70
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton209Click
            ExplicitLeft = 8
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton210: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 70
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton210Click
            ExplicitLeft = 115
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton211: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 70
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton211Click
            ExplicitLeft = 232
            ExplicitTop = 83
            ExplicitWidth = 92
          end
          object SpeedButton212: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 70
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton212Click
            ExplicitLeft = 330
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton213: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 135
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton213Click
            ExplicitLeft = 8
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton214: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 135
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton214Click
            ExplicitLeft = 115
            ExplicitTop = 148
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton215: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 135
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton215Click
            ExplicitLeft = 223
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton216: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 135
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton216Click
            ExplicitLeft = 330
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton217: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 201
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton217Click
            ExplicitLeft = 8
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton218: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 201
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton218Click
            ExplicitLeft = 115
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton219: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 201
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton219Click
            ExplicitLeft = 223
            ExplicitTop = 221
            ExplicitWidth = 92
          end
          object SpeedButton220: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 201
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton220Click
            ExplicitLeft = 338
            ExplicitTop = 221
            ExplicitWidth = 92
          end
          object SpeedButton221: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 266
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton221Click
            ExplicitLeft = 8
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton222: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 266
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton222Click
            ExplicitLeft = 115
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton223: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 266
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton223Click
            ExplicitLeft = 223
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton224: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 266
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton224Click
            ExplicitLeft = 330
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton225: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 394
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton225Click
            ExplicitLeft = 8
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton226: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 394
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton226Click
            ExplicitLeft = 115
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton227: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 394
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton227Click
            ExplicitLeft = 223
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton228: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 394
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton228Click
            ExplicitLeft = 338
            ExplicitTop = 441
            ExplicitWidth = 92
          end
          object SpeedButton229: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 459
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton229Click
            ExplicitLeft = 2
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton230: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 459
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton230Click
            ExplicitLeft = 115
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton231: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 459
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton231Click
            ExplicitLeft = 223
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton232: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 459
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton232Click
            ExplicitLeft = 330
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton233: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 524
            Width = 116
            Height = 55
            Align = alClient
            OnClick = SpeedButton233Click
            ExplicitLeft = 2
            ExplicitTop = 583
            ExplicitWidth = 92
          end
          object SpeedButton234: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 524
            Width = 119
            Height = 55
            Align = alClient
            OnClick = SpeedButton234Click
            ExplicitLeft = 115
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton235: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 524
            Width = 115
            Height = 55
            Align = alClient
            OnClick = SpeedButton235Click
            ExplicitLeft = 223
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton236: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 524
            Width = 117
            Height = 55
            Align = alClient
            OnClick = SpeedButton236Click
            ExplicitLeft = 338
            ExplicitTop = 583
            ExplicitWidth = 92
          end
          object SpeedButton237: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 585
            Width = 116
            Height = 57
            Align = alClient
            OnClick = SpeedButton237Click
            ExplicitLeft = 2
            ExplicitTop = 647
            ExplicitWidth = 92
          end
          object SpeedButton238: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 585
            Width = 119
            Height = 57
            Align = alClient
            OnClick = SpeedButton238Click
            ExplicitLeft = 115
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton239: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 585
            Width = 117
            Height = 57
            Align = alClient
            OnClick = SpeedButton239Click
            ExplicitLeft = 330
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton240: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 585
            Width = 115
            Height = 57
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton240Click
            ExplicitLeft = 223
            ExplicitTop = 647
            ExplicitWidth = 92
          end
        end
      end
      object TabSheet7: TTabSheet
        Caption = 'TabSheet7'
        ImageIndex = 6
        object GridPanel8: TGridPanel
          Left = 0
          Top = 0
          Width = 493
          Height = 646
          Align = alClient
          ColumnCollection = <
            item
              Value = 24.779119604786030000
            end
            item
              Value = 25.543272797287100000
            end
            item
              Value = 24.685555526025840000
            end
            item
              Value = 24.992052071901020000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = SpeedButton241
              Row = 5
            end
            item
              Column = 1
              Control = SpeedButton242
              Row = 5
            end
            item
              Column = 2
              Control = SpeedButton243
              Row = 5
            end
            item
              Column = 3
              Control = SpeedButton244
              Row = 5
            end
            item
              Column = 0
              Control = SpeedButton245
              Row = 0
            end
            item
              Column = 1
              Control = SpeedButton246
              Row = 0
            end
            item
              Column = 2
              Control = SpeedButton247
              Row = 0
            end
            item
              Column = 3
              Control = SpeedButton248
              Row = 0
            end
            item
              Column = 0
              Control = SpeedButton249
              Row = 1
            end
            item
              Column = 1
              Control = SpeedButton250
              Row = 1
            end
            item
              Column = 2
              Control = SpeedButton251
              Row = 1
            end
            item
              Column = 3
              Control = SpeedButton252
              Row = 1
            end
            item
              Column = 0
              Control = SpeedButton253
              Row = 2
            end
            item
              Column = 1
              Control = SpeedButton254
              Row = 2
            end
            item
              Column = 2
              Control = SpeedButton255
              Row = 2
            end
            item
              Column = 3
              Control = SpeedButton256
              Row = 2
            end
            item
              Column = 0
              Control = SpeedButton257
              Row = 3
            end
            item
              Column = 1
              Control = SpeedButton258
              Row = 3
            end
            item
              Column = 2
              Control = SpeedButton259
              Row = 3
            end
            item
              Column = 3
              Control = SpeedButton260
              Row = 3
            end
            item
              Column = 0
              Control = SpeedButton261
              Row = 4
            end
            item
              Column = 1
              Control = SpeedButton262
              Row = 4
            end
            item
              Column = 2
              Control = SpeedButton263
              Row = 4
            end
            item
              Column = 3
              Control = SpeedButton264
              Row = 4
            end
            item
              Column = 0
              Control = SpeedButton265
              Row = 6
            end
            item
              Column = 1
              Control = SpeedButton266
              Row = 6
            end
            item
              Column = 2
              Control = SpeedButton267
              Row = 6
            end
            item
              Column = 3
              Control = SpeedButton268
              Row = 6
            end
            item
              Column = 0
              Control = SpeedButton269
              Row = 7
            end
            item
              Column = 1
              Control = SpeedButton270
              Row = 7
            end
            item
              Column = 2
              Control = SpeedButton271
              Row = 7
            end
            item
              Column = 3
              Control = SpeedButton272
              Row = 7
            end
            item
              Column = 0
              Control = SpeedButton273
              Row = 8
            end
            item
              Column = 1
              Control = SpeedButton274
              Row = 8
            end
            item
              Column = 2
              Control = SpeedButton275
              Row = 8
            end
            item
              Column = 3
              Control = SpeedButton276
              Row = 8
            end
            item
              Column = 0
              Control = SpeedButton277
              Row = 9
            end
            item
              Column = 1
              Control = SpeedButton278
              Row = 9
            end
            item
              Column = 3
              Control = SpeedButton279
              Row = 9
            end
            item
              Column = 2
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
          object SpeedButton241: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 332
            Width = 116
            Height = 56
            Align = alClient
            OnClick = SpeedButton241Click
            ExplicitLeft = 2
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton242: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 332
            Width = 119
            Height = 56
            Align = alClient
            OnClick = SpeedButton242Click
            ExplicitLeft = 106
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton243: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 332
            Width = 115
            Height = 56
            Align = alClient
            OnClick = SpeedButton243Click
            ExplicitLeft = 223
            ExplicitTop = 367
            ExplicitWidth = 92
          end
          object SpeedButton244: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 332
            Width = 117
            Height = 56
            Align = alClient
            OnClick = SpeedButton244Click
            ExplicitLeft = 338
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton245: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton245Click
            ExplicitLeft = 13
            ExplicitTop = 3
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton246: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 4
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton246Click
            ExplicitLeft = 108
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton247: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 4
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton247Click
            ExplicitLeft = 223
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton248: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 4
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton248Click
            ExplicitLeft = 338
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton249: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 70
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton249Click
            ExplicitLeft = 8
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton250: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 70
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton250Click
            ExplicitLeft = 115
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton251: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 70
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton251Click
            ExplicitLeft = 232
            ExplicitTop = 83
            ExplicitWidth = 92
          end
          object SpeedButton252: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 70
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton252Click
            ExplicitLeft = 330
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton253: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 135
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton253Click
            ExplicitLeft = 8
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton254: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 135
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton254Click
            ExplicitLeft = 115
            ExplicitTop = 148
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton255: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 135
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton255Click
            ExplicitLeft = 223
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton256: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 135
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton256Click
            ExplicitLeft = 330
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton257: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 201
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton257Click
            ExplicitLeft = 8
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton258: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 201
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton258Click
            ExplicitLeft = 115
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton259: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 201
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton259Click
            ExplicitLeft = 223
            ExplicitTop = 221
            ExplicitWidth = 92
          end
          object SpeedButton260: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 201
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton260Click
            ExplicitLeft = 338
            ExplicitTop = 221
            ExplicitWidth = 92
          end
          object SpeedButton261: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 266
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton261Click
            ExplicitLeft = 8
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton262: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 266
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton262Click
            ExplicitLeft = 115
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton263: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 266
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton263Click
            ExplicitLeft = 223
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton264: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 266
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton264Click
            ExplicitLeft = 330
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton265: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 394
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton265Click
            ExplicitLeft = 8
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton266: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 394
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton266Click
            ExplicitLeft = 115
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton267: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 394
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton267Click
            ExplicitLeft = 223
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton268: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 394
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton268Click
            ExplicitLeft = 338
            ExplicitTop = 441
            ExplicitWidth = 92
          end
          object SpeedButton269: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 459
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton269Click
            ExplicitLeft = 2
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton270: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 459
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton270Click
            ExplicitLeft = 106
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton271: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 459
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton271Click
            ExplicitLeft = 223
            ExplicitTop = 507
            ExplicitWidth = 92
          end
          object SpeedButton272: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 459
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton272Click
            ExplicitLeft = 330
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton273: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 524
            Width = 116
            Height = 55
            Align = alClient
            OnClick = SpeedButton273Click
            ExplicitLeft = 2
            ExplicitTop = 579
            ExplicitWidth = 92
          end
          object SpeedButton274: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 524
            Width = 119
            Height = 55
            Align = alClient
            OnClick = SpeedButton274Click
            ExplicitLeft = 115
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton275: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 524
            Width = 115
            Height = 55
            Align = alClient
            OnClick = SpeedButton275Click
            ExplicitLeft = 223
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton276: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 524
            Width = 117
            Height = 55
            Align = alClient
            OnClick = SpeedButton276Click
            ExplicitLeft = 338
            ExplicitTop = 579
            ExplicitWidth = 92
          end
          object SpeedButton277: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 585
            Width = 116
            Height = 57
            Align = alClient
            OnClick = SpeedButton277Click
            ExplicitLeft = 2
            ExplicitTop = 647
            ExplicitWidth = 92
          end
          object SpeedButton278: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 585
            Width = 119
            Height = 57
            Align = alClient
            OnClick = SpeedButton278Click
            ExplicitLeft = 115
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton279: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 585
            Width = 117
            Height = 57
            Align = alClient
            OnClick = SpeedButton279Click
            ExplicitLeft = 330
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton280: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 585
            Width = 115
            Height = 57
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton280Click
            ExplicitLeft = 223
            ExplicitTop = 647
            ExplicitWidth = 92
          end
        end
      end
      object TabSheet8: TTabSheet
        Caption = 'TabSheet8'
        ImageIndex = 7
        object GridPanel9: TGridPanel
          Left = 0
          Top = 0
          Width = 493
          Height = 646
          Align = alClient
          ColumnCollection = <
            item
              Value = 24.779119604786030000
            end
            item
              Value = 25.543272797287100000
            end
            item
              Value = 24.685555526025840000
            end
            item
              Value = 24.992052071901020000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = SpeedButton281
              Row = 5
            end
            item
              Column = 1
              Control = SpeedButton282
              Row = 5
            end
            item
              Column = 2
              Control = SpeedButton283
              Row = 5
            end
            item
              Column = 3
              Control = SpeedButton284
              Row = 5
            end
            item
              Column = 0
              Control = SpeedButton285
              Row = 0
            end
            item
              Column = 1
              Control = SpeedButton286
              Row = 0
            end
            item
              Column = 2
              Control = SpeedButton287
              Row = 0
            end
            item
              Column = 3
              Control = SpeedButton288
              Row = 0
            end
            item
              Column = 0
              Control = SpeedButton289
              Row = 1
            end
            item
              Column = 1
              Control = SpeedButton290
              Row = 1
            end
            item
              Column = 2
              Control = SpeedButton291
              Row = 1
            end
            item
              Column = 3
              Control = SpeedButton292
              Row = 1
            end
            item
              Column = 0
              Control = SpeedButton293
              Row = 2
            end
            item
              Column = 1
              Control = SpeedButton294
              Row = 2
            end
            item
              Column = 2
              Control = SpeedButton295
              Row = 2
            end
            item
              Column = 3
              Control = SpeedButton296
              Row = 2
            end
            item
              Column = 0
              Control = SpeedButton297
              Row = 3
            end
            item
              Column = 1
              Control = SpeedButton298
              Row = 3
            end
            item
              Column = 2
              Control = SpeedButton299
              Row = 3
            end
            item
              Column = 3
              Control = SpeedButton300
              Row = 3
            end
            item
              Column = 0
              Control = SpeedButton301
              Row = 4
            end
            item
              Column = 1
              Control = SpeedButton302
              Row = 4
            end
            item
              Column = 2
              Control = SpeedButton303
              Row = 4
            end
            item
              Column = 3
              Control = SpeedButton304
              Row = 4
            end
            item
              Column = 0
              Control = SpeedButton305
              Row = 6
            end
            item
              Column = 1
              Control = SpeedButton306
              Row = 6
            end
            item
              Column = 2
              Control = SpeedButton307
              Row = 6
            end
            item
              Column = 3
              Control = SpeedButton308
              Row = 6
            end
            item
              Column = 0
              Control = SpeedButton309
              Row = 7
            end
            item
              Column = 1
              Control = SpeedButton310
              Row = 7
            end
            item
              Column = 2
              Control = SpeedButton311
              Row = 7
            end
            item
              Column = 3
              Control = SpeedButton312
              Row = 7
            end
            item
              Column = 0
              Control = SpeedButton313
              Row = 8
            end
            item
              Column = 1
              Control = SpeedButton314
              Row = 8
            end
            item
              Column = 2
              Control = SpeedButton315
              Row = 8
            end
            item
              Column = 3
              Control = SpeedButton316
              Row = 8
            end
            item
              Column = 0
              Control = SpeedButton317
              Row = 9
            end
            item
              Column = 1
              Control = SpeedButton318
              Row = 9
            end
            item
              Column = 3
              Control = SpeedButton319
              Row = 9
            end
            item
              Column = 2
              Control = SpeedButton320
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
          object SpeedButton281: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 332
            Width = 116
            Height = 56
            Align = alClient
            OnClick = SpeedButton281Click
            ExplicitLeft = 2
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton282: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 332
            Width = 119
            Height = 56
            Align = alClient
            OnClick = SpeedButton282Click
            ExplicitLeft = 106
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton283: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 332
            Width = 115
            Height = 56
            Align = alClient
            OnClick = SpeedButton283Click
            ExplicitLeft = 223
            ExplicitTop = 367
            ExplicitWidth = 92
          end
          object SpeedButton284: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 332
            Width = 117
            Height = 56
            Align = alClient
            OnClick = SpeedButton284Click
            ExplicitLeft = 338
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton285: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton285Click
            ExplicitLeft = 13
            ExplicitTop = 3
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton286: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 4
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton286Click
            ExplicitLeft = 108
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton287: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 4
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton287Click
            ExplicitLeft = 223
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton288: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 4
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton288Click
            ExplicitLeft = 338
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton289: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 70
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton289Click
            ExplicitLeft = 8
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton290: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 70
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton290Click
            ExplicitLeft = 115
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton291: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 70
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton291Click
            ExplicitLeft = 232
            ExplicitTop = 83
            ExplicitWidth = 92
          end
          object SpeedButton292: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 70
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton292Click
            ExplicitLeft = 330
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton293: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 135
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton293Click
            ExplicitLeft = 8
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton294: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 135
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton294Click
            ExplicitLeft = 115
            ExplicitTop = 148
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton295: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 135
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton295Click
            ExplicitLeft = 223
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton296: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 135
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton296Click
            ExplicitLeft = 330
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton297: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 201
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton297Click
            ExplicitLeft = 8
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton298: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 201
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton298Click
            ExplicitLeft = 115
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton299: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 201
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton299Click
            ExplicitLeft = 223
            ExplicitTop = 221
            ExplicitWidth = 92
          end
          object SpeedButton300: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 201
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton300Click
            ExplicitLeft = 338
            ExplicitTop = 221
            ExplicitWidth = 92
          end
          object SpeedButton301: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 266
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton301Click
            ExplicitLeft = 8
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton302: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 266
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton302Click
            ExplicitLeft = 115
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton303: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 266
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton303Click
            ExplicitLeft = 223
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton304: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 266
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton304Click
            ExplicitLeft = 338
            ExplicitTop = 300
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton305: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 394
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton305Click
            ExplicitLeft = 8
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton306: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 394
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton306Click
            ExplicitLeft = 115
            ExplicitTop = 441
            ExplicitWidth = 92
          end
          object SpeedButton307: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 394
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton307Click
            ExplicitLeft = 223
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton308: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 394
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton308Click
            ExplicitLeft = 338
            ExplicitTop = 436
            ExplicitWidth = 92
          end
          object SpeedButton309: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 459
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton309Click
            ExplicitLeft = 2
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton310: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 459
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton310Click
            ExplicitLeft = 106
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton311: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 459
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton311Click
            ExplicitLeft = 223
            ExplicitTop = 507
            ExplicitWidth = 92
          end
          object SpeedButton312: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 459
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton312Click
            ExplicitLeft = 330
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton313: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 524
            Width = 116
            Height = 55
            Align = alClient
            OnClick = SpeedButton313Click
            ExplicitLeft = 2
            ExplicitTop = 583
            ExplicitWidth = 92
          end
          object SpeedButton314: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 524
            Width = 119
            Height = 55
            Align = alClient
            OnClick = SpeedButton314Click
            ExplicitLeft = 115
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton315: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 524
            Width = 115
            Height = 55
            Align = alClient
            OnClick = SpeedButton315Click
            ExplicitLeft = 223
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton316: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 524
            Width = 117
            Height = 55
            Align = alClient
            OnClick = SpeedButton316Click
            ExplicitLeft = 338
            ExplicitTop = 579
            ExplicitWidth = 92
          end
          object SpeedButton317: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 585
            Width = 116
            Height = 57
            Align = alClient
            OnClick = SpeedButton317Click
            ExplicitLeft = 2
            ExplicitTop = 647
            ExplicitWidth = 92
          end
          object SpeedButton318: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 585
            Width = 119
            Height = 57
            Align = alClient
            OnClick = SpeedButton318Click
            ExplicitLeft = 115
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton319: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 585
            Width = 117
            Height = 57
            Align = alClient
            OnClick = SpeedButton319Click
            ExplicitLeft = 330
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton320: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 585
            Width = 115
            Height = 57
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton320Click
            ExplicitLeft = 223
            ExplicitTop = 647
            ExplicitWidth = 92
          end
        end
      end
      object TabSheet9: TTabSheet
        Caption = 'TabSheet9'
        ImageIndex = 8
        object GridPanel10: TGridPanel
          Left = 0
          Top = 0
          Width = 493
          Height = 646
          Align = alClient
          ColumnCollection = <
            item
              Value = 24.779119604786030000
            end
            item
              Value = 25.543272797287100000
            end
            item
              Value = 24.685555526025840000
            end
            item
              Value = 24.992052071901020000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = SpeedButton321
              Row = 5
            end
            item
              Column = 1
              Control = SpeedButton322
              Row = 5
            end
            item
              Column = 2
              Control = SpeedButton323
              Row = 5
            end
            item
              Column = 3
              Control = SpeedButton324
              Row = 5
            end
            item
              Column = 0
              Control = SpeedButton325
              Row = 0
            end
            item
              Column = 1
              Control = SpeedButton326
              Row = 0
            end
            item
              Column = 2
              Control = SpeedButton327
              Row = 0
            end
            item
              Column = 3
              Control = SpeedButton328
              Row = 0
            end
            item
              Column = 0
              Control = SpeedButton329
              Row = 1
            end
            item
              Column = 1
              Control = SpeedButton330
              Row = 1
            end
            item
              Column = 2
              Control = SpeedButton331
              Row = 1
            end
            item
              Column = 3
              Control = SpeedButton332
              Row = 1
            end
            item
              Column = 0
              Control = SpeedButton333
              Row = 2
            end
            item
              Column = 1
              Control = SpeedButton334
              Row = 2
            end
            item
              Column = 2
              Control = SpeedButton335
              Row = 2
            end
            item
              Column = 3
              Control = SpeedButton336
              Row = 2
            end
            item
              Column = 0
              Control = SpeedButton337
              Row = 3
            end
            item
              Column = 1
              Control = SpeedButton338
              Row = 3
            end
            item
              Column = 2
              Control = SpeedButton339
              Row = 3
            end
            item
              Column = 3
              Control = SpeedButton340
              Row = 3
            end
            item
              Column = 0
              Control = SpeedButton341
              Row = 4
            end
            item
              Column = 1
              Control = SpeedButton342
              Row = 4
            end
            item
              Column = 2
              Control = SpeedButton343
              Row = 4
            end
            item
              Column = 3
              Control = SpeedButton344
              Row = 4
            end
            item
              Column = 0
              Control = SpeedButton345
              Row = 6
            end
            item
              Column = 1
              Control = SpeedButton346
              Row = 6
            end
            item
              Column = 2
              Control = SpeedButton347
              Row = 6
            end
            item
              Column = 3
              Control = SpeedButton348
              Row = 6
            end
            item
              Column = 0
              Control = SpeedButton349
              Row = 7
            end
            item
              Column = 1
              Control = SpeedButton350
              Row = 7
            end
            item
              Column = 2
              Control = SpeedButton351
              Row = 7
            end
            item
              Column = 3
              Control = SpeedButton352
              Row = 7
            end
            item
              Column = 0
              Control = SpeedButton353
              Row = 8
            end
            item
              Column = 1
              Control = SpeedButton354
              Row = 8
            end
            item
              Column = 2
              Control = SpeedButton355
              Row = 8
            end
            item
              Column = 3
              Control = SpeedButton356
              Row = 8
            end
            item
              Column = 0
              Control = SpeedButton357
              Row = 9
            end
            item
              Column = 1
              Control = SpeedButton358
              Row = 9
            end
            item
              Column = 3
              Control = SpeedButton359
              Row = 9
            end
            item
              Column = 2
              Control = SpeedButton360
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
          object SpeedButton321: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 332
            Width = 116
            Height = 56
            Align = alClient
            OnClick = SpeedButton321Click
            ExplicitLeft = 2
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton322: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 332
            Width = 119
            Height = 56
            Align = alClient
            OnClick = SpeedButton322Click
            ExplicitLeft = 106
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton323: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 332
            Width = 115
            Height = 56
            Align = alClient
            OnClick = SpeedButton323Click
            ExplicitLeft = 223
            ExplicitTop = 367
            ExplicitWidth = 92
          end
          object SpeedButton324: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 332
            Width = 117
            Height = 56
            Align = alClient
            OnClick = SpeedButton324Click
            ExplicitLeft = 338
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton325: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton325Click
            ExplicitLeft = 16
            ExplicitWidth = 93
            ExplicitHeight = 59
          end
          object SpeedButton326: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 4
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton326Click
            ExplicitLeft = 108
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton327: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 4
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton327Click
            ExplicitLeft = 223
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton328: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 4
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton328Click
            ExplicitLeft = 338
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton329: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 70
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton329Click
            ExplicitLeft = 8
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton330: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 70
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton330Click
            ExplicitLeft = 115
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton331: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 70
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton331Click
            ExplicitLeft = 232
            ExplicitTop = 83
            ExplicitWidth = 92
          end
          object SpeedButton332: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 70
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton332Click
            ExplicitLeft = 330
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton333: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 135
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton333Click
            ExplicitLeft = 8
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton334: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 135
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton334Click
            ExplicitLeft = 115
            ExplicitTop = 148
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton335: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 135
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton335Click
            ExplicitLeft = 223
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton336: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 135
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton336Click
            ExplicitLeft = 330
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton337: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 201
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton337Click
            ExplicitLeft = 8
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton338: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 201
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton338Click
            ExplicitLeft = 115
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton339: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 201
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton339Click
            ExplicitLeft = 232
            ExplicitTop = 229
            ExplicitWidth = 92
          end
          object SpeedButton340: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 201
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton340Click
            ExplicitLeft = 338
            ExplicitTop = 221
            ExplicitWidth = 92
          end
          object SpeedButton341: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 266
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton341Click
            ExplicitLeft = 8
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton342: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 266
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton342Click
            ExplicitLeft = 115
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton343: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 266
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton343Click
            ExplicitLeft = 223
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton344: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 266
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton344Click
            ExplicitLeft = 338
            ExplicitTop = 300
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton345: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 394
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton345Click
            ExplicitLeft = 8
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton346: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 394
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton346Click
            ExplicitLeft = 115
            ExplicitTop = 441
            ExplicitWidth = 92
          end
          object SpeedButton347: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 394
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton347Click
            ExplicitLeft = 223
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton348: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 394
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton348Click
            ExplicitLeft = 338
            ExplicitTop = 436
            ExplicitWidth = 92
          end
          object SpeedButton349: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 459
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton349Click
            ExplicitLeft = 2
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton350: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 459
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton350Click
            ExplicitLeft = 106
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton351: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 459
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton351Click
            ExplicitLeft = 223
            ExplicitTop = 507
            ExplicitWidth = 92
          end
          object SpeedButton352: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 459
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton352Click
            ExplicitLeft = 330
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton353: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 524
            Width = 116
            Height = 55
            Align = alClient
            OnClick = SpeedButton353Click
            ExplicitLeft = 2
            ExplicitTop = 583
            ExplicitWidth = 92
          end
          object SpeedButton354: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 524
            Width = 119
            Height = 55
            Align = alClient
            OnClick = SpeedButton354Click
            ExplicitLeft = 115
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton355: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 524
            Width = 115
            Height = 55
            Align = alClient
            OnClick = SpeedButton355Click
            ExplicitLeft = 223
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton356: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 524
            Width = 117
            Height = 55
            Align = alClient
            OnClick = SpeedButton356Click
            ExplicitLeft = 338
            ExplicitTop = 579
            ExplicitWidth = 92
          end
          object SpeedButton357: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 585
            Width = 116
            Height = 57
            Align = alClient
            OnClick = SpeedButton357Click
            ExplicitLeft = 2
            ExplicitTop = 647
            ExplicitWidth = 92
          end
          object SpeedButton358: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 585
            Width = 119
            Height = 57
            Align = alClient
            OnClick = SpeedButton358Click
            ExplicitLeft = 115
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton359: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 585
            Width = 117
            Height = 57
            Align = alClient
            OnClick = SpeedButton359Click
            ExplicitLeft = 330
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton360: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 585
            Width = 115
            Height = 57
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton360Click
            ExplicitLeft = 223
            ExplicitTop = 647
            ExplicitWidth = 92
          end
        end
      end
      object TabSheet10: TTabSheet
        Caption = 'TabSheet10'
        ImageIndex = 9
        object GridPanel11: TGridPanel
          Left = 0
          Top = 0
          Width = 493
          Height = 646
          Align = alClient
          ColumnCollection = <
            item
              Value = 24.779119604786030000
            end
            item
              Value = 25.543272797287100000
            end
            item
              Value = 24.685555526025840000
            end
            item
              Value = 24.992052071901020000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = SpeedButton361
              Row = 5
            end
            item
              Column = 1
              Control = SpeedButton362
              Row = 5
            end
            item
              Column = 2
              Control = SpeedButton363
              Row = 5
            end
            item
              Column = 3
              Control = SpeedButton364
              Row = 5
            end
            item
              Column = 0
              Control = SpeedButton365
              Row = 0
            end
            item
              Column = 1
              Control = SpeedButton366
              Row = 0
            end
            item
              Column = 2
              Control = SpeedButton367
              Row = 0
            end
            item
              Column = 3
              Control = SpeedButton368
              Row = 0
            end
            item
              Column = 0
              Control = SpeedButton369
              Row = 1
            end
            item
              Column = 1
              Control = SpeedButton370
              Row = 1
            end
            item
              Column = 2
              Control = SpeedButton371
              Row = 1
            end
            item
              Column = 3
              Control = SpeedButton372
              Row = 1
            end
            item
              Column = 0
              Control = SpeedButton373
              Row = 2
            end
            item
              Column = 1
              Control = SpeedButton374
              Row = 2
            end
            item
              Column = 2
              Control = SpeedButton375
              Row = 2
            end
            item
              Column = 3
              Control = SpeedButton376
              Row = 2
            end
            item
              Column = 0
              Control = SpeedButton377
              Row = 3
            end
            item
              Column = 1
              Control = SpeedButton378
              Row = 3
            end
            item
              Column = 2
              Control = SpeedButton379
              Row = 3
            end
            item
              Column = 3
              Control = SpeedButton380
              Row = 3
            end
            item
              Column = 0
              Control = SpeedButton381
              Row = 4
            end
            item
              Column = 1
              Control = SpeedButton382
              Row = 4
            end
            item
              Column = 2
              Control = SpeedButton383
              Row = 4
            end
            item
              Column = 3
              Control = SpeedButton384
              Row = 4
            end
            item
              Column = 0
              Control = SpeedButton385
              Row = 6
            end
            item
              Column = 1
              Control = SpeedButton386
              Row = 6
            end
            item
              Column = 2
              Control = SpeedButton387
              Row = 6
            end
            item
              Column = 3
              Control = SpeedButton388
              Row = 6
            end
            item
              Column = 0
              Control = SpeedButton389
              Row = 7
            end
            item
              Column = 1
              Control = SpeedButton390
              Row = 7
            end
            item
              Column = 2
              Control = SpeedButton391
              Row = 7
            end
            item
              Column = 3
              Control = SpeedButton392
              Row = 7
            end
            item
              Column = 0
              Control = SpeedButton393
              Row = 8
            end
            item
              Column = 1
              Control = SpeedButton394
              Row = 8
            end
            item
              Column = 2
              Control = SpeedButton395
              Row = 8
            end
            item
              Column = 3
              Control = SpeedButton396
              Row = 8
            end
            item
              Column = 0
              Control = SpeedButton397
              Row = 9
            end
            item
              Column = 1
              Control = SpeedButton398
              Row = 9
            end
            item
              Column = 3
              Control = SpeedButton399
              Row = 9
            end
            item
              Column = 2
              Control = SpeedButton400
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
          object SpeedButton361: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 332
            Width = 116
            Height = 56
            Align = alClient
            OnClick = SpeedButton361Click
            ExplicitLeft = 2
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton362: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 332
            Width = 119
            Height = 56
            Align = alClient
            OnClick = SpeedButton362Click
            ExplicitLeft = 106
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton363: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 332
            Width = 115
            Height = 56
            Align = alClient
            OnClick = SpeedButton363Click
            ExplicitLeft = 223
            ExplicitTop = 367
            ExplicitWidth = 92
          end
          object SpeedButton364: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 332
            Width = 117
            Height = 56
            Align = alClient
            OnClick = SpeedButton364Click
            ExplicitLeft = 338
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton365: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton365Click
            ExplicitLeft = 16
            ExplicitTop = 2
            ExplicitWidth = 92
            ExplicitHeight = 64
          end
          object SpeedButton366: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 4
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton366Click
            ExplicitLeft = 139
            ExplicitTop = 2
            ExplicitWidth = 92
            ExplicitHeight = 64
          end
          object SpeedButton367: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 4
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton367Click
            ExplicitLeft = 262
            ExplicitTop = 2
            ExplicitWidth = 92
            ExplicitHeight = 64
          end
          object SpeedButton368: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 4
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton368Click
            ExplicitLeft = 385
            ExplicitTop = 2
            ExplicitWidth = 92
            ExplicitHeight = 64
          end
          object SpeedButton369: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 70
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton369Click
            ExplicitLeft = 16
            ExplicitTop = 67
            ExplicitWidth = 92
            ExplicitHeight = 64
          end
          object SpeedButton370: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 70
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton370Click
            ExplicitLeft = 139
            ExplicitTop = 67
            ExplicitWidth = 92
            ExplicitHeight = 64
          end
          object SpeedButton371: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 70
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton371Click
            ExplicitLeft = 262
            ExplicitTop = 67
            ExplicitWidth = 92
            ExplicitHeight = 64
          end
          object SpeedButton372: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 70
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton372Click
            ExplicitLeft = 385
            ExplicitTop = 67
            ExplicitWidth = 92
            ExplicitHeight = 64
          end
          object SpeedButton373: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 135
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton373Click
            ExplicitLeft = 8
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton374: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 135
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton374Click
            ExplicitLeft = 106
            ExplicitTop = 156
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton375: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 135
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton375Click
            ExplicitLeft = 223
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton376: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 135
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton376Click
            ExplicitLeft = 330
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton377: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 201
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton377Click
            ExplicitLeft = 8
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton378: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 201
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton378Click
            ExplicitLeft = 115
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton379: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 201
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton379Click
            ExplicitLeft = 232
            ExplicitTop = 229
            ExplicitWidth = 92
          end
          object SpeedButton380: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 201
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton380Click
            ExplicitLeft = 338
            ExplicitTop = 221
            ExplicitWidth = 92
          end
          object SpeedButton381: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 266
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton381Click
            ExplicitLeft = 8
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton382: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 266
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton382Click
            ExplicitLeft = 115
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton383: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 266
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton383Click
            ExplicitLeft = 232
            ExplicitTop = 300
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton384: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 266
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton384Click
            ExplicitLeft = 338
            ExplicitTop = 300
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton385: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 394
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton385Click
            ExplicitLeft = 8
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton386: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 394
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton386Click
            ExplicitLeft = 115
            ExplicitTop = 441
            ExplicitWidth = 92
          end
          object SpeedButton387: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 394
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton387Click
            ExplicitLeft = 223
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton388: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 394
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton388Click
            ExplicitLeft = 338
            ExplicitTop = 436
            ExplicitWidth = 92
          end
          object SpeedButton389: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 459
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton389Click
            ExplicitLeft = 2
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton390: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 459
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton390Click
            ExplicitLeft = 106
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton391: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 459
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton391Click
            ExplicitLeft = 223
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton392: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 459
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton392Click
            ExplicitLeft = 330
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton393: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 524
            Width = 116
            Height = 55
            Align = alClient
            OnClick = SpeedButton393Click
            ExplicitLeft = 2
            ExplicitTop = 583
            ExplicitWidth = 92
          end
          object SpeedButton394: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 524
            Width = 119
            Height = 55
            Align = alClient
            OnClick = SpeedButton394Click
            ExplicitLeft = 115
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton395: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 524
            Width = 115
            Height = 55
            Align = alClient
            OnClick = SpeedButton395Click
            ExplicitLeft = 223
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton396: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 524
            Width = 117
            Height = 55
            Align = alClient
            OnClick = SpeedButton396Click
            ExplicitLeft = 338
            ExplicitTop = 579
            ExplicitWidth = 92
          end
          object SpeedButton397: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 585
            Width = 116
            Height = 57
            Align = alClient
            OnClick = SpeedButton397Click
            ExplicitLeft = 2
            ExplicitTop = 647
            ExplicitWidth = 92
          end
          object SpeedButton398: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 585
            Width = 119
            Height = 57
            Align = alClient
            OnClick = SpeedButton398Click
            ExplicitLeft = 106
            ExplicitTop = 647
            ExplicitWidth = 92
          end
          object SpeedButton399: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 585
            Width = 117
            Height = 57
            Align = alClient
            OnClick = SpeedButton399Click
            ExplicitLeft = 330
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton400: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 585
            Width = 115
            Height = 57
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton400Click
            ExplicitLeft = 223
            ExplicitTop = 647
            ExplicitWidth = 92
          end
        end
      end
      object TabSheet11: TTabSheet
        Caption = 'TabSheet11'
        ImageIndex = 10
        object GridPanel14: TGridPanel
          Left = 0
          Top = 0
          Width = 493
          Height = 646
          Align = alClient
          ColumnCollection = <
            item
              Value = 24.779119604786030000
            end
            item
              Value = 25.543272797287100000
            end
            item
              Value = 24.685555526025840000
            end
            item
              Value = 24.992052071901020000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = SpeedButton401
              Row = 5
            end
            item
              Column = 1
              Control = SpeedButton402
              Row = 5
            end
            item
              Column = 2
              Control = SpeedButton403
              Row = 5
            end
            item
              Column = 3
              Control = SpeedButton404
              Row = 5
            end
            item
              Column = 0
              Control = SpeedButton405
              Row = 0
            end
            item
              Column = 1
              Control = SpeedButton406
              Row = 0
            end
            item
              Column = 2
              Control = SpeedButton407
              Row = 0
            end
            item
              Column = 3
              Control = SpeedButton408
              Row = 0
            end
            item
              Column = 0
              Control = SpeedButton409
              Row = 1
            end
            item
              Column = 1
              Control = SpeedButton410
              Row = 1
            end
            item
              Column = 2
              Control = SpeedButton411
              Row = 1
            end
            item
              Column = 3
              Control = SpeedButton412
              Row = 1
            end
            item
              Column = 0
              Control = SpeedButton413
              Row = 2
            end
            item
              Column = 1
              Control = SpeedButton414
              Row = 2
            end
            item
              Column = 2
              Control = SpeedButton415
              Row = 2
            end
            item
              Column = 3
              Control = SpeedButton416
              Row = 2
            end
            item
              Column = 0
              Control = SpeedButton417
              Row = 3
            end
            item
              Column = 1
              Control = SpeedButton418
              Row = 3
            end
            item
              Column = 2
              Control = SpeedButton419
              Row = 3
            end
            item
              Column = 3
              Control = SpeedButton420
              Row = 3
            end
            item
              Column = 0
              Control = SpeedButton421
              Row = 4
            end
            item
              Column = 1
              Control = SpeedButton422
              Row = 4
            end
            item
              Column = 2
              Control = SpeedButton423
              Row = 4
            end
            item
              Column = 3
              Control = SpeedButton424
              Row = 4
            end
            item
              Column = 0
              Control = SpeedButton425
              Row = 6
            end
            item
              Column = 1
              Control = SpeedButton426
              Row = 6
            end
            item
              Column = 2
              Control = SpeedButton427
              Row = 6
            end
            item
              Column = 3
              Control = SpeedButton428
              Row = 6
            end
            item
              Column = 0
              Control = SpeedButton429
              Row = 7
            end
            item
              Column = 1
              Control = SpeedButton430
              Row = 7
            end
            item
              Column = 2
              Control = SpeedButton431
              Row = 7
            end
            item
              Column = 3
              Control = SpeedButton432
              Row = 7
            end
            item
              Column = 0
              Control = SpeedButton433
              Row = 8
            end
            item
              Column = 1
              Control = SpeedButton434
              Row = 8
            end
            item
              Column = 2
              Control = SpeedButton435
              Row = 8
            end
            item
              Column = 3
              Control = SpeedButton436
              Row = 8
            end
            item
              Column = 0
              Control = SpeedButton437
              Row = 9
            end
            item
              Column = 1
              Control = SpeedButton438
              Row = 9
            end
            item
              Column = 3
              Control = SpeedButton439
              Row = 9
            end
            item
              Column = 2
              Control = SpeedButton440
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
          object SpeedButton401: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 332
            Width = 116
            Height = 56
            Align = alClient
            OnClick = SpeedButton401Click
            ExplicitLeft = 2
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton402: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 332
            Width = 119
            Height = 56
            Align = alClient
            OnClick = SpeedButton402Click
            ExplicitLeft = 106
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton403: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 332
            Width = 115
            Height = 56
            Align = alClient
            OnClick = SpeedButton403Click
            ExplicitLeft = 223
            ExplicitTop = 367
            ExplicitWidth = 92
          end
          object SpeedButton404: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 332
            Width = 117
            Height = 56
            Align = alClient
            OnClick = SpeedButton404Click
            ExplicitLeft = 338
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton405: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton405Click
            ExplicitLeft = 13
            ExplicitTop = 3
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton406: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 4
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton406Click
            ExplicitLeft = 108
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton407: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 4
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton407Click
            ExplicitLeft = 223
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton408: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 4
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton408Click
            ExplicitLeft = 338
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton409: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 70
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton409Click
            ExplicitLeft = 8
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton410: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 70
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton410Click
            ExplicitLeft = 115
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton411: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 70
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton411Click
            ExplicitLeft = 232
            ExplicitTop = 83
            ExplicitWidth = 92
          end
          object SpeedButton412: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 70
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton412Click
            ExplicitLeft = 330
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton413: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 135
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton413Click
            ExplicitLeft = 8
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton414: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 135
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton414Click
            ExplicitLeft = 106
            ExplicitTop = 156
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton415: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 135
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton415Click
            ExplicitLeft = 223
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton416: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 135
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton416Click
            ExplicitLeft = 330
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton417: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 201
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton417Click
            ExplicitLeft = 8
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton418: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 201
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton418Click
            ExplicitLeft = 115
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton419: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 201
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton419Click
            ExplicitLeft = 232
            ExplicitTop = 229
            ExplicitWidth = 92
          end
          object SpeedButton420: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 201
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton420Click
            ExplicitLeft = 338
            ExplicitTop = 221
            ExplicitWidth = 92
          end
          object SpeedButton421: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 266
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton421Click
            ExplicitLeft = 8
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton422: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 266
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton422Click
            ExplicitLeft = 115
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton423: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 266
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton423Click
            ExplicitLeft = 232
            ExplicitTop = 300
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton424: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 266
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton424Click
            ExplicitLeft = 338
            ExplicitTop = 300
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton425: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 394
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton425Click
            ExplicitLeft = 8
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton426: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 394
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton426Click
            ExplicitLeft = 115
            ExplicitTop = 441
            ExplicitWidth = 92
          end
          object SpeedButton427: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 394
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton427Click
            ExplicitLeft = 223
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton428: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 394
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton428Click
            ExplicitLeft = 338
            ExplicitTop = 436
            ExplicitWidth = 92
          end
          object SpeedButton429: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 459
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton429Click
            ExplicitLeft = 2
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton430: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 459
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton430Click
            ExplicitLeft = 106
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton431: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 459
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton431Click
            ExplicitLeft = 223
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton432: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 459
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton432Click
            ExplicitLeft = 330
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton433: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 524
            Width = 116
            Height = 55
            Align = alClient
            OnClick = SpeedButton433Click
            ExplicitLeft = 2
            ExplicitTop = 583
            ExplicitWidth = 92
          end
          object SpeedButton434: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 524
            Width = 119
            Height = 55
            Align = alClient
            OnClick = SpeedButton434Click
            ExplicitLeft = 115
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton435: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 524
            Width = 115
            Height = 55
            Align = alClient
            OnClick = SpeedButton435Click
            ExplicitLeft = 223
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton436: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 524
            Width = 117
            Height = 55
            Align = alClient
            OnClick = SpeedButton436Click
            ExplicitLeft = 338
            ExplicitTop = 579
            ExplicitWidth = 92
          end
          object SpeedButton437: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 585
            Width = 116
            Height = 57
            Align = alClient
            OnClick = SpeedButton437Click
            ExplicitLeft = 2
            ExplicitTop = 647
            ExplicitWidth = 92
          end
          object SpeedButton438: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 585
            Width = 119
            Height = 57
            Align = alClient
            OnClick = SpeedButton438Click
            ExplicitLeft = 106
            ExplicitTop = 647
            ExplicitWidth = 92
          end
          object SpeedButton439: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 585
            Width = 117
            Height = 57
            Align = alClient
            OnClick = SpeedButton439Click
            ExplicitLeft = 330
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton440: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 585
            Width = 115
            Height = 57
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton440Click
            ExplicitLeft = 223
            ExplicitTop = 647
            ExplicitWidth = 92
          end
        end
      end
      object TabSheet12: TTabSheet
        Caption = 'TabSheet12'
        ImageIndex = 11
        object GridPanel15: TGridPanel
          Left = 0
          Top = 0
          Width = 493
          Height = 646
          Align = alClient
          ColumnCollection = <
            item
              Value = 24.779119604786030000
            end
            item
              Value = 25.543272797287100000
            end
            item
              Value = 24.685555526025840000
            end
            item
              Value = 24.992052071901020000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = SpeedButton441
              Row = 5
            end
            item
              Column = 1
              Control = SpeedButton442
              Row = 5
            end
            item
              Column = 2
              Control = SpeedButton443
              Row = 5
            end
            item
              Column = 3
              Control = SpeedButton444
              Row = 5
            end
            item
              Column = 0
              Control = SpeedButton445
              Row = 0
            end
            item
              Column = 1
              Control = SpeedButton446
              Row = 0
            end
            item
              Column = 2
              Control = SpeedButton447
              Row = 0
            end
            item
              Column = 3
              Control = SpeedButton448
              Row = 0
            end
            item
              Column = 0
              Control = SpeedButton449
              Row = 1
            end
            item
              Column = 1
              Control = SpeedButton450
              Row = 1
            end
            item
              Column = 2
              Control = SpeedButton451
              Row = 1
            end
            item
              Column = 3
              Control = SpeedButton452
              Row = 1
            end
            item
              Column = 0
              Control = SpeedButton453
              Row = 2
            end
            item
              Column = 1
              Control = SpeedButton454
              Row = 2
            end
            item
              Column = 2
              Control = SpeedButton455
              Row = 2
            end
            item
              Column = 3
              Control = SpeedButton456
              Row = 2
            end
            item
              Column = 0
              Control = SpeedButton457
              Row = 3
            end
            item
              Column = 1
              Control = SpeedButton458
              Row = 3
            end
            item
              Column = 2
              Control = SpeedButton459
              Row = 3
            end
            item
              Column = 3
              Control = SpeedButton460
              Row = 3
            end
            item
              Column = 0
              Control = SpeedButton461
              Row = 4
            end
            item
              Column = 1
              Control = SpeedButton462
              Row = 4
            end
            item
              Column = 2
              Control = SpeedButton463
              Row = 4
            end
            item
              Column = 3
              Control = SpeedButton464
              Row = 4
            end
            item
              Column = 0
              Control = SpeedButton465
              Row = 6
            end
            item
              Column = 1
              Control = SpeedButton466
              Row = 6
            end
            item
              Column = 2
              Control = SpeedButton467
              Row = 6
            end
            item
              Column = 3
              Control = SpeedButton468
              Row = 6
            end
            item
              Column = 0
              Control = SpeedButton469
              Row = 7
            end
            item
              Column = 1
              Control = SpeedButton470
              Row = 7
            end
            item
              Column = 2
              Control = SpeedButton471
              Row = 7
            end
            item
              Column = 3
              Control = SpeedButton472
              Row = 7
            end
            item
              Column = 0
              Control = SpeedButton473
              Row = 8
            end
            item
              Column = 1
              Control = SpeedButton474
              Row = 8
            end
            item
              Column = 2
              Control = SpeedButton475
              Row = 8
            end
            item
              Column = 3
              Control = SpeedButton476
              Row = 8
            end
            item
              Column = 0
              Control = SpeedButton477
              Row = 9
            end
            item
              Column = 1
              Control = SpeedButton478
              Row = 9
            end
            item
              Column = 3
              Control = SpeedButton479
              Row = 9
            end
            item
              Column = 2
              Control = SpeedButton480
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
          object SpeedButton441: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 332
            Width = 116
            Height = 56
            Align = alClient
            OnClick = SpeedButton441Click
            ExplicitLeft = 2
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton442: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 332
            Width = 119
            Height = 56
            Align = alClient
            OnClick = SpeedButton442Click
            ExplicitLeft = 106
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton443: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 332
            Width = 115
            Height = 56
            Align = alClient
            OnClick = SpeedButton443Click
            ExplicitLeft = 223
            ExplicitTop = 367
            ExplicitWidth = 92
          end
          object SpeedButton444: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 332
            Width = 117
            Height = 56
            Align = alClient
            OnClick = SpeedButton444Click
            ExplicitLeft = 338
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton445: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton445Click
            ExplicitLeft = 15
            ExplicitTop = 3
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton446: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 4
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton446Click
            ExplicitLeft = 108
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton447: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 4
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton447Click
            ExplicitLeft = 223
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton448: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 4
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton448Click
            ExplicitLeft = 338
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton449: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 70
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton449Click
            ExplicitLeft = 8
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton450: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 70
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton450Click
            ExplicitLeft = 115
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton451: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 70
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton451Click
            ExplicitLeft = 232
            ExplicitTop = 83
            ExplicitWidth = 92
          end
          object SpeedButton452: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 70
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton452Click
            ExplicitLeft = 330
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton453: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 135
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton453Click
            ExplicitLeft = 8
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton454: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 135
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton454Click
            ExplicitLeft = 106
            ExplicitTop = 156
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton455: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 135
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton455Click
            ExplicitLeft = 223
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton456: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 135
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton456Click
            ExplicitLeft = 330
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton457: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 201
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton457Click
            ExplicitLeft = 8
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton458: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 201
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton458Click
            ExplicitLeft = 115
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton459: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 201
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton459Click
            ExplicitLeft = 232
            ExplicitTop = 229
            ExplicitWidth = 92
          end
          object SpeedButton460: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 201
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton460Click
            ExplicitLeft = 338
            ExplicitTop = 221
            ExplicitWidth = 92
          end
          object SpeedButton461: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 266
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton461Click
            ExplicitLeft = 8
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton462: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 266
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton462Click
            ExplicitLeft = 115
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton463: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 266
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton463Click
            ExplicitLeft = 232
            ExplicitTop = 300
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton464: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 266
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton464Click
            ExplicitLeft = 338
            ExplicitTop = 300
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton465: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 394
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton465Click
            ExplicitLeft = 8
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton466: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 394
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton466Click
            ExplicitLeft = 115
            ExplicitTop = 441
            ExplicitWidth = 92
          end
          object SpeedButton467: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 394
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton467Click
            ExplicitLeft = 223
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton468: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 394
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton468Click
            ExplicitLeft = 338
            ExplicitTop = 436
            ExplicitWidth = 92
          end
          object SpeedButton469: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 459
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton469Click
            ExplicitLeft = 2
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton470: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 459
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton470Click
            ExplicitLeft = 106
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton471: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 459
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton471Click
            ExplicitLeft = 223
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton472: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 459
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton472Click
            ExplicitLeft = 330
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton473: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 524
            Width = 116
            Height = 55
            Align = alClient
            OnClick = SpeedButton473Click
            ExplicitLeft = 2
            ExplicitTop = 583
            ExplicitWidth = 92
          end
          object SpeedButton474: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 524
            Width = 119
            Height = 55
            Align = alClient
            OnClick = SpeedButton474Click
            ExplicitLeft = 115
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton475: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 524
            Width = 115
            Height = 55
            Align = alClient
            OnClick = SpeedButton475Click
            ExplicitLeft = 223
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton476: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 524
            Width = 117
            Height = 55
            Align = alClient
            OnClick = SpeedButton476Click
            ExplicitLeft = 338
            ExplicitTop = 579
            ExplicitWidth = 92
          end
          object SpeedButton477: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 585
            Width = 116
            Height = 57
            Align = alClient
            OnClick = SpeedButton477Click
            ExplicitLeft = 2
            ExplicitTop = 647
            ExplicitWidth = 92
          end
          object SpeedButton478: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 585
            Width = 119
            Height = 57
            Align = alClient
            OnClick = SpeedButton478Click
            ExplicitLeft = 106
            ExplicitTop = 647
            ExplicitWidth = 92
          end
          object SpeedButton479: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 585
            Width = 117
            Height = 57
            Align = alClient
            OnClick = SpeedButton479Click
            ExplicitLeft = 330
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton480: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 585
            Width = 115
            Height = 57
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton480Click
            ExplicitLeft = 223
            ExplicitTop = 647
            ExplicitWidth = 92
          end
        end
      end
      object TabSheet13: TTabSheet
        Caption = 'TabSheet13'
        ImageIndex = 12
        object GridPanel16: TGridPanel
          Left = 0
          Top = 0
          Width = 493
          Height = 646
          Align = alClient
          ColumnCollection = <
            item
              Value = 24.779119604786030000
            end
            item
              Value = 25.543272797287100000
            end
            item
              Value = 24.685555526025840000
            end
            item
              Value = 24.992052071901020000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = SpeedButton481
              Row = 5
            end
            item
              Column = 1
              Control = SpeedButton482
              Row = 5
            end
            item
              Column = 2
              Control = SpeedButton483
              Row = 5
            end
            item
              Column = 3
              Control = SpeedButton484
              Row = 5
            end
            item
              Column = 0
              Control = SpeedButton485
              Row = 0
            end
            item
              Column = 1
              Control = SpeedButton486
              Row = 0
            end
            item
              Column = 2
              Control = SpeedButton487
              Row = 0
            end
            item
              Column = 3
              Control = SpeedButton488
              Row = 0
            end
            item
              Column = 0
              Control = SpeedButton489
              Row = 1
            end
            item
              Column = 1
              Control = SpeedButton490
              Row = 1
            end
            item
              Column = 2
              Control = SpeedButton491
              Row = 1
            end
            item
              Column = 3
              Control = SpeedButton492
              Row = 1
            end
            item
              Column = 0
              Control = SpeedButton493
              Row = 2
            end
            item
              Column = 1
              Control = SpeedButton494
              Row = 2
            end
            item
              Column = 2
              Control = SpeedButton495
              Row = 2
            end
            item
              Column = 3
              Control = SpeedButton496
              Row = 2
            end
            item
              Column = 0
              Control = SpeedButton497
              Row = 3
            end
            item
              Column = 1
              Control = SpeedButton498
              Row = 3
            end
            item
              Column = 2
              Control = SpeedButton499
              Row = 3
            end
            item
              Column = 3
              Control = SpeedButton500
              Row = 3
            end
            item
              Column = 0
              Control = SpeedButton501
              Row = 4
            end
            item
              Column = 1
              Control = SpeedButton502
              Row = 4
            end
            item
              Column = 2
              Control = SpeedButton503
              Row = 4
            end
            item
              Column = 3
              Control = SpeedButton504
              Row = 4
            end
            item
              Column = 0
              Control = SpeedButton505
              Row = 6
            end
            item
              Column = 1
              Control = SpeedButton506
              Row = 6
            end
            item
              Column = 2
              Control = SpeedButton507
              Row = 6
            end
            item
              Column = 3
              Control = SpeedButton508
              Row = 6
            end
            item
              Column = 0
              Control = SpeedButton509
              Row = 7
            end
            item
              Column = 1
              Control = SpeedButton510
              Row = 7
            end
            item
              Column = 2
              Control = SpeedButton511
              Row = 7
            end
            item
              Column = 3
              Control = SpeedButton512
              Row = 7
            end
            item
              Column = 0
              Control = SpeedButton513
              Row = 8
            end
            item
              Column = 1
              Control = SpeedButton514
              Row = 8
            end
            item
              Column = 2
              Control = SpeedButton515
              Row = 8
            end
            item
              Column = 3
              Control = SpeedButton516
              Row = 8
            end
            item
              Column = 0
              Control = SpeedButton517
              Row = 9
            end
            item
              Column = 1
              Control = SpeedButton518
              Row = 9
            end
            item
              Column = 3
              Control = SpeedButton519
              Row = 9
            end
            item
              Column = 2
              Control = SpeedButton520
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
          object SpeedButton481: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 332
            Width = 116
            Height = 56
            Align = alClient
            OnClick = SpeedButton481Click
            ExplicitLeft = 2
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton482: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 332
            Width = 119
            Height = 56
            Align = alClient
            OnClick = SpeedButton482Click
            ExplicitLeft = 106
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton483: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 332
            Width = 115
            Height = 56
            Align = alClient
            OnClick = SpeedButton483Click
            ExplicitLeft = 223
            ExplicitTop = 367
            ExplicitWidth = 92
          end
          object SpeedButton484: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 332
            Width = 117
            Height = 56
            Align = alClient
            OnClick = SpeedButton484Click
            ExplicitLeft = 338
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton485: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton485Click
            ExplicitLeft = 15
            ExplicitTop = 3
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton486: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 4
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton486Click
            ExplicitLeft = 108
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton487: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 4
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton487Click
            ExplicitLeft = 223
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton488: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 4
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton488Click
            ExplicitLeft = 338
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton489: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 70
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton489Click
            ExplicitLeft = 8
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton490: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 70
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton490Click
            ExplicitLeft = 115
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton491: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 70
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton491Click
            ExplicitLeft = 232
            ExplicitTop = 83
            ExplicitWidth = 92
          end
          object SpeedButton492: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 70
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton492Click
            ExplicitLeft = 330
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton493: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 135
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton493Click
            ExplicitLeft = 8
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton494: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 135
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton494Click
            ExplicitLeft = 106
            ExplicitTop = 156
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton495: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 135
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton495Click
            ExplicitLeft = 223
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton496: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 135
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton496Click
            ExplicitLeft = 330
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton497: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 201
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton497Click
            ExplicitLeft = 8
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton498: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 201
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton498Click
            ExplicitLeft = 115
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton499: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 201
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton499Click
            ExplicitLeft = 232
            ExplicitTop = 229
            ExplicitWidth = 92
          end
          object SpeedButton500: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 201
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton500Click
            ExplicitLeft = 338
            ExplicitTop = 221
            ExplicitWidth = 92
          end
          object SpeedButton501: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 266
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton501Click
            ExplicitLeft = 8
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton502: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 266
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton502Click
            ExplicitLeft = 115
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton503: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 266
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton503Click
            ExplicitLeft = 232
            ExplicitTop = 300
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton504: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 266
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton504Click
            ExplicitLeft = 338
            ExplicitTop = 300
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton505: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 394
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton505Click
            ExplicitLeft = 8
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton506: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 394
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton506Click
            ExplicitLeft = 115
            ExplicitTop = 441
            ExplicitWidth = 92
          end
          object SpeedButton507: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 394
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton507Click
            ExplicitLeft = 223
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton508: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 394
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton508Click
            ExplicitLeft = 338
            ExplicitTop = 436
            ExplicitWidth = 92
          end
          object SpeedButton509: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 459
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton509Click
            ExplicitLeft = 2
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton510: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 459
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton510Click
            ExplicitLeft = 106
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton511: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 459
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton511Click
            ExplicitLeft = 223
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton512: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 459
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton512Click
            ExplicitLeft = 330
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton513: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 524
            Width = 116
            Height = 55
            Align = alClient
            OnClick = SpeedButton513Click
            ExplicitLeft = 2
            ExplicitTop = 583
            ExplicitWidth = 92
          end
          object SpeedButton514: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 524
            Width = 119
            Height = 55
            Align = alClient
            OnClick = SpeedButton514Click
            ExplicitLeft = 115
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton515: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 524
            Width = 115
            Height = 55
            Align = alClient
            OnClick = SpeedButton515Click
            ExplicitLeft = 223
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton516: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 524
            Width = 117
            Height = 55
            Align = alClient
            OnClick = SpeedButton516Click
            ExplicitLeft = 338
            ExplicitTop = 579
            ExplicitWidth = 92
          end
          object SpeedButton517: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 585
            Width = 116
            Height = 57
            Align = alClient
            OnClick = SpeedButton517Click
            ExplicitLeft = 2
            ExplicitTop = 647
            ExplicitWidth = 92
          end
          object SpeedButton518: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 585
            Width = 119
            Height = 57
            Align = alClient
            OnClick = SpeedButton518Click
            ExplicitLeft = 106
            ExplicitTop = 647
            ExplicitWidth = 92
          end
          object SpeedButton519: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 585
            Width = 117
            Height = 57
            Align = alClient
            OnClick = SpeedButton519Click
            ExplicitLeft = 330
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton520: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 585
            Width = 115
            Height = 57
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton520Click
            ExplicitLeft = 223
            ExplicitTop = 647
            ExplicitWidth = 92
          end
        end
      end
      object TabSheet14: TTabSheet
        Caption = 'TabSheet14'
        ImageIndex = 13
        object GridPanel17: TGridPanel
          Left = 0
          Top = 0
          Width = 493
          Height = 646
          Align = alClient
          ColumnCollection = <
            item
              Value = 24.779119604786030000
            end
            item
              Value = 25.543272797287100000
            end
            item
              Value = 24.685555526025840000
            end
            item
              Value = 24.992052071901020000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = SpeedButton521
              Row = 5
            end
            item
              Column = 1
              Control = SpeedButton522
              Row = 5
            end
            item
              Column = 2
              Control = SpeedButton523
              Row = 5
            end
            item
              Column = 3
              Control = SpeedButton524
              Row = 5
            end
            item
              Column = 0
              Control = SpeedButton525
              Row = 0
            end
            item
              Column = 1
              Control = SpeedButton526
              Row = 0
            end
            item
              Column = 2
              Control = SpeedButton527
              Row = 0
            end
            item
              Column = 3
              Control = SpeedButton528
              Row = 0
            end
            item
              Column = 0
              Control = SpeedButton529
              Row = 1
            end
            item
              Column = 1
              Control = SpeedButton530
              Row = 1
            end
            item
              Column = 2
              Control = SpeedButton531
              Row = 1
            end
            item
              Column = 3
              Control = SpeedButton532
              Row = 1
            end
            item
              Column = 0
              Control = SpeedButton533
              Row = 2
            end
            item
              Column = 1
              Control = SpeedButton534
              Row = 2
            end
            item
              Column = 2
              Control = SpeedButton535
              Row = 2
            end
            item
              Column = 3
              Control = SpeedButton536
              Row = 2
            end
            item
              Column = 0
              Control = SpeedButton537
              Row = 3
            end
            item
              Column = 1
              Control = SpeedButton538
              Row = 3
            end
            item
              Column = 2
              Control = SpeedButton539
              Row = 3
            end
            item
              Column = 3
              Control = SpeedButton540
              Row = 3
            end
            item
              Column = 0
              Control = SpeedButton541
              Row = 4
            end
            item
              Column = 1
              Control = SpeedButton542
              Row = 4
            end
            item
              Column = 2
              Control = SpeedButton543
              Row = 4
            end
            item
              Column = 3
              Control = SpeedButton544
              Row = 4
            end
            item
              Column = 0
              Control = SpeedButton545
              Row = 6
            end
            item
              Column = 1
              Control = SpeedButton546
              Row = 6
            end
            item
              Column = 2
              Control = SpeedButton547
              Row = 6
            end
            item
              Column = 3
              Control = SpeedButton548
              Row = 6
            end
            item
              Column = 0
              Control = SpeedButton549
              Row = 7
            end
            item
              Column = 1
              Control = SpeedButton550
              Row = 7
            end
            item
              Column = 2
              Control = SpeedButton551
              Row = 7
            end
            item
              Column = 3
              Control = SpeedButton552
              Row = 7
            end
            item
              Column = 0
              Control = SpeedButton553
              Row = 8
            end
            item
              Column = 1
              Control = SpeedButton554
              Row = 8
            end
            item
              Column = 2
              Control = SpeedButton555
              Row = 8
            end
            item
              Column = 3
              Control = SpeedButton556
              Row = 8
            end
            item
              Column = 0
              Control = SpeedButton557
              Row = 9
            end
            item
              Column = 1
              Control = SpeedButton558
              Row = 9
            end
            item
              Column = 3
              Control = SpeedButton559
              Row = 9
            end
            item
              Column = 2
              Control = SpeedButton560
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
          object SpeedButton521: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 332
            Width = 116
            Height = 56
            Align = alClient
            OnClick = SpeedButton521Click
            ExplicitLeft = 2
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton522: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 332
            Width = 119
            Height = 56
            Align = alClient
            OnClick = SpeedButton522Click
            ExplicitLeft = 106
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton523: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 332
            Width = 115
            Height = 56
            Align = alClient
            OnClick = SpeedButton523Click
            ExplicitLeft = 223
            ExplicitTop = 367
            ExplicitWidth = 92
          end
          object SpeedButton524: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 332
            Width = 117
            Height = 56
            Align = alClient
            OnClick = SpeedButton524Click
            ExplicitLeft = 338
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton525: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton525Click
            ExplicitLeft = 15
            ExplicitTop = 3
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton526: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 4
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton526Click
            ExplicitLeft = 108
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton527: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 4
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton527Click
            ExplicitLeft = 223
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton528: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 4
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton528Click
            ExplicitLeft = 338
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton529: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 70
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton529Click
            ExplicitLeft = 8
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton530: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 70
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton530Click
            ExplicitLeft = 115
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton531: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 70
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton531Click
            ExplicitLeft = 232
            ExplicitTop = 83
            ExplicitWidth = 92
          end
          object SpeedButton532: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 70
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton532Click
            ExplicitLeft = 330
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton533: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 135
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton533Click
            ExplicitLeft = 8
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton534: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 135
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton534Click
            ExplicitLeft = 106
            ExplicitTop = 156
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton535: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 135
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton535Click
            ExplicitLeft = 223
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton536: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 135
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton536Click
            ExplicitLeft = 330
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton537: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 201
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton537Click
            ExplicitLeft = 8
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton538: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 201
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton538Click
            ExplicitLeft = 115
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton539: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 201
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton539Click
            ExplicitLeft = 232
            ExplicitTop = 229
            ExplicitWidth = 92
          end
          object SpeedButton540: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 201
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton540Click
            ExplicitLeft = 338
            ExplicitTop = 221
            ExplicitWidth = 92
          end
          object SpeedButton541: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 266
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton541Click
            ExplicitLeft = 8
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton542: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 266
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton542Click
            ExplicitLeft = 115
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton543: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 266
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton543Click
            ExplicitLeft = 232
            ExplicitTop = 300
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton544: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 266
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton544Click
            ExplicitLeft = 338
            ExplicitTop = 300
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton545: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 394
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton545Click
            ExplicitLeft = 8
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton546: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 394
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton546Click
            ExplicitLeft = 115
            ExplicitTop = 441
            ExplicitWidth = 92
          end
          object SpeedButton547: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 394
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton547Click
            ExplicitLeft = 223
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton548: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 394
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton548Click
            ExplicitLeft = 338
            ExplicitTop = 436
            ExplicitWidth = 92
          end
          object SpeedButton549: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 459
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton549Click
            ExplicitLeft = 2
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton550: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 459
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton550Click
            ExplicitLeft = 106
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton551: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 459
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton551Click
            ExplicitLeft = 223
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton552: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 459
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton552Click
            ExplicitLeft = 330
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton553: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 524
            Width = 116
            Height = 55
            Align = alClient
            OnClick = SpeedButton553Click
            ExplicitLeft = 2
            ExplicitTop = 583
            ExplicitWidth = 92
          end
          object SpeedButton554: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 524
            Width = 119
            Height = 55
            Align = alClient
            OnClick = SpeedButton554Click
            ExplicitLeft = 115
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton555: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 524
            Width = 115
            Height = 55
            Align = alClient
            OnClick = SpeedButton555Click
            ExplicitLeft = 223
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton556: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 524
            Width = 117
            Height = 55
            Align = alClient
            OnClick = SpeedButton556Click
            ExplicitLeft = 338
            ExplicitTop = 579
            ExplicitWidth = 92
          end
          object SpeedButton557: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 585
            Width = 116
            Height = 57
            Align = alClient
            OnClick = SpeedButton557Click
            ExplicitLeft = 2
            ExplicitTop = 647
            ExplicitWidth = 92
          end
          object SpeedButton558: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 585
            Width = 119
            Height = 57
            Align = alClient
            OnClick = SpeedButton558Click
            ExplicitLeft = 106
            ExplicitTop = 647
            ExplicitWidth = 92
          end
          object SpeedButton559: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 585
            Width = 117
            Height = 57
            Align = alClient
            OnClick = SpeedButton559Click
            ExplicitLeft = 330
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton560: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 585
            Width = 115
            Height = 57
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton560Click
            ExplicitLeft = 223
            ExplicitTop = 647
            ExplicitWidth = 92
          end
        end
      end
      object TabSheet15: TTabSheet
        Caption = 'TabSheet15'
        ImageIndex = 14
        object GridPanel18: TGridPanel
          Left = 0
          Top = 0
          Width = 493
          Height = 646
          Align = alClient
          ColumnCollection = <
            item
              Value = 24.779119604786030000
            end
            item
              Value = 25.543272797287100000
            end
            item
              Value = 24.685555526025840000
            end
            item
              Value = 24.992052071901020000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = SpeedButton561
              Row = 5
            end
            item
              Column = 1
              Control = SpeedButton562
              Row = 5
            end
            item
              Column = 2
              Control = SpeedButton563
              Row = 5
            end
            item
              Column = 3
              Control = SpeedButton564
              Row = 5
            end
            item
              Column = 0
              Control = SpeedButton565
              Row = 0
            end
            item
              Column = 1
              Control = SpeedButton566
              Row = 0
            end
            item
              Column = 2
              Control = SpeedButton567
              Row = 0
            end
            item
              Column = 3
              Control = SpeedButton568
              Row = 0
            end
            item
              Column = 0
              Control = SpeedButton569
              Row = 1
            end
            item
              Column = 1
              Control = SpeedButton570
              Row = 1
            end
            item
              Column = 2
              Control = SpeedButton571
              Row = 1
            end
            item
              Column = 3
              Control = SpeedButton572
              Row = 1
            end
            item
              Column = 0
              Control = SpeedButton573
              Row = 2
            end
            item
              Column = 1
              Control = SpeedButton574
              Row = 2
            end
            item
              Column = 2
              Control = SpeedButton575
              Row = 2
            end
            item
              Column = 3
              Control = SpeedButton576
              Row = 2
            end
            item
              Column = 0
              Control = SpeedButton577
              Row = 3
            end
            item
              Column = 1
              Control = SpeedButton578
              Row = 3
            end
            item
              Column = 2
              Control = SpeedButton579
              Row = 3
            end
            item
              Column = 3
              Control = SpeedButton580
              Row = 3
            end
            item
              Column = 0
              Control = SpeedButton581
              Row = 4
            end
            item
              Column = 1
              Control = SpeedButton582
              Row = 4
            end
            item
              Column = 2
              Control = SpeedButton583
              Row = 4
            end
            item
              Column = 3
              Control = SpeedButton584
              Row = 4
            end
            item
              Column = 0
              Control = SpeedButton585
              Row = 6
            end
            item
              Column = 1
              Control = SpeedButton586
              Row = 6
            end
            item
              Column = 2
              Control = SpeedButton587
              Row = 6
            end
            item
              Column = 3
              Control = SpeedButton588
              Row = 6
            end
            item
              Column = 0
              Control = SpeedButton589
              Row = 7
            end
            item
              Column = 1
              Control = SpeedButton590
              Row = 7
            end
            item
              Column = 2
              Control = SpeedButton591
              Row = 7
            end
            item
              Column = 3
              Control = SpeedButton592
              Row = 7
            end
            item
              Column = 0
              Control = SpeedButton593
              Row = 8
            end
            item
              Column = 1
              Control = SpeedButton594
              Row = 8
            end
            item
              Column = 2
              Control = SpeedButton595
              Row = 8
            end
            item
              Column = 3
              Control = SpeedButton596
              Row = 8
            end
            item
              Column = 0
              Control = SpeedButton597
              Row = 9
            end
            item
              Column = 1
              Control = SpeedButton598
              Row = 9
            end
            item
              Column = 3
              Control = SpeedButton599
              Row = 9
            end
            item
              Column = 2
              Control = SpeedButton600
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
          object SpeedButton561: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 332
            Width = 116
            Height = 56
            Align = alClient
            OnClick = SpeedButton561Click
            ExplicitLeft = 2
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton562: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 332
            Width = 119
            Height = 56
            Align = alClient
            OnClick = SpeedButton562Click
            ExplicitLeft = 106
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton563: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 332
            Width = 115
            Height = 56
            Align = alClient
            OnClick = SpeedButton563Click
            ExplicitLeft = 223
            ExplicitTop = 367
            ExplicitWidth = 92
          end
          object SpeedButton564: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 332
            Width = 117
            Height = 56
            Align = alClient
            OnClick = SpeedButton564Click
            ExplicitLeft = 338
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton565: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton565Click
            ExplicitLeft = 15
            ExplicitTop = 3
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton566: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 4
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton566Click
            ExplicitLeft = 108
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton567: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 4
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton567Click
            ExplicitLeft = 223
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton568: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 4
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton568Click
            ExplicitLeft = 338
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton569: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 70
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton569Click
            ExplicitLeft = 8
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton570: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 70
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton570Click
            ExplicitLeft = 115
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton571: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 70
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton571Click
            ExplicitLeft = 232
            ExplicitTop = 83
            ExplicitWidth = 92
          end
          object SpeedButton572: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 70
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton572Click
            ExplicitLeft = 330
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton573: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 135
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton573Click
            ExplicitLeft = 8
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton574: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 135
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton574Click
            ExplicitLeft = 106
            ExplicitTop = 156
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton575: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 135
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton575Click
            ExplicitLeft = 223
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton576: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 135
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton576Click
            ExplicitLeft = 330
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton577: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 201
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton577Click
            ExplicitLeft = 8
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton578: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 201
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton578Click
            ExplicitLeft = 115
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton579: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 201
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton579Click
            ExplicitLeft = 232
            ExplicitTop = 229
            ExplicitWidth = 92
          end
          object SpeedButton580: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 201
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton580Click
            ExplicitLeft = 338
            ExplicitTop = 221
            ExplicitWidth = 92
          end
          object SpeedButton581: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 266
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton581Click
            ExplicitLeft = 8
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton582: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 266
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton582Click
            ExplicitLeft = 115
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton583: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 266
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton583Click
            ExplicitLeft = 232
            ExplicitTop = 300
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton584: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 266
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton584Click
            ExplicitLeft = 338
            ExplicitTop = 300
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton585: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 394
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton585Click
            ExplicitLeft = 8
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton586: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 394
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton586Click
            ExplicitLeft = 115
            ExplicitTop = 441
            ExplicitWidth = 92
          end
          object SpeedButton587: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 394
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton587Click
            ExplicitLeft = 223
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton588: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 394
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton588Click
            ExplicitLeft = 338
            ExplicitTop = 436
            ExplicitWidth = 92
          end
          object SpeedButton589: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 459
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton589Click
            ExplicitLeft = 2
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton590: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 459
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton590Click
            ExplicitLeft = 106
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton591: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 459
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton591Click
            ExplicitLeft = 223
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton592: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 459
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton592Click
            ExplicitLeft = 330
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton593: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 524
            Width = 116
            Height = 55
            Align = alClient
            OnClick = SpeedButton593Click
            ExplicitLeft = 2
            ExplicitTop = 583
            ExplicitWidth = 92
          end
          object SpeedButton594: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 524
            Width = 119
            Height = 55
            Align = alClient
            OnClick = SpeedButton594Click
            ExplicitLeft = 115
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton595: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 524
            Width = 115
            Height = 55
            Align = alClient
            OnClick = SpeedButton595Click
            ExplicitLeft = 223
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton596: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 524
            Width = 117
            Height = 55
            Align = alClient
            OnClick = SpeedButton596Click
            ExplicitLeft = 338
            ExplicitTop = 579
            ExplicitWidth = 92
          end
          object SpeedButton597: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 585
            Width = 116
            Height = 57
            Align = alClient
            OnClick = SpeedButton597Click
            ExplicitLeft = 2
            ExplicitTop = 647
            ExplicitWidth = 92
          end
          object SpeedButton598: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 585
            Width = 119
            Height = 57
            Align = alClient
            OnClick = SpeedButton598Click
            ExplicitLeft = 106
            ExplicitTop = 647
            ExplicitWidth = 92
          end
          object SpeedButton599: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 585
            Width = 117
            Height = 57
            Align = alClient
            OnClick = SpeedButton599Click
            ExplicitLeft = 330
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton600: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 585
            Width = 115
            Height = 57
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton600Click
            ExplicitLeft = 223
            ExplicitTop = 647
            ExplicitWidth = 92
          end
        end
      end
      object TabSheet16: TTabSheet
        Caption = 'TabSheet16'
        ImageIndex = 15
        object GridPanel19: TGridPanel
          Left = 0
          Top = 0
          Width = 493
          Height = 646
          Align = alClient
          ColumnCollection = <
            item
              Value = 24.779119604786030000
            end
            item
              Value = 25.543272797287100000
            end
            item
              Value = 24.685555526025840000
            end
            item
              Value = 24.992052071901020000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = SpeedButton601
              Row = 5
            end
            item
              Column = 1
              Control = SpeedButton602
              Row = 5
            end
            item
              Column = 2
              Control = SpeedButton603
              Row = 5
            end
            item
              Column = 3
              Control = SpeedButton604
              Row = 5
            end
            item
              Column = 0
              Control = SpeedButton605
              Row = 0
            end
            item
              Column = 1
              Control = SpeedButton606
              Row = 0
            end
            item
              Column = 2
              Control = SpeedButton607
              Row = 0
            end
            item
              Column = 3
              Control = SpeedButton608
              Row = 0
            end
            item
              Column = 0
              Control = SpeedButton609
              Row = 1
            end
            item
              Column = 1
              Control = SpeedButton610
              Row = 1
            end
            item
              Column = 2
              Control = SpeedButton611
              Row = 1
            end
            item
              Column = 3
              Control = SpeedButton612
              Row = 1
            end
            item
              Column = 0
              Control = SpeedButton613
              Row = 2
            end
            item
              Column = 1
              Control = SpeedButton614
              Row = 2
            end
            item
              Column = 2
              Control = SpeedButton615
              Row = 2
            end
            item
              Column = 3
              Control = SpeedButton616
              Row = 2
            end
            item
              Column = 0
              Control = SpeedButton617
              Row = 3
            end
            item
              Column = 1
              Control = SpeedButton618
              Row = 3
            end
            item
              Column = 2
              Control = SpeedButton619
              Row = 3
            end
            item
              Column = 3
              Control = SpeedButton620
              Row = 3
            end
            item
              Column = 0
              Control = SpeedButton621
              Row = 4
            end
            item
              Column = 1
              Control = SpeedButton622
              Row = 4
            end
            item
              Column = 2
              Control = SpeedButton623
              Row = 4
            end
            item
              Column = 3
              Control = SpeedButton624
              Row = 4
            end
            item
              Column = 0
              Control = SpeedButton625
              Row = 6
            end
            item
              Column = 1
              Control = SpeedButton626
              Row = 6
            end
            item
              Column = 2
              Control = SpeedButton627
              Row = 6
            end
            item
              Column = 3
              Control = SpeedButton628
              Row = 6
            end
            item
              Column = 0
              Control = SpeedButton629
              Row = 7
            end
            item
              Column = 1
              Control = SpeedButton630
              Row = 7
            end
            item
              Column = 2
              Control = SpeedButton631
              Row = 7
            end
            item
              Column = 3
              Control = SpeedButton632
              Row = 7
            end
            item
              Column = 0
              Control = SpeedButton633
              Row = 8
            end
            item
              Column = 1
              Control = SpeedButton634
              Row = 8
            end
            item
              Column = 2
              Control = SpeedButton635
              Row = 8
            end
            item
              Column = 3
              Control = SpeedButton636
              Row = 8
            end
            item
              Column = 0
              Control = SpeedButton637
              Row = 9
            end
            item
              Column = 1
              Control = SpeedButton638
              Row = 9
            end
            item
              Column = 3
              Control = SpeedButton639
              Row = 9
            end
            item
              Column = 2
              Control = SpeedButton640
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
          object SpeedButton601: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 332
            Width = 116
            Height = 56
            Align = alClient
            OnClick = SpeedButton601Click
            ExplicitLeft = 2
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton602: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 332
            Width = 119
            Height = 56
            Align = alClient
            OnClick = SpeedButton602Click
            ExplicitLeft = 106
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton603: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 332
            Width = 115
            Height = 56
            Align = alClient
            OnClick = SpeedButton603Click
            ExplicitLeft = 223
            ExplicitTop = 367
            ExplicitWidth = 92
          end
          object SpeedButton604: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 332
            Width = 117
            Height = 56
            Align = alClient
            OnClick = SpeedButton604Click
            ExplicitLeft = 338
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton605: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton605Click
            ExplicitLeft = 15
            ExplicitTop = 3
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton606: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 4
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton606Click
            ExplicitLeft = 108
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton607: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 4
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton607Click
            ExplicitLeft = 223
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton608: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 4
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton608Click
            ExplicitLeft = 338
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton609: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 70
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton609Click
            ExplicitLeft = 8
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton610: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 70
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton610Click
            ExplicitLeft = 115
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton611: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 70
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton611Click
            ExplicitLeft = 232
            ExplicitTop = 83
            ExplicitWidth = 92
          end
          object SpeedButton612: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 70
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton612Click
            ExplicitLeft = 330
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton613: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 135
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton613Click
            ExplicitLeft = 8
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton614: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 135
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton614Click
            ExplicitLeft = 106
            ExplicitTop = 156
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton615: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 135
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton615Click
            ExplicitLeft = 223
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton616: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 135
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton616Click
            ExplicitLeft = 330
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton617: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 201
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton617Click
            ExplicitLeft = 8
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton618: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 201
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton618Click
            ExplicitLeft = 115
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton619: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 201
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton619Click
            ExplicitLeft = 232
            ExplicitTop = 229
            ExplicitWidth = 92
          end
          object SpeedButton620: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 201
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton620Click
            ExplicitLeft = 338
            ExplicitTop = 221
            ExplicitWidth = 92
          end
          object SpeedButton621: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 266
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton621Click
            ExplicitLeft = 8
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton622: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 266
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton622Click
            ExplicitLeft = 115
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton623: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 266
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton623Click
            ExplicitLeft = 232
            ExplicitTop = 300
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton624: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 266
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton624Click
            ExplicitLeft = 338
            ExplicitTop = 300
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton625: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 394
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton625Click
            ExplicitLeft = 8
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton626: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 394
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton626Click
            ExplicitLeft = 115
            ExplicitTop = 441
            ExplicitWidth = 92
          end
          object SpeedButton627: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 394
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton627Click
            ExplicitLeft = 223
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton628: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 394
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton628Click
            ExplicitLeft = 338
            ExplicitTop = 436
            ExplicitWidth = 92
          end
          object SpeedButton629: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 459
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton629Click
            ExplicitLeft = 2
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton630: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 459
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton630Click
            ExplicitLeft = 106
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton631: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 459
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton631Click
            ExplicitLeft = 223
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton632: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 459
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton632Click
            ExplicitLeft = 330
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton633: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 524
            Width = 116
            Height = 55
            Align = alClient
            OnClick = SpeedButton633Click
            ExplicitLeft = 2
            ExplicitTop = 583
            ExplicitWidth = 92
          end
          object SpeedButton634: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 524
            Width = 119
            Height = 55
            Align = alClient
            OnClick = SpeedButton634Click
            ExplicitLeft = 115
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton635: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 524
            Width = 115
            Height = 55
            Align = alClient
            OnClick = SpeedButton635Click
            ExplicitLeft = 223
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton636: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 524
            Width = 117
            Height = 55
            Align = alClient
            OnClick = SpeedButton636Click
            ExplicitLeft = 338
            ExplicitTop = 579
            ExplicitWidth = 92
          end
          object SpeedButton637: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 585
            Width = 116
            Height = 57
            Align = alClient
            OnClick = SpeedButton637Click
            ExplicitLeft = 2
            ExplicitTop = 647
            ExplicitWidth = 92
          end
          object SpeedButton638: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 585
            Width = 119
            Height = 57
            Align = alClient
            OnClick = SpeedButton638Click
            ExplicitLeft = 106
            ExplicitTop = 647
            ExplicitWidth = 92
          end
          object SpeedButton639: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 585
            Width = 117
            Height = 57
            Align = alClient
            OnClick = SpeedButton639Click
            ExplicitLeft = 330
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton640: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 585
            Width = 115
            Height = 57
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton640Click
            ExplicitLeft = 223
            ExplicitTop = 647
            ExplicitWidth = 92
          end
        end
      end
      object TabSheet17: TTabSheet
        Caption = 'TabSheet17'
        ImageIndex = 16
        object GridPanel20: TGridPanel
          Left = 0
          Top = 0
          Width = 493
          Height = 646
          Align = alClient
          ColumnCollection = <
            item
              Value = 24.779119604786030000
            end
            item
              Value = 25.543272797287100000
            end
            item
              Value = 24.685555526025840000
            end
            item
              Value = 24.992052071901020000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = SpeedButton641
              Row = 5
            end
            item
              Column = 1
              Control = SpeedButton642
              Row = 5
            end
            item
              Column = 2
              Control = SpeedButton643
              Row = 5
            end
            item
              Column = 3
              Control = SpeedButton644
              Row = 5
            end
            item
              Column = 0
              Control = SpeedButton645
              Row = 0
            end
            item
              Column = 1
              Control = SpeedButton646
              Row = 0
            end
            item
              Column = 2
              Control = SpeedButton647
              Row = 0
            end
            item
              Column = 3
              Control = SpeedButton648
              Row = 0
            end
            item
              Column = 0
              Control = SpeedButton649
              Row = 1
            end
            item
              Column = 1
              Control = SpeedButton650
              Row = 1
            end
            item
              Column = 2
              Control = SpeedButton651
              Row = 1
            end
            item
              Column = 3
              Control = SpeedButton652
              Row = 1
            end
            item
              Column = 0
              Control = SpeedButton653
              Row = 2
            end
            item
              Column = 1
              Control = SpeedButton654
              Row = 2
            end
            item
              Column = 2
              Control = SpeedButton655
              Row = 2
            end
            item
              Column = 3
              Control = SpeedButton656
              Row = 2
            end
            item
              Column = 0
              Control = SpeedButton657
              Row = 3
            end
            item
              Column = 1
              Control = SpeedButton658
              Row = 3
            end
            item
              Column = 2
              Control = SpeedButton659
              Row = 3
            end
            item
              Column = 3
              Control = SpeedButton660
              Row = 3
            end
            item
              Column = 0
              Control = SpeedButton661
              Row = 4
            end
            item
              Column = 1
              Control = SpeedButton662
              Row = 4
            end
            item
              Column = 2
              Control = SpeedButton663
              Row = 4
            end
            item
              Column = 3
              Control = SpeedButton664
              Row = 4
            end
            item
              Column = 0
              Control = SpeedButton665
              Row = 6
            end
            item
              Column = 1
              Control = SpeedButton666
              Row = 6
            end
            item
              Column = 2
              Control = SpeedButton667
              Row = 6
            end
            item
              Column = 3
              Control = SpeedButton668
              Row = 6
            end
            item
              Column = 0
              Control = SpeedButton669
              Row = 7
            end
            item
              Column = 1
              Control = SpeedButton670
              Row = 7
            end
            item
              Column = 2
              Control = SpeedButton671
              Row = 7
            end
            item
              Column = 3
              Control = SpeedButton672
              Row = 7
            end
            item
              Column = 0
              Control = SpeedButton673
              Row = 8
            end
            item
              Column = 1
              Control = SpeedButton674
              Row = 8
            end
            item
              Column = 2
              Control = SpeedButton675
              Row = 8
            end
            item
              Column = 3
              Control = SpeedButton676
              Row = 8
            end
            item
              Column = 0
              Control = SpeedButton677
              Row = 9
            end
            item
              Column = 1
              Control = SpeedButton678
              Row = 9
            end
            item
              Column = 3
              Control = SpeedButton679
              Row = 9
            end
            item
              Column = 2
              Control = SpeedButton680
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
          object SpeedButton641: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 332
            Width = 116
            Height = 56
            Align = alClient
            OnClick = SpeedButton641Click
            ExplicitLeft = 2
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton642: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 332
            Width = 119
            Height = 56
            Align = alClient
            OnClick = SpeedButton642Click
            ExplicitLeft = 106
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton643: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 332
            Width = 115
            Height = 56
            Align = alClient
            OnClick = SpeedButton643Click
            ExplicitLeft = 223
            ExplicitTop = 367
            ExplicitWidth = 92
          end
          object SpeedButton644: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 332
            Width = 117
            Height = 56
            Align = alClient
            OnClick = SpeedButton644Click
            ExplicitLeft = 338
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton645: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton645Click
            ExplicitLeft = 15
            ExplicitTop = 3
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton646: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 4
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton646Click
            ExplicitLeft = 108
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton647: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 4
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton647Click
            ExplicitLeft = 223
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton648: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 4
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton648Click
            ExplicitLeft = 338
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton649: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 70
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton649Click
            ExplicitLeft = 8
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton650: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 70
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton650Click
            ExplicitLeft = 115
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton651: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 70
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton651Click
            ExplicitLeft = 232
            ExplicitTop = 83
            ExplicitWidth = 92
          end
          object SpeedButton652: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 70
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton652Click
            ExplicitLeft = 330
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton653: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 135
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton653Click
            ExplicitLeft = 8
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton654: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 135
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton654Click
            ExplicitLeft = 106
            ExplicitTop = 156
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton655: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 135
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton655Click
            ExplicitLeft = 223
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton656: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 135
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton656Click
            ExplicitLeft = 330
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton657: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 201
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton657Click
            ExplicitLeft = 8
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton658: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 201
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton658Click
            ExplicitLeft = 115
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton659: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 201
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton659Click
            ExplicitLeft = 232
            ExplicitTop = 229
            ExplicitWidth = 92
          end
          object SpeedButton660: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 201
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton660Click
            ExplicitLeft = 338
            ExplicitTop = 221
            ExplicitWidth = 92
          end
          object SpeedButton661: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 266
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton661Click
            ExplicitLeft = 8
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton662: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 266
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton662Click
            ExplicitLeft = 115
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton663: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 266
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton663Click
            ExplicitLeft = 232
            ExplicitTop = 300
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton664: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 266
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton664Click
            ExplicitLeft = 338
            ExplicitTop = 300
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton665: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 394
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton665Click
            ExplicitLeft = 8
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton666: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 394
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton666Click
            ExplicitLeft = 115
            ExplicitTop = 441
            ExplicitWidth = 92
          end
          object SpeedButton667: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 394
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton667Click
            ExplicitLeft = 223
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton668: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 394
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton668Click
            ExplicitLeft = 338
            ExplicitTop = 436
            ExplicitWidth = 92
          end
          object SpeedButton669: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 459
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton669Click
            ExplicitLeft = 2
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton670: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 459
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton670Click
            ExplicitLeft = 106
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton671: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 459
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton671Click
            ExplicitLeft = 223
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton672: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 459
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton672Click
            ExplicitLeft = 330
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton673: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 524
            Width = 116
            Height = 55
            Align = alClient
            OnClick = SpeedButton673Click
            ExplicitLeft = 2
            ExplicitTop = 583
            ExplicitWidth = 92
          end
          object SpeedButton674: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 524
            Width = 119
            Height = 55
            Align = alClient
            OnClick = SpeedButton674Click
            ExplicitLeft = 115
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton675: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 524
            Width = 115
            Height = 55
            Align = alClient
            OnClick = SpeedButton675Click
            ExplicitLeft = 223
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton676: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 524
            Width = 117
            Height = 55
            Align = alClient
            OnClick = SpeedButton676Click
            ExplicitLeft = 338
            ExplicitTop = 579
            ExplicitWidth = 92
          end
          object SpeedButton677: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 585
            Width = 116
            Height = 57
            Align = alClient
            OnClick = SpeedButton677Click
            ExplicitLeft = 2
            ExplicitTop = 647
            ExplicitWidth = 92
          end
          object SpeedButton678: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 585
            Width = 119
            Height = 57
            Align = alClient
            OnClick = SpeedButton678Click
            ExplicitLeft = 106
            ExplicitTop = 647
            ExplicitWidth = 92
          end
          object SpeedButton679: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 585
            Width = 117
            Height = 57
            Align = alClient
            OnClick = SpeedButton679Click
            ExplicitLeft = 330
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton680: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 585
            Width = 115
            Height = 57
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton680Click
            ExplicitLeft = 223
            ExplicitTop = 647
            ExplicitWidth = 92
          end
        end
      end
      object TabSheet18: TTabSheet
        Caption = 'TabSheet18'
        ImageIndex = 17
        object GridPanel21: TGridPanel
          Left = 0
          Top = 0
          Width = 493
          Height = 646
          Align = alClient
          ColumnCollection = <
            item
              Value = 24.779119604786030000
            end
            item
              Value = 25.543272797287100000
            end
            item
              Value = 24.685555526025840000
            end
            item
              Value = 24.992052071901020000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = SpeedButton681
              Row = 5
            end
            item
              Column = 1
              Control = SpeedButton682
              Row = 5
            end
            item
              Column = 2
              Control = SpeedButton683
              Row = 5
            end
            item
              Column = 3
              Control = SpeedButton684
              Row = 5
            end
            item
              Column = 0
              Control = SpeedButton685
              Row = 0
            end
            item
              Column = 1
              Control = SpeedButton686
              Row = 0
            end
            item
              Column = 2
              Control = SpeedButton687
              Row = 0
            end
            item
              Column = 3
              Control = SpeedButton688
              Row = 0
            end
            item
              Column = 0
              Control = SpeedButton689
              Row = 1
            end
            item
              Column = 1
              Control = SpeedButton690
              Row = 1
            end
            item
              Column = 2
              Control = SpeedButton691
              Row = 1
            end
            item
              Column = 3
              Control = SpeedButton692
              Row = 1
            end
            item
              Column = 0
              Control = SpeedButton693
              Row = 2
            end
            item
              Column = 1
              Control = SpeedButton694
              Row = 2
            end
            item
              Column = 2
              Control = SpeedButton695
              Row = 2
            end
            item
              Column = 3
              Control = SpeedButton696
              Row = 2
            end
            item
              Column = 0
              Control = SpeedButton697
              Row = 3
            end
            item
              Column = 1
              Control = SpeedButton698
              Row = 3
            end
            item
              Column = 2
              Control = SpeedButton699
              Row = 3
            end
            item
              Column = 3
              Control = SpeedButton700
              Row = 3
            end
            item
              Column = 0
              Control = SpeedButton701
              Row = 4
            end
            item
              Column = 1
              Control = SpeedButton702
              Row = 4
            end
            item
              Column = 2
              Control = SpeedButton703
              Row = 4
            end
            item
              Column = 3
              Control = SpeedButton704
              Row = 4
            end
            item
              Column = 0
              Control = SpeedButton705
              Row = 6
            end
            item
              Column = 1
              Control = SpeedButton706
              Row = 6
            end
            item
              Column = 2
              Control = SpeedButton707
              Row = 6
            end
            item
              Column = 3
              Control = SpeedButton708
              Row = 6
            end
            item
              Column = 0
              Control = SpeedButton709
              Row = 7
            end
            item
              Column = 1
              Control = SpeedButton710
              Row = 7
            end
            item
              Column = 2
              Control = SpeedButton711
              Row = 7
            end
            item
              Column = 3
              Control = SpeedButton712
              Row = 7
            end
            item
              Column = 0
              Control = SpeedButton713
              Row = 8
            end
            item
              Column = 1
              Control = SpeedButton714
              Row = 8
            end
            item
              Column = 2
              Control = SpeedButton715
              Row = 8
            end
            item
              Column = 3
              Control = SpeedButton716
              Row = 8
            end
            item
              Column = 0
              Control = SpeedButton717
              Row = 9
            end
            item
              Column = 1
              Control = SpeedButton718
              Row = 9
            end
            item
              Column = 3
              Control = SpeedButton719
              Row = 9
            end
            item
              Column = 2
              Control = SpeedButton720
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
          object SpeedButton681: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 332
            Width = 116
            Height = 56
            Align = alClient
            OnClick = SpeedButton681Click
            ExplicitLeft = 2
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton682: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 332
            Width = 119
            Height = 56
            Align = alClient
            OnClick = SpeedButton682Click
            ExplicitLeft = 106
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton683: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 332
            Width = 115
            Height = 56
            Align = alClient
            OnClick = SpeedButton683Click
            ExplicitLeft = 223
            ExplicitTop = 367
            ExplicitWidth = 92
          end
          object SpeedButton684: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 332
            Width = 117
            Height = 56
            Align = alClient
            OnClick = SpeedButton684Click
            ExplicitLeft = 338
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton685: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton685Click
            ExplicitLeft = 15
            ExplicitTop = 3
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton686: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 4
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton686Click
            ExplicitLeft = 108
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton687: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 4
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton687Click
            ExplicitLeft = 223
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton688: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 4
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton688Click
            ExplicitLeft = 338
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton689: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 70
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton689Click
            ExplicitLeft = 8
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton690: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 70
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton690Click
            ExplicitLeft = 115
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton691: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 70
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton691Click
            ExplicitLeft = 232
            ExplicitTop = 83
            ExplicitWidth = 92
          end
          object SpeedButton692: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 70
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton692Click
            ExplicitLeft = 330
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton693: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 135
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton693Click
            ExplicitLeft = 8
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton694: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 135
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton694Click
            ExplicitLeft = 106
            ExplicitTop = 156
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton695: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 135
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton695Click
            ExplicitLeft = 223
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton696: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 135
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton696Click
            ExplicitLeft = 330
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton697: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 201
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton697Click
            ExplicitLeft = 8
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton698: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 201
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton698Click
            ExplicitLeft = 115
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton699: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 201
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton699Click
            ExplicitLeft = 232
            ExplicitTop = 229
            ExplicitWidth = 92
          end
          object SpeedButton700: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 201
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton700Click
            ExplicitLeft = 338
            ExplicitTop = 221
            ExplicitWidth = 92
          end
          object SpeedButton701: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 266
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton701Click
            ExplicitLeft = 8
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton702: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 266
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton702Click
            ExplicitLeft = 115
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton703: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 266
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton703Click
            ExplicitLeft = 232
            ExplicitTop = 300
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton704: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 266
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton704Click
            ExplicitLeft = 338
            ExplicitTop = 300
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton705: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 394
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton705Click
            ExplicitLeft = 8
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton706: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 394
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton706Click
            ExplicitLeft = 115
            ExplicitTop = 441
            ExplicitWidth = 92
          end
          object SpeedButton707: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 394
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton707Click
            ExplicitLeft = 223
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton708: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 394
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton708Click
            ExplicitLeft = 338
            ExplicitTop = 436
            ExplicitWidth = 92
          end
          object SpeedButton709: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 459
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton709Click
            ExplicitLeft = 2
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton710: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 459
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton710Click
            ExplicitLeft = 106
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton711: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 459
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton711Click
            ExplicitLeft = 223
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton712: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 459
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton712Click
            ExplicitLeft = 330
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton713: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 524
            Width = 116
            Height = 55
            Align = alClient
            OnClick = SpeedButton713Click
            ExplicitLeft = 2
            ExplicitTop = 583
            ExplicitWidth = 92
          end
          object SpeedButton714: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 524
            Width = 119
            Height = 55
            Align = alClient
            OnClick = SpeedButton714Click
            ExplicitLeft = 115
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton715: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 524
            Width = 115
            Height = 55
            Align = alClient
            OnClick = SpeedButton715Click
            ExplicitLeft = 223
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton716: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 524
            Width = 117
            Height = 55
            Align = alClient
            OnClick = SpeedButton716Click
            ExplicitLeft = 338
            ExplicitTop = 579
            ExplicitWidth = 92
          end
          object SpeedButton717: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 585
            Width = 116
            Height = 57
            Align = alClient
            OnClick = SpeedButton717Click
            ExplicitLeft = 2
            ExplicitTop = 647
            ExplicitWidth = 92
          end
          object SpeedButton718: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 585
            Width = 119
            Height = 57
            Align = alClient
            OnClick = SpeedButton718Click
            ExplicitLeft = 106
            ExplicitTop = 647
            ExplicitWidth = 92
          end
          object SpeedButton719: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 585
            Width = 117
            Height = 57
            Align = alClient
            OnClick = SpeedButton719Click
            ExplicitLeft = 330
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton720: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 585
            Width = 115
            Height = 57
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton720Click
            ExplicitLeft = 223
            ExplicitTop = 647
            ExplicitWidth = 92
          end
        end
      end
      object TabSheet19: TTabSheet
        Caption = 'TabSheet19'
        ImageIndex = 18
        object GridPanel22: TGridPanel
          Left = 0
          Top = 0
          Width = 493
          Height = 646
          Align = alClient
          ColumnCollection = <
            item
              Value = 24.779119604786030000
            end
            item
              Value = 25.543272797287100000
            end
            item
              Value = 24.685555526025840000
            end
            item
              Value = 24.992052071901020000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = SpeedButton721
              Row = 5
            end
            item
              Column = 1
              Control = SpeedButton722
              Row = 5
            end
            item
              Column = 2
              Control = SpeedButton723
              Row = 5
            end
            item
              Column = 3
              Control = SpeedButton724
              Row = 5
            end
            item
              Column = 0
              Control = SpeedButton725
              Row = 0
            end
            item
              Column = 1
              Control = SpeedButton726
              Row = 0
            end
            item
              Column = 2
              Control = SpeedButton727
              Row = 0
            end
            item
              Column = 3
              Control = SpeedButton728
              Row = 0
            end
            item
              Column = 0
              Control = SpeedButton729
              Row = 1
            end
            item
              Column = 1
              Control = SpeedButton730
              Row = 1
            end
            item
              Column = 2
              Control = SpeedButton731
              Row = 1
            end
            item
              Column = 3
              Control = SpeedButton732
              Row = 1
            end
            item
              Column = 0
              Control = SpeedButton733
              Row = 2
            end
            item
              Column = 1
              Control = SpeedButton734
              Row = 2
            end
            item
              Column = 2
              Control = SpeedButton735
              Row = 2
            end
            item
              Column = 3
              Control = SpeedButton736
              Row = 2
            end
            item
              Column = 0
              Control = SpeedButton737
              Row = 3
            end
            item
              Column = 1
              Control = SpeedButton738
              Row = 3
            end
            item
              Column = 2
              Control = SpeedButton739
              Row = 3
            end
            item
              Column = 3
              Control = SpeedButton740
              Row = 3
            end
            item
              Column = 0
              Control = SpeedButton741
              Row = 4
            end
            item
              Column = 1
              Control = SpeedButton742
              Row = 4
            end
            item
              Column = 2
              Control = SpeedButton743
              Row = 4
            end
            item
              Column = 3
              Control = SpeedButton744
              Row = 4
            end
            item
              Column = 0
              Control = SpeedButton745
              Row = 6
            end
            item
              Column = 1
              Control = SpeedButton746
              Row = 6
            end
            item
              Column = 2
              Control = SpeedButton747
              Row = 6
            end
            item
              Column = 3
              Control = SpeedButton748
              Row = 6
            end
            item
              Column = 0
              Control = SpeedButton749
              Row = 7
            end
            item
              Column = 1
              Control = SpeedButton750
              Row = 7
            end
            item
              Column = 2
              Control = SpeedButton751
              Row = 7
            end
            item
              Column = 3
              Control = SpeedButton752
              Row = 7
            end
            item
              Column = 0
              Control = SpeedButton753
              Row = 8
            end
            item
              Column = 1
              Control = SpeedButton754
              Row = 8
            end
            item
              Column = 2
              Control = SpeedButton755
              Row = 8
            end
            item
              Column = 3
              Control = SpeedButton756
              Row = 8
            end
            item
              Column = 0
              Control = SpeedButton757
              Row = 9
            end
            item
              Column = 1
              Control = SpeedButton758
              Row = 9
            end
            item
              Column = 3
              Control = SpeedButton759
              Row = 9
            end
            item
              Column = 2
              Control = SpeedButton760
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
          object SpeedButton721: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 332
            Width = 116
            Height = 56
            Align = alClient
            OnClick = SpeedButton721Click
            ExplicitLeft = 2
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton722: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 332
            Width = 119
            Height = 56
            Align = alClient
            OnClick = SpeedButton722Click
            ExplicitLeft = 106
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton723: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 332
            Width = 115
            Height = 56
            Align = alClient
            OnClick = SpeedButton723Click
            ExplicitLeft = 223
            ExplicitTop = 367
            ExplicitWidth = 92
          end
          object SpeedButton724: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 332
            Width = 117
            Height = 56
            Align = alClient
            OnClick = SpeedButton724Click
            ExplicitLeft = 338
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton725: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton725Click
            ExplicitLeft = 15
            ExplicitTop = 3
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton726: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 4
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton726Click
            ExplicitLeft = 108
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton727: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 4
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton727Click
            ExplicitLeft = 223
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton728: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 4
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton728Click
            ExplicitLeft = 338
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton729: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 70
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton729Click
            ExplicitLeft = 8
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton730: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 70
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton730Click
            ExplicitLeft = 115
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton731: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 70
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton731Click
            ExplicitLeft = 232
            ExplicitTop = 83
            ExplicitWidth = 92
          end
          object SpeedButton732: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 70
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton732Click
            ExplicitLeft = 330
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton733: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 135
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton733Click
            ExplicitLeft = 8
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton734: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 135
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton734Click
            ExplicitLeft = 106
            ExplicitTop = 156
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton735: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 135
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton735Click
            ExplicitLeft = 223
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton736: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 135
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton736Click
            ExplicitLeft = 330
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton737: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 201
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton737Click
            ExplicitLeft = 8
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton738: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 201
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton738Click
            ExplicitLeft = 115
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton739: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 201
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton739Click
            ExplicitLeft = 232
            ExplicitTop = 229
            ExplicitWidth = 92
          end
          object SpeedButton740: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 201
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton740Click
            ExplicitLeft = 338
            ExplicitTop = 221
            ExplicitWidth = 92
          end
          object SpeedButton741: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 266
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton741Click
            ExplicitLeft = 8
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton742: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 266
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton742Click
            ExplicitLeft = 115
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton743: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 266
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton743Click
            ExplicitLeft = 232
            ExplicitTop = 300
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton744: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 266
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton744Click
            ExplicitLeft = 338
            ExplicitTop = 300
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton745: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 394
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton745Click
            ExplicitLeft = 8
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton746: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 394
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton746Click
            ExplicitLeft = 115
            ExplicitTop = 441
            ExplicitWidth = 92
          end
          object SpeedButton747: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 394
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton747Click
            ExplicitLeft = 223
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton748: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 394
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton748Click
            ExplicitLeft = 338
            ExplicitTop = 436
            ExplicitWidth = 92
          end
          object SpeedButton749: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 459
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton749Click
            ExplicitLeft = 2
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton750: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 459
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton750Click
            ExplicitLeft = 106
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton751: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 459
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton751Click
            ExplicitLeft = 223
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton752: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 459
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton752Click
            ExplicitLeft = 330
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton753: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 524
            Width = 116
            Height = 55
            Align = alClient
            OnClick = SpeedButton753Click
            ExplicitLeft = 2
            ExplicitTop = 583
            ExplicitWidth = 92
          end
          object SpeedButton754: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 524
            Width = 119
            Height = 55
            Align = alClient
            OnClick = SpeedButton754Click
            ExplicitLeft = 115
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton755: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 524
            Width = 115
            Height = 55
            Align = alClient
            OnClick = SpeedButton755Click
            ExplicitLeft = 223
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton756: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 524
            Width = 117
            Height = 55
            Align = alClient
            OnClick = SpeedButton756Click
            ExplicitLeft = 338
            ExplicitTop = 579
            ExplicitWidth = 92
          end
          object SpeedButton757: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 585
            Width = 116
            Height = 57
            Align = alClient
            OnClick = SpeedButton757Click
            ExplicitLeft = 2
            ExplicitTop = 647
            ExplicitWidth = 92
          end
          object SpeedButton758: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 585
            Width = 119
            Height = 57
            Align = alClient
            OnClick = SpeedButton758Click
            ExplicitLeft = 106
            ExplicitTop = 647
            ExplicitWidth = 92
          end
          object SpeedButton759: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 585
            Width = 117
            Height = 57
            Align = alClient
            OnClick = SpeedButton759Click
            ExplicitLeft = 330
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton760: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 585
            Width = 115
            Height = 57
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton760Click
            ExplicitLeft = 223
            ExplicitTop = 647
            ExplicitWidth = 92
          end
        end
      end
      object TabSheet20: TTabSheet
        Caption = 'TabSheet20'
        ImageIndex = 19
        object GridPanel23: TGridPanel
          Left = 0
          Top = 0
          Width = 493
          Height = 646
          Align = alClient
          ColumnCollection = <
            item
              Value = 24.779119604786030000
            end
            item
              Value = 25.543272797287100000
            end
            item
              Value = 24.685555526025840000
            end
            item
              Value = 24.992052071901020000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = SpeedButton761
              Row = 5
            end
            item
              Column = 1
              Control = SpeedButton762
              Row = 5
            end
            item
              Column = 2
              Control = SpeedButton763
              Row = 5
            end
            item
              Column = 3
              Control = SpeedButton764
              Row = 5
            end
            item
              Column = 0
              Control = SpeedButton765
              Row = 0
            end
            item
              Column = 1
              Control = SpeedButton766
              Row = 0
            end
            item
              Column = 2
              Control = SpeedButton767
              Row = 0
            end
            item
              Column = 3
              Control = SpeedButton768
              Row = 0
            end
            item
              Column = 0
              Control = SpeedButton769
              Row = 1
            end
            item
              Column = 1
              Control = SpeedButton770
              Row = 1
            end
            item
              Column = 2
              Control = SpeedButton771
              Row = 1
            end
            item
              Column = 3
              Control = SpeedButton772
              Row = 1
            end
            item
              Column = 0
              Control = SpeedButton773
              Row = 2
            end
            item
              Column = 1
              Control = SpeedButton774
              Row = 2
            end
            item
              Column = 2
              Control = SpeedButton775
              Row = 2
            end
            item
              Column = 3
              Control = SpeedButton776
              Row = 2
            end
            item
              Column = 0
              Control = SpeedButton777
              Row = 3
            end
            item
              Column = 1
              Control = SpeedButton778
              Row = 3
            end
            item
              Column = 2
              Control = SpeedButton779
              Row = 3
            end
            item
              Column = 3
              Control = SpeedButton780
              Row = 3
            end
            item
              Column = 0
              Control = SpeedButton781
              Row = 4
            end
            item
              Column = 1
              Control = SpeedButton782
              Row = 4
            end
            item
              Column = 2
              Control = SpeedButton783
              Row = 4
            end
            item
              Column = 3
              Control = SpeedButton784
              Row = 4
            end
            item
              Column = 0
              Control = SpeedButton785
              Row = 6
            end
            item
              Column = 1
              Control = SpeedButton786
              Row = 6
            end
            item
              Column = 2
              Control = SpeedButton787
              Row = 6
            end
            item
              Column = 3
              Control = SpeedButton788
              Row = 6
            end
            item
              Column = 0
              Control = SpeedButton789
              Row = 7
            end
            item
              Column = 1
              Control = SpeedButton790
              Row = 7
            end
            item
              Column = 2
              Control = SpeedButton791
              Row = 7
            end
            item
              Column = 3
              Control = SpeedButton792
              Row = 7
            end
            item
              Column = 0
              Control = SpeedButton793
              Row = 8
            end
            item
              Column = 1
              Control = SpeedButton794
              Row = 8
            end
            item
              Column = 2
              Control = SpeedButton795
              Row = 8
            end
            item
              Column = 3
              Control = SpeedButton796
              Row = 8
            end
            item
              Column = 0
              Control = SpeedButton797
              Row = 9
            end
            item
              Column = 1
              Control = SpeedButton798
              Row = 9
            end
            item
              Column = 3
              Control = SpeedButton799
              Row = 9
            end
            item
              Column = 2
              Control = SpeedButton800
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
          object SpeedButton761: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 332
            Width = 116
            Height = 56
            Align = alClient
            OnClick = SpeedButton761Click
            ExplicitLeft = 2
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton762: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 332
            Width = 119
            Height = 56
            Align = alClient
            OnClick = SpeedButton762Click
            ExplicitLeft = 106
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton763: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 332
            Width = 115
            Height = 56
            Align = alClient
            OnClick = SpeedButton763Click
            ExplicitLeft = 223
            ExplicitTop = 367
            ExplicitWidth = 92
          end
          object SpeedButton764: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 332
            Width = 117
            Height = 56
            Align = alClient
            OnClick = SpeedButton764Click
            ExplicitLeft = 338
            ExplicitTop = 371
            ExplicitWidth = 92
          end
          object SpeedButton765: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton765Click
            ExplicitLeft = 15
            ExplicitTop = 3
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton766: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 4
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton766Click
            ExplicitLeft = 108
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton767: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 4
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton767Click
            ExplicitLeft = 223
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton768: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 4
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton768Click
            ExplicitLeft = 338
            ExplicitTop = 10
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton769: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 70
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton769Click
            ExplicitLeft = 8
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton770: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 70
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton770Click
            ExplicitLeft = 115
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton771: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 70
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton771Click
            ExplicitLeft = 232
            ExplicitTop = 83
            ExplicitWidth = 92
          end
          object SpeedButton772: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 70
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton772Click
            ExplicitLeft = 330
            ExplicitTop = 74
            ExplicitWidth = 92
          end
          object SpeedButton773: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 135
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton773Click
            ExplicitLeft = 8
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton774: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 135
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton774Click
            ExplicitLeft = 106
            ExplicitTop = 156
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton775: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 135
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton775Click
            ExplicitLeft = 223
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton776: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 135
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton776Click
            ExplicitLeft = 330
            ExplicitTop = 139
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton777: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 201
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton777Click
            ExplicitLeft = 8
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton778: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 201
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton778Click
            ExplicitLeft = 115
            ExplicitTop = 204
            ExplicitWidth = 92
          end
          object SpeedButton779: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 201
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton779Click
            ExplicitLeft = 232
            ExplicitTop = 229
            ExplicitWidth = 92
          end
          object SpeedButton780: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 201
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton780Click
            ExplicitLeft = 338
            ExplicitTop = 221
            ExplicitWidth = 92
          end
          object SpeedButton781: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 266
            Width = 116
            Height = 60
            Align = alClient
            OnClick = SpeedButton781Click
            ExplicitLeft = 8
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton782: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 266
            Width = 119
            Height = 60
            Align = alClient
            OnClick = SpeedButton782Click
            ExplicitLeft = 115
            ExplicitTop = 269
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton783: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 266
            Width = 115
            Height = 60
            Align = alClient
            OnClick = SpeedButton783Click
            ExplicitLeft = 232
            ExplicitTop = 300
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton784: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 266
            Width = 117
            Height = 60
            Align = alClient
            OnClick = SpeedButton784Click
            ExplicitLeft = 338
            ExplicitTop = 300
            ExplicitWidth = 92
            ExplicitHeight = 59
          end
          object SpeedButton785: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 394
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton785Click
            ExplicitLeft = 8
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton786: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 394
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton786Click
            ExplicitLeft = 115
            ExplicitTop = 441
            ExplicitWidth = 92
          end
          object SpeedButton787: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 394
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton787Click
            ExplicitLeft = 223
            ExplicitTop = 395
            ExplicitWidth = 92
          end
          object SpeedButton788: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 394
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton788Click
            ExplicitLeft = 338
            ExplicitTop = 436
            ExplicitWidth = 92
          end
          object SpeedButton789: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 459
            Width = 116
            Height = 59
            Align = alClient
            OnClick = SpeedButton789Click
            ExplicitLeft = 2
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton790: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 459
            Width = 119
            Height = 59
            Align = alClient
            OnClick = SpeedButton790Click
            ExplicitLeft = 106
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton791: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 459
            Width = 115
            Height = 59
            Align = alClient
            OnClick = SpeedButton791Click
            ExplicitLeft = 223
            ExplicitTop = 512
            ExplicitWidth = 92
          end
          object SpeedButton792: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 459
            Width = 117
            Height = 59
            Align = alClient
            OnClick = SpeedButton792Click
            ExplicitLeft = 330
            ExplicitTop = 460
            ExplicitWidth = 92
          end
          object SpeedButton793: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 524
            Width = 116
            Height = 55
            Align = alClient
            OnClick = SpeedButton793Click
            ExplicitLeft = 2
            ExplicitTop = 583
            ExplicitWidth = 92
          end
          object SpeedButton794: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 524
            Width = 119
            Height = 55
            Align = alClient
            OnClick = SpeedButton794Click
            ExplicitLeft = 115
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton795: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 524
            Width = 115
            Height = 55
            Align = alClient
            OnClick = SpeedButton795Click
            ExplicitLeft = 223
            ExplicitTop = 523
            ExplicitWidth = 92
          end
          object SpeedButton796: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 524
            Width = 117
            Height = 55
            Align = alClient
            OnClick = SpeedButton796Click
            ExplicitLeft = 338
            ExplicitTop = 579
            ExplicitWidth = 92
          end
          object SpeedButton797: TSpeedButton
            AlignWithMargins = True
            Left = 4
            Top = 585
            Width = 116
            Height = 57
            Align = alClient
            OnClick = SpeedButton797Click
            ExplicitLeft = 2
            ExplicitTop = 647
            ExplicitWidth = 92
          end
          object SpeedButton798: TSpeedButton
            AlignWithMargins = True
            Left = 126
            Top = 585
            Width = 119
            Height = 57
            Align = alClient
            OnClick = SpeedButton798Click
            ExplicitLeft = 106
            ExplicitTop = 647
            ExplicitWidth = 92
          end
          object SpeedButton799: TSpeedButton
            AlignWithMargins = True
            Left = 372
            Top = 585
            Width = 117
            Height = 57
            Align = alClient
            OnClick = SpeedButton799Click
            ExplicitLeft = 330
            ExplicitTop = 586
            ExplicitWidth = 92
          end
          object SpeedButton800: TSpeedButton
            AlignWithMargins = True
            Left = 251
            Top = 585
            Width = 115
            Height = 57
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton800Click
            ExplicitLeft = 223
            ExplicitTop = 647
            ExplicitWidth = 92
          end
        end
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 702
      Height = 36
      Margins.Left = 0
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object EditSearchProd: TEdit
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 320
        Height = 30
        Margins.Right = 0
        Align = alLeft
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TextHint = 'PRODUCT SEARCH'
        OnExit = EditSearchProdExit
        OnKeyDown = EditSearchProdKeyDown
        OnKeyPress = EditSearchProdKeyPress
        ExplicitHeight = 32
      end
      object Button95: TButton
        AlignWithMargins = True
        Left = 326
        Top = 2
        Width = 40
        Height = 32
        Margins.Top = 2
        Margins.Bottom = 2
        Align = alLeft
        ImageIndex = 12
        Images = FrmMain.ImageList2
        TabOrder = 1
        TabStop = False
        OnClick = Button95Click
      end
      object EditProd: TEdit
        Left = 680
        Top = 9
        Width = 16
        Height = 21
        TabOrder = 2
        Visible = False
      end
      object rgSearchBy: TRadioGroup
        Left = 369
        Top = 0
        Width = 326
        Height = 36
        Align = alLeft
        Caption = 'Search By:'
        Columns = 2
        Items.Strings = (
          'Barcode'
          'Description')
        TabOrder = 3
        TabStop = True
        Visible = False
      end
    end
  end
  object popupEditButtons: TPopupMenu
    Left = 893
    Top = 384
    object EditButtons1: TMenuItem
      Caption = 'Edit Buttons '
      OnClick = EditButtons1Click
    end
    object SaveButtons1: TMenuItem
      Caption = 'Save Buttons'
      OnClick = SaveButtons1Click
    end
  end
  object ZylSerialPort1: TZylSerialPort
    CustomPortName = 'vcom1'
    NewLine = #13#10
    PacketSize = 0
    Left = 871
    Top = 320
  end
  object BalloonHint1: TBalloonHint
    Delay = 200
    Left = 1150
    Top = 112
  end
end
