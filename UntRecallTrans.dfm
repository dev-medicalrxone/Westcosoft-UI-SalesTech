object FrmRecallTrans: TFrmRecallTrans
  Left = 26
  Top = 43
  Caption = 'Recall Transactions'
  ClientHeight = 631
  ClientWidth = 1151
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
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1151
    Height = 41
    Align = alTop
    TabOrder = 1
    object Button2: TButton
      AlignWithMargins = True
      Left = 411
      Top = 4
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'Show all'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      AlignWithMargins = True
      Left = 492
      Top = 4
      Width = 113
      Height = 33
      Align = alLeft
      Caption = 'Show all delivered'
      TabOrder = 2
      OnClick = Button3Click
    end
    object EditNumber: TEdit
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 250
      Height = 33
      Align = alLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'Search'
      OnChange = EditNumberChange
      OnExit = EditNumberExit
    end
    object cxDateEdit1: TDateTimePicker
      AlignWithMargins = True
      Left = 260
      Top = 4
      Width = 145
      Height = 33
      Align = alLeft
      Date = 43138.618216585650000000
      Time = 43138.618216585650000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnChange = cxDateEdit1Change
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 590
    Width = 1151
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 991
      Top = 4
      Width = 75
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
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 1072
      Top = 4
      Width = 75
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
      TabOrder = 1
      TabStop = False
    end
    object CheckBox1: TCheckBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 89
      Height = 33
      Align = alLeft
      Caption = 'Considere Qty.'
      TabOrder = 2
      Visible = False
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 1151
    Height = 199
    Align = alTop
    DataSource = DMMidas.DSRecallTrans
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TRANSACTIONNUMBER'
        Title.Caption = 'NO. TRANS.'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUSTOMER'
        Width = 205
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPENED'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRANSACTIONDATE'
        Title.Caption = 'DATE'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMBERITEMS'
        Title.Caption = 'NO. ITEMS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUBTOTAL'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SHIFT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REGISTER'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMPLOYNUMBER'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELIVERED'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELIVERYNAME'
        Title.Caption = 'DELIVERED BY'
        Visible = True
      end>
  end
  object TouchKeyboard1: TTouchKeyboard
    Left = 0
    Top = 240
    Width = 1151
    Height = 350
    Align = alClient
    GradientEnd = clSilver
    GradientStart = clGray
    Layout = 'Standard'
  end
end
