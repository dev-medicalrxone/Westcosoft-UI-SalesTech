unit USettlementTransactions;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls;

type
  TForm3 = class(TForm)
    DBMemo1: TDBMemo;
    DBNavigator1: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses UDataModuleSettlement;

{$R *.DFM}

end.
