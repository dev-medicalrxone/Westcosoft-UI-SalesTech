unit UEditarBalances;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, Grids, DBGrids, ExtCtrls, Db, DBTables, StdCtrls;

type
  TFEditarBalances = class(TForm)
    DSPacientes: TDataSource;
    TPacientes: TTable;
    TClientTransactions: TTable;
    DSClientTransactions: TDataSource;
    TPacientesNombre: TStringField;
    TPacientesApellidoPaterno: TStringField;
    TPacientesApellidoMaterno: TStringField;
    TPacientesCardholder_ID: TStringField;
    TPacientesFechaNacimiento: TDateField;
    TPacientesHistorialMedico: TStringField;
    TPacientesPlanMedico: TStringField;
    TPacientesDoctorPrincipal: TStringField;
    TPacientesSexo: TSmallintField;
    TPacientesRelacion: TSmallintField;
    TPacientesNoGrupo: TStringField;
    TPacientesPersonCode: TStringField;
    TPacientesDireccion1: TStringField;
    TPacientesDireccion2: TStringField;
    TPacientesUltimaTransaccion: TDateField;
    TPacientesTelefono: TStringField;
    TPacientesDeuda: TFloatField;
    TPacientesLimiteCredito: TFloatField;
    TPacientesNumeroCliente: TIntegerField;
    TPacientesCubierta: TStringField;
    TPacientesCodigoPostal: TStringField;
    TPacientesDeudaLayaway: TFloatField;
    TPacientesUltimTransLayaway: TDateField;
    TPacientesFax: TStringField;
    TPacientesCelular: TStringField;
    TPacientesInteres: TStringField;
    TClientTransactionsNumeroCliente: TIntegerField;
    TClientTransactionsNumeroTransaccion: TIntegerField;
    TClientTransactionsNumeroFactura: TIntegerField;
    TClientTransactionsFecha: TDateField;
    TClientTransactionsCantidad: TFloatField;
    TClientTransactionsCodigo: TStringField;
    TClientTransactionsPagado: TFloatField;
    TClientTransactionsBalance: TFloatField;
    TClientTransactionsEscojer: TStringField;
    TClientTransactionsInteresFacturas: TStringField;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    DBGrid3: TDBGrid;
    DBNavigator2: TDBNavigator;
    Button1: TButton;
    Panel4: TPanel;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    TClientTransactionsDetail: TTable;
    DSClientTransactionsDetail: TDataSource;
    TClientTransactionsDetailNumeroFactura: TIntegerField;
    TClientTransactionsDetailNumeroTransaccion: TIntegerField;
    TClientTransactionsDetailCantidad: TFloatField;
    TClientTransactionsDetailFecha: TDateField;
    TClientTransactionsDetailCodigo: TStringField;
    TClientTransactionsDetailNumeroCliente: TIntegerField;
    procedure TClientTransactionsDetailAfterPost(DataSet: TDataSet);
    procedure TClientTransactionsAfterPost(DataSet: TDataSet);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEditarBalances: TFEditarBalances;

implementation

uses UData, UPagoClientesCredito, UPOS, UBuscarClientesQuery;

{$R *.DFM}

procedure TFEditarBalances.TClientTransactionsDetailAfterPost(
  DataSet: TDataSet);
//var
//  NoCliente, NoTrans, NoFactura: Integer;
//  Balance: Double;
//  CantidadDetail: Double;

Var
  NoFactura, NoCliente: Integer;
  //Balance: Double;
