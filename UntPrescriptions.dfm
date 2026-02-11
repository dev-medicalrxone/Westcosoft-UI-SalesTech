object FrmPrescriptions: TFrmPrescriptions
  Left = 0
  Top = 0
  Caption = 'Avaulable Prescriptions for '
  ClientHeight = 330
  ClientWidth = 902
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
  object Panel1: TPanel
    Left = 0
    Top = 289
    Width = 902
    Height = 41
    Align = alBottom
    TabOrder = 0
    object btnOk: TButton
      AlignWithMargins = True
      Left = 823
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 902
    Height = 248
    Align = alClient
    DataSource = DMMidas.DSOTC
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CLAIM_STATUS_DEFINE'
        Title.Caption = 'Claim Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERORECETA'
        Title.Caption = 'Rx. Number'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MEDICAMENTO'
        Title.Caption = 'Drug'
        Width = 245
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECHAOTC'
        Title.Caption = 'Date'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAGO_PLAN'
        Title.Caption = 'Plan Paid Amount'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEDUCIBLE'
        Title.Caption = 'Patient Paid Amount'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'WF_CASHIER'
        Title.Caption = 'Cashier'
        Width = 125
        Visible = True
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 902
    Height = 41
    ButtonHeight = 36
    ButtonWidth = 70
    Caption = 'ToolBar1'
    Images = FrmMain.ImageListDB
    ShowCaptions = True
    TabOrder = 2
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = 'Insert to Bag'
      ImageIndex = 0
      Style = tbsTextButton
      OnClick = ToolButton1Click
    end
  end
end
