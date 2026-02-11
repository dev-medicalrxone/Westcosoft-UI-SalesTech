
{****************************************************************************************}
{                                                                                        }
{                                    XML Data Binding                                    }
{                                                                                        }
{         Generated on: 02/10/2021 09:52:40 AM                                           }
{       Generated from: C:\WesCom_Decimal\SmartPicup\Source\Win64\Debug\QueryReply.xml   }
{   Settings stored in: C:\WesCom_Decimal\SmartPicup\Source\Win64\Debug\QueryReply.xdb   }
{                                                                                        }
{****************************************************************************************}

unit QueryReply;

interface

uses Xml.xmldom, Xml.XMLDoc, Xml.XMLIntf;

type

{ Forward Decls }

  IXMLQUERY_REPLYType = interface;
  IXMLHEADERType = interface;
  IXMLREFILL_INFOType = interface;
  IXMLPATIENT_INFOType = interface;
  IXMLPATIENT_ADDRESSType = interface;
  IXMLDOCTOR_INFOType = interface;
  IXMLDOCTOR_ADDRESSType = interface;

{ IXMLQUERY_REPLYType }

  IXMLQUERY_REPLYType = interface(IXMLNode)
    ['{08D656C1-D24D-4CA0-BB89-5F8E2AA70FFE}']
    { Property Accessors }
    function Get_HEADER: IXMLHEADERType;
    function Get_REFILL_INFO: IXMLREFILL_INFOType;
    function Get_PATIENT_INFO: IXMLPATIENT_INFOType;
    function Get_DOCTOR_INFO: IXMLDOCTOR_INFOType;
    { Methods & Properties }
    property HEADER: IXMLHEADERType read Get_HEADER;
    property REFILL_INFO: IXMLREFILL_INFOType read Get_REFILL_INFO;
    property PATIENT_INFO: IXMLPATIENT_INFOType read Get_PATIENT_INFO;
    property DOCTOR_INFO: IXMLDOCTOR_INFOType read Get_DOCTOR_INFO;
  end;

{ IXMLHEADERType }

  IXMLHEADERType = interface(IXMLNode)
    ['{61A2B32E-0E04-407B-9F6D-6BC3940CE9CF}']
    { Property Accessors }
    function Get_STATUS_FLAG: string;
    function Get_TRANSACTION_TYPE: UnicodeString;
    function Get_VERSION_NUMBER: string;
    function Get_TRANSACTION_ORIGIN: string;
    procedure Set_STATUS_FLAG(Value: string);
    procedure Set_TRANSACTION_TYPE(Value: UnicodeString);
    procedure Set_VERSION_NUMBER(Value: string);
    procedure Set_TRANSACTION_ORIGIN(Value: string);
    { Methods & Properties }
    property STATUS_FLAG: string read Get_STATUS_FLAG write Set_STATUS_FLAG;
    property TRANSACTION_TYPE: UnicodeString read Get_TRANSACTION_TYPE write Set_TRANSACTION_TYPE;
    property VERSION_NUMBER: string read Get_VERSION_NUMBER write Set_VERSION_NUMBER;
    property TRANSACTION_ORIGIN: string read Get_TRANSACTION_ORIGIN write Set_TRANSACTION_ORIGIN;
  end;

