object FrmRxDetail: TFrmRxDetail
  Left = 0
  Top = 0
  Caption = 'Prescription Detail'
  ClientHeight = 480
  ClientWidth = 596
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 378
    Width = 49
    Height = 13
    Caption = 'Customer'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 57
    Top = 16
    Width = 56
    Height = 13
    Caption = 'Rx Number'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 31
    Top = 42
    Width = 88
    Height = 13
    Caption = 'Drug Description'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 70
    Top = 286
    Width = 44
    Height = 13
    Caption = 'Location'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 80
    Top = 123
    Width = 32
    Height = 13
    Caption = 'Copay'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 88
    Top = 150
    Width = 23
    Height = 13
    Caption = 'Cost'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 60
    Top = 177
    Width = 53
    Height = 13
    Caption = 'Sales Price'
    FocusControl = DBEdit7
  end
  object Bevel1: TBevel
    Left = 31
    Top = 364
    Width = 514
    Height = 3
  end
  object Label8: TLabel
    Left = 66
    Top = 406
    Width = 48
    Height = 13
    Caption = 'Telphone'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 79
    Top = 340
    Width = 32
    Height = 13
    Caption = 'Status'
  end
  object Label10: TLabel
    Left = 67
    Top = 259
    Width = 42
    Height = 13
    Caption = 'Rx. Date'
    FocusControl = DBEdit10
  end
  object Label11: TLabel
    Left = 87
    Top = 313
    Width = 25
    Height = 13
    Caption = 'Note'
    FocusControl = DBEdit11
  end
  object Label12: TLabel
    Left = 88
    Top = 69
    Width = 23
    Height = 13
    Caption = 'User'
    FocusControl = DBEdit12
  end
  object Label13: TLabel
    Left = 22
    Top = 96
    Width = 94
    Height = 13
    Caption = 'Health Plan / Cash'
    FocusControl = DBEdit5
  end
  object Label14: TLabel
    Left = 51
    Top = 204
    Width = 65
    Height = 13
    Caption = 'Amount Due'
    FocusControl = DBEdit7
  end
  object Label15: TLabel
    Left = 68
    Top = 231
    Width = 44
    Height = 13
    Caption = 'Quantity'
    FocusControl = DBEdit7
  end
  object DBEdit1: TDBEdit
    Left = 139
    Top = 375
    Width = 300
    Height = 21
    DataField = 'NombreCompleto2'
    DataSource = DMMidas.DSClientes
    ReadOnly = True
    TabOrder = 13
  end
  object DBEdit2: TDBEdit
    Left = 140
    Top = 13
    Width = 87
    Height = 21
    DataField = 'RX_NUMBER'
    DataSource = DMwc.dsWillCall
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit3: TDBEdit
    Left = 140
    Top = 39
    Width = 300
    Height = 21
    DataField = 'DRUG_DESCRIPTION'
    DataSource = DMwc.dsWillCall
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 140
    Top = 283
    Width = 87
    Height = 21
    DataField = 'BAG_NUMBER'
    DataSource = DMwc.dsWillCall
    TabOrder = 10
  end
  object DBEdit5: TDBEdit
    Left = 140
    Top = 120
    Width = 134
    Height = 21
    DataField = 'COPAY'
    DataSource = DMwc.dsWillCall
    ReadOnly = True
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 140
    Top = 147
    Width = 134
    Height = 21
    DataField = 'COST'
    DataSource = DMwc.dsWillCall
    ReadOnly = True
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 140
    Top = 174
    Width = 134
    Height = 21
    DataField = 'PRICE'
    DataSource = DMwc.dsWillCall
    ReadOnly = True
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 140
    Top = 403
    Width = 134
    Height = 21
    DataField = 'NOTIFICATION_MODE2_TELEPHONE'
    DataSource = DMwc.dsWillCall_Stauts
    ReadOnly = True
    TabOrder = 14
  end
  object Panel1: TPanel
    Left = 0
    Top = 439
    Width = 596
    Height = 41
    Align = alBottom
    TabOrder = 15
    object Button1: TButton
      AlignWithMargins = True
      Left = 517
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
      TabOrder = 0
    end
  end
  object DBEdit10: TDBEdit
    Left = 140
    Top = 256
    Width = 134
    Height = 21
    DataField = 'RX_DATE'
    DataSource = DMwc.dsWillCall
    ReadOnly = True
    TabOrder = 9
  end
  object DBEdit11: TDBEdit
    Left = 140
    Top = 310
    Width = 300
    Height = 21
    DataField = 'NOTE'
    DataSource = DMwc.dsWillCall
    TabOrder = 11
  end
  object DBEdit12: TDBEdit
    Left = 140
    Top = 66
    Width = 134
    Height = 21
    DataField = 'ATTENDED_BY'
    DataSource = DMwc.dsWillCall
    ReadOnly = True
    TabOrder = 2
  end
  object ComboBox1: TComboBox
    Left = 140
    Top = 337
    Width = 145
    Height = 21
    TabOrder = 12
    Text = 'ComboBox1'
    OnChange = ComboBox1Change
    Items.Strings = (
      'In Will Call'
      'Picked up'
      'Returend to stock'
      'Delivery'
      'Delivered')
  end
  object DBEdit9: TDBEdit
    Left = 140
    Top = 93
    Width = 134
    Height = 21
    DataField = 'CASH_PLAN_Define'
    DataSource = DMwc.dsWillCall
    ReadOnly = True
    TabOrder = 3
  end
  object DBEdit13: TDBEdit
    Left = 140
    Top = 201
    Width = 134
    Height = 21
    DataField = 'AmountDue'
    DataSource = DMwc.dsWillCall
    ReadOnly = True
    TabOrder = 7
  end
  object DBEdit14: TDBEdit
    Left = 140
    Top = 228
    Width = 134
    Height = 21
    DataField = 'QUANTITY'
    DataSource = DMwc.dsWillCall
    ReadOnly = True
    TabOrder = 8
  end
end
