object FrmSearchPatRx: TFrmSearchPatRx
  Left = 0
  Top = 0
  Caption = 'FrmSearchPatRx'
  ClientHeight = 630
  ClientWidth = 975
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 975
    Height = 45
    Align = alTop
    TabOrder = 0
    object EdtSearch: TEdit
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 533
      Height = 37
      Align = alLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'Search Customer'
      ExplicitHeight = 36
    end
  end
  object Panel2: TPanel
    Left = 808
    Top = 45
    Width = 167
    Height = 263
    Align = alRight
    TabOrder = 2
    object btnOK: TBitBtn
      Left = 7
      Top = 18
      Width = 145
      Height = 49
      Caption = 'OK'
      Default = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 1
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
    object BitBtn4: TBitBtn
      Left = 7
      Top = 78
      Width = 145
      Height = 49
      Cancel = True
      Caption = 'Cancel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 2
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 7
      Top = 139
      Width = 145
      Height = 49
      Cancel = True
      Caption = 'NEXT'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object BitBtn2: TBitBtn
      Left = 7
      Top = 200
      Width = 145
      Height = 49
      Cancel = True
      Caption = 'BACK'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 308
    Width = 975
    Height = 322
    Align = alBottom
    Caption = 'Keyboard'
    TabOrder = 3
    object TouchKeyboard1: TTouchKeyboard
      Left = 2
      Top = 17
      Width = 971
      Height = 303
      Align = alClient
      GradientEnd = clSilver
      GradientStart = clGray
      Layout = 'Standard'
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 45
    Width = 808
    Height = 263
    Align = alClient
    DataSource = DMMidas.DSPacientes
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NombreCompleto'
        Title.Caption = 'Patient'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CELULAR'
        Title.Caption = 'Mobile Phone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FullAddress'
        Title.Caption = 'Address'
        Width = 357
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECHANACIMIENTO'
        Title.Caption = 'DOB'
        Visible = True
      end>
  end
end
