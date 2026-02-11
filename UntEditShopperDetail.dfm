object FrmEditShopperDetail: TFrmEditShopperDetail
  Left = 0
  Top = 0
  Caption = 'Edit Shopper'
  ClientHeight = 335
  ClientWidth = 446
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 50
    Height = 13
    Caption = 'PRODUCT'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 32
    Top = 56
    Width = 11
    Height = 13
    Caption = 'ID'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 32
    Top = 96
    Width = 37
    Height = 13
    Caption = 'COPIES'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 32
    Top = 208
    Width = 40
    Height = 13
    Caption = 'SPECIAL'
    FocusControl = DBEdit4
  end
  object Label7: TLabel
    Left = 196
    Top = 208
    Width = 66
    Height = 13
    Caption = 'LAST SPECIAL'
    FocusControl = DBEdit5
  end
  object Bevel1: TBevel
    Left = 32
    Top = 139
    Width = 298
    Height = 18
  end
  object Label8: TLabel
    Left = 32
    Top = 165
    Width = 64
    Height = 13
    Caption = 'RETAIL PRICE'
    FocusControl = DBEdit6
  end
  object Label5: TLabel
    Left = 32
    Top = 253
    Width = 147
    Height = 13
    Caption = 'SALES PROMOTION (BOGOF)'
    FocusControl = DBEdit4
  end
  object SpeedButton1: TSpeedButton
    Left = 336
    Top = 267
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = SpeedButton1Click
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 29
    Width = 289
    Height = 21
    TabStop = False
    DataField = 'PRODUCT'
    DataSource = DMMidas.dsShopperDetail
    ReadOnly = True
    TabOrder = 0
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit2: TDBEdit
    Left = 32
    Top = 72
    Width = 134
    Height = 21
    TabStop = False
    DataField = 'PRODUCT_ID'
    DataSource = DMMidas.dsShopperDetail
    ReadOnly = True
    TabOrder = 1
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit3: TDBEdit
    Left = 32
    Top = 112
    Width = 134
    Height = 21
    DataField = 'COPIES'
    DataSource = DMMidas.dsShopperDetail
    TabOrder = 2
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit4: TDBEdit
    Left = 32
    Top = 224
    Width = 134
    Height = 21
    DataField = 'SPECIAL'
    DataSource = DMMidas.dsShopperDetail
    TabOrder = 3
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit5: TDBEdit
    Left = 196
    Top = 224
    Width = 134
    Height = 21
    TabStop = False
    DataField = 'LAST_SPECIAL'
    DataSource = DMMidas.dsShopperDetail
    ReadOnly = True
    TabOrder = 4
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit6: TDBEdit
    Left = 32
    Top = 181
    Width = 134
    Height = 21
    TabStop = False
    DataField = 'RETAIL_PRICE'
    DataSource = DMMidas.dsShopperDetail
    ReadOnly = True
    TabOrder = 5
    OnKeyPress = DBEdit1KeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 303
    Width = 446
    Height = 32
    Align = alBottom
    TabOrder = 6
    object Button1: TButton
      AlignWithMargins = True
      Left = 286
      Top = 4
      Width = 75
      Height = 24
      Align = alRight
      Caption = '&Ok'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 0
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 367
      Top = 4
      Width = 75
      Height = 24
      Align = alRight
      Caption = '&Cancel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object DBEdit7: TDBEdit
    Left = 32
    Top = 268
    Width = 298
    Height = 21
    DataField = 'DEFINE_SP'
    DataSource = DMMidas.dsShopperDetail
    TabOrder = 7
    OnKeyPress = DBEdit1KeyPress
  end
end