{ IXMLREFILL_INFOType }

  IXMLREFILL_INFOType = interface(IXMLNode)
    ['{5CB42A9E-F5FA-414D-AB83-B850F009F5A0}']
    { Property Accessors }
    function Get_RX_NUMBER: string;
    function Get_REFILLS_REMAINING: string;
    function Get_EXPIRATION_DATE: string;
    function Get_LAST_FILL_DATE: string;
    function Get_DATE_FIRST_FILL: string;
    function Get_DAYS_SUPPLY_LAST_FILL: string;
    function Get_ORIGINAL_REFILLS: string;
    function Get_LAST_FILL_QUANTITY: string;
    function Get_QUANTITY_REMAINING: string;
    function Get_ORIGINAL_FILL_QUANTITY: string;
    function Get_REASSIGNED_RX_NUMBER: string;
    function Get_STATUS: UnicodeString;
    function Get_REFILLS_IN_QUEUE: string;
    function Get_OUT_DIAL_PERMISSION: string;
    function Get_DRUG_NAME: UnicodeString;
    function Get_DRUG_NDC: string;
    function Get_DRUG_SCHEDULE: string;
    function Get_DRUG_SIG: UnicodeString;
    procedure Set_RX_NUMBER(Value: string);
    procedure Set_REFILLS_REMAINING(Value: string);
    procedure Set_EXPIRATION_DATE(Value: string);
    procedure Set_LAST_FILL_DATE(Value: string);
    procedure Set_DATE_FIRST_FILL(Value: string);
    procedure Set_DAYS_SUPPLY_LAST_FILL(Value: string);
    procedure Set_ORIGINAL_REFILLS(Value: string);
    procedure Set_LAST_FILL_QUANTITY(Value: string);
    procedure Set_QUANTITY_REMAINING(Value: string);
    procedure Set_ORIGINAL_FILL_QUANTITY(Value: string);
    procedure Set_REASSIGNED_RX_NUMBER(Value: string);
    procedure Set_STATUS(Value: UnicodeString);
    procedure Set_REFILLS_IN_QUEUE(Value: string);
    procedure Set_OUT_DIAL_PERMISSION(Value: string);
    procedure Set_DRUG_NAME(Value: UnicodeString);
    procedure Set_DRUG_NDC(Value: string);
    procedure Set_DRUG_SCHEDULE(Value: string);
    procedure Set_DRUG_SIG(Value: UnicodeString);
    { Methods & Properties }
    property RX_NUMBER: string read Get_RX_NUMBER write Set_RX_NUMBER;
    property REFILLS_REMAINING: string read Get_REFILLS_REMAINING write Set_REFILLS_REMAINING;
    property EXPIRATION_DATE: string read Get_EXPIRATION_DATE write Set_EXPIRATION_DATE;
    property LAST_FILL_DATE: string read Get_LAST_FILL_DATE write Set_LAST_FILL_DATE;
    property DATE_FIRST_FILL: string read Get_DATE_FIRST_FILL write Set_DATE_FIRST_FILL;
    property DAYS_SUPPLY_LAST_FILL: string read Get_DAYS_SUPPLY_LAST_FILL write Set_DAYS_SUPPLY_LAST_FILL;
    property ORIGINAL_REFILLS: string read Get_ORIGINAL_REFILLS write Set_ORIGINAL_REFILLS;
    property LAST_FILL_QUANTITY: string read Get_LAST_FILL_QUANTITY write Set_LAST_FILL_QUANTITY;
    property QUANTITY_REMAINING: string read Get_QUANTITY_REMAINING write Set_QUANTITY_REMAINING;
    property ORIGINAL_FILL_QUANTITY: string read Get_ORIGINAL_FILL_QUANTITY write Set_ORIGINAL_FILL_QUANTITY;
    property REASSIGNED_RX_NUMBER: string read Get_REASSIGNED_RX_NUMBER write Set_REASSIGNED_RX_NUMBER;
    property STATUS: UnicodeString read Get_STATUS write Set_STATUS;
    property REFILLS_IN_QUEUE: string read Get_REFILLS_IN_QUEUE write Set_REFILLS_IN_QUEUE;
    property OUT_DIAL_PERMISSION: string read Get_OUT_DIAL_PERMISSION write Set_OUT_DIAL_PERMISSION;
    property DRUG_NAME: UnicodeString read Get_DRUG_NAME write Set_DRUG_NAME;
    property DRUG_NDC: string read Get_DRUG_NDC write Set_DRUG_NDC;
    property DRUG_SCHEDULE: string read Get_DRUG_SCHEDULE write Set_DRUG_SCHEDULE;
    property DRUG_SIG: UnicodeString read Get_DRUG_SIG write Set_DRUG_SIG;
  end;

{ IXMLPATIENT_INFOType }

  IXMLPATIENT_INFOType = interface(IXMLNode)
    ['{308D57EA-1B5A-4454-BB99-D9B70DFCF9BB}']
    { Property Accessors }
    function Get_PATIENT_NAME: UnicodeString;
    function Get_PAT_PHONE_1: UnicodeString;
    function Get_PAT_PHONE_2: UnicodeString;
    function Get_PATIENT_DOB: string;
    function Get_PATIENT_SSN: UnicodeString;
    function Get_PATIENT_PIN: string;
    function Get_PATIENT_E_MAIL: UnicodeString;
    function Get_PATIENT_GENDER: UnicodeString;
    function Get_OUT_DIAL_PERMISSION: string;
    function Get_PATIENT_ADDRESS: IXMLPATIENT_ADDRESSType;
    procedure Set_PATIENT_NAME(Value: UnicodeString);
    procedure Set_PAT_PHONE_1(Value: UnicodeString);
    procedure Set_PAT_PHONE_2(Value: UnicodeString);
    procedure Set_PATIENT_DOB(Value: string);
    procedure Set_PATIENT_SSN(Value: UnicodeString);
    procedure Set_PATIENT_PIN(Value: string);
    procedure Set_PATIENT_E_MAIL(Value: UnicodeString);
    procedure Set_PATIENT_GENDER(Value: UnicodeString);
    procedure Set_OUT_DIAL_PERMISSION(Value: string);
    { Methods & Properties }
    property PATIENT_NAME: UnicodeString read Get_PATIENT_NAME write Set_PATIENT_NAME;
    property PAT_PHONE_1: UnicodeString read Get_PAT_PHONE_1 write Set_PAT_PHONE_1;
    property PAT_PHONE_2: UnicodeString read Get_PAT_PHONE_2 write Set_PAT_PHONE_2;
    property PATIENT_DOB: string read Get_PATIENT_DOB write Set_PATIENT_DOB;
    property PATIENT_SSN: UnicodeString read Get_PATIENT_SSN write Set_PATIENT_SSN;
    property PATIENT_PIN: string read Get_PATIENT_PIN write Set_PATIENT_PIN;
    property PATIENT_E_MAIL: UnicodeString read Get_PATIENT_E_MAIL write Set_PATIENT_E_MAIL;
    property PATIENT_GENDER: UnicodeString read Get_PATIENT_GENDER write Set_PATIENT_GENDER;
    property OUT_DIAL_PERMISSION: string read Get_OUT_DIAL_PERMISSION write Set_OUT_DIAL_PERMISSION;
    property PATIENT_ADDRESS: IXMLPATIENT_ADDRESSType read Get_PATIENT_ADDRESS;
  end;

