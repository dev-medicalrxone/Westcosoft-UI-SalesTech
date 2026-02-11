object FrmInventory: TFrmInventory
  Left = 132
  Top = 83
  Caption = 'Inventory...'
  ClientHeight = 597
  ClientWidth = 1022
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
  object Label1: TLabel
    Left = 112
    Top = 408
    Width = 79
    Height = 13
    Caption = 'DESCSUPLIDOR'
  end
  object PnlSearchProd: TPanel
    Left = 0
    Top = 29
    Width = 1022
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object EdtSearch: TEdit
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 350
      Height = 25
      Align = alLeft
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'Search by Barcode or Product Name'
      OnExit = EdtSearchExit
      OnKeyPress = EdtSearchKeyPress
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 359
      Top = 3
      Width = 57
      Height = 25
      Align = alLeft
      Caption = 'Search'
      TabOrder = 1
    end
    object Button2: TButton
      Left = 888
      Top = 0
      Width = 75
      Height = 25
      Caption = 'Button2'
      TabOrder = 2
      Visible = False
      OnClick = Button2Click
    end
    object cbFilterByDept: TCheckBox
      Left = 432
      Top = 8
      Width = 161
      Height = 17
      Caption = 'Filter by department'
      TabOrder = 3
      OnClick = cbFilterByDeptClick
    end
  end
  object Panel2: TPanel
    Left = 978
    Top = 60
    Width = 44
    Height = 537
    Align = alRight
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 6
      Top = 10
      Width = 17
      Height = 22
      Caption = 'A'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 6
      Top = 31
      Width = 17
      Height = 22
      Caption = 'C'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton3: TSpeedButton
      Left = 6
      Top = 52
      Width = 17
      Height = 22
      Caption = 'E'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton4: TSpeedButton
      Left = 6
      Top = 73
      Width = 17
      Height = 22
      Caption = 'G'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton6: TSpeedButton
      Left = 6
      Top = 94
      Width = 17
      Height = 22
      Caption = 'I'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton7: TSpeedButton
      Left = 6
      Top = 115
      Width = 17
      Height = 22
      Caption = 'K'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton8: TSpeedButton
      Left = 6
      Top = 136
      Width = 17
      Height = 22
      Caption = 'M'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton9: TSpeedButton
      Left = 6
      Top = 157
      Width = 17
      Height = 22
      Caption = 'O'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton10: TSpeedButton
      Left = 6
      Top = 178
      Width = 17
      Height = 22
      Caption = 'Q'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton11: TSpeedButton
      Left = 6
      Top = 199
      Width = 17
      Height = 22
      Caption = 'S'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton12: TSpeedButton
      Left = 6
      Top = 220
      Width = 17
      Height = 22
      Caption = 'U'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton13: TSpeedButton
      Left = 6
      Top = 241
      Width = 17
      Height = 22
      Caption = 'W'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton15: TSpeedButton
      Left = 6
      Top = 262
      Width = 17
      Height = 22
      Caption = 'Y'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton14: TSpeedButton
      Left = 22
      Top = 18
      Width = 17
      Height = 22
      Caption = 'B'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton16: TSpeedButton
      Left = 22
      Top = 39
      Width = 17
      Height = 22
      Caption = 'D'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton17: TSpeedButton
      Left = 22
      Top = 60
      Width = 17
      Height = 22
      Caption = 'F'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton18: TSpeedButton
      Left = 22
      Top = 81
      Width = 17
      Height = 22
      Caption = 'H'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton19: TSpeedButton
      Left = 22
      Top = 102
      Width = 17
      Height = 22
      Caption = 'J'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton20: TSpeedButton
      Left = 22
      Top = 123
      Width = 17
      Height = 22
      Caption = 'L'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton21: TSpeedButton
      Left = 22
      Top = 144
      Width = 17
      Height = 22
      Caption = 'N'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton22: TSpeedButton
      Left = 22
      Top = 165
      Width = 17
      Height = 22
      Caption = 'P'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton23: TSpeedButton
      Left = 22
      Top = 186
      Width = 17
      Height = 22
      Caption = 'R'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton24: TSpeedButton
      Left = 22
      Top = 207
      Width = 17
      Height = 22
      Caption = 'T'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton25: TSpeedButton
      Left = 22
      Top = 228
      Width = 17
      Height = 22
      Caption = 'V'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton26: TSpeedButton
      Left = 22
      Top = 249
      Width = 17
      Height = 22
      Caption = 'X'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton27: TSpeedButton
      Left = 22
      Top = 270
      Width = 17
      Height = 22
      Caption = 'Z'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton5: TSpeedButton
      Left = 6
      Top = 283
      Width = 17
      Height = 22
      Caption = '0'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton28: TSpeedButton
      Left = 6
      Top = 304
      Width = 17
      Height = 22
      Caption = '2'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton29: TSpeedButton
      Left = 6
      Top = 325
      Width = 17
      Height = 22
      Caption = '4'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton30: TSpeedButton
      Left = 6
      Top = 346
      Width = 17
      Height = 22
      Caption = '6'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton31: TSpeedButton
      Left = 6
      Top = 367
      Width = 17
      Height = 22
      Caption = '8'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton32: TSpeedButton
      Left = 22
      Top = 375
      Width = 17
      Height = 22
      Caption = '9'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton33: TSpeedButton
      Left = 22
      Top = 354
      Width = 17
      Height = 22
      Caption = '7'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton34: TSpeedButton
      Left = 22
      Top = 333
      Width = 17
      Height = 22
      Caption = '5'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton35: TSpeedButton
      Left = 22
      Top = 312
      Width = 17
      Height = 22
      Caption = '3'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton36: TSpeedButton
      Left = 22
      Top = 291
      Width = 17
      Height = 22
      Caption = '1'
      Flat = True
      OnClick = SpeedButton1Click
    end
  end
  object cxPageControl1: TPageControl
    Left = 0
    Top = 60
    Width = 978
    Height = 537
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Inventario'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 970
        Height = 298
        Align = alClient
        Color = clBtnText
        DataSource = DMMidas.DSInventarioPiso
        DrawingStyle = gdsClassic
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGOBARRA'
            Width = 159
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRIPCION'
            Width = 353
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COSTO'
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECIO'
            Width = 104
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESPECIAL'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCDEPT'
            Title.Caption = 'DEPT.'
            Width = 230
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TAX_MUN_DEFINED'
            Title.Caption = 'LOCAL TAX'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StateTaxDefined'
            Title.Caption = 'STATE TAX'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOOD_ITEM_DEFINED'
            Title.Caption = 'FOOD ITEM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KITCHEN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MOVIMIENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMESPECIAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TERMINAESPECIAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTYINVENTARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUPLIDOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMAXINVENTARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CMININVENTARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FECHA_EXPIRACION'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TAMANO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RBP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PORCIENTODESCUENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ULTIMOCAMBIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ULTIMAVENTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NDC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NONEBC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMEROSUPLIDOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECIOREAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EDITAR_PRECIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODUCTNO'
            Visible = True
          end>
      end
      object TouchKeyboard1: TTouchKeyboard
        AlignWithMargins = True
        Left = 50
        Top = 301
        Width = 870
        Height = 205
        Margins.Left = 50
        Margins.Right = 50
        Align = alBottom
        GradientEnd = clSilver
        GradientStart = clGray
        Layout = 'Standard'
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Purchase History'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 970
        Height = 51
        Align = alTop
        TabOrder = 0
        object Label77: TLabel
          Left = 21
          Top = 35
          Width = 30
          Height = 13
          Caption = 'Order'
        end
        object Label71: TLabel
          Left = 73
          Top = 35
          Width = 62
          Height = 13
          Caption = 'Qty. Recived'
        end
        object Label72: TLabel
          Left = 155
          Top = 35
          Width = 31
          Height = 13
          Caption = 'Precio'
        end
        object Label73: TLabel
          Left = 215
          Top = 35
          Width = 30
          Height = 13
          Caption = 'Costo'
        end
        object Label74: TLabel
          Left = 277
          Top = 35
          Width = 23
          Height = 13
          Caption = 'AWP'
        end
        object Label75: TLabel
          Left = 325
          Top = 35
          Width = 30
          Height = 13
          Caption = 'Fecha'
        end
        object Label76: TLabel
          Left = 409
          Top = 35
          Width = 44
          Height = 13
          Caption = 'Suplidor'
        end
        object SpeedButton38: TSpeedButton
          Left = 250
          Top = 7
          Width = 23
          Height = 22
          Glyph.Data = {
            F6030000424DF603000000000000360000002800000010000000140000000100
            180000000000C0030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484000000FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000
            FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF00000000000000000000000000FFFF000000FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF00FFFFFF
            FFFF00FFFF00FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF000000FFFFFF00FFFF000000000000000000000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF
            FFFF00FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            00000000000000000000000000000000FFFFFFFFFF00FFFF000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFFFFFF00FFFFFF
            FFFF00FFFFFFFFFF00FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF000000FFFFFF00FFFFFFFFFF00FFFF000000000000000000000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFF00FFFFFF
            FFFF00FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
            FFFF00FFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFF0000
            00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
            0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          OnClick = DBEdit1Change
        end
        object Label18: TLabel
          Left = 592
          Top = 35
          Width = 21
          Height = 13
          Caption = 'P.O.'
        end
        object DBEdit1: TDBEdit
          Left = 11
          Top = 5
          Width = 233
          Height = 21
          DataField = 'DESCRIPCION'
          DataSource = DMMidas.DSInventarioPiso
          ReadOnly = True
          TabOrder = 0
          OnChange = DBEdit1Change
        end
      end
      object DBCtrlGrid1: TDBCtrlGrid
        Left = 0
        Top = 51
        Width = 970
        Height = 458
        Align = alClient
        DataSource = DMMidas.DSOrderDetailHistory
        PanelHeight = 41
        PanelWidth = 953
        TabOrder = 1
        RowCount = 11
        SelectedColor = clCream
        object DBText8: TDBText
          Left = 91
          Top = 6
          Width = 48
          Height = 17
          Alignment = taRightJustify
          DataField = 'QTYRECEIVED'
          DataSource = DMMidas.DSOrderDetailHistory
        end
        object DBText9: TDBText
          Left = 143
          Top = 6
          Width = 48
          Height = 17
          Alignment = taRightJustify
          DataField = 'PRICE'
          DataSource = DMMidas.DSOrderDetailHistory
        end
        object DBText11: TDBText
          Left = 197
          Top = 6
          Width = 48
          Height = 17
          Alignment = taRightJustify
          DataField = 'COSTORDERED'
          DataSource = DMMidas.DSOrderDetailHistory
        end
        object DBText12: TDBText
          Left = 256
          Top = 6
          Width = 48
          Height = 17
          Alignment = taRightJustify
          DataField = 'AWP'
          DataSource = DMMidas.DSOrderDetailHistory
        end
        object DBText13: TDBText
          Left = 320
          Top = 6
          Width = 63
          Height = 17
          DataField = 'ORDERDATE'
          DataSource = DMMidas.DSOrderDetailHistory
        end
        object DBText14: TDBText
          Left = 408
          Top = 6
          Width = 158
          Height = 17
          DataField = 'SUPLIER_NAME'
          DataSource = DMMidas.DSOrderDetailHistory
        end
        object DBText15: TDBText
          Left = 20
          Top = 6
          Width = 48
          Height = 17
          DataField = 'ORDERID'
          DataSource = DMMidas.DSOrderDetailHistory
        end
        object DBText21: TDBText
          Left = 592
          Top = 6
          Width = 113
          Height = 17
          DataField = 'PO_NO'
          DataSource = DMMidas.DSOrderDetailHistory
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Sales History'
      ImageIndex = 2
      object DBCtrlGrid2: TDBCtrlGrid
        Left = 0
        Top = 51
        Width = 970
        Height = 458
        Align = alClient
        DataSource = DMMidas.DSVerTransacciones
        PanelHeight = 41
        PanelWidth = 953
        TabOrder = 0
        RowCount = 11
        SelectedColor = clCream
        object DBText1: TDBText
          Left = 80
          Top = 6
          Width = 35
          Height = 17
          Alignment = taRightJustify
          DataField = 'QTY'
          DataSource = DMMidas.DSVerTransacciones
        end
        object DBText2: TDBText
          Left = 143
          Top = 6
          Width = 48
          Height = 17
          Alignment = taRightJustify
          DataField = 'PRICE'
          DataSource = DMMidas.DSVerTransacciones
        end
        object DBText4: TDBText
          Left = 216
          Top = 6
          Width = 33
          Height = 17
          Alignment = taRightJustify
          DataField = 'REGISTER'
          DataSource = DMMidas.DSVerTransacciones
        end
        object DBText5: TDBText
          Left = 280
          Top = 6
          Width = 63
          Height = 17
          DataField = 'FECHAVENTA'
          DataSource = DMMidas.DSVerTransacciones
        end
        object DBText6: TDBText
          Left = 368
          Top = 6
          Width = 49
          Height = 17
          DataField = 'EMPLOYNUMBER'
          DataSource = DMMidas.DSVerTransacciones
        end
        object DBText7: TDBText
          Left = 20
          Top = 6
          Width = 48
          Height = 17
          DataField = 'TRANSACTIONNUMBER'
          DataSource = DMMidas.DSVerTransacciones
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 970
        Height = 51
        Align = alTop
        TabOrder = 1
        object Label2: TLabel
          Left = 21
          Top = 35
          Width = 30
          Height = 13
          Caption = 'Order'
        end
        object Label3: TLabel
          Left = 97
          Top = 35
          Width = 23
          Height = 13
          Caption = 'Qty. '
        end
        object Label4: TLabel
          Left = 155
          Top = 35
          Width = 31
          Height = 13
          Caption = 'Precio'
        end
        object Label7: TLabel
          Left = 221
          Top = 35
          Width = 32
          Height = 13
          Caption = '# Caja'
        end
        object Label8: TLabel
          Left = 285
          Top = 35
          Width = 30
          Height = 13
          Caption = 'Fecha'
        end
        object Label9: TLabel
          Left = 361
          Top = 35
          Width = 41
          Height = 13
          Caption = 'Iniciales'
        end
        object SpeedButton37: TSpeedButton
          Left = 247
          Top = 5
          Width = 23
          Height = 22
          Glyph.Data = {
            F6030000424DF603000000000000360000002800000010000000140000000100
            180000000000C0030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484000000FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000
            FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF00000000000000000000000000FFFF000000FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF00FFFFFF
            FFFF00FFFF00FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF000000FFFFFF00FFFF000000000000000000000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF
            FFFF00FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            00000000000000000000000000000000FFFFFFFFFF00FFFF000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFFFFFF00FFFFFF
            FFFF00FFFFFFFFFF00FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF000000FFFFFF00FFFFFFFFFF00FFFF000000000000000000000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFF00FFFFFF
            FFFF00FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
            FFFF00FFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFF0000
            00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
            0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          OnClick = DBEdit2Change
        end
        object DBEdit2: TDBEdit
          Left = 11
          Top = 5
          Width = 233
          Height = 21
          DataField = 'DESCRIPCION'
          DataSource = DMMidas.DSInventarioPiso
          ReadOnly = True
          TabOrder = 0
          OnChange = DBEdit2Change
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Transfer History'
      ImageIndex = 3
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 970
        Height = 51
        Align = alTop
        TabOrder = 0
        object Label6: TLabel
          Left = 21
          Top = 35
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object Label10: TLabel
          Left = 73
          Top = 35
          Width = 62
          Height = 13
          Caption = 'Qty. Recived'
        end
        object Label13: TLabel
          Left = 155
          Top = 35
          Width = 31
          Height = 13
          Caption = 'Precio'
        end
        object Label14: TLabel
          Left = 215
          Top = 35
          Width = 30
          Height = 13
          Caption = 'Costo'
        end
        object Label15: TLabel
          Left = 277
          Top = 35
          Width = 23
          Height = 13
          Caption = 'AWP'
        end
        object Label16: TLabel
          Left = 325
          Top = 35
          Width = 30
          Height = 13
          Caption = 'Fecha'
        end
        object Label17: TLabel
          Left = 409
          Top = 35
          Width = 44
          Height = 13
          Caption = 'Suplidor'
        end
        object SpeedButton39: TSpeedButton
          Left = 247
          Top = 5
          Width = 23
          Height = 22
          Glyph.Data = {
            F6030000424DF603000000000000360000002800000010000000140000000100
            180000000000C0030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484000000FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000
            FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF00000000000000000000000000FFFF000000FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF00FFFFFF
            FFFF00FFFF00FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF000000FFFFFF00FFFF000000000000000000000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF
            FFFF00FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            00000000000000000000000000000000FFFFFFFFFF00FFFF000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFFFFFF00FFFFFF
            FFFF00FFFFFFFFFF00FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF000000FFFFFF00FFFFFFFFFF00FFFF000000000000000000000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFF00FFFFFF
            FFFF00FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
            FFFF00FFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFF0000
            00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
            0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          OnClick = SpeedButton39Click
        end
        object DBEdit3: TDBEdit
          Left = 11
          Top = 5
          Width = 233
          Height = 21
          DataField = 'DESCRIPCION'
          DataSource = DMMidas.DSInventarioPiso
          ReadOnly = True
          TabOrder = 0
          OnChange = DBEdit1Change
        end
      end
      object DBCtrlGrid3: TDBCtrlGrid
        Left = 0
        Top = 51
        Width = 970
        Height = 458
        Align = alClient
        DataSource = DMMidas.DSTransferHistory
        PanelHeight = 41
        PanelWidth = 953
        TabOrder = 1
        RowCount = 11
        SelectedColor = clCream
        object DBText3: TDBText
          Left = 83
          Top = 6
          Width = 48
          Height = 17
          Alignment = taRightJustify
          DataField = 'QTYRECEIVED'
          DataSource = DMMidas.DSTransferHistory
        end
        object DBText10: TDBText
          Left = 143
          Top = 6
          Width = 48
          Height = 17
          Alignment = taRightJustify
          DataField = 'PRICE'
          DataSource = DMMidas.DSTransferHistory
        end
        object DBText16: TDBText
          Left = 198
          Top = 6
          Width = 48
          Height = 17
          Alignment = taRightJustify
          DataField = 'COSTSENT'
          DataSource = DMMidas.DSTransferHistory
        end
        object DBText17: TDBText
          Left = 256
          Top = 6
          Width = 48
          Height = 17
          Alignment = taRightJustify
          DataField = 'AWP'
          DataSource = DMMidas.DSTransferHistory
        end
        object DBText18: TDBText
          Left = 320
          Top = 6
          Width = 63
          Height = 17
          DataField = 'TRANSFERDATE'
          DataSource = DMMidas.DSTransferHistory
        end
        object DBText19: TDBText
          Left = 408
          Top = 6
          Width = 158
          Height = 17
          DataField = 'PARTNER_NAME'
          DataSource = DMMidas.DSTransferHistory
        end
        object DBText20: TDBText
          Left = 20
          Top = 6
          Width = 48
          Height = 17
          DataField = 'TRANSFERID'
          DataSource = DMMidas.DSTransferHistory
        end
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1022
    Height = 29
    ButtonWidth = 27
    Caption = 'ToolBar1'
    Images = FrmMain.ImageListDB
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Hint = 'Append'
      Caption = 'ToolButton1'
      ImageIndex = 0
      OnClick = ToolButton5Click
    end
    object ToolButton16: TToolButton
      Left = 27
      Top = 0
      Hint = 'Edit Inventory'
      Caption = 'ToolButton16'
      ImageIndex = 3
      OnClick = ToolButton16Click
    end
    object TlBtnPost: TToolButton
      Left = 54
      Top = 0
      Caption = 'TlBtnPost'
      ImageIndex = 1
      OnClick = TlBtnPost2Click
    end
    object TlBtnCancel: TToolButton
      Left = 81
      Top = 0
      Caption = 'TlBtnCancel'
      ImageIndex = 5
      OnClick = TlBtnCancel2Click
    end
    object ToolButton5: TToolButton
      Left = 108
      Top = 0
      Caption = 'ToolButton5'
      ImageIndex = 4
      OnClick = ToolButton17Click
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
    object ToolButton9: TToolButton
      Left = 170
      Top = 0
      Caption = 'ToolButton9'
      ImageIndex = 37
      OnClick = ToolButton23Click
    end
    object ToolButton10: TToolButton
      Left = 197
      Top = 0
      Caption = 'ToolButton10'
      ImageIndex = 12
      OnClick = TBSearchProdClick
    end
    object ToolButton11: TToolButton
      Left = 224
      Top = 0
      Caption = 'Load'
      ImageIndex = 38
      OnClick = ToolButton1Click
    end
    object ToolButton14: TToolButton
      Left = 251
      Top = 0
      Hint = 'Print barcodes'
      Caption = 'ToolButton14'
      ImageIndex = 21
      OnClick = ToolButton3Click
    end
    object ToolButton2: TToolButton
      Left = 278
      Top = 0
      Hint = 'Export Inventoy Data'
      Caption = 'ToolButton2'
      ImageIndex = 30
      OnClick = ToolButton2Click
    end
  end
end
