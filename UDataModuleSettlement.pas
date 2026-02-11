unit UDataModuleSettlement;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  TDataModuleSettlement = class(TDataModule)
    TCreditDebitSettlement: TTable;
    DSSettlement: TDataSource;
    QBorrarSettlement: TQuery;
    TCreditDebitSettlementData: TMemoField;
    TCreditDebitSettlementTransaction: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleSettlement: TDataModuleSettlement;

implementation

{$R *.DFM}

end.
