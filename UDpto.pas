unit UDpto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, DBCtrls, ExtCtrls;

type
  TFDepartamentos = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDepartamentos: TFDepartamentos;

implementation

uses UData;

{$R *.DFM}

end.
