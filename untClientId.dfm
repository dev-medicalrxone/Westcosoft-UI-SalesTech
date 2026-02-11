object FrmClientId: TFrmClientId
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Client Info'
  ClientHeight = 373
  ClientWidth = 671
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 18
    Top = 104
    Width = 59
    Height = 21
    Caption = 'Client ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 18
    Top = 152
    Width = 86
    Height = 21
    Caption = 'Client Name'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 18
    Top = 200
    Width = 100
    Height = 21
    Caption = 'Client Address'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 18
    Top = 8
    Width = 385
    Height = 75
    Alignment = taCenter
    Caption = 
      'One or more products in this transaction are pseudos. Please fil' +
      'l out the information required.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 333
    Width = 671
    Height = 40
    Align = alBottom
    TabOrder = 7
    object ButtonOk: TButton
      AlignWithMargins = True
      Left = 511
      Top = 4
      Width = 75
      Height = 32
      Align = alRight
      Caption = 'Ok'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 0
    end
    object FrmClientId: TButton
      AlignWithMargins = True
      Left = 592
      Top = 4
      Width = 75
      Height = 32
      Align = alRight
      Caption = 'Cancel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object EditClientId: TEdit
    Left = 132
    Top = 102
    Width = 217
    Height = 28
    Hint = 'Enter client ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TextHint = 'Enter client ID'
    OnChange = EditClientIdChange
  end
  object editClientName: TEdit
    Left = 132
    Top = 150
    Width = 217
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TextHint = 'Enter client name'
    OnChange = editClientNameChange
    OnKeyPress = editClientNameKeyPress
  end
  object EditAddress: TEdit
    Left = 132
    Top = 198
    Width = 217
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TextHint = 'Enter client address'
    OnChange = editClientNameChange
  end
  object EditCity: TEdit
    Left = 132
    Top = 232
    Width = 217
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TextHint = 'Enter client city'
    OnChange = editClientNameChange
  end
  object EditZipCode: TEdit
    Left = 132
    Top = 300
    Width = 217
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Segoe UI'
    Font.Style = []
    MaxLength = 5
    NumbersOnly = True
    ParentFont = False
    TabOrder = 5
    TextHint = 'Enter client zipcode'
    OnChange = editClientNameChange
  end
  object RadioGroup1: TRadioGroup
    Left = 425
    Top = 0
    Width = 246
    Height = 333
    Align = alRight
    Caption = 'ID type'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Driver license'
      'Passport'
      'Other')
    ParentFont = False
    TabOrder = 6
  end
  object EditState: TEdit
    Left = 132
    Top = 266
    Width = 217
    Height = 28
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Segoe UI'
    Font.Style = []
    MaxLength = 2
    ParentFont = False
    TabOrder = 4
    TextHint = 'Enter client state'
    OnChange = editClientNameChange
  end
end
