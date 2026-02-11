object FrmCombo: TFrmCombo
  Left = 0
  Top = 0
  Caption = 'Combo'
  ClientHeight = 423
  ClientWidth = 642
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 382
    Width = 642
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 542
      Top = 4
      Width = 96
      Height = 33
      Align = alRight
      Cancel = True
      Caption = 'Cancel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 2
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 318
      ExplicitTop = 20
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 440
      Top = 4
      Width = 96
      Height = 33
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
      TabOrder = 1
      ExplicitLeft = 358
      ExplicitTop = 12
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 642
    Height = 29
    Caption = 'ToolBar1'
    Images = FrmMain.ImageListDB
    TabOrder = 1
    object Edit1: TEdit
      Left = 0
      Top = 0
      Width = 167
      Height = 22
      TabOrder = 0
      OnChange = Edit1Change
    end
    object ToolButton1: TToolButton
      Left = 167
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 190
      Top = 0
      Caption = 'ToolButton2'
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object ToolButton9: TToolButton
      Left = 213
      Top = 0
      Caption = 'ToolButton9'
      ImageIndex = 3
      OnClick = ToolButton9Click
    end
    object ToolButton11: TToolButton
      Left = 236
      Top = 0
      Caption = 'ToolButton11'
      ImageIndex = 5
      OnClick = ToolButton11Click
    end
    object ToolButton10: TToolButton
      Left = 259
      Top = 0
      Caption = 'ToolButton10'
      ImageIndex = 4
      OnClick = ToolButton10Click
    end
    object ToolButton8: TToolButton
      Left = 282
      Top = 0
      Caption = 'ToolButton8'
      ImageIndex = 2
      OnClick = ToolButton8Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 149
    Width = 642
    Height = 41
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 15
      Top = 12
      Width = 30
      Height = 13
      Caption = 'Detail'
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 29
    Width = 642
    Height = 120
    Align = alTop
    DataSource = DMMidas.DSCombo
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'COMBO_ID'
        Title.Caption = 'COMBO ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUCT'
        Title.Caption = 'COMBO NAME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRICE'
        ReadOnly = True
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 219
    Width = 642
    Height = 163
    Align = alClient
    DataSource = DMMidas.DSCombo_DETAIL
    TabOrder = 4
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PRODUCTNO'
        ReadOnly = True
        Title.Caption = 'PRODUCT NO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUCT'
        Width = 308
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRICE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTITY'
        PickList.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5')
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        ReadOnly = True
        Width = 76
        Visible = True
      end>
  end
  object ToolBar2: TToolBar
    Left = 0
    Top = 190
    Width = 642
    Height = 29
    Caption = 'ToolBar1'
    Images = FrmMain.ImageListDB
    TabOrder = 5
    object ToolButton3: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 0
      OnClick = ToolButton3Click
    end
    object ToolButton4: TToolButton
      Left = 23
      Top = 0
      Caption = 'ToolButton2'
      ImageIndex = 1
      OnClick = ToolButton4Click
    end
    object ToolButton6: TToolButton
      Left = 46
      Top = 0
      Caption = 'ToolButton6'
      ImageIndex = 3
      OnClick = ToolButton6Click
    end
    object ToolButton12: TToolButton
      Left = 69
      Top = 0
      Caption = 'ToolButton12'
      ImageIndex = 5
      OnClick = ToolButton12Click
    end
    object ToolButton7: TToolButton
      Left = 92
      Top = 0
      Caption = 'ToolButton7'
      ImageIndex = 4
      OnClick = ToolButton7Click
    end
    object ToolButton5: TToolButton
      Left = 115
      Top = 0
      Caption = 'ToolButton5'
      ImageIndex = 2
      OnClick = ToolButton5Click
    end
  end
end
