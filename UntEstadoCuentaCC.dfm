object FrmEstadoCuentaCC: TFrmEstadoCuentaCC
  Left = 777
  Top = 153
  Caption = 'FrmEstadoCuentaCC'
  ClientHeight = 517
  ClientWidth = 435
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DSClientes: TDataSource
    DataSet = CDSClientesLocal
    OnDataChange = DSClientesDataChange
    Left = 88
    Top = 88
  end
  object CDSClientesLocal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPClientes'
    OnCalcFields = CDSClientesLocalCalcFields
    Left = 200
    Top = 88
    object CDSClientesLocalNOMBRE: TStringField
      FieldName = 'NOMBRE'
      FixedChar = True
      Size = 12
    end
    object CDSClientesLocalCARDHOLDERID: TStringField
      FieldName = 'CARDHOLDERID'
      FixedChar = True
      Size = 18
    end
    object CDSClientesLocalFECHANACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHANACIMIENTO'
    end
    object CDSClientesLocalSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object CDSClientesLocalDIRECCION1: TStringField
      FieldName = 'DIRECCION1'
      FixedChar = True
      Size = 30
    end
    object CDSClientesLocalDIRECCION2: TStringField
      FieldName = 'DIRECCION2'
      FixedChar = True
      Size = 30
    end
    object CDSClientesLocalULTTRANS: TSQLTimeStampField
      FieldName = 'ULTTRANS'
    end
    object CDSClientesLocalDEUDA: TFloatField
      FieldName = 'DEUDA'
      DisplayFormat = '#.00'
    end
    object CDSClientesLocalLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
      DisplayFormat = '#.00'
    end
    object CDSClientesLocalNUMEROCLIENTE: TIntegerField
      FieldName = 'NUMEROCLIENTE'
    end
    object CDSClientesLocalINTERES: TStringField
      FieldName = 'INTERES'
      FixedChar = True
      Size = 1
    end
    object CDSClientesLocalINFOADICIONAL: TStringField
      FieldName = 'INFOADICIONAL'
      Size = 100
    end
    object CDSClientesLocalDIRECCIONFISICA: TStringField
      FieldName = 'DIRECCIONFISICA'
      FixedChar = True
      Size = 50
    end
    object CDSClientesLocalAPELLIDOPATERNO: TStringField
      FieldName = 'APELLIDOPATERNO'
      FixedChar = True
      Size = 15
    end
    object CDSClientesLocalAPELLIDOMATERNO: TStringField
      FieldName = 'APELLIDOMATERNO'
      FixedChar = True
      Size = 15
    end
    object CDSClientesLocalTELEFONO: TStringField
      FieldName = 'TELEFONO'
      FixedChar = True
      Size = 13
    end
    object CDSClientesLocalCODIGOPOSTAL: TStringField
      FieldName = 'CODIGOPOSTAL'
      FixedChar = True
      Size = 12
    end
    object CDSClientesLocalFAX: TStringField
      FieldName = 'FAX'
      FixedChar = True
      Size = 13
    end
    object CDSClientesLocalCELULAR: TStringField
      FieldName = 'CELULAR'
      FixedChar = True
      Size = 13
    end
    object CDSClientesLocalEMAIL: TStringField
      FieldName = 'EMAIL'
      FixedChar = True
      Size = 40
    end
    object CDSClientesLocalLAWAY: TFloatField
      FieldName = 'LAWAY'
      DisplayFormat = '#.00'
    end
    object CDSClientesLocalESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object CDSClientesLocalAUSPICIO: TFloatField
      FieldName = 'AUSPICIO'
      DisplayFormat = '#.00'
    end
    object CDSClientesLocalSOCIO: TStringField
      FieldName = 'SOCIO'
      Size = 12
    end
    object CDSClientesLocalORIENTACION: TStringField
      FieldName = 'ORIENTACION'
      FixedChar = True
      Size = 5
    end
    object CDSClientesLocalIDENTIFICACION: TStringField
      FieldName = 'IDENTIFICACION'
      FixedChar = True
    end
    object CDSClientesLocalSMOKER: TStringField
      FieldName = 'SMOKER'
      FixedChar = True
      Size = 1
    end
    object CDSClientesLocalLOCATION: TStringField
      FieldName = 'LOCATION'
      FixedChar = True
      Size = 2
    end
    object CDSClientesLocalEMPLOYER_ID: TStringField
      FieldName = 'EMPLOYER_ID'
      FixedChar = True
      Size = 15
    end
    object CDSClientesLocalPATIENT_ID_QUAL: TStringField
      FieldName = 'PATIENT_ID_QUAL'
      FixedChar = True
      Size = 2
    end
    object CDSClientesLocalPREGNANCY_IDICATOR: TStringField
      FieldName = 'PREGNANCY_IDICATOR'
      FixedChar = True
      Size = 1
    end
    object CDSClientesLocalFECHA_HIPPA: TSQLTimeStampField
      FieldName = 'FECHA_HIPPA'
    end
    object CDSClientesLocalDEUDA_WEB: TFloatField
      FieldName = 'DEUDA_WEB'
      DisplayFormat = '#.00'
    end
    object CDSClientesLocalLANGUAGE: TStringField
      FieldName = 'LANGUAGE'
      FixedChar = True
      Size = 7
    end
    object CDSClientesLocalNombreCompleto2: TStringField
      FieldKind = fkCalculated
      FieldName = 'NombreCompleto2'
      Size = 45
      Calculated = True
    end
    object CDSClientesLocalDeudaCentralizada: TFloatField
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
    Top = 88
  end
  object QClientes: TSQLDataSet
    CommandText = 'Select * from Pacientes'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'IDENTIFICACION'
        ParamType = ptInput
        Value = '584062754  '
      end>
    SQLConnection = DMMidas.SQLConnection1
    Left = 32
    Top = 88
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
  object DSClientesCC: TDataSource
    DataSet = CDSClientesCC
    Left = 88
    Top = 136
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 'Select * from Clientes'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 32
    Top = 136
  end
  object DPClientes: TDataSetProvider
    DataSet = SQLDataSet1
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 144
    Top = 136
  end
  object CDSClientesCC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPClientes'
    Left = 200
    Top = 136
    object CDSClientesCCSEGURO_SOCIAL: TStringField
      FieldName = 'SEGURO_SOCIAL'
      Required = True
      FixedChar = True
      Size = 11
    end
    object CDSClientesCCBALANCE: TFloatField
      FieldName = 'BALANCE'
      Required = True
      DisplayFormat = '#.00'
    end
    object CDSClientesCCNombreCompleto2: TStringField
      FieldKind = fkLookup
      FieldName = 'NombreCompleto2'
      LookupDataSet = CDSClientesLocal
      LookupKeyFields = 'IDENTIFICACION'
      LookupResultField = 'NOMBRE'
      KeyFields = 'SEGURO_SOCIAL'
      Size = 45
      Lookup = True
    end
  end
  object DSTransCredito: TDataSource
    DataSet = CDSTransCredito
    Left = 168
    Top = 208
  end
  object SQTransCredito: TSQLDataSet
    CommandText = 'Select sum(amount) as TCredito  from CLIENTTRANSACTIONS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 112
    Top = 208
  end
  object DSPTransCredito: TDataSetProvider
    DataSet = SQTransCredito
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 224
    Top = 208
  end
  object CDSTransCredito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPTransCredito'
    Left = 280
    Top = 208
    object CDSTransCreditoTCredito: TFloatField
      FieldName = 'TCredito'
    end
  end
  object DSTransDebito: TDataSource
    DataSet = CDSTransDebito
    Left = 168
    Top = 248
  end
  object SQTransDebito: TSQLDataSet
    CommandText = 'Select sum(amount) as TDebito from CLIENTTRANSACTIONS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnection1
    Left = 112
    Top = 248
  end
  object DSPTransDebito: TDataSetProvider
    DataSet = SQTransDebito
    Options = [poPropogateChanges, poAllowCommandText]
    Left = 224
    Top = 248
  end
  object CDSTransDebito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPTransDebito'
    Left = 280
    Top = 248
    object CDSTransDebitoTDebito: TFloatField
      FieldName = 'TDebito'
    end
  end
end
