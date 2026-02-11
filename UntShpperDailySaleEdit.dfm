object FrmShopperDailySaleEdit: TFrmShopperDailySaleEdit
  Left = 0
  Top = 0
  Caption = 'FrmShopperDailySaleEdit'
  ClientHeight = 248
  ClientWidth = 276
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 68
    Height = 13
    Caption = 'DESCRIPTION'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 59
    Height = 13
    Caption = 'START TIME'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 24
    Top = 96
    Width = 47
    Height = 13
    Caption = 'END TIME'
    FocusControl = DBEdit3
  end
  object SpeedButton3: TSpeedButton
    Left = 202
    Top = 72
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = SpeedButton3Click
  end
  object SpeedButton4: TSpeedButton
    Left = 202
    Top = 111
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = SpeedButton4Click
  end
  object Label4: TLabel
    Left = 24
    Top = 138
    Width = 120
    Height = 13
    Caption = 'PERCENTAGE DISCOUNT'
    FocusControl = DBEdit4
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 32
    Width = 201
    Height = 21
    DataField = 'DESCRIPTION'
    DataSource = DMMidas.dsShopper
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 72
    Width = 177
    Height = 21
    DataField = 'DAILY_SALE_START_TIME'
    DataSource = DMMidas.dsShopper
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 111
    Width = 177
    Height = 21
    DataField = 'DAILY_SALE_END_TIME'
    DataSource = DMMidas.dsShopper
    TabOrder = 2
  end
  object DBCheckBox1: TDBCheckBox
    Left = 24
    Top = 181
    Width = 97
    Height = 17
    Caption = 'ACTIVE'
    DataField = 'ACTIVE'
    DataSource = DMMidas.dsShopper
    TabOrder = 3
  end
  object Panel1: TPanel
    Left = 0
    Top = 216
    Width = 276
    Height = 32
    Align = alBottom
    TabOrder = 4
    ExplicitTop = 267
    ExplicitWidth = 274
    object Button1: TButton
      AlignWithMargins = True
      Left = 116
      Top = 4
      Width = 75
      Height = 24
      Align = alRight
      Caption = '&Ok'
      ModalResult = 1
      TabOrder = 0
      ExplicitLeft = 114
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 197
      Top = 4
      Width = 75
      Height = 24
      Align = alRight
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 1
      ExplicitLeft = 195
    end
  end
  object DBEdit4: TDBEdit
    Left = 24
    Top = 153
    Width = 177
    Height = 21
    DataField = 'PERCENTAGE_DISCOUNT'
    DataSource = DMMidas.dsShopper
    TabOrder = 5
  end
end
