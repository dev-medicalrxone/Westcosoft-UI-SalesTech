object FrmClientes: TFrmClientes
  Left = 184
  Top = 160
  Caption = 'Client Information...'
  ClientHeight = 548
  ClientWidth = 988
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 49
    Width = 944
    Height = 499
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object DBGrid4: TDBGrid
      Left = 0
      Top = 0
      Width = 944
      Height = 292
      Align = alTop
      DataSource = DMMidas.DSClientes
      Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDblClick = DBGrid4DblClick
      OnTitleClick = DBGrid4TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMEROCLIENTE'
          Title.Caption = 'NO. CLIENTE'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NombreCompleto2'
          Title.Caption = 'CLIENTE'
          Width = 288
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'TELEFONO'
          Title.Alignment = taRightJustify
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEUDA'
          Title.Alignment = taRightJustify
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LIMITECREDITO'
          Title.Alignment = taRightJustify
          Title.Caption = 'LIMITE'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LAWAY'
          Title.Alignment = taRightJustify
          Title.Caption = 'LAY AWAY'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AUSPICIO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PATROCINIO'
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 0
      Top = 292
      Width = 944
      Height = 28
      Align = alTop
      TabOrder = 1
      object ToolBar1: TToolBar
        Left = 1
        Top = 1
        Width = 942
        Height = 22
        AutoSize = True
        Images = FrmMain.Images
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object ToolButton14: TToolButton
          Left = 0
          Top = 0
          Hint = 'A'#241'adir'
          Caption = 'ToolButton5'
          ImageIndex = 0
          OnClick = ToolButton14Click
        end
        object ToolButton15: TToolButton
          Left = 23
          Top = 0
          Hint = 'Editar'
          Caption = 'ToolButton16'
          ImageIndex = 3
          OnClick = ToolButton15Click
        end
        object ToolButton18: TToolButton
          Left = 46
          Top = 0
          Hint = 'Borrar'
          Caption = 'ToolButton17'
          ImageIndex = 207
        end
        object ToolButton19: TToolButton
          Left = 69
          Top = 0
          Hint = 'Refrescar'
          Caption = 'TlBtnRefresh'
          ImageIndex = 201
          OnClick = ToolButton19Click
        end
        object ToolButton21: TToolButton
          Left = 92
          Top = 0
          Hint = 'Buscar'
          Caption = 'TBSearchCust'
          ImageIndex = 10
          Style = tbsCheck
          OnClick = ToolButton21Click
        end
      end
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 320
      Width = 944
      Height = 179
      Align = alClient
      DataSource = DMMidas.dsCars
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDblClick = ToolButton15Click
      Columns = <
        item
          Expanded = False
          FieldName = 'CAR_ID'
          Title.Caption = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LICENCE_PLATE'
          Title.Caption = 'LICENCE PLATE'
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BIN_NUMBER'
          Title.Caption = 'BIN NUMBER'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'YEAR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COLOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BRAND'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MODEL'
          Width = 160
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 944
    Top = 49
    Width = 44
    Height = 499
    Align = alRight
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 6
      Top = 10
      Width = 17
      Height = 22
      Caption = 'A'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 6
      Top = 31
      Width = 17
      Height = 22
      Caption = 'C'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton3: TSpeedButton
      Left = 6
      Top = 52
      Width = 17
      Height = 22
      Caption = 'E'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton4: TSpeedButton
      Left = 6
      Top = 73
      Width = 17
      Height = 22
      Caption = 'G'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton6: TSpeedButton
      Left = 6
      Top = 94
      Width = 17
      Height = 22
      Caption = 'I'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton7: TSpeedButton
      Left = 6
      Top = 115
      Width = 17
      Height = 22
      Caption = 'K'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton8: TSpeedButton
      Left = 6
      Top = 136
      Width = 17
      Height = 22
      Caption = 'M'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton9: TSpeedButton
      Left = 6
      Top = 157
      Width = 17
      Height = 22
      Caption = 'O'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton10: TSpeedButton
      Left = 6
      Top = 178
      Width = 17
      Height = 22
      Caption = 'Q'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton11: TSpeedButton
      Left = 6
      Top = 199
      Width = 17
      Height = 22
      Caption = 'S'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton12: TSpeedButton
      Left = 6
      Top = 220
      Width = 17
      Height = 22
      Caption = 'U'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton13: TSpeedButton
      Left = 6
      Top = 241
      Width = 17
      Height = 22
      Caption = 'W'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton15: TSpeedButton
      Left = 6
      Top = 262
      Width = 17
      Height = 22
      Caption = 'Y'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton14: TSpeedButton
      Left = 22
      Top = 18
      Width = 17
      Height = 22
      Caption = 'B'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton16: TSpeedButton
      Left = 22
      Top = 39
      Width = 17
      Height = 22
      Caption = 'D'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton17: TSpeedButton
      Left = 22
      Top = 60
      Width = 17
      Height = 22
      Caption = 'F'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton18: TSpeedButton
      Left = 22
      Top = 81
      Width = 17
      Height = 22
      Caption = 'H'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton19: TSpeedButton
      Left = 22
      Top = 102
      Width = 17
      Height = 22
      Caption = 'J'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton20: TSpeedButton
      Left = 22
      Top = 123
      Width = 17
      Height = 22
      Caption = 'L'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton21: TSpeedButton
      Left = 22
      Top = 144
      Width = 17
      Height = 22
      Caption = 'N'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton22: TSpeedButton
      Left = 22
      Top = 165
      Width = 17
      Height = 22
      Caption = 'P'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton23: TSpeedButton
      Left = 22
      Top = 186
      Width = 17
      Height = 22
      Caption = 'R'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton24: TSpeedButton
      Left = 22
      Top = 207
      Width = 17
      Height = 22
      Caption = 'T'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton25: TSpeedButton
      Left = 22
      Top = 228
      Width = 17
      Height = 22
      Caption = 'V'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton26: TSpeedButton
      Left = 22
      Top = 249
      Width = 17
      Height = 22
      Caption = 'X'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton27: TSpeedButton
      Left = 22
      Top = 270
      Width = 17
      Height = 22
      Caption = 'Z'
      Flat = True
      OnClick = SpeedButton1Click
    end
  end
  object PnlSearchCust: TPanel
    Left = 0
    Top = 22
    Width = 988
    Height = 27
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 2
    object EdtSearch: TEdit
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 199
      Height = 21
      Align = alLeft
      TabOrder = 0
      TextHint = 'Client Search'
      OnExit = EdtSearchExit
      OnKeyPress = EdtSearchKeyPress
    end
  end
  object ToolBar2: TToolBar
    Left = 0
    Top = 0
    Width = 988
    Height = 22
    AutoSize = True
    Caption = 'ToolBar2'
    Images = FrmMain.Images
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    object ToolButton5: TToolButton
      Left = 0
      Top = 0
      Hint = 'A'#241'adir'
      Caption = 'ToolButton5'
      ImageIndex = 0
      OnClick = ToolButton5Click
    end
    object ToolButton16: TToolButton
      Left = 23
      Top = 0
      Hint = 'Editar'
      Caption = 'ToolButton16'
      ImageIndex = 3
      OnClick = ToolButton16Click
    end
    object ToolButton17: TToolButton
      Left = 46
      Top = 0
      Hint = 'Borrar'
      Caption = 'ToolButton17'
      ImageIndex = 207
      OnClick = ToolButton17Click
    end
    object TlBtnRefresh: TToolButton
      Left = 69
      Top = 0
      Hint = 'Refrescar'
      Caption = 'TlBtnRefresh'
      ImageIndex = 201
    end
    object TBSearchCust: TToolButton
      Left = 92
      Top = 0
      Hint = 'Buscar'
      Caption = 'TBSearchCust'
      ImageIndex = 9
      Style = tbsCheck
      OnClick = TBSearchCustClick
    end
    object ToolButton20: TToolButton
      Left = 115
      Top = 0
      Width = 8
      Caption = 'ToolButton20'
      ImageIndex = 7
      Style = tbsSeparator
    end
    object ToolButton23: TToolButton
      Left = 123
      Top = 0
      Hint = 'Ver transacciones'
      Caption = 'ToolButton23'
      ImageIndex = 10
      OnClick = ToolButton23Click
    end
    object ToolButton1: TToolButton
      Left = 146
      Top = 0
      Hint = 'Balance inicial'
      Caption = 'ToolButton1'
      ImageIndex = 163
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 169
      Top = 0
      Hint = 'Balance lay away inicial'
      Caption = 'ToolButton2'
      ImageIndex = 150
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 192
      Top = 0
      Hint = 'Initial sponsor balance'
      Caption = 'ToolButton3'
      ImageIndex = 154
      OnClick = ToolButton3Click
    end
    object ToolButton4: TToolButton
      Left = 215
      Top = 0
      Hint = 'Export client sales'
      Caption = 'ToolButton4'
      ImageIndex = 164
      OnClick = ToolButton4Click
    end
    object ToolButton22: TToolButton
      Left = 238
      Top = 0
      Hint = 'Balance Patrocinio inicial'
      Caption = 'ToolButton22'
      ImageIndex = 47
      OnClick = ToolButton22Click
    end
    object TlBtnPost: TToolButton
      Left = 261
      Top = 0
      Hint = 'Save changes'
      Caption = 'Commit'
      ImageIndex = 152
      OnClick = TlBtnPostClick
    end
    object TlBtnCancel: TToolButton
      Left = 284
      Top = 0
      Hint = 'Cancel changes'
      Caption = 'TlBtnCancel'
      Enabled = False
      ImageIndex = 153
      OnClick = TlBtnCancelClick
    end
    object ToolButton7: TToolButton
      Left = 307
      Top = 0
      Width = 37
      Caption = 'ToolButton7'
      ImageIndex = 155
      Style = tbsSeparator
    end
    object ToolButton8: TToolButton
      Left = 344
      Top = 0
      Hint = 'Initial internet balance'
      Caption = 'ToolButton8'
      ImageIndex = 154
      Visible = False
      OnClick = ToolButton8Click
    end
    object ToolButton11: TToolButton
      Left = 367
      Top = 0
      Width = 8
      Caption = 'ToolButton11'
      ImageIndex = 41
      Style = tbsSeparator
    end
    object ToolButton6: TToolButton
      Left = 375
      Top = 0
      Hint = 'Internet credit transactions'
      Caption = 'ToolButton6'
      ImageIndex = 10
      OnClick = ToolButton6Click
    end
    object ToolButton10: TToolButton
      Left = 398
      Top = 0
      Width = 8
      Caption = 'ToolButton10'
      ImageIndex = 41
      Style = tbsSeparator
    end
    object ToolButton9: TToolButton
      Left = 406
      Top = 0
      Hint = 'View adjusted credit transactions'
      Caption = 'ToolButton9'
      ImageIndex = 40
      Visible = False
      OnClick = ToolButton9Click
    end
    object ToolButton12: TToolButton
      Left = 429
      Top = 0
      Hint = 'Client debt'
      Caption = 'ToolButton12'
      ImageIndex = 41
      OnClick = ToolButton12Click
    end
    object ToolButtonCentralCred: TToolButton
      Left = 452
      Top = 0
      Hint = 'Central Credit'
      Caption = 'Central Credit'
      DropdownMenu = PopupMenuCentralCred
      ImageIndex = 45
      PopupMenu = PopupMenuCentralCred
    end
    object ToolButton13: TToolButton
      Left = 475
      Top = 0
      Hint = 'Update credit'
      Caption = 'ToolButton13'
      ImageIndex = 46
      Visible = False
      OnClick = ToolButton13Click
    end
  end
  object PopupMenuCentralCred: TPopupMenu
    Left = 824
    Top = 40
    object EstadodeCuentas1: TMenuItem
      Caption = '&Estado de Cuentas'
      OnClick = EstadodeCuentas1Click
    end
    object BalanceporCliente1: TMenuItem
      Caption = 'Balance por Cliente'
      OnClick = BalanceporCliente1Click
    end
    object BalanceGlobal1: TMenuItem
      Caption = '&Balance Global'
      Visible = False
      OnClick = BalanceGlobal1Click
    end
    object DebitoContraCredito1: TMenuItem
      Caption = '&Debito Contra Credito'
      OnClick = DebitoContraCredito1Click
    end
    object Arreglarbalances1: TMenuItem
      Caption = 'Arreglar balances'
      OnClick = Arreglarbalances1Click
    end
  end
end