{ IXMLPATIENT_ADDRESSType }

  IXMLPATIENT_ADDRESSType = interface(IXMLNode)
    ['{EB8854C4-0959-474D-AD34-2DBB8BFA865F}']
    { Property Accessors }
    function Get_PATIENT_STREET: UnicodeString;
    function Get_PATIENT_CITY: UnicodeString;
    function Get_PATIENT_STATE: UnicodeString;
    function Get_PATIENT_ZIP: string;
    procedure Set_PATIENT_STREET(Value: UnicodeString);
    procedure Set_PATIENT_CITY(Value: UnicodeString);
    procedure Set_PATIENT_STATE(Value: UnicodeString);
    procedure Set_PATIENT_ZIP(Value: string);
    { Methods & Properties }
    property PATIENT_STREET: UnicodeString read Get_PATIENT_STREET write Set_PATIENT_STREET;
    property PATIENT_CITY: UnicodeString read Get_PATIENT_CITY write Set_PATIENT_CITY;
    property PATIENT_STATE: UnicodeString read Get_PATIENT_STATE write Set_PATIENT_STATE;
    property PATIENT_ZIP: string read Get_PATIENT_ZIP write Set_PATIENT_ZIP;
  end;

{ IXMLDOCTOR_INFOType }

  IXMLDOCTOR_INFOType = interface(IXMLNode)
    ['{4D585D04-6D6B-49AC-AC91-5BA7B4E9D7E3}']
    { Property Accessors }
    function Get_DOCTOR_NAME: UnicodeString;
    function Get_DOCTOR_PHONE: UnicodeString;
    function Get_DOCTOR_FAX: UnicodeString;
    function Get_DOCTOR_E_MAIL: UnicodeString;
    function Get_DOCTOR_DEA_NUMBER: UnicodeString;
    function Get_DOCTOR_NPI_NUMBER: string;
    function Get_DOCTOR_DEA: string;
    function Get_DOCTOR_ADDRESS: IXMLDOCTOR_ADDRESSType;
    procedure Set_DOCTOR_NAME(Value: UnicodeString);
    procedure Set_DOCTOR_PHONE(Value: UnicodeString);
    procedure Set_DOCTOR_FAX(Value: UnicodeString);
    procedure Set_DOCTOR_E_MAIL(Value: UnicodeString);
    procedure Set_DOCTOR_DEA_NUMBER(Value: UnicodeString);
    procedure Set_DOCTOR_NPI_NUMBER(Value: string);
    procedure Set_DOCTOR_DEA(Value: string);
    { Methods & Properties }
    property DOCTOR_NAME: UnicodeString read Get_DOCTOR_NAME write Set_DOCTOR_NAME;
    property DOCTOR_PHONE: UnicodeString read Get_DOCTOR_PHONE write Set_DOCTOR_PHONE;
    property DOCTOR_FAX: UnicodeString read Get_DOCTOR_FAX write Set_DOCTOR_FAX;
    property DOCTOR_E_MAIL: UnicodeString read Get_DOCTOR_E_MAIL write Set_DOCTOR_E_MAIL;
    property DOCTOR_DEA_NUMBER: UnicodeString read Get_DOCTOR_DEA_NUMBER write Set_DOCTOR_DEA_NUMBER;
    property DOCTOR_NPI_NUMBER: string read Get_DOCTOR_NPI_NUMBER write Set_DOCTOR_NPI_NUMBER;
    property DOCTOR_DEA: string read Get_DOCTOR_DEA write Set_DOCTOR_DEA;
    property DOCTOR_ADDRESS: IXMLDOCTOR_ADDRESSType read Get_DOCTOR_ADDRESS;
  end;

{ IXMLDOCTOR_ADDRESSType }

  IXMLDOCTOR_ADDRESSType = interface(IXMLNode)
    ['{C43823F4-874E-43B0-8B2E-82436863B76A}']
    { Property Accessors }
    function Get_DOCTOR_STREET: UnicodeString;
    function Get_DOCTOR_CITY: UnicodeString;
    function Get_DOCTOR_STATE: UnicodeString;
    function Get_DOCTOR_ZIP: string;
    procedure Set_DOCTOR_STREET(Value: UnicodeString);
    procedure Set_DOCTOR_CITY(Value: UnicodeString);
    procedure Set_DOCTOR_STATE(Value: UnicodeString);
    procedure Set_DOCTOR_ZIP(Value: string);
    { Methods & Properties }
    property DOCTOR_STREET: UnicodeString read Get_DOCTOR_STREET write Set_DOCTOR_STREET;
    property DOCTOR_CITY: UnicodeString read Get_DOCTOR_CITY write Set_DOCTOR_CITY;
    property DOCTOR_STATE: UnicodeString read Get_DOCTOR_STATE write Set_DOCTOR_STATE;
    property DOCTOR_ZIP: string read Get_DOCTOR_ZIP write Set_DOCTOR_ZIP;
  end;

{ Forward Decls }

  TXMLQUERY_REPLYType = class;
  TXMLHEADERType = class;
  TXMLREFILL_INFOType = class;
  TXMLPATIENT_INFOType = class;
  TXMLPATIENT_ADDRESSType = class;
  TXMLDOCTOR_INFOType = class;
  TXMLDOCTOR_ADDRESSType = class;

{ TXMLQUERY_REPLYType }

  TXMLQUERY_REPLYType = class(TXMLNode, IXMLQUERY_REPLYType)
  protected
    { IXMLQUERY_REPLYType }
    function Get_HEADER: IXMLHEADERType;
    function Get_REFILL_INFO: IXMLREFILL_INFOType;
    function Get_PATIENT_INFO: IXMLPATIENT_INFOType;
    function Get_DOCTOR_INFO: IXMLDOCTOR_INFOType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLHEADERType }

  TXMLHEADERType = class(TXMLNode, IXMLHEADERType)
  protected
    { IXMLHEADERType }
    function Get_STATUS_FLAG: string;
    function Get_TRANSACTION_TYPE: UnicodeString;
    function Get_VERSION_NUMBER: string;
    function Get_TRANSACTION_ORIGIN: string;
    procedure Set_STATUS_FLAG(Value: string);
    procedure Set_TRANSACTION_TYPE(Value: UnicodeString);
    procedure Set_VERSION_NUMBER(Value: string);
    procedure Set_TRANSACTION_ORIGIN(Value: string);
  end;

