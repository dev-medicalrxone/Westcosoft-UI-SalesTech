unit UEmpleados;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, DBTables, Mask, ExtCtrls, Grids, DBGrids;

type
  TFEmpleados = class(TForm)
    ScrollBox: TScrollBox;
    Label1: TLabel;
    EditUserName: TDBEdit;
    Label2: TLabel;
    EditPassword: TDBEdit;
    DBNavigator: TDBNavigator;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FEmpleados: TFEmpleados;

implementation

uses UData;

{$R *.DFM}

end.
