unit UntDMFixCredit;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, Provider, DBClient;

type
  TDMFixCredit = class(TDataModule)
    QCreditos: TSQLQuery;
    QDebitos: TSQLQuery;
    DSClientes: TDataSource;
    CDSClientes: TClientDataSet;
    CDSClientesNOMBRE: TStringField;
    CDSClientesCARDHOLDERID: TStringField;
    CDSClientesFECHANACIMIENTO: TSQLTimeStampField;
    CDSClientesSEXO: TIntegerField;
    CDSClientesDIRECCION1: TStringField;
    CDSClientesDIRECCION2: TStringField;
    CDSClientesULTTRANS: TSQLTimeStampField;
    CDSClientesDEUDA: TFloatField;
    CDSClientesLIMITECREDITO: TFloatField;
    CDSClientesNUMEROCLIENTE: TIntegerField;
    CDSClientesINTERES: TStringField;
    CDSClientesINFOADICIONAL: TStringField;
    CDSClientesDIRECCIONFISICA: TStringField;
    CDSClientesAPELLIDOPATERNO: TStringField;
    CDSClientesAPELLIDOMATERNO: TStringField;
    CDSClientesTELEFONO: TStringField;
    CDSClientesCODIGOPOSTAL: TStringField;
    CDSClientesFAX: TStringField;
    CDSClientesCELULAR: TStringField;
    CDSClientesEMAIL: TStringField;
    CDSClientesLAWAY: TFloatField;
    CDSClientesESTADO: TStringField;
    CDSClientesAUSPICIO: TFloatField;
    CDSClientesSOCIO: TStringField;
    CDSClientesORIENTACION: TStringField;
    CDSClientesIDENTIFICACION: TStringField;
    CDSClientesSMOKER: TStringField;
    CDSClientesLOCATION: TStringField;
    CDSClientesEMPLOYER_ID: TStringField;
    CDSClientesPATIENT_ID_QUAL: TStringField;
    CDSClientesPREGNANCY_IDICATOR: TStringField;
    CDSClientesFECHA_HIPPA: TSQLTimeStampField;
    CDSClientesDEUDA_WEB: TFloatField;
    CDSClientesLANGUAGE: TStringField;
    CDSClientesNombreCompleto2: TStringField;
    CDSClientesDeudaCentralizada: TFloatField;
    DSPClientes: TDataSetProvider;
    QClientes: TSQLDataSet;
    QClientesNOMBRE: TStringField;
    QClientesCARDHOLDERID: TStringField;
    QClientesFECHANACIMIENTO: TSQLTimeStampField;
    QClientesSEXO: TIntegerField;
    QClientesDIRECCION1: TStringField;
    QClientesDIRECCION2: TStringField;
    QClientesULTTRANS: TSQLTimeStampField;
    QClientesDEUDA: TFloatField;
    QClientesLIMITECREDITO: TFloatField;
    QClientesNUMEROCLIENTE: TIntegerField;
    QClientesINTERES: TStringField;
    QClientesINFOADICIONAL: TStringField;
    QClientesDIRECCIONFISICA: TStringField;
    QClientesAPELLIDOPATERNO: TStringField;
    QClientesAPELLIDOMATERNO: TStringField;
    QClientesTELEFONO: TStringField;
    QClientesCODIGOPOSTAL: TStringField;
    QClientesFAX: TStringField;
    QClientesCELULAR: TStringField;
    QClientesEMAIL: TStringField;
    QClientesLAWAY: TFloatField;
    QClientesESTADO: TStringField;
    QClientesAUSPICIO: TFloatField;
    QClientesSOCIO: TStringField;
    QClientesORIENTACION: TStringField;
    QClientesIDENTIFICACION: TStringField;
    QClientesSMOKER: TStringField;
    QClientesLOCATION: TStringField;
    QClientesEMPLOYER_ID: TStringField;
    QClientesPATIENT_ID_QUAL: TStringField;
    QClientesPREGNANCY_IDICATOR: TStringField;
    QClientesFECHA_HIPPA: TSQLTimeStampField;
    QClientesDEUDA_WEB: TFloatField;
    QClientesLANGUAGE: TStringField;
    QCreditosTCredit: TFloatField;
    QDebitosTDebit: TFloatField;
    QUPDATECLIENTTRANS: TSQLQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMFixCredit: TDMFixCredit;

implementation

uses UntDMMidas;

{$R *.dfm}

end.