begin
  NoCliente := TPacientesNumeroCliente.Value;
  NoFactura := TClientTransactionsDetailNumeroFactura.Value;

  Data.QCreditos.Close;
  Data.QCreditos.ParamByName('NumeroCliente').AsInteger := NoCliente;
  Data.QCreditos.Open;

  Data.QCreditosPorFactura.Close;
  Data.QCreditosPorFactura.ParamByName('NumeroFactura').AsInteger := NoFactura;
  Data.QCreditosPorFactura.Open;

  //Balance := Data.QCreditosPorFacturaTCredito.Value;
  //actualizar la transaccion debito (principal)
  Data.UpdateTrans.Close;
  Data.UpdateTrans.ParamByName('Balance').AsFloat := TClientTransactionsCantidad.Value - Data.QCreditosPorFacturaTCredito.Value;
  Data.UpdateTrans.ParamByName('NumeroFactura').AsInteger := NoFactura;
  Data.UpdateTrans.ExecSQL;


  Data.QCantidadDebito.Close;
  Data.QCantidadDebito.ParamByName('NumeroCliente').AsInteger := NoCliente;
  Data.QCantidadDebito.Open;

  Data.QUpdateClientDebt.Close;
  Data.QUpdateClientDebt.ParamByName('NumeroCliente').AsInteger := NoCliente;
  Data.QUpdateClientDebt.ParamByName('Debt').AsFloat := Data.QCantidadDebitoTDebito.Value - Data.QCreditosTCredito.Value;
  Data.QUpdateClientDebt.ParamByName('Date').AsDate := Date;
  Data.QUpdateClientDebt.ExecSQL;
  TPacientes.Refresh;
  TClientTransactions.Refresh;
  TClientTransactionsDetail.Refresh;


{  NoCliente :=  TPacientesNumeroCliente.Value;
  Balance := TClientTransactionsCantidad.Value;
  NoFactura := TClientTransactionsNumeroFactura.Value;
  NoTrans := TClientTransactionsNumeroTransaccion.Value;
  CantidadDetail := TClientTransactionsDetailCantidad.Value;
  Data.TClientTransDetail2.Refresh;
  Data.TClientes.Refresh;





  Data.QCreditos.Close;
  Data.QCreditos.ParamByName('NumeroCliente').AsInteger := NoCliente;
  Data.QCreditos.Open;

  // sumar los creditdetails por factura
  Data.QCreditosPorFactura.Close;
  Data.QCreditosPorFactura.ParamByName('NumeroFactura').AsInteger := NoFactura;
  Data.QCreditosPorFactura.Open;

  //actualizar la transaccion debito (principal)
  Data.UpdateTrans.Close;
  Data.UpdateTrans.ParamByName('Balance').AsFloat := Balance - Data.QCreditosPorFacturaTCredito.Value;
  Data.UpdateTrans.ParamByName('NumeroTransaccion').AsInteger := NoTrans;
  Data.UpdateTrans.ExecSQL;


  Data.QCantidadDebito.Close;
  Data.QCantidadDebito.ParamByName('NumeroCliente').AsInteger := NoCliente;
  Data.QCantidadDebito.Open;

  Data.QUpdateClientDebt.Close;
  Data.QUpdateClientDebt.ParamByName('NumeroCliente').AsInteger := NoCliente;
  Data.QUpdateClientDebt.ParamByName('Debt').AsFloat := Data.QCantidadDebitoTDebito.Value - Data.QCreditosTCredito.Value;
  Data.QUpdateClientDebt.ParamByName('Date').AsDate := Date;
  Data.QUpdateClientDebt.ExecSQL;

  Data.QTransacciones.Close;
  Data.QTransacciones.ParamByName('NumeroCliente').asInteger := NoCliente;
  Data.QTransacciones.Open;

  Data.TClientTransactions2.Refresh;
  Data.TClientTransactions.Refresh;
  Data.TClientTransDetail2.Refresh;
  Data.TClientes.Refresh;}
end;

procedure TFEditarBalances.TClientTransactionsAfterPost(DataSet: TDataSet);
Var
  NoFactura, NoCliente: Integer;
  //Balance: Double;
