object FrmID: TFrmID
  Left = 447
  Top = 168
  Caption = 'ID'
  ClientHeight = 454
  ClientWidth = 246
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 414
    Width = 246
    Height = 40
    Align = alBottom
    TabOrder = 0
    object ButtonOk: TButton
      AlignWithMargins = True
      Left = 86
      Top = 4
      Width = 75
      Height = 32
      Align = alRight
      Caption = 'Ok'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 0
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 167
      Top = 4
      Width = 75
      Height = 32
      Align = alRight
      Caption = 'Cancel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
    end
    object BtnSave: TButton
      AlignWithMargins = True
      Left = 5
      Top = 4
      Width = 75
      Height = 32
      Align = alRight
      Caption = '&Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BtnSaveClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 351
    Width = 246
    Height = 63
    Align = alBottom
    TabOrder = 1
    object EditID: TEdit
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 238
      Height = 21
      Align = alTop
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'Identificacion'
      OnChange = EditIDChange
    end
    object EditPickedupBy: TEdit
      AlignWithMargins = True
      Left = 4
      Top = 31
      Width = 238
      Height = 21
      Align = alTop
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TextHint = 'Picked up by name'
      OnChange = EditIDChange
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 0
    Width = 246
    Height = 351
    Align = alClient
    Caption = 'Recojido por:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Paciente'
      'Esposo(a)'
      'Padres'
      'Familiar'
      'Representante Legal'
      'Otro')
    ParentFont = False
    TabOrder = 2
    OnClick = RadioGroup1Click
  end
end
