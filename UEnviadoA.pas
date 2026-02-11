unit UEnviadoA;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TFEnviadoA = class(TForm)
    Panel1: TPanel;
    Editdir1: TEdit;
    Editentregado: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    Editdir2: TEdit;
    Label4: TLabel;
    EditEnviadoA: TEdit;
    EditPO: TEdit;
    Label3: TLabel;
    EditBuscarCliente: TEdit;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    procedure EditBuscarClienteExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEnviadoA: TFEnviadoA;

implementation

uses UPOS, UCommonObj, UData, UntSearchCust;

{$R *.DFM}

procedure TFEnviadoA.EditBuscarClienteExit(Sender: TObject);
begin
  if EditBuscarCliente.Text > '' then
    begin
      //BCliente.Buscar := EditBuscarCliente.Text;
      Data.TClientes.Filter := '';
      Data.TClientes.Filter := 'NombreCompleto >= ' + Chr(39) + EditBuscarCliente.Text + chr(39);
      //FPOS.BuscarCliente;
      FNombreCliente := tFNombreCliente.Create(self);
      With FNombreCliente do
       Begin
         ShowModal;
         EditBuscarCliente.Text := Data.TClientesNombreCompleto.Value;
       end;
      FNombreCliente.Free; 
    end;
end;

end.