{ TXMLREFILL_INFOType }

  TXMLREFILL_INFOType = class(TXMLNode, IXMLREFILL_INFOType)
  protected
    { IXMLREFILL_INFOType }
    function Get_RX_NUMBER: string;
    function Get_REFILLS_REMAINING: string;
    function Get_EXPIRATION_DATE: string;
    function Get_LAST_FILL_DATE: string;
    function Get_DATE_FIRST_FILL: string;
    function Get_DAYS_SUPPLY_LAST_FILL: string;
    function Get_ORIGINAL_REFILLS: string;
    function Get_LAST_FILL_QUANTITY: string;
    function Get_QUANTITY_REMAINING: string;
    function Get_ORIGINAL_FILL_QUANTITY: string;
    function Get_REASSIGNED_RX_NUMBER: string;
    function Get_STATUS: UnicodeString;
    function Get_REFILLS_IN_QUEUE: string;
    function Get_OUT_DIAL_PERMISSION: string;
    function Get_DRUG_NAME: UnicodeString;
    function Get_DRUG_NDC: string;
    function Get_DRUG_SCHEDULE: string;
    function Get_DRUG_SIG: UnicodeString;
    procedure Set_RX_NUMBER(Value: string);
    procedure Set_REFILLS_REMAINING(Value: string);
    procedure Set_EXPIRATION_DATE(Value: string);
    procedure Set_LAST_FILL_DATE(Value: string);
    procedure Set_DATE_FIRST_FILL(Value: string);
    procedure Set_DAYS_SUPPLY_LAST_FILL(Value: string);
    procedure Set_ORIGINAL_REFILLS(Value: string);
    procedure Set_LAST_FILL_QUANTITY(Value: string);
    procedure Set_QUANTITY_REMAINING(Value: string);
    procedure Set_ORIGINAL_FILL_QUANTITY(Value: string);
    procedure Set_REASSIGNED_RX_NUMBER(Value: string);
    procedure Set_STATUS(Value: UnicodeString);
    procedure Set_REFILLS_IN_QUEUE(Value: string);
    procedure Set_OUT_DIAL_PERMISSION(Value: string);
    procedure Set_DRUG_NAME(Value: UnicodeString);
    procedure Set_DRUG_NDC(Value: string);
    procedure Set_DRUG_SCHEDULE(Value: string);
    procedure Set_DRUG_SIG(Value: UnicodeString);
  end;

{ TXMLPATIENT_INFOType }

  TXMLPATIENT_INFOType = class(TXMLNode, IXMLPATIENT_INFOType)
  protected
    { IXMLPATIENT_INFOType }
    function Get_PATIENT_NAME: UnicodeString;
    function Get_PAT_PHONE_1: UnicodeString;
    function Get_PAT_PHONE_2: UnicodeString;
    function Get_PATIENT_DOB: string;
    function Get_PATIENT_SSN: UnicodeString;
    function Get_PATIENT_PIN: string;
    function Get_PATIENT_E_MAIL: UnicodeString;
    function Get_PATIENT_GENDER: UnicodeString;
    function Get_OUT_DIAL_PERMISSION: string;
    function Get_PATIENT_ADDRESS: IXMLPATIENT_ADDRESSType;
    procedure Set_PATIENT_NAME(Value: UnicodeString);
    procedure Set_PAT_PHONE_1(Value: UnicodeString);
    procedure Set_PAT_PHONE_2(Value: UnicodeString);
    procedure Set_PATIENT_DOB(Value: string);
    procedure Set_PATIENT_SSN(Value: UnicodeString);
    procedure Set_PATIENT_PIN(Value: string);
    procedure Set_PATIENT_E_MAIL(Value: UnicodeString);
    procedure Set_PATIENT_GENDER(Value: UnicodeString);
    procedure Set_OUT_DIAL_PERMISSION(Value: string);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPATIENT_ADDRESSType }

  TXMLPATIENT_ADDRESSType = class(TXMLNode, IXMLPATIENT_ADDRESSType)
  protected
    { IXMLPATIENT_ADDRESSType }
    function Get_PATIENT_STREET: UnicodeString;
    function Get_PATIENT_CITY: UnicodeString;
    function Get_PATIENT_STATE: UnicodeString;
    function Get_PATIENT_ZIP: string;
    procedure Set_PATIENT_STREET(Value: UnicodeString);
    procedure Set_PATIENT_CITY(Value: UnicodeString);
    procedure Set_PATIENT_STATE(Value: UnicodeString);
    procedure Set_PATIENT_ZIP(Value: string);
  end;

