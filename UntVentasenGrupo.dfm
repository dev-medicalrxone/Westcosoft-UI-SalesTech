object FrmGroupSales: TFrmGroupSales
  Left = 146
  Top = 101
  Caption = 'Venta de productos en grupo'
  ClientHeight = 592
  ClientWidth = 789
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
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 789
    Height = 65
    Align = alTop
    TabOrder = 0
    object Bevel1: TBevel
      Left = 8
      Top = 27
      Width = 737
      Height = 4
    end
    object EditSearch: TEdit
      Left = 8
      Top = 37
      Width = 338
      Height = 21
      TabOrder = 0
      TextHint = 'Search'
      OnExit = EditSearchExit
      OnKeyPress = EditSearchKeyPress
    end
    object RadioButtonGroup: TRadioButton
      Left = 8
      Top = 8
      Width = 129
      Height = 17
      Caption = 'VENTA POR GRUPO'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnKeyPress = EditSearchKeyPress
    end
    object RadioButtonCaja: TRadioButton
      Left = 144
      Top = 8
      Width = 113
      Height = 17
      Caption = 'VENTA POR CAJA'
      TabOrder = 2
      Visible = False
      OnKeyPress = EditSearchKeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 789
    Height = 486
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 35
      Width = 50
      Height = 13
      Caption = 'Cantidad:'
    end
    object Label2: TLabel
      Left = 296
      Top = 37
      Width = 31
      Height = 13
      Caption = 'Precio'
    end
    object DBText1: TDBText
      Left = 11
      Top = 8
      Width = 274
      Height = 17
      DataField = 'DESCRIPCION'
      DataSource = DMMidas.DSInventarioPiso
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 160
      Top = 35
      Width = 74
      Height = 13
      Caption = 'Cantidad Total'
    end
    object Bevel2: TBevel
      Left = 8
      Top = 28
      Width = 375
      Height = 4
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 193
      Width = 787
      Height = 292
      Align = alBottom
      Caption = 'Keyboard'
      TabOrder = 0
      object TouchKeyboard1: TTouchKeyboard
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 777
        Height = 269
        Align = alClient
        GradientEnd = clSilver
        GradientStart = clGray
        Layout = 'Standard'
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 96
      Width = 787
      Height = 97
      Align = alBottom
      DataSource = DMMidas.DSTransaction
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'UPC'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODDESCRIPTION'
          Title.Caption = 'PRODUCT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRICE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTY'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Visible = True
        end>
    end
    object cxSpinEdit1: TSpinEdit
      Left = 24
      Top = 51
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 0
      OnKeyPress = EditSearchKeyPress
    end
    object cxSpinEditCantTotal: TSpinEdit
      Left = 160
      Top = 51
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 3
      Value = 0
      OnKeyPress = EditSearchKeyPress
    end
    object cxCurrencyEdit1: TEdit
      Left = 296
      Top = 51
      Width = 121
      Height = 21
      TabOrder = 4
      OnChange = cxCurrencyEdit1Change
      OnKeyPress = EditSearchKeyPress
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 551
    Width = 789
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TButton
      AlignWithMargins = True
      Left = 710
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Close'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 11
      ParentFont = False
      TabOrder = 0
    end
  end
end
