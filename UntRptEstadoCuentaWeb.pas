unit UntRptEstadoCuentaWeb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Data.DB;

type
  TFrmEstadoCuentaWeb = class(TForm)
    DSClientes: TDataSource;
    procedure DSClientesDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEstadoCuentaWeb: TFrmEstadoCuentaWeb;

implementation

uses UntDMMidas, UntQueries;

{$R *.dfm}

procedure TFrmEstadoCuentaWeb.DSClientesDataChange(Sender: TObject; Field: TField);
begin
  With DMMidas do
  begin
    {if Queries.InternetAvailable = True then
    begin
      Try
      tcpc.Host := '63.245.104.121';
      tcpc.Port := 8090;
        with DACDSDataTable do begin
          Close;
          DataRequestCall.MethodName := 'GetData_Farmacia_UnknowUser';
          DataRequestCall.ParamByName('UserName').asstring := 'wescom';
          DataRequestCall.ParamByName('Password').asstring := 'wescom';
          DataRequestCall.ParamByName('SQL').AsString := 'Select Code, Amount, DateOfTrans as Fecha, TransNo from ClientTransactions where  No_Seguro_social = ' + #39 + Trim(CDSClientesCARDHOLDERID.Value) + #39 + ' order by DateOfTrans, TransNo' ;
          DataRequestCall.ParamByName('MaxRows').AsInteger := -1;
          DataRequestCall.ParamByName('FarmaciaID').asstring := 'Feliciano2';
          Open;
          DACDSDataTable.FieldByName('Amount').DisplayFormat := '#.00';
          //DACDSDataTable.Last;
          //ppDBPipeline2.Fields[0].AsDouble;
          //ppSubReport1. ppDBText2
        end;
        //Statusbar1.simpletext := ('Done in  : ' + timetostr(now) + '-'+ timetostr(st) +' seconds');
      Except
        //Statusbar1.simpletext := ('Last command was not executed.');
      end;
    end;}
  end;
end;

end.
