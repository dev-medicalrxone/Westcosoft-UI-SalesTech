unit UEditarFactura;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, Db, DBTables, DBCtrls;

type
  TFEditarFacturas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    ENumeroFactura: TEdit;
    TPOS: TTable;
    DSPOS: TDataSource;
    TPOSCodigo: TStringField;
    TPOSArticulo: TStringField;
    TPOSQty: TFloatField;
    TPOSFechaVenta: TDateField;
    TPOSPrecioVenta: TFloatField;
    TPOSNumeroTransaccion: TIntegerField;
    TPOSCredito: TStringField;
    TPOSNoCliente: TSmallintField;
    TPOSProductID: TIntegerField;
    DBGrid1: TDBGrid;
    Button3: TButton;
    QBorrar: TQuery;
    QBorrarClientTrans: TQuery;
    QDeuda: TQuery;
    QUpdateClientTrans: TQuery;
    QTotalFactura: TQuery;
    QTotalFacturaTFactura: TFloatField;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    TPOSNumeroArticulo: TStringField;
    procedure ENumeroFacturaExit(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ENumeroFacturaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEditarFacturas: TFEditarFacturas;

implementation

uses UData, UAdjustmentEntry, UPOS;

{$R *.DFM}

procedure TFEditarFacturas.ENumeroFacturaExit(Sender: TObject);
begin
  if ENumeroFactura.Text > ' ' then
    begin
     if TPos.Locate('NumeroTransaccion', StrToInt(ENumeroFactura.Text), []) then
     else
       begin
         ShowMessage('No encuentro esta Factura...');
         ENumeroFactura.Text := '';
         ENumeroFactura.SetFocus;
       end;
    end;
end;

procedure TFEditarFacturas.Button3Click(Sender: TObject);
Var
  Cant: Double;
  NoFactura, NoCliente: Integer;
begin
  if MessageDlg('Realmente desea borrar esta transacción?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    if TPOSCodigo.Value = 'Cred' then
      begin
        NoFactura := TPOSNumeroTransaccion.Value;
        NoCliente := TPOSNoCliente.Value;
        QBorrar.Close;
        QBorrar.ParamByName('ProductID').AsInteger := TPOSProductID.Value;
        QBorrar.ExecSQL;

        QTotalFactura.Close;
        QTotalFactura.ParamByName('NumeroTransaccion').AsInteger := NoFactura;
        QTotalFactura.Open;

        QUpdateClientTrans.Close;
        QUpdateClientTrans.ParamByName('NumeroFactura').Value := NoFactura;
        QUpdateClientTrans.ParamByName('Cantidad').AsFloat := QTotalFacturaTFactura.Value;
        QUpdateClientTrans.ExecSQL;

        Data.QCantidadDebito.Close;
        Data.QCantidadDebito.ParamByName('NumeroCliente').AsInteger := NOCliente;
        Data.QCantidadDebito.Open;

        Data.QCreditosDetail.Close;
        Data.QCreditosDetail.ParamByName('NumeroCliente').AsInteger := NoCliente;
        Data.QCreditosDetail.Open;
        Cant := (Data.QCantidadDebitoTDebito.Value - Data.QCreditosDetailTAbonos.Value);
        QDeuda.ParamByName('NumeroCliente').AsInteger := TPOSNoCliente.Value;
        QDeuda.ParamByName('Deuda').AsFloat := cant;
        QDeuda.ExecSQL;

        TPOS.Refresh;
        Data.TClientes.Refresh;
        Data.TClientTransactions.Refresh;
      end
      else
        begin
          QBorrar.Close;
          QBorrar.ParamByName('ProductID').AsInteger := TPOSProductID.Value;
          QBorrar.ExecSQL;
          TPOS.Refresh;
        end
   end;
end;

procedure TFEditarFacturas.Button1Click(Sender: TObject);
Var
  Cant: Double;
  NoFactura, NoCliente: Integer;
begin
  if MessageDlg('Realmente desea editar esta transacción?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
    if TPOSCodigo.Value = 'Cred' then
      begin
        FAdjustmentEntry := TFAdjustmentEntry.Create(Self);
        FAdjustmentEntry.EditArticulo.Text := TPOSArticulo.Value;
        FAdjustmentEntry.EditCantidadActual.Text := FloatToStr(TPOSQty.Value);
        FAdjustmentEntry.EditPrecio.Text := FloatToStr(TPOSPrecioVenta.Value / TPOSQty.Value);
        With FAdjustmentEntry do
          begin
            ShowModal;
            if ModalResult = mrOk then
              begin
              if MessageDlg('Esta transacción esta correcta?',
               mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                begin
                  NoFactura := TPOSNumeroTransaccion.Value;
                  NoCliente := TPOSNoCliente.Value;
                  TPOS.Edit;
                  TPOSQty.Value := TPOSQty.Value + StrToFloat(FAdjustmentEntry.EditCantidad.Text);
                  TPOSPrecioVenta.Value := StrToFloat(FAdjustmentEntry.EditNuevoPrecio.Text);
                  TPOS.Post;
                  TPOS.Refresh;

                  Data.QUpdateInv.ParamByName('Qty').AsFloat := StrToFloat(EditCantidad.Text);
                  Data.QupdateInv.ParamByName('CodigoBarra').AsString := TPOSNumeroArticulo.Value;
                  Data.QUpdateInv.ExecSQL;

                  QTotalFactura.Close;
                  QTotalFactura.ParamByName('NumeroTransaccion').AsInteger := NoFactura;
                  QTotalFactura.Open;

                  QUpdateClientTrans.Close;
                  QUpdateClientTrans.ParamByName('NumeroFactura').Value := NoFactura;
                  QUpdateClientTrans.ParamByName('Cantidad').AsFloat := QTotalFacturaTFactura.Value;
                  QUpdateClientTrans.ExecSQL;

                  Data.QCantidadDebito.Close;
                  Data.QCantidadDebito.ParamByName('NumeroCliente').AsInteger := NOCliente;
                  Data.QCantidadDebito.Open;

                  Data.QCreditosDetail.Close;
                  Data.QCreditosDetail.ParamByName('NumeroCliente').AsInteger := NoCliente;
                  Data.QCreditosDetail.Open;
                  Cant := (Data.QCantidadDebitoTDebito.Value - Data.QCreditosDetailTAbonos.Value);
                  QDeuda.ParamByName('NumeroCliente').AsInteger := TPOSNoCliente.Value;
                  QDeuda.ParamByName('Deuda').AsFloat := cant;
                  QDeuda.ExecSQL;

                  TPOS.Refresh;
                  Data.TClientes.Refresh;
                  Data.TInventarioPiso.Refresh;
                  Data.TClientTransactions.Refresh;
                end;
              end;
          end;
        FAdjustmentEntry.Free;
      end
      else
        begin
         // QBorrar.Close;
         // QBorrar.ParamByName('ProductID').AsInteger := TPOSProductID.Value;
         // QBorrar.ExecSQL;
         //TPOS.Refresh;
        end
   end;
end;

procedure TFEditarFacturas.ENumeroFacturaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  //if Key = #13 then                              { if it's an enter key }
  Begin
    Key := #0;                                       { eat enter key }
    FEditarFacturas.Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
  end;
end;

end.
