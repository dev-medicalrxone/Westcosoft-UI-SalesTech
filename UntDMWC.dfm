object DMwc: TDMwc
  OnCreate = DataModuleCreate
  Height = 867
  Width = 1069
  object dspWillCall: TDataSetProvider
    DataSet = qWillCallFD
    Options = [poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 120
    Top = 32
  end
  object cdsWillCall: TClientDataSet
    Aggregates = <>
    PacketRecords = 100
    Params = <>
    ProviderName = 'dspWillCall'
    AfterInsert = cdsWillCallAfterInsert
    AfterPost = cdsWillCallAfterDelete
    AfterDelete = cdsWillCallAfterDelete
    OnCalcFields = cdsWillCallCalcFields
    Left = 312
    Top = 32
    object cdsWillCallDRUG_DESCRIPTION: TWideStringField
      FieldName = 'DRUG_DESCRIPTION'
      Origin = 'DRUG_DESCRIPTION'
      FixedChar = True
      Size = 35
    end
    object cdsWillCallCUSTOMER_NUMBER: TIntegerField
      FieldName = 'CUSTOMER_NUMBER'
      Origin = 'CUSTOMER_NUMBER'
    end
    object cdsWillCallSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object cdsWillCallRX_DATE: TDateField
      FieldName = 'RX_DATE'
      Origin = 'RX_DATE'
    end
    object cdsWillCallNDC: TWideStringField
      FieldName = 'NDC'
      Origin = 'NDC'
      FixedChar = True
      Size = 11
    end
    object cdsWillCallPRUDUCT_ID: TIntegerField
      FieldName = 'PRUDUCT_ID'
      Origin = 'PRUDUCT_ID'
    end
    object cdsWillCallTRANSACTION_NUMBER: TIntegerField
      FieldName = 'TRANSACTION_NUMBER'
      Origin = 'TRANSACTION_NUMBER'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsWillCallRX_NUMBER: TLargeintField
      FieldName = 'RX_NUMBER'
      Origin = 'RX_NUMBER'
    end
    object cdsWillCallStatusDefine: TStringField
      FieldKind = fkCalculated
      FieldName = 'StatusDefine'
      Calculated = True
    end
    object cdsWillCallCOPAY: TFloatField
      FieldName = 'COPAY'
      Origin = 'COPAY'
      DisplayFormat = '#.00'
    end
    object cdsWillCallCOST: TFloatField
      FieldName = 'COST'
      Origin = 'COST'
      DisplayFormat = '#.00'
    end
    object cdsWillCallPRICE: TFloatField
      FieldName = 'PRICE'
      Origin = 'PRICE'
      DisplayFormat = '#.00'
    end
    object cdsWillCallATTENDED_BY: TWideStringField
      FieldName = 'ATTENDED_BY'
      Origin = 'ATTENDED_BY'
      FixedChar = True
      Size = 5
    end
    object cdsWillCallNOTE: TWideStringField
      FieldName = 'NOTE'
      Origin = 'NOTE'
      FixedChar = True
      Size = 50
    end
    object cdsWillCallWILLCALL_DATE_ENTERED: TDateField
      FieldName = 'WILLCALL_DATE_ENTERED'
      Origin = 'WILLCALL_DATE_ENTERED'
    end
    object cdsWillCallUSER_NO: TIntegerField
      FieldName = 'USER_NO'
      Origin = 'USER_NO'
    end
    object cdsWillCallAmountDue: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AmountDue'
      DisplayFormat = '$#.00'
      Calculated = True
    end
    object cdsWillCallCASH_PLAN: TSmallintField
      FieldName = 'CASH_PLAN'
      Origin = 'CASH_PLAN'
    end
    object cdsWillCallCASH_PLAN_Define: TStringField
      FieldKind = fkCalculated
      FieldName = 'CASH_PLAN_Define'
      Size = 11
      Calculated = True
    end
    object cdsWillCallQUANTITY: TFloatField
      FieldName = 'QUANTITY'
      Origin = 'QUANTITY'
    end
    object cdsWillCallBATCH_NUMBER: TIntegerField
      FieldName = 'BATCH_NUMBER'
      Origin = 'BATCH_NUMBER'
    end
    object cdsWillCallPOS_PICKUP: TBooleanField
      FieldName = 'POS_PICKUP'
      Origin = 'POS_PICKUP'
    end
    object cdsWillCallOTC_NUMBER: TIntegerField
      FieldName = 'OTC_NUMBER'
      Origin = 'OTC_NUMBER'
    end
    object cdsWillCallBAG_NUMBER: TIntegerField
      FieldName = 'BAG_NUMBER'
    end
  end
  object dsWillCall: TDataSource
    DataSet = cdsWillCall
    Left = 208
    Top = 32
  end
  object cdsOTC2: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    PacketRecords = 10
    Params = <>
    ProviderName = 'dspOTC2'
    Left = 320
    Top = 313
    object cdsOTC2OTCNUMBER: TAutoIncField
      FieldName = 'OTCNUMBER'
      Origin = 'OTCNUMBER'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdsOTC2TOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsOTC2COBRADO: TStringField
      FieldName = 'COBRADO'
      Origin = 'COBRADO'
      FixedChar = True
      Size = 1
    end
    object cdsOTC2FECHAOTC: TSQLTimeStampField
      FieldName = 'FECHAOTC'
      Origin = 'FECHAOTC'
    end
    object cdsOTC2RX: TStringField
      FieldName = 'RX'
      Origin = 'RX'
      FixedChar = True
      Size = 1
    end
    object cdsOTC2COSTOVENTA: TFMTBCDField
      FieldName = 'COSTOVENTA'
      Origin = 'COSTOVENTA'
      Precision = 18
      Size = 2
    end
    object cdsOTC2NUMEROCLIENTE: TIntegerField
      FieldName = 'NUMEROCLIENTE'
      Origin = 'NUMEROCLIENTE'
    end
    object cdsOTC2MEDICAMENTOMIX: TStringField
      FieldName = 'MEDICAMENTOMIX'
      Origin = 'MEDICAMENTOMIX'
      FixedChar = True
      Size = 120
    end
    object cdsOTC2NUMEROTRANSACCION: TIntegerField
      FieldName = 'NUMEROTRANSACCION'
      Origin = 'NUMEROTRANSACCION'
    end
    object cdsOTC2PAGO_PLAN: TFMTBCDField
      FieldName = 'PAGO_PLAN'
      Origin = 'PAGO_PLAN'
      Precision = 18
      Size = 2
    end
    object cdsOTC2DEDUCIBLE: TFMTBCDField
      FieldName = 'DEDUCIBLE'
      Origin = 'DEDUCIBLE'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PARTIAL_COMPLETION: TStringField
      FieldName = 'PARTIAL_COMPLETION'
      Origin = 'PARTIAL_COMPLETION'
      FixedChar = True
      Size = 1
    end
    object cdsOTC2RX_STATUS: TStringField
      FieldName = 'RX_STATUS'
      Origin = 'RX_STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsOTC2NO_REF_DISPENSADO: TIntegerField
      FieldName = 'NO_REF_DISPENSADO'
      Origin = 'NO_REF_DISPENSADO'
    end
    object cdsOTC2INGREDIENT_COST_PAID: TFMTBCDField
      FieldName = 'INGREDIENT_COST_PAID'
      Origin = 'INGREDIENT_COST_PAID'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsOTC2INCENTIVE_FEE_PAID: TFMTBCDField
      FieldName = 'INCENTIVE_FEE_PAID'
      Origin = 'INCENTIVE_FEE_PAID'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsOTC2DISPENSING_FEE_PAID: TFMTBCDField
      FieldName = 'DISPENSING_FEE_PAID'
      Origin = 'DISPENSING_FEE_PAID'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsOTC2OTHER_AMOUNT_PAID: TFMTBCDField
      FieldName = 'OTHER_AMOUNT_PAID'
      Origin = 'OTHER_AMOUNT_PAID'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsOTC2AMOUNT_COPAY_COINS: TFMTBCDField
      FieldName = 'AMOUNT_COPAY_COINS'
      Origin = 'AMOUNT_COPAY_COINS'
      Precision = 18
      Size = 2
    end
    object cdsOTC2GANANCIA: TFMTBCDField
      FieldName = 'GANANCIA'
      Origin = 'GANANCIA'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PHARMACIST: TStringField
      FieldName = 'PHARMACIST'
      Origin = 'PHARMACIST'
      FixedChar = True
      Size = 3
    end
    object cdsOTC2DAYS_SUPPLY: TIntegerField
      FieldName = 'DAYS_SUPPLY'
      Origin = 'DAYS_SUPPLY'
    end
    object cdsOTC2PAGADA: TStringField
      FieldName = 'PAGADA'
      Origin = 'PAGADA'
      FixedChar = True
      Size = 1
    end
    object cdsOTC2PRECIOFACTURACION: TFMTBCDField
      FieldName = 'PRECIOFACTURACION'
      Origin = 'PRECIOFACTURACION'
      DisplayFormat = '#.00'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PRODUCT_ID: TIntegerField
      FieldName = 'PRODUCT_ID'
      Origin = 'PRODUCT_ID'
    end
    object cdsOTC2TIME_RX: TSQLTimeStampField
      FieldName = 'TIME_RX'
      Origin = 'TIME_RX'
    end
    object cdsOTC2NO_HORA: TIntegerField
      FieldName = 'NO_HORA'
      Origin = 'NO_HORA'
    end
    object cdsOTC2NUMEROPLAN: TIntegerField
      FieldName = 'NUMEROPLAN'
      Origin = 'NUMEROPLAN'
    end
    object cdsOTC2METRICDECIMALQUANTITY: TIntegerField
      FieldName = 'METRICDECIMALQUANTITY'
      Origin = 'METRICDECIMALQUANTITY'
    end
    object cdsOTC2OTC_BARCODE: TStringField
      FieldName = 'OTC_BARCODE'
      Origin = 'OTC_BARCODE'
      FixedChar = True
      Size = 15
    end
    object cdsOTC2PLAN_MEDICO: TStringField
      FieldName = 'PLAN_MEDICO'
      Origin = 'PLAN_MEDICO'
      Size = 3
    end
    object cdsOTC2NUMERO_AUTORIZACION: TStringField
      FieldName = 'NUMERO_AUTORIZACION'
      Origin = 'NUMERO_AUTORIZACION'
    end
    object cdsOTC2MEDICAMENTO: TStringField
      FieldName = 'MEDICAMENTO'
      Origin = 'MEDICAMENTO'
      Size = 30
    end
    object cdsOTC2NDC: TStringField
      FieldName = 'NDC'
      Origin = 'NDC'
      Size = 15
    end
    object cdsOTC2ATENDIDOPOR: TStringField
      FieldName = 'ATENDIDOPOR'
      Origin = 'ATENDIDOPOR'
      Size = 5
    end
    object cdsOTC2LOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 12
    end
    object cdsOTC2SIGNATURE_LINK: TIntegerField
      FieldName = 'SIGNATURE_LINK'
      Origin = 'SIGNATURE_LINK'
    end
    object cdsOTC2PICKEDUPBY_RELETION: TSmallintField
      FieldName = 'PICKEDUPBY_RELETION'
      Origin = 'PICKEDUPBY_RELETION'
    end
    object cdsOTC2PICKEDUP_ID: TStringField
      FieldName = 'PICKEDUP_ID'
      Origin = 'PICKEDUP_ID'
      Size = 10
    end
    object cdsOTC2CHECKED: TIntegerField
      FieldName = 'CHECKED'
      Origin = 'CHECKED'
    end
    object cdsOTC2PICKEDUPBY_RELATION: TIntegerField
      FieldName = 'PICKEDUPBY_RELATION'
      Origin = 'PICKEDUPBY_RELATION'
    end
    object cdsOTC2TXR: TStringField
      FieldName = 'TXR'
      Origin = 'TXR'
      FixedChar = True
      Size = 8
    end
    object cdsOTC2PS_521_FL: TFMTBCDField
      FieldName = 'PS_521_FL'
      Origin = 'PS_521_FL'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PS_523_FN: TFMTBCDField
      FieldName = 'PS_523_FN'
      Origin = 'PS_523_FN'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PS_512_FC: TFMTBCDField
      FieldName = 'PS_512_FC'
      Origin = 'PS_512_FC'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PS_513_FD: TFMTBCDField
      FieldName = 'PS_513_FD'
      Origin = 'PS_513_FD'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PS_517_FH: TFMTBCDField
      FieldName = 'PS_517_FH'
      Origin = 'PS_517_FH'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PS_518_FI: TFMTBCDField
      FieldName = 'PS_518_FI'
      Origin = 'PS_518_FI'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PS_520_FK: TFMTBCDField
      FieldName = 'PS_520_FK'
      Origin = 'PS_520_FK'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PS_514_FE: TFMTBCDField
      FieldName = 'PS_514_FE'
      Origin = 'PS_514_FE'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PS_346_HH: TFMTBCDField
      FieldName = 'PS_346_HH'
      Origin = 'PS_346_HH'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PS_347_HJ: TFMTBCDField
      FieldName = 'PS_347_HJ'
      Origin = 'PS_347_HJ'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PS_348_HK: TFMTBCDField
      FieldName = 'PS_348_HK'
      Origin = 'PS_348_HK'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PS_571_NZ: TFMTBCDField
      FieldName = 'PS_571_NZ'
      Origin = 'PS_571_NZ'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PS_575_EQ: TFMTBCDField
      FieldName = 'PS_575_EQ'
      Origin = 'PS_575_EQ'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PS_574_2Y: TFMTBCDField
      FieldName = 'PS_574_2Y'
      Origin = 'PS_574_2Y'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PS_572_4U: TFMTBCDField
      FieldName = 'PS_572_4U'
      Origin = 'PS_572_4U'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PS_577_G3: TFMTBCDField
      FieldName = 'PS_577_G3'
      Origin = 'PS_577_G3'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PS_133_UJ: TFMTBCDField
      FieldName = 'PS_133_UJ'
      Origin = 'PS_133_UJ'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PS_134_UK: TFMTBCDField
      FieldName = 'PS_134_UK'
      Origin = 'PS_134_UK'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PS_135_UM: TFMTBCDField
      FieldName = 'PS_135_UM'
      Origin = 'PS_135_UM'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PS_136_UN: TFMTBCDField
      FieldName = 'PS_136_UN'
      Origin = 'PS_136_UN'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PS_137_UP: TFMTBCDField
      FieldName = 'PS_137_UP'
      Origin = 'PS_137_UP'
      Precision = 18
      Size = 2
    end
    object cdsOTC2USUARIO_NO: TIntegerField
      FieldName = 'USUARIO_NO'
      Origin = 'USUARIO_NO'
    end
    object cdsOTC2NUMERORECETA: TLargeintField
      FieldName = 'NUMERORECETA'
      Origin = 'NUMERORECETA'
    end
    object cdsOTC2MEZCLA_TRAN_NO: TIntegerField
      FieldName = 'MEZCLA_TRAN_NO'
      Origin = 'MEZCLA_TRAN_NO'
    end
    object cdsOTC2REFILL_REMINDED: TIntegerField
      FieldName = 'REFILL_REMINDED'
      Origin = 'REFILL_REMINDED'
    end
    object cdsOTC2AUDITED: TIntegerField
      FieldName = 'AUDITED'
      Origin = 'AUDITED'
    end
    object cdsOTC2BATCH_NUMBER: TIntegerField
      FieldName = 'BATCH_NUMBER'
      Origin = 'BATCH_NUMBER'
    end
    object cdsOTC2WC_PICKUP: TBooleanField
      FieldName = 'WC_PICKUP'
      Origin = 'WC_PICKUP'
    end
    object cdsOTC2EP_TRANSACTION_NUMBER: TIntegerField
      FieldName = 'EP_TRANSACTION_NUMBER'
      Origin = 'EP_TRANSACTION_NUMBER'
    end
    object cdsOTC2REFILL_NOTIFIED: TBooleanField
      FieldName = 'REFILL_NOTIFIED'
      Origin = 'REFILL_NOTIFIED'
    end
    object cdsOTC2PRICE_TABLE_ID: TIntegerField
      FieldName = 'PRICE_TABLE_ID'
      Origin = 'PRICE_TABLE_ID'
    end
    object cdsOTC2WF_TYPED: TWideStringField
      FieldName = 'WF_TYPED'
      Origin = 'WF_TYPED'
      FixedChar = True
      Size = 30
    end
    object cdsOTC2WF_BILLED: TWideStringField
      FieldName = 'WF_BILLED'
      Origin = 'WF_BILLED'
      FixedChar = True
      Size = 30
    end
    object cdsOTC2WF_PRINTED: TWideStringField
      FieldName = 'WF_PRINTED'
      Origin = 'WF_PRINTED'
      FixedChar = True
      Size = 30
    end
    object cdsOTC2WF_CHECKED: TWideStringField
      FieldName = 'WF_CHECKED'
      Origin = 'WF_CHECKED'
      FixedChar = True
      Size = 30
    end
    object cdsOTC2WF_DELIVERED: TWideStringField
      FieldName = 'WF_DELIVERED'
      Origin = 'WF_DELIVERED'
      FixedChar = True
      Size = 30
    end
    object cdsOTC2WF_FILLED: TWideStringField
      FieldName = 'WF_FILLED'
      Origin = 'WF_FILLED'
      FixedChar = True
      Size = 30
    end
    object cdsOTC2CLAIM_STATUS: TIntegerField
      FieldName = 'CLAIM_STATUS'
      Origin = 'CLAIM_STATUS'
    end
    object cdsOTC2FACILITY_ID: TIntegerField
      FieldName = 'FACILITY_ID'
      Origin = 'FACILITY_ID'
    end
    object cdsOTC2ADHERENCE: TBooleanField
      FieldName = 'ADHERENCE'
      Origin = 'ADHERENCE'
    end
    object cdsOTC2UNIT_PRICE: TFMTBCDField
      FieldName = 'UNIT_PRICE'
      Origin = 'UNIT_PRICE'
      Precision = 18
      Size = 2
    end
    object cdsOTC2MED_CHART: TBooleanField
      FieldName = 'MED_CHART'
      Origin = 'MED_CHART'
    end
    object cdsOTC2PRINT_Q: TWideStringField
      FieldName = 'PRINT_Q'
      Origin = 'PRINT_Q'
      FixedChar = True
      Size = 1
    end
    object cdsOTC2BILL_LATTER: TBooleanField
      FieldName = 'BILL_LATTER'
      Origin = 'BILL_LATTER'
    end
    object cdsOTC2WFSTORAGE: TWideStringField
      FieldName = 'WFSTORAGE'
      Origin = 'WFSTORAGE'
      FixedChar = True
      Size = 30
    end
    object cdsOTC2WF_STORAGE: TWideStringField
      FieldName = 'WF_STORAGE'
      Origin = 'WF_STORAGE'
      FixedChar = True
      Size = 30
    end
    object cdsOTC2WF_CASHIER: TWideStringField
      FieldName = 'WF_CASHIER'
      Origin = 'WF_CASHIER'
      FixedChar = True
      Size = 30
    end
    object cdsOTC2WF_SIGNATURE: TWideStringField
      FieldName = 'WF_SIGNATURE'
      Origin = 'WF_SIGNATURE'
      FixedChar = True
      Size = 30
    end
    object cdsOTC2ALCHEMY_PRODUCTID: TIntegerField
      FieldName = 'ALCHEMY_PRODUCTID'
      Origin = 'ALCHEMY_PRODUCTID'
    end
    object cdsOTC2MARKETEDPRODUCTID: TIntegerField
      FieldName = 'MARKETEDPRODUCTID'
      Origin = 'MARKETEDPRODUCTID'
    end
    object cdsOTC2PA: TBooleanField
      FieldName = 'PA'
      Origin = 'PA'
    end
    object cdsOTC2WF_REVERSE: TBooleanField
      FieldName = 'WF_REVERSE'
      Origin = 'WF_REVERSE'
    end
    object cdsOTC2PDN_SENT: TBooleanField
      FieldName = 'PDN_SENT'
      Origin = 'PDN_SENT'
    end
    object cdsOTC2REFILL_REQ_TRANSNO: TIntegerField
      FieldName = 'REFILL_REQ_TRANSNO'
      Origin = 'REFILL_REQ_TRANSNO'
    end
    object cdsOTC2BATCH_REFILLREQ_DATE: TDateField
      FieldName = 'BATCH_REFILLREQ_DATE'
      Origin = 'BATCH_REFILLREQ_DATE'
    end
    object cdsOTC2PRIORAUTHORIZATION: TStringField
      FieldName = 'PRIORAUTHORIZATION'
      Origin = 'PRIORAUTHORIZATION'
      Size = 12
    end
    object cdsOTC2BASISOFCOST: TStringField
      FieldName = 'BASISOFCOST'
      Origin = 'BASISOFCOST'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2CLINICIDNUMBER: TIntegerField
      FieldName = 'CLINICIDNUMBER'
      Origin = 'CLINICIDNUMBER'
    end
    object cdsOTC2DIAGNOSISCODE: TWideStringField
      FieldName = 'DIAGNOSISCODE'
      Origin = 'DIAGNOSISCODE'
      FixedChar = True
      Size = 6
    end
    object cdsOTC2DURCONFLICTCODE: TWideStringField
      FieldName = 'DURCONFLICTCODE'
      Origin = 'DURCONFLICTCODE'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2DURINTERVENTIONCODE: TWideStringField
      FieldName = 'DURINTERVENTIONCODE'
      Origin = 'DURINTERVENTIONCODE'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2DUROUTCOMECODE: TWideStringField
      FieldName = 'DUROUTCOMECODE'
      Origin = 'DUROUTCOMECODE'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2LEVELOFSERVICE: TIntegerField
      FieldName = 'LEVELOFSERVICE'
      Origin = 'LEVELOFSERVICE'
    end
    object cdsOTC2PRIMARYPRESCRIBER: TWideStringField
      FieldName = 'PRIMARYPRESCRIBER'
      Origin = 'PRIMARYPRESCRIBER'
      FixedChar = True
      Size = 10
    end
    object cdsOTC2RXDENIALCLARIF: TWideStringField
      FieldName = 'RXDENIALCLARIF'
      Origin = 'RXDENIALCLARIF'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2RXDENIALOVERRIDE: TIntegerField
      FieldName = 'RXDENIALOVERRIDE'
      Origin = 'RXDENIALOVERRIDE'
    end
    object cdsOTC2DISPENSINGFEE: TFMTBCDField
      FieldName = 'DISPENSINGFEE'
      Origin = 'DISPENSINGFEE'
      Precision = 18
      Size = 2
    end
    object cdsOTC2GROSSAMOUNTDUE: TFMTBCDField
      FieldName = 'GROSSAMOUNTDUE'
      Origin = 'GROSSAMOUNTDUE'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PATIENTPAIDAMOUNT: TFMTBCDField
      FieldName = 'PATIENTPAIDAMOUNT'
      Origin = 'PATIENTPAIDAMOUNT'
      Precision = 18
      Size = 2
    end
    object cdsOTC2SALESTAX: TFMTBCDField
      FieldName = 'SALESTAX'
      Origin = 'SALESTAX'
      Precision = 18
      Size = 2
    end
    object cdsOTC2OTAMCLDSUBCOUNTQUAL: TWideStringField
      FieldName = 'OTAMCLDSUBCOUNTQUAL'
      Origin = 'OTAMCLDSUBCOUNTQUAL'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2PRODUCTSERVIDQUAL: TWideStringField
      FieldName = 'PRODUCTSERVIDQUAL'
      Origin = 'PRODUCTSERVIDQUAL'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2PROVIDERID: TWideStringField
      FieldName = 'PROVIDERID'
      Origin = 'PROVIDERID'
      FixedChar = True
      Size = 15
    end
    object cdsOTC2UNIT_DOSE_INDICATOR: TWideStringField
      FieldName = 'UNIT_DOSE_INDICATOR'
      Origin = 'UNIT_DOSE_INDICATOR'
      FixedChar = True
      Size = 1
    end
    object cdsOTC2UNIT_OF_MEASURE: TWideStringField
      FieldName = 'UNIT_OF_MEASURE'
      Origin = 'UNIT_OF_MEASURE'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2SUB_CLARIF_CODE: TWideStringField
      FieldName = 'SUB_CLARIF_CODE'
      Origin = 'SUB_CLARIF_CODE'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2OTHERCOVERAGECODE: TWideStringField
      FieldName = 'OTHERCOVERAGECODE'
      Origin = 'OTHERCOVERAGECODE'
      FixedChar = True
      Size = 1
    end
    object cdsOTC2SERVICEPROVIDQUALIFIER: TWideStringField
      FieldName = 'SERVICEPROVIDQUALIFIER'
      Origin = 'SERVICEPROVIDQUALIFIER'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2OP_AMOUNTPAIDCOUNT: TIntegerField
      FieldName = 'OP_AMOUNTPAIDCOUNT'
      Origin = 'OP_AMOUNTPAIDCOUNT'
    end
    object cdsOTC2OP_REJECTCOUNT: TIntegerField
      FieldName = 'OP_REJECTCOUNT'
      Origin = 'OP_REJECTCOUNT'
    end
    object cdsOTC2COB_OTHERPAYMENTCOUNT: TIntegerField
      FieldName = 'COB_OTHERPAYMENTCOUNT'
      Origin = 'COB_OTHERPAYMENTCOUNT'
    end
    object cdsOTC2COMPDOSAGE_FORM_DESC_CODE: TWideStringField
      FieldName = 'COMPDOSAGE_FORM_DESC_CODE'
      Origin = 'COMPDOSAGE_FORM_DESC_CODE'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2COMPDISP_UNIT_FORM_INDI: TWideStringField
      FieldName = 'COMPDISP_UNIT_FORM_INDI'
      Origin = 'COMPDISP_UNIT_FORM_INDI'
      FixedChar = True
      Size = 1
    end
    object cdsOTC2COMPROUTE_OF_ADMINISTRATION: TWideStringField
      FieldName = 'COMPROUTE_OF_ADMINISTRATION'
      Origin = 'COMPROUTE_OF_ADMINISTRATION'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2COMPING_COMP_COUNT: TIntegerField
      FieldName = 'COMPING_COMP_COUNT'
      Origin = 'COMPING_COMP_COUNT'
    end
    object cdsOTC2DISPENSING_STATUS: TWideStringField
      FieldName = 'DISPENSING_STATUS'
      Origin = 'DISPENSING_STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsOTC2QTY_INTENDED_DISP: TIntegerField
      FieldName = 'QTY_INTENDED_DISP'
      Origin = 'QTY_INTENDED_DISP'
    end
    object cdsOTC2DAYS_SUPPLY_INTEND_DISP: TIntegerField
      FieldName = 'DAYS_SUPPLY_INTEND_DISP'
      Origin = 'DAYS_SUPPLY_INTEND_DISP'
    end
    object cdsOTC2FLAT_SALES_TAXSUB: TFMTBCDField
      FieldName = 'FLAT_SALES_TAXSUB'
      Origin = 'FLAT_SALES_TAXSUB'
      Precision = 18
      Size = 2
    end
    object cdsOTC2ASSOC_RX_SERVICE_DATE: TSQLTimeStampField
      FieldName = 'ASSOC_RX_SERVICE_DATE'
      Origin = 'ASSOC_RX_SERVICE_DATE'
    end
    object cdsOTC2ASSOC_RX_SERVICE_REF_NO: TWideStringField
      FieldName = 'ASSOC_RX_SERVICE_REF_NO'
      Origin = 'ASSOC_RX_SERVICE_REF_NO'
      FixedChar = True
      Size = 7
    end
    object cdsOTC2CUPONTYPE: TWideStringField
      FieldName = 'CUPONTYPE'
      Origin = 'CUPONTYPE'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2CUPON_NUMBER: TWideStringField
      FieldName = 'CUPON_NUMBER'
      Origin = 'CUPON_NUMBER'
      FixedChar = True
      Size = 15
    end
    object cdsOTC2CUPON_VALUE_AMT: TFMTBCDField
      FieldName = 'CUPON_VALUE_AMT'
      Origin = 'CUPON_VALUE_AMT'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PRIMARYCAREPROVIDQUALIFIER: TWideStringField
      FieldName = 'PRIMARYCAREPROVIDQUALIFIER'
      Origin = 'PRIMARYCAREPROVIDQUALIFIER'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2PRIMARYCAREPROVID: TWideStringField
      FieldName = 'PRIMARYCAREPROVID'
      Origin = 'PRIMARYCAREPROVID'
      FixedChar = True
      Size = 15
    end
    object cdsOTC2PRIMARYCAREPROVLASTNAME: TWideStringField
      FieldName = 'PRIMARYCAREPROVLASTNAME'
      Origin = 'PRIMARYCAREPROVLASTNAME'
      FixedChar = True
      Size = 15
    end
    object cdsOTC2IAID_464_EX: TWideStringField
      FieldName = 'IAID_464_EX'
      Origin = 'IAID_464_EX'
      FixedChar = True
      Size = 11
    end
    object cdsOTC2DRC_357_NV: TWideStringField
      FieldName = 'DRC_357_NV'
      Origin = 'DRC_357_NV'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2PAI_391_MT: TWideStringField
      FieldName = 'PAI_391_MT'
      Origin = 'PAI_391_MT'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2COMPOUND_TYPE_996_G1: TWideStringField
      FieldName = 'COMPOUND_TYPE_996_G1'
      Origin = 'COMPOUND_TYPE_996_G1'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2PST_147_U7: TWideStringField
      FieldName = 'PST_147_U7'
      Origin = 'PST_147_U7'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2SCCD_354_NX: TSmallintField
      FieldName = 'SCCD_354_NX'
      Origin = 'SCCD_354_NX'
    end
    object cdsOTC2PRAC_353_NR: TSmallintField
      FieldName = 'PRAC_353_NR'
      Origin = 'PRAC_353_NR'
    end
    object cdsOTC2BSC_392_MU: TSmallintField
      FieldName = 'BSC_392_MU'
      Origin = 'BSC_392_MU'
    end
    object cdsOTC2SPECIAL_PACK_INDI_429_DT: TWideStringField
      FieldName = 'SPECIAL_PACK_INDI_429_DT'
      Origin = 'SPECIAL_PACK_INDI_429_DT'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2ROUTEOFADMIN_995_E2: TWideStringField
      FieldName = 'ROUTEOFADMIN_995_E2'
      Origin = 'ROUTEOFADMIN_995_E2'
      FixedChar = True
      Size = 11
    end
    object cdsOTC2WC_117_TR: TSmallintField
      FieldName = 'WC_117_TR'
      Origin = 'WC_117_TR'
    end
    object cdsOTC2WC_118_TS: TWideStringField
      FieldName = 'WC_118_TS'
      Origin = 'WC_118_TS'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2WC_119_TT: TWideStringField
      FieldName = 'WC_119_TT'
      Origin = 'WC_119_TT'
      FixedChar = True
      Size = 15
    end
    object cdsOTC2WC_120_TU: TWideStringField
      FieldName = 'WC_120_TU'
      Origin = 'WC_120_TU'
      FixedChar = True
    end
    object cdsOTC2WC_121_TV: TWideStringField
      FieldName = 'WC_121_TV'
      Origin = 'WC_121_TV'
      FixedChar = True
      Size = 30
    end
    object cdsOTC2WC_122_TW: TWideStringField
      FieldName = 'WC_122_TW'
      Origin = 'WC_122_TW'
      FixedChar = True
    end
    object cdsOTC2WC_123_TX: TWideStringField
      FieldName = 'WC_123_TX'
      Origin = 'WC_123_TX'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2WC_124_TY: TWideStringField
      FieldName = 'WC_124_TY'
      Origin = 'WC_124_TY'
      FixedChar = True
      Size = 15
    end
    object cdsOTC2WC_125_TZ: TWideStringField
      FieldName = 'WC_125_TZ'
      Origin = 'WC_125_TZ'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2WC_126_UA: TWideStringField
      FieldName = 'WC_126_UA'
      Origin = 'WC_126_UA'
      FixedChar = True
      Size = 19
    end
    object cdsOTC2PRIMARYCAREPROVLOCATIONCODE: TWideStringField
      FieldName = 'PRIMARYCAREPROVLOCATIONCODE'
      Origin = 'PRIMARYCAREPROVLOCATIONCODE'
      FixedChar = True
      Size = 3
    end
    object cdsOTC2PATIENTLOCATION: TIntegerField
      FieldName = 'PATIENTLOCATION'
      Origin = 'PATIENTLOCATION'
    end
    object cdsOTC2PRESC_SRNM: TWideStringField
      FieldName = 'PRESC_SRNM'
      Origin = 'PRESC_SRNM'
      FixedChar = True
      Size = 7
    end
    object cdsOTC2PS_558_AW: TFMTBCDField
      FieldName = 'PS_558_AW'
      Origin = 'PS_558_AW'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PS_559_AX: TFMTBCDField
      FieldName = 'PS_559_AX'
      Origin = 'PS_559_AX'
      Precision = 18
      Size = 2
    end
    object cdsOTC2REVENUE_CODE: TWideStringField
      FieldName = 'REVENUE_CODE'
      Origin = 'REVENUE_CODE'
      FixedChar = True
      Size = 4
    end
    object cdsOTC2DAW: TSmallintField
      FieldName = 'DAW'
      Origin = 'DAW'
    end
    object cdsOTC2BATCH_NUMBER_BILLING: TLargeintField
      FieldName = 'BATCH_NUMBER_BILLING'
      Origin = 'BATCH_NUMBER_BILLING'
    end
    object cdsOTC2TERMINADA: TBooleanField
      FieldName = 'TERMINADA'
      Origin = 'TERMINADA'
    end
    object cdsOTC2MEDICAID_PAID_AMOUNT: TFMTBCDField
      FieldName = 'MEDICAID_PAID_AMOUNT'
      Origin = 'MEDICAID_PAID_AMOUNT'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PMC_459_ER: TWideStringField
      FieldName = 'PMC_459_ER'
      Origin = 'PMC_459_ER'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2PMCC_458_SE: TIntegerField
      FieldName = 'PMCC_458_SE'
      Origin = 'PMCC_458_SE'
    end
    object cdsOTC2SPIDN_454_EK: TWideStringField
      FieldName = 'SPIDN_454_EK'
      Origin = 'SPIDN_454_EK'
      FixedChar = True
      Size = 12
    end
    object cdsOTC2IATID_463_EW: TWideStringField
      FieldName = 'IATID_463_EW'
      Origin = 'IATID_463_EW'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2QTY: TFMTBCDField
      FieldName = 'QTY'
      Origin = 'QTY'
      Precision = 18
      Size = 2
    end
    object cdsOTC2CONTROLADO: TWideStringField
      FieldName = 'CONTROLADO'
      Origin = 'CONTROLADO'
      FixedChar = True
      Size = 4
    end
    object cdsOTC2DAYS_SUPLY: TIntegerField
      FieldName = 'DAYS_SUPLY'
      Origin = 'DAYS_SUPLY'
    end
    object cdsOTC2CODIGOREFILLNUEVO: TSmallintField
      FieldName = 'CODIGOREFILLNUEVO'
      Origin = 'CODIGOREFILLNUEVO'
    end
    object cdsOTC2RXNUMBERSRNQ: TWideStringField
      FieldName = 'RXNUMBERSRNQ'
      Origin = 'RXNUMBERSRNQ'
      FixedChar = True
      Size = 1
    end
    object cdsOTC2TRANSACTION_CODE: TWideStringField
      FieldName = 'TRANSACTION_CODE'
      Origin = 'TRANSACTION_CODE'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2MEDICAMENTOORIGINAL: TWideStringField
      FieldName = 'MEDICAMENTOORIGINAL'
      Origin = 'MEDICAMENTOORIGINAL'
      FixedChar = True
      Size = 30
    end
    object cdsOTC2ROBOT: TIntegerField
      FieldName = 'ROBOT'
      Origin = 'ROBOT'
    end
    object cdsOTC2LABEL_NAME: TWideStringField
      FieldName = 'LABEL_NAME'
      Origin = 'LABEL_NAME'
      FixedChar = True
    end
    object cdsOTC2FECHAEXPIRACION: TDateField
      FieldName = 'FECHAEXPIRACION'
      Origin = 'FECHAEXPIRACION'
    end
    object cdsOTC2IMPRIMIR: TBooleanField
      FieldName = 'IMPRIMIR'
      Origin = 'IMPRIMIR'
    end
    object cdsOTC2INSTANCIA: TIntegerField
      FieldName = 'INSTANCIA'
      Origin = 'INSTANCIA'
    end
    object cdsOTC2ORG_PROS_PROD_SERVID: TStringField
      FieldName = 'ORG_PROS_PROD_SERVID'
      Origin = 'ORG_PROS_PROD_SERVID'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2ORG_PRESC_QTY: TIntegerField
      FieldName = 'ORG_PRESC_QTY'
      Origin = 'ORG_PRESC_QTY'
    end
    object cdsOTC2ORG_PRES_PROD_SIDQ: TStringField
      FieldName = 'ORG_PRES_PROD_SIDQ'
      Origin = 'ORG_PRES_PROD_SIDQ'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2PRIOR_AUTH_TYPE_CODE: TStringField
      FieldName = 'PRIOR_AUTH_TYPE_CODE'
      Origin = 'PRIOR_AUTH_TYPE_CODE'
      FixedChar = True
      Size = 1
    end
    object cdsOTC2INCENTIVE_AMOUNT_SUB: TFMTBCDField
      FieldName = 'INCENTIVE_AMOUNT_SUB'
      Origin = 'INCENTIVE_AMOUNT_SUB'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PROF_SERV_FEE_SUB: TFMTBCDField
      FieldName = 'PROF_SERV_FEE_SUB'
      Origin = 'PROF_SERV_FEE_SUB'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PERCENTAGE_SALES_TAX_SUB: TFMTBCDField
      FieldName = 'PERCENTAGE_SALES_TAX_SUB'
      Origin = 'PERCENTAGE_SALES_TAX_SUB'
      Precision = 18
      Size = 2
    end
    object cdsOTC2PERCENTAGE_SALES_TAX_RATE: TFMTBCDField
      FieldName = 'PERCENTAGE_SALES_TAX_RATE'
      Origin = 'PERCENTAGE_SALES_TAX_RATE'
      Precision = 18
      Size = 2
    end
    object cdsOTC2OTHERAMOUNTCLAIMEDSUB: TFMTBCDField
      FieldName = 'OTHERAMOUNTCLAIMEDSUB'
      Origin = 'OTHERAMOUNTCLAIMEDSUB'
      Precision = 18
      Size = 2
    end
    object cdsOTC2QTY_TEMP: TFMTBCDField
      FieldName = 'QTY_TEMP'
      Origin = 'QTY_TEMP'
      Precision = 18
      Size = 2
    end
    object cdsOTC2OTHERAMOUNTCLAIMEDSUBCOUNT: TIntegerField
      FieldName = 'OTHERAMOUNTCLAIMEDSUBCOUNT'
      Origin = 'OTHERAMOUNTCLAIMEDSUBCOUNT'
    end
    object cdsOTC2PER_SALESTAX_BASIS_SUB: TStringField
      FieldName = 'PER_SALESTAX_BASIS_SUB'
      Origin = 'PER_SALESTAX_BASIS_SUB'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2WC_DATE_OF_INJURY: TSQLTimeStampField
      FieldName = 'WC_DATE_OF_INJURY'
      Origin = 'WC_DATE_OF_INJURY'
    end
    object cdsOTC2WC_EMPLOYER_NAME: TStringField
      FieldName = 'WC_EMPLOYER_NAME'
      Origin = 'WC_EMPLOYER_NAME'
      FixedChar = True
      Size = 3
    end
    object cdsOTC2WC_EMPLOYER_STREET: TStringField
      FieldName = 'WC_EMPLOYER_STREET'
      Origin = 'WC_EMPLOYER_STREET'
      FixedChar = True
      Size = 30
    end
    object cdsOTC2WC_EMPLOYER_CITY: TStringField
      FieldName = 'WC_EMPLOYER_CITY'
      Origin = 'WC_EMPLOYER_CITY'
      FixedChar = True
      Size = 15
    end
    object cdsOTC2WC_EMPLOYER_STATE: TStringField
      FieldName = 'WC_EMPLOYER_STATE'
      Origin = 'WC_EMPLOYER_STATE'
      FixedChar = True
      Size = 2
    end
    object cdsOTC2WC_EMPLOYER_CONTACT: TStringField
      FieldName = 'WC_EMPLOYER_CONTACT'
      Origin = 'WC_EMPLOYER_CONTACT'
      FixedChar = True
      Size = 30
    end
    object cdsOTC2WC_EMLPOYER_ZIP: TStringField
      FieldName = 'WC_EMLPOYER_ZIP'
      Origin = 'WC_EMLPOYER_ZIP'
      FixedChar = True
      Size = 15
    end
    object cdsOTC2WC_CARRIER_ID: TStringField
      FieldName = 'WC_CARRIER_ID'
      Origin = 'WC_CARRIER_ID'
      FixedChar = True
      Size = 10
    end
    object cdsOTC2WC_CLAIMREF_ID: TStringField
      FieldName = 'WC_CLAIMREF_ID'
      Origin = 'WC_CLAIMREF_ID'
      FixedChar = True
      Size = 30
    end
    object cdsOTC2WC_EMPLOYER_PHONE: TStringField
      FieldName = 'WC_EMPLOYER_PHONE'
      Origin = 'WC_EMPLOYER_PHONE'
      FixedChar = True
      Size = 13
    end
    object cdsOTC2PLANESMEDICOSNO: TIntegerField
      FieldName = 'PLANESMEDICOSNO'
      Origin = 'PLANESMEDICOSNO'
    end
    object cdsOTC2RX_SHOW_NOREFDISP_FLOAT: TBooleanField
      FieldName = 'RX_SHOW_NOREFDISP_FLOAT'
      Origin = 'RX_SHOW_NOREFDISP_FLOAT'
    end
    object cdsOTC2APPRISS_SENT: TBooleanField
      FieldName = 'APPRISS_SENT'
      Origin = 'APPRISS_SENT'
    end
    object cdsOTC2MessageID: TWideStringField
      FieldName = 'MessageID'
      Origin = 'MessageID'
      FixedChar = True
      Size = 40
    end
    object cdsOTC2RECORD_LOCKED: TBooleanField
      FieldName = 'RECORD_LOCKED'
      Origin = 'RECORD_LOCKED'
    end
  end
  object dsOTC2: TDataSource
    DataSet = cdsOTC2
    Left = 232
    Top = 313
  end
  object dspOTC2: TDataSetProvider
    DataSet = sqlOTC2FD
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 136
    Top = 313
  end
  object SPWILLCALL_DELETE: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 10
        Name = '@RETURN_VALUE'
        ParamType = ptResult
        Size = 10
      end
      item
        DataType = ftInteger
        Precision = 10
        Name = '@REGISTER'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 10
        Name = '@TNUMBER'
        ParamType = ptInput
      end>
    StoredProcName = 'WILLCALL_DELETE'
    Left = 440
    Top = 304
  end
  object dspWillCallHistory: TDataSetProvider
    DataSet = QWillCallHistoryFD
    Options = [poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 136
    Top = 104
  end
  object cdsWillCallHistory: TClientDataSet
    Aggregates = <>
    PacketRecords = 100
    Params = <>
    ProviderName = 'dspWillCallHistory'
    AfterOpen = cdsWillCallHistoryAfterOpen
    Left = 312
    Top = 104
    object cdsWillCallHistoryBAG_NUMBER: TWideStringField
      FieldName = 'BAG_NUMBER'
      Origin = 'BAG_NUMBER'
      FixedChar = True
      Size = 10
    end
    object cdsWillCallHistoryDRUG_DESCRIPTION: TWideStringField
      FieldName = 'DRUG_DESCRIPTION'
      Origin = 'DRUG_DESCRIPTION'
      FixedChar = True
      Size = 35
    end
    object cdsWillCallHistoryCUSTOMER_NUMBER: TIntegerField
      FieldName = 'CUSTOMER_NUMBER'
      Origin = 'CUSTOMER_NUMBER'
    end
    object cdsWillCallHistorySTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object cdsWillCallHistoryRX_DATE: TDateField
      FieldName = 'RX_DATE'
      Origin = 'RX_DATE'
    end
    object cdsWillCallHistoryNDC: TWideStringField
      FieldName = 'NDC'
      Origin = 'NDC'
      FixedChar = True
      Size = 11
    end
    object cdsWillCallHistoryPRUDUCT_ID: TIntegerField
      FieldName = 'PRUDUCT_ID'
      Origin = 'PRUDUCT_ID'
    end
    object cdsWillCallHistoryTRANSACTION_NUMBER: TIntegerField
      FieldName = 'TRANSACTION_NUMBER'
      Origin = 'TRANSACTION_NUMBER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsWillCallHistoryRX_NUMBER: TLargeintField
      FieldName = 'RX_NUMBER'
      Origin = 'RX_NUMBER'
    end
    object cdsWillCallHistoryCOPAY: TFloatField
      FieldName = 'COPAY'
      Origin = 'COPAY'
    end
    object cdsWillCallHistoryCOST: TFloatField
      FieldName = 'COST'
      Origin = 'COST'
    end
    object cdsWillCallHistoryPRICE: TFloatField
      FieldName = 'PRICE'
      Origin = 'PRICE'
    end
    object cdsWillCallHistoryATTENDED_BY: TWideStringField
      FieldName = 'ATTENDED_BY'
      Origin = 'ATTENDED_BY'
      FixedChar = True
      Size = 5
    end
    object cdsWillCallHistoryNOTE: TWideStringField
      FieldName = 'NOTE'
      Origin = 'NOTE'
      FixedChar = True
      Size = 50
    end
    object cdsWillCallHistoryNombreCompleto: TStringField
      FieldKind = fkCalculated
      FieldName = 'NombreCompleto'
      Size = 48
      Calculated = True
    end
    object cdsWillCallHistoryStatusDefine: TStringField
      FieldKind = fkCalculated
      FieldName = 'StatusDefine'
      Calculated = True
    end
    object cdsWillCallHistoryWILLCALL_DATE_ENTERED: TDateField
      FieldName = 'WILLCALL_DATE_ENTERED'
      Origin = 'WILLCALL_DATE_ENTERED'
    end
    object cdsWillCallHistoryUSER_NO: TIntegerField
      FieldName = 'USER_NO'
      Origin = 'USER_NO'
    end
    object cdsWillCallHistoryCASH_PLAN: TSmallintField
      FieldName = 'CASH_PLAN'
      Origin = 'CASH_PLAN'
    end
    object cdsWillCallHistoryQUANTITY: TFloatField
      FieldName = 'QUANTITY'
      Origin = 'QUANTITY'
    end
    object cdsWillCallHistoryBATCH_NUMBER: TIntegerField
      FieldName = 'BATCH_NUMBER'
      Origin = 'BATCH_NUMBER'
    end
    object cdsWillCallHistoryPOS_PICKUP: TBooleanField
      FieldName = 'POS_PICKUP'
      Origin = 'POS_PICKUP'
    end
  end
  object DSWillCallHistory: TDataSource
    DataSet = cdsWillCallHistory
    Left = 224
    Top = 104
  end
  object dspWillCallStatus: TDataSetProvider
    DataSet = sqldsWillCallStatusFD
    Options = [poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 144
    Top = 240
  end
  object cdsWillCall_Status: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspWillCallStatus'
    AfterInsert = cdsWillCall_StatusAfterInsert
    AfterPost = cdsWillCall_StatusAfterDelete
    AfterDelete = cdsWillCall_StatusAfterDelete
    AfterScroll = cdsWillCall_StatusAfterScroll
    OnCalcFields = cdsWillCall_StatusCalcFields
    Left = 328
    Top = 248
    object cdsWillCall_StatusID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsWillCall_StatusCUSTOMER_NUMBER: TIntegerField
      FieldName = 'CUSTOMER_NUMBER'
      Origin = 'CUSTOMER_NUMBER'
    end
    object cdsWillCall_StatusREMINDER1: TBooleanField
      FieldName = 'REMINDER1'
      Origin = 'REMINDER1'
    end
    object cdsWillCall_StatusREMINDER2: TBooleanField
      FieldName = 'REMINDER2'
      Origin = 'REMINDER2'
    end
    object cdsWillCall_StatusREMINDER3: TBooleanField
      FieldName = 'REMINDER3'
      Origin = 'REMINDER3'
    end
    object cdsWillCall_StatusSTATUS: TSmallintField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object cdsWillCall_StatusDATE_CREATED: TDateField
      FieldName = 'DATE_CREATED'
      Origin = 'DATE_CREATED'
    end
    object cdsWillCall_StatusBAG_NUMBER: TIntegerField
      FieldName = 'BAG_NUMBER'
      Origin = 'BAG_NUMBER'
    end
    object cdsWillCall_StatusStatusDefine: TStringField
      FieldKind = fkCalculated
      FieldName = 'StatusDefine'
      Calculated = True
    end
    object cdsWillCall_StatusNOTIFICATION_MODE1: TSmallintField
      FieldName = 'NOTIFICATION_MODE1'
      Origin = 'NOTIFICATION_MODE1'
    end
    object cdsWillCall_StatusNOTIFICATION_MODE2: TSmallintField
      FieldName = 'NOTIFICATION_MODE2'
      Origin = 'NOTIFICATION_MODE2'
    end
    object cdsWillCall_StatusNOTIFICATION_MODE1_EMAIL: TWideStringField
      FieldName = 'NOTIFICATION_MODE1_EMAIL'
      Origin = 'NOTIFICATION_MODE1_EMAIL'
      FixedChar = True
      Size = 80
    end
    object cdsWillCall_StatusNOTIFICATION_MODE2_TELEPHONE: TWideStringField
      FieldName = 'NOTIFICATION_MODE2_TELEPHONE'
      Origin = 'NOTIFICATION_MODE2_TELEPHONE'
      FixedChar = True
      Size = 13
    end
    object cdsWillCall_StatusRTS: TBooleanField
      FieldName = 'RTS'
      Origin = 'RTS'
    end
    object cdsWillCall_StatusREMINDER1_DATE: TSQLTimeStampField
      FieldName = 'REMINDER1_DATE'
      Origin = 'REMINDER1_DATE'
    end
    object cdsWillCall_StatusREMINDER2_DATE: TSQLTimeStampField
      FieldName = 'REMINDER2_DATE'
      Origin = 'REMINDER2_DATE'
    end
    object cdsWillCall_StatusREMINDER3_DATE: TSQLTimeStampField
      FieldName = 'REMINDER3_DATE'
      Origin = 'REMINDER3_DATE'
    end
    object cdsWillCall_StatusR1_NOTIFICATION_MODE: TWideStringField
      FieldName = 'R1_NOTIFICATION_MODE'
      Origin = 'R1_NOTIFICATION_MODE'
      FixedChar = True
      Size = 10
    end
    object cdsWillCall_StatusR2_NOTIFICATION_MODE: TWideStringField
      FieldName = 'R2_NOTIFICATION_MODE'
      Origin = 'R2_NOTIFICATION_MODE'
      FixedChar = True
      Size = 10
    end
    object cdsWillCall_StatusR3_NOTIFICATION_MODE: TWideStringField
      FieldName = 'R3_NOTIFICATION_MODE'
      Origin = 'R3_NOTIFICATION_MODE'
      FixedChar = True
      Size = 10
    end
    object cdsWillCall_StatusNOTE: TWideStringField
      FieldName = 'NOTE'
      Origin = 'NOTE'
      FixedChar = True
      Size = 50
    end
  end
  object dsWillCall_Stauts: TDataSource
    DataSet = cdsWillCall_Status
    Left = 224
    Top = 248
  end
  object dspWillCall_Log: TDataSetProvider
    DataSet = qWillCall_LogFD
    Options = [poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 144
    Top = 168
  end
  object cdsWillCall_Log: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspWillCall_Log'
    AfterPost = cdsWillCall_LogAfterDelete
    AfterDelete = cdsWillCall_LogAfterDelete
    Left = 320
    Top = 176
    object cdsWillCall_LogTRANSACTION_NUMBER: TIntegerField
      FieldName = 'TRANSACTION_NUMBER'
      KeyFields = 'TRANSACTION_NUMBER'
      Origin = 'TRANSACTION_NUMBER'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsWillCall_LogUSER_NO: TIntegerField
      FieldName = 'USER_NO'
      Origin = 'USER_NO'
    end
    object cdsWillCall_LogLOG_DATE: TSQLTimeStampField
      FieldName = 'LOG_DATE'
      Origin = 'LOG_DATE'
    end
    object cdsWillCall_LogDESCRIPTION: TWideStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      FixedChar = True
      Size = 100
    end
    object cdsWillCall_LogMODULE: TWideStringField
      FieldName = 'MODULE'
      Origin = 'MODULE'
      FixedChar = True
    end
  end
  object DSWillCall_log: TDataSource
    DataSet = cdsWillCall_Log
    Left = 232
    Top = 176
  end
  object dspWillCall2: TDataSetProvider
    DataSet = qWillCall2FD
    Options = [poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 584
    Top = 544
  end
  object cdsWillCall2: TClientDataSet
    Aggregates = <>
    PacketRecords = 100
    Params = <>
    ProviderName = 'dspWillCall2'
    AfterInsert = cdsWillCallAfterInsert
    AfterPost = cdsWillCallAfterDelete
    AfterDelete = cdsWillCallAfterDelete
    OnCalcFields = cdsWillCall2CalcFields
    Left = 744
    Top = 552
    object cdsWillCall2StatusDefine: TStringField
      FieldKind = fkCalculated
      FieldName = 'StatusDefine'
      Calculated = True
    end
    object cdsWillCall2CASH_PLAN_Define: TStringField
      FieldKind = fkCalculated
      FieldName = 'CASH_PLAN_Define'
      Size = 15
      Calculated = True
    end
    object cdsWillCall2AmountDue: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AmountDue'
      DisplayFormat = '$#.00'
      Calculated = True
    end
    object cdsWillCall2BAG_NUMBER: TWideStringField
      FieldName = 'BAG_NUMBER'
      FixedChar = True
      Size = 10
    end
    object cdsWillCall2DRUG_DESCRIPTION: TWideStringField
      FieldName = 'DRUG_DESCRIPTION'
      FixedChar = True
      Size = 35
    end
    object cdsWillCall2CUSTOMER_NUMBER: TIntegerField
      FieldName = 'CUSTOMER_NUMBER'
    end
    object cdsWillCall2STATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object cdsWillCall2RX_DATE: TDateField
      FieldName = 'RX_DATE'
    end
    object cdsWillCall2NDC: TWideStringField
      FieldName = 'NDC'
      FixedChar = True
      Size = 11
    end
    object cdsWillCall2PRUDUCT_ID: TIntegerField
      FieldName = 'PRUDUCT_ID'
    end
    object cdsWillCall2TRANSACTION_NUMBER: TIntegerField
      FieldName = 'TRANSACTION_NUMBER'
      Required = True
    end
    object cdsWillCall2RX_NUMBER: TLargeintField
      FieldName = 'RX_NUMBER'
    end
    object cdsWillCall2STATE: TWideStringField
      FieldName = 'STATE'
      FixedChar = True
      Size = 4
    end
    object cdsWillCall2COPAY: TFloatField
      FieldName = 'COPAY'
    end
    object cdsWillCall2COST: TFloatField
      FieldName = 'COST'
    end
    object cdsWillCall2PRICE: TFloatField
      FieldName = 'PRICE'
    end
    object cdsWillCall2ATTENDED_BY: TWideStringField
      FieldName = 'ATTENDED_BY'
      FixedChar = True
      Size = 10
    end
    object cdsWillCall2NOTE: TWideStringField
      FieldName = 'NOTE'
      FixedChar = True
      Size = 100
    end
    object cdsWillCall2WILLCALL_DATE_ENTERED: TDateField
      FieldName = 'WILLCALL_DATE_ENTERED'
    end
    object cdsWillCall2USER_NO: TIntegerField
      FieldName = 'USER_NO'
    end
    object cdsWillCall2CASH_PLAN: TSmallintField
      FieldName = 'CASH_PLAN'
    end
    object cdsWillCall2QUANTITY: TFloatField
      FieldName = 'QUANTITY'
    end
    object cdsWillCall2REVERSAL: TBooleanField
      FieldName = 'REVERSAL'
    end
  end
  object dsWillCall2: TDataSource
    DataSet = cdsWillCall2
    Left = 664
    Top = 544
  end
  object dspWillCallStatus2: TDataSetProvider
    DataSet = sqldsWillCallStatus2FD
    Options = [poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 144
    Top = 416
  end
  object cdsWillCall_Status2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspWillCallStatus2'
    Left = 328
    Top = 408
    object cdsWillCall_Status2ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsWillCall_Status2CUSTOMER_NUMBER: TIntegerField
      FieldName = 'CUSTOMER_NUMBER'
      Origin = 'CUSTOMER_NUMBER'
    end
    object cdsWillCall_Status2REMINDER1: TBooleanField
      FieldName = 'REMINDER1'
      Origin = 'REMINDER1'
    end
    object cdsWillCall_Status2REMINDER2: TBooleanField
      FieldName = 'REMINDER2'
      Origin = 'REMINDER2'
    end
    object cdsWillCall_Status2REMINDER3: TBooleanField
      FieldName = 'REMINDER3'
      Origin = 'REMINDER3'
    end
    object cdsWillCall_Status2STATUS: TSmallintField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object cdsWillCall_Status2DATE_CREATED: TDateField
      FieldName = 'DATE_CREATED'
      Origin = 'DATE_CREATED'
    end
    object cdsWillCall_Status2BAG_NUMBER: TIntegerField
      FieldName = 'BAG_NUMBER'
      Origin = 'BAG_NUMBER'
    end
    object cdsWillCall_Status2NOTIFICATION_MODE1: TSmallintField
      FieldName = 'NOTIFICATION_MODE1'
      Origin = 'NOTIFICATION_MODE1'
    end
    object cdsWillCall_Status2NOTIFICATION_MODE2: TSmallintField
      FieldName = 'NOTIFICATION_MODE2'
      Origin = 'NOTIFICATION_MODE2'
    end
    object cdsWillCall_Status2NOTIFICATION_MODE1_EMAIL: TWideStringField
      FieldName = 'NOTIFICATION_MODE1_EMAIL'
      Origin = 'NOTIFICATION_MODE1_EMAIL'
      FixedChar = True
      Size = 80
    end
    object cdsWillCall_Status2NOTIFICATION_MODE2_TELEPHONE: TWideStringField
      FieldName = 'NOTIFICATION_MODE2_TELEPHONE'
      Origin = 'NOTIFICATION_MODE2_TELEPHONE'
      FixedChar = True
      Size = 13
    end
    object cdsWillCall_Status2RTS: TBooleanField
      FieldName = 'RTS'
      Origin = 'RTS'
    end
    object cdsWillCall_Status2REMINDER1_DATE: TSQLTimeStampField
      FieldName = 'REMINDER1_DATE'
      Origin = 'REMINDER1_DATE'
    end
    object cdsWillCall_Status2REMINDER2_DATE: TSQLTimeStampField
      FieldName = 'REMINDER2_DATE'
      Origin = 'REMINDER2_DATE'
    end
    object cdsWillCall_Status2REMINDER3_DATE: TSQLTimeStampField
      FieldName = 'REMINDER3_DATE'
      Origin = 'REMINDER3_DATE'
    end
    object cdsWillCall_Status2R1_NOTIFICATION_MODE: TWideStringField
      FieldName = 'R1_NOTIFICATION_MODE'
      Origin = 'R1_NOTIFICATION_MODE'
      FixedChar = True
      Size = 10
    end
    object cdsWillCall_Status2R2_NOTIFICATION_MODE: TWideStringField
      FieldName = 'R2_NOTIFICATION_MODE'
      Origin = 'R2_NOTIFICATION_MODE'
      FixedChar = True
      Size = 10
    end
    object cdsWillCall_Status2R3_NOTIFICATION_MODE: TWideStringField
      FieldName = 'R3_NOTIFICATION_MODE'
      Origin = 'R3_NOTIFICATION_MODE'
      FixedChar = True
      Size = 10
    end
    object cdsWillCall_Status2ADDRESS1: TWideStringField
      FieldName = 'ADDRESS1'
      Origin = 'ADDRESS1'
      FixedChar = True
      Size = 30
    end
    object cdsWillCall_Status2ADDRESS2: TWideStringField
      FieldName = 'ADDRESS2'
      Origin = 'ADDRESS2'
      FixedChar = True
    end
    object cdsWillCall_Status2CITY: TWideStringField
      FieldName = 'CITY'
      Origin = 'CITY'
      FixedChar = True
    end
    object cdsWillCall_Status2ZIPCODE: TWideStringField
      FieldName = 'ZIPCODE'
      Origin = 'ZIPCODE'
      FixedChar = True
      Size = 15
    end
    object cdsWillCall_Status2NAME: TWideStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      FixedChar = True
      Size = 12
    end
    object cdsWillCall_Status2LASTNAME: TWideStringField
      FieldName = 'LASTNAME'
      Origin = 'LASTNAME'
      FixedChar = True
      Size = 15
    end
    object cdsWillCall_Status2MAIDENNAME: TWideStringField
      FieldName = 'MAIDENNAME'
      Origin = 'MAIDENNAME'
      FixedChar = True
      Size = 15
    end
  end
  object dsWillCall_Stauts2: TDataSource
    DataSet = cdsWillCall_Status2
    Left = 232
    Top = 416
  end
  object dspPwrd: TDataSetProvider
    DataSet = QPasswordsFD
    Options = [poFetchBlobsOnDemand, poFetchDetailsOnDemand, poPropogateChanges, poAllowCommandText]
    Left = 536
    Top = 48
  end
  object DSPasswords: TDataSource
    DataSet = CDSPasswords
    Left = 592
    Top = 48
  end
  object CDSPasswords: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPPwrd'
    Left = 672
    Top = 54
    object CDSPasswordsUSERNAME: TStringField
      FieldName = 'USERNAME'
      Origin = 'USERNAME'
      Required = True
      Size = 35
    end
    object CDSPasswordsINICIALES: TStringField
      FieldName = 'INICIALES'
      Origin = 'INICIALES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CDSPasswordsUSERNO: TIntegerField
      FieldName = 'USERNO'
      Origin = 'USERNO'
      ProviderFlags = [pfInWhere]
      Required = True
    end
    object CDSPasswordsCELULAR: TWideStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      FixedChar = True
      Size = 13
    end
    object CDSPasswordsHOME_PHONE: TWideStringField
      FieldName = 'HOME_PHONE'
      Origin = 'HOME_PHONE'
      FixedChar = True
      Size = 13
    end
    object CDSPasswordsADDRESS1: TWideStringField
      FieldName = 'ADDRESS1'
      Origin = 'ADDRESS1'
      FixedChar = True
      Size = 30
    end
    object CDSPasswordsADDRESS2: TWideStringField
      FieldName = 'ADDRESS2'
      Origin = 'ADDRESS2'
      FixedChar = True
      Size = 30
    end
    object CDSPasswordsCITY: TWideStringField
      FieldName = 'CITY'
      Origin = 'CITY'
      FixedChar = True
    end
    object CDSPasswordsZIP_CODE: TWideStringField
      FieldName = 'ZIP_CODE'
      Origin = 'ZIP_CODE'
      FixedChar = True
      Size = 15
    end
    object CDSPasswordsSTATE: TWideStringField
      FieldName = 'STATE'
      Origin = 'STATE'
      FixedChar = True
      Size = 2
    end
    object CDSPasswordsWILLCALL: TBooleanField
      FieldName = 'WILLCALL'
    end
    object CDSPasswordsWC_LOAD: TBooleanField
      FieldName = 'WC_LOAD'
    end
    object CDSPasswordsWC_RETREIVE: TBooleanField
      FieldName = 'WC_RETREIVE'
    end
    object CDSPasswordsWC_REPORTS: TBooleanField
      FieldName = 'WC_REPORTS'
    end
    object CDSPasswordsWC_SENDMESSAGE: TBooleanField
      FieldName = 'WC_SENDMESSAGE'
    end
    object CDSPasswordsWC_RTS: TBooleanField
      FieldName = 'WC_RTS'
    end
    object CDSPasswordsWC_SETUP: TBooleanField
      FieldName = 'WC_SETUP'
    end
    object CDSPasswordsCAMBIARPASSWORD: TBooleanField
      FieldName = 'CAMBIARPASSWORD'
    end
    object CDSPasswordsMAIN_RECV: TBooleanField
      FieldName = 'MAIN_RECV'
    end
  end
  object dspTagNumbers: TDataSetProvider
    DataSet = QTagNumbersFD
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 152
    Top = 488
  end
  object cdsTagNumbers: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTagNumbers'
    Left = 320
    Top = 496
    object cdsTagNumbersBAG_NUMBER: TIntegerField
      FieldName = 'BAG_NUMBER'
      Origin = 'BAG_NUMBER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTagNumbersTAG_NUMBER: TIntegerField
      FieldName = 'TAG_NUMBER'
      Origin = 'TAG_NUMBER'
    end
    object cdsTagNumbersSEARCH: TBooleanField
      FieldName = 'SEARCH'
      Origin = 'SEARCH'
    end
  end
  object dsTagNumbers: TDataSource
    Left = 240
    Top = 496
  end
  object qWillCallFD: TFDQuery
    Connection = DMMidas.FDConnection1
    SQL.Strings = (
      'Select * from WillCall')
    Left = 56
    Top = 32
  end
  object QWillCallHistoryFD: TFDQuery
    Connection = DMMidas.FDConnection1
    SQL.Strings = (
      'Select * from WillCallHistory')
    Left = 56
    Top = 104
  end
  object qWillCall_LogFD: TFDQuery
    Connection = DMMidas.FDConnection1
    SQL.Strings = (
      'Select * from WillCall_Log where transaction_number = 0')
    Left = 56
    Top = 168
  end
  object sqldsWillCallStatusFD: TFDQuery
    Connection = DMMidas.FDConnection1
    SQL.Strings = (
      'Select * from WILLCALL_STATUS')
    Left = 60
    Top = 232
  end
  object sqlOTC2FD: TFDQuery
    Connection = DMMidas.FDConnection1
    SQL.Strings = (
      'Select * from OTC where NumeroReceta =  148701')
    Left = 48
    Top = 312
  end
  object sqldsWillCallStatus2FD: TFDQuery
    Connection = DMMidas.FDConnection1
    SQL.Strings = (
      'Select * from WILLCALL_STATUS')
    Left = 64
    Top = 416
  end
  object QTagNumbersFD: TFDQuery
    Connection = DMMidas.FDConnection1
    SQL.Strings = (
      'Select * from willcall_tag_numbers')
    Left = 64
    Top = 496
  end
  object QPasswordsFD: TFDQuery
    Connection = DMMidas.FDConnection1
    SQL.Strings = (
      'Select * from passwords')
    Left = 480
    Top = 56
  end
  object qWillCall2FD: TFDQuery
    Connection = DMMidas.FDConnection1
    SQL.Strings = (
      'Select * from WillCall')
    Left = 520
    Top = 552
  end
  object QBorrarNonMatchedNDC: TFDQuery
    Connection = DMMidas.FDConnection1
    Left = 552
    Top = 448
  end
  object QInsertWCLog: TFDQuery
    Connection = DMMidas.FDConnection1
    Left = 648
    Top = 440
  end
  object WILLCALL_TOTAL_AMOUNT_DUE: TFDStoredProc
    Connection = DMMidas.FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'WILLCALL_TOTAL_AMOUNT_DUE'
    Left = 744
    Top = 448
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@BAG_NUMBER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@TAmountDue'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInputOutput
      end>
  end
  object SQLQuery1: TFDQuery
    Connection = DMMidas.FDConnection1
    Left = 720
    Top = 120
  end
  object SQLQuery2: TFDQuery
    Connection = DMMidas.FDConnection1
    Left = 720
    Top = 184
  end
  object QCreateWillCall: TFDQuery
    Connection = DMMidas.FDConnection1
    Left = 952
    Top = 128
  end
  object qEXPORTTOWILLCALLHISTORY: TFDQuery
    Connection = DMMidas.FDConnection1
    Left = 952
    Top = 208
  end
  object QEXPORTTOWILLCAL_STATUS_LHISTORY: TFDQuery
    Connection = DMMidas.FDConnection1
    Left = 944
    Top = 280
  end
  object qWillCallDelete: TFDQuery
    Connection = DMMidas.FDConnection1
    Left = 952
    Top = 352
  end
  object qWILLCALL_TOTAL_AMOUNT_DUE: TFDQuery
    Connection = DMMidas.FDConnection1
    Left = 960
    Top = 432
  end
  object WC_PICKUP_TF: TFDStoredProc
    Connection = DMMidas.FDConnection1
    StoredProcName = 'WC_PICKUP_TF'
    Left = 488
    Top = 184
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@TF'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@OTCNUMBER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@TN'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object qPacientes: TFDQuery
    Connection = DMMidas.FDConnection1
    SQL.Strings = (
      'SELECT FECHANACIMIENTO, NUMEROCLIENTE FROM PACIENTES')
    Left = 516
    Top = 648
  end
  object dspPacientes: TDataSetProvider
    DataSet = qPacientes
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 592
    Top = 648
  end
  object cdsPacientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPacientes'
    Left = 768
    Top = 648
    object cdsPacientesFECHANACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHANACIMIENTO'
      Origin = 'FECHANACIMIENTO'
    end
    object cdsPacientesNUMEROCLIENTE: TAutoIncField
      FieldName = 'NUMEROCLIENTE'
      Origin = 'NUMEROCLIENTE'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
  end
  object dsPacientes: TDataSource
    Left = 688
    Top = 648
  end
  object qForAll: TFDQuery
    Connection = DMMidas.FDConnection1
    Left = 592
    Top = 296
  end
  object qWC_PATIENTS: TFDQuery
    Connection = DMMidas.FDConnection1
    SQL.Strings = (
      
        'SELECT p.NUMEROCLIENTE, p.NOMBRE, p.APELLIDOPATERNO, p.APELLIDOM' +
        'ATERNO, '
      
        'p.CELULAR, p.DIRECCION1, p.DIRECCION2,  p.NOTIFICATION_MODE_PHON' +
        'E, '
      
        'p.NOTIFICATION_MODE_CEL, p.NOTIFICATION_MODE_SMS, p.NOTIFICATION' +
        '_MODE_EMAIL,  '
      'p.email,  p.CIUDAD, p.CODIGOPOSTAL, w.BAG_NUMBER, '
      'w.NOTIFICATION_MODE2_TELEPHONE, w.DATE_CREATED,  '
      'p.ESTADO, p.FECHANACIMIENTO, p.TELEFONO, w.STATUS, '
      'w.DATE_PICKUP_RTS, p.FAMILY_LINK   '
      
        'FROM perpetuo.dbo.PACIENTES as p INNER JOIN  yumac.dbo.WILLCALL_' +
        'STATUS as w ON p.NUMEROCLIENTE = w.CUSTOMER_NUMBER'
      '')
    Left = 56
    Top = 601
  end
  object dspWC_PATIENTS: TDataSetProvider
    DataSet = qWC_PATIENTS
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 152
    Top = 600
  end
  object dsWC_PATIENTS: TDataSource
    DataSet = cdsWC_PATIENTS
    Left = 240
    Top = 600
  end
  object cdsWC_PATIENTS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspWC_PATIENTS'
    OnCalcFields = cdsWC_PATIENTSCalcFields
    Left = 344
    Top = 600
    object cdsWC_PATIENTSNombreCompleto: TStringField
      FieldKind = fkCalculated
      FieldName = 'NombreCompleto'
      Size = 45
      Calculated = True
    end
    object cdsWC_PATIENTSFullAddress: TStringField
      FieldKind = fkCalculated
      FieldName = 'FullAddress'
      Size = 130
      Calculated = True
    end
    object cdsWC_PATIENTSNUMEROCLIENTE: TAutoIncField
      FieldName = 'NUMEROCLIENTE'
      ReadOnly = True
    end
    object cdsWC_PATIENTSNOMBRE: TStringField
      FieldName = 'NOMBRE'
      FixedChar = True
      Size = 12
    end
    object cdsWC_PATIENTSAPELLIDOPATERNO: TStringField
      FieldName = 'APELLIDOPATERNO'
      FixedChar = True
      Size = 15
    end
    object cdsWC_PATIENTSAPELLIDOMATERNO: TStringField
      FieldName = 'APELLIDOMATERNO'
      FixedChar = True
      Size = 15
    end
    object cdsWC_PATIENTSCELULAR: TStringField
      FieldName = 'CELULAR'
      FixedChar = True
      Size = 13
    end
    object cdsWC_PATIENTSDIRECCION1: TStringField
      FieldName = 'DIRECCION1'
      FixedChar = True
      Size = 30
    end
    object cdsWC_PATIENTSDIRECCION2: TWideStringField
      FieldName = 'DIRECCION2'
      FixedChar = True
      Size = 40
    end
    object cdsWC_PATIENTSCIUDAD: TStringField
      FieldName = 'CIUDAD'
      FixedChar = True
    end
    object cdsWC_PATIENTSCODIGOPOSTAL: TWideStringField
      FieldName = 'CODIGOPOSTAL'
      FixedChar = True
      Size = 15
    end
    object cdsWC_PATIENTSBAG_NUMBER: TIntegerField
      FieldName = 'BAG_NUMBER'
    end
    object cdsWC_PATIENTSNOTIFICATION_MODE2_TELEPHONE: TWideStringField
      FieldName = 'NOTIFICATION_MODE2_TELEPHONE'
      FixedChar = True
      Size = 13
    end
    object cdsWC_PATIENTSDATE_CREATED: TDateField
      FieldName = 'DATE_CREATED'
    end
    object cdsWC_PATIENTSESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object cdsWC_PATIENTSFECHANACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHANACIMIENTO'
    end
    object cdsWC_PATIENTSTELEFONO: TStringField
      FieldName = 'TELEFONO'
      FixedChar = True
      Size = 13
    end
    object cdsWC_PATIENTSSTATUS: TSmallintField
      FieldName = 'STATUS'
    end
    object cdsWC_PATIENTSDATE_PICKUP_RTS: TDateField
      FieldName = 'DATE_PICKUP_RTS'
    end
    object cdsWC_PATIENTSFAMILY_LINK: TWideStringField
      FieldName = 'FAMILY_LINK'
      FixedChar = True
      Size = 36
    end
    object cdsWC_PATIENTSNOTIFICATION_MODE_PHONE: TSmallintField
      FieldName = 'NOTIFICATION_MODE_PHONE'
    end
    object cdsWC_PATIENTSNOTIFICATION_MODE_CEL: TSmallintField
      FieldName = 'NOTIFICATION_MODE_CEL'
    end
    object cdsWC_PATIENTSNOTIFICATION_MODE_SMS: TSmallintField
      FieldName = 'NOTIFICATION_MODE_SMS'
    end
    object cdsWC_PATIENTSNOTIFICATION_MODE_EMAIL: TSmallintField
      FieldName = 'NOTIFICATION_MODE_EMAIL'
    end
    object cdsWC_PATIENTSemail: TWideStringField
      FieldName = 'email'
      FixedChar = True
      Size = 80
    end
  end
end
