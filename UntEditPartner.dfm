object FrmEditPartner: TFrmEditPartner
  Left = 314
  Top = 169
  Caption = 'Editar Partner'
  ClientHeight = 231
  ClientWidth = 383
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 383
    Height = 199
    Align = alClient
    BevelOuter = bvLowered
    Caption = ' '
    TabOrder = 0
    ExplicitHeight = 194
    object Label1: TLabel
      Left = 32
      Top = 12
      Width = 47
      Height = 13
      Caption = 'NOMBRE'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 20
      Top = 36
      Width = 58
      Height = 13
      Caption = 'DIRECCION'
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 32
      Top = 84
      Width = 45
      Height = 13
      Caption = 'ZIPCODE'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 25
      Top = 108
      Width = 50
      Height = 13
      Caption = '# CUENTA'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 20
      Top = 132
      Width = 55
      Height = 13
      Caption = 'CONTACTO'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 22
      Top = 156
      Width = 54
      Height = 13
      Caption = 'TELEFONO'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 59
      Top = 180
      Width = 18
      Height = 13
      Caption = 'FAX'
      FocusControl = DBEdit8
    end
    object DBEdit1: TDBEdit
      Left = 88
      Top = 8
      Width = 281
      Height = 21
      DataField = 'NOMBRE'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 88
      Top = 32
      Width = 281
      Height = 21
      DataField = 'DIRECCION1'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 88
      Top = 56
      Width = 281
      Height = 21
      DataField = 'DIRECCION2'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 88
      Top = 80
      Width = 137
      Height = 21
      DataField = 'ZIPCODE'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 88
      Top = 104
      Width = 137
      Height = 21
      DataField = 'NUMEROCUENTA'
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 88
      Top = 128
      Width = 281
      Height = 21
      DataField = 'CONTACTO'
      DataSource = DataSource1
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 88
      Top = 152
      Width = 173
      Height = 21
      DataField = 'TELEFONO'
      DataSource = DataSource1
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 88
      Top = 176
      Width = 173
      Height = 21
      DataField = 'FAX'
      DataSource = DataSource1
      TabOrder = 7
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 199
    Width = 383
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 1
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 254
      Top = 3
      Width = 60
      Height = 26
      Align = alRight
      Caption = 'OK'
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 1
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 271
      ExplicitHeight = 22
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 320
      Top = 3
      Width = 60
      Height = 26
      Align = alRight
      Cancel = True
      Caption = 'Cancel'
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 2
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
      ExplicitHeight = 22
    end
  end
  object DataSource1: TDataSource
    DataSet = DMMidas.CDSPartners
    Left = 272
    Top = 80
  end
end
