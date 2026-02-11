object FrmSelectOrder: TFrmSelectOrder
  Left = 236
  Top = 239
  Caption = 'Seleccionar orden'
  ClientHeight = 355
  ClientWidth = 679
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 679
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 0
    object Edit1: TEdit
      Left = 2
      Top = 3
      Width = 239
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 320
    Width = 679
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 1
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 520
      Top = 3
      Width = 75
      Height = 29
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
      ExplicitLeft = 528
      ExplicitTop = 5
      ExplicitHeight = 25
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 601
      Top = 3
      Width = 75
      Height = 29
      Align = alRight
      Cancel = True
      Caption = 'Cancelar'
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
      ExplicitLeft = 608
      ExplicitTop = 5
      ExplicitHeight = 25
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 29
    Width = 679
    Height = 291
    Align = alClient
    DataSource = DtSrcDisplay
    Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DtSrcDisplay: TDataSource
    DataSet = DMMidas.CDSClientTransactions
    Left = 156
    Top = 96
  end
end
