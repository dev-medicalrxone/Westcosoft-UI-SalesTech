object FrmSearchInv2: TFrmSearchInv2
  Left = 127
  Top = 68
  BorderIcons = []
  Caption = 'Buscar Productos'
  ClientHeight = 613
  ClientWidth = 959
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 959
    Height = 30
    Align = alTop
    TabOrder = 2
    object Label2: TLabel
      Left = 8
      Top = 2
      Width = 109
      Height = 30
      Caption = 'PRODUCTO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 384
      Top = 0
      Width = 88
      Height = 30
      Caption = 'ESPECIAL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 507
      Top = 0
      Width = 71
      Height = 30
      Caption = 'PRECIO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 613
      Top = 0
      Width = 98
      Height = 30
      Caption = 'ON HAND'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 378
    Width = 959
    Height = 235
    Align = alBottom
    Caption = 'Keyboard'
    TabOrder = 3
    object TouchKeyboard1: TTouchKeyboard
      Left = 2
      Top = 15
      Width = 955
      Height = 218
      Align = alClient
      GradientEnd = clSilver
      GradientStart = clGray
      Layout = 'Standard'
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 959
    Height = 41
    Align = alTop
    TabOrder = 1
    object EditSearchProd: TEdit
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 951
      Height = 33
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnEnter = EditSearchProdEnter
      OnExit = EditSearchProdExit
      OnKeyPress = EditSearchProdKeyPress
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 71
    Width = 959
    Height = 307
    Align = alClient
    TabOrder = 0
    object DBCtrlGrid1: TDBCtrlGrid
      Left = 8
      Top = 6
      Width = 777
      Height = 295
      DataSource = DMMidas.DSInventarioPiso
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      PanelHeight = 59
      PanelWidth = 760
      ParentFont = False
      TabOrder = 0
      RowCount = 5
      SelectedColor = clWhite
      OnKeyPress = DBCtrlGrid1KeyPress
      object DBText1: TDBText
        Left = 8
        Top = 31
        Width = 145
        Height = 18
        DataField = 'CODIGOBARRA'
        DataSource = DMMidas.DSInventarioPiso
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 8
        Top = 5
        Width = 363
        Height = 28
        DataField = 'DESCRIPCION'
        DataSource = DMMidas.DSInventarioPiso
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 377
        Top = 0
        Width = 87
        Height = 30
        Alignment = taRightJustify
        DataField = 'ESPECIAL'
        DataSource = DMMidas.DSInventarioPiso
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 489
        Top = 0
        Width = 81
        Height = 30
        Alignment = taRightJustify
        DataField = 'PRECIO'
        DataSource = DMMidas.DSInventarioPiso
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 646
        Top = 0
        Width = 57
        Height = 30
        Alignment = taCenter
        DataField = 'QTYINVENTARIO'
        DataSource = DMMidas.DSInventarioPiso
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText6: TDBText
        Left = 159
        Top = 31
        Width = 145
        Height = 18
        DataField = 'PRODUCT_CLASSIFICATION'
        DataSource = DMMidas.DSInventarioPiso
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
    end
    object BtnOK: TBitBtn
      Left = 802
      Top = 6
      Width = 145
      Height = 39
      Caption = 'OK'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 1
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
    object BitBtn4: TBitBtn
      Left = 802
      Top = 56
      Width = 145
      Height = 39
      Cancel = True
      Caption = 'Cancel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 2
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 802
      Top = 106
      Width = 145
      Height = 39
      Cancel = True
      Caption = 'NEXT'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 802
      Top = 156
      Width = 145
      Height = 39
      Cancel = True
      Caption = 'PRIOR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn2Click
    end
    object BitBtn5: TBitBtn
      Left = 802
      Top = 208
      Width = 145
      Height = 39
      Cancel = True
      Caption = 'AGRUPAR '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn5Click
    end
    object BitBtn3: TBitBtn
      Left = 802
      Top = 257
      Width = 145
      Height = 39
      Cancel = True
      Caption = 'EDITAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn3Click
    end
  end
end
