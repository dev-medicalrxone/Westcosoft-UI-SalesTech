unit UBuscarSuplidor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, Grids, DBGrids, ExtCtrls;

type
  TFBuscarSuplidor = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBuscarSuplidor: TFBuscarSuplidor;

implementation

uses UData, UntSuppliers, DB, UDMSuplidores;

{$R *.DFM}

procedure TFBuscarSuplidor.SpeedButton1Click(Sender: TObject);
begin
  FSuppliers := TFSuppliers.Create(self);
  FSuppliers.ShowModal;
  FSuppliers.Release;
end;

procedure TFBuscarSuplidor.Edit1Change(Sender: TObject);
begin
  DataModuleSuplidores.QryBuscarSuplidor.Locate('Suplidor',Edit1.Text,[loPartialKey,loCaseInsensitive]);
end;

procedure TFBuscarSuplidor.FormCreate(Sender: TObject);
begin
  DataModuleSuplidores.QryBuscarSuplidor.Open;
end;

procedure TFBuscarSuplidor.FormDestroy(Sender: TObject);
begin
  DataModuleSuplidores.QryBuscarSuplidor.Close;
end;

end.
