object FrmUserList: TFrmUserList
  Left = 0
  Top = 0
  Caption = 'User list'
  ClientHeight = 458
  ClientWidth = 634
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 32
    Width = 634
    Height = 199
    Align = alClient
    DataSource = DMMidas.DSPasswords
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'USERNAME'
        Title.Caption = 'User Name'
        Width = 392
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 417
    Width = 634
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 321
    ExplicitWidth = 644
    object Button1: TButton
      AlignWithMargins = True
      Left = 555
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
      ExplicitLeft = 565
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 634
    Height = 32
    Align = alTop
    TabOrder = 2
    object EditSearch: TEdit
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 389
      Height = 24
      Align = alLeft
      TabOrder = 0
      TextHint = 'Search User'
      OnChange = EditSearchChange
    end
  end
  object TouchKeyboard1: TTouchKeyboard
    AlignWithMargins = True
    Left = 3
    Top = 234
    Width = 628
    Height = 180
    Align = alBottom
    GradientEnd = clSilver
    GradientStart = clGray
    Layout = 'Standard'
    ExplicitLeft = 256
    ExplicitTop = 376
    ExplicitWidth = 550
  end
end
