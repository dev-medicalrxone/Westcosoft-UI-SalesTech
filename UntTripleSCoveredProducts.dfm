object FrmTripleSCoveredProducts: TFrmTripleSCoveredProducts
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Triple-S Covered products'
  ClientHeight = 547
  ClientWidth = 674
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 504
    Width = 674
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 0
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 596
      Top = 3
      Width = 75
      Height = 37
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
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 674
    Height = 504
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 1
    object tsTransaction: TTabSheet
      Caption = 'Transactions'
      object ToolBar1: TToolBar
        Left = 0
        Top = 0
        Width = 666
        Height = 40
        ButtonHeight = 38
        ButtonWidth = 122
        Caption = 'ToolBar1'
        Images = FrmMain.ImageList2
        List = True
        ShowCaptions = True
        AllowTextButtons = True
        TabOrder = 0
        object tbDelete: TToolButton
          Left = 0
          Top = 0
          Caption = 'Delete Item'
          ImageIndex = 6
          Style = tbsTextButton
          OnClick = tbDeleteClick
        end
        object tbTransaction: TToolButton
          Left = 103
          Top = 0
          Caption = 'Transaction'
          ImageIndex = 10
          Style = tbsTextButton
          OnClick = tbTransactionClick
        end
        object tbVoid: TToolButton
          Left = 206
          Top = 0
          Caption = 'Void Transaction'
          ImageIndex = 7
          Style = tbsTextButton
          Visible = False
          OnClick = tbVoidClick
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 40
        Width = 666
        Height = 81
        Align = alTop
        TabOrder = 1
        object Bevel1: TBevel
          Left = 499
          Top = 1
          Width = 166
          Height = 79
          Align = alLeft
          ExplicitLeft = 333
        end
        object Bevel2: TBevel
          Left = 1
          Top = 1
          Width = 166
          Height = 79
          Align = alLeft
        end
        object Bevel3: TBevel
          Left = 167
          Top = 1
          Width = 166
          Height = 79
          Align = alLeft
        end
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 52
          Height = 13
          Caption = 'Total Sales'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMedGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 173
          Top = 8
          Width = 80
          Height = 13
          Caption = 'Triple-S Covered'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMedGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 339
          Top = 8
          Width = 74
          Height = 13
          Caption = 'Patient Balance'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMedGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LabelNotCoverd: TLabel
          Left = 513
          Top = 27
          Width = 132
          Height = 29
          Alignment = taRightJustify
          Caption = 'Not Covered'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Bevel4: TBevel
          Left = 333
          Top = 1
          Width = 166
          Height = 79
          Align = alLeft
          ExplicitLeft = 339
          ExplicitTop = 6
        end
        object Label5: TLabel
          Left = 505
          Top = 8
          Width = 61
          Height = 13
          Caption = 'Not Covered'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMedGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LabelCoverd: TLabel
          Left = 180
          Top = 27
          Width = 135
          Height = 29
          Alignment = taRightJustify
          Caption = 'Total Coverd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblPatBalance: TLabel
          Left = 350
          Top = 27
          Width = 124
          Height = 29
          Alignment = taRightJustify
          Caption = 'Pat Balance'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LabelTotalSales: TLabel
          Left = 18
          Top = 27
          Width = 116
          Height = 29
          Alignment = taRightJustify
          Caption = 'Total Sales'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 121
        Width = 666
        Height = 184
        Align = alTop
        DataSource = DMMidas.DSTransShow2
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'TRIPLES_COVERED'
            Title.Caption = 'COVERED'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODDESCRIPTION'
            Title.Caption = 'DESCRIPTION'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTY'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UPC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRICE'
            Visible = True
          end>
      end
      object Memo1: TMemo
        Left = 3
        Top = 187
        Width = 540
        Height = 102
        Lines.Strings = (
          '{'
          '  "transactionID": 123,'
          '  "previousBalance": 50.00,'
          '  "finalBalance": 30.63,'
          '  "approvedAmount": 19.37,'
          '  "itemList": ['
          '    {'
          '      "itemCode": "30573013420",'
          '      "responseCode": "00",'
          '      "claimNumber": "232",'
          '      "amountCovered": 4.89'
          '    },'
          #9'{'
          '      "itemCode": "35310015026",'
          '      "responseCode": "00",'
          '      "claimNumber": "233",'
          '      "amountCovered": 12.99'
          '    }'
          '  ],'
          '  "result": "00",'
          '  "message": "Success"'
          '}')
        TabOrder = 3
        Visible = False
      end
      object Memo2: TMemo
        Left = 0
        Top = 305
        Width = 666
        Height = 171
        Align = alClient
        TabOrder = 4
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Void Transaction'
      ImageIndex = 1
      object ToolBar2: TToolBar
        Left = 0
        Top = 0
        Width = 666
        Height = 40
        ButtonHeight = 38
        ButtonWidth = 135
        Caption = 'ToolBar1'
        Images = FrmMain.ImageList2
        List = True
        ShowCaptions = True
        AllowTextButtons = True
        TabOrder = 0
        object tbSearchTrans: TToolButton
          Left = 0
          Top = 0
          Caption = 'Search Transaction'
          ImageIndex = 12
          Style = tbsTextButton
          Visible = False
          OnClick = tbSearchTransClick
        end
        object ToolButton4: TToolButton
          Left = 139
          Top = 0
          Width = 10
          Caption = 'ToolButton4'
          ImageIndex = 8
          Style = tbsSeparator
        end
        object ToolButton1: TToolButton
          Left = 149
          Top = 0
          Caption = 'Refund One'
          ImageIndex = 10
          Style = tbsTextButton
          OnClick = ToolButton1Click
        end
        object ToolButton2: TToolButton
          Left = 254
          Top = 0
          Caption = 'Refund All'
          ImageIndex = 10
          Style = tbsTextButton
          OnClick = ToolButton2Click
        end
        object ToolButton3: TToolButton
          Left = 350
          Top = 0
          Width = 10
          Caption = 'ToolButton3'
          ImageIndex = 8
          Style = tbsSeparator
        end
        object tbVoid2: TToolButton
          Left = 360
          Top = 0
          Caption = 'Void Transaction'
          ImageIndex = 7
          Style = tbsTextButton
          OnClick = tbVoid2Click
        end
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 40
        Width = 666
        Height = 436
        Align = alClient
        DataSource = dsTransDetail
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
            FieldName = 'TRIPLES_VOID'
            Title.Caption = 'VOID'
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRIPLES_COVERED'
            Title.Caption = 'COVERED'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODDESCRIPTION'
            Title.Caption = 'DESCRIPTION'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTY'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UPC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRICE'
            Visible = True
          end>
      end
    end
  end
  object qTransDetail: TFDQuery
    Connection = DMMidas.FDConnection1
    SQL.Strings = (
      'Select * from transactiondetail where transactionnumber = 1')
    Left = 188
    Top = 200
  end
  object dspTransDetail: TDataSetProvider
    DataSet = qTransDetail
    Options = [poFetchBlobsOnDemand, poAllowCommandText, poUseQuoteChar]
    Left = 276
    Top = 200
  end
  object dsTransDetail: TDataSource
    DataSet = cdsTransDetail
    Left = 364
    Top = 200
  end
  object cdsTransDetail: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTransDetail'
    Left = 452
    Top = 200
    object cdsTransDetailPRODDESCRIPTION: TStringField
      FieldName = 'PRODDESCRIPTION'
      Origin = 'PRODDESCRIPTION'
      FixedChar = True
      Size = 30
    end
    object cdsTransDetailUPC: TStringField
      FieldName = 'UPC'
      Origin = 'UPC'
      FixedChar = True
      Size = 14
    end
    object cdsTransDetailQTY: TFloatField
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object cdsTransDetailTRIPLES_COVERED: TBooleanField
      FieldName = 'TRIPLES_COVERED'
      Origin = 'TRIPLES_COVERED'
    end
    object cdsTransDetailTRANSACTIONNUMBER: TIntegerField
      FieldName = 'TRANSACTIONNUMBER'
      Required = True
    end
    object cdsTransDetailPRICE: TFMTBCDField
      FieldName = 'PRICE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsTransDetailPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
    end
    object cdsTransDetailIDNUMBER: TIntegerField
      FieldName = 'IDNUMBER'
      Required = True
    end
    object cdsTransDetailTRIPLES_VOID: TBooleanField
      FieldName = 'TRIPLES_VOID'
    end
  end
  object DTSTransHead: TDataSource
    DataSet = CDSTransHeadOld
    Left = 366
    Top = 264
  end
  object CDSTransHeadOld: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPTransHead'
    Left = 470
    Top = 264
    object CDSTransHeadOldPAYMENTTYPE1: TStringField
      FieldName = 'PAYMENTTYPE1'
      Origin = 'PAYMENTTYPE1'
      FixedChar = True
      Size = 4
    end
    object CDSTransHeadOldTRANSACTIONDATE: TSQLTimeStampField
      FieldName = 'TRANSACTIONDATE'
      Origin = 'TRANSACTIONDATE'
      Required = True
    end
    object CDSTransHeadOldNUMBERITEMS: TIntegerField
      FieldName = 'NUMBERITEMS'
      Origin = 'NUMBERITEMS'
      Required = True
    end
    object CDSTransHeadOldCREDITCARD1: TStringField
      FieldName = 'CREDITCARD1'
      Origin = 'CREDITCARD1'
      Size = 50
    end
    object CDSTransHeadOldOPENED: TStringField
      FieldName = 'OPENED'
      Origin = 'OPENED'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSTransHeadOldVOIDED: TIntegerField
      FieldName = 'VOIDED'
      Origin = 'VOIDED'
      Required = True
    end
    object CDSTransHeadOldCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
      Origin = 'CUSTOMERID'
    end
    object CDSTransHeadOldTRANSACTIONTIME: TSQLTimeStampField
      FieldName = 'TRANSACTIONTIME'
      Origin = 'TRANSACTIONTIME'
    end
    object CDSTransHeadOldPAID: TStringField
      FieldName = 'PAID'
      Origin = 'PAID'
      FixedChar = True
      Size = 1
    end
    object CDSTransHeadOldPAYMENTTYPE2: TStringField
      FieldName = 'PAYMENTTYPE2'
      Origin = 'PAYMENTTYPE2'
      FixedChar = True
      Size = 4
    end
    object CDSTransHeadOldCREDITCARD2: TStringField
      FieldName = 'CREDITCARD2'
      Origin = 'CREDITCARD2'
      FixedChar = True
      Size = 50
    end
    object CDSTransHeadOldSHIFT: TSmallintField
      FieldName = 'SHIFT'
      Origin = 'SHIFT'
    end
    object CDSTransHeadOldREGISTER: TSmallintField
      FieldName = 'REGISTER'
      Origin = 'REGISTER'
      Required = True
    end
    object CDSTransHeadOldEMPLOYNUMBER: TStringField
      FieldName = 'EMPLOYNUMBER'
      Origin = 'EMPLOYNUMBER'
      Required = True
      Size = 3
    end
    object CDSTransHeadOldDELIVERYADDRESS1: TStringField
      FieldName = 'DELIVERYADDRESS1'
      Origin = 'DELIVERYADDRESS1'
      Size = 30
    end
    object CDSTransHeadOldDELIVERYADDRESS2: TStringField
      FieldName = 'DELIVERYADDRESS2'
      Origin = 'DELIVERYADDRESS2'
      Size = 30
    end
    object CDSTransHeadOldDELIVERYNAME: TStringField
      FieldName = 'DELIVERYNAME'
      Origin = 'DELIVERYNAME'
      Size = 30
    end
    object CDSTransHeadOldDELIVEREDBY: TStringField
      FieldName = 'DELIVEREDBY'
      Origin = 'DELIVEREDBY'
      Size = 30
    end
    object CDSTransHeadOldPONUMBER: TStringField
      FieldName = 'PONUMBER'
      Origin = 'PONUMBER'
    end
    object CDSTransHeadOldDELIVERYPHONE: TStringField
      FieldName = 'DELIVERYPHONE'
      Origin = 'DELIVERYPHONE'
      Size = 13
    end
    object CDSTransHeadOldID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object CDSTransHeadOldTRANSACTIONNUMBER: TAutoIncField
      FieldName = 'TRANSACTIONNUMBER'
      Origin = 'TRANSACTIONNUMBER'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object CDSTransHeadOldPAYMENTTYPE3: TStringField
      FieldName = 'PAYMENTTYPE3'
      Origin = 'PAYMENTTYPE3'
      FixedChar = True
      Size = 4
    end
    object CDSTransHeadOldPAYMENTTYPE4: TStringField
      FieldName = 'PAYMENTTYPE4'
      Origin = 'PAYMENTTYPE4'
      FixedChar = True
      Size = 4
    end
    object CDSTransHeadOldCREDITCARD3: TStringField
      FieldName = 'CREDITCARD3'
      Origin = 'CREDITCARD3'
      Size = 50
    end
    object CDSTransHeadOldCREDITCARD4: TStringField
      FieldName = 'CREDITCARD4'
      Origin = 'CREDITCARD4'
      Size = 50
    end
    object CDSTransHeadOldDELIVERED: TStringField
      FieldName = 'DELIVERED'
      Origin = 'DELIVERED'
      Size = 1
    end
    object CDSTransHeadOldSUPERVISOR: TStringField
      FieldName = 'SUPERVISOR'
      Origin = 'SUPERVISOR'
      Size = 3
    end
    object CDSTransHeadOldCUSTOMER: TWideStringField
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      FixedChar = True
      Size = 30
    end
    object CDSTransHeadOldPAYAMOUNT1: TFMTBCDField
      FieldName = 'PAYAMOUNT1'
      Origin = 'PAYAMOUNT1'
      Precision = 18
      Size = 2
    end
    object CDSTransHeadOldPAYAMOUNT2: TFMTBCDField
      FieldName = 'PAYAMOUNT2'
      Origin = 'PAYAMOUNT2'
      Precision = 18
      Size = 2
    end
    object CDSTransHeadOldTAX: TFMTBCDField
      FieldName = 'TAX'
      Origin = 'TAX'
      Precision = 18
      Size = 2
    end
    object CDSTransHeadOldTOTAL_TAX: TFMTBCDField
      FieldName = 'TOTAL_TAX'
      Origin = 'TOTAL_TAX'
      Precision = 18
      Size = 2
    end
    object CDSTransHeadOldTAX_ESTATAL: TFMTBCDField
      FieldName = 'TAX_ESTATAL'
      Origin = 'TAX_ESTATAL'
      Precision = 18
      Size = 2
    end
    object CDSTransHeadOldSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object CDSTransHeadOldTAX_SERVICIO: TFMTBCDField
      FieldName = 'TAX_SERVICIO'
      Origin = 'TAX_SERVICIO'
      Precision = 18
      Size = 2
    end
    object CDSTransHeadOldPAYAMOUNT3: TFMTBCDField
      FieldName = 'PAYAMOUNT3'
      Origin = 'PAYAMOUNT3'
      Precision = 18
      Size = 2
    end
    object CDSTransHeadOldPAYAMOUNT4: TFMTBCDField
      FieldName = 'PAYAMOUNT4'
      Origin = 'PAYAMOUNT4'
      Precision = 18
      Size = 2
    end
    object CDSTransHeadOldREGTOTAL: TFMTBCDField
      FieldName = 'REGTOTAL'
      Origin = 'REGTOTAL'
      Precision = 18
      Size = 2
    end
    object CDSTransHeadOldTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object CDSTransHeadOldCHANGE: TFMTBCDField
      FieldName = 'CHANGE'
      Origin = 'CHANGE'
      Precision = 18
      Size = 2
    end
    object CDSTransHeadOldFOODTOTAL: TFMTBCDField
      FieldName = 'FOODTOTAL'
      Origin = 'FOODTOTAL'
      Precision = 18
      Size = 2
    end
    object CDSTransHeadOldTAX_FOOD_MUNICIPAL: TFMTBCDField
      FieldName = 'TAX_FOOD_MUNICIPAL'
      Origin = 'TAX_FOOD_MUNICIPAL'
      Precision = 18
      Size = 2
    end
    object CDSTransHeadOldTAX_FOOD_ESTATAL: TFMTBCDField
      FieldName = 'TAX_FOOD_ESTATAL'
      Origin = 'TAX_FOOD_ESTATAL'
      Precision = 18
      Size = 2
    end
    object CDSTransHeadOldTOTAL_DISCOUNT: TFMTBCDField
      FieldName = 'TOTAL_DISCOUNT'
      Origin = 'TOTAL_DISCOUNT'
      Precision = 18
      Size = 2
    end
    object CDSTransHeadOldTIP: TFMTBCDField
      FieldName = 'TIP'
      Origin = 'TIP'
      Precision = 18
      Size = 2
    end
    object CDSTransHeadOldTIP2: TFMTBCDField
      FieldName = 'TIP2'
      Origin = 'TIP2'
      Precision = 18
      Size = 2
    end
    object CDSTransHeadOldTOTAL_TIP: TFMTBCDField
      FieldName = 'TOTAL_TIP'
      Origin = 'TOTAL_TIP'
      Precision = 18
      Size = 2
    end
    object CDSTransHeadOldAMOUNT_TENDERED1: TFMTBCDField
      FieldName = 'AMOUNT_TENDERED1'
      Origin = 'AMOUNT_TENDERED1'
      Precision = 18
      Size = 2
    end
    object CDSTransHeadOldAMOUNT_TENDERED2: TFMTBCDField
      FieldName = 'AMOUNT_TENDERED2'
      Origin = 'AMOUNT_TENDERED2'
      Precision = 18
      Size = 2
    end
    object CDSTransHeadOldCASHBACK: TFMTBCDField
      FieldName = 'CASHBACK'
      Origin = 'CASHBACK'
      Precision = 18
      Size = 2
    end
    object CDSTransHeadOldSALESMAN: TWideStringField
      FieldName = 'SALESMAN'
      Origin = 'SALESMAN'
      FixedChar = True
      Size = 3
    end
    object CDSTransHeadOldTAX_PROCESSED_FOOD: TFMTBCDField
      FieldName = 'TAX_PROCESSED_FOOD'
      Origin = 'TAX_PROCESSED_FOOD'
      Precision = 18
      Size = 2
    end
    object CDSTransHeadOldDELIVERY_CITY: TWideStringField
      FieldName = 'DELIVERY_CITY'
      Origin = 'DELIVERY_CITY'
      FixedChar = True
    end
    object CDSTransHeadOldDELIVERY_ZIPCODE: TWideStringField
      FieldName = 'DELIVERY_ZIPCODE'
      Origin = 'DELIVERY_ZIPCODE'
      FixedChar = True
      Size = 15
    end
    object CDSTransHeadOldDELIVERY_STATE: TStringField
      FieldName = 'DELIVERY_STATE'
      Origin = 'DELIVERY_STATE'
      FixedChar = True
      Size = 2
    end
  end
  object DPTransHead: TDataSetProvider
    DataSet = QTransHeadFD
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 278
    Top = 264
  end
  object QTransHeadFD: TFDQuery
    Connection = DMMidas.FDConnection1
    SQL.Strings = (
      
        'Select * from TransactionHeader_TEMP  where TransactionNumber = ' +
        '1')
    Left = 192
    Top = 264
  end
  object FDQuery1: TFDQuery
    Connection = DMMidas.FDConnection1
    Left = 244
    Top = 144
  end
end
