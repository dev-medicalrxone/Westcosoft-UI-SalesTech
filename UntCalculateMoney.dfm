object FrmCalculateTotals: TFrmCalculateTotals
  Left = 295
  Top = 173
  Caption = 'Calculate cash'
  ClientHeight = 268
  ClientWidth = 696
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 13
  object Label4: TLabel
    Left = 242
    Top = 47
    Width = 6
    Height = 13
    Caption = '$'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 696
    Height = 227
    Align = alClient
    TabOrder = 0
    object LabelUno: TLabel
      Left = 284
      Top = 21
      Width = 6
      Height = 13
      Caption = '$'
    end
    object Label1: TLabel
      Left = 72
      Top = 19
      Width = 67
      Height = 13
      Caption = 'ONE DOLLAR'
    end
    object Label5: TLabel
      Left = 64
      Top = 49
      Width = 75
      Height = 13
      Caption = 'TWO DOLLARS'
    end
    object LabelDos: TLabel
      Left = 284
      Top = 49
      Width = 6
      Height = 13
      Caption = '$'
    end
    object Label7: TLabel
      Left = 70
      Top = 105
      Width = 69
      Height = 13
      Caption = 'TEN DOLLARS'
    end
    object LabelCinco: TLabel
      Left = 284
      Top = 77
      Width = 6
      Height = 13
      Caption = '$'
    end
    object LabelTotal: TLabel
      Left = 437
      Top = 189
      Width = 32
      Height = 13
      Caption = 'TOTAL:'
    end
    object Label2: TLabel
      Left = 67
      Top = 77
      Width = 72
      Height = 13
      Caption = 'FIVE DOLLARS'
    end
    object Label6: TLabel
      Left = 49
      Top = 133
      Width = 90
      Height = 13
      Caption = 'TWENTY DOLLARS'
    end
    object LabelDiez: TLabel
      Left = 284
      Top = 105
      Width = 6
      Height = 13
      Caption = '$'
    end
    object LabelVeinte: TLabel
      Left = 284
      Top = 133
      Width = 6
      Height = 13
      Caption = '$'
    end
    object LabelCincuenta: TLabel
      Left = 284
      Top = 161
      Width = 6
      Height = 13
      Caption = '$'
    end
    object Label8: TLabel
      Left = 64
      Top = 161
      Width = 75
      Height = 13
      Caption = 'FIFTY DOLLARS'
    end
    object LabelCien: TLabel
      Left = 284
      Top = 189
      Width = 6
      Height = 13
      Caption = '$'
    end
    object Label9: TLabel
      Left = 10
      Top = 188
      Width = 129
      Height = 13
      Caption = 'ONE HUNDRED DOLLARS'
    end
    object LabelOneCent: TLabel
      Left = 413
      Top = 21
      Width = 58
      Height = 13
      Caption = 'ONE CENTS'
    end
    object LabelFiveCents: TLabel
      Left = 414
      Top = 49
      Width = 57
      Height = 13
      Caption = 'FIVE CENTS'
    end
    object LabelCincoCentavos: TLabel
      Left = 612
      Top = 49
      Width = 6
      Height = 13
      Caption = '$'
    end
    object LabelUnCentavo: TLabel
      Left = 612
      Top = 21
      Width = 6
      Height = 13
      Caption = '$'
    end
    object LabelDiezCentavos: TLabel
      Left = 612
      Top = 77
      Width = 6
      Height = 13
      Caption = '$'
    end
    object LabelTenCents: TLabel
      Left = 417
      Top = 77
      Width = 54
      Height = 13
      Caption = 'TEN CENTS'
    end
    object LabelTwentyFiveCents: TLabel
      Left = 371
      Top = 105
      Width = 100
      Height = 13
      Caption = 'TWENTY FIVE CENTS'
    end
    object LabellVeinticincoCent: TLabel
      Left = 612
      Top = 105
      Width = 6
      Height = 13
      Caption = '$'
    end
    object EditTotal: TEdit
      Left = 479
      Top = 186
      Width = 124
      Height = 21
      Alignment = taRightJustify
      TabOrder = 11
      Text = '0.00'
      OnChange = EditTotalChange
      OnKeyPress = SEUnoKeyPress
    end
    object SEUno: TEdit
      Left = 155
      Top = 18
      Width = 121
      Height = 21
      Alignment = taRightJustify
      TabOrder = 0
      Text = '0'
      OnChange = SEUnoChange
      OnKeyPress = SEUnoKeyPress
    end
    object SEDos: TEdit
      Left = 155
      Top = 46
      Width = 121
      Height = 21
      Alignment = taRightJustify
      TabOrder = 1
      Text = '0'
      OnChange = SEDosChange
      OnKeyPress = SEUnoKeyPress
    end
    object SECinco: TEdit
      Left = 155
      Top = 74
      Width = 121
      Height = 21
      Alignment = taRightJustify
      TabOrder = 2
      Text = '0'
      OnChange = SECincoChange
      OnKeyPress = SEUnoKeyPress
    end
    object SEDiez: TEdit
      Left = 155
      Top = 102
      Width = 121
      Height = 21
      Alignment = taRightJustify
      TabOrder = 3
      Text = '0'
      OnChange = SEDiezChange
      OnKeyPress = SEUnoKeyPress
    end
    object SEVeinte: TEdit
      Left = 155
      Top = 130
      Width = 121
      Height = 21
      Alignment = taRightJustify
      TabOrder = 4
      Text = '0'
      OnChange = SEVeinteChange
      OnKeyPress = SEUnoKeyPress
    end
    object SECincuenta: TEdit
      Left = 155
      Top = 158
      Width = 121
      Height = 21
      Alignment = taRightJustify
      TabOrder = 5
      Text = '0'
      OnChange = SECincuentaChange
      OnKeyPress = SEUnoKeyPress
    end
    object SECien: TEdit
      Left = 155
      Top = 186
      Width = 121
      Height = 21
      Alignment = taRightJustify
      TabOrder = 6
      Text = '0'
      OnChange = SECienChange
      OnKeyPress = SEUnoKeyPress
    end
    object SEUnCentavo: TEdit
      Left = 482
      Top = 18
      Width = 121
      Height = 21
      Alignment = taRightJustify
      TabOrder = 7
      Text = '0'
      OnChange = SEUnCentavoChange
      OnKeyPress = SEUnoKeyPress
    end
    object SECincoCentavos: TEdit
      Left = 482
      Top = 46
      Width = 121
      Height = 21
      Alignment = taRightJustify
      TabOrder = 8
      Text = '0'
      OnChange = SECincoCentavosChange
      OnKeyPress = SEUnoKeyPress
    end
    object SEDiezCentavos: TEdit
      Left = 482
      Top = 74
      Width = 121
      Height = 21
      Alignment = taRightJustify
      TabOrder = 9
      Text = '0'
      OnChange = SEDiezCentavosChange
      OnKeyPress = SEUnoKeyPress
    end
    object SEVeinticincoCent: TEdit
      Left = 482
      Top = 102
      Width = 121
      Height = 21
      Alignment = taRightJustify
      TabOrder = 10
      Text = '0'
      OnChange = SEVeinticincoCentChange
      OnKeyPress = SEUnoKeyPress
    end
    object RichEdit1: TRichEdit
      Left = 175
      Top = 227
      Width = 185
      Height = 89
      Lines.Strings = (
        'RichEdit1')
      TabOrder = 12
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 227
    Width = 696
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 617
      Top = 4
      Width = 75
      Height = 33
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
    object Button1: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'Print'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
  end
end
