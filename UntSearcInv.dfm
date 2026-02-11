object FrmSearchInv2: TFrmSearchInv2
  Left = 146
  Top = 117
  Width = 720
  Height = 502
  Caption = 'Buscar Productos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 427
    Width = 712
    Height = 41
    Align = alBottom
    TabOrder = 0
  end
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 0
    Top = 41
    Width = 712
    Height = 386
    Align = alClient
    ColCount = 1
    DataSource = DMMidas.DSInventarioPiso
    PanelHeight = 38
    PanelWidth = 695
    TabOrder = 1
    RowCount = 10
    SelectedColor = clWhite
    object DBText1: TDBText
      Left = 16
      Top = 11
      Width = 97
      Height = 17
      DataField = 'CODIGOBARRA'
      DataSource = DMMidas.DSInventarioPiso
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 128
      Top = 11
      Width = 249
      Height = 17
      DataField = 'DESCRIPCION'
      DataSource = DMMidas.DSInventarioPiso
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 384
      Top = 11
      Width = 57
      Height = 17
      DataField = 'ESPECIAL'
      DataSource = DMMidas.DSInventarioPiso
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 456
      Top = 11
      Width = 57
      Height = 17
      DataField = 'PRECIO'
      DataSource = DMMidas.DSInventarioPiso
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 520
      Top = 11
      Width = 57
      Height = 17
      DataField = 'QTYINVENTARIO'
      DataSource = DMMidas.DSInventarioPiso
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 600
      Top = 11
      Width = 57
      Height = 17
      DataField = 'MOVIMIENTO'
      DataSource = DMMidas.DSInventarioPiso
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 712
    Height = 41
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 22
      Height = 13
      Caption = 'UPC'
    end
    object Label2: TLabel
      Left = 128
      Top = 24
      Width = 61
      Height = 13
      Caption = 'PRODUCTO'
    end
    object Label3: TLabel
      Left = 384
      Top = 24
      Width = 51
      Height = 13
      Caption = 'ESPECIAL'
    end
  end
end
