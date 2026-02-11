object FrmEditTabs: TFrmEditTabs
  Left = 0
  Top = 0
  Caption = 'Edit Tab'#39's an Tables'
  ClientHeight = 415
  ClientWidth = 573
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 37
    Width = 123
    Height = 13
    Caption = 'Location (Button Caption)'
    FocusControl = DBEdit1
  end
  object Label3: TLabel
    Left = 16
    Top = 85
    Width = 32
    Height = 13
    Caption = 'Server'
    FocusControl = DBEdit3
  end
  object Label8: TLabel
    Left = 16
    Top = 128
    Width = 69
    Height = 13
    Caption = 'Group Balance'
    FocusControl = DBEdit8
  end
  object TouchKeyboard1: TTouchKeyboard
    Left = 0
    Top = 194
    Width = 573
    Height = 180
    Align = alBottom
    GradientEnd = clSilver
    GradientStart = clGray
    Layout = 'Standard'
  end
  object Panel2: TPanel
    Left = 0
    Top = 374
    Width = 573
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      AlignWithMargins = True
      Left = 494
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 573
    Height = 25
    ButtonHeight = 25
    ButtonWidth = 32
    Caption = 'ToolBar1'
    TabOrder = 2
    object TBPost: TToolButton
      Left = 0
      Top = 0
      Caption = 'TBPost'
      ImageIndex = 1
      OnClick = TBPostClick
    end
    object ToolButton1: TToolButton
      Left = 32
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 0
    end
    object ToolButton3: TToolButton
      Left = 64
      Top = 0
      Caption = 'ToolButton3'
      ImageIndex = 3
    end
    object ToolButton5: TToolButton
      Left = 96
      Top = 0
      Caption = 'ToolButton5'
      ImageIndex = 4
      OnClick = ToolButton5Click
    end
    object ToolButton2: TToolButton
      Left = 128
      Top = 0
      Caption = 'ToolButton2'
      ImageIndex = 5
      OnClick = ToolButton2Click
    end
    object ToolButton4: TToolButton
      Left = 160
      Top = 0
      Caption = 'ToolButton4'
      ImageIndex = 6
    end
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 56
    Width = 200
    Height = 21
    DataField = 'BUTTON_CAPTION'
    DataSource = DMMidas.dsTabsHeader
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 101
    Width = 134
    Height = 21
    DataField = 'SERVER'
    DataSource = DMMidas.dsTabsHeader
    ReadOnly = True
    TabOrder = 4
  end
  object DBEdit8: TDBEdit
    Left = 16
    Top = 144
    Width = 134
    Height = 21
    DataField = 'GROUP_BALANCE'
    DataSource = DMMidas.dsTabsHeader
    TabOrder = 5
  end
end
