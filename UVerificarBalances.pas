unit UVerificarBalances;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, DBCtrls, Db, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, Buttons;

type
  TFVerificarBalances = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    EditBuscarCliente: TEdit;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    QBalanceTrans: TQuery;
    QBalanceTransDetail: TQuery;
    DBEdit1: TDBEdit;
    QBalanceTransTTransactions: TFloatField;
    QBalanceTransDetailTTransactions: TFloatField;
    DBEdit2: TDBEdit;
    DSBalanceTrans: TDataSource;
    DSBalanceTransDetail: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    QTransacciones: TQuery;
    DSTrans: TDataSource;
    QTransDetail: TQuery;
    DSTransDetail: TDataSource;
    BitBtn1: TBitBtn;
    QTransDetailNumeroCliente: TIntegerField;
    QTransDetailNumeroFactura: TIntegerField;
    QTransDetailFecha: TDateField;
    QTransDetailCantidad: TFloatField;
    QTransDetailCodigo: TStringField;
    QTransDetailNumeroTransaccion: TIntegerField;
    QTransaccionesNumeroCliente: TIntegerField;
    QTransaccionesNumeroTransaccion: TIntegerField;
    QTransaccionesNumeroFactura: TIntegerField;
    QTransaccionesFecha: TDateField;
    QTransaccionesCantidad: TFloatField;
    QTransaccionesCodigo: TStringField;
    QTransaccionesPagado: TFloatField;
    QTransaccionesBalance: TFloatField;
    QTransaccionesEscojer: TStringField;
    QTransaccionesInteresFacturas: TStringField;
    Button1: TButton;
    Button2: TButton;
    QTransDetailByFactura: TQuery;
    DSTransDetailbyFactura: TDataSource;
    QTransDetailByFacturaNumeroCliente: TIntegerField;
    QTransDetailByFacturaNumeroFactura: TIntegerField;
    QTransDetailByFacturaFecha: TDateField;
    QTransDetailByFacturaCantidad: TFloatField;
    QTransDetailByFacturaCodigo: TStringField;
    QTransDetailByFacturaNumeroTransaccion: TIntegerField;
    SpeedButton1: TSpeedButton;
    DBNavigator1: TDBNavigator;
    DBText1: TDBText;
    DSClientes: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    Procedure BuscarCliente;
    procedure EditBuscarClienteExit(Sender: TObject);
    procedure EditBuscarClienteKeyPress(Sender: TObject; var Key: Char);
    procedure DSClientesDataChange(Sender: TObject; Field: TField);
    procedure DSTransDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVerificarBalances: TFVerificarBalances;
  NumeroCliente: Integer;
implementation

uses UData, UPOS, UBuscarClientesQuery, UCommonObj;

{$R *.DFM}

procedure TFVerificarBalances.FormCreate(Sender: TObject);
begin
 // Label2.Caption := Data.TClientesNombre.Value+' '+Data.TClientesApellidoPaterno.Value+
 //         ' '+Data.TClientesApellidoMaterno.Value;
          QBalanceTrans.Close;
          QBalanceTrans.Open;
          QBalanceTransDetail.Close;
          QBalanceTransDetail.Open;
          Edit2.Text := Format('%n', [QBalanceTransTTransactions.Value - QBalanceTransDetailTTransactions.Value]);
end;

procedure TFVerificarBalances.SpeedButton1Click(Sender: TObject);
begin
  if Data.TClientes.Locate('NumeroCliente', IntToStr(Data.TClientesNumeroCliente.Value) , []) then
    begin
      With FVerificarBalances do
        begin
         // Label2.Caption := Data.TClientesNombre.Value+' '+Data.TClientesApellidoPaterno.Value+
         // ' '+Data.TClientesApellidoMaterno.Value;
          QBalanceTrans.Close;
          QBalanceTrans.Open;
          QBalanceTransDetail.Close;
          QBalanceTransDetail.Open;
          Edit2.Text := CurrToStr(QBalanceTransTTransactions.Value - QBalanceTransDetailTTransactions.Value);
        end;
    end
    else
      Begin
      //  BCliente.Buscar := Edit1.Text;
      //  BuscarCliente;
      end;
end;

procedure TFVerificarBalances.Button1Click(Sender: TObject);
begin
  DBGrid2.DataSource := DSTransDetailbyFactura;
end;

procedure TFVerificarBalances.Button2Click(Sender: TObject);
begin
  DBGrid2.DataSource := DSTransDetail;
end;

Procedure TFVerificarBalances.BuscarCliente;
Var
  Token1, Token2, Token3, TmpString: String;

Begin

end;

procedure TFVerificarBalances.EditBuscarClienteExit(Sender: TObject);
begin
  Data.TClientes.Filtered := True;
  Data.TClientes.Filter := 'NombreCompleto >= ' + Chr(39) + EditBuscarCliente.Text + chr(39);
  FBuscarPatQuery := TFBuscarPatQuery.Create(Self);
  FBuscarPatQuery.ShowModal;
  FBuscarPatQuery.Free;
end;

procedure TFVerificarBalances.EditBuscarClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  //if Key = #13 then                              { if it's an enter key }
  Begin                { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
  end;
end;

procedure TFVerificarBalances.DSClientesDataChange(Sender: TObject;
  Field: TField);
begin
  QTransacciones.Close;
  QTransacciones.ParamByName('NumeroCliente').asInteger := Data.TClientesNumeroCliente.Value;
  QTransacciones.Open;
  QBalanceTrans.Close;
  QBalanceTrans.ParamByName('NumeroCliente').asInteger := Data.TClientesNumeroCliente.Value;
  QBalanceTrans.Open;
  QBalanceTransDetail.Close;
  QBalanceTransDetail.ParamByName('NumeroCliente').asInteger := Data.TClientesNumeroCliente.Value;
  QBalanceTransDetail.Open;
  Edit2.Text := Format('%m', [QBalanceTransTTransactions.Value - QBalanceTransDetailTTransactions.Value]);
end;

procedure TFVerificarBalances.DSTransDataChange(Sender: TObject;
  Field: TField);
begin
  QTransDetailByFactura.Close;
  QTransDetailByFactura.ParamByName('NumeroCliente').asInteger := Data.TClientesNumeroCliente.Value;
  QTransDetailByFactura.ParamByName('NumeroFactura').asInteger := QTransaccionesNumeroFactura.Value;
  QTransDetailByFactura.Open;
  QTransDetail.Close;
  QTransDetail.ParamByName('NumeroCliente').asInteger := Data.TClientesNumeroCliente.Value;
  QTransDetail.Open;
end;

end.
