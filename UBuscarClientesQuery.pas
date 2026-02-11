unit UBuscarClientesQuery;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ExtCtrls, Buttons, DBCtrls;

type
  TFBuscarPatQuery = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure DBGrid2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBuscarPatQuery: TFBuscarPatQuery;

implementation

uses UData;

{$R *.DFM}

procedure TFBuscarPatQuery.DBGrid2Exit(Sender: TObject);
begin
  if Data.TClientTransBalance.Value = Data.TClientTransCantidad.Value then
    begin
//      DBGrid2.PaintTo(Handle, 10, 10);
    end;
end;

end.
