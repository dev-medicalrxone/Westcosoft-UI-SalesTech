unit UntSearchInvoice;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ExtCtrls, DBCtrls, Db, Buttons, ComCtrls,
  ToolWin, Mask, jpeg;

type
  TFrmSearchInvoices = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    Image1: TImage;
    DBText1: TDBText;
    DBText2: TDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSearchInvoices: TFrmSearchInvoices;

implementation

uses UntDMMidas;

{$R *.DFM}

end.
