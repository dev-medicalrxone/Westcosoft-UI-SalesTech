unit UEditarFacturasSup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCtrls, ExtCtrls, Grids, DBGrids, Db, DBTables;

type
  TFEditarFacturasSup = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    TPagos: TTable;
    DSPagos: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEditarFacturasSup: TFEditarFacturasSup;

implementation

uses UDMSuplidores;

{$R *.DFM}

procedure TFEditarFacturasSup.FormShow(Sender: TObject);
begin
  FEditarFacturasSup.TPagos.Last;
end;

end.
