object FMercanciaRecibida: TFMercanciaRecibida
  Left = 127
  Top = 109
  Width = 517
  Height = 271
  Caption = 'Informac'#243'n del Medicamento Reicbido'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 80
    Width = 61
    Height = 13
    Caption = 'Precio Venta'
  end
  object Label2: TLabel
    Left = 96
    Top = 80
    Width = 27
    Height = 13
    Caption = 'Costo'
  end
  object Label3: TLabel
    Left = 184
    Top = 80
    Width = 25
    Height = 13
    Caption = 'AWP'
  end
  object Label4: TLabel
    Left = 272
    Top = 80
    Width = 68
    Height = 13
    Caption = 'Cantidad Max.'
  end
  object Label5: TLabel
    Left = 356
    Top = 80
    Width = 67
    Height = 13
    Caption = 'Cantidad Mini.'
  end
  object Label6: TLabel
    Left = 8
    Top = 160
    Width = 125
    Height = 13
    Caption = 'Cantidad Metrica Recibida'
  end
  object Label7: TLabel
    Left = 153
    Top = 160
    Width = 47
    Height = 13
    Caption = 'Inventario'
  end
  object Label8: TLabel
    Left = 8
    Top = 32
    Width = 64
    Height = 13
    Caption = 'Medicamento'
  end
  object Label9: TLabel
    Left = 352
    Top = 33
    Width = 23
    Height = 13
    Caption = 'NDC'
  end
  object Label10: TLabel
    Left = 7
    Top = 122
    Width = 49
    Height = 13
    Caption = 'Expiracion'
  end
  object Label11: TLabel
    Left = 96
    Top = 122
    Width = 21
    Height = 13
    Caption = 'Lote'
  end
  object Label12: TLabel
    Left = 239
    Top = 160
    Width = 113
    Height = 13
    Caption = 'Cantidad Nueva en Inv.'
  end
  object Label13: TLabel
    Left = 304
    Top = 33
    Width = 21
    Height = 13
    Caption = 'Tipo'
  end
  object Label14: TLabel
    Left = 367
    Top = 160
    Width = 27
    Height = 13
    Caption = 'Costo'
  end
  object Label15: TLabel
    Left = 439
    Top = 33
    Width = 39
    Height = 13
    Caption = 'Tama'#241'o'
  end
  object DBEdit1: TDBEdit
    Left = 352
    Top = 48
    Width = 81
    Height = 21
    DataField = 'NDC'
    ReadOnly = True
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit
    Left = 6
    Top = 96
    Width = 75
    Height = 21
    DataField = 'PRECIOVENTA'
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object DBEdit3: TDBEdit
    Left = 94
    Top = 96
    Width = 75
    Height = 21
    DataField = 'Costo'
    TabOrder = 5
    OnExit = DBEdit3Exit
    OnKeyPress = FormKeyPress
  end
  object DBEdit4: TDBEdit
    Left = 182
    Top = 96
    Width = 75
    Height = 21
    DataField = 'AWP'
    TabOrder = 6
    OnKeyPress = FormKeyPress
  end
  object DBEdit5: TDBEdit
    Left = 270
    Top = 96
    Width = 75
    Height = 21
    DataField = 'CANT_MAXIMA'
    TabOrder = 7
    OnKeyPress = FormKeyPress
  end
  object DBEdit6: TDBEdit
    Left = 356
    Top = 96
    Width = 75
    Height = 21
    DataField = 'CANT_MINIMA'
    TabOrder = 8
    OnKeyPress = FormKeyPress
  end
  object DBEdit7: TDBEdit
    Left = 151
    Top = 176
    Width = 75
    Height = 21
    TabStop = False
    DataField = 'CANTIDAD_INVENTARIO'
    ReadOnly = True
    TabOrder = 13
    OnKeyPress = FormKeyPress
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 509
    Height = 25
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
    Align = alTop
    Flat = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 14
  end
  object DBEdit8: TDBEdit
    Left = 6
    Top = 48
    Width = 283
    Height = 21
    DataField = 'MedicamentoStr'
    ReadOnly = True
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object DBEdit9: TDBEdit
    Left = 6
    Top = 136
    Width = 75
    Height = 21
    DataField = 'FECHA_EXPIRACION'
    TabOrder = 9
    OnKeyPress = FormKeyPress
  end
  object DBEdit10: TDBEdit
    Left = 94
    Top = 136
    Width = 75
    Height = 21
    DataField = 'Lote'
    TabOrder = 10
    OnKeyPress = FormKeyPress
  end
  object EditNuevoInventario: TEdit
    Left = 238
    Top = 176
    Width = 121
    Height = 21
    TabStop = False
    ReadOnly = True
    TabOrder = 15
  end
  object EditCantidadRecibida: TEdit
    Left = 8
    Top = 176
    Width = 129
    Height = 21
    TabOrder = 11
    OnChange = EditCantidadRecibidaChange
    OnKeyPress = FormKeyPress
  end
  object DBEdit11: TDBEdit
    Left = 304
    Top = 48
    Width = 41
    Height = 21
    DataField = 'Tipo'
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object EditCosto: TEdit
    Left = 368
    Top = 176
    Width = 89
    Height = 21
    ReadOnly = True
    TabOrder = 12
    Text = '0'
    OnKeyPress = FormKeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 203
    Width = 509
    Height = 41
    Align = alBottom
    TabOrder = 16
    object Label16: TLabel
      Left = 16
      Top = 10
      Width = 26
      Height = 13
      Caption = 'NDC:'
    end
    object LabelNDC: TLabel
      Left = 48
      Top = 10
      Width = 23
      Height = 13
      Caption = 'NDC'
    end
    object BitBtn1: TBitBtn
      Left = 424
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkClose
    end
  end
  object DBEdit12: TDBEdit
    Left = 439
    Top = 48
    Width = 58
    Height = 21
    DataField = 'METRICSIZE'
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
end
