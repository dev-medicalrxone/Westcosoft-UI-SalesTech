object FrmBotones: TFrmBotones
  Left = 0
  Top = 0
  Caption = 'Preset Buttons'
  ClientHeight = 382
  ClientWidth = 602
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 328
    Width = 602
    Height = 54
    Align = alBottom
    TabOrder = 0
    object Button2: TButton
      AlignWithMargins = True
      Left = 523
      Top = 4
      Width = 75
      Height = 46
      Align = alRight
      Caption = 'Close'
      ModalResult = 11
      TabOrder = 0
    end
    object DBImage1: TDBImage
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 65
      Height = 46
      Align = alLeft
      DataField = 'BUTTON_IMAGE'
      DataSource = DMMidas.dsBotones
      TabOrder = 1
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 29
    Width = 602
    Height = 299
    Align = alClient
    DataSource = DMMidas.dsBotones
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'PRODUCTNO'
        Title.Caption = 'PRODUCT NO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRIPTION'
        Width = 195
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTY'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BUTTON_NUMBER'
        Title.Caption = 'BUTTON NUMBER'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROCEDURE_ADD_ON'
        Title.Caption = 'Procedure Add on'
        Width = 134
        Visible = True
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 602
    Height = 29
    Caption = 'ToolBar1'
    Images = FrmMain.ImageListDB
    TabOrder = 2
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton3: TToolButton
      Left = 23
      Top = 0
      Caption = 'ToolButton3'
      ImageIndex = 3
      OnClick = ToolButton3Click
    end
    object ToolButton5: TToolButton
      Left = 46
      Top = 0
      Caption = 'ToolButton5'
      ImageIndex = 4
      OnClick = ToolButton5Click
    end
    object ToolButton2: TToolButton
      Left = 69
      Top = 0
      Caption = 'ToolButton2'
      ImageIndex = 5
      OnClick = ToolButton2Click
    end
    object ToolButton4: TToolButton
      Left = 92
      Top = 0
      Caption = 'ToolButton4'
      ImageIndex = 2
    end
  end
end
