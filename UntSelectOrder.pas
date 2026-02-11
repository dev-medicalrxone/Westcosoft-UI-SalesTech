unit UntSelectOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TFrmSelectOrder = class(TForm)
    Panel2: TPanel;
    Edit1: TEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    DtSrcDisplay: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelectOrder: TFrmSelectOrder;

implementation

uses UntDMMidas;

{$R *.dfm}

procedure TFrmSelectOrder.FormCreate(Sender: TObject);
begin
  With DMMidas.CDSClientTransactions do
  begin
    Active := False;
    CommandText := 'Select * From ClientTransactions Where Code = ''DB'' and '
                   + 'ClientNo = ' + DMMidas.CDSClientesNUMEROCLIENTE.AsString
                   + ' and Amount > PaidAmount Order By DateOfTrans Asc';
    Active := True;
  end;
end;

end.
