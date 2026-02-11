object FrmEditarInventario: TFrmEditarInventario
  Left = 80
  Top = 129
  Caption = 'Editar Inventario'
  ClientHeight = 576
  ClientWidth = 780
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 780
    Height = 535
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRIPCION'
        Width = 225
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
        FieldName = 'PRECIOREAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COSTO'
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
        FieldName = 'QTYINVENTARIO'
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
        FieldName = 'DEPARTAMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOTE'
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
        FieldName = 'ESPECIAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ULTIMOCAMBIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PORCIENTODESCUENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EDITAR_PRECIO'
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
        FieldName = 'SUPLIDOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCDEPT'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 535
    Width = 780
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitWidth = 836
    object DBNavigator1: TDBNavigator
      Left = 168
      Top = 8
      Width = 240
      Height = 25
      DataSource = DMMidas.DSInventarioPiso
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 8
      Top = 8
      Width = 145
      Height = 21
      TabOrder = 1
      OnChange = Edit1Change
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 663
      Top = 4
      Width = 113
      Height = 33
      Align = alRight
      Caption = 'Grabar Cambios'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
      ExplicitLeft = 424
      ExplicitTop = 8
      ExplicitHeight = 25
    end
  end
end
