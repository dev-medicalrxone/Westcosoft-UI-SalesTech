unit untRptCommission;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, frxClass, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxDBSet, Datasnap.DBClient,
  Datasnap.Provider, frCoreClasses;

type
  TfrmComReport = class(TForm)
    dsCommission: TfrxDBDataset;
    qCommission: TFDQuery;
    rptCommission: TfrxReport;
    qSalesperson: TFDQuery;
    dsSalesPersons: TfrxDBDataset;
    dspSalesPerson: TDataSetProvider;
    dsSalesPerson: TDataSource;
    cdsSalesPerson: TClientDataSet;
    dspCommission: TDataSetProvider;
    dsComission: TDataSource;
    cdsCommission: TClientDataSet;
    cdsSalesPersonusername: TStringField;
    cdsSalesPersoniniciales: TStringField;
    cdsCommissionsalesman: TWideStringField;
    cdsCommissionTotalCommission: TFMTBCDField;
    cdsCommissionNombreCompleto: TStringField;
    procedure rptCommissionBeforePrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComReport: TfrmComReport;

implementation

{$R *.dfm}

uses UntDMMidas, UntPasswords, UntEscojaFecha;

procedure TfrmComReport.rptCommissionBeforePrint(Sender: TfrxReportComponent);
Var
  Memo1: TfrxMemoView;
begin
  Memo1 := rptCommission.FindObject('MemoFromTo') as TfrxMemoView;
  Memo1.Memo.Text := 'From ' + DateToStr(frmEscojaFechas.Desde.Date) + ' to ' +  DateToStr(frmEscojaFechas.hasta.Date);
end;

end.
