object FrmCoopDiscCard: TFrmCoopDiscCard
  Left = 0
  Top = 0
  Caption = 'Coop discount card'
  ClientHeight = 308
  ClientWidth = 582
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 15
  object Bevel1: TBevel
    AlignWithMargins = True
    Left = 3
    Top = 31
    Width = 576
    Height = 233
    Align = alClient
    ExplicitLeft = -2
    ExplicitWidth = 618
    ExplicitHeight = 366
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 582
    Height = 28
    Align = alTop
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      AlignWithMargins = True
      Left = 555
      Top = 4
      Width = 23
      Height = 20
      Align = alRight
      Caption = '...'
      ExplicitTop = 5
    end
    object Label1: TLabel
      Left = 12
      Top = 7
      Width = 72
      Height = 15
      Caption = 'Card Number'
    end
    object EditInsuranceNumber: TEdit
      AlignWithMargins = True
      Left = 90
      Top = 4
      Width = 459
      Height = 20
      Align = alRight
      TabOrder = 0
      Text = '00001019'
      OnExit = EditInsuranceNumberExit
      OnKeyPress = EditInsuranceNumberKeyPress
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 267
    Width = 582
    Height = 41
    Align = alBottom
    TabOrder = 1
    object LabelSearching: TLabel
      Left = 22
      Top = 12
      Width = 61
      Height = 15
      Caption = 'Searching...'
      Visible = False
    end
    object btnCancel: TButton
      AlignWithMargins = True
      Left = 503
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
      Left = 422
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
  object Memo1: TMemo
    Left = 0
    Top = 28
    Width = 582
    Height = 239
    Align = alClient
    TabOrder = 2
  end
end
