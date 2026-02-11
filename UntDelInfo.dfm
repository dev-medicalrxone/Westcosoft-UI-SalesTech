object frmDelInfo: TfrmDelInfo
  Left = 0
  Top = 0
  Caption = 'Delivery info'
  ClientHeight = 389
  ClientWidth = 485
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 24
    Width = 68
    Height = 13
    Caption = 'Delivery name'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 64
    Width = 72
    Height = 13
    Caption = 'Delivery phone'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 104
    Width = 48
    Height = 13
    Caption = 'Address 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 144
    Width = 48
    Height = 13
    Caption = 'Address 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 40
    Top = 184
    Width = 19
    Height = 13
    Caption = 'City'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 40
    Top = 224
    Width = 26
    Height = 13
    Caption = 'State'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 40
    Top = 264
    Width = 40
    Height = 13
    Caption = 'Zip code'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 40
    Top = 304
    Width = 54
    Height = 13
    Caption = 'Delivery by'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object EditDelName: TEdit
    Left = 160
    Top = 21
    Width = 153
    Height = 21
    TabOrder = 0
  end
  object EditDelPhone: TEdit
    Left = 160
    Top = 61
    Width = 153
    Height = 21
    TabOrder = 1
  end
  object EditDelAddress1: TEdit
    Left = 160
    Top = 101
    Width = 271
    Height = 21
    TabOrder = 2
  end
  object EditDelAddress2: TEdit
    Left = 160
    Top = 141
    Width = 271
    Height = 21
    TabOrder = 3
  end
  object EditDelCity: TEdit
    Left = 160
    Top = 181
    Width = 153
    Height = 21
    TabOrder = 4
  end
  object EditDelState: TEdit
    Left = 160
    Top = 221
    Width = 153
    Height = 21
    MaxLength = 2
    TabOrder = 5
  end
  object EditDelZipCode: TEdit
    Left = 160
    Top = 261
    Width = 153
    Height = 21
    MaxLength = 15
    TabOrder = 6
  end
  object EditDelBy: TEdit
    Left = 160
    Top = 301
    Width = 153
    Height = 21
    TabOrder = 7
  end
  object Panel1: TPanel
    Left = 0
    Top = 352
    Width = 485
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 8
    object Button1: TButton
      Left = 400
      Top = 2
      Width = 75
      Height = 33
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 0
    end
    object Button2: TButton
      Left = 319
      Top = 2
      Width = 75
      Height = 33
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 1
    end
  end
end
