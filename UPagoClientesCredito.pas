unit UPagoClientesCredito;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Mask, Db, DBTables, Buttons;

type
  TFTransaccionesCredito = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    EditCliente: TEdit;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    BitBtn2: TBitBtn;
    DBNavigator2: TDBNavigator;
    Panel4: TPanel;
    EditNoFactura: TEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    procedure DBEdit2Change(Sender: TObject);
    procedure EditNoFacturaChange(Sender: TObject);
    procedure EditNoFacturaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTransaccionesCredito: TFTransaccionesCredito;

implementation

uses UData;

{$R *.DFM}

procedure TFTransaccionesCredito.DBEdit2Change(Sender: TObject);
begin
if DBEdit2.Text > '' then
begin
  if Format('%10.2f', [StrToFloat(DBEdit2.Text)]) > Format('%10.2f', [Data.TClientTransactions2Cantidad.Value]) then
  begin
    ShowMessage('Cantidad exede a la cantidad de la factura...');
    DBEdit2.Text := '';
  end;
end;  
end;

procedure TFTransaccionesCredito.EditNoFacturaChange(Sender: TObject);
begin
//  Data.TClientTransactions2.Locate('NumeroFactura', EditNoFactura.Text, [LoPartialKey, LoCaseInsensitive]);
end;

procedure TFTransaccionesCredito.EditNoFacturaExit(Sender: TObject);
begin
if EditNoFactura.Text > '' then
begin
 if not Data.TClientTransactions2.Locate('NumeroFactura', Trim(EditNoFactura.Text), [])
 then ShowMessage('Factura no encontrada...')
 else
 EditNoFactura.Text := '';
end; 
end;

end.
