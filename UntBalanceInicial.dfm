object FrmBalanceInicial: TFrmBalanceInicial
  Left = 284
  Top = 180
  Caption = 'Balance Inicial o Ajuste de Cuenta (Credito Web)'
  ClientHeight = 193
  ClientWidth = 432
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 152
    Width = 432
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Label6: TLabel
      Left = 20
      Top = 9
      Width = 103
      Height = 13
      Caption = 'Campos Requeridos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 6
      Width = 8
      Height = 20
      Caption = '*'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 272
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'OK'
      DoubleBuffered = True
      ModalResult = 1
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
      ExplicitLeft = 208
      ExplicitTop = 6
      ExplicitHeight = 25
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 353
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Cancel = True
      Caption = 'Cancel'
      DoubleBuffered = True
      ModalResult = 2
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 1
      ExplicitLeft = 320
      ExplicitTop = 6
      ExplicitHeight = 25
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 432
    Height = 152
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 46
      Width = 53
      Height = 13
      Caption = 'CANTIDAD'
    end
    object Label2: TLabel
      Left = 24
      Top = 72
      Width = 34
      Height = 13
      Caption = 'FECHA'
    end
    object Label3: TLabel
      Left = 24
      Top = 96
      Width = 63
      Height = 13
      Caption = 'NO. CLIENTE'
    end
    object Label4: TLabel
      Left = 24
      Top = 120
      Width = 70
      Height = 13
      Caption = 'DESCRIPCION'
    end
    object Label5: TLabel
      Left = 24
      Top = 21
      Width = 62
      Height = 13
      Caption = 'TIPO TRANS.'
    end
    object Label8: TLabel
      Left = 227
      Top = 16
      Width = 8
      Height = 25
      Caption = '*'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 227
      Top = 43
      Width = 8
      Height = 25
      Caption = '*'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 227
      Top = 68
      Width = 8
      Height = 25
      Caption = '*'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 227
      Top = 92
      Width = 8
      Height = 25
      Caption = '*'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 403
      Top = 117
      Width = 8
      Height = 25
      Caption = '*'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 104
      Top = 40
      Width = 121
      Height = 21
      DataField = 'AMOUNT'
      DataSource = DMMidas.DSBalanceInicial
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 104
      Top = 66
      Width = 121
      Height = 21
      DataField = 'FECHA'
      DataSource = DMMidas.DSBalanceInicial
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 104
      Top = 90
      Width = 121
      Height = 21
      DataField = 'NUMEROCLIENTE'
      DataSource = DMMidas.DSBalanceInicial
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 104
      Top = 114
      Width = 297
      Height = 21
      DataField = 'REASON'
      DataSource = DMMidas.DSBalanceInicial
      TabOrder = 4
    end
    object ComboBox1: TComboBox
      Left = 104
      Top = 15
      Width = 121
      Height = 21
      TabOrder = 0
      OnExit = ComboBox1Exit
      Items.Strings = (
        'ABONO CREDIO'
        'DEBITO')
    end
  end
end
