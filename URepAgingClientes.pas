unit URepAgingClientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, QuickRpt, Qrctrls, ExtCtrls;

type
  TFRepAgingClientes = class(TForm)
    QuickRep1: TQuickRep;
    QryTotal: TQuery;
    FloatField8: TFloatField;
    QryTotal90_: TQuery;
    FloatField6: TFloatField;
    QryTotal30_60: TQuery;
    FloatField5: TFloatField;
    QryTotal_30: TQuery;
    FloatField4: TFloatField;
    QryTotal60_90: TQuery;
    FloatField7: TFloatField;
    Qry90_: TQuery;
    FloatField3: TFloatField;
    Qry30_60: TQuery;
    FloatField1: TFloatField;
    Qry_30: TQuery;
    Qry_30TTotal: TFloatField;
    Qry60_90: TQuery;
    FloatField2: TFloatField;
    QryDestroyAgingTables: TQuery;
    QryCreateAgingTables: TQuery;
    DtSrcSupAgingMaster: TDataSource;
    QRptAgingClientes: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    SummaryBand1: TQRBand;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRLabel10: TQRLabel;
    QryAgingDetail: TQuery;
    QryAgingDetailtotalFac: TFloatField;
    QryAgingDetailFecha: TDateField;
    QryAgingDetailPay30_59: TCurrencyField;
    QryAgingDetailPay60_89: TCurrencyField;
    QryAgingDetailPay90_: TCurrencyField;
    QryAgingDetailNoCliente: TIntegerField;
    QryAgingDetailNoFactura: TIntegerField;
    QryAgingDetailTotalPagos: TFloatField;
    QryAgingDetailTotalPagar: TCurrencyField;
    QrySupAgingMaster: TQuery;
    QrySupAgingMasterNombre: TStringField;
    QrySupAgingMasterApellidoPaterno: TStringField;
    QrySupAgingMasterApellidoMaterno: TStringField;
    QrySupAgingMasterCardholder_ID: TStringField;
    QrySupAgingMasterFechaNacimiento: TDateField;
    QrySupAgingMasterHistorialMedico: TStringField;
    QrySupAgingMasterPlanMedico: TStringField;
    QrySupAgingMasterDoctorPrincipal: TStringField;
    QrySupAgingMasterSexo: TSmallintField;
    QrySupAgingMasterRelacion: TSmallintField;
    QrySupAgingMasterNoGrupo: TStringField;
    QrySupAgingMasterPersonCode: TStringField;
    QrySupAgingMasterDireccion1: TStringField;
    QrySupAgingMasterDireccion2: TStringField;
    QrySupAgingMasterUltimaTransaccion: TDateField;
    QrySupAgingMasterTelefono: TStringField;
    QrySupAgingMasterDeuda: TFloatField;
    QrySupAgingMasterLimiteCredito: TFloatField;
    QrySupAgingMasterNumeroCliente: TIntegerField;
    QrySupAgingMasterCubierta: TStringField;
    QrySupAgingMasterCodigoPostal: TStringField;
    QrySupAgingMasterDeudaLayaway: TFloatField;
    QrySupAgingMasterUltimTransLayaway: TDateField;
    QrySupAgingMasterFax: TStringField;
    QrySupAgingMasterCelular: TStringField;
    QryAgingDetailTotals: TQuery;
    QryAgingDetailTotalsTTotal: TFloatField;
    QryAgingDetailPay_30: TCurrencyField;
    QRExpr1: TQRExpr;
    QInsertIntoSupTotal: TQuery;
    QInsertIntoPayTotal: TQuery;
    QUpdateSupTotal: TQuery;
    QCreateTablePayTotal: TQuery;
    procedure QryAgingDetailCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepAgingClientes: TFRepAgingClientes;

implementation

{$R *.DFM}

procedure TFRepAgingClientes.QryAgingDetailCalcFields(DataSet: TDataSet);
begin
  QryAgingDetailPay_30.Value := 0;
  QryAgingDetailPay30_59.Value := 0;
  QryAgingDetailPay60_89.Value := 0;
  QryAgingDetailPay90_.Value := 0;

  If Date - QryAgingDetailFecha.Value < 30 then
    QryAgingDetailPay_30.Value := (QryAgingDetailtotalfac.Value - QryAgingDetailTotalPagos.Value);
  If (Date - QryAgingDetailFecha.Value >= 30) AND (Date - QryAgingDetailFecha.Value < 60) then
    QryAgingDetailPay30_59.Value := (QryAgingDetailtotalfac.Value - QryAgingDetailTotalPagos.Value);
  If (Date - QryAgingDetailFecha.Value >= 60) AND (Date - QryAgingDetailFecha.Value < 90) then
    QryAgingDetailPay60_89.Value := (QryAgingDetailtotalfac.Value - QryAgingDetailTotalPagos.Value);
  If Date - QryAgingDetailFecha.Value >= 90 then
    QryAgingDetailPay90_.Value := (QryAgingDetailtotalfac.Value - QryAgingDetailTotalPagos.Value);
end;

procedure TFRepAgingClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
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

end.
