unit UntLabelBC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxBarcode, frxClass, frxDBSet,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmLabelsBC = class(TForm)
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxReport1x2: TfrxReport;
    sqlVerTransaccionesFD: TFDQuery;
    dspVerTransacciones: TDataSetProvider;
    DSTrans: TDataSource;
    CDSTransactionDetails: TClientDataSet;
    CDSTransactionDetailsID: TIntegerField;
    CDSTransactionDetailsTRANSACTIONNUMBER: TIntegerField;
    CDSTransactionDetailsTRANSACTIONDATE: TSQLTimeStampField;
    CDSTransactionDetailsNUMBERITEMS: TIntegerField;
    CDSTransactionDetailsPAYMENTTYPE1: TStringField;
    CDSTransactionDetailsCREDITCARD1: TStringField;
    CDSTransactionDetailsOPENED: TStringField;
    CDSTransactionDetailsCUSTOMERID: TIntegerField;
    CDSTransactionDetailsTRANSACTIONTIME: TSQLTimeStampField;
    CDSTransactionDetailsPAID: TStringField;
    CDSTransactionDetailsPAYMENTTYPE2: TStringField;
    CDSTransactionDetailsCREDITCARD2: TStringField;
    CDSTransactionDetailsSHIFT: TSmallintField;
    CDSTransactionDetailsEMPLOYNUMBER: TStringField;
    CDSTransactionDetailsREGISTER: TSmallintField;
    CDSTransactionDetailsIDNUMBER: TIntegerField;
    CDSTransactionDetailsUPC: TStringField;
    CDSTransactionDetailsQTY: TFloatField;
    CDSTransactionDetailsVOIDED: TIntegerField;
    CDSTransactionDetailsSUBDETAIL: TStringField;
    CDSTransactionDetailsPRODDESCRIPTION: TStringField;
    CDSTransactionDetailsPRODDEPARTMENT: TStringField;
    CDSTransactionDetailsFOOD: TStringField;
    CDSTransactionDetailsMODIFIED: TSmallintField;
    CDSTransactionDetailsFECHAVENTA: TSQLTimeStampField;
    CDSTransactionDetailsSUPLIDOR: TIntegerField;
    CDSTransactionDetailsSUPERVISOR: TStringField;
    CDSTransactionDetailsTAX_MUNICIPAL: TStringField;
    CDSTransactionDetailsTAX_ESTATAL: TStringField;
    CDSTransactionDetailsBARCODEALTERNO1: TWideStringField;
    CDSTransactionDetailsBARCODEALTERNO2: TWideStringField;
    CDSTransactionDetailsNOTE: TWideStringField;
    CDSTransactionDetailsSUBDEPARTAMENTO: TSmallintField;
    CDSTransactionDetailsUTILIDAD: TBooleanField;
    CDSTransactionDetailsSUBTOTAL: TFMTBCDField;
    CDSTransactionDetailsTAX: TFMTBCDField;
    CDSTransactionDetailsCHANGE: TFMTBCDField;
    CDSTransactionDetailsPAYAMOUNT1: TFMTBCDField;
    CDSTransactionDetailsPAYAMOUNT2: TFMTBCDField;
    CDSTransactionDetailsREGTOTAL: TFMTBCDField;
    CDSTransactionDetailsFOODTOTAL: TFMTBCDField;
    CDSTransactionDetailsTOTAL: TFMTBCDField;
    CDSTransactionDetailsPRICE: TFMTBCDField;
    CDSTransactionDetailsREGPRICE: TFMTBCDField;
    CDSTransactionDetailsDISCOUNT: TFMTBCDField;
    CDSTransactionDetailsCOSTO: TFMTBCDField;
    CDSTransactionDetailsTIP: TFMTBCDField;
    Rep_Commissions: TfrxReport;
    frxDBDatasetVerTrans: TfrxDBDataset;
    frxReport125_2: TfrxReport;
    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
    procedure FormCreate(Sender: TObject);
    procedure frxReport1x2BeforePrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLabelsBC: TFrmLabelsBC;

implementation

{$R *.dfm}

uses UntDMMidas, UntCommonPOS;

procedure TFrmLabelsBC.FormCreate(Sender: TObject);
begin
  frxReport1.PrintOptions.Printer := CommonPOS.ReceiptPrinter;
end;

procedure TFrmLabelsBC.frxReport1x2BeforePrint(Sender: TfrxReportComponent);
begin
  frxReport1x2.PrintOptions.Printer := CommonPOS.ReceiptPrinter;
end;

procedure TFrmLabelsBC.frxReport1BeforePrint(Sender: TfrxReportComponent);
begin
  frxReport1.PrintOptions.Printer := CommonPOS.ReceiptPrinter;
end;

end.
