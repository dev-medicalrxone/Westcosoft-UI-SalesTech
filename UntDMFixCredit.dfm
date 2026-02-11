object DMFixCredit: TDMFixCredit
  OldCreateOrder = False
  Left = 552
  Top = 237
  Height = 209
  Width = 313
  object QCreditos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NoCliente'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      
        'Select sum(Amount) as TCredit from ClientTransactions where Code' +
        ' = '#39'CR'#39' and ClientNo = :NoCliente')
    SQLConnection = DMMidas.SQLConnection1
    Left = 56
    Top = 16
    object QCreditosTCredit: TFloatField
      FieldName = 'TCredit'
    end
  end
  object QDebitos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NoCliente'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      
        'Select sum(Amount) as TDebit from ClientTransactions where Code ' +
        '= '#39'DB'#39'  and ClientNo = :NoCliente')
    SQLConnection = DMMidas.SQLConnection1
    Left = 152
    Top = 16
    object QDebitosTDebit: TFloatField
      FieldName = 'TDebit'
    end
  end
  object DSClientes: TDataSource
    DataSet = CDSClientes
    Left = 80
    Top = 94
  end
  object CDSClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPClientes'
    Left = 200
    Top = 96
    object CDSClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      FixedChar = True
      Size = 12
    end
    object CDSClientesCARDHOLDERID: TStringField
      FieldName = 'CARDHOLDERID'
      FixedChar = True
      Size = 18
    end
    object CDSClientesFECHANACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHANACIMIENTO'
    end
    object CDSClientesSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object CDSClientesDIRECCION1: TStringField
      FieldName = 'DIRECCION1'
      FixedChar = True
      Size = 30
    end
    object CDSClientesDIRECCION2: TStringField
      FieldName = 'DIRECCION2'
      FixedChar = True
      Size = 30
    end
    object CDSClientesULTTRANS: TSQLTimeStampField
      FieldName = 'ULTTRANS'
    end
    object CDSClientesDEUDA: TFloatField
      FieldName = 'DEUDA'
      DisplayFormat = '#.00'
    end
    object CDSClientesLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
      DisplayFormat = '#.00'
    end
    object CDSClientesNUMEROCLIENTE: TIntegerField
      FieldName = 'NUMEROCLIENTE'
    end
    object CDSClientesINTERES: TStringField
      FieldName = 'INTERES'
      FixedChar = True
      Size = 1
    end
    object CDSClientesINFOADICIONAL: TStringField
      FieldName = 'INFOADICIONAL'
      Size = 100
    end
    object CDSClientesDIRECCIONFISICA: TStringField
      FieldName = 'DIRECCIONFISICA'
      FixedChar = True
      Size = 50
    end
    object CDSClientesAPELLIDOPATERNO: TStringField
      FieldName = 'APELLIDOPATERNO'
      FixedChar = True
      Size = 15
    end
    object CDSClientesAPELLIDOMATERNO: TStringField
      FieldName = 'APELLIDOMATERNO'
      FixedChar = True
      Size = 15
    end
    object CDSClientesTELEFONO: TStringField
      FieldName = 'TELEFONO'
      FixedChar = True
      Size = 13
    end
    object CDSClientesCODIGOPOSTAL: TStringField
      FieldName = 'CODIGOPOSTAL'
      FixedChar = True
      Size = 12
    end
    object CDSClientesFAX: TStringField
      FieldName = 'FAX'
      FixedChar = True
      Size = 13
    end
    object CDSClientesCELULAR: TStringField
      FieldName = 'CELULAR'
      FixedChar = True
      Size = 13
    end
    object CDSClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      FixedChar = True
      Size = 40
    end
    object CDSClientesLAWAY: TFloatField
      FieldName = 'LAWAY'
      DisplayFormat = '#.00'
    end
    object CDSClientesESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object CDSClientesAUSPICIO: TFloatField
      FieldName = 'AUSPICIO'
      DisplayFormat = '#.00'
    end
    object CDSClientesSOCIO: TStringField
      FieldName = 'SOCIO'
      Size = 12
    end
    object CDSClientesORIENTACION: TStringField
      FieldName = 'ORIENTACION'
      FixedChar = True
      Size = 5
    end
    object CDSClientesIDENTIFICACION: TStringField
      FieldName = 'IDENTIFICACION'
      FixedChar = True
    end
    object CDSClientesSMOKER: TStringField
      FieldName = 'SMOKER'
      FixedChar = True
      Size = 1
    end
    object CDSClientesLOCATION: TStringField
      FieldName = 'LOCATION'
      FixedChar = True
      Size = 2
    end
    object CDSClientesEMPLOYER_ID: TStringField
      FieldName = 'EMPLOYER_ID'
      FixedChar = True
      Size = 15
    end
    object CDSClientesPATIENT_ID_QUAL: TStringField
      FieldName = 'PATIENT_ID_QUAL'
      FixedChar = True
      Size = 2
    end
    object CDSClientesPREGNANCY_IDICATOR: TStringField
      FieldName = 'PREGNANCY_IDICATOR'
      FixedChar = True
      Size = 1
    end
    object CDSClientesFECHA_HIPPA: TSQLTimeStampField
      FieldName = 'FECHA_HIPPA'
    end
    object CDSClientesDEUDA_WEB: TFloatField
      FieldName = 'DEUDA_WEB'
      DisplayFormat = '#.00'
    end
    object CDSClientesLANGUAGE: TStringField
      FieldName = 'LANGUAGE'
      FixedChar = True
      Size = 7
    end
    object CDSClientesNombreCompleto2: TStringField
      FieldKind = fkCalculated
      FieldName = 'NombreCompleto2'
      Size = 45
      Calculated = True
    end
    object CDSClientesDeudaCentralizada: TFloatField
      FieldKind = fkLookup
      FieldName = 'DeudaCentralizada'
      LookupDataSet = DM.CDSClientes
      LookupKeyFields = 'SEGURO_SOCIAL'
      LookupResultField = 'BALANCE'
      KeyFields = 'CARDHOLDERID'
      DisplayFormat = '#.00'
      Lookup = True
    end
  end
  object DSPClientes: TDataSetProvider
    DataSet = QClientes
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 144
    Top = 94
  end
  object QClientes: TSQLDataSet
    CommandText = 'Select * from Pacientes where NumeroCliente = 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMMidas.SQLConnection1
    Left = 24
    Top = 94
    object QClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      FixedChar = True
      Size = 12
    end
    object QClientesCARDHOLDERID: TStringField
      FieldName = 'CARDHOLDERID'
      FixedChar = True
      Size = 18
    end
    object QClientesFECHANACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHANACIMIENTO'
    end
    object QClientesSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object QClientesDIRECCION1: TStringField
      FieldName = 'DIRECCION1'
      FixedChar = True
      Size = 30
    end
    object QClientesDIRECCION2: TStringField
      FieldName = 'DIRECCION2'
      FixedChar = True
      Size = 30
    end
    object QClientesULTTRANS: TSQLTimeStampField
      FieldName = 'ULTTRANS'
    end
    object QClientesDEUDA: TFloatField
      FieldName = 'DEUDA'
    end
    object QClientesLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object QClientesNUMEROCLIENTE: TIntegerField
      FieldName = 'NUMEROCLIENTE'
    end
    object QClientesINTERES: TStringField
      FieldName = 'INTERES'
      FixedChar = True
      Size = 1
    end
    object QClientesINFOADICIONAL: TStringField
      FieldName = 'INFOADICIONAL'
      Size = 100
    end
    object QClientesDIRECCIONFISICA: TStringField
      FieldName = 'DIRECCIONFISICA'
      FixedChar = True
      Size = 50
    end
    object QClientesAPELLIDOPATERNO: TStringField
      FieldName = 'APELLIDOPATERNO'
      FixedChar = True
      Size = 15
    end
    object QClientesAPELLIDOMATERNO: TStringField
      FieldName = 'APELLIDOMATERNO'
      FixedChar = True
      Size = 15
    end
    object QClientesTELEFONO: TStringField
      FieldName = 'TELEFONO'
      FixedChar = True
      Size = 13
    end
    object QClientesCODIGOPOSTAL: TStringField
      FieldName = 'CODIGOPOSTAL'
      FixedChar = True
      Size = 12
    end
    object QClientesFAX: TStringField
      FieldName = 'FAX'
      FixedChar = True
      Size = 13
    end
    object QClientesCELULAR: TStringField
      FieldName = 'CELULAR'
      FixedChar = True
      Size = 13
    end
    object QClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      FixedChar = True
      Size = 40
    end
    object QClientesLAWAY: TFloatField
      FieldName = 'LAWAY'
    end
    object QClientesESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object QClientesAUSPICIO: TFloatField
      FieldName = 'AUSPICIO'
    end
    object QClientesSOCIO: TStringField
      FieldName = 'SOCIO'
      Size = 12
    end
    object QClientesORIENTACION: TStringField
      FieldName = 'ORIENTACION'
      FixedChar = True
      Size = 5
    end
    object QClientesIDENTIFICACION: TStringField
      FieldName = 'IDENTIFICACION'
      FixedChar = True
    end
    object QClientesSMOKER: TStringField
      FieldName = 'SMOKER'
      FixedChar = True
      Size = 1
    end
    object QClientesLOCATION: TStringField
      FieldName = 'LOCATION'
      FixedChar = True
      Size = 2
    end
    object QClientesEMPLOYER_ID: TStringField
      FieldName = 'EMPLOYER_ID'
      FixedChar = True
      Size = 15
    end
    object QClientesPATIENT_ID_QUAL: TStringField
      FieldName = 'PATIENT_ID_QUAL'
      FixedChar = True
      Size = 2
    end
    object QClientesPREGNANCY_IDICATOR: TStringField
      FieldName = 'PREGNANCY_IDICATOR'
      FixedChar = True
      Size = 1
    end
    object QClientesFECHA_HIPPA: TSQLTimeStampField
      FieldName = 'FECHA_HIPPA'
    end
    object QClientesDEUDA_WEB: TFloatField
      FieldName = 'DEUDA_WEB'
    end
    object QClientesLANGUAGE: TStringField
      FieldName = 'LANGUAGE'
      FixedChar = True
      Size = 7
    end
  end
  object QUPDATECLIENTTRANS: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMMidas.SQLConnection1
    Left = 216
    Top = 16
  end
end