{ TXMLDOCTOR_INFOType }

  TXMLDOCTOR_INFOType = class(TXMLNode, IXMLDOCTOR_INFOType)
  protected
    { IXMLDOCTOR_INFOType }
    function Get_DOCTOR_NAME: UnicodeString;
    function Get_DOCTOR_PHONE: UnicodeString;
    function Get_DOCTOR_FAX: UnicodeString;
    function Get_DOCTOR_E_MAIL: UnicodeString;
    function Get_DOCTOR_DEA_NUMBER: UnicodeString;
    function Get_DOCTOR_NPI_NUMBER: string;
    function Get_DOCTOR_DEA: string;
    function Get_DOCTOR_ADDRESS: IXMLDOCTOR_ADDRESSType;
    procedure Set_DOCTOR_NAME(Value: UnicodeString);
    procedure Set_DOCTOR_PHONE(Value: UnicodeString);
    procedure Set_DOCTOR_FAX(Value: UnicodeString);
    procedure Set_DOCTOR_E_MAIL(Value: UnicodeString);
    procedure Set_DOCTOR_DEA_NUMBER(Value: UnicodeString);
    procedure Set_DOCTOR_NPI_NUMBER(Value: string);
    procedure Set_DOCTOR_DEA(Value: string);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDOCTOR_ADDRESSType }

  TXMLDOCTOR_ADDRESSType = class(TXMLNode, IXMLDOCTOR_ADDRESSType)
  protected
    { IXMLDOCTOR_ADDRESSType }
    function Get_DOCTOR_STREET: UnicodeString;
    function Get_DOCTOR_CITY: UnicodeString;
    function Get_DOCTOR_STATE: UnicodeString;
    function Get_DOCTOR_ZIP: string;
    procedure Set_DOCTOR_STREET(Value: UnicodeString);
    procedure Set_DOCTOR_CITY(Value: UnicodeString);
    procedure Set_DOCTOR_STATE(Value: UnicodeString);
    procedure Set_DOCTOR_ZIP(Value: string);
  end;

{ Global Functions }

function GetQUERY_REPLY(Doc: IXMLDocument): IXMLQUERY_REPLYType;
function LoadQUERY_REPLY(const FileName: string): IXMLQUERY_REPLYType;
function NewQUERY_REPLY: IXMLQUERY_REPLYType;

const
  TargetNamespace = '';

implementation

uses Xml.xmlutil;

{ Global Functions }

function GetQUERY_REPLY(Doc: IXMLDocument): IXMLQUERY_REPLYType;
begin
  Result := Doc.GetDocBinding('QUERY_REPLY', TXMLQUERY_REPLYType, TargetNamespace) as IXMLQUERY_REPLYType;
end;

function LoadQUERY_REPLY(const FileName: string): IXMLQUERY_REPLYType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('QUERY_REPLY', TXMLQUERY_REPLYType, TargetNamespace) as IXMLQUERY_REPLYType;
end;

function NewQUERY_REPLY: IXMLQUERY_REPLYType;
begin
  Result := NewXMLDocument.GetDocBinding('QUERY_REPLY', TXMLQUERY_REPLYType, TargetNamespace) as IXMLQUERY_REPLYType;
end;

{ TXMLQUERY_REPLYType }

procedure TXMLQUERY_REPLYType.AfterConstruction;
begin
  RegisterChildNode('HEADER', TXMLHEADERType);
  RegisterChildNode('REFILL_INFO', TXMLREFILL_INFOType);
  RegisterChildNode('PATIENT_INFO', TXMLPATIENT_INFOType);
  RegisterChildNode('DOCTOR_INFO', TXMLDOCTOR_INFOType);
  inherited;
end;

function TXMLQUERY_REPLYType.Get_HEADER: IXMLHEADERType;
begin
  Result := ChildNodes['HEADER'] as IXMLHEADERType;
end;

function TXMLQUERY_REPLYType.Get_REFILL_INFO: IXMLREFILL_INFOType;
begin
  Result := ChildNodes['REFILL_INFO'] as IXMLREFILL_INFOType;
end;

function TXMLQUERY_REPLYType.Get_PATIENT_INFO: IXMLPATIENT_INFOType;
begin
  Result := ChildNodes['PATIENT_INFO'] as IXMLPATIENT_INFOType;
end;

function TXMLQUERY_REPLYType.Get_DOCTOR_INFO: IXMLDOCTOR_INFOType;
begin
  Result := ChildNodes['DOCTOR_INFO'] as IXMLDOCTOR_INFOType;
end;

{ TXMLHEADERType }

function TXMLHEADERType.Get_STATUS_FLAG: string;
begin
  Result := ChildNodes['STATUS_FLAG'].Text;
end;

procedure TXMLHEADERType.Set_STATUS_FLAG(Value: string);
begin
  ChildNodes['STATUS_FLAG'].NodeValue := Value;
end;

function TXMLHEADERType.Get_TRANSACTION_TYPE: UnicodeString;
begin
  Result := ChildNodes['TRANSACTION_TYPE'].Text;
end;

procedure TXMLHEADERType.Set_TRANSACTION_TYPE(Value: UnicodeString);
begin
  ChildNodes['TRANSACTION_TYPE'].NodeValue := Value;
end;

function TXMLHEADERType.Get_VERSION_NUMBER: string;
begin
  Result := ChildNodes['VERSION_NUMBER'].Text;
end;

procedure TXMLHEADERType.Set_VERSION_NUMBER(Value: string);
begin
  ChildNodes['VERSION_NUMBER'].NodeValue := Value;
end;

function TXMLHEADERType.Get_TRANSACTION_ORIGIN: string;
begin
  Result := ChildNodes['TRANSACTION_ORIGIN'].Text;
end;

procedure TXMLHEADERType.Set_TRANSACTION_ORIGIN(Value: string);
begin
  ChildNodes['TRANSACTION_ORIGIN'].NodeValue := Value;
end;

{ TXMLREFILL_INFOType }

function TXMLREFILL_INFOType.Get_RX_NUMBER: string;
begin
  Result := ChildNodes['RX_NUMBER'].Text;
end;

procedure TXMLREFILL_INFOType.Set_RX_NUMBER(Value: string);
begin
  ChildNodes['RX_NUMBER'].NodeValue := Value;
