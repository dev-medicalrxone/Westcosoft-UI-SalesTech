unit URepAging;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, QuickRpt, Qrctrls, ExtCtrls;

type
  TFRepAging = class(TForm)
    QRptAging: TQuickRep;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QrySupAgingMaster: TQuery;
    QryCreateAgingTables: TQuery;
    QryDestroyAgingTables: TQuery;
    DtSrcSupAgingMaster: TDataSource;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QrySupAgingMasterNumeroSuplidor: TSmallintField;
    QrySupAgingMasterSuplidor: TStringField;
    QrySupAgingMasterDireccion1: TStringField;
    QrySupAgingMasterDireccion2: TStringField;
    QrySupAgingMasterTelefono: TStringField;
    QrySupAgingMasterFax: TStringField;
    QrySupAgingMasterZipCode: TStringField;
    QrySupAgingMasterPorcientoDescuento: TFloatField;
    QrySupAgingMasterDiasDescuento: TSmallintField;
    QrySupAgingMasterContacto: TStringField;
    QrySupAgingMasterNumeroCuenta: TStringField;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QryAgingDetailTotals: TQuery;
    QRDBText6: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText8: TQRDBText;
    QryAgingDetailTotalsTTotal: TFloatField;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    Qry_30: TQuery;
    Qry_30TTotal: TFloatField;
    Qry30_60: TQuery;
    FloatField1: TFloatField;
    Qry60_90: TQuery;
    FloatField2: TFloatField;
    Qry90_: TQuery;
    FloatField3: TFloatField;
    QRDBText7: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRSysData3: TQRSysData;
    SummaryBand1: TQRBand;
    QryTotal_30: TQuery;
    FloatField4: TFloatField;
    QryTotal30_60: TQuery;
    FloatField5: TFloatField;
    QryTotal90_: TQuery;
    FloatField6: TFloatField;
    QryTotal60_90: TQuery;
    FloatField7: TFloatField;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QryTotal: TQuery;
    FloatField8: TFloatField;
    QRDBText19: TQRDBText;
    QRLabel10: TQRLabel;
    QryAgingDetail: TQuery;
    QryAgingDetailsuplidor: TIntegerField;
    QryAgingDetailFactura: TStringField;
    QryAgingDetailtotalFac: TFloatField;
    QryAgingDetailtotalAjuste: TFloatField;
    QryAgingDetailtotalPagar: TFloatField;
    QryAgingDetailTotalPagos: TFloatField;
    QryAgingDetailFecha: TDateField;
    QryAgingDetailPay30_59: TCurrencyField;
    QryAgingDetailPay_30: TCurrencyField;
    QryAgingDetailPay60_89: TCurrencyField;
    QryAgingDetailPay90_: TCurrencyField;
    QryAgingDetailPay_302: TCurrencyField;
    QInsertIntoSupTotal: TQuery;
    QCreateTablePayTotal: TQuery;
    QInsertIntoPayTotal: TQuery;
    QUpdateSupTotal: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QryAgingDetailCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepAging: TFRepAging;

implementation

{$R *.DFM}

procedure TFRepAging.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryAgingDetail.Close;
  QrySupAgingMaster.Close;
  QryAgingDetailTotals.Close;
  Qry_30.Close;
  Qry30_60.Close;
  Qry60_90.Close;
  Qry90_.Close;
  QryTotal_30.Close;
  QryTotal30_60.Close;
  QryTotal60_90.Close;
  QryTotal90_.Close;
  QryTotal.Close;
  Action := caFree;
end;

procedure TFRepAging.QryAgingDetailCalcFields(DataSet: TDataSet);
begin
  QryAgingDetailPay_30.Value := 0;
  QryAgingDetailPay30_59.Value := 0;
  QryAgingDetailPay60_89.Value := 0;
  QryAgingDetailPay90_.Value := 0;
  QryAgingDetailPay_302.Value := 0;

  If Date - QryAgingDetailFecha.Value < 30 then
    QryAgingDetailPay_30.Value := (QryAgingDetailtotalfac.Value - QryAgingDetailTotalPagos.Value);

  If Date - QryAgingDetailFecha.Value < 30 then
    QryAgingDetailPay_302.Value := (QryAgingDetailtotalfac.Value - QryAgingDetailTotalPagos.Value - QryAgingDetailtotalAjuste.Value);


  If (Date - QryAgingDetailFecha.Value >= 30) AND (Date - QryAgingDetailFecha.Value < 60) then
    QryAgingDetailPay30_59.Value := (QryAgingDetailtotalfac.Value - QryAgingDetailTotalPagos.Value - QryAgingDetailtotalAjuste.Value);
  If (Date - QryAgingDetailFecha.Value >= 60) AND (Date - QryAgingDetailFecha.Value < 90) then
    QryAgingDetailPay60_89.Value := (QryAgingDetailtotalfac.Value - QryAgingDetailTotalPagos.Value - QryAgingDetailtotalAjuste.Value);
  //If Date - QryAgingDetailFecha.Value >= 90 then
  //  QryAgingDetailPay90_.Value := (QryAgingDetailtotalPagar.Value  - QryAgingDetailTotalPagos.Value - QryAgingDetailtotalAjuste.Value);
  If Date - QryAgingDetailFecha.Value >= 90 then
    QryAgingDetailPay90_.Value := (QryAgingDetailtotalFac.Value  - QryAgingDetailTotalPagos.Value - QryAgingDetailtotalAjuste.Value);

end;

end.
