unit UntDMCentralCredit;

interface

uses
  SysUtils, Classes, Provider, SqlExpr, DB, DBClient,
  registry, dialogs, FMTBcd, WideStrings, DBXMsSQL;

type
  TDM = class(TDataModule)
    DSClientes: TDataSource;
    DSClientTransactions: TDataSource;
    SQLSPADD_CLIENT: TSQLStoredProc;
    CDSTrHeadAdHoc: TSQLQuery;
    QTransDetail: TSQLQuery;
    QClientes: TSQLDataSet;
    DPClientes: TDataSetProvider;
    CDSClientes: TClientDataSet;
    CDSClientesSEGURO_SOCIAL: TStringField;
    CDSClientesBALANCE: TFloatField;
    CDSClientes2: TClientDataSet;
    DPClientes2: TDataSetProvider;
    DataSource1: TDataSource;
    QClientes2: TSQLDataSet;
    CDSClientes2SEGURO_SOCIAL: TStringField;
    CDSClientes2BALANCE: TFloatField;
    QClientTransactions: TSQLDataSet;
    DPClientTransactions: TDataSetProvider;
    CDSClientTransactions: TClientDataSet;
    CDSClientTransactionsCODE: TStringField;
    CDSClientTransactionsAMOUNT: TFloatField;
    CDSClientTransactionsATTENDEDBY: TStringField;
    CDSClientTransactionsCLIENTNO: TIntegerField;
    CDSClientTransactionsTRANSNO: TIntegerField;
    CDSClientTransactionsPAIDAMOUNT: TFloatField;
    CDSClientTransactionsNO_SEGURO_SOCIAL: TStringField;
    CDSClientTransactionsNO_FARMACIA: TIntegerField;
    QTransView: TSQLDataSet;
    DSClientTransactionsView: TDataSource;
    CDSClientTransactionsView: TClientDataSet;
    DPClientTransactionsView: TDataSetProvider;
    SQLQuery: TSQLQuery;
    CDSClientTransactionsViewCODE: TStringField;
    CDSClientTransactionsViewAMOUNT: TFloatField;
    CDSClientTransactionsViewATTENDEDBY: TStringField;
    CDSClientTransactionsViewCLIENTNO: TIntegerField;
    CDSClientTransactionsViewTRANSNO: TIntegerField;
    CDSClientTransactionsViewPAIDAMOUNT: TFloatField;
    CDSClientTransactionsViewNO_SEGURO_SOCIAL: TStringField;
    CDSClientTransactionsViewNO_FARMACIA: TIntegerField;
    QClientTransactionsCODE: TStringField;
    QClientTransactionsAMOUNT: TFloatField;
    QClientTransactionsATTENDEDBY: TStringField;
    QClientTransactionsCLIENTNO: TIntegerField;
    QClientTransactionsTRANSNO: TIntegerField;
    QClientTransactionsPAIDAMOUNT: TFloatField;
    QClientTransactionsNO_SEGURO_SOCIAL: TStringField;
    QClientTransactionsNO_FARMACIA: TIntegerField;
    QClientTransactionsDATEOFTRANS: TSQLTimeStampField;
    CDSClientTransactionsDATEOFTRANS: TSQLTimeStampField;
    CDSClientTransactionsViewDATEOFTRANS: TSQLTimeStampField;
    CDSTransactionDetails: TClientDataSet;
    CDSTransactionDetailsID: TIntegerField;
    CDSTransactionDetailsTRANSACTIONNUMBER: TIntegerField;
    CDSTransactionDetailsTRANSACTIONDATE: TSQLTimeStampField;
    CDSTransactionDetailsNUMBERITEMS: TIntegerField;
    CDSTransactionDetailsSUBTOTAL: TFloatField;
    CDSTransactionDetailsTAX: TFloatField;
    CDSTransactionDetailsCHANGE: TFloatField;
    CDSTransactionDetailsPAYMENTTYPE1: TStringField;
    CDSTransactionDetailsCREDITCARD1: TStringField;
    CDSTransactionDetailsOPENED: TStringField;
    CDSTransactionDetailsCUSTOMERID: TIntegerField;
    CDSTransactionDetailsTRANSACTIONTIME: TSQLTimeStampField;
    CDSTransactionDetailsPAID: TStringField;
    CDSTransactionDetailsPAYMENTTYPE2: TStringField;
    CDSTransactionDetailsCREDITCARD2: TStringField;
    CDSTransactionDetailsPAYAMOUNT1: TFloatField;
    CDSTransactionDetailsPAYAMOUNT2: TFloatField;
    CDSTransactionDetailsREGTOTAL: TFloatField;
    CDSTransactionDetailsFOODTOTAL: TFloatField;
    CDSTransactionDetailsSHIFT: TSmallintField;
    CDSTransactionDetailsEMPLOYNUMBER: TStringField;
    CDSTransactionDetailsREGISTER: TSmallintField;
    CDSTransactionDetailsIDNUMBER: TIntegerField;
    CDSTransactionDetailsUPC: TStringField;
    CDSTransactionDetailsQTY: TIntegerField;
    CDSTransactionDetailsTOTAL: TFloatField;
    CDSTransactionDetailsVOIDED: TIntegerField;
    CDSTransactionDetailsSUBDETAIL: TStringField;
    CDSTransactionDetailsPRODDESCRIPTION: TStringField;
    CDSTransactionDetailsPRODDEPARTMENT: TStringField;
    CDSTransactionDetailsFOOD: TStringField;
    CDSTransactionDetailsPRICE: TFloatField;
    CDSTransactionDetailsREGPRICE: TFloatField;
    CDSTransactionDetailsMODIFIED: TSmallintField;
    CDSTransactionDetailsDISCOUNT: TFloatField;
    CDSTransactionDetailsCOSTO: TFloatField;
    CDSTransactionDetailsFECHAVENTA: TSQLTimeStampField;
    CDSTransactionDetailsSUPLIDOR: TIntegerField;
    DSTrans: TDataSource;
    SQLConnection1: TSQLConnection;
    QBalanceInicial: TSQLQuery;
    CDSCCREPT: TClientDataSet;
    DSCCREPT: TDataSource;
    DSPCCREPT: TDataSetProvider;
    QCCREPT: TSQLDataSet;
    CDSCCREPTBALANCE: TFloatField;
    CDSCCREPTCLIENTE: TStringField;
    CDSCCREPTSSN: TStringField;
    SP_INSERT_TRANSACTION: TSQLStoredProc;
    QClientTransactionsBALANCE: TFloatField;
    CDSClientTransactionsBALANCE: TFloatField;
    QCredito: TSQLQuery;
    QCreditoTotalCredito: TFloatField;
    FIXDEBT: TSQLStoredProc;
    QTransDetailCOLUMN1: TIntegerField;
    CDSULT_TRANS: TClientDataSet;
    DSULT_TRANS: TDataSource;
    DSPULT_TRANS: TDataSetProvider;
    QULT_TRANS: TSQLDataSet;
    QULT_TRANSAMOUNT: TFloatField;
    QULT_TRANSULT_TRANS: TSQLTimeStampField;
    CDSULT_TRANSAMOUNT: TFloatField;
    CDSULT_TRANSULT_TRANS: TSQLTimeStampField;
    QULT_TRANSCODE: TStringField;
    CDSULT_TRANSCODE: TStringField;
    QSP_DEUDA: TSQLStoredProc;
    procedure CDSClientTransactionsAfterDelete(DataSet: TDataSet);
    procedure SQLConnection2BeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure CDSClientesAfterPost(DataSet: TDataSet);
    procedure CDSCCREPTAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses untMain, UntDMMidas, UntEstadoCuentaCC;

