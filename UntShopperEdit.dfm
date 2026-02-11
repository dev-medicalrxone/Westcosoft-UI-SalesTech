object FrmShopperEdit: TFrmShopperEdit
  Left = 0
  Top = 0
  Caption = 'New Shopper'
  ClientHeight = 299
  ClientWidth = 274
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
    Width = 64
    Height = 13
    Caption = 'START_DATE'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 24
    Top = 96
    Width = 52
    Height = 13
    Caption = 'END_DATE'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 24
    Top = 160
    Width = 66
    Height = 13
    Caption = 'DEPARTMENT'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 24
    Top = 208
    Width = 85
    Height = 13
    Caption = 'SUBDEPARTMENT'
    FocusControl = DBEdit5
  end
  object SpeedButton1: TSpeedButton
    Left = 164
    Top = 176
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 164
    Top = 224
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = SpeedButton2Click
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
  object DBEdit1: TDBEdit
    Left = 24
    Top = 32
    Width = 201
    Height = 21
    DataField = 'DESCRIPTION'
    DataSource = DMMidas.dsShopper
    TabOrder = 0
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 72
    Width = 177
    Height = 21
    DataField = 'START_DATE'
    DataSource = DMMidas.dsShopper
    TabOrder = 1
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 111
    Width = 177
    Height = 21
    DataField = 'END_DATE'
    DataSource = DMMidas.dsShopper
    TabOrder = 2
    OnKeyPress = DBEdit1KeyPress
  end
  object DBCheckBox1: TDBCheckBox
    Left = 24
    Top = 136
    Width = 97
    Height = 17
    Caption = 'ACTIVE'
    DataField = 'ACTIVE'
    DataSource = DMMidas.dsShopper
    TabOrder = 3
    OnKeyPress = DBEdit1KeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 267
    Width = 274
    Height = 32
    Align = alBottom
    TabOrder = 4
    object Button1: TButton
      AlignWithMargins = True
      Left = 114
      Top = 4
      Width = 75
      Height = 24
      Align = alRight
      Caption = '&Ok'
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 195
      Top = 4
      Width = 75
      Height = 24
      Align = alRight
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object DBEdit4: TDBEdit
    Left = 24
    Top = 176
    Width = 134
    Height = 21
    DataField = 'DEPARTMENT'
    DataSource = DMMidas.dsShopper
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 24
    Top = 224
    Width = 134
    Height = 21
    DataField = 'SUB_DEPARTMENT'
    DataSource = DMMidas.dsShopper
    TabOrder = 6
  end
end