begin
  NoCliente := TPacientesNumeroCliente.Value;
  NoFactura := TClientTransactionsDetailNumeroFactura.Value;

  Data.QCreditos.Close;
  Data.QCreditos.ParamByName('NumeroCliente').AsInteger := NoCliente;
  Data.QCreditos.Open;

  Data.QCreditosPorFactura.Close;
  Data.QCreditosPorFactura.ParamByName('NumeroFactura').AsInteger := NoFactura;
  Data.QCreditosPorFactura.Open;

  //Balance := Data.QCreditosPorFacturaTCredito.Value;
  //actualizar la transaccion debito (principal)
  Data.UpdateTrans.Close;
  Data.UpdateTrans.ParamByName('Balance').AsFloat :=  TClientTransactionsCantidad.Value - Data.QCreditosPorFacturaTCredito.Value;
  Data.UpdateTrans.ParamByName('NumeroFactura').AsInteger := NoFactura;
  Data.UpdateTrans.ExecSQL;


  Data.QCantidadDebito.Close;
  Data.QCantidadDebito.ParamByName('NumeroCliente').AsInteger := NoCliente;
  Data.QCantidadDebito.Open;

  Data.QUpdateClientDebt.Close;
  Data.QUpdateClientDebt.ParamByName('NumeroCliente').AsInteger := NoCliente;
  Data.QUpdateClientDebt.ParamByName('Debt').AsFloat := Data.QCantidadDebitoTDebito.Value - Data.QCreditosTCredito.Value;
  Data.QUpdateClientDebt.ParamByName('Date').AsDate := Date;
  Data.QUpdateClientDebt.ExecSQL;
  TPacientes.Refresh;
  TClientTransactions.Refresh;
  TClientTransactionsDetail.Refresh;
end;

procedure TFEditarBalances.Edit1Exit(Sender: TObject);
Var
  Token1, Token2, Token3, TmpString: String;
  TmpStr: String;

Begin
  Token1 := '';
  Token2 := '';
  Token3 := '';
  TmpString := Edit1.Text;
  if TmpString > ' ' then
  begin
  If Length(TmpString) <> 0 then
  Begin
    If Pos(' ',TmpString) <> 0 then
    Begin
      Token1 := Trim(Copy(TmpString,1,Pos(' ',TmpString)));
      TmpString := Trim(Copy(TmpString,Pos(' ',TmpString),Length(TmpString)));
      If Length(TmpString) <> 0 then
      Begin
        If Pos(' ',TmpString) <> 0 then
        Begin
          Token2 := Trim(Copy(TmpString,1,Pos(' ',TmpString)));
          TmpString := Trim(Copy(TmpString,Pos(' ',TmpString),Length(TmpString)));
          If Length(TmpString) <> 0 then
          Begin
            If Pos(' ',TmpString) <> 0 then
            Begin
              Token3 := Trim(Copy(TmpString,1,Pos(' ',TmpString)));
            end
            Else
            Begin
              Token3 := TmpString;
            end;
          end;
        end
        Else
        Begin
          Token2 := TmpString;
        end;
      end;
    end
    Else
    Begin
      Token1 := TmpString;
    end;
  end;
    Data.QBuscarClientes.Close;
    Data.QBuscarClientes.ParamByName('Token1').AsString := Trim(Token1) + '%';
    Data.QBuscarClientes.ParamByName('Token2').AsString := Trim(Token2) + '%';
    Data.QBuscarClientes.ParamByName('Token3').AsString := Trim(Token3) + '%';
    Data.QBuscarClientes.Open;
    Data.QCountClients.Close;
    Data.QCountClients.ParamByName('Token1').AsString := Trim(Token1) + '%';
    Data.QCountClients.ParamByName('Token2').AsString := Trim(Token2) + '%';
    Data.QCountClients.ParamByName('Token3').AsString := Trim(Token3) + '%';
    Data.QCountClients.Open;
    if Data.QCountClientsTCount.Value >0 then PatientFound := 1;
    if PatientFound = 1 then
    begin
    FBuscarPatQuery := TFBuscarPatQuery.Create(Self);
    With FBuscarPatQuery do
      Begin
        ShowModal;
        if ModalResult = mrOK then
          Begin
            TPacientes.Locate('NumeroCliente', Data.QBuscarClientesNumeroCliente.Value, []);
            NoCliente := TPacientesNumeroCliente.Value;
           end;
      end;
   end;
end;
end;
procedure TFEditarBalances.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  Begin
    Key := #0;                                 { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
end;

end.
