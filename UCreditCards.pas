unit UCreditCards;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, Db, Grids, DBGrids, ExtCtrls;

type
  TFCreditCard = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DSCreditCard: TDataSource;
    DBNavigator1: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCreditCard: TFCreditCard;

implementation

uses UData;

{$R *.DFM}

end.
