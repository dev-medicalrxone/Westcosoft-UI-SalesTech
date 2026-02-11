object FrmWarning: TFrmWarning
  Left = 452
  Top = 176
  Caption = 'WARNING'
  ClientHeight = 189
  ClientWidth = 694
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
    Top = 148
    Width = 694
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 615
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
      TabStop = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 694
    Height = 148
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 136
      Top = 52
      Width = 423
      Height = 54
      Alignment = taCenter
      Caption = 'PRODUCT NOT FOUND'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -40
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MediaPlayer1: TMediaPlayer
      Left = 32
      Top = 112
      Width = 253
      Height = 30
      DoubleBuffered = True
      FileName = 'C:\WINDOWS\Media\Windows XP Critical Stop.wav'
      Visible = False
      ParentDoubleBuffered = False
      TabOrder = 0
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 272
    Top = 24
  end
end
