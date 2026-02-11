unit UntEditarInventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, Grids, DBGrids, Data.DB;

type
  TFrmEditarInventario = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEditarInventario: TFrmEditarInventario;

implementation

uses UntDMMidas, UntCommon, UntQueries;

{$R *.dfm}

procedure TFrmEditarInventario.FormCreate(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSInventarioPiso.Close;
    CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where recetario = ' +#39 + 'P'+ #39 + ' order by descripcion';
    CDSInventarioPiso.Open;
  end;
end;

procedure TFrmEditarInventario.Button1Click(Sender: TObject);
begin
  DMMidas.CDSInventarioPiso.ApplyUpdates(-1);
end;

procedure TFrmEditarInventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DMMidas.CDSInventarioPiso.ApplyUpdates(-1);
end;

procedure TFrmEditarInventario.Edit1Change(Sender: TObject);
begin
  Queries.OpenInventory(Edit1.Text, '',false);
end;

end.
