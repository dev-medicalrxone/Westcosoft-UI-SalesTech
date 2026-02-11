unit Untlabel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppBarCod, ppPrnabl, ppCtrls, ppBands, ppCache, DB, IBODataset, FMTBcd,
  SqlExpr, Provider, DBClient;

type
  TFrmLabels = class(TForm)
    ppReport1: TppReport;
    ppDBPipelineOrderHeader: TppDBPipeline;
    ppDBPipelineOrderDetail: TppDBPipeline;
    ppDBPipelineSuplidores: TppDBPipeline;
    DSOrderHeader: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBBarCode1: TppDBBarCode;
    ppDBText3: TppDBText;
    ppLabel1: TppLabel;
    DSOrderDetail1: TDataSource;
    CDSOrderHeader: TClientDataSet;
    DSPOrderHeader: TDataSetProvider;
    SQLDSOrderHeader: TSQLDataSet;
    CDSOrderDetail: TClientDataSet;
    SQLDSOrderDetail: TSQLDataSet;
    DSPOrder_Detail: TDataSetProvider;
    SQLDSOrderHeaderORDERNUMBER: TStringField;
    SQLDSOrderHeaderTOTAL: TFloatField;
    SQLDSOrderHeaderRECEIVED: TFloatField;
    SQLDSOrderHeaderORDERDATE: TSQLTimeStampField;
    SQLDSOrderHeaderDESCRIPTION: TStringField;
    SQLDSOrderHeaderSUPPLIER: TIntegerField;
    SQLDSOrderHeaderSTATUS: TStringField;
    SQLDSOrderHeaderDUEDATE: TSQLTimeStampField;
    SQLDSOrderHeaderPAYMENTDATE: TSQLTimeStampField;
    SQLDSOrderHeaderCHECKNUMBER: TStringField;
    SQLDSOrderHeaderRECEIVEDDATE: TSQLTimeStampField;
    SQLDSOrderHeaderUSUARIO: TStringField;
    SQLDSOrderHeaderTRANSFERED: TStringField;
    SQLDSOrderHeaderMANEJO: TFloatField;
    SQLDSOrderHeaderPORCIENTO_GANANCIA: TFloatField;
    SQLDSOrderHeaderORDERID: TIntegerField;
    SQLDSOrderHeaderPO_NO: TStringField;
    SQLDSOrderHeaderINFO_ADICIONAL: TStringField;
    SQLDSOrderHeaderCOMPLETE: TStringField;
    SQLDSOrderDetailUPC: TStringField;
    SQLDSOrderDetailCOSTRECEIVED: TFloatField;
    SQLDSOrderDetailREASON: TStringField;
    SQLDSOrderDetailPRICE: TFloatField;
    SQLDSOrderDetailTAMANO: TFloatField;
    SQLDSOrderDetailPACKAGESIZE: TSmallintField;
    SQLDSOrderDetailQTYRECEIVED: TFloatField;
    SQLDSOrderDetailLOTE: TStringField;
    SQLDSOrderDetailFECHA_EXPIRACION: TSQLTimeStampField;
    SQLDSOrderDetailDESCRIPTION: TStringField;
    SQLDSOrderDetailPRODUCTID: TIntegerField;
    SQLDSOrderDetailCOSTORDERED: TFloatField;
    SQLDSOrderDetailRECETARIO: TStringField;
    SQLDSOrderDetailESPECIAL: TFloatField;
    SQLDSOrderDetailCOMESPECIAL: TSQLTimeStampField;
    SQLDSOrderDetailTERMESPECIAL: TSQLTimeStampField;
    SQLDSOrderDetailAWP: TFloatField;
    SQLDSOrderDetailPAQUETES_FRASCOS: TIntegerField;
    SQLDSOrderDetailTOTAL_VALUE: TFloatField;
    SQLDSOrderDetailQTYORDERED: TFloatField;
    SQLDSOrderDetailGROUP_PRODUCTNO: TIntegerField;
    SQLDSOrderDetailORDERID: TIntegerField;
    SQLDSOrderDetailDETAILID: TIntegerField;
    CDSOrderHeaderORDERNUMBER: TStringField;
    CDSOrderHeaderTOTAL: TFloatField;
    CDSOrderHeaderRECEIVED: TFloatField;
    CDSOrderHeaderORDERDATE: TSQLTimeStampField;
    CDSOrderHeaderDESCRIPTION: TStringField;
    CDSOrderHeaderSUPPLIER: TIntegerField;
    CDSOrderHeaderSTATUS: TStringField;
    CDSOrderHeaderDUEDATE: TSQLTimeStampField;
    CDSOrderHeaderPAYMENTDATE: TSQLTimeStampField;
    CDSOrderHeaderCHECKNUMBER: TStringField;
    CDSOrderHeaderRECEIVEDDATE: TSQLTimeStampField;
    CDSOrderHeaderUSUARIO: TStringField;
    CDSOrderHeaderTRANSFERED: TStringField;
    CDSOrderHeaderMANEJO: TFloatField;
    CDSOrderHeaderPORCIENTO_GANANCIA: TFloatField;
    CDSOrderHeaderORDERID: TIntegerField;
    CDSOrderHeaderPO_NO: TStringField;
    CDSOrderHeaderINFO_ADICIONAL: TStringField;
    CDSOrderHeaderCOMPLETE: TStringField;
    CDSOrderDetailUPC: TStringField;
    CDSOrderDetailCOSTRECEIVED: TFloatField;
    CDSOrderDetailREASON: TStringField;
    CDSOrderDetailPRICE: TFloatField;
    CDSOrderDetailTAMANO: TFloatField;
    CDSOrderDetailPACKAGESIZE: TSmallintField;
    CDSOrderDetailQTYRECEIVED: TFloatField;
    CDSOrderDetailLOTE: TStringField;
    CDSOrderDetailFECHA_EXPIRACION: TSQLTimeStampField;
    CDSOrderDetailDESCRIPTION: TStringField;
    CDSOrderDetailPRODUCTID: TIntegerField;
    CDSOrderDetailCOSTORDERED: TFloatField;
    CDSOrderDetailRECETARIO: TStringField;
    CDSOrderDetailESPECIAL: TFloatField;
    CDSOrderDetailCOMESPECIAL: TSQLTimeStampField;
    CDSOrderDetailTERMESPECIAL: TSQLTimeStampField;
    CDSOrderDetailAWP: TFloatField;
    CDSOrderDetailPAQUETES_FRASCOS: TIntegerField;
    CDSOrderDetailTOTAL_VALUE: TFloatField;
    CDSOrderDetailQTYORDERED: TFloatField;
    CDSOrderDetailGROUP_PRODUCTNO: TIntegerField;
    CDSOrderDetailORDERID: TIntegerField;
    CDSOrderDetailDETAILID: TIntegerField;
    procedure ppReport1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLabels: TFrmLabels;

implementation

uses UntDMMidas;

{$R *.dfm}

procedure TFrmLabels.ppReport1BeforePrint(Sender: TObject);
begin
  ppLabel1.Caption := '#: ' + CDSOrderHeaderORDERNUMBER.Value;
end;

end.
