object FrmEditDailyTotals: TFrmEditDailyTotals
  Left = 340
  Top = 69
  Caption = 'Editar cuadres'
  ClientHeight = 709
  ClientWidth = 819
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Font.Quality = fqClearType
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 819
    Height = 657
    Align = alClient
    BevelOuter = bvLowered
    Caption = ' '
    TabOrder = 0
    object RichEdit1: TRichEdit
      Left = 67
      Top = 368
      Width = 185
      Height = 89
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Font.Quality = fqClearType
      Lines.Strings = (
        'RichEdit1')
      ParentFont = False
      TabOrder = 2
      Visible = False
      WantTabs = True
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 41
      Width = 817
      Height = 615
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 1
      TabWidth = 100
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = 'Cuadre d'#237'a'
        OnShow = TabSheet1Show
        object Label2: TLabel
          Left = 37
          Top = 8
          Width = 111
          Height = 13
          Caption = 'CASH ------------------>'
        end
        object DBText1: TDBText
          Left = 139
          Top = 9
          Width = 69
          Height = 17
          Alignment = taRightJustify
          DataField = 'CASHREAD'
          DataSource = DMMidas.DTSDailyTotals
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Font.Quality = fqClearType
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 139
          Top = 33
          Width = 69
          Height = 17
          Alignment = taRightJustify
          DataField = 'CHECKREAD'
          DataSource = DMMidas.DTSDailyTotals
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Font.Quality = fqClearType
          ParentFont = False
        end
        object Label3: TLabel
          Left = 37
          Top = 32
          Width = 100
          Height = 13
          Caption = 'CHEQUES ---------->'
        end
        object Label4: TLabel
          Left = 37
          Top = 56
          Width = 92
          Height = 13
          Caption = 'TARJETAS --------->'
        end
        object DBText3: TDBText
          Left = 139
          Top = 58
          Width = 69
          Height = 17
          Alignment = taRightJustify
          DataField = 'CCARDREAD'
          DataSource = DMMidas.DTSDailyTotals
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Font.Quality = fqClearType
          ParentFont = False
        end
        object DBText4: TDBText
          Left = 139
          Top = 80
          Width = 69
          Height = 17
          Alignment = taRightJustify
          DataField = 'ATHREAD'
          DataSource = DMMidas.DTSDailyTotals
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Font.Quality = fqClearType
          ParentFont = False
        end
        object Label5: TLabel
          Left = 37
          Top = 80
          Width = 110
          Height = 13
          Caption = 'ATH -------------------->'
        end
        object Label6: TLabel
          Left = 37
          Top = 154
          Width = 94
          Height = 13
          Caption = 'PAY OUTS --------->'
        end
        object DBText5: TDBText
          Left = 139
          Top = 154
          Width = 69
          Height = 17
          Alignment = taRightJustify
          DataField = 'PAYOUTREAD'
          DataSource = DMMidas.DTSDailyTotals
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Font.Quality = fqClearType
          ParentFont = False
        end
        object DBText7: TDBText
          Left = 139
          Top = 178
          Width = 69
          Height = 17
          Alignment = taRightJustify
          DataField = 'POREAD'
          DataSource = DMMidas.DTSDailyTotals
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Font.Quality = fqClearType
          ParentFont = False
        end
        object Label7: TLabel
          Left = 37
          Top = 178
          Width = 99
          Height = 13
          Caption = 'CREDITO ----------->'
        end
        object Label13: TLabel
          Left = 37
          Top = 202
          Width = 94
          Height = 13
          Caption = 'NO CHARGE ----->'
        end
        object DBText9: TDBText
          Left = 139
          Top = 201
          Width = 69
          Height = 17
          Alignment = taRightJustify
          DataField = 'OTHERREAD'
          DataSource = DMMidas.DTSDailyTotals
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Font.Quality = fqClearType
          ParentFont = False
        end
        object DBText10: TDBText
          Left = 139
          Top = 325
          Width = 69
          Height = 17
          Alignment = taRightJustify
          DataField = 'UTILITYREAD'
          DataSource = DMMidas.DTSDailyTotals
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Font.Quality = fqClearType
          ParentFont = False
        end
        object Label14: TLabel
          Left = 37
          Top = 327
          Width = 90
          Height = 13
          Caption = 'UTILIDADES ----->'
        end
        object Label8: TLabel
          Left = 37
          Top = 351
          Width = 98
          Height = 13
          Caption = 'PETTY --------------->'
        end
        object DBText8: TDBText
          Left = 139
          Top = 351
          Width = 69
          Height = 17
          Alignment = taRightJustify
          DataField = 'STARTBANK'
          DataSource = DMMidas.DTSDailyTotals
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Font.Quality = fqClearType
          ParentFont = False
        end
        object DBText6: TDBText
          Left = 139
          Top = 568
          Width = 65
          Height = 17
          Alignment = taRightJustify
          DataField = 'TOTAL_READ'
          DataSource = DMMidas.DTSDailyTotals
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Font.Quality = fqClearType
          ParentFont = False
        end
        object Label10: TLabel
          Left = 37
          Top = 568
          Width = 67
          Height = 13
          Caption = 'Cuadre Total:'
        end
        object Label9: TLabel
          Left = 37
          Top = 531
          Width = 70
          Height = 13
          Caption = 'COMENTARIO'
        end
        object SpeedButton2: TSpeedButton
          Left = 309
          Top = 53
          Width = 23
          Height = 22
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33033333333333333F7F3333333333333000333333333333F777333333333333
            000333333333333F777333333333333000333333333333F77733333333333300
            033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
            33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
            3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
            33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
            333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
            333333773FF77333333333370007333333333333777333333333}
          NumGlyphs = 2
          OnClick = SpeedButton2Click
        end
        object SpeedButton3: TSpeedButton
          Left = 309
          Top = 78
          Width = 23
          Height = 22
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33033333333333333F7F3333333333333000333333333333F777333333333333
            000333333333333F777333333333333000333333333333F77733333333333300
            033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
            33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
            3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
            33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
            333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
            333333773FF77333333333370007333333333333777333333333}
          NumGlyphs = 2
          OnClick = SpeedButton3Click
        end
        object SpeedButton1: TSpeedButton
          Left = 309
          Top = 28
          Width = 23
          Height = 22
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33033333333333333F7F3333333333333000333333333333F777333333333333
            000333333333333F777333333333333000333333333333F77733333333333300
            033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
            33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
            3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
            33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
            333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
            333333773FF77333333333370007333333333333777333333333}
          NumGlyphs = 2
          OnClick = SpeedButton1Click
        end
        object SpeedButton4: TSpeedButton
          Left = 309
          Top = 4
          Width = 23
          Height = 22
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33033333333333333F7F3333333333333000333333333333F777333333333333
            000333333333333F777333333333333000333333333333F77733333333333300
            033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
            33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
            3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
            33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
            333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
            333333773FF77333333333370007333333333333777333333333}
          NumGlyphs = 2
          OnClick = SpeedButton4Click
        end
        object SpeedButton5: TSpeedButton
          Left = 309
          Top = 149
          Width = 23
          Height = 22
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33033333333333333F7F3333333333333000333333333333F777333333333333
            000333333333333F777333333333333000333333333333F77733333333333300
            033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
            33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
            3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
            33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
            333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
            333333773FF77333333333370007333333333333777333333333}
          NumGlyphs = 2
          OnClick = SpeedButton5Click
        end
        object SpeedButton6: TSpeedButton
          Left = 309
          Top = 174
          Width = 23
          Height = 22
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33033333333333333F7F3333333333333000333333333333F777333333333333
            000333333333333F777333333333333000333333333333F77733333333333300
            033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
            33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
            3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
            33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
            333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
            333333773FF77333333333370007333333333333777333333333}
          NumGlyphs = 2
          OnClick = SpeedButton6Click
        end
        object SpeedButton7: TSpeedButton
          Left = 340
          Top = 4
          Width = 23
          Height = 22
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
            73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
            0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
            0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
            0333337F777777737F333308888888880333337F333333337F33330888888888
            03333373FFFFFFFF733333700000000073333337777777773333}
          NumGlyphs = 2
          OnClick = SpeedButton7Click
        end
        object Label15: TLabel
          Left = 37
          Top = 302
          Width = 91
          Height = 13
          Caption = 'PICKUP         ----->'
        end
        object Label16: TLabel
          Left = 37
          Top = 378
          Width = 89
          Height = 13
          Caption = 'TAX ESTATAL ----->'
        end
        object Label17: TLabel
          Left = 37
          Top = 403
          Width = 107
          Height = 13
          Caption = 'TAX MUNICIPAL ----->'
        end
        object Label18: TLabel
          Left = 37
          Top = 479
          Width = 80
          Height = 13
          Caption = 'TOTAL TAX ----->'
        end
        object DBText11: TDBText
          Left = 139
          Top = 226
          Width = 69
          Height = 17
          Alignment = taRightJustify
          DataField = 'WICREAD'
          DataSource = DMMidas.DTSDailyTotals
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Font.Quality = fqClearType
          ParentFont = False
        end
        object Label19: TLabel
          Left = 37
          Top = 226
          Width = 113
          Height = 13
          Caption = 'W.I.C. ------------------>'
        end
        object SpeedButton8: TSpeedButton
          Left = 309
          Top = 222
          Width = 23
          Height = 22
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33033333333333333F7F3333333333333000333333333333F777333333333333
            000333333333333F777333333333333000333333333333F77733333333333300
            033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
            33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
            3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
            33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
            333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
            333333773FF77333333333370007333333333333777333333333}
          NumGlyphs = 2
          OnClick = SpeedButton8Click
        end
        object Label20: TLabel
          Left = 37
          Top = 429
          Width = 99
          Height = 13
          Caption = 'TAX SERVICIO ----->'
        end
        object Label21: TLabel
          Left = 37
          Top = 250
          Width = 105
          Height = 13
          Caption = 'REFUND  ------------>'
        end
        object DBText12: TDBText
          Left = 139
          Top = 250
          Width = 69
          Height = 17
          Alignment = taRightJustify
          DataField = 'REFUNDREAD'
          DataSource = DMMidas.DTSDailyTotals
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Font.Quality = fqClearType
          ParentFont = False
        end
        object SpeedButton9: TSpeedButton
          Left = 309
          Top = 247
          Width = 23
          Height = 22
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33033333333333333F7F3333333333333000333333333333F777333333333333
            000333333333333F777333333333333000333333333333F77733333333333300
            033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
            33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
            3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
            33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
            333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
            333333773FF77333333333370007333333333333777333333333}
          NumGlyphs = 2
          OnClick = SpeedButton9Click
        end
        object SpeedButton10: TSpeedButton
          Left = 309
          Top = 198
          Width = 23
          Height = 22
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33033333333333333F7F3333333333333000333333333333F777333333333333
            000333333333333F777333333333333000333333333333F77733333333333300
            033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
            33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
            3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
            33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
            333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
            333333773FF77333333333370007333333333333777333333333}
          NumGlyphs = 2
          OnClick = SpeedButton10Click
        end
        object SpeedButton11: TSpeedButton
          Left = 309
          Top = 102
          Width = 23
          Height = 22
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33033333333333333F7F3333333333333000333333333333F777333333333333
            000333333333333F777333333333333000333333333333F77733333333333300
            033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
            33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
            3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
            33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
            333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
            333333773FF77333333333370007333333333333777333333333}
          NumGlyphs = 2
          OnClick = SpeedButton11Click
        end
        object DBText13: TDBText
          Left = 139
          Top = 105
          Width = 69
          Height = 17
          Alignment = taRightJustify
          DataField = 'ATHMREAD'
          DataSource = DMMidas.DTSDailyTotals
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Font.Quality = fqClearType
          ParentFont = False
        end
        object Label22: TLabel
          Left = 37
          Top = 105
          Width = 99
          Height = 13
          Caption = 'ATHMobile--------->'
        end
        object Label23: TLabel
          Left = 37
          Top = 504
          Width = 78
          Height = 13
          Caption = 'GRATUITY ----->'
        end
        object Label24: TLabel
          Left = 37
          Top = 451
          Width = 147
          Height = 13
          Caption = 'TAX PROCESSED FOOD ----->'
        end
        object Label25: TLabel
          Left = 37
          Top = 275
          Width = 123
          Height = 13
          Caption = 'TRIPLE S OTC ------------>'
        end
        object SpeedButton12: TSpeedButton
          Left = 309
          Top = 271
          Width = 23
          Height = 22
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33033333333333333F7F3333333333333000333333333333F777333333333333
            000333333333333F777333333333333000333333333333F77733333333333300
            033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
            33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
            3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
            33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
            333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
            333333773FF77333333333370007333333333333777333333333}
          NumGlyphs = 2
          OnClick = SpeedButton12Click
        end
        object Label26: TLabel
          Left = 37
          Top = 128
          Width = 77
          Height = 13
          Caption = 'PAYPAL--------->'
        end
        object DBText14: TDBText
          Left = 139
          Top = 128
          Width = 69
          Height = 17
          Alignment = taRightJustify
          DataField = 'PAYPALREAD'
          DataSource = DMMidas.DTSDailyTotals
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Font.Quality = fqClearType
          ParentFont = False
        end
        object SpeedButton13: TSpeedButton
          Left = 309
          Top = 125
          Width = 23
          Height = 22
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33033333333333333F7F3333333333333000333333333333F777333333333333
            000333333333333F777333333333333000333333333333F77733333333333300
            033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
            33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
            3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
            33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
            333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
            333333773FF77333333333370007333333333333777333333333}
          NumGlyphs = 2
          OnClick = SpeedButton11Click
        end
        object Label27: TLabel
          Left = 320
          Top = 328
          Width = 28
          Height = 13
          Caption = 'CASH'
        end
        object DBText15: TDBText
          Left = 354
          Top = 327
          Width = 69
          Height = 17
          Alignment = taRightJustify
          DataField = 'UTILITY_CASH_READ'
          DataSource = DMMidas.DTSDailyTotals
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Font.Quality = fqClearType
          ParentFont = False
        end
        object DBEdit9: TDBEdit
          Left = 230
          Top = 323
          Width = 73
          Height = 21
          TabStop = False
          DataField = 'UTILITYREAD'
          DataSource = DMMidas.DTSDailyTotals
          ParentColor = True
          ReadOnly = True
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
        object DBEdit7: TDBEdit
          Left = 230
          Top = 347
          Width = 73
          Height = 21
          TabStop = False
          DataField = 'STARTBANK'
          DataSource = DMMidas.DTSDailyTotals
          ParentColor = True
          ReadOnly = True
          TabOrder = 1
          OnKeyPress = FormKeyPress
        end
        object DBMemo1: TDBMemo
          Left = 230
          Top = 527
          Width = 185
          Height = 57
          DataField = 'COMMENTS'
          DataSource = DMMidas.DTSDailyTotals
          TabOrder = 2
          OnKeyPress = FormKeyPress
        end
        object DBEdit1: TDBEdit
          Left = 230
          Top = 299
          Width = 73
          Height = 21
          TabStop = False
          DataField = 'WICCRREAD'
          DataSource = DMMidas.DTSDailyTotals
          ParentColor = True
          ReadOnly = True
          TabOrder = 3
          OnKeyPress = FormKeyPress
        end
        object DBEdit2: TDBEdit
          Left = 230
          Top = 371
          Width = 73
          Height = 21
          TabStop = False
          DataField = 'TAX_ESTATAL'
          DataSource = DMMidas.DTSDailyTotals
          ParentColor = True
          ReadOnly = True
          TabOrder = 4
          OnKeyPress = FormKeyPress
        end
        object DBEdit3: TDBEdit
          Left = 230
          Top = 395
          Width = 73
          Height = 21
          TabStop = False
          DataField = 'TAX_MUNICIPAL'
          DataSource = DMMidas.DTSDailyTotals
          ParentColor = True
          ReadOnly = True
          TabOrder = 5
          OnKeyPress = FormKeyPress
        end
        object DBEdit4: TDBEdit
          Left = 230
          Top = 421
          Width = 73
          Height = 21
          TabStop = False
          DataField = 'TAX_SERVICIO'
          DataSource = DMMidas.DTSDailyTotals
          ParentColor = True
          ReadOnly = True
          TabOrder = 6
          OnKeyPress = FormKeyPress
        end
        object EditTotalTax: TEdit
          Left = 230
          Top = 474
          Width = 73
          Height = 21
          TabOrder = 7
        end
        object DBEdit5: TDBEdit
          Left = 223
          Top = 3
          Width = 80
          Height = 21
          DataField = 'CASHCOUNT'
          DataSource = DMMidas.DTSDailyTotals
          TabOrder = 8
          OnKeyPress = FormKeyPress
        end
        object DBEdit6: TDBEdit
          Left = 223
          Top = 29
          Width = 80
          Height = 21
          DataField = 'CHECKCOUNT'
          DataSource = DMMidas.DTSDailyTotals
          TabOrder = 9
          OnKeyPress = FormKeyPress
        end
        object DBEdit8: TDBEdit
          Left = 223
          Top = 54
          Width = 80
          Height = 21
          DataField = 'CCARDCOUNT'
          DataSource = DMMidas.DTSDailyTotals
          TabOrder = 10
          OnKeyPress = FormKeyPress
        end
        object DBEdit10: TDBEdit
          Left = 223
          Top = 77
          Width = 80
          Height = 21
          DataField = 'ATHCOUNT'
          DataSource = DMMidas.DTSDailyTotals
          TabOrder = 11
          OnKeyPress = FormKeyPress
        end
        object DBEdit11: TDBEdit
          Left = 223
          Top = 150
          Width = 80
          Height = 21
          DataField = 'PAYOUTCOUNT'
          DataSource = DMMidas.DTSDailyTotals
          TabOrder = 13
          OnKeyPress = FormKeyPress
        end
        object DBEdit12: TDBEdit
          Left = 223
          Top = 175
          Width = 80
          Height = 21
          DataField = 'POCOUNT'
          DataSource = DMMidas.DTSDailyTotals
          TabOrder = 14
          OnKeyPress = FormKeyPress
        end
        object DBEdit13: TDBEdit
          Left = 223
          Top = 198
          Width = 80
          Height = 21
          DataField = 'OTHERCOUNT'
          DataSource = DMMidas.DTSDailyTotals
          TabOrder = 15
          OnKeyPress = FormKeyPress
        end
        object DBEdit14: TDBEdit
          Left = 223
          Top = 222
          Width = 80
          Height = 21
          DataField = 'WICCOUNT'
          DataSource = DMMidas.DTSDailyTotals
          TabOrder = 16
          OnKeyPress = FormKeyPress
        end
        object DBEdit16: TDBEdit
          Left = 223
          Top = 102
          Width = 80
          Height = 21
          DataField = 'ATHMCOUNT'
          DataSource = DMMidas.DTSDailyTotals
          TabOrder = 12
          OnKeyPress = FormKeyPress
        end
        object TouchKeyboard1: TTouchKeyboard
          Left = 440
          Top = 0
          Width = 369
          Height = 587
          Align = alRight
          GradientEnd = clSilver
          GradientStart = clGray
          Layout = 'NumPad'
        end
        object DBEdit15: TDBEdit
          Left = 230
          Top = 500
          Width = 73
          Height = 21
          TabStop = False
          DataField = 'TIPSREAD'
          DataSource = DMMidas.DTSDailyTotals
          ParentColor = True
          ReadOnly = True
          TabOrder = 18
          OnKeyPress = FormKeyPress
        end
        object DBEdit17: TDBEdit
          Left = 230
          Top = 448
          Width = 73
          Height = 21
          TabStop = False
          DataField = 'TAX_PROCESSED_FOOD'
          DataSource = DMMidas.DTSDailyTotals
          ParentColor = True
          ReadOnly = True
          TabOrder = 19
          OnKeyPress = FormKeyPress
        end
        object DBEdit18: TDBEdit
          Left = 230
          Top = 272
          Width = 73
          Height = 21
          Color = clBtnFace
          DataField = 'TRIPLESREAD'
          DataSource = DMMidas.DTSDailyTotals
          ReadOnly = True
          TabOrder = 20
          OnKeyPress = FormKeyPress
        end
        object DBEdit19: TDBEdit
          Left = 223
          Top = 125
          Width = 80
          Height = 21
          DataField = 'PAYPALCOUNT'
          DataSource = DMMidas.DTSDailyTotals
          TabOrder = 21
          OnKeyPress = FormKeyPress
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Dept. Sales'
        ImageIndex = 1
        OnShow = TabSheet2Show
      end
      object TabSheet3: TTabSheet
        Caption = 'Utilities'
        ImageIndex = 2
        OnShow = TabSheet3Enter
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 817
      Height = 40
      Align = alTop
      BevelOuter = bvNone
      Caption = ' '
      TabOrder = 0
      object Label12: TLabel
        Left = 13
        Top = 15
        Width = 49
        Height = 13
        Alignment = taRightJustify
        Caption = 'NO. CAJA'
      end
      object Label1: TLabel
        Left = 424
        Top = 62
        Width = 57
        Height = 13
        Alignment = taRightJustify
        Caption = 'EMPLEADO'
        Visible = False
      end
      object Label11: TLabel
        Left = 424
        Top = 90
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'TURNO'
      end
      object SpinEditNOCAJA: TSpinEdit
        Left = 68
        Top = 12
        Width = 41
        Height = 22
        TabStop = False
        MaxLength = 1
        MaxValue = 99
        MinValue = 0
        ReadOnly = True
        TabOrder = 2
        Value = 0
        OnKeyPress = FormKeyPress
      end
      object SpinEdit1: TSpinEdit
        Left = 601
        Top = 82
        Width = 41
        Height = 22
        TabStop = False
        MaxLength = 1
        MaxValue = 9
        MinValue = 0
        ReadOnly = True
        TabOrder = 1
        Value = 0
        Visible = False
        OnKeyPress = FormKeyPress
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 601
        Top = 55
        Width = 145
        Height = 21
        DataField = 'EMPLEADO'
        DataSource = DMMidas.DtSrcPrintList
        ReadOnly = True
        TabOrder = 0
        TabStop = False
        Visible = False
        OnKeyPress = FormKeyPress
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 657
    Width = 819
    Height = 52
    Align = alBottom
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 1
    object btnCancel: TBitBtn
      AlignWithMargins = True
      Left = 731
      Top = 3
      Width = 85
      Height = 46
      Align = alRight
      Cancel = True
      Caption = 'Cancel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Font.Quality = fqClearType
      ModalResult = 2
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
    object BtnPrint: TBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 174
      Height = 46
      Align = alLeft
      Caption = 'Print Balancing Report'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Font.Quality = fqClearType
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnClick = BtnPrintClick
    end
    object btnOK: TButton
      AlignWithMargins = True
      Left = 640
      Top = 3
      Width = 85
      Height = 46
      Align = alRight
      Caption = 'Ok'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Font.Quality = fqClearType
      ModalResult = 1
      ParentFont = False
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 183
      Top = 3
      Width = 174
      Height = 46
      Align = alLeft
      Caption = 'Print Transactions'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Font.Quality = fqClearType
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
      Visible = False
      OnClick = BitBtn1Click
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 549
      Top = 3
      Width = 85
      Height = 46
      Align = alRight
      Caption = 'Settle'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Font.Quality = fqClearType
      ParentFont = False
      TabOrder = 4
      OnClick = Button1Click
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 363
      Top = 3
      Width = 119
      Height = 46
      Align = alLeft
      Caption = 'Print Settle'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Font.Quality = fqClearType
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn2Click
    end
  end
  object DataSource1: TDataSource
    DataSet = CDSDepts
    Left = 328
    Top = 48
  end
  object QVentasDpt: TSQLDataSet
    CommandText = 
      'Select ProdDepartment, sum(total) as STotal'#13#10'from TransactionDet' +
      'ail'#13#10'group by ProdDepartment'
    MaxBlobSize = -1
    Params = <>
    Left = 264
    Top = 48
  end
  object DSPVentasDpt: TDataSetProvider
    DataSet = QVentasDpt
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 296
    Top = 48
  end
  object CDSDepts: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPVentasDpt'
    Left = 360
    Top = 48
  end
end
