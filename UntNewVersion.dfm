object FrmNewVersion: TFrmNewVersion
  Left = 0
  Top = 0
  Caption = 'New software version'
  ClientHeight = 119
  ClientWidth = 273
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 71
    Height = 13
    Caption = 'Downloading'
  end
  object ProgressBar: TProgressBar
    Left = 8
    Top = 42
    Width = 217
    Height = 17
    Max = 300
    MarqueeInterval = 5
    Step = 5
    TabOrder = 0
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 100
    Width = 273
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
    ExplicitLeft = 8
  end
  object TimerFileFound: TTimer
    OnTimer = TimerFileFoundTimer
    Left = 216
    Top = 24
  end
  object FTP: TIdFTP
    OnWork = FTPWork
    IPVersion = Id_IPv4
    ConnectTimeout = 0
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 80
    Top = 8
  end
  object TimerStartDownload: TTimer
    Interval = 2000
    OnTimer = TimerStartDownloadTimer
    Left = 168
    Top = 24
  end
end
