object FrmSSSOTC: TFrmSSSOTC
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Triple-S Advantage Insurance Information'
  ClientHeight = 253
  ClientWidth = 545
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 13
  object Bevel1: TBevel
    AlignWithMargins = True
    Left = 3
    Top = 31
    Width = 539
    Height = 178
    Align = alClient
    ExplicitLeft = 8
    ExplicitTop = 65
    ExplicitWidth = 529
    ExplicitHeight = 152
  end
  object Label2: TLabel
    Left = 39
    Top = 60
    Width = 46
    Height = 13
    Caption = 'Customer'
  end
  object Label3: TLabel
    Left = 39
    Top = 140
    Width = 41
    Height = 13
    Caption = 'Balance:'
  end
  object LabelBalance: TLabel
    Left = 39
    Top = 151
    Width = 100
    Height = 48
    Caption = '$0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -40
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LabelCustomerName: TLabel
    Left = 39
    Top = 73
    Width = 191
    Height = 33
    Caption = 'Customer Name'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object LabelInsuranceNumber: TLabel
    Left = 39
    Top = 112
    Width = 105
    Height = 16
    Caption = 'Insurance Number'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 212
    Width = 545
    Height = 41
    Align = alBottom
    TabOrder = 1
    object LabelSearching: TLabel
      Left = 39
      Top = 16
      Width = 59
      Height = 13
      Caption = 'Searching...'
      Visible = False
    end
    object btnCancel: TButton
      AlignWithMargins = True
      Left = 466
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 0
    end
    object btnSale: TButton
      AlignWithMargins = True
      Left = 385
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Sale'
      Enabled = False
      ModalResult = 1
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 545
    Height = 28
    Align = alTop
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      AlignWithMargins = True
      Left = 518
      Top = 4
      Width = 23
      Height = 20
      Align = alRight
      Caption = '...'
      OnClick = SpeedButton1Click
      ExplicitLeft = 372
      ExplicitTop = 8
      ExplicitHeight = 22
    end
    object Label1: TLabel
      Left = 12
      Top = 7
      Width = 88
      Height = 13
      Caption = 'Insurance Number'
    end
    object EditInsuranceNumber: TEdit
      AlignWithMargins = True
      Left = 106
      Top = 4
      Width = 406
      Height = 20
      Align = alRight
      TabOrder = 0
      OnExit = EditInsuranceNumberExit
      OnKeyPress = EditInsuranceNumberKeyPress
      ExplicitHeight = 21
    end
  end
end
