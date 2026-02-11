object FrmBrowseInventory: TFrmBrowseInventory
  Left = 25
  Top = 20
  Caption = 'Browse Inventory'
  ClientHeight = 659
  ClientWidth = 972
  Color = clWindow
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 972
    Height = 577
    Align = alClient
    DataSource = DMMidas.DSInventarioPiso
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGOBARRA'
        Title.Caption = 'Barcode'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRIPCION'
        Title.Caption = 'Description'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTYINVENTARIO'
        Title.Caption = 'QTY INVENTORY'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CMAXINVENTARIO'
        Title.Caption = 'MAX INVENTORY'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CMININVENTARIO'
        Title.Caption = 'MIN INVENTORY'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COSTO'
        Title.Caption = 'COST'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECIO'
        Title.Caption = 'PRICE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPARTAMENTO'
        Title.Caption = 'DEPT.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUB_DEPARTAMENTO'
        Title.Caption = 'SUB DEPT.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESPECIAL'
        Title.Caption = 'SALE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMESPECIAL'
        Title.Caption = 'START SALE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TERMINAESPECIAL'
        Title.Caption = 'END SALE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PORCIENTODESCUENTO'
        Title.Caption = 'DISCOUNT %'
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
        FieldName = 'NUMEROSUPLIDOR'
        Title.Caption = 'SUPPLIER NO.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EDITAR_PRECIO'
        Title.Caption = 'EDIT PRICE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUCTNO'
        Title.Caption = 'PRODUCT NO.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GROUP_QTY'
        Title.Caption = 'GROUP QTY'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECIO_CAJA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTY_CAJA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCUENTO'
        Title.Caption = 'DISCOUNT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOODITEM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NONEBC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAXABLE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCDEPT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MOVIMIENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUPLIDOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUBDEPT'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 972
    Height = 41
    Align = alTop
    TabOrder = 1
    object Search: TEdit
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 249
      Height = 33
      Align = alLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'Search'
      OnEnter = SearchEnter
      OnExit = SearchExit
      OnKeyPress = SearchKeyPress
      ExplicitHeight = 29
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 618
    Width = 972
    Height = 41
    Align = alBottom
    TabOrder = 2
    object cxButton2: TButton
      AlignWithMargins = True
      Left = 834
      Top = 4
      Width = 134
      Height = 33
      Align = alRight
      Caption = 'Grabar Cambios'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = cxButton2Click
    end
    object DBNavigator1: TDBNavigator
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 240
      Height = 33
      DataSource = DMMidas.DSInventarioPiso
      Align = alLeft
      TabOrder = 1
    end
  end
end