end;

function TXMLREFILL_INFOType.Get_REFILLS_REMAINING: string;
begin
  Result := ChildNodes['REFILLS_REMAINING'].Text;
end;

procedure TXMLREFILL_INFOType.Set_REFILLS_REMAINING(Value: string);
begin
  ChildNodes['REFILLS_REMAINING'].NodeValue := Value;
end;

function TXMLREFILL_INFOType.Get_EXPIRATION_DATE: string;
begin
  Result := ChildNodes['EXPIRATION_DATE'].Text;
end;

procedure TXMLREFILL_INFOType.Set_EXPIRATION_DATE(Value: string);
begin
  ChildNodes['EXPIRATION_DATE'].NodeValue := Value;
end;

function TXMLREFILL_INFOType.Get_LAST_FILL_DATE: string;
begin
  Result := ChildNodes['LAST_FILL_DATE'].Text;
end;

procedure TXMLREFILL_INFOType.Set_LAST_FILL_DATE(Value: string);
begin
  ChildNodes['LAST_FILL_DATE'].NodeValue := Value;
end;

function TXMLREFILL_INFOType.Get_DATE_FIRST_FILL: string;
begin
  Result := ChildNodes['DATE_FIRST_FILL'].Text;
end;

procedure TXMLREFILL_INFOType.Set_DATE_FIRST_FILL(Value: string);
begin
  ChildNodes['DATE_FIRST_FILL'].NodeValue := Value;
end;

function TXMLREFILL_INFOType.Get_DAYS_SUPPLY_LAST_FILL: string;
begin
  Result := ChildNodes['DAYS_SUPPLY_LAST_FILL'].Text;
end;

procedure TXMLREFILL_INFOType.Set_DAYS_SUPPLY_LAST_FILL(Value: string);
begin
  ChildNodes['DAYS_SUPPLY_LAST_FILL'].NodeValue := Value;
end;

function TXMLREFILL_INFOType.Get_ORIGINAL_REFILLS: string;
begin
  Result := ChildNodes['ORIGINAL_REFILLS'].Text;
end;

procedure TXMLREFILL_INFOType.Set_ORIGINAL_REFILLS(Value: string);
begin
  ChildNodes['ORIGINAL_REFILLS'].NodeValue := Value;
end;

function TXMLREFILL_INFOType.Get_LAST_FILL_QUANTITY: string;
begin
  Result := ChildNodes['LAST_FILL_QUANTITY'].Text;
end;

procedure TXMLREFILL_INFOType.Set_LAST_FILL_QUANTITY(Value: string);
begin
  ChildNodes['LAST_FILL_QUANTITY'].NodeValue := Value;
end;

function TXMLREFILL_INFOType.Get_QUANTITY_REMAINING: string;
begin
  Result := ChildNodes['QUANTITY_REMAINING'].Text;
end;

procedure TXMLREFILL_INFOType.Set_QUANTITY_REMAINING(Value: string);
begin
  ChildNodes['QUANTITY_REMAINING'].NodeValue := Value;
end;

function TXMLREFILL_INFOType.Get_ORIGINAL_FILL_QUANTITY: string;
begin
  Result := ChildNodes['ORIGINAL_FILL_QUANTITY'].Text;
end;

procedure TXMLREFILL_INFOType.Set_ORIGINAL_FILL_QUANTITY(Value: string);
begin
  ChildNodes['ORIGINAL_FILL_QUANTITY'].NodeValue := Value;
end;

function TXMLREFILL_INFOType.Get_REASSIGNED_RX_NUMBER: string;
begin
  Result := ChildNodes['REASSIGNED_RX_NUMBER'].Text;
end;

procedure TXMLREFILL_INFOType.Set_REASSIGNED_RX_NUMBER(Value: string);
begin
  ChildNodes['REASSIGNED_RX_NUMBER'].NodeValue := Value;
end;

function TXMLREFILL_INFOType.Get_STATUS: UnicodeString;
begin
  Result := ChildNodes['STATUS'].Text;
end;

procedure TXMLREFILL_INFOType.Set_STATUS(Value: UnicodeString);
begin
  ChildNodes['STATUS'].NodeValue := Value;
end;

function TXMLREFILL_INFOType.Get_REFILLS_IN_QUEUE: string;
begin
  Result := ChildNodes['REFILLS_IN_QUEUE'].Text;
end;

procedure TXMLREFILL_INFOType.Set_REFILLS_IN_QUEUE(Value: string);
begin
  ChildNodes['REFILLS_IN_QUEUE'].NodeValue := Value;
end;

function TXMLREFILL_INFOType.Get_OUT_DIAL_PERMISSION: string;
begin
  Result := ChildNodes['OUT_DIAL_PERMISSION'].Text;
end;

procedure TXMLREFILL_INFOType.Set_OUT_DIAL_PERMISSION(Value: string);
begin
  ChildNodes['OUT_DIAL_PERMISSION'].NodeValue := Value;
end;

function TXMLREFILL_INFOType.Get_DRUG_NAME: UnicodeString;
begin
  Result := ChildNodes['DRUG_NAME'].Text;
end;

procedure TXMLREFILL_INFOType.Set_DRUG_NAME(Value: UnicodeString);
begin
  ChildNodes['DRUG_NAME'].NodeValue := Value;
end;

function TXMLREFILL_INFOType.Get_DRUG_NDC: string;
begin
  Result := ChildNodes['DRUG_NDC'].Text;
end;

procedure TXMLREFILL_INFOType.Set_DRUG_NDC(Value: string);
begin
  ChildNodes['DRUG_NDC'].NodeValue := Value;
