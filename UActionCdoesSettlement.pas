unit UActionCdoesSettlement;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, Grids, DBGrids, Mask, ExtCtrls;

type
  TFActionCodesSettlement = class(TForm)
    ScrollBox: TScrollBox;
    Label1: TLabel;
    EditCode: TDBEdit;
    Label2: TLabel;
    EditVerbiage: TDBEdit;
    Label3: TLabel;
    EditDescription: TDBEdit;
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
  FActionCodesSettlement: TFActionCodesSettlement;

implementation

uses UData;

{$R *.DFM}

end.
