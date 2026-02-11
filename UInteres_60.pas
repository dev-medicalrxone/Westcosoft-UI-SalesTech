unit UInteres_60;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, Grids, DBGrids, DBTables, ExtCtrls, Mask, DBCtrls, Buttons;

type
  TFPorcientoInteres = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    QMayor_60: TQuery;
    DBGrid1: TDBGrid;
    DSMayor_60: TDataSource;
    Button1: TButton;
    QClientesInteres: TQuery;
    QClientesInteresNombre: TStringField;
    QClientesInteresApellidoPaterno: TStringField;
    QClientesInteresApellidoMaterno: TStringField;
    QClientesInteresCardholder_ID: TStringField;
    QClientesInteresFechaNacimiento: TDateField;
    QClientesInteresHistorialMedico: TStringField;
    QClientesInteresPlanMedico: TStringField;
    QClientesInteresDoctorPrincipal: TStringField;
    QClientesInteresSexo: TSmallintField;
    QClientesInteresRelacion: TSmallintField;
    QClientesInteresNoGrupo: TStringField;
    QClientesInteresPersonCode: TStringField;
    QClientesInteresDireccion1: TStringField;
    QClientesInteresDireccion2: TStringField;
    QClientesInteresUltimaTransaccion: TDateField;
    QClientesInteresTelefono: TStringField;
    QClientesInteresDeuda: TFloatField;
    QClientesInteresLimiteCredito: TFloatField;
    QClientesInteresNumeroCliente: TIntegerField;
    QClientesInteresCubierta: TStringField;
    QClientesInteresCodigoPostal: TStringField;
    QClientesInteresDeudaLayaway: TFloatField;
    QClientesInteresUltimTransLayaway: TDateField;
    QClientesInteresFax: TStringField;
    QClientesInteresCelular: TStringField;
    QClientesInteresInteres: TStringField;
    QMayor_60TInteres: TFloatField;
    BitBtn1: TBitBtn;
    TInteres: TTable;
    DSInteres: TDataSource;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    QDeuda: TQuery;
    TInteresFecha: TDateField;
    TInteresNoTrans: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPorcientoInteres: TFPorcientoInteres;

implementation

uses UData, UPOS;

{$R *.DFM}

procedure TFPorcientoInteres.Button1Click(Sender: TObject);
Var
  NoCliente: Integer;
  TotalInteres: Double;
  Cant: Double;
begin
  TotalInteres := 0;
  TInteres.Edit;
  TInteresFecha.Value := Date;
  TInteres.Post;
  QClientesInteres.Close;
  QClientesInteres.Open;
  With QClientesInteres do
  begin
    QClientesInteres.First;
    While not QClientesInteres.Eof do
      begin
        cant := 0;
        QMayor_60.Close;
        QMayor_60.ParamByName('NumeroCliente').AsInteger := QClientesInteresNumeroCliente.Value;
        QMayor_60.Open;
        if QMayor_60TInteres.Value > 0 then
        begin
          Data.QIncrementTrans.ExecSQL;
          Data.TNoTrans.Refresh;
          NoCliente := QClientesInteresNumeroCliente.Value;
          Data.TClientTransactions.Append;
          Data.TClientTransactionsNumeroFactura.Value := Data.TNoTransNumeroTransaccion.Value;
          Data.TClientTransactionsCantidad.Value := StrToFloat(Format('%8.2f', [QMayor_60TInteres.Value]));
          Data.TClientTransactionsBalance.Value := StrToFloat(Format('%8.2f',[QMayor_60TInteres.Value]));
          Data.TClientTransactionsFecha.Value := Date;
          Data.TClientTransactionsCodigo.Value := 'DB';
          Data.TClientTransactionsInteresFacturas.Value := 'T';
          Data.TClientTransactionsNumeroCliente.Value := QClientesInteresNumeroCliente.Value;
          Data.TClientTransactions.Post;
          TotalInteres := TotalInteres + QMayor_60TInteres.Value;

          Data.QAnadirPOS.Close;
          Data.QAnadirPOS.ParamByName('Articulo').asString := 'Interes Facutra sobre 60';
          Data.QAnadirPOS.ParamByName('Departamento').asInteger := 1;
          Data.QAnadirPOS.ParamByName('PrecioVenta').asFloat := StrToFloat(Format('%8.2f', [QMayor_60TInteres.Value]));;
          Data.QAnadirPOS.ParamByName('Qty').asInteger := 1;
          Data.QAnadirPOS.ParamByName('PrecioUnitario').asFloat := 0;
          Data.QAnadirPOS.ParamByName('Ganancia').asFloat := StrToFloat(Format('%8.2f', [QMayor_60TInteres.Value]));
          Data.QAnadirPOS.ParamByName('FechaVenta').asDate := Date;
          Data.QAnadirPOS.ParamByName('NumeroArticulo').asString := '11111111111';
          Data.QAnadirPOS.ParamByName('Usuario').asString := 'ADM';
          Data.QAnadirPOS.ParamByName('Codigo').asString := 'Cred';
          Data.QAnadirPOS.ParamByName('NumeroTransaccion').asInteger := Data.TNoTransNumeroTransaccion.Value;
          //PrecioV := Data.QBuscarArticuloPrecio.Value;
          Data.QAnadirPOS.ExecSQL;

          Data.QCantidadDebito.Close;
          Data.QCantidadDebito.ParamByName('NumeroCliente').AsInteger := QClientesInteresNumeroCliente.Value;
          Data.QCantidadDebito.Open;

          Data.QCreditosDetail.Close;
          Data.QCreditosDetail.ParamByName('NumeroCliente').AsInteger := QClientesInteresNumeroCliente.Value;
          Data.QCreditosDetail.Open;
          Cant := (Data.QCantidadDebitoTDebito.Value - Data.QCreditosDetailTAbonos.Value);
          QDeuda.ParamByName('NumeroCliente').AsInteger := QClientesInteresNumeroCliente.Value;
          QDeuda.ParamByName('Deuda').AsFloat := cant;
          QDeuda.ExecSQL;
        end;
        QClientesInteres.Next;
      end;
  end;
  Data.TClientes.Refresh;
  showmessage('Porciento de Interes cargado: '+Format('%m',[TotalInteres]));
  BitBtn1.SetFocus;
end;

procedure TFPorcientoInteres.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Data.QIncrementTrans.ExecSQL;
  Data.TNoTrans.Refresh;
  FPOS.Edit3.Text := IntToStr(Data.TNoTransNumeroTransaccion.Value);
end;

end.
