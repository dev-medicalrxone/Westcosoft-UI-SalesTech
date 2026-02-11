object FrmCheckOut: TFrmCheckOut
  Left = 92
  Top = 116
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Checkout'
  ClientHeight = 629
  ClientWidth = 683
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 56
    Width = 683
    Height = 336
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 21
      Top = 177
      Width = 121
      Height = 21
      Caption = 'TAX MUNICIPAL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBtnText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 46
      Top = 207
      Width = 96
      Height = 21
      Caption = 'TAX ESTATAL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBtnText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 96
      Top = 268
      Width = 46
      Height = 21
      Caption = 'TOTAL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBtnText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelRecibido: TLabel
      Left = 18
      Top = 18
      Width = 124
      Height = 32
      Caption = 'TENDERED'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBtnText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 26
      Top = 75
      Width = 116
      Height = 32
      Caption = 'GRATUITY'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBtnText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 15
      Top = 237
      Width = 127
      Height = 21
      Caption = 'TAX PROC. FOOD'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBtnText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnTip1: TSpeedButton
      Left = 91
      Top = 128
      Width = 71
      Height = 35
      Caption = '15%'
      OnClick = btnTip1Click
    end
    object btnTip2: TSpeedButton
      Left = 173
      Top = 128
      Width = 71
      Height = 35
      Caption = '18%'
      OnClick = btnTip2Click
    end
    object btnTip3: TSpeedButton
      Left = 255
      Top = 128
      Width = 71
      Height = 35
      Caption = '20%'
      OnClick = btnTip3Click
    end
    object btnNoTip: TSpeedButton
      Left = 9
      Top = 128
      Width = 71
      Height = 35
      Caption = '0%'
      OnClick = btnNoTipClick
    end
    object Label8: TLabel
      Left = 22
      Top = 304
      Width = 120
      Height = 21
      Caption = 'TOTAL WITH TIP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBtnText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TouchKeyboard1: TTouchKeyboard
      AlignWithMargins = True
      Left = 396
      Top = 6
      Width = 281
      Height = 324
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      GradientEnd = clSilver
      GradientStart = clGray
      Layout = 'NumPad'
    end
    object Edit4: TEdit
      Left = 159
      Top = 16
      Width = 167
      Height = 46
      Alignment = taRightJustify
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Roboto Cn'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '.00'
      OnChange = Edit4Change
      OnEnter = Edit4Enter
      OnExit = Edit4Exit
      OnKeyPress = Edit4KeyPress
    end
    object DBEdit1: TDBEdit
      Left = 159
      Top = 176
      Width = 167
      Height = 27
      Color = clBlack
      DataField = 'TAX'
      DataSource = DMMidas.DTSTransHead
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -16
      Font.Name = 'Roboto Cn'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 159
      Top = 206
      Width = 167
      Height = 27
      Color = clBlack
      DataField = 'TAX_ESTATAL'
      DataSource = DMMidas.DTSTransHead
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -16
      Font.Name = 'Roboto Cn'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 159
      Top = 267
      Width = 167
      Height = 27
      Color = clBlack
      DataField = 'TOTAL'
      DataSource = DMMidas.DTSTransHead
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -16
      Font.Name = 'Roboto Cn'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object EditTIP: TEdit
      Left = 159
      Top = 68
      Width = 167
      Height = 46
      Alignment = taRightJustify
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Roboto Cn'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '.00'
      OnChange = EditTIPChange
      OnEnter = Edit4Enter
      OnKeyPress = Edit4KeyPress
    end
    object DBEdit4: TDBEdit
      Left = 159
      Top = 236
      Width = 167
      Height = 27
      Color = clBlack
      DataField = 'TAX_PROCESSED_FOOD'
      DataSource = DMMidas.DTSTransHead
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -16
      Font.Name = 'Roboto Cn'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object EditTotalwTip: TEdit
      Left = 159
      Top = 300
      Width = 167
      Height = 29
      Alignment = taRightJustify
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Text = '0.00'
      OnChange = EditTotalwTipChange
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 683
    Height = 56
    Align = alTop
    TabOrder = 1
    object Button1: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 129
      Height = 48
      Align = alLeft
      Caption = '$1.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Roboto Cn'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 139
      Top = 4
      Width = 129
      Height = 48
      Align = alLeft
      Caption = '$5.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Roboto Cn'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = cxButton2Click
    end
    object Button3: TButton
      AlignWithMargins = True
      Left = 274
      Top = 4
      Width = 129
      Height = 48
      Align = alLeft
      Caption = '$10.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Roboto Cn'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = cxButton3Click
    end
    object Button4: TButton
      AlignWithMargins = True
      Left = 409
      Top = 4
      Width = 129
      Height = 48
      Align = alLeft
      Caption = '$20.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Roboto Cn'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = cxButton4Click
    end
    object Button5: TButton
      AlignWithMargins = True
      Left = 544
      Top = 4
      Width = 129
      Height = 48
      Align = alLeft
      Caption = '$50.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Roboto Cn'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = cxButton5Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 584
    Width = 683
    Height = 45
    Align = alBottom
    TabOrder = 2
    object ButtonClose: TButton
      AlignWithMargins = True
      Left = 573
      Top = 4
      Width = 106
      Height = 37
      Align = alRight
      Caption = 'CLOSE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 11
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = ButtonCloseClick
    end
    object Editemail: TEdit
      Left = 26
      Top = 10
      Width = 242
      Height = 21
      TabOrder = 1
      TextHint = 'email'
    end
    object btnManual: TButton
      AlignWithMargins = True
      Left = 461
      Top = 4
      Width = 106
      Height = 37
      Align = alRight
      Caption = 'Manual'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 11
      ParentFont = False
      TabOrder = 2
      TabStop = False
      Visible = False
      OnClick = btnManualClick
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 392
    Width = 683
    Height = 192
    Align = alClient
    TabOrder = 3
    object Label2: TLabel
      Left = 10
      Top = 47
      Width = 61
      Height = 13
      Caption = 'No. Recibos'
    end
    object Label5: TLabel
      Left = 254
      Top = 6
      Width = 32
      Height = 13
      Caption = 'Memo'
    end
    object seNoRecibos: TSpinEdit
      Left = 77
      Top = 41
      Width = 76
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 1
    end
    object CBFacturaRecibo: TCheckBox
      Left = 10
      Top = 18
      Width = 97
      Height = 17
      Caption = 'Factura'
      TabOrder = 1
    end
    object rgReceiptType: TRadioGroup
      Left = 13
      Top = 81
      Width = 175
      Height = 97
      Caption = 'Receipt Option'
      ItemIndex = 0
      Items.Strings = (
        'Print'
        'Email'
        'Text')
      TabOrder = 2
    end
    object MemoCheckout: TMemo
      AlignWithMargins = True
      Left = 314
      Top = 4
      Width = 365
      Height = 184
      TabStop = False
      Align = alRight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnChange = MemoCheckoutChange
    end
  end
end
