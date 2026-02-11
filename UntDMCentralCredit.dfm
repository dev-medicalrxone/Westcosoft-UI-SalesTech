object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 644
  Width = 394
  object DSClientes: TDataSource
    DataSet = CDSClientes
    Left = 112
    Top = 64
  end
  object DSClientTransactions: TDataSource
    DataSet = CDSClientTransactions
    Left = 112
    Top = 176
  end
  object SQLSPADD_CLIENT: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFixedChar
        Name = '@NO_SEGURO_SOCIAL'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    StoredProcName = 'ADD_CLIENTCC'
    Left = 56
    Top = 544
  end
  object CDSTrHeadAdHoc: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 189
    Top = 496
  end
  object QTransDetail: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select max(TRANSNO) from clienttransactions')
    SQLConnection = SQLConnection1
    Left = 104
    Top = 496
    object QTransDetailCOLUMN1: TIntegerField
      FieldName = 'COLUMN1'
    end
  end
  object QClientes: TSQLDataSet
    CommandText = 'Select * from Clientes'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 40
    Top = 64
  end
  object DPClientes: TDataSetProvider
    DataSet = QClientes
    Options = [poFetchDetailsOnDemand, poPropogateChanges, poAllowCommandText]
    Left = 176
    Top = 64
  end
  object CDSClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPClientes'
    AfterPost = CDSClientesAfterPost
    AfterDelete = CDSClientesAfterPost
    Left = 248
    Top = 64
    object CDSClientesSEGURO_SOCIAL: TStringField
      FieldName = 'SEGURO_SOCIAL'
      Required = True
      FixedChar = True
      Size = 11
    end
    object CDSClientesBALANCE: TFloatField
      FieldName = 'BALANCE'
      Required = True
      DisplayFormat = '#.00'
    end
  end
  object CDSClientes2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPClientes2'
    Left = 248
    Top = 120
    object CDSClientes2SEGURO_SOCIAL: TStringField
      FieldName = 'SEGURO_SOCIAL'
      Required = True
      FixedChar = True
      Size = 11
    end
    object CDSClientes2BALANCE: TFloatField
      FieldName = 'BALANCE'
      Required = True
      DisplayFormat = '#.00'
    end
  end
  object DPClientes2: TDataSetProvider
    DataSet = QClientes2
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 168
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = CDSClientes2
    Left = 112
    Top = 120
  end
  object QClientes2: TSQLDataSet
    CommandText = 'Select * from Clientes'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 48
    Top = 120
  end
  object QClientTransactions: TSQLDataSet
    CommandText = 'Select * from CLIENTTRANSACTIONS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 48
    Top = 176
    object QClientTransactionsCODE: TStringField
      FieldName = 'CODE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QClientTransactionsAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Required = True
    end
    object QClientTransactionsATTENDEDBY: TStringField
      FieldName = 'ATTENDEDBY'
      Required = True
      FixedChar = True
      Size = 3
    end
    object QClientTransactionsCLIENTNO: TIntegerField
      FieldName = 'CLIENTNO'
      Required = True
    end
    object QClientTransactionsTRANSNO: TIntegerField
      FieldName = 'TRANSNO'
    end
    object QClientTransactionsPAIDAMOUNT: TFloatField
      FieldName = 'PAIDAMOUNT'
      Required = True
    end
    object QClientTransactionsNO_SEGURO_SOCIAL: TStringField
      FieldName = 'NO_SEGURO_SOCIAL'
      FixedChar = True
      Size = 9
    end
    object QClientTransactionsNO_FARMACIA: TIntegerField
      FieldName = 'NO_FARMACIA'
      Required = True
    end
    object QClientTransactionsDATEOFTRANS: TSQLTimeStampField
      FieldName = 'DATEOFTRANS'
      Required = True
    end
    object QClientTransactionsBALANCE: TFloatField
      FieldName = 'BALANCE'
    end
  end
  object DPClientTransactions: TDataSetProvider
    DataSet = QClientTransactions
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 168
    Top = 176
  end
  object CDSClientTransactions: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPClientTransactions'
    AfterPost = CDSClientTransactionsAfterDelete
    AfterDelete = CDSClientTransactionsAfterDelete
    Left = 232
    Top = 176
    object CDSClientTransactionsCODE: TStringField
      FieldName = 'CODE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSClientTransactionsAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Required = True
      DisplayFormat = '#.00'
    end
    object CDSClientTransactionsATTENDEDBY: TStringField
      FieldName = 'ATTENDEDBY'
      Required = True
      FixedChar = True
      Size = 3
    end
    object CDSClientTransactionsCLIENTNO: TIntegerField
      FieldName = 'CLIENTNO'
      Required = True
    end
    object CDSClientTransactionsTRANSNO: TIntegerField
      FieldName = 'TRANSNO'
    end
    object CDSClientTransactionsPAIDAMOUNT: TFloatField
      FieldName = 'PAIDAMOUNT'
      Required = True
      DisplayFormat = '#.00'
    end
    object CDSClientTransactionsNO_SEGURO_SOCIAL: TStringField
      FieldName = 'NO_SEGURO_SOCIAL'
      FixedChar = True
      Size = 9
    end
    object CDSClientTransactionsNO_FARMACIA: TIntegerField
      FieldName = 'NO_FARMACIA'
      Required = True
    end
    object CDSClientTransactionsDATEOFTRANS: TSQLTimeStampField
      FieldName = 'DATEOFTRANS'
      Required = True
    end
    object CDSClientTransactionsBALANCE: TFloatField
      FieldName = 'BALANCE'
      DisplayFormat = '#.00'
    end
  end
  object QTransView: TSQLDataSet
    CommandText = 'Select * from CLIENTTRANSACTIONS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 48
    Top = 224
  end
  object DSClientTransactionsView: TDataSource
    DataSet = CDSClientTransactionsView
    Left = 112
    Top = 224
  end
  object CDSClientTransactionsView: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPClientTransactionsView'
    Left = 232
    Top = 224
    object CDSClientTransactionsViewCODE: TStringField
      FieldName = 'CODE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSClientTransactionsViewAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Required = True
      DisplayFormat = '#.00'
    end
    object CDSClientTransactionsViewATTENDEDBY: TStringField
      FieldName = 'ATTENDEDBY'
      Required = True
      FixedChar = True
      Size = 3
    end
    object CDSClientTransactionsViewCLIENTNO: TIntegerField
      FieldName = 'CLIENTNO'
      Required = True
    end
    object CDSClientTransactionsViewTRANSNO: TIntegerField
      FieldName = 'TRANSNO'
      Required = True
    end
    object CDSClientTransactionsViewPAIDAMOUNT: TFloatField
      FieldName = 'PAIDAMOUNT'
      Required = True
      DisplayFormat = '#.00'
    end
    object CDSClientTransactionsViewNO_SEGURO_SOCIAL: TStringField
      FieldName = 'NO_SEGURO_SOCIAL'
      FixedChar = True
      Size = 9
    end
    object CDSClientTransactionsViewNO_FARMACIA: TIntegerField
      FieldName = 'NO_FARMACIA'
      Required = True
    end
    object CDSClientTransactionsViewDATEOFTRANS: TSQLTimeStampField
      FieldName = 'DATEOFTRANS'
      Required = True
    end
  end
  object DPClientTransactionsView: TDataSetProvider
    DataSet = QTransView
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 176
    Top = 224
  end
  object SQLQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 272
    Top = 496
  end
  object CDSTransactionDetails: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPTransactionDetails'
    Left = 272
    Top = 560
    object CDSTransactionDetailsID: TIntegerField
      FieldName = 'ID'
    end
    object CDSTransactionDetailsTRANSACTIONNUMBER: TIntegerField
      FieldName = 'TRANSACTIONNUMBER'
    end
    object CDSTransactionDetailsTRANSACTIONDATE: TSQLTimeStampField
      FieldName = 'TRANSACTIONDATE'
    end
    object CDSTransactionDetailsNUMBERITEMS: TIntegerField
      FieldName = 'NUMBERITEMS'
    end
    object CDSTransactionDetailsSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object CDSTransactionDetailsTAX: TFloatField
      FieldName = 'TAX'
    end
    object CDSTransactionDetailsCHANGE: TFloatField
      FieldName = 'CHANGE'
    end
    object CDSTransactionDetailsPAYMENTTYPE1: TStringField
      FieldName = 'PAYMENTTYPE1'
      FixedChar = True
      Size = 4
    end
    object CDSTransactionDetailsCREDITCARD1: TStringField
      FieldName = 'CREDITCARD1'
      Size = 50
    end
    object CDSTransactionDetailsOPENED: TStringField
      FieldName = 'OPENED'
      FixedChar = True
      Size = 1
    end
    object CDSTransactionDetailsCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
    object CDSTransactionDetailsTRANSACTIONTIME: TSQLTimeStampField
      FieldName = 'TRANSACTIONTIME'
    end
    object CDSTransactionDetailsPAID: TStringField
      FieldName = 'PAID'
      FixedChar = True
      Size = 1
    end
    object CDSTransactionDetailsPAYMENTTYPE2: TStringField
      FieldName = 'PAYMENTTYPE2'
      FixedChar = True
      Size = 4
    end
    object CDSTransactionDetailsCREDITCARD2: TStringField
      FieldName = 'CREDITCARD2'
      FixedChar = True
      Size = 50
    end
    object CDSTransactionDetailsPAYAMOUNT1: TFloatField
      FieldName = 'PAYAMOUNT1'
    end
    object CDSTransactionDetailsPAYAMOUNT2: TFloatField
      FieldName = 'PAYAMOUNT2'
    end
    object CDSTransactionDetailsREGTOTAL: TFloatField
      FieldName = 'REGTOTAL'
    end
    object CDSTransactionDetailsFOODTOTAL: TFloatField
      FieldName = 'FOODTOTAL'
    end
    object CDSTransactionDetailsSHIFT: TSmallintField
      FieldName = 'SHIFT'
    end
    object CDSTransactionDetailsEMPLOYNUMBER: TStringField
      FieldName = 'EMPLOYNUMBER'
      Size = 3
    end
    object CDSTransactionDetailsREGISTER: TSmallintField
      FieldName = 'REGISTER'
    end
    object CDSTransactionDetailsIDNUMBER: TIntegerField
      FieldName = 'IDNUMBER'
    end
    object CDSTransactionDetailsUPC: TStringField
      FieldName = 'UPC'
      FixedChar = True
      Size = 13
    end
    object CDSTransactionDetailsQTY: TIntegerField
      FieldName = 'QTY'
    end
    object CDSTransactionDetailsTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object CDSTransactionDetailsVOIDED: TIntegerField
      FieldName = 'VOIDED'
    end
    object CDSTransactionDetailsSUBDETAIL: TStringField
      FieldName = 'SUBDETAIL'
      FixedChar = True
      Size = 10
    end
    object CDSTransactionDetailsPRODDESCRIPTION: TStringField
      FieldName = 'PRODDESCRIPTION'
      FixedChar = True
      Size = 30
    end
    object CDSTransactionDetailsPRODDEPARTMENT: TStringField
      FieldName = 'PRODDEPARTMENT'
      FixedChar = True
    end
    object CDSTransactionDetailsFOOD: TStringField
      FieldName = 'FOOD'
      FixedChar = True
      Size = 1
    end
    object CDSTransactionDetailsPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object CDSTransactionDetailsREGPRICE: TFloatField
      FieldName = 'REGPRICE'
    end
    object CDSTransactionDetailsMODIFIED: TSmallintField
      FieldName = 'MODIFIED'
    end
    object CDSTransactionDetailsDISCOUNT: TFloatField
      FieldName = 'DISCOUNT'
    end
    object CDSTransactionDetailsCOSTO: TFloatField
      FieldName = 'COSTO'
    end
    object CDSTransactionDetailsFECHAVENTA: TSQLTimeStampField
      FieldName = 'FECHAVENTA'
    end
    object CDSTransactionDetailsSUPLIDOR: TIntegerField
      FieldName = 'SUPLIDOR'
    end
  end
  object DSTrans: TDataSource
    Left = 200
    Top = 560
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'CentralCredit'
    DriverName = 'MSSQL'
    KeepConnection = False
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MSSQL'
      'HostName=AHS'
      'DataBase=CENTRALCREDIT'
      'User_Name=dbo'
      'Password='
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'MSSQL TransIsolation=ReadCommited'
      'OS Authentication=True')
    Left = 40
    Top = 8
  end
  object QBalanceInicial: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NO_SEGURO_SOCIAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BALANCE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'INSERT INTO CLIENTES (SEGURO_SOCIAL, BALANCE) VALUES(:NO_SEGURO_' +
        'SOCIAL, :BALANCE);')
    SQLConnection = SQLConnection1
    Left = 112
    Top = 560
  end
  object CDSCCREPT: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCCREPT'
    AfterPost = CDSCCREPTAfterPost
    Left = 240
    Top = 288
    object CDSCCREPTBALANCE: TFloatField
      FieldName = 'BALANCE'
      DisplayFormat = '#.00'
    end
    object CDSCCREPTCLIENTE: TStringField
      FieldName = 'CLIENTE'
      FixedChar = True
      Size = 45
    end
    object CDSCCREPTSSN: TStringField
      FieldName = 'SSN'
      FixedChar = True
      Size = 18
    end
  end
  object DSCCREPT: TDataSource
    DataSet = CDSCCREPT
    Left = 112
    Top = 288
  end
  object DSPCCREPT: TDataSetProvider
    DataSet = QCCREPT
    Options = [poFetchDetailsOnDemand, poPropogateChanges, poAllowCommandText]
    Left = 176
    Top = 288
  end
  object QCCREPT: TSQLDataSet
    CommandText = 'Select * from CCREPT order by Cliente'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 48
    Top = 288
  end
  object SP_INSERT_TRANSACTION: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftFixedChar
        Name = '@CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@AMOUNT'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = '@DATEOFTRANS'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = '@ATTENDEDBY'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CLIENTNO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@TRANSNO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = '@NO_SEGURO_SOCIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@NO_FARMACIA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@PAIDAMOUNT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@BALANCE'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    StoredProcName = 'INSERT_TRANSACTION'
    Left = 56
    Top = 424
  end
  object QCredito: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'Select sum(amount) as TotalCredito from ClientTransactions where' +
        ' no_Seguro_Social = '#39#39)
    SQLConnection = SQLConnection1
    Left = 264
    Top = 432
    object QCreditoTotalCredito: TFloatField
      FieldName = 'TotalCredito'
    end
  end
  object FIXDEBT: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftFloat
        Name = '@AMOUNT'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = '@FECHA'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = '@SSN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@BALANCE'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    StoredProcName = 'FIXDEBT'
    Left = 184
    Top = 424
  end
  object CDSULT_TRANS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPULT_TRANS'
    Left = 248
    Top = 336
    object CDSULT_TRANSAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Required = True
    end
    object CDSULT_TRANSULT_TRANS: TSQLTimeStampField
      FieldName = 'ULT_TRANS'
      Required = True
    end
    object CDSULT_TRANSCODE: TStringField
      FieldName = 'CODE'
      Required = True
      FixedChar = True
      Size = 2
    end
  end
  object DSULT_TRANS: TDataSource
    DataSet = CDSULT_TRANS
    Left = 120
    Top = 336
  end
  object DSPULT_TRANS: TDataSetProvider
    DataSet = QULT_TRANS
    Options = [poFetchBlobsOnDemand, poFetchDetailsOnDemand, poAllowCommandText]
    Left = 176
    Top = 336
  end
  object QULT_TRANS: TSQLDataSet
    CommandText = 
      'SELECT AMOUNT, DATEOFTRANS AS ULT_TRANS, CODE FROM CLIENTTRANSAC' +
      'TIONS WHERE TRANSNO = 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 48
    Top = 336
    object QULT_TRANSAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Required = True
    end
    object QULT_TRANSULT_TRANS: TSQLTimeStampField
      FieldName = 'ULT_TRANS'
      Required = True
    end
    object QULT_TRANSCODE: TStringField
      FieldName = 'CODE'
      Required = True
      FixedChar = True
      Size = 2
    end
  end
  object QSP_DEUDA: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftTimeStamp
        Name = '@FECHA_DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = '@SSN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@BALANCE'
        ParamType = ptInputOutput
        Size = 8
      end>
    SQLConnection = SQLConnection1
    StoredProcName = 'DEUDA'
    Left = 120
    Top = 424
  end
end
