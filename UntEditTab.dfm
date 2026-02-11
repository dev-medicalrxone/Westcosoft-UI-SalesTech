object FrmEditTab: TFrmEditTab
  Left = 0
  Top = 0
  Caption = 'Edit TAB'
  ClientHeight = 422
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 381
    Width = 622
    Height = 41
    Align = alBottom
    TabOrder = 0
    object btnOk: TButton
      AlignWithMargins = True
      Left = 543
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 622
    Height = 129
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 13
      Width = 46
      Height = 13
      Caption = 'Customer'
    end
    object Label2: TLabel
      Left = 24
      Top = 61
      Width = 50
      Height = 13
      Caption = 'Telephone'
    end
    object EditCustomer: TEdit
      Left = 24
      Top = 26
      Width = 521
      Height = 31
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object EditTelephone: TMaskEdit
      Left = 24
      Top = 80
      Width = 135
      Height = 31
      EditMask = '!\(999\)000-0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 13
      ParentFont = False
      TabOrder = 1
      Text = '(   )   -    '
    end
  end
  object TouchKeyboard1: TTouchKeyboard
    Left = 0
    Top = 129
    Width = 622
    Height = 252
    Align = alClient
    GradientEnd = clSilver
    GradientStart = clGray
    Layout = 'Standard'
  end
end
