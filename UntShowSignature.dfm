object FrmShowSignature: TFrmShowSignature
  Left = 326
  Top = 153
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'e-Signature'
  ClientHeight = 229
  ClientWidth = 521
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 13
  object SigPlus1: TSigPlus
    Left = 0
    Top = 33
    Width = 521
    Height = 150
    ParentColor = False
    ParentFont = False
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 3
    ExplicitWidth = 489
    ControlData = {
      18000200D9350000810F000009000000080000800F0000800000000000000100
      6608A406F40190015A0A3408040000000600010000C201000000010000000100
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000010000000000000000000000000000010000}
  end
  object Panel1: TPanel
    Left = 0
    Top = 366
    Width = 521
    Height = 34
    Align = alClient
    TabOrder = 1
    object Label3: TLabel
      Left = 20
      Top = 22
      Width = 72
      Height = 13
      Caption = 'Recogido Por:'
    end
    object Label4: TLabel
      Left = 20
      Top = 52
      Width = 87
      Height = 13
      Caption = 'Recogido por ID:'
    end
    object Label5: TLabel
      Left = 20
      Top = 79
      Width = 33
      Height = 13
      Caption = 'Fecha:'
    end
    object Label6: TLabel
      Left = 20
      Top = 106
      Width = 43
      Height = 13
      Caption = 'Usuario:'
    end
    object Label7: TLabel
      Left = 20
      Top = 133
      Width = 71
      Height = 13
      Caption = 'Farmaceutico:'
    end
    object DBEdit1: TDBEdit
      Left = 127
      Top = 19
      Width = 193
      Height = 21
      DataField = 'PICKEDUPBY_RELATION'
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 127
      Top = 49
      Width = 193
      Height = 21
      DataField = 'PICKEDUP_ID'
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 127
      Top = 76
      Width = 193
      Height = 21
      DataField = 'SIGNATURE_DATE'
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 127
      Top = 103
      Width = 193
      Height = 21
      DataField = 'SIGNATURE_USER'
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 127
      Top = 130
      Width = 193
      Height = 21
      DataField = 'PHARMACIST'
      ReadOnly = True
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 521
    Height = 33
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 17
      Top = 9
      Width = 89
      Height = 13
      Caption = 'Patient Signature'
    end
  end
  object SigPlus2: TSigPlus
    Left = 0
    Top = 216
    Width = 521
    Height = 150
    ParentColor = False
    ParentFont = False
    Align = alTop
    TabOrder = 3
    ExplicitTop = 211
    ControlData = {
      18000200D9350000810F000009000000080000800F0000800000000000000100
      6608A406F40190015A0A3408040000000600010000C201000000010000000100
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000010000000000000000000000000000010000}
  end
  object Panel3: TPanel
    Left = 0
    Top = 183
    Width = 521
    Height = 33
    Align = alTop
    TabOrder = 4
    object Label2: TLabel
      Left = 17
      Top = 9
      Width = 108
      Height = 13
      Caption = 'Pharmacist Signature'
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 188
    Width = 521
    Height = 41
    Align = alBottom
    TabOrder = 5
    object Button1: TButton
      AlignWithMargins = True
      Left = 442
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = '&Ok'
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 361
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = '&Print'
      TabOrder = 1
      Visible = False
      OnClick = cxButton3Click
    end
  end
end
