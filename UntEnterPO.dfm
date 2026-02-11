object FrmEnter_PO: TFrmEnter_PO
  Left = 0
  Top = 0
  Caption = 'Purchase Order'
  ClientHeight = 146
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 13
  object DBText1: TDBText
    Left = 24
    Top = 20
    Width = 60
    Height = 19
    AutoSize = True
    DataField = 'NombreCompleto2'
    DataSource = DMMidas.DSClientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 24
    Top = 53
    Width = 115
    Height = 13
    Caption = 'Purchase Order Number'
  end
  object Panel1: TPanel
    Left = 0
    Top = 105
    Width = 527
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      AlignWithMargins = True
      Left = 448
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
    end
  end
  object EditPO: TEdit
    Left = 24
    Top = 72
    Width = 185
    Height = 21
    TabOrder = 0
  end
end
