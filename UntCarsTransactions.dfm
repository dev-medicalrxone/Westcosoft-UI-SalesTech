object FrmCarsTransactions: TFrmCarsTransactions
  Left = 0
  Top = 0
  Caption = 'Car Transactions'
  ClientHeight = 581
  ClientWidth = 741
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 741
    Height = 113
    Align = alTop
    DataSource = dsCars
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
  object Panel1: TPanel
    Left = 0
    Top = 113
    Width = 741
    Height = 32
    Align = alTop
    TabOrder = 1
    ExplicitTop = 119
    object Label1: TLabel
      Left = 18
      Top = 9
      Width = 35
      Height = 13
      Caption = 'Header'
    end
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 145
    Width = 741
    Height = 152
    Align = alTop
    DataSource = dsHeader
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TRANSACTIONNUMBER'
        Title.Caption = 'Trans. No.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRANSACTIONDATE'
        Title.Caption = 'Date'
        Width = 142
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAYMENTTYPE1'
        Title.Caption = 'Payment Type'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Title.Caption = 'Total'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 297
    Width = 741
    Height = 32
    Align = alTop
    TabOrder = 3
    ExplicitLeft = 8
    ExplicitTop = 391
    object Label2: TLabel
      Left = 18
      Top = 9
      Width = 27
      Height = 13
      Caption = 'Detail'
    end
  end
  object DBGrid3: TDBGrid
    Left = 0
    Top = 329
    Width = 741
    Height = 211
    TabStop = False
    Align = alClient
    DataSource = dsTransDetail
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI Semibold'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'PRODDESC_DEFINE'
        Title.Caption = 'PRODUCT'
        Width = 304
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRICE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBtnText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTY'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Width = 74
        Visible = True
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 540
    Width = 741
    Height = 41
    Align = alBottom
    TabOrder = 5
    ExplicitLeft = 304
    ExplicitTop = 520
    ExplicitWidth = 185
    object btnCancel: TButton
      AlignWithMargins = True
      Left = 662
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 0
      ExplicitLeft = 632
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object btnOk: TButton
      AlignWithMargins = True
      Left = 581
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 1
      ExplicitTop = 6
    end
  end
  object qryTransHeader: TFDQuery
    Connection = DMMidas.FDConnection1
    SQL.Strings = (
      
        'Select * from TransactionHeader_TEMP  where TransactionNumber = ' +
        '1')
    Left = 392
    Top = 121
  end
  object dspTransHeader: TDataSetProvider
    DataSet = qryTransHeader
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 488
    Top = 121
  end
  object dsHeader: TDataSource
    DataSet = cdsTransHeader
    Left = 576
    Top = 121
  end
  object cdsTransHeader: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTransHeader'
    AfterScroll = cdsTransHeaderAfterScroll
    Left = 664
    Top = 121
    object cdsTransHeaderPAYMENTTYPE1: TStringField
      FieldName = 'PAYMENTTYPE1'
      FixedChar = True
      Size = 4
    end
    object cdsTransHeaderTRANSACTIONDATE: TSQLTimeStampField
      FieldName = 'TRANSACTIONDATE'
      Required = True
    end
    object cdsTransHeaderNUMBERITEMS: TIntegerField
      FieldName = 'NUMBERITEMS'
      Required = True
    end
    object cdsTransHeaderCREDITCARD1: TStringField
      FieldName = 'CREDITCARD1'
      Size = 50
    end
    object cdsTransHeaderOPENED: TStringField
      FieldName = 'OPENED'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsTransHeaderVOIDED: TIntegerField
      FieldName = 'VOIDED'
      Required = True
    end
    object cdsTransHeaderCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
    object cdsTransHeaderTRANSACTIONTIME: TSQLTimeStampField
      FieldName = 'TRANSACTIONTIME'
    end
    object cdsTransHeaderPAID: TStringField
      FieldName = 'PAID'
      FixedChar = True
      Size = 1
    end
    object cdsTransHeaderPAYMENTTYPE2: TStringField
      FieldName = 'PAYMENTTYPE2'
      FixedChar = True
      Size = 4
    end
    object cdsTransHeaderCREDITCARD2: TStringField
      FieldName = 'CREDITCARD2'
      FixedChar = True
      Size = 50
    end
    object cdsTransHeaderSHIFT: TSmallintField
      FieldName = 'SHIFT'
    end
    object cdsTransHeaderREGISTER: TSmallintField
      FieldName = 'REGISTER'
      Required = True
    end
    object cdsTransHeaderEMPLOYNUMBER: TStringField
      FieldName = 'EMPLOYNUMBER'
      Required = True
      Size = 3
    end
    object cdsTransHeaderDELIVERYADDRESS1: TStringField
      FieldName = 'DELIVERYADDRESS1'
      Size = 30
    end
    object cdsTransHeaderDELIVERYADDRESS2: TStringField
      FieldName = 'DELIVERYADDRESS2'
      Size = 30
    end
    object cdsTransHeaderDELIVERYNAME: TStringField
      FieldName = 'DELIVERYNAME'
      Size = 30
    end
    object cdsTransHeaderDELIVEREDBY: TStringField
      FieldName = 'DELIVEREDBY'
      Size = 30
    end
    object cdsTransHeaderPONUMBER: TStringField
      FieldName = 'PONUMBER'
    end
    object cdsTransHeaderDELIVERYPHONE: TStringField
      FieldName = 'DELIVERYPHONE'
      Size = 13
    end
    object cdsTransHeaderID: TIntegerField
      FieldName = 'ID'
    end
    object cdsTransHeaderTRANSACTIONNUMBER: TAutoIncField
      FieldName = 'TRANSACTIONNUMBER'
      ReadOnly = True
    end
    object cdsTransHeaderPAYMENTTYPE3: TStringField
      FieldName = 'PAYMENTTYPE3'
      FixedChar = True
      Size = 4
    end
    object cdsTransHeaderPAYMENTTYPE4: TStringField
      FieldName = 'PAYMENTTYPE4'
      FixedChar = True
      Size = 4
    end
    object cdsTransHeaderCREDITCARD3: TStringField
      FieldName = 'CREDITCARD3'
      Size = 50
    end
    object cdsTransHeaderCREDITCARD4: TStringField
      FieldName = 'CREDITCARD4'
      Size = 50
    end
    object cdsTransHeaderDELIVERED: TStringField
      FieldName = 'DELIVERED'
      Size = 1
    end
    object cdsTransHeaderSUPERVISOR: TStringField
      FieldName = 'SUPERVISOR'
      Size = 3
    end
    object cdsTransHeaderCUSTOMER: TWideStringField
      FieldName = 'CUSTOMER'
      FixedChar = True
      Size = 30
    end
    object cdsTransHeaderPAYAMOUNT1: TBCDField
      FieldName = 'PAYAMOUNT1'
      Precision = 18
      Size = 2
    end
    object cdsTransHeaderPAYAMOUNT2: TBCDField
      FieldName = 'PAYAMOUNT2'
      Precision = 18
      Size = 2
    end
    object cdsTransHeaderTAX: TBCDField
      FieldName = 'TAX'
      Precision = 18
      Size = 2
    end
    object cdsTransHeaderTOTAL_TAX: TBCDField
      FieldName = 'TOTAL_TAX'
      Precision = 18
      Size = 2
    end
    object cdsTransHeaderTAX_ESTATAL: TBCDField
      FieldName = 'TAX_ESTATAL'
      Precision = 18
      Size = 2
    end
    object cdsTransHeaderSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object cdsTransHeaderTAX_SERVICIO: TBCDField
      FieldName = 'TAX_SERVICIO'
      Precision = 18
      Size = 2
    end
    object cdsTransHeaderPAYAMOUNT3: TBCDField
      FieldName = 'PAYAMOUNT3'
      Precision = 18
      Size = 2
    end
    object cdsTransHeaderPAYAMOUNT4: TBCDField
      FieldName = 'PAYAMOUNT4'
      Precision = 18
      Size = 2
    end
    object cdsTransHeaderREGTOTAL: TBCDField
      FieldName = 'REGTOTAL'
      Precision = 18
      Size = 2
    end
    object cdsTransHeaderTOTAL: TBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object cdsTransHeaderCHANGE: TBCDField
      FieldName = 'CHANGE'
      Precision = 18
      Size = 2
    end
    object cdsTransHeaderFOODTOTAL: TBCDField
      FieldName = 'FOODTOTAL'
      Precision = 18
      Size = 2
    end
    object cdsTransHeaderTAX_FOOD_MUNICIPAL: TBCDField
      FieldName = 'TAX_FOOD_MUNICIPAL'
      Precision = 18
      Size = 2
    end
    object cdsTransHeaderTAX_FOOD_ESTATAL: TBCDField
      FieldName = 'TAX_FOOD_ESTATAL'
      Precision = 18
      Size = 2
    end
    object cdsTransHeaderTOTAL_DISCOUNT: TBCDField
      FieldName = 'TOTAL_DISCOUNT'
      Precision = 18
      Size = 2
    end
    object cdsTransHeaderTIP: TBCDField
      FieldName = 'TIP'
      Precision = 18
      Size = 2
    end
    object cdsTransHeaderTIP2: TBCDField
      FieldName = 'TIP2'
      Precision = 18
      Size = 2
    end
    object cdsTransHeaderTOTAL_TIP: TBCDField
      FieldName = 'TOTAL_TIP'
      Precision = 18
      Size = 2
    end
    object cdsTransHeaderAMOUNT_TENDERED1: TBCDField
      FieldName = 'AMOUNT_TENDERED1'
      Precision = 18
      Size = 2
    end
    object cdsTransHeaderAMOUNT_TENDERED2: TBCDField
      FieldName = 'AMOUNT_TENDERED2'
      Precision = 18
      Size = 2
    end
    object cdsTransHeaderCASHBACK: TBCDField
      FieldName = 'CASHBACK'
      Precision = 18
      Size = 2
    end
    object cdsTransHeaderCAR_ID: TIntegerField
      FieldName = 'CAR_ID'
    end
  end
  object qryTransDetail: TFDQuery
    Connection = DMMidas.FDConnection1
    SQL.Strings = (
      'Select * from TransactionDetail')
    Left = 392
    Top = 192
  end
  object dspTransDetail: TDataSetProvider
    DataSet = qryTransDetail
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 488
    Top = 192
  end
  object dsTransDetail: TDataSource
    DataSet = cdsTransDetail
    Left = 584
    Top = 192
  end
  object cdsTransDetail: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTransDetail'
    Left = 664
    Top = 192
    object cdsTransDetailIDNUMBER: TIntegerField
      FieldName = 'IDNUMBER'
      Required = True
    end
    object cdsTransDetailTRANSACTIONNUMBER: TIntegerField
      FieldName = 'TRANSACTIONNUMBER'
      Required = True
    end
    object cdsTransDetailUPC: TStringField
      FieldName = 'UPC'
      Required = True
      FixedChar = True
      Size = 14
    end
    object cdsTransDetailVOIDED: TIntegerField
      FieldName = 'VOIDED'
      Required = True
    end
    object cdsTransDetailSUBDETAIL: TStringField
      FieldName = 'SUBDETAIL'
      FixedChar = True
      Size = 10
    end
    object cdsTransDetailPRODDESCRIPTION: TStringField
      FieldName = 'PRODDESCRIPTION'
      FixedChar = True
      Size = 30
    end
    object cdsTransDetailPRODDEPARTMENT: TStringField
      FieldName = 'PRODDEPARTMENT'
      FixedChar = True
    end
    object cdsTransDetailFOOD: TStringField
      FieldName = 'FOOD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsTransDetailMODIFIED: TSmallintField
      FieldName = 'MODIFIED'
      Required = True
    end
    object cdsTransDetailFECHAVENTA: TSQLTimeStampField
      FieldName = 'FECHAVENTA'
      Required = True
    end
    object cdsTransDetailSUPLIDOR: TIntegerField
      FieldName = 'SUPLIDOR'
      Required = True
    end
    object cdsTransDetailID: TIntegerField
      FieldName = 'ID'
    end
    object cdsTransDetailPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
    end
    object cdsTransDetailTAX_ESTATAL: TStringField
      FieldName = 'TAX_ESTATAL'
      FixedChar = True
      Size = 1
    end
    object cdsTransDetailTAX_MUNICIPAL: TStringField
      FieldName = 'TAX_MUNICIPAL'
      Size = 1
    end
    object cdsTransDetailQTY: TFloatField
      FieldName = 'QTY'
    end
    object cdsTransDetailOPENED: TStringField
      FieldName = 'OPENED'
      Size = 1
    end
    object cdsTransDetailGROUP_PROD: TStringField
      FieldName = 'GROUP_PROD'
      Size = 1
    end
    object cdsTransDetailREGISTER: TSmallintField
      FieldName = 'REGISTER'
    end
    object cdsTransDetailSUPERVISOR: TStringField
      FieldName = 'SUPERVISOR'
      Size = 3
    end
    object cdsTransDetailPATROCINIO: TSmallintField
      FieldName = 'PATROCINIO'
    end
    object cdsTransDetailSUBDEPARTAMENTO: TSmallintField
      FieldName = 'SUBDEPARTAMENTO'
    end
    object cdsTransDetailBARCODEALTERNO1: TWideStringField
      FieldName = 'BARCODEALTERNO1'
      FixedChar = True
    end
    object cdsTransDetailBARCODEALTERNO2: TWideStringField
      FieldName = 'BARCODEALTERNO2'
      FixedChar = True
    end
    object cdsTransDetailBAG_NUMBER: TIntegerField
      FieldName = 'BAG_NUMBER'
    end
    object cdsTransDetailOTC_NUMBER: TIntegerField
      FieldName = 'OTC_NUMBER'
    end
    object cdsTransDetailUTILIDAD: TBooleanField
      FieldName = 'UTILIDAD'
    end
    object cdsTransDetailTRANS_TIME: TSQLTimeStampField
      FieldName = 'TRANS_TIME'
    end
    object cdsTransDetailTAX_SERVICIO: TBooleanField
      FieldName = 'TAX_SERVICIO'
    end
    object cdsTransDetailTAX: TBCDField
      FieldName = 'TAX'
      Precision = 18
      Size = 2
    end
    object cdsTransDetailCOSTO: TBCDField
      FieldName = 'COSTO'
      Precision = 18
      Size = 2
    end
    object cdsTransDetailPRICE: TBCDField
      FieldName = 'PRICE'
      Precision = 18
      Size = 2
    end
    object cdsTransDetailTOTAL: TBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object cdsTransDetailREGTOTAL: TBCDField
      FieldName = 'REGTOTAL'
      Precision = 18
      Size = 2
    end
    object cdsTransDetailREGPRICE: TBCDField
      FieldName = 'REGPRICE'
      Precision = 18
      Size = 2
    end
    object cdsTransDetailAWP: TBCDField
      FieldName = 'AWP'
      Precision = 18
      Size = 2
    end
    object cdsTransDetailTOTAL_VALUE: TBCDField
      FieldName = 'TOTAL_VALUE'
      Precision = 18
      Size = 2
    end
    object cdsTransDetailDISCOUNT: TBCDField
      FieldName = 'DISCOUNT'
      Precision = 18
      Size = 2
    end
    object cdsTransDetailNOTE: TWideStringField
      FieldName = 'NOTE'
      FixedChar = True
      Size = 30
    end
    object cdsTransDetailINVCONTROL_RECIPE: TBooleanField
      FieldName = 'INVCONTROL_RECIPE'
    end
    object cdsTransDetailTERMINO: TWideStringField
      FieldName = 'TERMINO'
      FixedChar = True
      Size = 15
    end
    object cdsTransDetailMAIN_COURSE: TBooleanField
      FieldName = 'MAIN_COURSE'
    end
    object cdsTransDetailKITCHEN: TBooleanField
      FieldName = 'KITCHEN'
    end
    object cdsTransDetailPRINTED: TBooleanField
      FieldName = 'PRINTED'
    end
    object cdsTransDetailMAIN_COURSE_ID: TIntegerField
      FieldName = 'MAIN_COURSE_ID'
    end
    object cdsTransDetailBUTTON_QTY: TBCDField
      FieldName = 'BUTTON_QTY'
      Precision = 18
      Size = 2
    end
    object cdsTransDetailTAB_SAVED: TBooleanField
      FieldName = 'TAB_SAVED'
    end
  end
  object qCars: TFDQuery
    Connection = DMMidas.FDConnection1
    SQL.Strings = (
      'select * from car')
    Left = 400
    Top = 48
  end
  object dspCars: TDataSetProvider
    DataSet = qCars
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 488
    Top = 48
  end
  object dsCars: TDataSource
    DataSet = cdsCars
    Left = 568
    Top = 48
  end
  object cdsCars: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCars'
    AfterScroll = cdsCarsAfterScroll
    Left = 656
    Top = 56
    object cdsCarsNUMEROCLIENTE: TIntegerField
      FieldName = 'NUMEROCLIENTE'
      Required = True
    end
    object cdsCarsCAR_ID: TAutoIncField
      FieldName = 'CAR_ID'
      ReadOnly = True
    end
    object cdsCarsLICENCE_PLATE: TWideStringField
      FieldName = 'LICENCE_PLATE'
      FixedChar = True
      Size = 10
    end
    object cdsCarsBIN_NUMBER: TWideStringField
      FieldName = 'BIN_NUMBER'
      FixedChar = True
    end
    object cdsCarsYEAR: TDateField
      FieldName = 'YEAR'
    end
    object cdsCarsCOLOR: TWideStringField
      FieldName = 'COLOR'
      FixedChar = True
      Size = 10
    end
    object cdsCarsNOTE: TMemoField
      FieldName = 'NOTE'
      BlobType = ftMemo
    end
    object cdsCarsBRAND: TWideStringField
      FieldName = 'BRAND'
      FixedChar = True
    end
    object cdsCarsMODEL: TWideStringField
      FieldName = 'MODEL'
      FixedChar = True
    end
  end
end
