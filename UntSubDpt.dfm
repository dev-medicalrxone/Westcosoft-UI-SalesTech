object FrmSubDept: TFrmSubDept
  Left = 561
  Top = 53
  Caption = 'Sub Departamentos'
  ClientHeight = 429
  ClientWidth = 393
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 393
    Height = 22
    AutoSize = True
    ButtonWidth = 25
    Caption = 'ToolBar1'
    Images = FrmMain.Images
    TabOrder = 0
    object ToolButton4: TToolButton
      Left = 0
      Top = 0
      Hint = 'Anterior'
      Caption = 'ToolButton4'
      ImageIndex = 53
      OnClick = ToolButton4Click
    end
    object ToolButton5: TToolButton
      Left = 25
      Top = 0
      Hint = 'Pr'#243'ximo'
      Caption = 'ToolButton5'
      ImageIndex = 54
      OnClick = ToolButton5Click
    end
    object ToolButton1: TToolButton
      Left = 50
      Top = 0
      Hint = 'A'#241'adir'
      Caption = 'ToolButton1'
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 75
      Top = 0
      Hint = 'Editar'
      Caption = 'ToolButton2'
      ImageIndex = 3
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 100
      Top = 0
      Hint = 'Borrar'
      Caption = 'ToolButton3'
      ImageIndex = 207
      OnClick = ToolButton3Click
    end
    object ToolButton12: TToolButton
      Left = 125
      Top = 0
      Width = 8
      Caption = 'ToolButton12'
      ImageIndex = 155
      Style = tbsSeparator
    end
    object ToolButton9: TToolButton
      Left = 133
      Top = 0
      Hint = 'Cancelar'
      Caption = 'ToolButton9'
      ImageIndex = 208
      OnClick = ToolButton9Click
    end
    object ToolButton6: TToolButton
      Left = 158
      Top = 0
      Hint = 'Guardar'
      Caption = 'ToolButton6'
      ImageIndex = 5
      OnClick = ToolButton6Click
    end
    object ToolButton10: TToolButton
      Left = 183
      Top = 0
      Width = 8
      Caption = 'ToolButton10'
      ImageIndex = 154
      Style = tbsSeparator
    end
    object TlBtnPost: TToolButton
      Left = 191
      Top = 0
      Hint = 'Guardar cambios'
      Caption = 'TlBtnPost'
      ImageIndex = 152
      OnClick = TlBtnPostClick
    end
    object ToolButton7: TToolButton
      Left = 216
      Top = 0
      Hint = 'Cancelar cambios'
      Caption = 'ToolButton7'
      ImageIndex = 153
      OnClick = ToolButton7Click
    end
    object ToolButton11: TToolButton
      Left = 241
      Top = 0
      Width = 8
      Caption = 'ToolButton11'
      ImageIndex = 154
      Style = tbsSeparator
    end
    object ToolButton8: TToolButton
      Left = 249
      Top = 0
      Hint = 'Refrescar'
      Caption = 'ToolButton8'
      ImageIndex = 201
      OnClick = ToolButton8Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 22
    Width = 393
    Height = 374
    Align = alClient
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DEPARTAMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRIPCION'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMENTARIO'
        Width = 182
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 396
    Width = 393
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 2
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 234
      Top = 3
      Width = 75
      Height = 27
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
      Left = 315
      Top = 3
      Width = 75
      Height = 27
      Align = alRight
      Caption = 'Cancelar'
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
end
