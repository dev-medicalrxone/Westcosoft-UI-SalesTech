unit UntEstadoCuentaCC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, Provider, DB,
  DBClient;

type
  TFrmEstadoCuentaCC = class(TForm)
    DSClientes: TDataSource;
    CDSClientesLocal: TClientDataSet;
    CDSClientesLocalNOMBRE: TStringField;
    CDSClientesLocalCARDHOLDERID: TStringField;
    CDSClientesLocalFECHANACIMIENTO: TSQLTimeStampField;
    CDSClientesLocalSEXO: TIntegerField;
    CDSClientesLocalDIRECCION1: TStringField;
    CDSClientesLocalDIRECCION2: TStringField;
    CDSClientesLocalULTTRANS: TSQLTimeStampField;
    CDSClientesLocalDEUDA: TFloatField;
    CDSClientesLocalLIMITECREDITO: TFloatField;
    CDSClientesLocalNUMEROCLIENTE: TIntegerField;
    CDSClientesLocalINTERES: TStringField;
    CDSClientesLocalINFOADICIONAL: TStringField;
    CDSClientesLocalDIRECCIONFISICA: TStringField;
    CDSClientesLocalAPELLIDOPATERNO: TStringField;
    CDSClientesLocalAPELLIDOMATERNO: TStringField;
    CDSClientesLocalTELEFONO: TStringField;
    CDSClientesLocalCODIGOPOSTAL: TStringField;
    CDSClientesLocalFAX: TStringField;
    CDSClientesLocalCELULAR: TStringField;
    CDSClientesLocalEMAIL: TStringField;
    CDSClientesLocalLAWAY: TFloatField;
    CDSClientesLocalESTADO: TStringField;
    CDSClientesLocalAUSPICIO: TFloatField;
    CDSClientesLocalSOCIO: TStringField;
    CDSClientesLocalORIENTACION: TStringField;
    CDSClientesLocalIDENTIFICACION: TStringField;
    CDSClientesLocalSMOKER: TStringField;
    CDSClientesLocalLOCATION: TStringField;
    CDSClientesLocalEMPLOYER_ID: TStringField;
    CDSClientesLocalPATIENT_ID_QUAL: TStringField;
    CDSClientesLocalPREGNANCY_IDICATOR: TStringField;
    CDSClientesLocalFECHA_HIPPA: TSQLTimeStampField;
    CDSClientesLocalDEUDA_WEB: TFloatField;
    CDSClientesLocalLANGUAGE: TStringField;
    CDSClientesLocalNombreCompleto2: TStringField;
    CDSClientesLocalDeudaCentralizada: TFloatField;
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
    DSClientesCC: TDataSource;
    SQLDataSet1: TSQLDataSet;
    DPClientes: TDataSetProvider;
    CDSClientesCC: TClientDataSet;
    CDSClientesCCSEGURO_SOCIAL: TStringField;
    CDSClientesCCBALANCE: TFloatField;
    CDSClientesCCNombreCompleto2: TStringField;
    DSTransCredito: TDataSource;
    SQTransCredito: TSQLDataSet;
    DSPTransCredito: TDataSetProvider;
    CDSTransCredito: TClientDataSet;
    DSTransDebito: TDataSource;
    SQTransDebito: TSQLDataSet;
    DSPTransDebito: TDataSetProvider;
    CDSTransDebito: TClientDataSet;
    CDSTransCreditoTCredito: TFloatField;
    CDSTransDebitoTDebito: TFloatField;
    procedure CDSClientesLocalCalcFields(DataSet: TDataSet);
    procedure DSClientesDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEstadoCuentaCC: TFrmEstadoCuentaCC;

implementation

uses UntDMMidas, UntDMCentralCredit;


{$R *.dfm}

procedure TFrmEstadoCuentaCC.CDSClientesLocalCalcFields(DataSet: TDataSet);
begin
  if CDSClientesLocalAPELLIDOMATERNO.Value > '' then
    CDSClientesLocalNombreCompleto2.Value := Trim(CDSClientesLocalAPELLIDOPATERNO.Value) + ' ' + Trim(CDSClientesLocalAPELLIDOMATERNO.Value) +', ' +Trim(CDSClientesLocalNOMBRE.Value)
  else
    CDSClientesLocalNombreCompleto2.Value := Trim(CDSClientesLocalAPELLIDOPATERNO.Value) +', ' +Trim(CDSClientesLocalNOMBRE.Value);

end;

procedure TFrmEstadoCuentaCC.DSClientesDataChange(Sender: TObject;
  Field: TField);
var
  FechaDesde, FechaHasta: String;

begin
 { With DMMidas do
  begin
    CDSClientesCC.Close;
    CDSClientesCC.CommandText := 'Select * from Clientes where Seguro_Social = ' + #39 + Trim(CDSClientesLocalCARDHOLDERID.Value) + #39;
    CDSClientesCC.Open;
    if CDSClientesLocalNUMEROCLIENTE.Value < 1  then
    begin
      LabelSSN.Caption := CDSClientesCCSEGURO_SOCIAL.Value;
      LabelSSN.Visible := True;
    end
    else
      LabelSSN.Visible := False;
    With DM do
    begin
      QTransDetail.Close;
      QTransDetail.SQL.Text := 'Select max(TRANSNO) from clienttransactions where NO_SEGURO_SOCIAL = ' + #39 + Trim(CDSClientesCCSEGURO_SOCIAL.Value) + #39 +' and CODE = ' + #39 + 'CR' +#39;
      QTransDetail.Open;
      CDSULT_TRANS.Close;
      if QTransDetailCOLUMN1.AsString > '' then
        CDSULT_TRANS.CommandText := 'SELECT AMOUNT, DATEOFTRANS AS ULT_TRANS, CODE FROM CLIENTTRANSACTIONS WHERE TRANSNO = ' + QTransDetailCOLUMN1.AsString
      else
        CDSULT_TRANS.CommandText := 'SELECT AMOUNT, DATEOFTRANS AS ULT_TRANS, CODE FROM CLIENTTRANSACTIONS WHERE TRANSNO = 11111111111111111';
      CDSULT_TRANS.Open;
      
      CDSClientTransactions.Close;
      CDSClientTransactions.CommandText := 'Select * from clienttransactions where NO_SEGURO_SOCIAL = ' + #39 + Trim(CDSClientesCCSEGURO_SOCIAL.Value) + #39 + ' and balance > 0 and CODE = ' + #39 + 'DB' + #39 + ' ORDER BY DATEOFTRANS';
      CDSClientTransactions.Open;
    end;
  end;  }
end;

end.
