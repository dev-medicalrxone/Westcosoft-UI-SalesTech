object FrmUtilities: TFrmUtilities
  Left = 389
  Top = 135
  Caption = 'Utilities'
  ClientHeight = 341
  ClientWidth = 589
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 589
    Height = 22
    AutoSize = True
    Caption = 'ToolBar1'
    Images = FrmMain.Images
    TabOrder = 1
    object ToolButton4: TToolButton
      Left = 0
      Top = 0
      Hint = 'Anterior'
      Caption = 'ToolButton4'
      ImageIndex = 53
      OnClick = ToolButton4Click
    end
    object ToolButton5: TToolButton
      Left = 23
      Top = 0
      Hint = 'Pr'#243'ximo'
      Caption = 'ToolButton5'
      ImageIndex = 54
      OnClick = ToolButton5Click
    end
    object ToolButton1: TToolButton
      Left = 46
      Top = 0
      Hint = 'A'#241'adir'
      Caption = 'ToolButton1'
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 69
      Top = 0
      Hint = 'Editar'
      Caption = 'ToolButton2'
      ImageIndex = 3
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 92
      Top = 0
      Hint = 'Borrar'
      Caption = 'ToolButton3'
      ImageIndex = 207
      OnClick = ToolButton3Click
    end
    object ToolButton11: TToolButton
      Left = 115
      Top = 0
      Width = 8
      Caption = 'ToolButton11'
      ImageIndex = 154
      Style = tbsSeparator
    end
    object ToolButton9: TToolButton
      Left = 123
      Top = 0
      Hint = 'Cancelar'
      Caption = 'ToolButton9'
      ImageIndex = 208
      OnClick = ToolButton9Click
    end
    object ToolButton6: TToolButton
      Left = 146
      Top = 0
      Hint = 'Guardar'
      Caption = 'ToolButton6'
      ImageIndex = 5
      OnClick = ToolButton6Click
    end
    object ToolButton10: TToolButton
      Left = 169
      Top = 0
      Width = 8
      Caption = 'ToolButton10'
      ImageIndex = 154
      Style = tbsSeparator
    end
    object TlBtnPost: TToolButton
      Left = 177
      Top = 0
      Hint = 'Guardar cambios'
      Caption = 'TlBtnPost'
      ImageIndex = 152
      OnClick = TlBtnPostClick
    end
    object ToolButton7: TToolButton
      Left = 200
      Top = 0
      Hint = 'Cancelar cambios'
      Caption = 'ToolButton7'
      ImageIndex = 153
      OnClick = ToolButton7Click
    end
    object ToolButton12: TToolButton
      Left = 223
      Top = 0
      Width = 8
      Caption = 'ToolButton12'
      ImageIndex = 202
      Style = tbsSeparator
    end
    object ToolButton8: TToolButton
      Left = 231
      Top = 0
      Hint = 'Refrescar'
      Caption = 'ToolButton8'
      ImageIndex = 201
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 22
    Width = 589
    Height = 287
    Align = alClient
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'BARCODE'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME'
        Title.Caption = 'Nombre'
        Width = 216
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHARGE_AMNT'
        Title.Caption = 'Cant Cargo'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHARGE_PER'
        Title.Caption = '% Cargo'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAXABLE'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 309
    Width = 589
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 0
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 430
      Top = 3
      Width = 75
      Height = 26
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
      Left = 511
      Top = 3
      Width = 75
      Height = 26
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
    end
  end
  object DataSource1: TDataSource
    DataSet = DMMidas.CDSUtilities
    OnStateChange = DataSource1StateChange
    Left = 40
    Top = 104
  end
end
