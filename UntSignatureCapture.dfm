object FrmeSignatureCapture: TFrmeSignatureCapture
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'eSignature Capture'
  ClientHeight = 521
  ClientWidth = 1090
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object cxPageControl1: TPageControl
    Left = 0
    Top = 81
    Width = 1090
    Height = 406
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Recetas sin Firma'
      OnShow = TabSheet1Show
      object Panel3: TPanel
        Left = 585
        Top = 0
        Width = 90
        Height = 378
        Align = alLeft
        ParentBackground = False
        TabOrder = 0
        object Button3: TButton
          Left = 20
          Top = 77
          Width = 49
          Height = 25
          Caption = '>'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = Button3Click
        end
        object ButtonSelectAll: TButton
          Left = 20
          Top = 120
          Width = 49
          Height = 25
          Caption = '>>'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = ButtonSelectAllClick
        end
        object Button5: TButton
          Left = 20
          Top = 163
          Width = 49
          Height = 25
          Caption = '<'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = Button5Click
        end
        object ButtonDeleteAll: TButton
          Left = 20
          Top = 207
          Width = 49
          Height = 25
          Caption = '<<'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = ButtonDeleteAllClick
        end
        object DBGrid2: TDBGrid
          Left = -392
          Top = 88
          Width = 320
          Height = 120
          TabOrder = 4
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
        end
      end
      object DBGrid1: TDBGrid
        Left = 675
        Top = 0
        Width = 407
        Height = 378
        Align = alClient
        DataSource = DMMidas.DSPickUp
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMERORECETA'
            Title.Caption = 'No. Rx.'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MEDICAMENTO'
            Title.Caption = 'Medicamento'
            Width = 182
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PrecioVenta'
            Title.Caption = 'Precio Venta'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTY'
            Title.Caption = 'Qty'
            Width = 43
            Visible = True
          end>
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 585
        Height = 378
        Align = alLeft
        DataSource = DMMidas.DSOTC
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMERORECETA'
            Title.Caption = 'No. Rx.'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FECHAOTC'
            Title.Caption = 'Fecha'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MEDICAMENTO'
            Title.Caption = 'Medicamento'
            Width = 207
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLAIM_STATUS_DEFINE'
            Title.Caption = 'Claim Status'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTY'
            Title.Caption = 'Qty'
            Width = 70
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Recetas Firmadas'
      ImageIndex = 1
      OnShow = TabSheet2Show
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 505
        Height = 378
        Align = alLeft
        DataSource = DMMidas.DSOTC2
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMERORECETA'
            Title.Caption = 'Numero Receta'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MEDICAMENTO'
            Title.Caption = 'Medicamento'
            Width = 218
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FECHAOTC'
            Title.Caption = 'Fecha'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTY'
            Title.Caption = 'Qty'
            Width = 68
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 511
        Top = 0
        Width = 109
        Height = 344
        ParentBackground = False
        TabOrder = 1
        object DBGrid5: TDBGrid
          Left = -392
          Top = 88
          Width = 320
          Height = 120
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
        end
        object Button7: TButton
          Left = 14
          Top = 24
          Width = 81
          Height = 25
          Caption = 'Eliminar Firma'
          TabOrder = 1
          OnClick = Button7Click
        end
      end
    end
  end
  object ToolBar2: TToolBar
    Left = 0
    Top = 0
    Width = 1090
    Height = 53
    ButtonHeight = 52
    ButtonWidth = 101
    Caption = 'ToolBar2'
    Images = FrmMain.ImageListToolBar
    ShowCaptions = True
    TabOrder = 2
    object BtnCaptureSig: TToolButton
      Left = 0
      Top = 0
      Hint = 'Signature Capture'
      Caption = 'Capture Signature'
      ImageIndex = 14
      OnClick = BtnCaptureSigClick
    end
    object btnShowSignature: TToolButton
      Left = 101
      Top = 0
      Caption = 'Show Signature'
      ImageIndex = 15
      OnClick = btnShowSignatureClick
    end
    object tbInsert: TToolButton
      Left = 202
      Top = 0
      Caption = 'tbInsert'
      ImageIndex = 16
      Visible = False
      OnClick = tbInsertClick
    end
    object ToolButton1: TToolButton
      Left = 303
      Top = 0
      Caption = 'Pickup'
      ImageIndex = 8
      OnClick = ToolButton1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 487
    Width = 1090
    Height = 34
    Align = alBottom
    TabOrder = 3
    object Label3: TLabel
      Left = 4
      Top = 16
      Width = 3
      Height = 13
    end
    object BtnOk: TButton
      AlignWithMargins = True
      Left = 930
      Top = 4
      Width = 75
      Height = 26
      Align = alRight
      Caption = '&Ok'
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
    object BtnCancel: TButton
      AlignWithMargins = True
      Left = 1011
      Top = 4
      Width = 75
      Height = 26
      Align = alRight
      Caption = '&Cancel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 53
    Width = 1090
    Height = 28
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 79
      Height = 20
      Align = alLeft
      Caption = 'Buscar Recetas.'
      ExplicitHeight = 13
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 631
      Top = 4
      Width = 79
      Height = 20
      Align = alLeft
      Caption = 'Buscar Barcode'
      Visible = False
      ExplicitHeight = 13
    end
    object LabelNoRx: TLabel
      Left = 958
      Top = 9
      Width = 27
      Height = 13
      Caption = 'NoRx'
      Visible = False
    end
    object ESearchPat: TEdit
      AlignWithMargins = True
      Left = 89
      Top = 4
      Width = 536
      Height = 20
      Align = alLeft
      TabOrder = 0
      TextHint = 
        'Search by Rx Number or Patient last name, maiden name, name, bar' +
        'code'
      OnExit = ESearchPatExit
      OnKeyPress = ESearchPatKeyPress
      ExplicitHeight = 21
    end
    object serchbarcode: TEdit
      AlignWithMargins = True
      Left = 716
      Top = 4
      Width = 153
      Height = 20
      Align = alLeft
      TabOrder = 1
      Visible = False
      OnExit = serchbarcodeExit
      OnKeyPress = ESearchPatKeyPress
      ExplicitHeight = 21
    end
  end
  object TimerSelectAll: TTimer
    Enabled = False
    OnTimer = TimerSelectAllTimer
    Left = 456
    Top = 8
  end
end