end;

function TXMLREFILL_INFOType.Get_DRUG_SCHEDULE: string;
begin
  Result := ChildNodes['DRUG_SCHEDULE'].Text;
end;

procedure TXMLREFILL_INFOType.Set_DRUG_SCHEDULE(Value: string);
begin
  ChildNodes['DRUG_SCHEDULE'].NodeValue := Value;
end;

function TXMLREFILL_INFOType.Get_DRUG_SIG: UnicodeString;
begin
  Result := ChildNodes['DRUG_SIG'].Text;
end;

procedure TXMLREFILL_INFOType.Set_DRUG_SIG(Value: UnicodeString);
begin
  ChildNodes['DRUG_SIG'].NodeValue := Value;
end;

{ TXMLPATIENT_INFOType }

procedure TXMLPATIENT_INFOType.AfterConstruction;
begin
  RegisterChildNode('PATIENT_ADDRESS', TXMLPATIENT_ADDRESSType);
  inherited;
end;

function TXMLPATIENT_INFOType.Get_PATIENT_NAME: UnicodeString;
begin
  Result := ChildNodes['PATIENT_NAME'].Text;
end;

procedure TXMLPATIENT_INFOType.Set_PATIENT_NAME(Value: UnicodeString);
begin
  ChildNodes['PATIENT_NAME'].NodeValue := Value;
end;

function TXMLPATIENT_INFOType.Get_PAT_PHONE_1: UnicodeString;
begin
  Result := ChildNodes['PAT_PHONE_1'].Text;
end;

procedure TXMLPATIENT_INFOType.Set_PAT_PHONE_1(Value: UnicodeString);
begin
  ChildNodes['PAT_PHONE_1'].NodeValue := Value;
end;

function TXMLPATIENT_INFOType.Get_PAT_PHONE_2: UnicodeString;
begin
  Result := ChildNodes['PAT_PHONE_2'].Text;
end;

procedure TXMLPATIENT_INFOType.Set_PAT_PHONE_2(Value: UnicodeString);
begin
  ChildNodes['PAT_PHONE_2'].NodeValue := Value;
end;

function TXMLPATIENT_INFOType.Get_PATIENT_DOB: string;
begin
  Result := ChildNodes['PATIENT_DOB'].Text;
end;

procedure TXMLPATIENT_INFOType.Set_PATIENT_DOB(Value: string);
begin
  ChildNodes['PATIENT_DOB'].NodeValue := Value;
end;

function TXMLPATIENT_INFOType.Get_PATIENT_SSN: UnicodeString;
begin
  Result := ChildNodes['PATIENT_SSN'].Text;
end;

procedure TXMLPATIENT_INFOType.Set_PATIENT_SSN(Value: UnicodeString);
begin
  ChildNodes['PATIENT_SSN'].NodeValue := Value;
end;

function TXMLPATIENT_INFOType.Get_PATIENT_PIN: string;
begin
  Result := ChildNodes['PATIENT_PIN'].Text;
end;

procedure TXMLPATIENT_INFOType.Set_PATIENT_PIN(Value: string);
begin
  ChildNodes['PATIENT_PIN'].NodeValue := Value;
end;

function TXMLPATIENT_INFOType.Get_PATIENT_E_MAIL: UnicodeString;
begin
  Result := ChildNodes['PATIENT_E_MAIL'].Text;
end;

procedure TXMLPATIENT_INFOType.Set_PATIENT_E_MAIL(Value: UnicodeString);
begin
  ChildNodes['PATIENT_E_MAIL'].NodeValue := Value;
end;

function TXMLPATIENT_INFOType.Get_PATIENT_GENDER: UnicodeString;
begin
  Result := ChildNodes['PATIENT_GENDER'].Text;
end;

procedure TXMLPATIENT_INFOType.Set_PATIENT_GENDER(Value: UnicodeString);
begin
  ChildNodes['PATIENT_GENDER'].NodeValue := Value;
end;

function TXMLPATIENT_INFOType.Get_OUT_DIAL_PERMISSION: string;
begin
  Result := ChildNodes['OUT_DIAL_PERMISSION'].Text;
end;

procedure TXMLPATIENT_INFOType.Set_OUT_DIAL_PERMISSION(Value: string);
begin
  ChildNodes['OUT_DIAL_PERMISSION'].NodeValue := Value;
end;

function TXMLPATIENT_INFOType.Get_PATIENT_ADDRESS: IXMLPATIENT_ADDRESSType;
begin
  Result := ChildNodes['PATIENT_ADDRESS'] as IXMLPATIENT_ADDRESSType;
end;

{ TXMLPATIENT_ADDRESSType }

function TXMLPATIENT_ADDRESSType.Get_PATIENT_STREET: UnicodeString;
begin
  Result := ChildNodes['PATIENT_STREET'].Text;
end;

procedure TXMLPATIENT_ADDRESSType.Set_PATIENT_STREET(Value: UnicodeString);
begin
  ChildNodes['PATIENT_STREET'].NodeValue := Value;
end;

function TXMLPATIENT_ADDRESSType.Get_PATIENT_CITY: UnicodeString;
begin
  Result := ChildNodes['PATIENT_CITY'].Text;
end;

procedure TXMLPATIENT_ADDRESSType.Set_PATIENT_CITY(Value: UnicodeString);
begin
  ChildNodes['PATIENT_CITY'].NodeValue := Value;
end;

function TXMLPATIENT_ADDRESSType.Get_PATIENT_STATE: UnicodeString;
begin
  Result := ChildNodes['PATIENT_STATE'].Text;
