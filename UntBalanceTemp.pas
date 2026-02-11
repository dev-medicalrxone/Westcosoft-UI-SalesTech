unit UntBalanceTemp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TFrmTempBalance = class(TForm)
    DBGrid1: TDBGrid;
    qBalanceTemp: TFDQuery;
    dspBalanceTemp: TDataSetProvider;
    cdsBalanceTemp: TClientDataSet;
    dsBalanceTemp: TDataSource;
    cdsBalanceTempCUSTOMER: TIntegerField;
    cdsBalanceTempAMOUNT: TBCDField;
    cdsBalanceTempBALANCE: TBCDField;
    cdsBalanceTempCODE: TStringField;
    cdsBalanceTempID: TAutoIncField;
    FDQuery1: TFDQuery;
    Panel1: TPanel;
    Button1: TButton;
    cdsBalanceTempTRANSNO: TIntegerField;
    StatusBar1: TStatusBar;
    Button3: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTempBalance: TFrmTempBalance;

implementation

{$R *.dfm}

uses UntDMMidas, UntSearchCust2;

procedure TFrmTempBalance.Button1Click(Sender: TObject);
begin
  With DMMidas do
  begin
    FDQuery1.SQL.Text := 'delete from balance_temp';
    FDQuery1.ExecSQL;
    CDSClientTransactions.Close;
    CDSClientTransactions.CommandText := 'Select * from clienttransactions where clientno = ' + CDSClientesNUMEROCLIENTE.AsString + ' order by transno';
    CDSClientTransactions.Open;
    while not CDSClientTransactions.eof do
    begin
      FDQuery1.SQL.Text := 'INSERT INTO BALANCE_TEMP ([CUSTOMER] ,[AMOUNT] , [CODE], [TRANSNO])  VALUES (' +
                    DMMidas.CDSClientTransactionsCLIENTNO.asString + ',' +
                    DMMidas.CDSClientTransactionsAMOUNT.AsString + ',' +
                    //DMMidas.CDSClientTransactionsBALANCE.AsString + ',' +
                    chr(39) + DMMidas.CDSClientTransactionsCODE.AsString + chr(39) + ',' +
                    CDSClientTransactionsTRANSNO.AsString + ')';
      FDQuery1.ExecSQL;
      CDSClientTransactions.Next;
    end;
  end;
  cdsBalanceTemp.Close;
  cdsBalanceTemp.CommandText := 'Select * from balance_temp order by ID';
  cdsBalanceTemp.Open;
end;

procedure TFrmTempBalance.Button2Click(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSClientes.Close;
    CDSClientes.CommandText := 'Select * from Pacientes order by NumeroCliente'; //where LimiteCredito  > 0
    CDSClientes.Open;
    while not CDSClientes.Eof do
    begin
      CDSClientTransactions.Close;
      CDSClientTransactions.CommandText := 'select * from CLIENTTRANSACTIONS where CLIENTNO = ' + CDSClientesNUMEROCLIENTE.asString;
      CDSClientTransactions.Open;
      if CDSClientTransactions.RecordCount > 0 then
      begin
        CDSClientTransactions.Edit;
        CDSClientTransactionsBALANCE.Value := 0;
        CDSClientTransactionsNO_SEGURO_SOCIAL.Value := '';
        CDSClientTransactions.Post;
      end;
      CDSClientes.Next;
    end;
  end;
end;

procedure TFrmTempBalance.Button3Click(Sender: TObject);
begin
  FrmSearchCust2 := TFrmSearchCust2.Create(Application);
  With FrmSearchCust2 do
  begin
    ShowModal;
    StatusBar1.Panels[0].Text := DMMidas.CDSClientesNombreCompleto2.Value;
    FrmSearchCust2 := Nil;
    Free;
  end;
end;

procedure TFrmTempBalance.FormCreate(Sender: TObject);
begin
  {FDQuery1.SQL.Text := 'delete from balance_temp';
  FDQuery1.ExecSQL;
  cdsBalanceTemp.Close;
  cdsBalanceTemp.CommandText := 'Select * from balance_temp order by ID';
  cdsBalanceTemp.Open;}
end;

end.
