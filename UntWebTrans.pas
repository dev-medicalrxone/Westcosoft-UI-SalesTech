unit UntWebTrans;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ToolWin, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TFrmWebTrans = class(TForm)
    Panel1: TPanel;
    ToolBar1: TToolBar;
    DBGrid1: TDBGrid;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    BitBtn1: TBitBtn;
    DBText1: TDBText;
    Label1: TLabel;
    cxDateEdit1: TDateTimePicker;
    procedure ToolButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmWebTrans: TFrmWebTrans;

implementation

uses untMain, UntDMMidas, UntQueries;

{$R *.dfm}

procedure TFrmWebTrans.ToolButton1Click(Sender: TObject);
begin
 { With DMMidas do
  begin
    if Queries.InternetAvailable = True then
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
          DACDSDataTable.Last;
        end;
        //Statusbar1.simpletext := ('Done in  : ' + timetostr(now) + '-'+ timetostr(st) +' seconds');
      Except
        //Statusbar1.simpletext := ('Last command was not executed.');
      end;
    end;
  end; }
end;
procedure TFrmWebTrans.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  DMMidas.DACDSDataTable.Close;
end;

end.
