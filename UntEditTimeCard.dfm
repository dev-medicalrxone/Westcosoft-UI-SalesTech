object FrmEditTimeCard: TFrmEditTimeCard
  Left = 0
  Top = 0
  Caption = 'Edit Time Card'
  ClientHeight = 370
  ClientWidth = 350
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 53
    Width = 57
    Height = 13
    Caption = 'PUNCH IN 1'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 32
    Top = 95
    Width = 67
    Height = 13
    Caption = 'PUNCH OUT 1'
    FocusControl = DBEdit2
  end
  object Label4: TLabel
    Left = 440
    Top = 328
    Width = 29
    Height = 13
    Caption = 'SHIFT'
    FocusControl = DBEdit4
    Visible = False
  end
  object Label5: TLabel
    Left = 32
    Top = 249
    Width = 29
    Height = 13
    Caption = 'DAILY'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 440
    Top = 232
    Width = 64
    Height = 13
    Caption = 'COMULATIVE'
    FocusControl = DBEdit6
    Visible = False
  end
  object Label7: TLabel
    Left = 32
    Top = 152
    Width = 57
    Height = 13
    Caption = 'PUNCH IN 2'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 32
    Top = 192
    Width = 67
    Height = 13
    Caption = 'PUNCH OUT 2'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 440
    Top = 277
    Width = 47
    Height = 13
    Caption = 'SECONDS'
    FocusControl = DBEdit9
    Visible = False
  end
  object Label10: TLabel
    Left = 32
    Top = 8
    Width = 46
    Height = 13
    Caption = 'Employee'
    FocusControl = DBEdit10
  end
  object Bevel1: TBevel
    Left = 32
    Top = 138
    Width = 281
    Height = 7
  end
  object Bevel2: TBevel
    Left = 32
    Top = 235
    Width = 281
    Height = 7
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 69
    Width = 140
    Height = 21
    DataField = 'PUNCH_IN_1'
    DataSource = DMMidas.dsTime_Card
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 32
    Top = 111
    Width = 140
    Height = 21
    DataField = 'PUNCH_OUT_1'
    DataSource = DMMidas.dsTime_Card
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 440
    Top = 344
    Width = 108
    Height = 21
    DataField = 'SHIFT'
    DataSource = DMMidas.dsTime_Card
    TabOrder = 2
    Visible = False
  end
  object DBEdit5: TDBEdit
    Left = 32
    Top = 265
    Width = 108
    Height = 21
    DataField = 'DAILY'
    DataSource = DMMidas.dsTime_Card
    ReadOnly = True
    TabOrder = 3
  end
  object DBEdit6: TDBEdit
    Left = 440
    Top = 248
    Width = 108
    Height = 21
    DataField = 'COMULATIVE'
    DataSource = DMMidas.dsTime_Card
    TabOrder = 4
    Visible = False
  end
  object DBEdit7: TDBEdit
    Left = 32
    Top = 168
    Width = 140
    Height = 21
    DataField = 'PUNCH_IN_2'
    DataSource = DMMidas.dsTime_Card
    TabOrder = 5
  end
  object DBEdit8: TDBEdit
    Left = 32
    Top = 208
    Width = 140
    Height = 21
    DataField = 'PUNCH_OUT_2'
    DataSource = DMMidas.dsTime_Card
    TabOrder = 6
  end
  object DBCheckBox1: TDBCheckBox
    Left = 32
    Top = 294
    Width = 97
    Height = 17
    Caption = 'APPROVED'
    DataField = 'APPROVED'
    DataSource = DMMidas.dsTime_Card
    TabOrder = 7
  end
  object DBEdit9: TDBEdit
    Left = 440
    Top = 293
    Width = 134
    Height = 21
    DataField = 'SECONDS'
    DataSource = DMMidas.dsTime_Card
    TabOrder = 8
    Visible = False
  end
  object DBEdit10: TDBEdit
    Left = 32
    Top = 24
    Width = 185
    Height = 21
    DataField = 'Employee_define'
    DataSource = DMMidas.dsTime_Card
    TabOrder = 9
  end
  object Panel1: TPanel
    Left = 0
    Top = 329
    Width = 350
    Height = 41
    Align = alBottom
    TabOrder = 10
    ExplicitLeft = 248
    ExplicitTop = 184
    ExplicitWidth = 185
    object Button1: TButton
      AlignWithMargins = True
      Left = 271
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 0
      ExplicitLeft = 220
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 190
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 1
      ExplicitLeft = 139
    end
  end
end
