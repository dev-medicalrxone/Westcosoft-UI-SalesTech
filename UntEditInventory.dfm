object FrmEditInventory: TFrmEditInventory
  Left = 524
  Top = 333
  BorderIcons = [biSystemMenu]
  Caption = 'Inventory'
  ClientHeight = 717
  ClientWidth = 985
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  TextHeight = 13
  object Label1: TLabel
    Left = 73
    Top = 39
    Width = 24
    Height = 13
    Alignment = taRightJustify
    Caption = 'TIPO'
    FocusControl = DBEdit1
    Transparent = True
  end
  object Label2: TLabel
    Left = 428
    Top = 240
    Width = 21
    Height = 13
    Alignment = taRightJustify
    Caption = 'UPC'
    FocusControl = DBEdit2
    Transparent = True
  end
  object Label29: TLabel
    Left = 27
    Top = 62
    Width = 70
    Height = 13
    Alignment = taRightJustify
    Caption = 'DESCRIPCION'
    FocusControl = DBEdit2
    Transparent = True
  end
  object Label30: TLabel
    Left = 61
    Top = 86
    Width = 36
    Height = 13
    Alignment = taRightJustify
    Caption = 'COSTO'
    FocusControl = DBEdit2
    Transparent = True
  end
  object Label31: TLabel
    Left = 23
    Top = 110
    Width = 74
    Height = 13
    Alignment = taRightJustify
    Caption = 'PRECIO VENTA'
    FocusControl = DBEdit2
    Transparent = True
  end
  object Label32: TLabel
    Left = 18
    Top = 161
    Width = 79
    Height = 13
    Alignment = taRightJustify
    Caption = 'PRECIO GRUPO'
    FocusControl = DBEdit2
    Transparent = True
  end
  object Label33: TLabel
    Left = 51
    Top = 270
    Width = 46
    Height = 13
    Alignment = taRightJustify
    Caption = 'ESPECIAL'
    FocusControl = DBEdit2
    Transparent = True
  end
  object Label34: TLabel
    Left = 22
    Top = 294
    Width = 75
    Height = 13
    Alignment = taRightJustify
    Caption = 'COM ESPECIAL'
    FocusControl = DBEdit2
    Transparent = True
  end
  object Label35: TLabel
    Left = 29
    Top = 318
    Width = 68
    Height = 13
    Alignment = taRightJustify
    Caption = 'TER ESPECIAL'
    FocusControl = DBEdit2
    Transparent = True
  end
  object Label36: TLabel
    Left = 366
    Top = 38
    Width = 83
    Height = 13
    Alignment = taRightJustify
    Caption = 'DEPARTAMENTO'
    FocusControl = DBEdit2
    Transparent = True
  end
  object Label37: TLabel
    Left = 397
    Top = 86
    Width = 52
    Height = 13
    Alignment = taRightJustify
    Caption = 'SUPLIDOR'
    FocusControl = DBEdit2
    Transparent = True
  end
  object Label38: TLabel
    Left = 406
    Top = 110
    Width = 43
    Height = 13
    Alignment = taRightJustify
    Caption = 'MINIMO'
    FocusControl = DBEdit2
    Transparent = True
  end
  object Label39: TLabel
    Left = 404
    Top = 134
    Width = 45
    Height = 13
    Alignment = taRightJustify
    Caption = 'MAXIMO'
    FocusControl = DBEdit2
    Transparent = True
  end
  object Label40: TLabel
    Left = 386
    Top = 161
    Width = 63
    Height = 13
    Alignment = taRightJustify
    Caption = 'INVENTARIO'
    FocusControl = DBEdit2
    Transparent = True
  end
  object SpeedButton1: TSpeedButton
    Left = 609
    Top = 35
    Width = 23
    Height = 20
    Caption = '...'
  end
  object SpeedButton2: TSpeedButton
    Left = 609
    Top = 83
    Width = 23
    Height = 20
    Caption = '...'
  end
  object SpeedButton3: TSpeedButton
    Left = 600
    Top = 236
    Width = 23
    Height = 20
    Caption = '...'
    OnClick = SpeedButton3Click
  end
  object Label42: TLabel
    Left = 366
    Top = 187
    Width = 77
    Height = 13
    Caption = 'EDITAR PRECIO'
    Transparent = True
  end
  object Label43: TLabel
    Left = 34
    Top = 187
    Width = 63
    Height = 13
    Alignment = taRightJustify
    Caption = 'GROUP QTY.'
    FocusControl = DBEdit2
    Transparent = True
  end
  object Bevel1: TBevel
    Left = 10
    Top = 153
    Width = 303
    Height = 3
  end
  object Bevel2: TBevel
    Left = 10
    Top = 207
    Width = 303
    Height = 3
  end
  object Label44: TLabel
    Left = 30
    Top = 215
    Width = 67
    Height = 13
    Alignment = taRightJustify
    Caption = 'PRECIO CAJA'
    FocusControl = DBEdit2
    Transparent = True
  end
  object Label45: TLabel
    Left = 46
    Top = 240
    Width = 51
    Height = 13
    Alignment = taRightJustify
    Caption = 'QTY. CAJA'
    FocusControl = DBEdit2
    Transparent = True
  end
  object Bevel3: TBevel
    Left = 10
    Top = 262
    Width = 303
    Height = 3
  end
  object Bevel4: TBevel
    Left = 352
    Top = 35
    Width = 2
    Height = 416
  end
  object Label46: TLabel
    Left = 400
    Top = 62
    Width = 49
    Height = 13
    Alignment = taRightJustify
    Caption = 'SUBDEPT.'
    FocusControl = DBEdit2
    Transparent = True
  end
  object SpeedButton4: TSpeedButton
    Left = 609
    Top = 59
    Width = 23
    Height = 20
    Caption = '...'
  end
  object Label50: TLabel
    Left = 424
    Top = 215
    Width = 25
    Height = 13
    Alignment = taRightJustify
    Caption = 'PO #'
    FocusControl = DBEdit2
    Transparent = True
  end
  object Label51: TLabel
    Left = 419
    Top = 294
    Width = 29
    Height = 13
    Alignment = taRightJustify
    Caption = 'INFO.'
    Transparent = True
  end
  object Label3: TLabel
    Left = 375
    Top = 270
    Width = 73
    Height = 13
    Alignment = taRightJustify
    Caption = 'PART NUMBER'
    FocusControl = DBEdit17
    Transparent = True
  end
  object Label4: TLabel
    Left = 35
    Top = 134
    Width = 62
    Height = 13
    Alignment = taRightJustify
    Caption = 'PRECIO WIC'
    FocusControl = DBEdit2
    Transparent = True
  end
  object Label9: TLabel
    Left = 23
    Top = 342
    Width = 74
    Height = 13
    Alignment = taRightJustify
    Caption = 'SALES PROMO'
    FocusControl = DBEdit2
    Transparent = True
  end
  object SpeedButton6: TSpeedButton
    Left = 314
    Top = 338
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = SpeedButton6Click
  end
  object SpeedButton7: TSpeedButton
    Left = 271
    Top = 290
    Width = 23
    Height = 22
    Caption = '....'
    OnClick = SpeedButton7Click
  end
  object SpeedButton8: TSpeedButton
    Left = 271
    Top = 314
    Width = 23
    Height = 22
    Caption = '....'
    OnClick = SpeedButton8Click
  end
  object Label10: TLabel
    Left = 185
    Top = 382
    Width = 73
    Height = 13
    Caption = '# of Modifiers'
  end
  object Panel2: TPanel
    Left = 0
    Top = 680
    Width = 985
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 26
    object Button1: TButton
      AlignWithMargins = True
      Left = 826
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
      Left = 907
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
      Left = 704
      Top = 3
      Width = 116
      Height = 31
      Align = alRight
      Caption = 'Clone Product'
      TabOrder = 2
      OnClick = cxButton1Click
    end
    object Button4: TButton
      AlignWithMargins = True
      Left = 623
      Top = 3
      Width = 75
      Height = 31
      Align = alRight
      Caption = 'Recipe'
      TabOrder = 3
      OnClick = Button4Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 688
    Top = 18
    Width = 297
    Height = 412
    HelpType = htKeyword
    Caption = 'Informaci'#243'n:'
    Color = clCream
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 27
    object DBText6: TDBText
      Left = 6
      Top = 87
      Width = 92
      Height = 17
      DataField = 'PRODUCTNO'
      DataSource = DMMidas.DSInventarioPiso
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label47: TLabel
      Left = 3
      Top = 70
      Width = 55
      Height = 13
      Caption = 'Product ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label48: TLabel
      Left = 3
      Top = 117
      Width = 91
      Height = 13
      Caption = 'Group Product ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label49: TLabel
      Left = 173
      Top = 70
      Width = 78
      Height = 13
      Caption = 'Ultimo Cambio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText9: TDBText
      Left = 176
      Top = 87
      Width = 118
      Height = 17
      DataField = 'ULTIMOCAMBIO'
      DataSource = DMMidas.DSInventarioPiso
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 173
      Top = 117
      Width = 96
      Height = 13
      Caption = 'Escanear Producto'
    end
    object SpeedButton5: TSpeedButton
      Left = 253
      Top = 374
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = SpeedButton5Click
    end
    object Panel5: TPanel
      Left = 2
      Top = 15
      Width = 293
      Height = 49
      Align = alTop
      Color = clBlack
      ParentBackground = False
      TabOrder = 0
      object DBText2: TDBText
        Left = 3
        Top = 8
        Width = 273
        Height = 17
        Color = clBlack
        DataField = 'DESCRIPCION'
        DataSource = DMMidas.DSInventarioPiso
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText10: TDBText
        Left = 52
        Top = 26
        Width = 157
        Height = 17
        Color = 12615808
        DataField = 'CODIGOBARRA'
        DataSource = DMMidas.DSInventarioPiso
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label21: TLabel
        Left = 3
        Top = 26
        Width = 29
        Height = 17
        Caption = 'UPC:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object DBEdit16: TDBEdit
      Left = 3
      Top = 136
      Width = 145
      Height = 21
      DataField = 'GROUP_PRODUCTNO'
      DataSource = DMMidas.DSInventarioPiso
      TabOrder = 1
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Enter
    end
    object DBImage1: TDBImage
      Left = 15
      Top = 180
      Width = 232
      Height = 216
      DataField = 'IMAGE'
      DataSource = DMMidas.dsProductImage
      TabOrder = 2
    end
    object DBEdit19: TDBEdit
      Left = 173
      Top = 136
      Width = 121
      Height = 21
      DataField = 'ESCANEAR_BARCODEALTERNO'
      DataSource = DMMidas.DSInventarioPiso
      TabOrder = 3
    end
  end
  object DBEdit1: TDBEdit
    Left = 104
    Top = 35
    Width = 43
    Height = 21
    DataField = 'RECETARIO'
    DataSource = DMMidas.DSInventarioPiso
    ReadOnly = True
    TabOrder = 0
    OnEnter = DBEdit1Enter
    OnExit = DBEdit1Enter
  end
  object DBEdit2: TDBEdit
    Left = 455
    Top = 236
    Width = 145
    Height = 21
    DataField = 'CODIGOBARRA'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 24
    OnEnter = DBEdit1Enter
    OnExit = DBEdit1Enter
  end
  object DBEdit14: TDBEdit
    Left = 455
    Top = 158
    Width = 43
    Height = 21
    DataField = 'QTYINVENTARIO'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 17
    OnEnter = DBEdit1Enter
    OnExit = DBEdit1Enter
  end
  object DBEdit13: TDBEdit
    Left = 456
    Top = 131
    Width = 43
    Height = 21
    DataField = 'CMAXINVENTARIO'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 16
    OnEnter = DBEdit1Enter
    OnExit = DBEdit1Enter
  end
  object DBEdit12: TDBEdit
    Left = 456
    Top = 107
    Width = 43
    Height = 21
    DataField = 'CMININVENTARIO'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 15
    OnEnter = DBEdit1Enter
    OnExit = DBEdit1Enter
  end
  object DBEdit7: TDBEdit
    Left = 104
    Top = 267
    Width = 89
    Height = 21
    DataField = 'ESPECIAL'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 9
    OnEnter = DBEdit1Enter
    OnExit = DBEdit1Enter
  end
  object DBEdit6: TDBEdit
    Left = 104
    Top = 158
    Width = 89
    Height = 21
    DataField = 'RBP'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 5
    OnEnter = DBEdit1Enter
    OnExit = DBEdit1Enter
  end
  object DBEdit5: TDBEdit
    Left = 104
    Top = 107
    Width = 89
    Height = 21
    DataField = 'PRECIO'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 3
    OnEnter = DBEdit1Enter
    OnExit = DBEdit1Enter
  end
  object DBEdit4: TDBEdit
    Left = 104
    Top = 83
    Width = 89
    Height = 21
    DataField = 'COSTO'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 2
    OnEnter = DBEdit1Enter
    OnExit = DBEdit1Enter
  end
  object DBEdit3: TDBEdit
    Left = 104
    Top = 59
    Width = 193
    Height = 21
    DataField = 'DESCRIPCION'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 1
    OnEnter = DBEdit1Enter
    OnExit = DBEdit1Enter
  end
  object DBCheckBox1: TDBCheckBox
    Left = 602
    Top = 338
    Width = 62
    Height = 17
    Alignment = taLeftJustify
    Caption = 'FOOD'
    DataField = 'FOODITEM'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 18
    ValueChecked = '1'
    ValueUnchecked = '0'
  end
  object DBCheckBox2: TDBCheckBox
    Left = 602
    Top = 361
    Width = 62
    Height = 17
    Alignment = taLeftJustify
    Caption = 'NO UPC'
    DataField = 'NONEBC'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 19
    ValueChecked = '1'
    ValueUnchecked = '0'
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 456
    Top = 35
    Width = 153
    Height = 21
    DataField = 'DESCDEPT'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 12
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 456
    Top = 83
    Width = 153
    Height = 21
    DataField = 'Suplidor'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 14
  end
  object DBComboBox1: TDBComboBox
    Left = 456
    Top = 182
    Width = 145
    Height = 21
    DataField = 'EDITAR_PRECIO'
    DataSource = DMMidas.DSInventarioPiso
    Items.Strings = (
      'False'
      'True')
    TabOrder = 22
  end
  object DBEdit10: TDBEdit
    Left = 104
    Top = 182
    Width = 89
    Height = 21
    DataField = 'GROUP_QTY'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 6
    OnEnter = DBEdit1Enter
    OnExit = DBEdit1Enter
  end
  object DBEdit11: TDBEdit
    Left = 104
    Top = 212
    Width = 89
    Height = 21
    DataField = 'PRECIO_CAJA'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 7
    OnEnter = DBEdit1Enter
    OnExit = DBEdit1Enter
  end
  object DBEdit15: TDBEdit
    Left = 105
    Top = 236
    Width = 89
    Height = 21
    DataField = 'QTY_CAJA'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 8
    OnEnter = DBEdit1Enter
    OnExit = DBEdit1Enter
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 456
    Top = 59
    Width = 153
    Height = 21
    DataField = 'SUBDEPT'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 13
  end
  object DBCheckBox3: TDBCheckBox
    Left = 368
    Top = 407
    Width = 170
    Height = 17
    Alignment = taLeftJustify
    Caption = 'TAXABLE LOCAL'
    DataField = 'TAXABLE'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 20
    ValueChecked = '1'
    ValueUnchecked = '0'
  end
  object DBCheckBox4: TDBCheckBox
    Left = 368
    Top = 384
    Width = 170
    Height = 17
    Alignment = taLeftJustify
    Caption = 'TAXABLE ESTATAL'
    DataField = 'TAXABLE_ESTATAL'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 21
    ValueChecked = '1'
    ValueUnchecked = '0'
  end
  object DBEdit8: TDBEdit
    Left = 456
    Top = 212
    Width = 145
    Height = 21
    DataField = 'PO'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 23
    OnEnter = DBEdit1Enter
    OnExit = DBEdit1Enter
  end
  object DBEdit9: TDBEdit
    Left = 455
    Top = 291
    Width = 209
    Height = 21
    DataField = 'INFOADICIONAL'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 25
    OnEnter = DBEdit1Enter
    OnExit = DBEdit1Enter
  end
  object DBCheckBox5: TDBCheckBox
    Left = 368
    Top = 338
    Width = 170
    Height = 17
    Alignment = taLeftJustify
    Caption = 'MOSTRAR INDIVIDUAL'
    DataField = 'SHOWINDIVIDUAL'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 28
    ValueChecked = '1'
    ValueUnchecked = '0'
  end
  object DBCheckBox6: TDBCheckBox
    Left = 368
    Top = 361
    Width = 170
    Height = 17
    Alignment = taLeftJustify
    Caption = 'PRODUCTO NO PATROCINIO'
    DataField = 'PATROCINIO'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 29
    ValueChecked = '1'
    ValueUnchecked = '0'
  end
  object DBEdit17: TDBEdit
    Left = 456
    Top = 267
    Width = 145
    Height = 21
    DataField = 'NDC'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 30
    OnEnter = DBEdit1Enter
    OnExit = DBEdit1Enter
  end
  object DBEdit18: TDBEdit
    Left = 104
    Top = 131
    Width = 89
    Height = 21
    DataField = 'PRECIOVENTA2'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 4
    OnEnter = DBEdit1Enter
    OnExit = DBEdit1Enter
  end
  object DBEdit20: TDBEdit
    Left = 103
    Top = 291
    Width = 165
    Height = 21
    DataField = 'COMESPECIAL'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 10
  end
  object DBEdit21: TDBEdit
    Left = 103
    Top = 315
    Width = 165
    Height = 21
    DataField = 'TERMINAESPECIAL'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 11
  end
  object DBEdit22: TDBEdit
    Left = 103
    Top = 339
    Width = 209
    Height = 21
    DataField = 'SALES_PROMO_DEFINE'
    DataSource = DMMidas.DSInventarioPiso
    ReadOnly = True
    TabOrder = 31
  end
  object DBCheckBox7: TDBCheckBox
    Left = 10
    Top = 384
    Width = 151
    Height = 17
    Alignment = taLeftJustify
    Caption = 'KITCHEN'
    DataField = 'KITCHEN'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 32
    ValueChecked = '1'
    ValueUnchecked = '0'
  end
  object DBCheckBox8: TDBCheckBox
    Left = 10
    Top = 407
    Width = 151
    Height = 17
    Alignment = taLeftJustify
    Caption = 'PRODUCT HAS MODIFIER'
    DataField = 'HAS_MODIFIER'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 33
    ValueChecked = '1'
    ValueUnchecked = '0'
  end
  object DBEdit23: TDBEdit
    Left = 271
    Top = 382
    Width = 65
    Height = 21
    DataField = 'MODIFIER_QTY'
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 34
    OnEnter = DBEdit1Enter
    OnExit = DBEdit1Enter
  end
  object TouchKeyboard1: TTouchKeyboard
    AlignWithMargins = True
    Left = 10
    Top = 438
    Width = 965
    Height = 232
    Margins.Left = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alBottom
    GradientEnd = clSilver
    GradientStart = clGray
    Layout = 'Standard'
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 985
    Height = 29
    ButtonWidth = 27
    Caption = 'ToolBar1'
    Images = FrmMain.ImageListDB
    TabOrder = 36
    object tbAppend: TToolButton
      Left = 0
      Top = 0
      Caption = 'tbAppend'
      ImageIndex = 0
      OnClick = tbAppendClick
    end
    object TlBtnPost: TToolButton
      Left = 27
      Top = 0
      Caption = 'TlBtnPost'
      ImageIndex = 1
      OnClick = TlBtnPostClick
    end
    object tbEdit: TToolButton
      Left = 54
      Top = 0
      Caption = 'tbEdit'
      ImageIndex = 3
      OnClick = tbEditClick
    end
    object tbCancel: TToolButton
      Left = 81
      Top = 0
      Caption = 'tbCancel'
      ImageIndex = 5
      OnClick = tbCancelClick
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 680
    Top = 391
  end
end
