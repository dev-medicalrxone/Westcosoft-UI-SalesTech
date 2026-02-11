object FrmWillCallAvailables: TFrmWillCallAvailables
  Left = 0
  Top = 0
  Caption = 'WillCall Availables'
  ClientHeight = 401
  ClientWidth = 936
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 360
    Width = 936
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnOK: TButton
      AlignWithMargins = True
      Left = 857
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 936
    Height = 35
    Align = alTop
    TabOrder = 2
    object EditSearch: TEdit
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 373
      Height = 27
      Align = alLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'Buscar por Apellido Paterno, Materno, Nombre o Telefono'
      OnExit = EditSearchExit
      OnKeyPress = EditSearchKeyPress
      ExplicitHeight = 25
    end
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 35
    Width = 936
    Height = 325
    Align = alClient
    DataSource = DMwc.dsWC_PATIENTS
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnKeyPress = DBGrid2KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'BAG_NUMBER'
        Title.Caption = 'Bag Number'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NombreCompleto'
        Title.Caption = 'Patient'
        Width = 238
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CELULAR'
        Title.Caption = 'Mobile Phone'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECHANACIMIENTO'
        Title.Caption = 'DOB'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FullAddress'
        Title.Caption = 'Address '
        Width = 334
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATE_CREATED'
        Title.Caption = 'Date'
        Width = 81
        Visible = True
      end>
  end
end
