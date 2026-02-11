unit UReportesContabil;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TFReportesContabilidad = class(TForm)
    Panel1: TPanel;
    Reportes: TRadioGroup;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DateTimePickerDesde: TDateTimePicker;
    Label1: TLabel;
    DateTimePickerHasta: TDateTimePicker;
    Label2: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FReportesContabilidad: TFReportesContabilidad;

implementation

uses UFacturasPendientes, UFacturasPendientes2, URepAging, URepIngGastos,
  UDesdeHasta, UTotalComprado;

{$R *.DFM}

procedure TFReportesContabilidad.BitBtn1Click(Sender: TObject);
Var
  FechaDesde, FechaHasta: String;
  NoCuenta: Integer;

begin
   Case Reportes.ItemIndex  of
     0: begin
         QRFFacturasPendientes := TQRFFacturasPendientes.Create(Self);
         QRFFacturasPendientes.QRFacturasPendientes.Preview;
         QRFFacturasPendientes.Free;
        end;
     1: begin
          QRFFacturasPend := TQRFFacturasPend.Create(self);
          QRFFacturasPend.QRFactPend.Preview;
          QRFFacturasPend.Free;
        end;
     3: begin
          FRepAging := TFRepAging.Create(Self);
          With FRepAging do
          Begin
            try
              QryDestroyAgingTables.ExecSQL;
            finally
              QryCreateAgingTables.ExecSQL;
              //QrySupAgingMaster.Open;
              QInsertIntoSupTotal.ParamByName('FDesde').asDate := DateTimePickerDesde.Date;
              QInsertIntoSupTotal.ParamByName('FHasta').asDate := DateTimePickerHasta.Date;
              QInsertIntoSupTotal.ExecSQL;
              QCreateTablePayTotal.ExecSQL;
              QInsertIntoPayTotal.ParamByName('FDesde').asDate := DateTimePickerDesde.Date;
              QInsertIntoPayTotal.ParamByName('FHasta').asDate := DateTimePickerHasta.Date;
              QInsertIntoPayTotal.ExecSQL;
              QUpdateSupTotal.ExecSQL;

              QrySupAgingMaster.Open;
              QryAgingDetail.Open;
              QryAgingDetailTotals.Open;
              Qry_30.Open;
              Qry30_60.Open;
              Qry60_90.Open;
              Qry90_.Open;
              QryTotal_30.Open;
              QryTotal30_60.Open;
              QryTotal60_90.Open;
              QryTotal90_.Open;
              QryTotal.Open;
              QRptAging.Preview;
            end;
          end;
        end;
     4: begin
         FDesdeHasta := TFDesdeHasta.Create(self);
         With FDesdeHasta do
         begin
           DateTimePickerDesde.DateTime := Date;
           DateTimePickerHasta.DateTime := Date;
           FDesdeHasta.Showmodal;
           if ModalResult = mrOk then
             Begin
               FechaDesde := DateToStr(DateTimePickerDesde.Date);
               FechaHasta := DateToStr(DateTimePickerHasta.Date);
               FQRIngresosYGastos := TFQRIngresosYGastos.Create(Self);
               FQRIngresosYGastos.QRLabel6.Caption := 'Ingresos y Gastos del periodo de: '+ FechaDesde + ' al '+ FechaHasta;
               //With FQRIngresosYGastos do
                 //Begin
                    FQRIngresosYGastos.TIngresosGastos.Filtered := False;
                    FQRIngresosYGastos.TIngresosGastos.First;
                    while not FQRIngresosYGastos.TIngresosGastos.Eof do
                    Begin
                      NoCuenta := FQRIngresosYGastos.TIngresosGastosNumero.Value;
                      FQRIngresosYGastos.QSumaCuentas.Close;
                      FQRIngresosYGastos.QSumaCuentas.ParamByName('FechaDesde').asDate := StrToDate(FechaDesde);
                      FQRIngresosYGastos.QSumaCuentas.ParamByName('FechaHasta').asDate := StrToDate(FechaHasta);
                      FQRIngresosYGastos.QSumaCuentas.ParamByName('NumeroCuenta').asInteger := NoCuenta;
                      FQRIngresosYGastos.QSumaCuentas.Open;

                      FQRIngresosYGastos.TIngresosGastos.Edit;
                      FQRIngresosYGastos.TIngresosGastosCantidad.Value := FQRIngresosYGastos.QSumaCuentasTCuenta.Value;
                      FQRIngresosYGastos.TIngresosGastos.Post;
                      FQRIngresosYGastos.TIngresosGastos.Next;
                    end;
                 //end;
                FQRIngresosYGastos.QTotalExpense.Close;
                FQRIngresosYGastos.QTotalExpense.Open;

                FQRIngresosYGastos.QTotalIncome.Close;
                FQRIngresosYGastos.QTotalIncome.Open;

                FQRIngresosYGastos.TIngresosGastos.Filtered := True;
                FQRIngresosYGastos.QRIngresosGastos.Preview;
             end;
         end;
         FDesdeHasta.Free;
        end;

        5: begin
           FDesdeHasta := TFDesdeHasta.Create(self);
           With FDesdeHasta do
           begin
             FDesdeHasta.Showmodal;
             if ModalResult = mrOk then
             Begin
               FQRTotalComprado := TFQRTotalComprado.Create(self);
               With FQRTotalComprado do
               begin
                 QRLabelDesde.Caption := 'Periodo de: ' + DateToStr(DateTimePickerDesde.DateTime) + ' hasta: ' + DateToStr(DateTimePickerHasta.DateTime);
                 TSuplidores.Filter := '';
                 TSuplidores.First;
                 While not TSuplidores.Eof do
                 begin
                   QTotalComprado.Close;
                   QTotalComprado.ParamByName('NumeroSuplidor').asInteger := TSuplidoresNumeroSuplidor.Value;
                   QTotalComprado.ParamByName('FechaDesde').asDate := DateTimePickerDesde.DateTime;
                   QTotalComprado.ParamByName('FechaHasta').asDate := DateTimePickerHasta.DateTime;
                   QTotalComprado.Open;
                   if QTotalCompradoTComprado.Value > 0 then
                   begin
                     TSuplidores.Edit;
                     TSuplidoresTotalComprado.Value := QTotalCompradoTComprado.Value;
                     TSuplidores.Post;
                   end;
                   TSuplidores.Next;
                 end;
                 //TSuplidores.Refresh;
                 TSuplidores.Filter := 'TotalComprado > 0';
                 FQRTotalComprado.QRTotalComprado.Preview;
               end;
             end;
           end;
           FDesdeHasta.Free;
           end;
   end;
end;

procedure TFReportesContabilidad.FormCreate(Sender: TObject);
begin
  DateTimePickerDesde.Date := Date - 360;
  DateTimePickerHasta.Date := Date;
end;

end.
