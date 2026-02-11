object FrmShopper2: TFrmShopper2
  Left = 0
  Top = 0
  Caption = 'Shopper by  percentage'
  ClientHeight = 222
  ClientWidth = 660
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 360
    Height = 192
    Align = alLeft
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 61
      Height = 13
      Caption = 'Department'
    end
    object Label2: TLabel
      Left = 24
      Top = 45
      Width = 26
      Height = 13
      Caption = 'From'
    end
    object Label3: TLabel
      Left = 24
      Top = 67
      Width = 12
      Height = 13
      Caption = 'To'
    end
    object Label4: TLabel
      Left = 24
      Top = 151
      Width = 93
      Height = 13
      Caption = '% Discount below'
    end
    object Label6: TLabel
      Left = 24
      Top = 124
      Width = 92
      Height = 13
      Caption = '% Discount above'
    end
    object Label7: TLabel
      Left = 24
      Top = 97
      Width = 41
      Height = 13
      Caption = 'Amount'
    end
    object SpeedButton1: TSpeedButton
      Left = 286
      Top = 39
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 286
      Top = 66
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = SpeedButton2Click
    end
    object EidtAmount: TMaskEdit
      Left = 135
      Top = 94
      Width = 145
      Height = 21
      Alignment = taRightJustify
      TabOrder = 3
      Text = '0.00'
    end
    object cbDiscountAbove: TComboBox
      Left = 135
      Top = 121
      Width = 145
      Height = 21
      TabOrder = 4
      Text = '10'
      Items.Strings = (
        '5'
        '10'
        '15'
        '20'
        '25'
        '30'
        '35'
        '40'
        '45'
        '50'
        '55'
        '60'
        '65'
        '70'
        '75'
        '80'
        '85'
        '90'
        '95'
        '100')
    end
    object cbDiscountBelow: TComboBox
      Left = 135
      Top = 148
      Width = 145
      Height = 21
      TabOrder = 5
      Text = '5'
      Items.Strings = (
        '5'
        '10'
        '15'
        '20'
        '25'
        '30'
        '35'
        '40'
        '45'
        '50'
        '55'
        '60'
        '65'
        '70'
        '75'
        '80'
        '85'
        '90'
        '95'
        '100')
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 135
      Top = 13
      Width = 145
      Height = 21
      KeyField = 'DEPARTAMENTO'
      ListField = 'DESCRIPCION'
      ListSource = DMMidas.DSDepartamentos
      TabOrder = 0
      OnExit = DBLookupComboBox1Exit
    end
    object dtpDesde: TEdit
      Left = 135
      Top = 40
      Width = 145
      Height = 21
      TabOrder = 1
    end
    object dtpHasta: TEdit
      Left = 135
      Top = 67
      Width = 145
      Height = 21
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 192
    Width = 660
    Height = 30
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      AlignWithMargins = True
      Left = 581
      Top = 4
      Width = 75
      Height = 22
      Align = alRight
      Caption = 'Close'
      ModalResult = 8
      TabOrder = 0
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 108
      Height = 22
      Align = alLeft
      Caption = 'Create Shopper'
      TabOrder = 1
      OnClick = Button2Click
      ExplicitLeft = 60
      ExplicitTop = 6
    end
  end
  object Panel3: TPanel
    Left = 360
    Top = 0
    Width = 300
    Height = 192
    Align = alClient
    TabOrder = 2
    object ToolBar1: TToolBar
      Left = 1
      Top = 1
      Width = 298
      Height = 29
      Caption = 'ToolBar1'
      Images = FrmMain.ImageListDB
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Caption = 'ToolButton1'
        ImageIndex = 25
        OnClick = ToolButton1Click
      end
      object ToolButton2: TToolButton
        Left = 23
        Top = 0
        Caption = 'ToolButton2'
        ImageIndex = 4
        OnClick = ToolButton2Click
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 30
      Width = 298
      Height = 161
      Align = alClient
      DataSource = DMMidas.DSSubDept
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'EXCLUDE'
          Title.Caption = 'Exclude'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRIPCION'
          Title.Caption = 'Description'
          Width = 187
          Visible = True
        end>
    end
  end
end
