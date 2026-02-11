unit UntTips;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  TFrmTips = class(TForm)
    dtpFrom: TDateTimePicker;
    dtpTo: TDateTimePicker;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    qryTips: TFDQuery;
    dspTips: TDataSetProvider;
    cdsTips: TClientDataSet;
    dsTips: TDataSource;
    cdsTipsWaiter: TWideStringField;
    cdsTipsTotalTip: TFMTBCDField;
    Panel1: TPanel;
    Button2: TButton;
    StatusBar1: TStatusBar;
    qryTotal: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTips: TFrmTips;

implementation

{$R *.dfm}

uses UntDMMidas;

procedure TFrmTips.Button1Click(Sender: TObject);
begin
  qryTips.Close;
  qryTips.sql.Text := 'select SALESMAN as Waiter, sum(total_tip) as TotalTip from TRANSACTIONHEADER WHERE ' +
  ' CONVERT(VARCHAR(10),TransactionDate,101) between ' + Chr(39) + DateToStr(dtpFrom.Date) + chr(39) +
  ' and ' + Chr(39) + DateToStr(dtpTo.Date) + chr(39) +
  ' and SALESMAN > ' + chr(39) + chr(39) + ' group by SALESMAN;';
  qryTips.Open;

  qryTotal.Close;
  qryTotal.sql.Text := 'select sum(total_tip) as TotalTip from TRANSACTIONHEADER WHERE ' +
  ' CONVERT(VARCHAR(10),TransactionDate,101) between ' + Chr(39) + DateToStr(dtpFrom.Date) + chr(39) +
  ' and ' + Chr(39) + DateToStr(dtpTo.Date) + chr(39);
  qryTotal.Open;
  StatusBar1.Panels[0].Text := 'Total Tips ' + Format('%m', [qryTotal.FieldByName('TotalTip').AsFloat]);
end;

procedure TFrmTips.FormCreate(Sender: TObject);
begin
  dtpFrom.date := Date;
  dtpTo.Date := Date;
end;

end.
