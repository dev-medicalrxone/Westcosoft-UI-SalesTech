object FrmEditCars: TFrmEditCars
  Left = 0
  Top = 0
  Caption = 'Cars Information'
  ClientHeight = 462
  ClientWidth = 386
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
    Left = 56
    Top = 32
    Width = 75
    Height = 13
    Caption = 'LICENCE PLATE'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 56
    Top = 72
    Width = 61
    Height = 13
    Caption = 'BIN NUMBER'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 56
    Top = 112
    Width = 26
    Height = 13
    Caption = 'YEAR'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 56
    Top = 152
    Width = 35
    Height = 13
    Caption = 'COLOR'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 56
    Top = 273
    Width = 27
    Height = 13
    Caption = 'NOTE'
    FocusControl = DBMemo1
  end
  object Label6: TLabel
    Left = 56
    Top = 193
    Width = 34
    Height = 13
    Caption = 'BRAND'
    FocusControl = DBEdit5
  end
  object Label7: TLabel
    Left = 56
    Top = 233
    Width = 34
    Height = 13
    Caption = 'MODEL'
    FocusControl = DBEdit6
  end
  object Panel1: TPanel
    Left = 0
    Top = 421
    Width = 386
    Height = 41
    Align = alBottom
    TabOrder = 7
    ExplicitLeft = 120
    ExplicitTop = 352
    ExplicitWidth = 185
    object Button1: TButton
      AlignWithMargins = True
      Left = 307
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 0
      ExplicitLeft = 472
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 226
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 1
      ExplicitLeft = 376
      ExplicitTop = 8
      ExplicitHeight = 25
    end
  end
  object DBEdit1: TDBEdit
    Left = 56
    Top = 48
    Width = 134
    Height = 21
    DataField = 'LICENCE_PLATE'
    DataSource = DMMidas.dsCars
    TabOrder = 0
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit2: TDBEdit
    Left = 56
    Top = 88
    Width = 264
    Height = 21
    DataField = 'BIN_NUMBER'
    DataSource = DMMidas.dsCars
    TabOrder = 1
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit3: TDBEdit
    Left = 56
    Top = 128
    Width = 134
    Height = 21
    DataField = 'YEAR'
    DataSource = DMMidas.dsCars
    TabOrder = 2
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit4: TDBEdit
    Left = 56
    Top = 168
    Width = 134
    Height = 21
    DataField = 'COLOR'
    DataSource = DMMidas.dsCars
    TabOrder = 3
    OnKeyPress = DBEdit1KeyPress
  end
  object DBMemo1: TDBMemo
    Left = 56
    Top = 289
    Width = 264
    Height = 113
    DataField = 'NOTE'
    DataSource = DMMidas.dsCars
    TabOrder = 6
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit5: TDBEdit
    Left = 56
    Top = 209
    Width = 264
    Height = 21
    DataField = 'BRAND'
    DataSource = DMMidas.dsCars
    TabOrder = 4
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit6: TDBEdit
    Left = 56
    Top = 249
    Width = 264
    Height = 21
    DataField = 'MODEL'
    DataSource = DMMidas.dsCars
    TabOrder = 5
    OnKeyPress = DBEdit1KeyPress
  end
end
