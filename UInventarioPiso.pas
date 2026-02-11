unit UInventarioPiso;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, Mask, ExtCtrls;

type
  TFInventarioPiso = class(TForm)
    DBNavigator: TDBNavigator;
    Panel1: TPanel;
    Panel2: TPanel;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FInventarioPiso: TFInventarioPiso;

implementation

uses UData;

{$R *.DFM}

end.
