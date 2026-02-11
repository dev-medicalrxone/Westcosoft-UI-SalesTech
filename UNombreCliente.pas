unit UNombreCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids;

type
  TFNombreCliente = class(TForm)
    Panel1: TPanel;
    EditBuscarCliente: TEdit;
    Label1: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    procedure EditBuscarClienteExit(Sender: TObject);
    procedure EditBuscarClienteEnter(Sender: TObject);
    procedure EditBuscarClienteKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNombreCliente: TFNombreCliente;

implementation

uses UData, UBuscarClientesQuery;

{$R *.DFM}

procedure TFNombreCliente.EditBuscarClienteExit(Sender: TObject);
begin
  Data.TClientes.Filter := '';
  if EditBuscarCliente.Text > ' ' then
  begin
    if RadioButton1.Checked then
    begin
      Data.TClientes.Filter := '';
      Data.TClientes.IndexName := 'NombreCompleto';
      Data.TClientes.Filter := 'NombreCompleto >= ' + Chr(39) + EditBuscarCliente.Text + chr(39);
    end;
    if RadioButton2.Checked then
    begin
      Data.TClientes.Filter := '';
      Data.TClientes.IndexName := 'Telefono';
      Data.TClientes.Filter := 'Telefono >= ' + Chr(39) + EditBuscarCliente.Text + chr(39);
    end;
    if RadioButton3.Checked then
    begin
      Data.TClientes.Filter := '';
      Data.TClientes.IndexName := 'Cardholder_ID';
      Data.TClientes.Filter := 'Cardholder_ID >= ' + Chr(39) + EditBuscarCliente.Text + chr(39);
    end;
  end;
  BitBtn1.Enabled := True;
  BitBtn2.Enabled := True;
  DBGrid1.SetFocus;
end;



procedure TFNombreCliente.EditBuscarClienteEnter(Sender: TObject);
begin
  BitBtn1.Enabled := False;
  BitBtn2.Enabled := False;
end;

procedure TFNombreCliente.EditBuscarClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then
  Begin
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

end.
