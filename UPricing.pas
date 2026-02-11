unit UPricing;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Grids, DBGrids, Buttons, ExtCtrls, db;

type
  TFPricing = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    EditBuscarArticulo: TEdit;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPricing: TFPricing;

implementation

uses UntDMMidas, UntQueries;

{$R *.DFM}

end.
