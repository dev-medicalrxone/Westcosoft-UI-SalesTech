object FrmPickup: TFrmPickup
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Smart Pickup'
  ClientHeight = 639
  ClientWidth = 1070
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object TouchKeyboard1: TTouchKeyboard
    AlignWithMargins = True
    Left = 3
    Top = 339
    Width = 1064
    Height = 235
    Align = alBottom
    GradientEnd = clSilver
    GradientStart = clGray
    Layout = 'Standard'
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 620
    Width = 1070
    Height = 19
    Panels = <
      item
        Width = 120
      end
      item
        Width = 120
      end
      item
        Width = 550
      end
      item
        Text = 'Amount Due $'
        Width = 200
      end
      item
        Text = 'Ver 1.5'
        Width = 50
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 57
    Width = 1070
    Height = 138
    Align = alTop
    ParentBackground = False
    TabOrder = 2
    object Label4: TLabel
      Left = 30
      Top = 20
      Width = 34
      Height = 13
      Caption = 'Search'
    end
    object SpeedButton1: TSpeedButton
      Left = 320
      Top = 16
      Width = 23
      Height = 22
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF4A667C
        BE9596FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF6B9CC31E89E84B7AA3C89693FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4BB4FE51B5FF
        2089E94B7AA2C69592FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF51B7FE51B3FF1D87E64E7AA0CA9792FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        51B7FE4EB2FF1F89E64E7BA2B99497FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF52B8FE4BB1FF2787D95F6A76FF
        00FFB0857FC09F94C09F96BC988EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF55BDFFB5D6EDBF9D92BB9B8CE7DAC2FFFFE3FFFFE5FDFADAD8C3
        B3B58D85FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCEA795FD
        EEBEFFFFD8FFFFDAFFFFDBFFFFE6FFFFFBEADDDCAE837FFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFC1A091FBDCA8FEF7D0FFFFDBFFFFE3FFFFF8FFFF
        FDFFFFFDC6A99CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC1A091FEE3ACF1
        C491FCF2CAFFFFDDFFFFE4FFFFF7FFFFF7FFFFE9EEE5CBB9948CFF00FFFF00FF
        FF00FFFF00FFFF00FFC2A191FFE6AEEEB581F7DCAEFEFDD8FFFFDFFFFFE3FFFF
        E4FFFFE0F3ECD2BB968EFF00FFFF00FFFF00FFFF00FFFF00FFBC978CFBE7B7F4
        C791F2C994F8E5B9FEFCD8FFFFDDFFFFDCFFFFE0E2D2BAB68E86FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFD9C3A9FFFEE5F7DCB8F2C994F5D4A5FAE8BDFDF4
        C9FDFBD6B69089FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB58D85E8
        DEDDFFFEF2F9D8A3F4C48CF9D49FFDEAB8D0B49FB89086FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFAD827FC9AA9EEFE0B7EFDFB2E7CEACB890
        86B89086FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFBA968ABB988CB79188FF00FFFF00FFFF00FFFF00FF}
      OnClick = SpeedButton1Click
    end
    object EditSearch: TEdit
      Left = 30
      Top = 17
      Width = 284
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      TextHint = 'Bag #, SCAN RX, CUSTOMER NAME, PN+RX NUMBER'
      OnExit = EditSearchExit
      OnKeyPress = EditSearchKeyPress
    end
    object GBDate: TGroupBox
      Left = 30
      Top = 44
      Width = 313
      Height = 78
      Caption = 'Date'
      TabOrder = 1
      object LabelBagNumbers: TLabel
        Left = 44
        Top = 20
        Width = 121
        Height = 40
        Caption = 'Bag # '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 171
        Top = 20
        Width = 95
        Height = 40
        DataField = 'BAG_NUMBER'
        DataSource = DMwc.dsWillCall_Stauts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GBPaciente: TGroupBox
      Left = 384
      Top = 6
      Width = 649
      Height = 126
      Caption = 'Patient'
      TabOrder = 2
      object Label1: TLabel
        Left = 36
        Top = 25
        Width = 49
        Height = 13
        Caption = 'Customer'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 13
        Top = 52
        Width = 72
        Height = 13
        Caption = 'Mobile Phone'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 58
        Top = 79
        Width = 27
        Height = 13
        Caption = 'Email'
        FocusControl = DBEdit3
      end
      object Label6: TLabel
        Left = 370
        Top = 25
        Width = 66
        Height = 13
        Caption = 'Date of Birth'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 60
        Top = 105
        Width = 25
        Height = 13
        Caption = 'Note'
        FocusControl = DBEdit5
      end
      object DBEdit1: TDBEdit
        Left = 96
        Top = 22
        Width = 241
        Height = 21
        TabStop = False
        DataField = 'NombreCompleto'
        DataSource = DMwc.dsWC_PATIENTS
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 96
        Top = 49
        Width = 241
        Height = 21
        TabStop = False
        DataField = 'NOTIFICATION_MODE2_TELEPHONE'
        DataSource = DMwc.dsWC_PATIENTS
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 96
        Top = 76
        Width = 241
        Height = 21
        TabStop = False
        DataField = 'email'
        DataSource = DMwc.dsWC_PATIENTS
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 447
        Top = 22
        Width = 98
        Height = 21
        TabStop = False
        DataField = 'FECHANACIMIENTO'
        DataSource = DMwc.dsWC_PATIENTS
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 96
        Top = 102
        Width = 449
        Height = 21
        TabStop = False
        DataSource = DMwc.dsWC_PATIENTS
        ReadOnly = True
        TabOrder = 4
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 195
    Width = 1070
    Height = 141
    Align = alClient
    DataSource = DMwc.dsWillCall
    DrawingStyle = gdsGradient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'POS_PICKUP'
        Title.Caption = 'POS Pickup'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'StatusDefine'
        Title.Caption = 'Status'
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RX_NUMBER'
        Title.Caption = 'Rx Number'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DRUG_DESCRIPTION'
        Title.Caption = 'Item'
        Width = 371
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NDC'
        Width = 149
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RX_DATE'
        Title.Caption = 'Rx Date'
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AmountDue'
        Title.Caption = 'Amount Due'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTE'
        Title.Caption = 'Note'
        Width = 306
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRANSACTION_NUMBER'
        Title.Caption = 'Transaction Number'
        Width = 105
        Visible = True
      end>
  end
  object ToolBar2: TToolBar
    Left = 0
    Top = 0
    Width = 1070
    Height = 57
    ButtonHeight = 52
    ButtonWidth = 84
    Caption = 'ToolBar2'
    Images = FrmMain.ImageListToolBar
    ShowCaptions = True
    TabOrder = 4
    object ToolButton3: TToolButton
      Left = 0
      Top = 0
      Caption = 'Select one'
      ImageIndex = 13
      OnClick = DBGrid1DblClick
    end
    object tbSelectAll: TToolButton
      Left = 84
      Top = 0
      Caption = 'Select all'
      ImageIndex = 13
      OnClick = tbSelectAllClick
    end
    object tbPIckup: TToolButton
      Left = 168
      Top = 0
      Caption = '   Pickup    '
      ImageIndex = 8
      OnClick = tbPIckupClick
    end
    object ToolButton1: TToolButton
      Left = 252
      Top = 0
      Caption = 'View Rx'
      ImageIndex = 7
      OnClick = ToolButton1Click
    end
    object ToolButton4: TToolButton
      Left = 336
      Top = 0
      Caption = 'Notifications'
      ImageIndex = 9
      OnClick = ToolButton4Click
    end
    object BtneSignature: TToolButton
      Left = 420
      Top = 0
      Hint = 'Signature Capture'
      Caption = 'Signature'
      ImageIndex = 14
      OnClick = BtneSignatureClick
    end
    object tbSearchTag: TToolButton
      Left = 504
      Top = 0
      Caption = 'Tag Search'
      ImageIndex = 16
      OnClick = tbSearchTagClick
    end
    object ToolButton2: TToolButton
      Left = 588
      Top = 0
      Caption = 'Rx not paid for'
      ImageIndex = 10
      OnClick = ToolButton2Click
    end
    object ToolButton5: TToolButton
      Left = 672
      Top = 0
      Caption = 'Remove Rx'
      ImageIndex = 11
      OnClick = ToolButton5Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 577
    Width = 1070
    Height = 43
    Align = alBottom
    TabOrder = 5
    object ButtonOk: TButton
      AlignWithMargins = True
      Left = 896
      Top = 4
      Width = 89
      Height = 35
      Align = alRight
      Caption = '&Pickup'
      ImageIndex = 8
      Images = FrmMain.ImageListToolBar
      ModalResult = 1
      TabOrder = 0
      OnClick = tbPIckupClick
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 991
      Top = 4
      Width = 75
      Height = 35
      Align = alRight
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object TimerStopTagSearch: TTimer
    Enabled = False
    Interval = 0
    OnTimer = TimerStopTagSearchTimer
    Left = 992
    Top = 32
  end
end
