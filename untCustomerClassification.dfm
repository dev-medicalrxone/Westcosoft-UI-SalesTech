object frmCustomerClassification: TfrmCustomerClassification
  Left = 0
  Top = 0
  Caption = 'Customer Classification'
  ClientHeight = 236
  ClientWidth = 470
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 470
    Height = 29
    Caption = 'ToolBar1'
    Images = FrmMain.ImageListDB
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 23
      Top = 0
      Caption = 'ToolButton2'
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object ToolButton4: TToolButton
      Left = 46
      Top = 0
      Caption = 'ToolButton4'
      ImageIndex = 3
      OnClick = ToolButton4Click
    end
    object ToolButton5: TToolButton
      Left = 69
      Top = 0
      Caption = 'ToolButton5'
      ImageIndex = 5
      OnClick = ToolButton5Click
    end
    object ToolButton3: TToolButton
      Left = 92
      Top = 0
      Caption = 'ToolButton3'
      ImageIndex = 2
      OnClick = ToolButton3Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 193
    Width = 470
    Height = 43
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 256
    ExplicitWidth = 635
    object Button1: TButton
      Left = 307
      Top = 1
      Width = 0
      Height = 41
      Align = alRight
      Caption = 'Button1'
      TabOrder = 0
      ExplicitLeft = 336
      ExplicitTop = 16
      ExplicitWidth = 75
      ExplicitHeight = 25
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 391
      Top = 4
      Width = 75
      Height = 35
      Align = alRight
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
      ExplicitLeft = 504
      ExplicitTop = 8
      ExplicitHeight = 33
    end
    object Button3: TButton
      AlignWithMargins = True
      Left = 310
      Top = 4
      Width = 75
      Height = 35
      Align = alRight
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 2
      ExplicitLeft = 504
      ExplicitTop = 8
      ExplicitHeight = 33
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 29
    Width = 470
    Height = 164
    Align = alClient
    DataSource = DMMidas.dsCUSTOMER_CLASSIFICATION
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CLIENT_CASSIFICATION'
        Title.Caption = 'CLIENT CASSIFICATION'
        Width = 373
        Visible = True
      end>
  end
end
