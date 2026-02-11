object FrmPlanesEdit: TFrmPlanesEdit
  Left = 188
  Top = 104
  Caption = 'Editar y A'#241'dir Planes Medicos'
  ClientHeight = 306
  ClientWidth = 537
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 537
    Height = 265
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 264
    object Label1: TLabel
      Left = 51
      Top = 10
      Width = 66
      Height = 13
      Caption = 'Abbreviatura'
      FocusControl = DBEdit1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 58
      Top = 35
      Width = 59
      Height = 13
      Caption = 'Health Plan'
      FocusControl = DBEdit12
    end
    object Label6: TLabel
      Left = 23
      Top = 60
      Width = 94
      Height = 13
      Caption = 'Service Provider ID'
      FocusControl = DBEdit6
    end
    object Label5: TLabel
      Left = 80
      Top = 86
      Width = 37
      Height = 13
      Caption = #191'Multi?'
    end
    object Label4: TLabel
      Left = 337
      Top = 86
      Width = 53
      Height = 13
      Caption = 'Telephone'
      FocusControl = DBEdit4
    end
    object Label3: TLabel
      Left = 58
      Top = 136
      Width = 59
      Height = 13
      Caption = 'Processor #'
      FocusControl = DBEdit3
    end
    object Label2: TLabel
      Left = 90
      Top = 111
      Width = 27
      Height = 13
      Caption = 'Bin #'
      FocusControl = DBEdit2
    end
    object Label8: TLabel
      Left = 335
      Top = 35
      Width = 55
      Height = 13
      Caption = 'Tone/Pulse'
    end
    object Label9: TLabel
      Left = 85
      Top = 212
      Width = 32
      Height = 13
      Caption = 'Speed'
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 71
      Top = 238
      Width = 46
      Height = 13
      Caption = 'Data Bits'
      FocusControl = DBEdit10
    end
    object Label11: TLabel
      Left = 362
      Top = 10
      Width = 28
      Height = 13
      Caption = 'Parity'
    end
    object Label7: TLabel
      Left = 352
      Top = 60
      Width = 38
      Height = 13
      Caption = 'Version'
    end
    object Label18: TLabel
      Left = 17
      Top = 162
      Width = 100
      Height = 13
      Caption = 'Software Vendor ID'
      FocusControl = DBEdit4
    end
    object Label19: TLabel
      Left = 4
      Top = 187
      Width = 113
      Height = 13
      Caption = 'Serv. Prov. ID Qualifier'
    end
    object Label20: TLabel
      Left = 284
      Top = 111
      Width = 106
      Height = 13
      Caption = 'Manual Health Plan?'
    end
    object Label21: TLabel
      Left = 311
      Top = 136
      Width = 79
      Height = 13
      Caption = 'Dispensing Fee'
    end
    object Label14: TLabel
      Left = 253
      Top = 187
      Width = 137
      Height = 13
      Caption = 'Telefono Servicio al Cliente'
    end
    object Label15: TLabel
      Left = 244
      Top = 212
      Width = 146
      Height = 13
      Caption = 'Telefono Servicio al Cliente 2'
    end
    object Label17: TLabel
      Left = 284
      Top = 238
      Width = 106
      Height = 13
      Caption = 'Compound Segment'
    end
    object Label13: TLabel
      Left = 299
      Top = 160
      Width = 91
      Height = 13
      Caption = 'Precio Cash/AWP?'
    end
    object DBEdit1: TDBEdit
      Left = 122
      Top = 7
      Width = 33
      Height = 21
      DataField = 'Abreviatura'
      DataSource = DMMidas.DSPlanesMedicos
      TabOrder = 0
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit12: TDBEdit
      Left = 122
      Top = 32
      Width = 140
      Height = 21
      DataField = 'Nombre'
      DataSource = DMMidas.DSPlanesMedicos
      MaxLength = 20
      TabOrder = 1
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit6: TDBEdit
      Left = 122
      Top = 57
      Width = 109
      Height = 21
      DataField = 'NumeroFarmacia'
      DataSource = DMMidas.DSPlanesMedicos
      TabOrder = 2
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit4: TDBEdit
      Left = 395
      Top = 133
      Width = 111
      Height = 21
      DataField = 'DISPENSING_FEE'
      DataSource = DMMidas.DSPlanesMedicos
      TabOrder = 15
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit3: TDBEdit
      Left = 122
      Top = 133
      Width = 109
      Height = 21
      DataField = 'ProcessorControl'
      DataSource = DMMidas.DSPlanesMedicos
      TabOrder = 5
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit2: TDBEdit
      Left = 122
      Top = 108
      Width = 109
      Height = 21
      DataField = 'BinNumber'
      DataSource = DMMidas.DSPlanesMedicos
      MaxLength = 7
      TabOrder = 4
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit9: TDBEdit
      Left = 122
      Top = 235
      Width = 109
      Height = 21
      DataField = 'BITSDATA'
      DataSource = DMMidas.DSPlanesMedicos
      TabOrder = 9
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit10: TDBEdit
      Left = 395
      Top = 7
      Width = 111
      Height = 21
      DataField = 'PARIDAD'
      DataSource = DMMidas.DSPlanesMedicos
      TabOrder = 10
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit5: TDBEdit
      Left = 395
      Top = 83
      Width = 111
      Height = 21
      DataField = 'TELEFONO'
      DataSource = DMMidas.DSPlanesMedicos
      TabOrder = 13
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit7: TDBEdit
      Left = 395
      Top = 57
      Width = 111
      Height = 21
      DataField = 'VERSIONCOL'
      DataSource = DMMidas.DSPlanesMedicos
      TabOrder = 12
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit8: TDBEdit
      Left = 122
      Top = 209
      Width = 109
      Height = 21
      DataField = 'VELOCIDAD'
      DataSource = DMMidas.DSPlanesMedicos
      TabOrder = 8
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit11: TDBEdit
      Left = 122
      Top = 83
      Width = 109
      Height = 21
      DataField = 'MULTI_RECETA'
      DataSource = DMMidas.DSPlanesMedicos
      TabOrder = 3
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit15: TDBEdit
      Left = 122
      Top = 159
      Width = 109
      Height = 21
      DataField = 'SOFTWARE_VENDOR_ID'
      DataSource = DMMidas.DSPlanesMedicos
      TabOrder = 6
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = FormKeyPress
    end
    object DBComboBox5: TDBComboBox
      Left = 122
      Top = 184
      Width = 109
      Height = 21
      DataField = 'SERVICE_PROVIDER_ID_QUAL'
      DataSource = DMMidas.DSPlanesMedicos
      DropDownCount = 15
      Items.Strings = (
        '01 - NATIONAL PROVIDER IDENTIFIER (NPI)'
        '02 - BLUE CROSS'
        '03 - BLUE SHIELD'
        '04 - MEDICARE'
        '05 - MEDICAID'
        '06 - UPIN'
        '07 - NCPDP Provider ID'
        '08 - STATE LICENSE'
        '09 - CHAMPUS'
        '10 - HEALTH INDUSTRY NUMBER (HIN)'
        '11 - FEDERAL TAX ID'
        '12 - DRUG ENFORCEMENT ADMINISTRATION (DEA)'
        '13 - STATE ISSUED'
        '14 - PLAN SPECIFIC'
        '99 - OTHER')
      TabOrder = 7
      OnChange = DBComboBox5Exit
      OnDropDown = DBComboBox5DropDown
      OnExit = DBComboBox5Exit
      OnKeyPress = FormKeyPress
    end
    object DBComboBox1: TDBComboBox
      Left = 395
      Top = 108
      Width = 111
      Height = 21
      DataField = 'MANUAL_PLAN'
      DataSource = DMMidas.DSPlanesMedicos
      Items.Strings = (
        'T - TRUE'
        'F - FALSE')
      TabOrder = 14
      OnKeyPress = FormKeyPress
    end
    object DBEdit16: TDBEdit
      Left = 395
      Top = 32
      Width = 111
      Height = 21
      DataField = 'TONOPULSO'
      DataSource = DMMidas.DSPlanesMedicos
      TabOrder = 11
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit13: TDBEdit
      Left = 395
      Top = 184
      Width = 111
      Height = 21
      DataField = 'TELEFONO_SERVICIO1'
      DataSource = DMMidas.DSPlanesMedicos
      TabOrder = 17
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit14: TDBEdit
      Left = 395
      Top = 209
      Width = 111
      Height = 21
      DataField = 'TELEFONO_SERVICIO2'
      DataSource = DMMidas.DSPlanesMedicos
      TabOrder = 18
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = FormKeyPress
    end
    object DBComboBox2: TDBComboBox
      Left = 395
      Top = 235
      Width = 111
      Height = 21
      DataField = 'COMPOUND_SEGMENT'
      DataSource = DMMidas.DSPlanesMedicos
      Items.Strings = (
        'TRUE'
        'FALSE')
      TabOrder = 19
      OnKeyPress = FormKeyPress
    end
    object DBComboBox3: TDBComboBox
      Left = 395
      Top = 157
      Width = 111
      Height = 21
      DataField = 'PRECIO_CASH_AWP'
      DataSource = DMMidas.DSPlanesMedicos
      Items.Strings = (
        'CASH'
        'AWP')
      TabOrder = 16
      OnKeyPress = FormKeyPress
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 265
    Width = 537
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Label16: TLabel
      Left = 13
      Top = 12
      Width = 392
      Height = 17
      Caption = 
        '*Telefono de servicio de NDC (National Data Corp.) (800) 895-033' +
        '3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 458
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = '&Close'
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 413
      ExplicitTop = 6
      ExplicitHeight = 25
    end
  end
end
