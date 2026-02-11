unit UEmploees;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TFEmploees = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEmploees: TFEmploees;

implementation

uses UData;

{$R *.DFM}

end.
