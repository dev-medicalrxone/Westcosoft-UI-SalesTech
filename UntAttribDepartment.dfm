object frmDepartmentAttributes: TfrmDepartmentAttributes
  Left = 0
  Top = 0
  Caption = 'Department Attributes'
  ClientHeight = 331
  ClientWidth = 538
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object lblTitle: TLabel
    Left = 24
    Top = 6
    Width = 465
    Height = 25
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 33
    Top = 37
    Width = 497
    Height = 154
    Enabled = False
    TabOrder = 0
    object Label5: TLabel
      Left = 304
      Top = 73
      Width = 21
      Height = 15
      Caption = 'Age'
    end
    object chkAlwDisc: TCheckBox
      Left = 24
      Top = 24
      Width = 102
      Height = 17
      Caption = 'AlwDisc'
      TabOrder = 0
    end
    object chkROUND: TCheckBox
      Left = 24
      Top = 47
      Width = 102
      Height = 17
      Caption = 'Round'
      TabOrder = 1
    end
    object chkNLINE: TCheckBox
      Left = 24
      Top = 70
      Width = 102
      Height = 17
      Caption = 'Next Line'
      TabOrder = 2
    end
    object chkNonRefund: TCheckBox
      Left = 24
      Top = 93
      Width = 102
      Height = 17
      Caption = 'Non Refund'
      TabOrder = 3
    end
    object chkPepSpray: TCheckBox
      Left = 24
      Top = 116
      Width = 102
      Height = 17
      Caption = 'Pepper Spray'
      TabOrder = 4
    end
    object chkEBT: TCheckBox
      Left = 168
      Top = 24
      Width = 102
      Height = 17
      Caption = 'EBT'
      TabOrder = 5
    end
    object chkSigis: TCheckBox
      Left = 168
      Top = 47
      Width = 102
      Height = 17
      Caption = 'FSA'
      TabOrder = 6
    end
    object chkOTCCard: TCheckBox
      Left = 168
      Top = 70
      Width = 102
      Height = 17
      Caption = 'OTC Card'
      TabOrder = 7
    end
    object chkPseudo: TCheckBox
      Left = 168
      Top = 93
      Width = 102
      Height = 17
      Caption = 'Pseudo Rpt'
      TabOrder = 8
    end
    object chkTaxable: TCheckBox
      Left = 168
      Top = 116
      Width = 102
      Height = 17
      Caption = 'TAXABLE'
      TabOrder = 9
    end
    object chkSkipPriceUpd: TCheckBox
      Left = 304
      Top = 24
      Width = 121
      Height = 17
      Caption = 'No Price Update'
      TabOrder = 10
    end
    object chkSkipPriceDistUpd: TCheckBox
      Left = 304
      Top = 47
      Width = 185
      Height = 17
      Caption = 'Skip Distribuitor Price Update'
      TabOrder = 11
    end
    object cboAge: TComboBox
      Left = 331
      Top = 70
      Width = 70
      Height = 23
      TabOrder = 12
    end
  end
  object GroupBox2: TGroupBox
    Left = 24
    Top = 232
    Width = 153
    Height = 49
    Enabled = False
    TabOrder = 1
    object txtGM: TEdit
      Left = 24
      Top = 16
      Width = 97
      Height = 23
      Alignment = taRightJustify
      TabOrder = 0
      Text = '0.00'
    end
  end
  object chkUpdateAttrib: TCheckBox
    Left = 29
    Top = 37
    Width = 121
    Height = 17
    Caption = 'Update Attributes'
    TabOrder = 2
    OnClick = chkUpdateAttribClick
  end
  object chkUpdateGM: TCheckBox
    Left = 29
    Top = 225
    Width = 100
    Height = 16
    Caption = 'Update % GM'
    TabOrder = 3
    OnClick = chkUpdateGMClick
  end
  object btnProcess: TButton
    Left = 446
    Top = 289
    Width = 75
    Height = 25
    Caption = 'PROCESS'
    TabOrder = 4
    OnClick = btnProcessClick
  end
  object btnCancel: TButton
    Left = 350
    Top = 289
    Width = 75
    Height = 25
    Caption = 'CANCEL'
    ModalResult = 8
    TabOrder = 5
  end
end
