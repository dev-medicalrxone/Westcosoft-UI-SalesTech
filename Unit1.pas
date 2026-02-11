unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Db, DBTables;

type
  TForm1 = class(TForm)
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBNavigator1: TDBNavigator;
    Table1: TTable;
    DataSource1: TDataSource;
    Table1NumeroCliente: TIntegerField;
    Table1NumeroTransaccion: TIntegerField;
    Table1NumeroFactura: TIntegerField;
    Table1Fecha: TDateField;
    Table1Cantidad: TFloatField;
    Table1Codigo: TStringField;
    Table1Pagado: TFloatField;
    Table1Balance: TFloatField;
    Table1Escojer: TStringField;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses UData;

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Data.TClientTransactions.First;
  While not Form1.Table1.Eof do
    Begin
      Form1.Table1.Edit;
      Form1.Table1Balance.Value := Form1.Table1Cantidad.Value;
      Form1.Table1.Post;
      Form1.Table1.Next;
    end;
end;

end.
