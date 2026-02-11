object FPassword2: TFPassword2
  Left = 646
  Top = 181
  Caption = 'Password....'
  ClientHeight = 85
  ClientWidth = 278
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 44
    Width = 278
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 40
    ExplicitTop = 39
    ExplicitWidth = 185
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 199
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
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 48
      ExplicitTop = 3
      ExplicitHeight = 25
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 118
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
      ParentFont = False
      TabOrder = 1
      ExplicitLeft = 184
      ExplicitTop = 3
      ExplicitHeight = 25
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 278
    Height = 41
    Align = alTop
    Caption = 'Panel2'
    TabOrder = 1
    ExplicitLeft = 40
    ExplicitTop = -8
    ExplicitWidth = 185
    object EditPassword: TEdit
      Left = 44
      Top = 6
      Width = 183
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
end
