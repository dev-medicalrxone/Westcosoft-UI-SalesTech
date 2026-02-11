object FrmGropuProducts: TFrmGropuProducts
  Left = 133
  Top = 105
  Caption = 'Agrupar productos'
  ClientHeight = 409
  ClientWidth = 857
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
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 24
    Width = 857
    Height = 41
    Align = alTop
    TabOrder = 0
    object LabelMedicamento: TLabel
      Left = 6
      Top = 13
      Width = 133
      Height = 16
      Caption = 'LabelMedicamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelBarcode: TLabel
      Left = 541
      Top = 13
      Width = 60
      Height = 16
      Caption = 'Barcode'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 857
    Height = 344
    Align = alClient
    DataSource = DMMidas.DSGroup
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCRIPCION'
        Title.Caption = 'Producto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGOBARRA'
        Title.Caption = 'Barcode'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COSTO'
        Title.Caption = 'Costo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECIO'
        Title.Caption = 'Precio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPARTAMENTO'
        Title.Caption = 'Departamento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUB_DEPARTAMENTO'
        Title.Caption = 'Sub Dept.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESPECIAL'
        Title.Caption = 'Especial'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMESPECIAL'
        Title.Caption = 'Comienza'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TERMINAESPECIAL'
        Title.Caption = 'Termina'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOTE'
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
        FieldName = 'PRODUCTNO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GROUP_PRODUCTNO'
        Visible = True
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 857
    Height = 24
    Caption = 'ToolBar1'
    TabOrder = 2
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = '+'
      ImageIndex = 0
      OnClick = BtnInsertRecordClick
    end
    object ToolButton2: TToolButton
      Left = 23
      Top = 0
      Caption = '-'
      ImageIndex = 1
      OnClick = BtnDeleteRecordClick
    end
  end
end
