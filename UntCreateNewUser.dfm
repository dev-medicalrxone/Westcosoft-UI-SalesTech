object FrmCreateNewUser: TFrmCreateNewUser
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Create new user'
  ClientHeight = 164
  ClientWidth = 384
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 27
    Width = 51
    Height = 13
    Caption = 'User name'
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 31
    Height = 13
    Caption = 'Initials'
  end
  object Label3: TLabel
    Left = 24
    Top = 85
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object sbClassic: TSpeedButton
    Left = 221
    Top = 82
    Width = 23
    Height = 22
    Hint = 'Cambiar Password'
    Caption = '...'
    ParentShowHint = False
    ShowHint = True
    Visible = False
    OnClick = sbClassicClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 129
    Width = 384
    Height = 35
    Align = alBottom
    Color = 16767411
    TabOrder = 3
    object Button1: TButton
      AlignWithMargins = True
      Left = 224
      Top = 4
      Width = 75
      Height = 27
      Align = alRight
      Caption = '&Ok'
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 305
      Top = 4
      Width = 75
      Height = 27
      Align = alRight
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object EditUserName: TEdit
    Left = 96
    Top = 24
    Width = 233
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    OnExit = EditUserNameExit
    OnKeyPress = EditUserNameKeyPress
  end
  object EditIniciales: TEdit
    Left = 96
    Top = 53
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 3
    TabOrder = 1
    OnExit = EditInicialesExit
    OnKeyPress = EditUserNameKeyPress
  end
  object EditPwrd: TEdit
    Left = 96
    Top = 82
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 4
    PasswordChar = '*'
    TabOrder = 2
    OnExit = EditPwrdExit
    OnKeyPress = EditUserNameKeyPress
  end
end