end;

procedure TXMLPATIENT_ADDRESSType.Set_PATIENT_STATE(Value: UnicodeString);
begin
  ChildNodes['PATIENT_STATE'].NodeValue := Value;
end;

function TXMLPATIENT_ADDRESSType.Get_PATIENT_ZIP: string;
begin
  Result := ChildNodes['PATIENT_ZIP'].Text;
end;

procedure TXMLPATIENT_ADDRESSType.Set_PATIENT_ZIP(Value: string);
begin
  ChildNodes['PATIENT_ZIP'].NodeValue := Value;
end;

{ TXMLDOCTOR_INFOType }

procedure TXMLDOCTOR_INFOType.AfterConstruction;
begin
  RegisterChildNode('DOCTOR_ADDRESS', TXMLDOCTOR_ADDRESSType);
  inherited;
end;

function TXMLDOCTOR_INFOType.Get_DOCTOR_NAME: UnicodeString;
begin
  Result := ChildNodes['DOCTOR_NAME'].Text;
end;

procedure TXMLDOCTOR_INFOType.Set_DOCTOR_NAME(Value: UnicodeString);
begin
  ChildNodes['DOCTOR_NAME'].NodeValue := Value;
end;

function TXMLDOCTOR_INFOType.Get_DOCTOR_PHONE: UnicodeString;
begin
  Result := ChildNodes['DOCTOR_PHONE'].Text;
end;

procedure TXMLDOCTOR_INFOType.Set_DOCTOR_PHONE(Value: UnicodeString);
begin
  ChildNodes['DOCTOR_PHONE'].NodeValue := Value;
end;

function TXMLDOCTOR_INFOType.Get_DOCTOR_FAX: UnicodeString;
begin
  Result := ChildNodes['DOCTOR_FAX'].Text;
end;

procedure TXMLDOCTOR_INFOType.Set_DOCTOR_FAX(Value: UnicodeString);
begin
  ChildNodes['DOCTOR_FAX'].NodeValue := Value;
end;

function TXMLDOCTOR_INFOType.Get_DOCTOR_E_MAIL: UnicodeString;
begin
  Result := ChildNodes['DOCTOR_E_MAIL'].Text;
end;

procedure TXMLDOCTOR_INFOType.Set_DOCTOR_E_MAIL(Value: UnicodeString);
begin
  ChildNodes['DOCTOR_E_MAIL'].NodeValue := Value;
end;

function TXMLDOCTOR_INFOType.Get_DOCTOR_DEA_NUMBER: UnicodeString;
begin
  Result := ChildNodes['DOCTOR_DEA_NUMBER'].Text;
end;

procedure TXMLDOCTOR_INFOType.Set_DOCTOR_DEA_NUMBER(Value: UnicodeString);
begin
  ChildNodes['DOCTOR_DEA_NUMBER'].NodeValue := Value;
end;

function TXMLDOCTOR_INFOType.Get_DOCTOR_NPI_NUMBER: string;
begin
  Result := ChildNodes['DOCTOR_NPI_NUMBER'].Text;
end;

procedure TXMLDOCTOR_INFOType.Set_DOCTOR_NPI_NUMBER(Value: string);
begin
  ChildNodes['DOCTOR_NPI_NUMBER'].NodeValue := Value;
end;

function TXMLDOCTOR_INFOType.Get_DOCTOR_DEA: string;
begin
  Result := ChildNodes['DOCTOR_DEA'].Text;
end;

procedure TXMLDOCTOR_INFOType.Set_DOCTOR_DEA(Value: string);
begin
  ChildNodes['DOCTOR_DEA'].NodeValue := Value;
end;

function TXMLDOCTOR_INFOType.Get_DOCTOR_ADDRESS: IXMLDOCTOR_ADDRESSType;
begin
  Result := ChildNodes['DOCTOR_ADDRESS'] as IXMLDOCTOR_ADDRESSType;
end;

{ TXMLDOCTOR_ADDRESSType }

function TXMLDOCTOR_ADDRESSType.Get_DOCTOR_STREET: UnicodeString;
begin
  Result := ChildNodes['DOCTOR_STREET'].Text;
end;

procedure TXMLDOCTOR_ADDRESSType.Set_DOCTOR_STREET(Value: UnicodeString);
begin
  ChildNodes['DOCTOR_STREET'].NodeValue := Value;
end;

function TXMLDOCTOR_ADDRESSType.Get_DOCTOR_CITY: UnicodeString;
begin
  Result := ChildNodes['DOCTOR_CITY'].Text;
end;

procedure TXMLDOCTOR_ADDRESSType.Set_DOCTOR_CITY(Value: UnicodeString);
begin
  ChildNodes['DOCTOR_CITY'].NodeValue := Value;
end;

function TXMLDOCTOR_ADDRESSType.Get_DOCTOR_STATE: UnicodeString;
begin
  Result := ChildNodes['DOCTOR_STATE'].Text;
end;

procedure TXMLDOCTOR_ADDRESSType.Set_DOCTOR_STATE(Value: UnicodeString);
begin
  ChildNodes['DOCTOR_STATE'].NodeValue := Value;
end;

function TXMLDOCTOR_ADDRESSType.Get_DOCTOR_ZIP: string;
begin
  Result := ChildNodes['DOCTOR_ZIP'].Text;
end;

procedure TXMLDOCTOR_ADDRESSType.Set_DOCTOR_ZIP(Value: string);
begin
  ChildNodes['DOCTOR_ZIP'].NodeValue := Value;
end;

end.