object FrmReprintSettle: TFrmReprintSettle
  Left = 0
  Top = 0
  Caption = 'Reprint settle'
  ClientHeight = 417
  ClientWidth = 286
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 26
    Width = 280
    Height = 347
    Align = alClient
    DataSource = DMMidas.dsEvertec
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATE_TIME'
        Width = 199
        Visible = True
      end>
  end
  object DateTimePicker1: TDateTimePicker
    Left = 0
    Top = 0
    Width = 286
    Height = 23
    Align = alTop
    Date = 45464.000000000000000000
    Time = 0.475402418982412200
    TabOrder = 1
    OnCloseUp = DateTimePicker1CloseUp
    ExplicitLeft = 56
    ExplicitTop = 216
    ExplicitWidth = 186
  end
  object Panel1: TPanel
    Left = 0
    Top = 376
    Width = 286
    Height = 41
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = 56
    ExplicitTop = 208
    ExplicitWidth = 185
    object Button1: TButton
      AlignWithMargins = True
      Left = 126
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Print'
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 112
      ExplicitTop = 16
      ExplicitHeight = 25
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 207
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Close'
      ModalResult = 8
      TabOrder = 1
      ExplicitLeft = 144
      ExplicitTop = 16
      ExplicitHeight = 25
    end
  end
end
