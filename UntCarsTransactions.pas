unit UntCarsTransactions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Datasnap.DBClient,
  Datasnap.Provider, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmCarsTransactions = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    DBGrid3: TDBGrid;
    Panel3: TPanel;
    btnCancel: TButton;
    btnOk: TButton;
    Label1: TLabel;
    Label2: TLabel;
    qryTransHeader: TFDQuery;
    dspTransHeader: TDataSetProvider;
    dsHeader: TDataSource;
    cdsTransHeader: TClientDataSet;
    cdsTransHeaderPAYMENTTYPE1: TStringField;
    cdsTransHeaderTRANSACTIONDATE: TSQLTimeStampField;
    cdsTransHeaderNUMBERITEMS: TIntegerField;
    cdsTransHeaderCREDITCARD1: TStringField;
    cdsTransHeaderOPENED: TStringField;
    cdsTransHeaderVOIDED: TIntegerField;
    cdsTransHeaderCUSTOMERID: TIntegerField;
    cdsTransHeaderTRANSACTIONTIME: TSQLTimeStampField;
    cdsTransHeaderPAID: TStringField;
    cdsTransHeaderPAYMENTTYPE2: TStringField;
    cdsTransHeaderCREDITCARD2: TStringField;
    cdsTransHeaderSHIFT: TSmallintField;
    cdsTransHeaderREGISTER: TSmallintField;
    cdsTransHeaderEMPLOYNUMBER: TStringField;
    cdsTransHeaderDELIVERYADDRESS1: TStringField;
    cdsTransHeaderDELIVERYADDRESS2: TStringField;
    cdsTransHeaderDELIVERYNAME: TStringField;
    cdsTransHeaderDELIVEREDBY: TStringField;
    cdsTransHeaderPONUMBER: TStringField;
    cdsTransHeaderDELIVERYPHONE: TStringField;
    cdsTransHeaderID: TIntegerField;
    cdsTransHeaderTRANSACTIONNUMBER: TAutoIncField;
    cdsTransHeaderPAYMENTTYPE3: TStringField;
    cdsTransHeaderPAYMENTTYPE4: TStringField;
    cdsTransHeaderCREDITCARD3: TStringField;
    cdsTransHeaderCREDITCARD4: TStringField;
    cdsTransHeaderDELIVERED: TStringField;
    cdsTransHeaderSUPERVISOR: TStringField;
    cdsTransHeaderCUSTOMER: TWideStringField;
    cdsTransHeaderPAYAMOUNT1: TBCDField;
    cdsTransHeaderPAYAMOUNT2: TBCDField;
    cdsTransHeaderTAX: TBCDField;
    cdsTransHeaderTOTAL_TAX: TBCDField;
    cdsTransHeaderTAX_ESTATAL: TBCDField;
    cdsTransHeaderSUBTOTAL: TBCDField;
    cdsTransHeaderTAX_SERVICIO: TBCDField;
    cdsTransHeaderPAYAMOUNT3: TBCDField;
    cdsTransHeaderPAYAMOUNT4: TBCDField;
    cdsTransHeaderREGTOTAL: TBCDField;
    cdsTransHeaderTOTAL: TBCDField;
    cdsTransHeaderCHANGE: TBCDField;
    cdsTransHeaderFOODTOTAL: TBCDField;
    cdsTransHeaderTAX_FOOD_MUNICIPAL: TBCDField;
    cdsTransHeaderTAX_FOOD_ESTATAL: TBCDField;
    cdsTransHeaderTOTAL_DISCOUNT: TBCDField;
    cdsTransHeaderTIP: TBCDField;
    cdsTransHeaderTIP2: TBCDField;
    cdsTransHeaderTOTAL_TIP: TBCDField;
    cdsTransHeaderAMOUNT_TENDERED1: TBCDField;
    cdsTransHeaderAMOUNT_TENDERED2: TBCDField;
    cdsTransHeaderCASHBACK: TBCDField;
    cdsTransHeaderCAR_ID: TIntegerField;
    qryTransDetail: TFDQuery;
    dspTransDetail: TDataSetProvider;
    dsTransDetail: TDataSource;
    cdsTransDetail: TClientDataSet;
    cdsTransDetailIDNUMBER: TIntegerField;
    cdsTransDetailTRANSACTIONNUMBER: TIntegerField;
    cdsTransDetailUPC: TStringField;
    cdsTransDetailVOIDED: TIntegerField;
    cdsTransDetailSUBDETAIL: TStringField;
    cdsTransDetailPRODDESCRIPTION: TStringField;
    cdsTransDetailPRODDEPARTMENT: TStringField;
    cdsTransDetailFOOD: TStringField;
    cdsTransDetailMODIFIED: TSmallintField;
    cdsTransDetailFECHAVENTA: TSQLTimeStampField;
    cdsTransDetailSUPLIDOR: TIntegerField;
    cdsTransDetailID: TIntegerField;
    cdsTransDetailPRODUCTNO: TIntegerField;
    cdsTransDetailTAX_ESTATAL: TStringField;
    cdsTransDetailTAX_MUNICIPAL: TStringField;
    cdsTransDetailQTY: TFloatField;
    cdsTransDetailOPENED: TStringField;
    cdsTransDetailGROUP_PROD: TStringField;
    cdsTransDetailREGISTER: TSmallintField;
    cdsTransDetailSUPERVISOR: TStringField;
    cdsTransDetailPATROCINIO: TSmallintField;
    cdsTransDetailSUBDEPARTAMENTO: TSmallintField;
    cdsTransDetailBARCODEALTERNO1: TWideStringField;
    cdsTransDetailBARCODEALTERNO2: TWideStringField;
    cdsTransDetailBAG_NUMBER: TIntegerField;
    cdsTransDetailOTC_NUMBER: TIntegerField;
    cdsTransDetailUTILIDAD: TBooleanField;
    cdsTransDetailTRANS_TIME: TSQLTimeStampField;
    cdsTransDetailTAX_SERVICIO: TBooleanField;
    cdsTransDetailTAX: TBCDField;
    cdsTransDetailCOSTO: TBCDField;
    cdsTransDetailPRICE: TBCDField;
    cdsTransDetailTOTAL: TBCDField;
    cdsTransDetailREGTOTAL: TBCDField;
    cdsTransDetailREGPRICE: TBCDField;
    cdsTransDetailAWP: TBCDField;
    cdsTransDetailTOTAL_VALUE: TBCDField;
    cdsTransDetailDISCOUNT: TBCDField;
    cdsTransDetailNOTE: TWideStringField;
    cdsTransDetailINVCONTROL_RECIPE: TBooleanField;
    cdsTransDetailTERMINO: TWideStringField;
    cdsTransDetailMAIN_COURSE: TBooleanField;
    cdsTransDetailKITCHEN: TBooleanField;
    cdsTransDetailPRINTED: TBooleanField;
    cdsTransDetailMAIN_COURSE_ID: TIntegerField;
    cdsTransDetailBUTTON_QTY: TBCDField;
    cdsTransDetailTAB_SAVED: TBooleanField;
    qCars: TFDQuery;
    dspCars: TDataSetProvider;
    dsCars: TDataSource;
    cdsCars: TClientDataSet;
    cdsCarsNUMEROCLIENTE: TIntegerField;
    cdsCarsCAR_ID: TAutoIncField;
    cdsCarsLICENCE_PLATE: TWideStringField;
    cdsCarsBIN_NUMBER: TWideStringField;
    cdsCarsYEAR: TDateField;
    cdsCarsCOLOR: TWideStringField;
    cdsCarsNOTE: TMemoField;
    cdsCarsBRAND: TWideStringField;
    cdsCarsMODEL: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsCarsAfterScroll(DataSet: TDataSet);
    procedure cdsTransHeaderAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCarsTransactions: TFrmCarsTransactions;

implementation

{$R *.dfm}

uses UntDMMidas;

procedure TFrmCarsTransactions.cdsCarsAfterScroll(DataSet: TDataSet);
begin
  cdsTransHeader.Close;
  cdsTransHeader.CommandText := 'Select * from TransactionHeader where CAR_ID = ' + cdsCarsCAR_ID.AsString;
  cdsTransHeader.Open;
end;

procedure TFrmCarsTransactions.cdsTransHeaderAfterScroll(DataSet: TDataSet);
begin
  if cdsTransHeaderTRANSACTIONNUMBER.Value > 0 then
  begin
    cdsTransDetail.Close;
    cdsTransDetail.CommandText := 'Select * from TransactionDetail where NumeroTransaccion = ' + cdsTransHeaderTRANSACTIONNUMBER.AsString;
    cdsTransDetail.Open;
  end;
end;

procedure TFrmCarsTransactions.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmCarsTransactions := Nil;
end;

end.
