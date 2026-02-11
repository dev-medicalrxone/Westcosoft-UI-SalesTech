object FrmHandheld: TFrmHandheld
  Left = 0
  Top = 0
  Caption = 'Receiving Handheld'
  ClientHeight = 550
  ClientWidth = 943
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnResize = FormResize
  TextHeight = 15
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 943
    Height = 117
    Align = alTop
    ParentBackground = False
    TabOrder = 0
    object Label5: TLabel
      Left = 26
      Top = 36
      Width = 40
      Height = 15
      Caption = 'Devices'
    end
    object Label11: TLabel
      Left = 26
      Top = 60
      Width = 28
      Height = 15
      Caption = 'Users'
    end
    object cboDevices: TComboBox
      Left = 70
      Top = 33
      Width = 162
      Height = 23
      TabOrder = 0
      OnChange = cboControlChange
    end
    object cboUsers: TComboBox
      Left = 70
      Top = 60
      Width = 162
      Height = 23
      TabOrder = 1
      OnChange = cboControlChange
    end
    object GroupBox1: TGroupBox
      Left = 257
      Top = 24
      Width = 656
      Height = 65
      TabOrder = 2
      object Label12: TLabel
        Left = 41
        Top = 36
        Width = 38
        Height = 15
        Alignment = taCenter
        Caption = '0 Items'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 140
        Top = 37
        Width = 38
        Height = 15
        Alignment = taCenter
        Caption = '0 Items'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 240
        Top = 36
        Width = 38
        Height = 15
        Alignment = taCenter
        Caption = '0 Items'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 364
        Top = 35
        Width = 38
        Height = 15
        Alignment = taCenter
        Caption = '0 Items'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 463
        Top = 36
        Width = 38
        Height = 15
        Alignment = taCenter
        Caption = '0 Items'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 554
        Top = 35
        Width = 38
        Height = 15
        Alignment = taCenter
        Caption = '0 Items'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object RadioButton1: TRadioButton
        Left = 24
        Top = 13
        Width = 73
        Height = 17
        Caption = 'All Types'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rbOnClick
      end
      object RadioButton2: TRadioButton
        Left = 123
        Top = 14
        Width = 78
        Height = 17
        Caption = 'Receiving'
        TabOrder = 1
        OnClick = rbOnClick
      end
      object RadioButton3: TRadioButton
        Left = 223
        Top = 13
        Width = 111
        Height = 17
        Caption = 'Inventory Mod'
        TabOrder = 2
        OnClick = rbOnClick
      end
      object RadioButton4: TRadioButton
        Left = 347
        Top = 12
        Width = 75
        Height = 17
        Caption = 'Returns'
        TabOrder = 3
        OnClick = rbOnClick
      end
      object RadioButton5: TRadioButton
        Left = 443
        Top = 13
        Width = 65
        Height = 17
        Caption = 'Transfer'
        TabOrder = 4
        OnClick = rbOnClick
      end
      object RadioButton6: TRadioButton
        Left = 537
        Top = 12
        Width = 87
        Height = 17
        Caption = 'Not Found'
        TabOrder = 5
        OnClick = rbOnClick
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 89
      Width = 941
      Height = 27
      Align = alBottom
      BevelOuter = bvNone
      Ctl3D = False
      ParentBackground = False
      ParentCtl3D = False
      ShowCaption = False
      TabOrder = 3
      StyleElements = []
      object Panel2: TPanel
        Left = 708
        Top = 0
        Width = 233
        Height = 27
        Align = alRight
        BevelOuter = bvNone
        Caption = 'Panel2'
        ParentBackground = False
        ShowCaption = False
        TabOrder = 0
        object chkAllDismiss: TCheckBox
          Left = 60
          Top = 4
          Width = 17
          Height = 23
          Caption = 'chkAllDismiss'
          TabOrder = 0
          OnClick = chkAllDismissClick
        end
        object chkAllRemove: TCheckBox
          Left = 160
          Top = 7
          Width = 17
          Height = 17
          Caption = 'chkAllRemove'
          TabOrder = 1
          OnClick = chkAllRemoveClick
        end
      end
    end
  end
  object DBGridHandheld: TDBGrid
    Left = 0
    Top = 117
    Width = 943
    Height = 380
    Align = alClient
    Color = clWhite
    DataSource = DMMidas.DSRecHandheld
    DrawingStyle = gdsClassic
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'TYPENAME'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DeviceID'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'DEVICE ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERNAME'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'User'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'USERDETAIL'
        Title.Alignment = taCenter
        Title.Caption = 'USER'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Date'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'DATE'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UPC'
        ReadOnly = True
        Title.Alignment = taCenter
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRIPCION'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTY'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENDID'
        Title.Alignment = taCenter
        Title.Caption = 'VENDOR'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DISMISS'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'REMOVE'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TYPE'
        ReadOnly = True
        Visible = False
      end>
  end
  object Panel6: TPanel
    Left = 0
    Top = 497
    Width = 943
    Height = 53
    Align = alBottom
    ParentBackground = False
    TabOrder = 2
    object Panel7: TPanel
      Left = 709
      Top = 1
      Width = 233
      Height = 51
      Align = alRight
      BevelOuter = bvNone
      Ctl3D = False
      ParentBackground = False
      ParentCtl3D = False
      TabOrder = 0
      StyleElements = [seFont, seClient]
      object btnCancel: TButton
        Left = 38
        Top = 16
        Width = 75
        Height = 25
        Caption = 'CANCEL'
        TabOrder = 0
        OnClick = btnCancelClick
      end
      object btnProcess: TButton
        Left = 134
        Top = 16
        Width = 75
        Height = 25
        Caption = 'PROCESS'
        TabOrder = 1
        OnClick = btnProcessClick
      end
    end
  end
end
