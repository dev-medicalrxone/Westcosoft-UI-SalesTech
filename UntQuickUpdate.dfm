object FrmQuickUpdate: TFrmQuickUpdate
  Left = 370
  Top = 101
  Caption = 'Quick entry...'
  ClientHeight = 488
  ClientWidth = 343
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 343
    Height = 29
    Caption = 'ToolBar1'
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    Images = FrmMain.Images
    TabOrder = 0
    object EditBuscarMedicamento: TEdit
      Left = 0
      Top = 0
      Width = 177
      Height = 22
      CharCase = ecUpperCase
      TabOrder = 0
      OnEnter = EditBuscarMedicamentoEnter
      OnExit = EditBuscarMedicamentoExit
      OnKeyPress = EditBuscarMedicamentoKeyPress
    end
    object ToolButton1: TToolButton
      Left = 177
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 29
      OnClick = EditBuscarMedicamentoExit
    end
    object ToolButton2: TToolButton
      Left = 200
      Top = 0
      Width = 16
      Caption = 'ToolButton2'
      ImageIndex = 202
      Style = tbsSeparator
    end
    object ToolButtonAdd: TToolButton
      Left = 216
      Top = 0
      Caption = 'ToolButtonAdd'
      ImageIndex = 0
      OnClick = ToolButtonAddClick
    end
    object ToolButtonSave: TToolButton
      Left = 239
      Top = 0
      Caption = 'ToolButtonSave'
      ImageIndex = 5
      OnClick = ToolButtonSaveClick
    end
    object ToolButton3: TToolButton
      Left = 262
      Top = 0
      Caption = 'ToolButton3'
      ImageIndex = 3
      OnClick = ToolButton3Click
    end
    object ToolButton5: TToolButton
      Left = 285
      Top = 0
      Caption = 'ToolButton5'
      ImageIndex = 207
      OnClick = ToolButton5Click
    end
    object ToolButton4: TToolButton
      Left = 308
      Top = 0
      Caption = 'ToolButton4'
      ImageIndex = 201
      OnClick = ToolButton4Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 447
    Width = 343
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 264
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = '&Close'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 8
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 29
    Width = 343
    Height = 281
    Align = alTop
    Caption = 'Quick Entry'
    TabOrder = 2
    object Label2: TLabel
      Left = 24
      Top = 18
      Width = 43
      Height = 13
      Caption = 'Product:'
    end
    object DBText1: TDBText
      Left = 70
      Top = 18
      Width = 277
      Height = 17
      DataField = 'DESCRIPCION'
      DataSource = DMMidas.DSInventarioPiso
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 81
      Top = 59
      Width = 34
      Height = 13
      Caption = 'Precio:'
    end
    object Label4: TLabel
      Left = 82
      Top = 86
      Width = 33
      Height = 13
      Caption = 'Costo:'
    end
    object Label5: TLabel
      Left = 87
      Top = 137
      Width = 28
      Height = 13
      Caption = 'Dept:'
    end
    object SpeedButton1: TSpeedButton
      Left = 286
      Top = 134
      Width = 22
      Height = 21
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 286
      Top = 161
      Width = 22
      Height = 21
      Caption = '...'
      OnClick = SpeedButton2Click
    end
    object Label6: TLabel
      Left = 76
      Top = 164
      Width = 39
      Height = 13
      Caption = 'Suplier:'
    end
    object Label7: TLabel
      Left = 35
      Top = 217
      Width = 80
      Height = 13
      Caption = 'Entre Cantidad:'
    end
    object Label1: TLabel
      Left = 64
      Top = 245
      Width = 51
      Height = 13
      Caption = 'Inventory:'
    end
    object Label12: TLabel
      Left = 26
      Top = 191
      Width = 89
      Height = 13
      Caption = 'Fecha Expiraci'#243'n:'
    end
    object Label13: TLabel
      Left = 89
      Top = 111
      Width = 26
      Height = 13
      Caption = 'AWP:'
    end
    object Bevel1: TBevel
      Left = 14
      Top = 37
      Width = 329
      Height = 5
    end
    object DBEdit1: TDBEdit
      Left = 128
      Top = 56
      Width = 152
      Height = 21
      DataField = 'PRECIO'
      DataSource = DMMidas.DSInventarioPiso
      TabOrder = 0
      OnKeyPress = EditBuscarMedicamentoKeyPress
    end
    object DBEdit2: TDBEdit
      Left = 128
      Top = 83
      Width = 152
      Height = 21
      DataField = 'COSTO'
      DataSource = DMMidas.DSInventarioPiso
      TabOrder = 1
      OnKeyPress = EditBuscarMedicamentoKeyPress
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 128
      Top = 134
      Width = 152
      Height = 21
      DataField = 'DESCDEPT'
      DataSource = DMMidas.DSInventarioPiso
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnKeyPress = EditBuscarMedicamentoKeyPress
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 128
      Top = 161
      Width = 152
      Height = 21
      DataField = 'Suplidor'
      DataSource = DMMidas.DSInventarioPiso
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyPress = EditBuscarMedicamentoKeyPress
    end
    object EditQty: TEdit
      Left = 128
      Top = 214
      Width = 152
      Height = 21
      TabOrder = 6
      OnExit = EditQtyExit
      OnKeyPress = EditBuscarMedicamentoKeyPress
    end
    object DBEdit5: TDBEdit
      Left = 128
      Top = 242
      Width = 152
      Height = 21
      Color = clBtnFace
      DataField = 'QTYINVENTARIO'
      DataSource = DMMidas.DSInventarioPiso
      ReadOnly = True
      TabOrder = 7
      OnKeyPress = EditBuscarMedicamentoKeyPress
    end
    object DBEdit8: TDBEdit
      Left = 128
      Top = 108
      Width = 152
      Height = 21
      DataField = 'RBP'
      DataSource = DMMidas.DSInventarioPiso
      TabOrder = 2
      OnKeyPress = EditBuscarMedicamentoKeyPress
    end
    object cxDBDateEdit3: TDBEdit
      Left = 128
      Top = 188
      Width = 152
      Height = 21
      DataField = 'FECHA_EXPIRACION'
      DataSource = DMMidas.DSInventarioPiso
      TabOrder = 5
      OnKeyPress = EditBuscarMedicamentoKeyPress
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 310
    Width = 343
    Height = 137
    Align = alClient
    Caption = 'Especiales'
    TabOrder = 3
    object Label8: TLabel
      Left = 40
      Top = 18
      Width = 78
      Height = 13
      Caption = 'Precio Especial:'
    end
    object Label9: TLabel
      Left = 21
      Top = 45
      Width = 97
      Height = 13
      Caption = 'Comienza Especial:'
    end
    object Label11: TLabel
      Left = 39
      Top = 76
      Width = 86
      Height = 13
      Caption = 'Termina Especial:'
    end
    object Label10: TLabel
      Left = 26
      Top = 107
      Width = 42
      Height = 13
      Caption = 'Barcode'
    end
    object Bevel3: TBevel
      Left = 9
      Top = 95
      Width = 316
      Height = 3
    end
    object DBEdit3: TDBEdit
      Left = 128
      Top = 15
      Width = 152
      Height = 21
      DataField = 'ESPECIAL'
      DataSource = DMMidas.DSInventarioPiso
      TabOrder = 0
      OnKeyPress = EditBuscarMedicamentoKeyPress
    end
    object DBEdit9: TDBEdit
      Left = 128
      Top = 104
      Width = 152
      Height = 21
      DataField = 'CODIGOBARRA'
      TabOrder = 3
      OnKeyPress = EditBuscarMedicamentoKeyPress
    end
    object cxDBDateEdit1: TDBEdit
      Left = 128
      Top = 42
      Width = 152
      Height = 21
      DataField = 'COMESPECIAL'
      DataSource = DMMidas.DSInventarioPiso
      TabOrder = 1
      OnKeyPress = EditBuscarMedicamentoKeyPress
    end
    object cxDBDateEdit2: TDBEdit
      Left = 128
      Top = 69
      Width = 152
      Height = 21
      DataField = 'TERMINAESPECIAL'
      DataSource = DMMidas.DSInventarioPiso
      TabOrder = 2
      OnKeyPress = EditBuscarMedicamentoKeyPress
    end
  end
end
