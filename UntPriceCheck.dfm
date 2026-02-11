object FrmPriceCheck: TFrmPriceCheck
  Left = 282
  Top = 212
  BorderStyle = bsDialog
  Caption = 'Verificar precios'
  ClientHeight = 235
  ClientWidth = 568
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 568
    Height = 197
    Align = alClient
    DataSource = DMMidas.DSInventarioPiso
    Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGOBARRA'
        Title.Caption = 'UPC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRIPCION'
        Width = 259
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECIO'
        Title.Alignment = taRightJustify
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESPECIAL'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTYINVENTARIO'
        Title.Alignment = taRightJustify
        Title.Caption = 'CANTIDAD'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 197
    Width = 568
    Height = 38
    Align = alBottom
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 1
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 490
      Top = 3
      Width = 75
      Height = 32
      Align = alRight
      Caption = 'OK'
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 1
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 448
      ExplicitTop = 6
      ExplicitHeight = 25
    end
  end
end
