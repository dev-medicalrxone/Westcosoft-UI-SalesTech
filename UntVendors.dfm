object FrmVendors: TFrmVendors
  Left = 0
  Top = 0
  Caption = 'Vendors'
  ClientHeight = 566
  ClientWidth = 816
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
  object Panel1: TPanel
    Left = 0
    Top = 525
    Width = 816
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitTop = 541
    object Button2: TButton
      AlignWithMargins = True
      Left = 656
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 0
      ExplicitTop = 3
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 737
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 1
      ExplicitLeft = 935
      ExplicitTop = 3
      ExplicitHeight = 31
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 816
    Height = 28
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 678
    object EditSearchVendors: TEdit
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 349
      Height = 20
      Align = alLeft
      TabOrder = 0
      TextHint = 'Search Vendors'
      OnChange = EditSearchVendorsChange
    end
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 31
    Width = 810
    Height = 259
    Align = alClient
    DataSource = DMMidas.DSPasswords
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'USERNAME'
        Title.Caption = 'Username'
        Width = 328
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INICIALES'
        Title.Caption = 'Initials'
        Width = 88
        Visible = True
      end>
  end
  object TouchKeyboard1: TTouchKeyboard
    AlignWithMargins = True
    Left = 10
    Top = 296
    Width = 796
    Height = 219
    Margins.Left = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alBottom
    GradientEnd = clSilver
    GradientStart = clGray
    Layout = 'Standard'
    ExplicitLeft = 5
    ExplicitTop = 286
  end
end
