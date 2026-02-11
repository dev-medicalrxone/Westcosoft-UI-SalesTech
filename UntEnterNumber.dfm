object FrmInputNumber: TFrmInputNumber
  Left = 588
  Top = 182
  Caption = 'Enter Number'
  ClientHeight = 384
  ClientWidth = 313
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 313
    Height = 41
    Align = alTop
    TabOrder = 0
    object EditNumber: TEdit
      AlignWithMargins = True
      Left = 6
      Top = 4
      Width = 301
      Height = 33
      Margins.Left = 5
      Margins.Right = 5
      Align = alTop
      Alignment = taRightJustify
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = '0.00'
      OnChange = EditNumberChange
      OnExit = EditNumberExit
      OnKeyPress = EditNumberKeyPress
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 334
    Width = 313
    Height = 50
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 303
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 153
      Top = 4
      Width = 75
      Height = 42
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
      Left = 234
      Top = 4
      Width = 75
      Height = 42
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
      TabStop = False
    end
    object CheckBox1: TCheckBox
      Left = 15
      Top = 7
      Width = 89
      Height = 17
      Caption = 'Consider Qty.'
      TabOrder = 2
      Visible = False
    end
    object cbChangeInventoryPrice: TCheckBox
      Left = 15
      Top = 24
      Width = 133
      Height = 17
      Caption = 'Change Inventry Price'
      TabOrder = 3
      Visible = False
    end
  end
  object TouchKeyboard1: TTouchKeyboard
    AlignWithMargins = True
    Left = 5
    Top = 102
    Width = 303
    Height = 227
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    GradientEnd = clSilver
    GradientStart = clGray
    Layout = 'NumPad'
    ExplicitTop = 46
    ExplicitHeight = 252
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 313
    Height = 56
    Align = alTop
    TabOrder = 3
    Visible = False
    object Label1: TLabel
      Left = 7
      Top = 2
      Width = 41
      Height = 13
      Caption = 'Amount'
    end
    object Label2: TLabel
      Left = 174
      Top = 2
      Width = 48
      Height = 13
      Caption = 'TipAdjust'
    end
    object Edit1: TEdit
      AlignWithMargins = True
      Left = 7
      Top = 18
      Width = 131
      Height = 33
      Margins.Left = 5
      Margins.Right = 5
      Alignment = taRightJustify
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = '0.00'
      OnChange = EditNumberChange
      OnExit = EditNumberExit
      OnKeyPress = EditNumberKeyPress
    end
    object Edit2: TEdit
      AlignWithMargins = True
      Left = 176
      Top = 18
      Width = 131
      Height = 33
      Margins.Left = 5
      Margins.Right = 5
      Alignment = taRightJustify
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = '0.00'
      OnChange = EditNumberChange
      OnExit = EditNumberExit
      OnKeyPress = EditNumberKeyPress
    end
  end
end
