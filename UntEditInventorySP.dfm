object FrmEditInventorySP: TFrmEditInventorySP
  Left = 2
  Top = 2
  Caption = '+'
  ClientHeight = 738
  ClientWidth = 1095
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 13
  object Label47: TLabel
    Left = 381
    Top = 185
    Width = 49
    Height = 13
    Alignment = taRightJustify
    Caption = 'Pep Spray'
    Transparent = True
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1095
    Height = 29
    ButtonWidth = 27
    Caption = 'ToolBar1'
    Images = FrmMain.ImageListDB
    TabOrder = 0
    object tbAppend: TToolButton
      Left = 0
      Top = 0
      Caption = 'tbAppend'
      ImageIndex = 0
      OnClick = tbAppendClick
    end
    object tlBtnPost: TToolButton
      Left = 27
      Top = 0
      Hint = 'Save'
      Caption = 'tlBtnPost'
      ImageIndex = 1
      OnClick = tlBtnPostClick
    end
    object tbEdit: TToolButton
      Left = 54
      Top = 0
      Caption = 'tbEdit'
      ImageIndex = 3
    end
    object ToolButton2: TToolButton
      Left = 81
      Top = 0
      Caption = 'ToolButton2'
      ImageIndex = 4
      OnClick = ToolButton2Click
    end
    object tbCancel: TToolButton
      Left = 108
      Top = 0
      Caption = 'tbCancel'
      ImageIndex = 5
    end
    object ToolButton1: TToolButton
      Left = 135
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 21
      OnClick = ToolButton1Click
    end
  end
  object TouchKeyboard1: TTouchKeyboard
    AlignWithMargins = True
    Left = 10
    Top = 464
    Width = 1075
    Height = 227
    Margins.Left = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alBottom
    GradientEnd = clSilver
    GradientStart = clGray
    Layout = 'Standard'
  end
  object Panel2: TPanel
    Left = 0
    Top = 701
    Width = 1095
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 2
    object Button1: TButton
      AlignWithMargins = True
      Left = 936
      Top = 3
      Width = 75
      Height = 31
      Align = alRight
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 1017
      Top = 3
      Width = 75
      Height = 31
      Align = alRight
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
    object Button3: TButton
      AlignWithMargins = True
      Left = 814
      Top = 3
      Width = 116
      Height = 31
      Align = alRight
      Caption = 'Clone Product'
      TabOrder = 2
      OnClick = Button3Click
    end
    object btnRecipe: TButton
      AlignWithMargins = True
      Left = 733
      Top = 3
      Width = 75
      Height = 31
      Align = alRight
      Caption = 'Recipe'
      TabOrder = 3
      OnClick = btnRecipeClick
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 29
    Width = 1095
    Height = 428
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'Main '
      object Label29: TLabel
        Left = 33
        Top = 15
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Caption = 'DESCRIPTON'
        Transparent = True
      end
      object Label30: TLabel
        Left = 70
        Top = 45
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'COST'
        Transparent = True
      end
      object Label31: TLabel
        Left = 29
        Top = 71
        Width = 68
        Height = 13
        Alignment = taRightJustify
        Caption = 'RETAIL PRICE'
        Transparent = True
      end
      object Label32: TLabel
        Left = 29
        Top = 186
        Width = 68
        Height = 13
        Alignment = taRightJustify
        Caption = 'GROUP PRICE'
        Transparent = True
      end
      object Label33: TLabel
        Left = 56
        Top = 309
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'SPECIAL'
        Transparent = True
      end
      object Label34: TLabel
        Left = 65
        Top = 334
        Width = 32
        Height = 13
        Alignment = taRightJustify
        Caption = 'START'
        Transparent = True
      end
      object Label35: TLabel
        Left = 77
        Top = 359
        Width = 20
        Height = 13
        Alignment = taRightJustify
        Caption = 'END'
        Transparent = True
      end
      object Label43: TLabel
        Left = 35
        Top = 212
        Width = 62
        Height = 13
        Alignment = taRightJustify
        Caption = 'GROUP QTY.'
        Transparent = True
      end
      object Bevel1: TBevel
        Left = 10
        Top = 175
        Width = 321
        Height = 3
      end
      object Bevel2: TBevel
        Left = 10
        Top = 235
        Width = 321
        Height = 3
      end
      object Label44: TLabel
        Left = 38
        Top = 246
        Width = 59
        Height = 13
        Alignment = taRightJustify
        Caption = 'CASE PRICE'
        Transparent = True
      end
      object Label45: TLabel
        Left = 44
        Top = 272
        Width = 53
        Height = 13
        Alignment = taRightJustify
        Caption = 'QTY. CASE'
        Transparent = True
      end
      object Bevel3: TBevel
        Left = 10
        Top = 298
        Width = 321
        Height = 3
      end
      object Label4: TLabel
        Left = 20
        Top = 98
        Width = 77
        Height = 13
        Alignment = taRightJustify
        Caption = 'RETAIL PRICE 2'
        Transparent = True
      end
      object Label9: TLabel
        Left = 394
        Top = 10
        Width = 70
        Height = 13
        Alignment = taRightJustify
        Caption = 'SALES PROMO'
        Transparent = True
      end
      object Bevel4: TBevel
        Left = 10
        Top = 36
        Width = 321
        Height = 3
      end
      object SpeedButton7: TSpeedButton
        Left = 271
        Top = 330
        Width = 23
        Height = 22
        Caption = '....'
        OnClick = SpeedButton7Click
      end
      object SpeedButton8: TSpeedButton
        Left = 271
        Top = 355
        Width = 23
        Height = 22
        Caption = '....'
        OnClick = SpeedButton8Click
      end
      object SpeedButton6: TSpeedButton
        Left = 626
        Top = 3
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton6Click
      end
      object Label10: TLabel
        Left = 784
        Top = 153
        Width = 84
        Height = 13
        Caption = '# OF MODIFIERS'
      end
      object Bevel5: TBevel
        Left = 10
        Top = 384
        Width = 1058
        Height = 4
      end
      object Label2: TLabel
        Left = 446
        Top = 303
        Width = 20
        Height = 13
        Alignment = taRightJustify
        Caption = 'UPC'
        Transparent = True
      end
      object Label36: TLabel
        Left = 384
        Top = 37
        Width = 81
        Height = 13
        Alignment = taRightJustify
        Caption = 'DEPARTAMENTO'
        Transparent = True
      end
      object Label37: TLabel
        Left = 772
        Top = 10
        Width = 50
        Height = 13
        Alignment = taRightJustify
        Caption = 'SUPLIDOR'
        Transparent = True
      end
      object Label38: TLabel
        Left = 427
        Top = 190
        Width = 39
        Height = 13
        Alignment = taRightJustify
        Caption = 'MINIMO'
        Transparent = True
      end
      object Label39: TLabel
        Left = 425
        Top = 215
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'MAXIMO'
        Transparent = True
      end
      object Label40: TLabel
        Left = 404
        Top = 240
        Width = 62
        Height = 13
        Alignment = taRightJustify
        Caption = 'INVENTARIO'
        Transparent = True
      end
      object Bevel6: TBevel
        Left = 352
        Top = 11
        Width = 2
        Height = 362
      end
      object Label46: TLabel
        Left = 417
        Top = 64
        Width = 48
        Height = 13
        Alignment = taRightJustify
        Caption = 'SUBDEPT.'
        Transparent = True
      end
      object Label50: TLabel
        Left = 441
        Top = 276
        Width = 25
        Height = 13
        Alignment = taRightJustify
        Caption = 'PO #'
        Transparent = True
      end
      object Label51: TLabel
        Left = 435
        Top = 357
        Width = 29
        Height = 13
        Alignment = taRightJustify
        Caption = 'INFO.'
        Transparent = True
      end
      object Label3: TLabel
        Left = 394
        Top = 330
        Width = 70
        Height = 13
        Alignment = taRightJustify
        Caption = 'PART NUMBER'
        Transparent = True
      end
      object Bevel7: TBevel
        Left = 390
        Top = 88
        Width = 332
        Height = 3
      end
      object Bevel8: TBevel
        Left = 391
        Top = 264
        Width = 332
        Height = 3
      end
      object Bevel9: TBevel
        Left = 764
        Top = 11
        Width = 2
        Height = 362
      end
      object Label1: TLabel
        Left = 806
        Top = 125
        Width = 62
        Height = 13
        Alignment = taRightJustify
        Caption = 'PRODUCT ID'
        Transparent = True
      end
      object sbNewUPC: TSpeedButton
        Left = 626
        Top = 300
        Width = 23
        Height = 20
        Caption = '...'
        OnClick = sbNewUPCClick
      end
      object SpeedButton1: TSpeedButton
        Left = 625
        Top = 31
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 625
        Top = 59
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton2Click
      end
      object SpeedButton3: TSpeedButton
        Left = 970
        Top = 3
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton3Click
      end
      object Label5: TLabel
        Left = 28
        Top = 152
        Width = 69
        Height = 13
        Alignment = taRightJustify
        Caption = 'RECIPE PRICE'
        Transparent = True
      end
      object Bevel10: TBevel
        Left = 390
        Top = 176
        Width = 332
        Height = 3
      end
      object Label6: TLabel
        Left = 411
        Top = 103
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = 'DAILY SPECIAL'
        Transparent = True
      end
      object Label7: TLabel
        Left = 452
        Top = 127
        Width = 32
        Height = 13
        Alignment = taRightJustify
        Caption = 'START'
        Transparent = True
      end
      object Label8: TLabel
        Left = 464
        Top = 152
        Width = 20
        Height = 13
        Alignment = taRightJustify
        Caption = 'END'
        Transparent = True
      end
      object SpeedButton4: TSpeedButton
        Left = 658
        Top = 123
        Width = 23
        Height = 22
        Caption = '....'
        OnClick = SpeedButton4Click
      end
      object SpeedButton5: TSpeedButton
        Left = 658
        Top = 148
        Width = 23
        Height = 22
        Caption = '....'
        OnClick = SpeedButton5Click
      end
      object Label11: TLabel
        Left = 20
        Top = 125
        Width = 77
        Height = 13
        Alignment = taRightJustify
        Caption = 'RETAIL PRICE 3'
        Transparent = True
      end
      object Label15: TLabel
        Left = 219
        Top = 71
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = 'GM1'
        Transparent = True
      end
      object Label16: TLabel
        Left = 219
        Top = 98
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = 'GM2'
        Transparent = True
      end
      object Label17: TLabel
        Left = 219
        Top = 125
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = 'GM3'
        Transparent = True
      end
      object Bevel20: TBevel
        Left = 772
        Top = 113
        Width = 311
        Height = 3
      end
      object SpeedButton10: TSpeedButton
        Left = 970
        Top = 58
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton3Click
      end
      object Label26: TLabel
        Left = 775
        Top = 64
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = 'SUPPLIER 2'
        Transparent = True
      end
      object lblSupPrice: TLabel
        Left = 1009
        Top = 10
        Width = 28
        Height = 13
        Alignment = taRightJustify
        Caption = '$0.00'
      end
      object lblSupPrice2: TLabel
        Left = 1009
        Top = 64
        Width = 28
        Height = 13
        Alignment = taRightJustify
        Caption = '$0.00'
      end
      object Label27: TLabel
        Left = 793
        Top = 37
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'ITEM ID'
        Transparent = True
      end
      object Label42: TLabel
        Left = 784
        Top = 91
        Width = 47
        Height = 13
        Alignment = taRightJustify
        Caption = 'ITEM ID 2'
        Transparent = True
      end
      object EditDescription: TEdit
        Left = 112
        Top = 12
        Width = 201
        Height = 21
        TabOrder = 0
        OnKeyPress = FormKeyPress
      end
      object EditCosto: TEdit
        Left = 112
        Top = 41
        Width = 75
        Height = 21
        Alignment = taRightJustify
        TabOrder = 1
        OnChange = EditCostoChange
        OnExit = EditCostoExit
        OnKeyPress = FormKeyPress
      end
      object EditRetailPrice: TEdit
        Left = 112
        Top = 68
        Width = 95
        Height = 21
        Alignment = taRightJustify
        TabOrder = 2
        OnChange = EditRetailPriceChange
        OnEnter = EditRetailPriceEnter
        OnExit = EditRetailPriceExit
        OnKeyPress = FormKeyPress
      end
      object EditPrecioVenta2: TEdit
        Left = 112
        Top = 95
        Width = 95
        Height = 21
        Alignment = taRightJustify
        TabOrder = 3
        OnChange = EditPrecioVenta2Change
        OnEnter = EditPrecioVenta2Enter
        OnExit = EditPrecioVenta2Exit
        OnKeyPress = FormKeyPress
      end
      object EditPrecioGrupo: TEdit
        Left = 112
        Top = 182
        Width = 95
        Height = 21
        Alignment = taRightJustify
        TabOrder = 6
        OnChange = EditPrecioGrupoChange
        OnKeyPress = FormKeyPress
      end
      object EditGROUP_QTY: TEdit
        Left = 112
        Top = 209
        Width = 95
        Height = 21
        Alignment = taRightJustify
        TabOrder = 7
        OnChange = EditGROUP_QTYChange
        OnKeyPress = FormKeyPress
      end
      object EditPrecioCaja: TEdit
        Left = 112
        Top = 243
        Width = 95
        Height = 21
        Alignment = taRightJustify
        TabOrder = 8
        OnChange = EditPrecioCajaChange
        OnKeyPress = FormKeyPress
      end
      object EditQtyCaja: TEdit
        Left = 112
        Top = 269
        Width = 95
        Height = 21
        Alignment = taRightJustify
        TabOrder = 9
        OnChange = EditQtyCajaChange
        OnKeyPress = FormKeyPress
      end
      object EditEspecial: TEdit
        Left = 112
        Top = 306
        Width = 95
        Height = 21
        Alignment = taRightJustify
        TabOrder = 10
        OnChange = EditEspecialChange
        OnKeyPress = FormKeyPress
      end
      object EditCOMESPECIAL: TEdit
        Left = 112
        Top = 331
        Width = 153
        Height = 21
        TabOrder = 11
        OnKeyPress = FormKeyPress
      end
      object EditTERMINAESPECIAL: TEdit
        Left = 112
        Top = 356
        Width = 153
        Height = 21
        TabOrder = 12
        OnKeyPress = FormKeyPress
      end
      object EditSALES_PROMOTION_ID: TEdit
        Left = 499
        Top = 7
        Width = 121
        Height = 21
        TabOrder = 13
        OnKeyPress = FormKeyPress
      end
      object EditNO_MODIFIERS: TEdit
        Left = 886
        Top = 149
        Width = 121
        Height = 21
        Alignment = taRightJustify
        TabOrder = 27
        OnChange = EditNO_MODIFIERSChange
        OnKeyPress = FormKeyPress
      end
      object cbKitchen: TCheckBox
        Left = 784
        Top = 177
        Width = 97
        Height = 17
        Caption = 'KITCHEN'
        TabOrder = 28
        OnKeyPress = FormKeyPress
      end
      object cbModifiers: TCheckBox
        Left = 784
        Top = 200
        Width = 97
        Height = 17
        Caption = 'MODIFIERS'
        TabOrder = 29
        OnKeyPress = FormKeyPress
      end
      object EditMinimo: TEdit
        Left = 500
        Top = 185
        Width = 121
        Height = 21
        Alignment = taRightJustify
        TabOrder = 17
        OnChange = EditMinimoChange
        OnKeyPress = FormKeyPress
      end
      object EditMaximo: TEdit
        Left = 500
        Top = 212
        Width = 121
        Height = 21
        Alignment = taRightJustify
        TabOrder = 18
        OnChange = EditMaximoChange
        OnKeyPress = FormKeyPress
      end
      object EditQtyInventario: TEdit
        Left = 500
        Top = 237
        Width = 121
        Height = 21
        Alignment = taRightJustify
        ReadOnly = True
        TabOrder = 19
        OnChange = EditQtyInventarioChange
        OnKeyPress = FormKeyPress
      end
      object cbEditarPrecio: TCheckBox
        Left = 932
        Top = 223
        Width = 97
        Height = 17
        Caption = 'EDIT PRICE'
        TabOrder = 30
        OnKeyPress = FormKeyPress
      end
      object EditPO: TEdit
        Left = 500
        Top = 273
        Width = 121
        Height = 21
        TabOrder = 20
        OnKeyPress = FormKeyPress
      end
      object EditUPC: TEdit
        Left = 499
        Top = 300
        Width = 121
        Height = 21
        TabOrder = 21
        OnKeyPress = FormKeyPress
      end
      object EditPartNumber: TEdit
        Left = 500
        Top = 327
        Width = 121
        Height = 21
        TabOrder = 22
        OnKeyPress = FormKeyPress
      end
      object EditDeptDesc: TEdit
        Left = 499
        Top = 34
        Width = 121
        Height = 21
        TabOrder = 14
        OnKeyPress = FormKeyPress
      end
      object EditAdditionalInfo: TEdit
        Left = 499
        Top = 354
        Width = 193
        Height = 21
        TabOrder = 23
        OnKeyPress = FormKeyPress
      end
      object cbShowIndividual: TCheckBox
        Left = 784
        Top = 223
        Width = 129
        Height = 17
        Caption = 'SHOW INDIVIDUAL'
        TabOrder = 31
        OnKeyPress = FormKeyPress
      end
      object cbPatrocinio: TCheckBox
        Left = 784
        Top = 246
        Width = 129
        Height = 17
        Caption = 'NO PATROCINIO'
        TabOrder = 32
        OnKeyPress = FormKeyPress
      end
      object cbStateTaxable: TCheckBox
        Left = 784
        Top = 269
        Width = 129
        Height = 17
        Caption = 'STATE TAXABLE'
        TabOrder = 33
        OnKeyPress = FormKeyPress
      end
      object cbLocalTax: TCheckBox
        Left = 784
        Top = 293
        Width = 129
        Height = 17
        Caption = 'LOCAL TAXABLE'
        TabOrder = 34
        OnKeyPress = FormKeyPress
      end
      object cbFoodItem: TCheckBox
        Left = 932
        Top = 178
        Width = 129
        Height = 17
        Caption = 'FOOD ITEM'
        TabOrder = 35
        OnKeyPress = FormKeyPress
      end
      object cbNoUPC: TCheckBox
        Left = 932
        Top = 201
        Width = 129
        Height = 17
        Caption = 'NO UPC'
        TabOrder = 36
        OnKeyPress = FormKeyPress
      end
      object EditProductID: TEdit
        Left = 886
        Top = 122
        Width = 121
        Height = 21
        TabStop = False
        Alignment = taRightJustify
        Color = cl3DLight
        ReadOnly = True
        TabOrder = 37
      end
      object EditSubDeptDesc: TEdit
        Left = 499
        Top = 61
        Width = 121
        Height = 21
        TabOrder = 15
        OnKeyPress = FormKeyPress
      end
      object EditSupDesc: TEdit
        Left = 843
        Top = 7
        Width = 121
        Height = 21
        TabOrder = 16
        OnKeyPress = FormKeyPress
      end
      object cbRecipe: TCheckBox
        Left = 932
        Top = 246
        Width = 97
        Height = 17
        Caption = 'RECIPE'
        Enabled = False
        TabOrder = 38
        OnKeyPress = FormKeyPress
      end
      object EditRecipePrice: TEdit
        Left = 112
        Top = 149
        Width = 95
        Height = 21
        Alignment = taRightJustify
        TabOrder = 5
        OnChange = EditRecipePriceChange
        OnKeyPress = FormKeyPress
      end
      object eDailySalePrice: TEdit
        Left = 499
        Top = 97
        Width = 121
        Height = 21
        Alignment = taRightJustify
        TabOrder = 24
        OnChange = eDailySalePriceChange
        OnKeyPress = FormKeyPress
      end
      object eDailySaleStartTime: TEdit
        Left = 499
        Top = 124
        Width = 153
        Height = 21
        TabOrder = 25
        OnKeyPress = FormKeyPress
      end
      object eDailySalEndTime: TEdit
        Left = 499
        Top = 149
        Width = 153
        Height = 21
        TabOrder = 26
        OnKeyPress = FormKeyPress
      end
      object cbDAILY_SALE_ACTIVE: TCheckBox
        Left = 626
        Top = 101
        Width = 137
        Height = 17
        Caption = 'DAILY SPECIAL ACTIVE'
        TabOrder = 39
        OnKeyPress = FormKeyPress
      end
      object EditPrecioVenta3: TEdit
        Left = 112
        Top = 122
        Width = 95
        Height = 21
        Alignment = taRightJustify
        TabOrder = 4
        OnChange = EditPrecioVenta3Change
        OnEnter = EditPrecioVenta3Enter
        OnExit = EditPrecioVenta3Exit
        OnKeyPress = FormKeyPress
      end
      object cbProcessedFood: TCheckBox
        Left = 932
        Top = 269
        Width = 124
        Height = 17
        Caption = 'PROCESSED FOOD'
        TabOrder = 40
      end
      object cbTripleS: TCheckBox
        Left = 932
        Top = 293
        Width = 124
        Height = 17
        Caption = 'TRIPLE S PRODUCT'
        TabOrder = 41
      end
      object cbShowOnEcomm: TCheckBox
        Left = 932
        Top = 316
        Width = 154
        Height = 17
        Caption = 'SHOW ON ECOMMERCE'
        TabOrder = 43
      end
      object cbCustIDRequired: TCheckBox
        Left = 784
        Top = 316
        Width = 141
        Height = 17
        Caption = 'CUSTOMER ID REQUIRED'
        TabOrder = 42
        OnKeyPress = FormKeyPress
      end
      object EditGm1: TEdit
        Left = 246
        Top = 68
        Width = 95
        Height = 21
        Alignment = taRightJustify
        TabOrder = 44
        OnExit = EditGm1Exit
        OnKeyPress = FormKeyPress
      end
      object EditGm2: TEdit
        Left = 246
        Top = 95
        Width = 95
        Height = 21
        Alignment = taRightJustify
        TabOrder = 45
        OnExit = EditGm2Exit
        OnKeyPress = FormKeyPress
      end
      object EditGm3: TEdit
        Left = 246
        Top = 122
        Width = 95
        Height = 21
        Alignment = taRightJustify
        TabOrder = 46
        OnExit = EditGm3Exit
        OnKeyPress = FormKeyPress
      end
      object EditSupDesc2: TEdit
        Left = 843
        Top = 61
        Width = 121
        Height = 21
        TabOrder = 47
        OnKeyPress = FormKeyPress
      end
      object cbSupplierPrice: TCheckBox
        Left = 1043
        Top = 9
        Width = 25
        Height = 17
        TabOrder = 48
        OnClick = cbSupplierPriceClick
      end
      object cbSupplierPrice2: TCheckBox
        Left = 1043
        Top = 63
        Width = 25
        Height = 17
        TabOrder = 49
        OnClick = cbSupplierPrice2Click
      end
      object EditItemId: TEdit
        Left = 843
        Top = 34
        Width = 121
        Height = 21
        TabOrder = 50
        OnKeyPress = FormKeyPress
      end
      object EditItemID2: TEdit
        Left = 843
        Top = 86
        Width = 121
        Height = 21
        TabOrder = 51
        OnKeyPress = FormKeyPress
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Extra Information'
      ImageIndex = 1
      object Label13: TLabel
        Left = 364
        Top = 170
        Width = 63
        Height = 13
        Caption = 'Product Note'
      end
      object Label14: TLabel
        Left = 44
        Top = 15
        Width = 62
        Height = 13
        Alignment = taRightJustify
        Caption = 'Classification'
        Transparent = True
      end
      object Bevel11: TBevel
        Left = 10
        Top = 36
        Width = 321
        Height = 3
      end
      object Bevel13: TBevel
        Left = 10
        Top = 123
        Width = 321
        Height = 3
      end
      object Label21: TLabel
        Left = 40
        Top = 135
        Width = 66
        Height = 13
        Alignment = taRightJustify
        Caption = 'Department S'
        Transparent = True
      end
      object Label22: TLabel
        Left = 41
        Top = 162
        Width = 65
        Height = 13
        Alignment = taRightJustify
        Caption = 'Department L'
        Transparent = True
      end
      object Bevel14: TBevel
        Left = 10
        Top = 186
        Width = 321
        Height = 3
      end
      object Bevel15: TBevel
        Left = 352
        Top = 11
        Width = 2
        Height = 362
      end
      object Label28: TLabel
        Left = 47
        Top = 72
        Width = 59
        Height = 13
        Alignment = taRightJustify
        Caption = 'Pseudo MgD'
        Transparent = True
      end
      object Label41: TLabel
        Left = 48
        Top = 99
        Width = 58
        Height = 13
        Alignment = taRightJustify
        Caption = 'Pseudo MgP'
        Transparent = True
      end
      object Bevel16: TBevel
        Left = 360
        Top = 93
        Width = 321
        Height = 3
      end
      object Label48: TLabel
        Left = 52
        Top = 48
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Caption = 'Max Per Tx'
        Transparent = True
      end
      object Label52: TLabel
        Left = 357
        Top = 42
        Width = 109
        Height = 13
        Alignment = taRightJustify
        Caption = 'Date Skip Price Update'
        Transparent = True
      end
      object Label53: TLabel
        Left = 364
        Top = 69
        Width = 102
        Height = 13
        Alignment = taRightJustify
        Caption = 'Skip Price Update Init'
        Transparent = True
      end
      object Label56: TLabel
        Left = 37
        Top = 252
        Width = 69
        Height = 13
        Alignment = taRightJustify
        Caption = 'Stock Location'
        Transparent = True
      end
      object Bevel19: TBevel
        Left = 696
        Top = 11
        Width = 2
        Height = 362
      end
      object Label18: TLabel
        Left = 403
        Top = 105
        Width = 63
        Height = 13
        Alignment = taRightJustify
        Caption = 'Last Modified'
        Transparent = True
      end
      object Label19: TLabel
        Left = 377
        Top = 132
        Width = 89
        Height = 13
        Alignment = taRightJustify
        Caption = 'Last Modified Date'
        Transparent = True
      end
      object Bevel17: TBevel
        Left = 360
        Top = 156
        Width = 321
        Height = 3
      end
      object Label20: TLabel
        Left = 44
        Top = 198
        Width = 62
        Height = 13
        Alignment = taRightJustify
        Caption = 'Line Location'
        Transparent = True
      end
      object Label23: TLabel
        Left = 39
        Top = 225
        Width = 67
        Height = 13
        Alignment = taRightJustify
        Caption = 'Shelf Location'
        Transparent = True
      end
      object Label24: TLabel
        Left = 407
        Top = 15
        Width = 59
        Height = 13
        Alignment = taRightJustify
        Caption = 'Product Size'
        Transparent = True
      end
      object Label25: TLabel
        Left = 727
        Top = 168
        Width = 19
        Height = 13
        Alignment = taRightJustify
        Caption = 'Age'
        Transparent = True
      end
      object Bevel18: TBevel
        Left = 704
        Top = 156
        Width = 321
        Height = 3
      end
      object Label12: TLabel
        Left = 772
        Top = 228
        Width = 83
        Height = 13
        Alignment = taRightJustify
        Caption = 'PRODUCT IMAGE'
        Transparent = True
      end
      object SpeedButton9: TSpeedButton
        Left = 1028
        Top = 241
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton9Click
      end
      object Bevel12: TBevel
        Left = 704
        Top = 192
        Width = 321
        Height = 3
      end
      object MemoProductNote: TMemo
        Left = 360
        Top = 189
        Width = 321
        Height = 173
        TabOrder = 14
      end
      object EditProductClassification: TEdit
        Left = 112
        Top = 12
        Width = 201
        Height = 21
        TabOrder = 0
        OnKeyPress = FormKeyPress
      end
      object EditDptS: TEdit
        Left = 112
        Top = 132
        Width = 121
        Height = 21
        Alignment = taRightJustify
        TabOrder = 4
        OnKeyPress = FormKeyPress
      end
      object EditDptL: TEdit
        Left = 112
        Top = 159
        Width = 121
        Height = 21
        Alignment = taRightJustify
        TabOrder = 5
        OnKeyPress = FormKeyPress
      end
      object EditPseudoMgD: TEdit
        Left = 112
        Top = 69
        Width = 121
        Height = 21
        Alignment = taRightJustify
        NumbersOnly = True
        TabOrder = 2
        Text = '0'
        OnKeyPress = FormKeyPress
      end
      object EditPseudoMgP: TEdit
        Left = 112
        Top = 96
        Width = 121
        Height = 21
        Alignment = taRightJustify
        NumbersOnly = True
        TabOrder = 3
        Text = '0'
        OnKeyPress = FormKeyPress
      end
      object EditMaxPerTx: TEdit
        Left = 112
        Top = 45
        Width = 121
        Height = 21
        Alignment = taRightJustify
        NumbersOnly = True
        TabOrder = 1
        Text = '0'
        OnKeyPress = FormKeyPress
      end
      object EditSkipPriceUpdtIni: TEdit
        Left = 472
        Top = 66
        Width = 121
        Height = 21
        Alignment = taRightJustify
        TabOrder = 11
        OnKeyPress = FormKeyPress
      end
      object EditStockLoc: TEdit
        Left = 112
        Top = 249
        Width = 121
        Height = 21
        Alignment = taRightJustify
        TabOrder = 8
        OnKeyPress = FormKeyPress
      end
      object cbAllowDiscount: TCheckBox
        Left = 729
        Top = 14
        Width = 129
        Height = 17
        Caption = 'Allow Discount'
        TabOrder = 16
        OnKeyPress = FormKeyPress
      end
      object cbRound: TCheckBox
        Left = 729
        Top = 37
        Width = 129
        Height = 17
        Caption = 'Round'
        TabOrder = 17
        OnKeyPress = FormKeyPress
      end
      object cbNline: TCheckBox
        Left = 729
        Top = 60
        Width = 129
        Height = 17
        Caption = 'Next Line'
        TabOrder = 18
        OnKeyPress = FormKeyPress
      end
      object cbEbt: TCheckBox
        Left = 729
        Top = 83
        Width = 129
        Height = 17
        Caption = 'EBT'
        TabOrder = 19
        OnKeyPress = FormKeyPress
      end
      object cbSigSis: TCheckBox
        Left = 729
        Top = 106
        Width = 129
        Height = 17
        Caption = 'FSA'
        TabOrder = 20
        OnKeyPress = FormKeyPress
      end
      object cbOtcCard: TCheckBox
        Left = 729
        Top = 129
        Width = 129
        Height = 17
        Caption = 'OTC Card'
        TabOrder = 21
        OnKeyPress = FormKeyPress
      end
      object cbPseudo: TCheckBox
        Left = 864
        Top = 14
        Width = 129
        Height = 17
        Caption = 'Pseudo'
        TabOrder = 22
        OnKeyPress = FormKeyPress
      end
      object cbNonRefundable: TCheckBox
        Left = 864
        Top = 37
        Width = 129
        Height = 17
        Caption = 'Non Refundable'
        TabOrder = 23
        OnKeyPress = FormKeyPress
      end
      object cbPepSpray: TCheckBox
        Left = 864
        Top = 60
        Width = 129
        Height = 17
        Caption = 'Pepper Spray'
        TabOrder = 24
        OnKeyPress = FormKeyPress
      end
      object cbSkipPriceUpdt: TCheckBox
        Left = 864
        Top = 83
        Width = 129
        Height = 17
        Caption = 'Skip Price Update'
        TabOrder = 25
        OnKeyPress = FormKeyPress
      end
      object EditLastMod: TEdit
        Left = 472
        Top = 102
        Width = 121
        Height = 21
        Alignment = taRightJustify
        Enabled = False
        TabOrder = 12
        OnKeyPress = FormKeyPress
      end
      object EditLineLoc: TEdit
        Left = 112
        Top = 195
        Width = 121
        Height = 21
        Alignment = taRightJustify
        TabOrder = 6
        OnKeyPress = FormKeyPress
      end
      object EditShelfLoc: TEdit
        Left = 112
        Top = 222
        Width = 121
        Height = 21
        Alignment = taRightJustify
        TabOrder = 7
        OnKeyPress = FormKeyPress
      end
      object dtpSkipPriceUpdt: TDateTimePicker
        Left = 472
        Top = 39
        Width = 153
        Height = 21
        Date = 45828.000000000000000000
        Time = 0.445802511574584100
        TabOrder = 10
      end
      object EditLastModDate: TEdit
        Left = 472
        Top = 129
        Width = 121
        Height = 21
        Alignment = taRightJustify
        Enabled = False
        TabOrder = 13
        OnKeyPress = FormKeyPress
      end
      object EditProdSize: TEdit
        Left = 472
        Top = 12
        Width = 121
        Height = 21
        Alignment = taRightJustify
        TabOrder = 9
        OnKeyPress = FormKeyPress
      end
      object cbAge: TComboBox
        Left = 752
        Top = 165
        Width = 65
        Height = 21
        ItemIndex = 0
        TabOrder = 15
        Text = '0'
        Items.Strings = (
          '0'
          '15'
          '16'
          '17'
          '18'
          '19'
          '20'
          '21')
      end
      object Button5: TButton
        Left = 1028
        Top = 353
        Width = 54
        Height = 25
        Caption = 'Delete'
        TabOrder = 26
        OnClick = Button5Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 936
    Top = 352
  end
  object SavePictureDialog1: TSavePictureDialog
    Left = 800
    Top = 344
  end
  object OpenDialog2: TOpenDialog
    Left = 896
    Top = 368
  end
  object SavePictureDialog2: TSavePictureDialog
    Left = 792
    Top = 368
  end
end
