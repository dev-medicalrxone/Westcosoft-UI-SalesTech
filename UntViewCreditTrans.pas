unit UntViewCreditTrans;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, Provider, SqlExpr, DB, DBClient,
   StdCtrls, Buttons;

type
  TFrmViewCreditTrans = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    DSTrans: TDataSource;
    BitBtn1: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmViewCreditTrans: TFrmViewCreditTrans;

implementation

uses UntDMCentralCredit, UntDMMidas;

{$R *.dfm}

end.
