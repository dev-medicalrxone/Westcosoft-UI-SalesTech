object FrmValidateProds: TFrmValidateProds
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'FrmValidateProds'
  ClientHeight = 511
  ClientWidth = 582
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 476
    Width = 582
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 0
    ExplicitTop = 465
    ExplicitWidth = 576
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 498
      Top = 3
      Width = 75
      Height = 29
      Align = alRight
      Caption = 'OK'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 1
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 417
      Top = 3
      Width = 75
      Height = 29
      Align = alRight
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 276
    Width = 576
    Height = 189
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 81
    Width = 582
    Height = 395
    Align = alClient
    DataSource = DMMidas.DSTransShow2
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TRIPLES_COVERED'
        Title.Caption = 'COVERED'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODDESCRIPTION'
        Title.Caption = 'DESCRIPTION'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTY'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UPC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRICE'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 582
    Height = 81
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitWidth = 576
    object Bevel1: TBevel
      Left = 352
      Top = 0
      Width = 176
      Height = 81
      Align = alLeft
      ExplicitLeft = 351
      ExplicitTop = -4
      ExplicitHeight = 79
    end
    object Bevel2: TBevel
      Left = 0
      Top = 0
      Width = 176
      Height = 81
      Align = alLeft
      ExplicitLeft = -23
      ExplicitTop = 6
      ExplicitHeight = 79
    end
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 52
      Height = 13
      Caption = 'Total Sales'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMedGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 183
      Top = 8
      Width = 65
      Height = 13
      Caption = 'MCS Covered'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMedGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LabelTotalSales: TLabel
      Left = 86
      Top = 29
      Width = 59
      Height = 29
      Alignment = taRightJustify
      Caption = '$0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Bevel3: TBevel
      Left = 176
      Top = 0
      Width = 176
      Height = 81
      Align = alLeft
      ExplicitLeft = 177
      ExplicitTop = -4
      ExplicitHeight = 79
    end
    object Label3: TLabel
      Left = 359
      Top = 8
      Width = 61
      Height = 13
      Caption = 'Not Covered'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMedGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LabelCoverd: TLabel
      Left = 267
      Top = 29
      Width = 59
      Height = 29
      Alignment = taRightJustify
      Caption = '$0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LabelNotCoverd: TLabel
      Left = 435
      Top = 29
      Width = 59
      Height = 29
      Alignment = taRightJustify
      Caption = '$0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object FDQuery1: TFDQuery
    Connection = DMMidas.FDConnection1
    Left = 504
    Top = 152
  end
end
