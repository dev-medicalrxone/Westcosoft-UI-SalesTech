object FrmAddUtility: TFrmAddUtility
  Left = 468
  Top = 136
  Caption = 'Utilidades'
  ClientHeight = 371
  ClientWidth = 434
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 434
    Height = 338
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Utilidad'
    end
    object Label2: TLabel
      Left = 176
      Top = 8
      Width = 47
      Height = 13
      Caption = 'Cantidad'
    end
    object Label3: TLabel
      Left = 304
      Top = 8
      Width = 31
      Height = 13
      Caption = 'Cargo'
    end
    object ComboBox1: TComboBox
      Left = 232
      Top = 72
      Width = 161
      Height = 21
      Style = csDropDownList
      TabOrder = 4
      TabStop = False
      Visible = False
    end
    object edit2: TEdit
      Left = 304
      Top = 27
      Width = 112
      Height = 21
      Alignment = taRightJustify
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Roboto Cn'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '0.00'
      OnChange = edit2Change
    end
    object Edit1: TEdit
      Left = 176
      Top = 27
      Width = 112
      Height = 21
      Alignment = taRightJustify
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Roboto Cn'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '0.00'
      OnChange = Edit1Change
      OnExit = Edit1Exit
      OnKeyPress = Edit1KeyPress
    end
    object TBUtilidad: TEdit
      Left = 8
      Top = 72
      Width = 152
      Height = 21
      TabOrder = 3
      OnExit = TBBuscarUtilidadExit
    end
    object TBBuscarUtilidad: TEdit
      Left = 8
      Top = 27
      Width = 152
      Height = 21
      TabOrder = 0
      OnExit = TBBuscarUtilidadExit
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 338
    Width = 434
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 1
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 275
      Top = 3
      Width = 75
      Height = 27
      Align = alRight
      Caption = 'OK'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 1
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 356
      Top = 3
      Width = 75
      Height = 27
      Align = alRight
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
      TabOrder = 1
    end
  end
end
