object FrmDelivered: TFrmDelivered
  Left = 101
  Top = 66
  Caption = 'Delivered?'
  ClientHeight = 510
  ClientWidth = 673
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 469
    Width = 673
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtnOK: TBitBtn
      AlignWithMargins = True
      Left = 513
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
    object BitBtnCancel: TBitBtn
      AlignWithMargins = True
      Left = 594
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 673
    Height = 469
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 38
      Top = 25
      Width = 83
      Height = 21
      Caption = 'DELIVER BY:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 544
      Top = 45
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object Label2: TLabel
      Left = 38
      Top = 80
      Width = 85
      Height = 21
      Caption = 'DELIVER TO:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 186
      Top = 10
      Width = 71
      Height = 13
      Caption = 'No. Recibidos'
    end
    object TouchKeyboard1: TTouchKeyboard
      AlignWithMargins = True
      Left = 4
      Top = 200
      Width = 665
      Height = 265
      Align = alBottom
      GradientEnd = clSilver
      GradientStart = clGray
      Layout = 'Standard'
    end
    object Memo1: TMemo
      Left = 38
      Top = 106
      Width = 505
      Height = 72
      TabOrder = 1
    end
    object SpinEdit1: TSpinEdit
      Left = 263
      Top = 7
      Width = 65
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 1
    end
    object cxCheckBox1: TCheckBox
      Left = 38
      Top = 9
      Width = 97
      Height = 17
      Caption = 'Delivered'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object EditDeliveredBy: TEdit
      Left = 38
      Top = 46
      Width = 505
      Height = 21
      TabOrder = 4
    end
  end
end
