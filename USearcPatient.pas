unit USearcPatient;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, db;

type
  TFBuscarPacientes = class(TForm)
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBuscarPacientes: TFBuscarPacientes;

implementation

uses UData;

{$R *.DFM}

procedure TFBuscarPacientes.Edit1Exit(Sender: TObject);
begin
  //Data.TInventarioPiso.Locate('Descripcion', Edit1.Text, [loCaseInsensitive, loPartialKey]);
  Data.TInventarioPiso.Locate('CodigoBarra', Edit1.Text, []);
end;

end.