{$R *.dfm}

procedure TDM.CDSClientTransactionsAfterDelete(DataSet: TDataSet);
begin
  CDSClientTransactions.ApplyUpdates(-1);
end;

procedure TDM.SQLConnection2BeforeConnect(Sender: TObject);
Var
  Registro: TRegistry;
  ServerName: String;
begin
  ServerName := '';
  Registro := TRegistry.Create;
  //Registro.RootKey := HKEY_LOCAL_MACHINE;
  Registro.OpenKey('\SOFTWARE\WOW6432Node\FarmaTec2000', True);
  try
    ServerName := Registro.ReadString('ServerNameFarmatecCC');
  except
  end;
  if ServerName = '' then
  begin
    ServerName := InputBox('Enter Server Name:', 'Server', 'wescomweb');
    Registro.WriteString('ServerNameFarmatecCC', ServerName);
  end;
  With SQLConnection1 do
  begin
    Params.Values['Database'] := ServerName;
  end;
  Registro.Free;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
Var
  Registro: TRegistry;
  ServerName: String;
  WebCredit: Boolean;
begin
{  Registro := TRegistry.Create;
  with Registro do
  begin
    OpenKey('\FarmaTec2000\Opciones', True);
    try
      WebCredit := ReadBool('CreditoCentralizado');
    except
      WebCredit := False;
    end;
  end;
    ServerName := '';
    Registro := TRegistry.Create;
    Registro.OpenKey('\FarmaTec2000\Opciones', True);
    try
      ServerName := Registro.ReadString('ServerNameCC');
    except
    end;
    if ServerName = '' then
    begin
      ServerName := InputBox('Enter Server Name:', 'Server', 'wescomweb');
      Registro.WriteString('ServerNameCC', ServerName);
    end;
    With SQLConnection1 do
    begin
      Params.Values['DriverName'] := 'MSSQL';
      Params.Values['HostName'] := ServerName;
      Params.Values['DataBase'] := 'CentralCredit';
      Params.Values['UserName'] := 'sa';
      Params.Values['password'] := 'agabriel';
      Open;
    end;
    Registro.Free;
   //CDSClientes.Active := True;}
end;

procedure TDM.CDSClientesAfterPost(DataSet: TDataSet);
begin
  CDSClientes.ApplyUpdates(-1);
end;

procedure TDM.CDSCCREPTAfterPost(DataSet: TDataSet);
begin
  CDSCCREPT.ApplyUpdates(0);
end;

end.
