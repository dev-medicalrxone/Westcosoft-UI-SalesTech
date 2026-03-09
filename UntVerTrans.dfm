object FrmVerTrans: TFrmVerTrans
  Left = 130
  Top = 123
  Caption = 'Ver Transacciones'
  ClientHeight = 546
  ClientWidth = 1301
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
  object RichEdit1: TRichEdit
    Left = 792
    Top = 424
    Width = 185
    Height = 89
    Lines.Strings = (
      'RichEdit1')
    TabOrder = 0
    Visible = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 105
    Width = 1301
    Height = 441
    Align = alClient
    DataSource = DSTrans
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'REGISTER'
        Title.Caption = 'Register'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRANSACTIONNUMBER'
        Title.Caption = 'Trans. No.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTY'
        Title.Caption = 'Qty.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMBERITEMS'
        Title.Caption = 'No. Items'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHANGE'
        Title.Caption = 'Change'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAYMENTTYPE1'
        Title.Caption = 'Payment Type 1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAYAMOUNT1'
        Title.Caption = 'Pay Amount 1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAYMENTTYPE2'
        Title.Caption = 'Payment Type 2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAYAMOUNT2'
        Title.Caption = 'Pay Amount 2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Title.Caption = 'Total'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODDESCRIPTION'
        Title.Caption = 'Product'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UPC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPENED'
        Title.Caption = 'Opened'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRANSACTIONDATE'
        Title.Caption = 'Trans. Date'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUSTOMERID'
        Title.Caption = 'Customer ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRANSACTIONTIME'
        Title.Caption = 'Trans. Time'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAID'
        Title.Caption = 'Paid'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SHIFT'
        Title.Caption = 'Shift'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMPLOYNUMBER'
        Title.Caption = 'Employe No.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IDNUMBER'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CREDITCARD1'
        Title.Caption = 'Credit Card'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CREDITCARD2'
        Title.Caption = 'Credit Card 2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VOIDED'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUBDETAIL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODDEPARTMENT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOOD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MODIFIED'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECHAVENTA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUPLIDOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUPERVISOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAX_MUNICIPAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAX_ESTATAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BARCODEALTERNO1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BARCODEALTERNO2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUBTOTAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAX'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REGTOTAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOODTOTAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRICE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REGPRICE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DISCOUNT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COSTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTE'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1301
    Height = 70
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label7: TLabel
      AlignWithMargins = True
      Left = 228
      Top = 38
      Width = 41
      Height = 29
      Align = alLeft
      Alignment = taRightJustify
      Caption = 'Amount'
      Layout = tlCenter
      ExplicitHeight = 13
    end
    object Label8: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 38
      Width = 92
      Height = 29
      Align = alLeft
      Alignment = taRightJustify
      Caption = 'Credit card last 4: '
      Layout = tlCenter
      ExplicitHeight = 13
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 1301
      Height = 35
      Align = alTop
      TabOrder = 0
      object Label2: TLabel
        AlignWithMargins = True
        Left = 405
        Top = 10
        Width = 55
        Height = 13
        Alignment = taRightJustify
        Caption = 'Employee: '
        Layout = tlCenter
      end
      object Label1: TLabel
        AlignWithMargins = True
        Left = 617
        Top = 10
        Width = 55
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tran. Type: '
        Layout = tlCenter
      end
      object Label3: TLabel
        AlignWithMargins = True
        Left = 271
        Top = 4
        Width = 17
        Height = 27
        Align = alLeft
        Alignment = taRightJustify
        Caption = 'To: '
        Layout = tlCenter
        ExplicitHeight = 13
      end
      object Label4: TLabel
        AlignWithMargins = True
        Left = 822
        Top = 10
        Width = 32
        Height = 13
        Caption = '      ID:'
        Layout = tlCenter
      end
      object Label6: TLabel
        AlignWithMargins = True
        Left = 120
        Top = 4
        Width = 34
        Height = 27
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'From: '
        Layout = tlCenter
      end
      object Label5: TLabel
        AlignWithMargins = True
        Left = 1099
        Top = 10
        Width = 49
        Height = 13
        Caption = 'No. Caja: '
        Layout = tlCenter
        Visible = False
      end
      object cbAllTransactions: TCheckBox
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 110
        Height = 27
        Align = alLeft
        Caption = 'All transactions'
        TabOrder = 0
        OnClick = cbAllTransactionsClick
      end
      object DBLookupComboBox1: TDBLookupComboBox
        AlignWithMargins = True
        Left = 466
        Top = 8
        Width = 145
        Height = 21
        Margins.Top = 7
        DropDownRows = 10
        KeyField = 'USERNAME'
        ListSource = DMMidas.DSPasswords
        TabOrder = 1
        OnCloseUp = DBLookupComboBox1CloseUp
      end
      object ComboBox1: TComboBox
        AlignWithMargins = True
        Left = 678
        Top = 8
        Width = 143
        Height = 21
        Margins.Top = 7
        TabOrder = 2
        Text = 'Todas'
        Items.Strings = (
          'Cash'
          'Credito'
          'Tarjeta de Credito'
          'Cheque'
          'ATH'
          'Todas'
          'Pay Outs'
          'Tarjeta de la Familia'
          'WIC'
          'Refund'
          'No Charge'
          'ATHM Movil'
          'PICK'
          'ATH, ATH Movil, Credit Card'
          'Triple-S Advantage'
          'PayPal')
      end
      object ComboBox3: TComboBox
        AlignWithMargins = True
        Left = 860
        Top = 8
        Width = 106
        Height = 21
        Margins.Top = 7
        TabOrder = 3
        Text = '0'
      end
      object dtpFrom: TDateTimePicker
        AlignWithMargins = True
        Left = 160
        Top = 4
        Width = 105
        Height = 27
        Align = alLeft
        Date = 37359.000000000000000000
        Time = 0.401661064803192900
        TabOrder = 4
        OnCloseUp = DBLookupComboBox1CloseUp
      end
      object dtpTo: TDateTimePicker
        AlignWithMargins = True
        Left = 294
        Top = 4
        Width = 105
        Height = 27
        Align = alLeft
        Date = 37359.000000000000000000
        Time = 0.401661064803192900
        TabOrder = 5
        OnCloseUp = DBLookupComboBox1CloseUp
      end
      object Button1: TButton
        AlignWithMargins = True
        Left = 1222
        Top = 4
        Width = 75
        Height = 27
        Align = alRight
        Caption = 'Filter'
        TabOrder = 6
        OnClick = ToolButton1Click
      end
      object ComboBox2: TComboBox
        AlignWithMargins = True
        Left = 1154
        Top = 7
        Width = 46
        Height = 21
        Margins.Top = 7
        TabOrder = 7
        Text = '0'
        Visible = False
        Items.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10')
      end
    end
    object EditAmount: TEdit
      AlignWithMargins = True
      Left = 275
      Top = 42
      Width = 121
      Height = 21
      Margins.Top = 7
      Margins.Bottom = 7
      Align = alLeft
      TabOrder = 1
      TextHint = 'Amount'
    end
    object EditLast4: TEdit
      AlignWithMargins = True
      Left = 101
      Top = 42
      Width = 121
      Height = 21
      Margins.Top = 7
      Margins.Bottom = 7
      Align = alLeft
      TabOrder = 2
      TextHint = 'Last 4'
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 70
    Width = 1301
    Height = 35
    ButtonWidth = 27
    Caption = 'ToolBar1'
    Images = FrmMain.Images
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    Visible = False
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 212
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 27
      Top = 0
      Hint = 'Descripci'#243'n del cheque'
      Caption = 'ToolButton2'
      ImageIndex = 11
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton2Click
    end
    object ToolButton6: TToolButton
      Left = 54
      Top = 0
      Caption = 'ToolButton6'
      ImageIndex = 12
      OnClick = ToolButton6Click
    end
    object ToolButton5: TToolButton
      Left = 81
      Top = 0
      Width = 20
      Caption = 'ToolButton5'
      ImageIndex = 13
      Style = tbsSeparator
    end
    object Splitter2: TSplitter
      Left = 101
      Top = 0
      Width = 17
      Height = 22
    end
    object Splitter3: TSplitter
      Left = 118
      Top = 0
      Width = 8
      Height = 22
    end
    object Splitter4: TSplitter
      Left = 126
      Top = 0
      Width = 12
      Height = 22
    end
    object Splitter1: TSplitter
      Left = 138
      Top = 0
      Width = 16
      Height = 22
    end
    object ToolButton4: TToolButton
      Left = 154
      Top = 0
      Hint = 'Select Local Database'
      Caption = 'ToolButton4'
      ImageIndex = 192
      OnClick = ToolButton4Click
    end
    object ToolButton3: TToolButton
      Left = 181
      Top = 0
      Hint = 'Select Remote Database'
      Caption = 'ToolButton3'
      ImageIndex = 193
      OnClick = ToolButton3Click
    end
  end
  object DSTrans: TDataSource
    DataSet = CDSTransactionDetails
    Left = 424
    Top = 168
  end
  object CDSTransactionDetails: TClientDataSet
    Aggregates = <>
    PacketRecords = 1000
    Params = <>
    ProviderName = 'dspVerTransacciones'
    Left = 512
    Top = 168
    object CDSTransactionDetailsID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object CDSTransactionDetailsTRANSACTIONNUMBER: TIntegerField
      FieldName = 'TRANSACTIONNUMBER'
      Origin = 'TRANSACTIONNUMBER'
      Required = True
    end
    object CDSTransactionDetailsTRANSACTIONDATE: TSQLTimeStampField
      FieldName = 'TRANSACTIONDATE'
      Origin = 'TRANSACTIONDATE'
      Required = True
    end
    object CDSTransactionDetailsNUMBERITEMS: TIntegerField
      FieldName = 'NUMBERITEMS'
      Origin = 'NUMBERITEMS'
      Required = True
    end
    object CDSTransactionDetailsPAYMENTTYPE1: TStringField
      FieldName = 'PAYMENTTYPE1'
      Origin = 'PAYMENTTYPE1'
      FixedChar = True
      Size = 4
    end
    object CDSTransactionDetailsCREDITCARD1: TStringField
      FieldName = 'CREDITCARD1'
      Origin = 'CREDITCARD1'
      Size = 50
    end
    object CDSTransactionDetailsOPENED: TStringField
      FieldName = 'OPENED'
      Origin = 'OPENED'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSTransactionDetailsCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
      Origin = 'CUSTOMERID'
    end
    object CDSTransactionDetailsTRANSACTIONTIME: TSQLTimeStampField
      FieldName = 'TRANSACTIONTIME'
      Origin = 'TRANSACTIONTIME'
    end
    object CDSTransactionDetailsPAID: TStringField
      FieldName = 'PAID'
      Origin = 'PAID'
      FixedChar = True
      Size = 1
    end
    object CDSTransactionDetailsPAYMENTTYPE2: TStringField
      FieldName = 'PAYMENTTYPE2'
      Origin = 'PAYMENTTYPE2'
      FixedChar = True
      Size = 4
    end
    object CDSTransactionDetailsCREDITCARD2: TStringField
      FieldName = 'CREDITCARD2'
      Origin = 'CREDITCARD2'
      FixedChar = True
      Size = 50
    end
    object CDSTransactionDetailsSHIFT: TSmallintField
      FieldName = 'SHIFT'
      Origin = 'SHIFT'
    end
    object CDSTransactionDetailsEMPLOYNUMBER: TStringField
      FieldName = 'EMPLOYNUMBER'
      Origin = 'EMPLOYNUMBER'
      Required = True
      Size = 3
    end
    object CDSTransactionDetailsREGISTER: TSmallintField
      FieldName = 'REGISTER'
      Origin = 'REGISTER'
      Required = True
    end
    object CDSTransactionDetailsIDNUMBER: TIntegerField
      FieldName = 'IDNUMBER'
      Origin = 'IDNUMBER'
      Required = True
    end
    object CDSTransactionDetailsUPC: TStringField
      FieldName = 'UPC'
      Origin = 'UPC'
      Required = True
      FixedChar = True
      Size = 13
    end
    object CDSTransactionDetailsQTY: TFloatField
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object CDSTransactionDetailsVOIDED: TIntegerField
      FieldName = 'VOIDED'
      Origin = 'VOIDED'
      Required = True
    end
    object CDSTransactionDetailsSUBDETAIL: TStringField
      FieldName = 'SUBDETAIL'
      Origin = 'SUBDETAIL'
      FixedChar = True
      Size = 10
    end
    object CDSTransactionDetailsPRODDESCRIPTION: TStringField
      FieldName = 'PRODDESCRIPTION'
      Origin = 'PRODDESCRIPTION'
      FixedChar = True
      Size = 30
    end
    object CDSTransactionDetailsPRODDEPARTMENT: TStringField
      FieldName = 'PRODDEPARTMENT'
      Origin = 'PRODDEPARTMENT'
      FixedChar = True
    end
    object CDSTransactionDetailsFOOD: TStringField
      FieldName = 'FOOD'
      Origin = 'FOOD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSTransactionDetailsMODIFIED: TSmallintField
      FieldName = 'MODIFIED'
      Origin = 'MODIFIED'
      Required = True
    end
    object CDSTransactionDetailsFECHAVENTA: TSQLTimeStampField
      FieldName = 'FECHAVENTA'
      Origin = 'FECHAVENTA'
      Required = True
    end
    object CDSTransactionDetailsSUPLIDOR: TIntegerField
      FieldName = 'SUPLIDOR'
      Origin = 'SUPLIDOR'
      Required = True
    end
    object CDSTransactionDetailsSUPERVISOR: TStringField
      FieldName = 'SUPERVISOR'
      Origin = 'SUPERVISOR'
      Size = 3
    end
    object CDSTransactionDetailsTAX_MUNICIPAL: TStringField
      FieldName = 'TAX_MUNICIPAL'
      Origin = 'TAX_MUNICIPAL'
      Size = 1
    end
    object CDSTransactionDetailsTAX_ESTATAL: TStringField
      FieldName = 'TAX_ESTATAL'
      Origin = 'TAX_ESTATAL'
      FixedChar = True
      Size = 1
    end
    object CDSTransactionDetailsBARCODEALTERNO1: TWideStringField
      FieldName = 'BARCODEALTERNO1'
      Origin = 'BARCODEALTERNO1'
      FixedChar = True
    end
    object CDSTransactionDetailsBARCODEALTERNO2: TWideStringField
      FieldName = 'BARCODEALTERNO2'
      Origin = 'BARCODEALTERNO2'
      FixedChar = True
    end
    object CDSTransactionDetailsNOTE: TWideStringField
      FieldName = 'NOTE'
      Origin = 'NOTE'
      FixedChar = True
      Size = 30
    end
    object CDSTransactionDetailsSUBDEPARTAMENTO: TSmallintField
      FieldName = 'SUBDEPARTAMENTO'
      Origin = 'SUBDEPARTAMENTO'
    end
    object CDSTransactionDetailsUTILIDAD: TBooleanField
      FieldName = 'UTILIDAD'
      Origin = 'UTILIDAD'
    end
    object CDSTransactionDetailsSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransactionDetailsTAX: TFMTBCDField
      FieldName = 'TAX'
      Origin = 'TAX'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransactionDetailsCHANGE: TFMTBCDField
      FieldName = 'CHANGE'
      Origin = 'CHANGE'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransactionDetailsPAYAMOUNT1: TFMTBCDField
      FieldName = 'PAYAMOUNT1'
      Origin = 'PAYAMOUNT1'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransactionDetailsPAYAMOUNT2: TFMTBCDField
      FieldName = 'PAYAMOUNT2'
      Origin = 'PAYAMOUNT2'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransactionDetailsREGTOTAL: TFMTBCDField
      FieldName = 'REGTOTAL'
      Origin = 'REGTOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransactionDetailsFOODTOTAL: TFMTBCDField
      FieldName = 'FOODTOTAL'
      Origin = 'FOODTOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransactionDetailsTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransactionDetailsPRICE: TFMTBCDField
      FieldName = 'PRICE'
      Origin = 'PRICE'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransactionDetailsREGPRICE: TFMTBCDField
      FieldName = 'REGPRICE'
      Origin = 'REGPRICE'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransactionDetailsDISCOUNT: TFMTBCDField
      FieldName = 'DISCOUNT'
      Origin = 'DISCOUNT'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransactionDetailsCOSTO: TFMTBCDField
      FieldName = 'COSTO'
      Origin = 'COSTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransactionDetailsTIP: TFMTBCDField
      FieldName = 'TIP'
      Origin = 'TIP'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransactionDetailsCOMMISSION: TFMTBCDField
      FieldName = 'COMMISSION'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSTransactionDetailsSALESMAN: TWideStringField
      FieldName = 'SALESMAN'
      FixedChar = True
      Size = 3
    end
    object CDSTransactionDetailsLAST4: TStringField
      FieldName = 'LAST4'
      Required = True
      Size = 5
    end
  end
  object dspVerTransacciones: TDataSetProvider
    DataSet = sqlVerTransaccionesFD
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 336
    Top = 168
  end
  object sqlVerTransaccionesFD: TFDQuery
    Connection = DMMidas.FDConnection1
    SQL.Strings = (
      'Select * from VerTransacciones')
    Left = 240
    Top = 168
  end
end
