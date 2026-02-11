unit UTipoTrans;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, Db;

type
  TFTransacciones = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    DSTodasTrans: TDataSource;
    DSTransCash: TDataSource;
    DSFacturas: TDataSource;
    DSFacturasLayaway: TDataSource;
    DSTransVisa: TDataSource;
    DSTransMC: TDataSource;
    DSTransDisc: TDataSource;
    DSTransAmEx: TDataSource;
    DSTransSavi: TDataSource;
    DSTransChec: TDataSource;
    DSTransCred: TDataSource;
    DSTransAbon: TDataSource;
    DSClientTransDetail: TDataSource;
    DSPaidout: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTransacciones: TFTransacciones;

implementation

{$R *.DFM}

end.
