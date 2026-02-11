unit UntIncExpense;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, DB, ExtCtrls, DBCtrls;

type
  TFIncExp = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Edit1: TEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBNavigator1: TDBNavigator;
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FIncExp: TFIncExp;

implementation

uses UData;

{$R *.DFM}

procedure TFIncExp.Edit1Change(Sender: TObject);
begin
  Data.TIncExp.Locate('Descripcion',Edit1.text,[loPartialKey,loCaseInsensitive]);
end;

end.
