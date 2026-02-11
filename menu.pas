
unit Menu;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Quickrpt, ExtCtrls, qrextra, ComCtrls, db;

  //list, GrpList, manygrp, MD,   

type
  TFMenu = class(TForm)
    GroupBox1: TGroupBox;
    SimpleList: TRadioButton;
    GroupedList: TRadioButton;
    MasterDetail: TRadioButton;
    Description: TMemo;
    Preview: TButton;
    Print: TButton;
    Exit: TButton;
    Label2: TLabel;
    Label3: TLabel;
    RadioButton1: TRadioButton;
    CompositeReport: TQuickRep;
    QRCompositeReport1: TQRCompositeReport;
    Image1: TImage;
    Label10: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    DateTimePickerDesde: TDateTimePicker;
    DateTimePickerHasta: TDateTimePicker;
    EditCajero: TEdit;
    Label5: TLabel;
    EditNoCaja: TEdit;
    Label6: TLabel;
    procedure SimpleListClick(Sender: TObject);
    procedure PreviewClick(Sender: TObject);
    procedure PrintClick(Sender: TObject);
    procedure ExitClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure GroupedListClick(Sender: TObject);
    procedure MasterDetailClick(Sender: TObject);
    procedure SQLMasterDetailClick(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FReport : TQuickRep;
    procedure SetReport(Value : TQuickRep);
  public
    property Report : TQuickRep read FReport write SetReport;
  end;

var
  FMenu: TFMenu;
  CuadreParcial, CuadreTotal, CuadrePorCaja: Boolean;


implementation

uses UCuadreTotal, UQRCuadre, UPOS, UData, UDataCuadre, UQRCuadre2,
  UQRPaidouts, UPaidoutsTotal;

{$R *.DFM}

procedure TFMenu.SetReport(Value : TQuickRep);
begin
  FReport:=Value;
  Description.Lines.Assign(Report.Description);
end;

procedure TFMenu.PreviewClick(Sender: TObject);
begin
  if Report = CompositeReport then
  begin
    QRCompositeReport1.Preview;
  end
//
//  if Report =
//    Report.Preview;
end;

procedure TFMenu.PrintClick(Sender: TObject);
begin
  if Report = CompositeReport then
  begin
    QRCompositeReport1.Print;
  end else
    Report.Print;
end;

procedure TFMenu.ExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFMenu.FormActivate(Sender: TObject);
begin
  if Description.Lines.Count = 0 then
    SimpleListClick(Self);
end;

procedure TFMenu.SimpleListClick(Sender: TObject);
begin
//  Report:=ListForm.QuickRep;
//  QRFCuadreTotal := TQRFCuadreTotal.Create(self);
//  Report := QRFCuadreTotal.QRCuadreTotal;
  CuadreParcial := False;
  CuadrePorCaja := False;
  CuadreTotal := True;
  Report := CompositeReport;
end;

procedure TFMenu.GroupedListClick(Sender: TObject);
begin
//  Report := GrpListForm.QuickRep;
  Description.Lines.Add('Cuadre parcial de los cajeros.  Puede escojer los cucdres por fechas.');
  FQRCuadreParcial := TFQRCuadreParcial.Create(self);
  Report :=  FQRCuadreParcial.QRCuadre;
end;

procedure TFMenu.MasterDetailClick(Sender: TObject);
begin
  CuadreParcial := False;
  CuadreTotal := False;
  CuadrePorCaja := True;
  Report := CompositeReport;
end;

procedure TFMenu.SQLMasterDetailClick(Sender: TObject);
begin
//  Report:= ManyGrpForm.QuickRep;
end;

procedure TFMenu.RadioButton1Click(Sender: TObject);
begin
  //CuadreTotal := False;
  CuadrePorCaja := False;
  CuadreTotal := False;
  CuadreParcial := True;
  Report := CompositeReport;
end;

procedure TFMenu.QRCompositeReport1AddReports(Sender: TObject);
Var
  TotalFinal, TotalGanancias: Currency;
  Descripcion: String;
  Counter: Integer;
begin
Counter := 0;
//if CuadreTotal = False then
if CuadreParcial = True then
begin
  TotalGanancias := 0;
  TotalFinal := 0;
  Data.QBorrarTempCuadre.ExecSQL;
  Data.TCuadreTemp.Refresh;

  DMCuadreTotal.QTotalCuadre.Close;
  DMCuadreTotal.QTotalCuadre.Open;


  FQRCuadre := TFQRCuadre.Create(self);
  DMCuadreTotal.QCuadre2.Close;
  DMCuadreTotal.QCuadre2.ParamByName('Fecha1').asDate := DateTimePickerDesde.Date;
  DMCuadreTotal.QCuadre2.ParamByName('Fecha2').asDate := DateTimePickerHasta.Date;
  DMCuadreTotal.QCuadre2.ParamByName('Usuario').asString := EditCajero.Text;
  DMCuadreTotal.QCuadre2.Open;

  DMCuadreTotal.QCuadre2.First;
  While not DMCuadreTotal.QCuadre2.Eof do
  begin
    if Data.TDept.Locate('Departamento', DMCuadreTotal.QCuadre2departamento.Value, []) then
    Descripcion := Data.TDeptDescripcion.Value
    else
    Descripcion := 'Departamento desconocido...';
    DMCuadreTotal.QInsertTCuadre.Close;
    DMCuadreTotal.QInsertTCuadre.ParamByName('Descripcion').asString := '+ '+Descripcion;
    DMCuadreTotal.QInsertTCuadre.ParamByName('Departamento').asInteger := DMCuadreTotal.QCuadre2departamento.Value;
    DMCuadreTotal.QInsertTCuadre.ParamByName('Ganancia').asFloat := DMCuadreTotal.QCuadre2sumGanancia.Value;
    DMCuadreTotal.QInsertTCuadre.ParamByName('Cuadre').asFloat := DMCuadreTotal.QCuadre2sumPrecioVenta.Value;
    DMCuadreTotal.QInsertTCuadre.ExecSql;
    DMCuadreTotal.QCuadre2.Next;
  end;
  DMCuadreTotal.TCuadreTemp.Refresh;

  //Transacciones por Credit Cards
  Data.TTargetas.First;
  While not Data.TTargetas.Eof do
    Begin
      Data.QCuadreCreditCards.Close;
      Data.QCuadreCreditCards.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
      Data.QCuadreCreditCards.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
      Data.QCuadreCreditCards.ParamByName('Codigo').AsString := Data.TTargetasCodigo.Value;
      Data.QCuadreCreditCards.ParamByName('Usuario').AsString := EditCajero.Text;
      Data.QCuadreCreditCards.Open;
      if Data.QCuadreCreditCardsTCuadre.Value > 0 then
        Begin
          //MemoCuadres.Lines.Add(Format('%m',[Data.QCuadreCreditCardsTCuadre.Value]) + '      :' +Data.TTargetasDescripcion.Value);
          DMCuadreTotal.QInsertCuadre.ParamByName('Descripcion').asString := Data.TTargetasDescripcion.Value;
          DMCuadreTotal.QInsertCuadre.ParamByName('Ganancia').asFloat := 0;
          DMCuadreTotal.QInsertCuadre.ParamByName('Cuadre').asFloat := Data.QCuadreCreditCardsTCuadre.Value;
          DMCuadreTotal.QInsertCuadre.ExecSQL;
        end;
      //TotalFinal := TotalFinal + Data.QCuadreCreditCardsTCuadre.Value;
      Data.TTargetas.Next;
     end;

      //Transacciones Abono Layaway
      Data.QCuadreAbonoLayaway.Close;
      Data.QCuadreAbonoLayaway.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
      Data.QCuadreAbonoLayaway.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
      Data.QCuadreAbonoLayaway.ParamByName('Usuario').AsString := EditCajero.Text;
      Data.QCuadreAbonoLayaway.Open;
      if Data.QCuadreAbonoLayawayTCuadre.Value > 0 then
        Begin
          //MemoCuadres.Lines.Add(Format('%m', [Data.QCuadreAbonoLayawayTCuadre.Value]) + '      :Abonos Layaway');
          DMCuadreTotal.QInsertCuadre.ParamByName('Descripcion').asString := '+ Abono a Layaway';
          DMCuadreTotal.QInsertCuadre.ParamByName('Ganancia').asFloat := 0;
          DMCuadreTotal.QInsertCuadre.ParamByName('Cuadre').asFloat := Data.QCuadreAbonoLayawayTCuadre.Value;
          DMCuadreTotal.QInsertCuadre.ExecSQL;
        end;

      //Abono a credito
      Data.QTotalAbono.Close;
      Data.QTotalAbono.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
      Data.QTotalAbono.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
      Data.QTotalAbono.ParamByName('Usuario').AsString := EditCajero.Text;
      Data.QTotalAbono.Open;
      if Data.QTotalAbonoTCuadre.Value > 0 then
        Begin
          //MemoCuadres.Lines.Add(Format('%m', [Data.QTotalAbonoTCuadre.Value]) + '      :Transacciones Abonos');
          DMCuadreTotal.QInsertCuadre.ParamByName('Descripcion').asString := '+ Transacciones Abonos';
          DMCuadreTotal.QInsertCuadre.ParamByName('Ganancia').asFloat := 0;
          DMCuadreTotal.QInsertCuadre.ParamByName('Cuadre').asFloat := Data.QTotalAbonoTCuadre.Value;
          DMCuadreTotal.QInsertCuadre.ExecSQL;
        end;

      //Transacciones Debito
      Data.QTotalCredito.Close;
      Data.QTotalCredito.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
      Data.QTotalCredito.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
      Data.QTotalCredito.ParamByName('Usuario').AsString := EditCajero.Text;
      Data.QTotalCredito.Open;
      if Data.QTotalCreditoTCuadre.Value > 0 then
        Begin
          //MemoCuadres.Lines.Add(Format('%m', [Data.QTotalCreditoTCuadre.Value]) + '      :Transacciones Debito');
          DMCuadreTotal.QInsertCuadre.ParamByName('Descripcion').asString := '- Transaccion Debito';
          DMCuadreTotal.QInsertCuadre.ParamByName('Ganancia').asFloat := 0;
          DMCuadreTotal.QInsertCuadre.ParamByName('Cuadre').asFloat := (Data.QTotalCreditoTCuadre.Value - (Data.QTotalCreditoTCuadre.Value + Data.QTotalCreditoTCuadre.Value));
          DMCuadreTotal.QInsertCuadre.ExecSQL;
        end;


      //Transacciones Devoluciones
      Data.QCuadreTotalDevoluciones.Close;
      Data.QCuadreTotalDevoluciones.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
      Data.QCuadreTotalDevoluciones.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
      Data.QCuadreTotalDevoluciones.ParamByName('Usuario').AsString := EditCajero.Text;
      Data.QCuadreTotalDevoluciones.Open;
      if Data.QCuadreTotalDevolucionesTCuadre.Value > 0 then
        Begin
          //MemoCuadres.Lines.Add(Format('%m', [Data.QCuadreTotalDevolucionesTCuadre.Value]) + '      :Transacciones Devoluciónes');
          DMCuadreTotal.QInsertCuadre.ParamByName('Descripcion').asString := '- Transacciónes Devoluciones';
          DMCuadreTotal.QInsertCuadre.ParamByName('Ganancia').asFloat := 0;
          DMCuadreTotal.QInsertCuadre.ParamByName('Cuadre').asFloat := - Data.QCuadreTotalDevolucionesTCuadre.Value;
          DMCuadreTotal.QInsertCuadre.ExecSQL;

        end;

      //TransaccionesLayaway
      Data.QCuadreTotalLayaway.Close;
      Data.QCuadreTotalLayaway.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
      Data.QCuadreTotalLayaway.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
      Data.QCuadreTotalLayaway.ParamByName('Usuario').AsString := EditCajero.Text;
      Data.QCuadreTotalLayaway.Open;
      if Data.QCuadreTotalLayawayTCuadre.Value > 0 then
        Begin
          //MemoCuadres.Lines.Add(Format('%m', [Data.QCuadreTotalLayawayTCuadre.Value]) + '      :Transacciones Layaway');
          DMCuadreTotal.QInsertCuadre.ParamByName('Descripcion').asString := '- Transacciónes Layaway:';
          DMCuadreTotal.QInsertCuadre.ParamByName('Ganancia').asFloat := 0;
          DMCuadreTotal.QInsertCuadre.ParamByName('Cuadre').asFloat := Data.QCuadreTotalLayawayTCuadre.Value;
          DMCuadreTotal.QInsertCuadre.ExecSQL;
        end;

      //TransaccionesPaidout
      Data.QCuadrePaidout.Close;
      Data.QCuadrePaidout.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
      Data.QCuadrePaidout.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
      Data.QCuadrePaidout.ParamByName('Usuario').AsString := EditCajero.Text;
      Data.QCuadrePaidout.Open;

      Data.TCuadreTemp.Refresh;
      DMCuadreTotal.QTotalCuadre.Close;
      DMCuadreTotal.QTotalCuadre.Open;

      FQRCuadreParcial := TFQRCuadreParcial.Create(Self);
      Data.TPasswords.First;
      if Data.TPasswords.Locate('Password', FMenu.EditCajero.Text,[loCaseInsensitive]) then
       FQRCuadreParcial.QRLabel13.Caption := 'Cuadre parcial de: ' + Data.TPasswordsUserName.Value
      else
       FQRCuadreParcial.QRLabel13.Caption := 'Cuadre parcial de: ' + FMenu.EditCajero.Text;

      FQRCuadreParcial.QRLabel1.Caption := DateToStr(DateTimePickerDesde.Date);
      FQRCuadreParcial.QRLabel4.Caption := DateToStr(DateTimePickerHasta.Date);
      FQRCuadreParcial.QRLabel2.Caption := Format('%m',[DMCuadreTotal.QTotalCuadreTCuadre.Value - Data.QCuadrePaidoutTPaidout.Value]);

      FQRPaidouts := TFQRPaidouts.Create(self);
      DMCuadreTotal.QPaidouts.Close;
      DMCuadreTotal.QPaidouts.ParamByName('Fecha1').asDate := DateTimePickerDesde.Date;
      DMCuadreTotal.QPaidouts.ParamByName('Fecha2').asDate := DateTimePickerHasta.Date;
      DMCuadreTotal.QPaidouts.ParamByName('Usuario').asString := EditCajero.Text;
      DMCuadreTotal.QPaidouts.Open;

      with QRCompositeReport1 do
      begin
        Reports.Add(FQRCuadreParcial.QRCuadre);
        Reports.Add(FQRPaidouts.QRPaidouts);
      end;
end;
//else
if CuadreTotal = True then
begin
  TotalGanancias := 0;
  TotalFinal := 0;
  FPOS.MemoCuadres.Clear;
  FPOS.MemoCuadres.Lines.Add('Cuadre Total...');
  Data.QBorrarTempCuadre.ExecSQL;
  DMCuadreTotal.TCuadreTemp.Refresh;

  DMCuadreTotal.QCuadre2Total.Close;
  DMCuadreTotal.QCuadre2Total.ParamByName('Fecha1').asDate := DateTimePickerDesde.Date;
  DMCuadreTotal.QCuadre2Total.ParamByName('Fecha2').asDate := DateTimePickerHasta.Date;
  DMCuadreTotal.QCuadre2Total.Open;

  DMCuadreTotal.QCuadre2Total.First;
  While not DMCuadreTotal.QCuadre2Total.Eof do
  begin
    if Data.TDept.Locate('Departamento', DMCuadreTotal.QCuadre2Totaldepartamento.Value, []) then
    Descripcion := Data.TDeptDescripcion.Value
    else
    begin
      Counter := Counter + 1;
      Descripcion := 'Departamento desconocido ' + IntToStr(Counter) + '...';
    end;
    DMCuadreTotal.QInsertTCuadre.Close;
    DMCuadreTotal.QInsertTCuadre.ParamByName('Descripcion').asString := '+ '+Descripcion;
    DMCuadreTotal.QInsertTCuadre.ParamByName('Departamento').asInteger := DMCuadreTotal.QCuadre2Totaldepartamento.Value;
    DMCuadreTotal.QInsertTCuadre.ParamByName('Ganancia').asFloat := DMCuadreTotal.QCuadre2TotalsumGanancia.Value;
    DMCuadreTotal.QInsertTCuadre.ParamByName('Cuadre').asFloat := DMCuadreTotal.QCuadre2TotalsumPrecioVenta.Value;
    DMCuadreTotal.QInsertTCuadre.ExecSql;
    DMCuadreTotal.QCuadre2Total.Next;
  end;
  DMCuadreTotal.TCuadreTemp.Refresh;

  //Transacciones por Credit Cards
  Data.TTargetas.First;
  While not Data.TTargetas.Eof do
    Begin
      DMCuadreTotal.QCuadreCreditCards.Close;
      DMCuadreTotal.QCuadreCreditCards.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
      DMCuadreTotal.QCuadreCreditCards.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
      DMCuadreTotal.QCuadreCreditCards.ParamByName('Codigo').AsString := Data.TTargetasCodigo.Value;
      DMCuadreTotal.QCuadreCreditCards.Open;
      if DMCuadreTotal.QCuadreCreditCardsTCuadre.Value > 0 then
        Begin
          //MemoCuadres.Lines.Add(Format('%m',[DMCuadreTotal.QCuadreCreditCardsTCuadre.Value]) + '      :' +Data.TTargetasDescripcion.Value);
          DMCuadreTotal.TCuadreTemp.Append;  //añadir cuadre CuadreTemp
          DMCuadreTotal.TCuadreTempDescripcion.Value := Data.TTargetasDescripcion.Value;
          DMCuadreTotal.TCuadreTempCuadre.Value := DMCuadreTotal.QCuadreCreditCardsTCuadre.Value;
          DMCuadreTotal.TCuadreTempGanancia.Value := 0;
          DMCuadreTotal.TCuadreTemp.Post;
        end;
      //TotalFinal := TotalFinal + DMCuadreTotal.QCuadreCreditCardsTCuadre.Value;
      Data.TTargetas.Next;
     end;
     //Transacciones Paidout
      DMCuadreTotal.QCuadreTotalPaidout.Close;
      DMCuadreTotal.QCuadreTotalPaidout.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
      DMCuadreTotal.QCuadreTotalPaidout.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
      DMCuadreTotal.QCuadreTotalPaidout.Open;

      //TransaccionesLayaway
      DMCuadreTotal.QCuadreTotalLayaway.Close;
      DMCuadreTotal.QCuadreTotalLayaway.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
      DMCuadreTotal.QCuadreTotalLayaway.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
      DMCuadreTotal.QCuadreTotalLayaway.Open;
      if DMCuadreTotal.QCuadreTotalLayawayTCuadre.Value > 0 then
        Begin
          //MemoCuadres.Lines.Add(Format('%m', [DMCuadreTotal.QCuadreTotalLayawayTCuadre.Value]) + '      :Transacciones Layaway');
          DMCuadreTotal.TCuadreTemp.Append;  //añadir cuadre CuadreTemp
          DMCuadreTotal.TCuadreTempDescripcion.Value := 'Transacción Layaway';
          DMCuadreTotal.TCuadreTempCuadre.Value := DMCuadreTotal.QCuadreTotalLayawayTCuadre.Value;
          DMCuadreTotal.TCuadreTempGanancia.Value := 0;
          DMCuadreTotal.TCuadreTemp.Post;
        end;

      //Transacciones Abono Layaway
      DMCuadreTotal.QCuadreAbonoLayaway.Close;
      DMCuadreTotal.QCuadreAbonoLayaway.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
      DMCuadreTotal.QCuadreAbonoLayaway.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
      DMCuadreTotal.QCuadreAbonoLayaway.Open;
      if DMCuadreTotal.QCuadreAbonoLayawayTCuadre.Value > 0 then
        Begin
          //MemoCuadres.Lines.Add(Format('%m', [DMCuadreTotal.QCuadreAbonoLayawayTCuadre.Value]) + '      :Abonos Layaway');
          DMCuadreTotal.TCuadreTemp.Append;  //añadir cuadre CuadreTemp
          DMCuadreTotal.TCuadreTempDescripcion.Value := 'Abono a Layaway';
          DMCuadreTotal.TCuadreTempCuadre.Value := DMCuadreTotal.QCuadreAbonoLayawayTCuadre.Value;
          DMCuadreTotal.TCuadreTempGanancia.Value := 0;
          DMCuadreTotal.TCuadreTemp.Post;
        end;

      //Transacciones Debito
      DMCuadreTotal.QTotalCredito.Close;
      DMCuadreTotal.QTotalCredito.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
      DMCuadreTotal.QTotalCredito.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
      DMCuadreTotal.QTotalCredito.Open;
      if DMCuadreTotal.QTotalCreditoTCuadre.Value > 0 then
        Begin
          //MemoCuadres.Lines.Add(Format('%m', [DMCuadreTotal.QTotalCreditoTCuadre.Value]) + '      :Transacciones Debito');
          DMCuadreTotal.TCuadreTemp.Append;  //añadir cuadre CuadreTemp
          DMCuadreTotal.TCuadreTempDescripcion.Value := '- Transaccion Debito';
          DMCuadreTotal.TCuadreTempCuadre.Value := (DMCuadreTotal.QTotalCreditoTCuadre.Value - (DMCuadreTotal.QTotalCreditoTCuadre.Value + DMCuadreTotal.QTotalCreditoTCuadre.Value));
          DMCuadreTotal.TCuadreTempGanancia.Value := 0;
          DMCuadreTotal.TCuadreTemp.Post;
        end;

      //Abono a credito
      DMCuadreTotal.QTotalAbono.Close;
      DMCuadreTotal.QTotalAbono.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
      DMCuadreTotal.QTotalAbono.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
      DMCuadreTotal.QTotalAbono.Open;
      if DMCuadreTotal.QTotalAbonoTCuadre.Value > 0 then
        Begin
          //MemoCuadres.Lines.Add(Format('%m', [DMCuadreTotal.QTotalAbonoTCuadre.Value]) + '      :Transacciones Abonos');
          DMCuadreTotal.TCuadreTemp.Append;  //añadir cuadre CuadreTemp
          DMCuadreTotal.TCuadreTempDescripcion.Value := '+ Transacciones Abonos';
          DMCuadreTotal.TCuadreTempCuadre.Value := DMCuadreTotal.QTotalAbonoTCuadre.Value;
          DMCuadreTotal.TCuadreTempGanancia.Value := 0;
          DMCuadreTotal.TCuadreTemp.Post;
        end;

      //Transacciones Devoluciones
      DMCuadreTotal.QCuadreTotalDevoluciones.Close;
      DMCuadreTotal.QCuadreTotalDevoluciones.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
      DMCuadreTotal.QCuadreTotalDevoluciones.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
      DMCuadreTotal.QCuadreTotalDevoluciones.Open;
      if DMCuadreTotal.QCuadreTotalDevolucionesTCuadre.Value > 0 then
        Begin
          //MemoCuadres.Lines.Add(Format('%m', [DMCuadreTotal.QCuadreTotalDevolucionesTCuadre.Value]) + '      :Transacciones Devoluciónes');
          DMCuadreTotal.TCuadreTemp.Append;  //añadir cuadre CuadreTemp
          DMCuadreTotal.TCuadreTempDescripcion.Value := '- Transacciónes Devoluciones';
          DMCuadreTotal.TCuadreTempCuadre.Value := - DMCuadreTotal.QCuadreTotalDevolucionesTCuadre.Value;
          DMCuadreTotal.TCuadreTempGanancia.Value := 0;
          DMCuadreTotal.TCuadreTemp.Post;
        end;


      DMCuadreTotal.QTotalCuadre.Close;
      DMCuadreTotal.QTotalCuadre.Open;

      QRFCuadreTotal := TQRFCuadreTotal.Create(Self);
      QRFCuadreTotal.QRLabel1.Caption := DateToStr(DateTimePickerDesde.Date);
      QRFCuadreTotal.QRLabel4.Caption := DateToStr(DateTimePickerHasta.Date);
      QRFCuadreTotal.QRLabel11.Caption := Format('%m',[DMCuadreTotal.QTotalCuadreTCuadre.Value - DMCuadreTotal.QCuadreTotalPaidoutTPaidout.Value]);
      Data.TCuadreTemp.Refresh;
      //QRFCuadreTotal.QRCuadreTotal.Preview;

      FQRPaidoutsTotal := TFQRPaidoutsTotal.Create(self);
      DMCuadreTotal.QPaidoutsTotal.Close;
      DMCuadreTotal.QPaidoutsTotal.ParamByName('Fecha1').asDate := DateTimePickerDesde.Date;
      DMCuadreTotal.QPaidoutsTotal.ParamByName('Fecha2').asDate := DateTimePickerHasta.Date;
      DMCuadreTotal.QPaidoutsTotal.Open;

      with QRCompositeReport1 do
      begin
        Reports.Add(QRFCuadreTotal.QRCuadreTotal);
        Reports.Add(FQRPaidoutsTotal.QRPaidouts);
      end;
end;

if CuadrePorCaja = True then
begin
  TotalGanancias := 0;
  TotalFinal := 0;
  FPOS.MemoCuadres.Clear;
  FPOS.MemoCuadres.Lines.Add('Cuadre Por Caja...');
  Data.QBorrarTempCuadre.ExecSQL;
  DMCuadreTotal.TCuadreTemp.Refresh;

  //DMCuadreTotal.QCuadrePorCaja.Filtered := True;
  //DMCuadreTotal.QCuadrePorCaja.Filter := 'NoCaja = ' + chr(39) + EditNoCaja.Text + chr(39);
  DMCuadreTotal.QCuadrePorCaja.Close;
  DMCuadreTotal.QCuadrePorCaja.ParamByName('Fecha1').asDate := DateTimePickerDesde.Date;
  DMCuadreTotal.QCuadrePorCaja.ParamByName('Fecha2').asDate := DateTimePickerHasta.Date;
  DMCuadreTotal.QCuadrePorCaja.ParamByName('NoCaja').asInteger := StrToInt(EditNoCaja.Text);
  DMCuadreTotal.QCuadrePorCaja.Open;

  DMCuadreTotal.QCuadrePorCaja.First;
  While not DMCuadreTotal.QCuadrePorCaja.Eof do
  begin
    if Data.TDept.Locate('Departamento', DMCuadreTotal.QCuadrePorCajadepartamento.Value, []) then
    Descripcion := Data.TDeptDescripcion.Value
    else
    begin
      Counter := Counter + 1;
      Descripcion := 'Departamento desconocido ' + IntToStr(Counter) + '...';
    end;
    DMCuadreTotal.QInsertTCuadre.Close;
    DMCuadreTotal.QInsertTCuadre.ParamByName('Descripcion').asString := '+ '+Descripcion;
    DMCuadreTotal.QInsertTCuadre.ParamByName('Departamento').asInteger := DMCuadreTotal.QCuadrePorCajadepartamento.Value;
    DMCuadreTotal.QInsertTCuadre.ParamByName('Ganancia').asFloat := DMCuadreTotal.QCuadrePorCajasumGanancia.Value;
    DMCuadreTotal.QInsertTCuadre.ParamByName('Cuadre').asFloat := DMCuadreTotal.QCuadrePorCajasumPrecioVenta.Value;
    DMCuadreTotal.QInsertTCuadre.ExecSql;
    DMCuadreTotal.QCuadrePorCaja.Next;
  end;
  DMCuadreTotal.TCuadreTemp.Refresh;

  //Transacciones por Credit Cards
  Data.TTargetas.First;
  While not Data.TTargetas.Eof do
    Begin
      DMCuadreTotal.QCuadreCreditCardsPC.Close;
      DMCuadreTotal.QCuadreCreditCardsPC.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
      DMCuadreTotal.QCuadreCreditCardsPC.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
      DMCuadreTotal.QCuadreCreditCardsPC.ParamByName('Codigo').AsString := Data.TTargetasCodigo.Value;
      DMCuadreTotal.QCuadreCreditCardsPC.ParamByName('NoCaja').AsInteger := StrToInt(EditNoCaja.Text);
      DMCuadreTotal.QCuadreCreditCardsPC.Open;
      if DMCuadreTotal.QCuadreCreditCardsPCTCuadre.Value > 0 then
        Begin
          //MemoCuadres.Lines.Add(Format('%m',[DMCuadreTotal.QCuadreCreditCardsPCTCuadre.Value]) + '      :' +Data.TTargetasDescripcion.Value);
          DMCuadreTotal.TCuadreTemp.Append;  //añadir cuadre CuadreTemp
          DMCuadreTotal.TCuadreTempDescripcion.Value := Data.TTargetasDescripcion.Value;
          DMCuadreTotal.TCuadreTempCuadre.Value := DMCuadreTotal.QCuadreCreditCardsPCTCuadre.Value;
          DMCuadreTotal.TCuadreTempGanancia.Value := 0;
          DMCuadreTotal.TCuadreTemp.Post;
        end;
      //TotalFinal := TotalFinal + DMCuadreTotal.QCuadreCreditCardsPCTCuadre.Value;
      Data.TTargetas.Next;
     end;
     //Transacciones Paidout
      DMCuadreTotal.QCuadreTotalPaidoutPC.Close;
      DMCuadreTotal.QCuadreTotalPaidoutPC.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
      DMCuadreTotal.QCuadreTotalPaidoutPC.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
      DMCuadreTotal.QCuadreTotalPaidoutPC.ParamByName('NoCaja').asInteger := StrToInt(EditNoCaja.Text);
      DMCuadreTotal.QCuadreTotalPaidoutPC.Open;

      //TransaccionesLayaway
      DMCuadreTotal.QCuadreTotalLayawayPC.Close;
      DMCuadreTotal.QCuadreTotalLayawayPC.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
      DMCuadreTotal.QCuadreTotalLayawayPC.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
      DMCuadreTotal.QCuadreTotalLayawayPC.ParamByName('NoCaja').asInteger := StrToInt(EditNoCaja.Text);
      DMCuadreTotal.QCuadreTotalLayawayPC.Open;
      if DMCuadreTotal.QCuadreTotalLayawayPCTCuadre.Value > 0 then
        Begin
          //MemoCuadres.Lines.Add(Format('%m', [DMCuadreTotal.QCuadreTotalLayawayTCuadre.Value]) + '      :Transacciones Layaway');
          DMCuadreTotal.TCuadreTemp.Append;  //añadir cuadre CuadreTemp
          DMCuadreTotal.TCuadreTempDescripcion.Value := 'Transacción Layaway';
          DMCuadreTotal.TCuadreTempCuadre.Value := DMCuadreTotal.QCuadreTotalLayawayPCTCuadre.Value;
          DMCuadreTotal.TCuadreTempGanancia.Value := 0;
          DMCuadreTotal.TCuadreTemp.Post;
        end;

      //Transacciones Abono Layaway
      DMCuadreTotal.QCuadreAbonoLayawayPC.Close;
      DMCuadreTotal.QCuadreAbonoLayawayPC.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
      DMCuadreTotal.QCuadreAbonoLayawayPC.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
      DMCuadreTotal.QCuadreAbonoLayawayPC.ParamByName('NoCaja').asInteger := StrToInt(EditNoCaja.Text);
      DMCuadreTotal.QCuadreAbonoLayawayPC.Open;
      if DMCuadreTotal.QCuadreAbonoLayawayPCTCuadre.Value > 0 then
        Begin
          //MemoCuadres.Lines.Add(Format('%m', [DMCuadreTotal.QCuadreAbonoLayawayPCTCuadre.Value]) + '      :Abonos Layaway');
          DMCuadreTotal.TCuadreTemp.Append;  //añadir cuadre CuadreTemp
          DMCuadreTotal.TCuadreTempDescripcion.Value := 'Abono a Layaway';
          DMCuadreTotal.TCuadreTempCuadre.Value := DMCuadreTotal.QCuadreAbonoLayawayPCTCuadre.Value;
          DMCuadreTotal.TCuadreTempGanancia.Value := 0;
          DMCuadreTotal.TCuadreTemp.Post;
        end;

      //Transacciones Debito
      DMCuadreTotal.QTotalCreditoPC.Close;
      DMCuadreTotal.QTotalCreditoPC.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
      DMCuadreTotal.QTotalCreditoPC.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
      DMCuadreTotal.QTotalCreditoPC.ParamByName('NoCaja').asInteger := StrToInt(EditNoCaja.Text);
      DMCuadreTotal.QTotalCreditoPC.Open;
      if DMCuadreTotal.QTotalCreditoPCTCuadre.Value > 0 then
        Begin
          //MemoCuadres.Lines.Add(Format('%m', [DMCuadreTotal.QTotalCreditoPCTCuadre.Value]) + '      :Transacciones Debito');
          DMCuadreTotal.TCuadreTemp.Append;  //añadir cuadre CuadreTemp
          DMCuadreTotal.TCuadreTempDescripcion.Value := '- Transaccion Debito';
          DMCuadreTotal.TCuadreTempCuadre.Value := (DMCuadreTotal.QTotalCreditoPCTCuadre.Value - (DMCuadreTotal.QTotalCreditoPCTCuadre.Value + DMCuadreTotal.QTotalCreditoPCTCuadre.Value));
          DMCuadreTotal.TCuadreTempGanancia.Value := 0;
          DMCuadreTotal.TCuadreTemp.Post;
        end;

      //Abono a credito
      DMCuadreTotal.QTotalAbonoPC.Close;
      DMCuadreTotal.QTotalAbonoPC.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
      DMCuadreTotal.QTotalAbonoPC.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
      DMCuadreTotal.QTotalAbonoPC.ParamByName('NoCaja').asInteger := StrToInt(EditNoCaja.Text);
      DMCuadreTotal.QTotalAbonoPC.Open;
      if DMCuadreTotal.QTotalAbonoPCTCuadre.Value > 0 then
        Begin
          //MemoCuadres.Lines.Add(Format('%m', [DMCuadreTotal.QTotalAbonoPCTCuadre.Value]) + '      :Transacciones Abonos');
          DMCuadreTotal.TCuadreTemp.Append;  //añadir cuadre CuadreTemp
          DMCuadreTotal.TCuadreTempDescripcion.Value := '+ Transacciones Abonos';
          DMCuadreTotal.TCuadreTempCuadre.Value := DMCuadreTotal.QTotalAbonoPCTCuadre.Value;
          DMCuadreTotal.TCuadreTempGanancia.Value := 0;
          DMCuadreTotal.TCuadreTemp.Post;
        end;

      //Transacciones Devoluciones
      DMCuadreTotal.QCuadreTotalDevolucionesPC.Close;
      DMCuadreTotal.QCuadreTotalDevolucionesPC.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
      DMCuadreTotal.QCuadreTotalDevolucionesPC.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
      DMCuadreTotal.QCuadreTotalDevolucionesPC.ParamByName('NoCaja').asInteger := StrToInt(EditNoCaja.Text);
      DMCuadreTotal.QCuadreTotalDevolucionesPC.Open;
      if DMCuadreTotal.QCuadreTotalDevolucionesPCTCuadre.Value > 0 then
        Begin
          //MemoCuadres.Lines.Add(Format('%m', [DMCuadreTotal.QCuadreTotalDevolucionesPCTCuadre.Value]) + '      :Transacciones Devoluciónes');
          DMCuadreTotal.TCuadreTemp.Append;  //añadir cuadre CuadreTemp
          DMCuadreTotal.TCuadreTempDescripcion.Value := '- Transacciónes Devoluciones';
          DMCuadreTotal.TCuadreTempCuadre.Value := - DMCuadreTotal.QCuadreTotalDevolucionesPCTCuadre.Value;
          DMCuadreTotal.TCuadreTempGanancia.Value := 0;
          DMCuadreTotal.TCuadreTemp.Post;
        end;


      DMCuadreTotal.QTotalCuadre.Close;
      DMCuadreTotal.QTotalCuadre.Open;

      QRFCuadreTotal := TQRFCuadreTotal.Create(Self);
      QRFCuadreTotal.QRLabel1.Caption := DateToStr(DateTimePickerDesde.Date);
      QRFCuadreTotal.QRLabel4.Caption := DateToStr(DateTimePickerHasta.Date);
      QRFCuadreTotal.QRLabel11.Caption := Format('%m',[DMCuadreTotal.QTotalCuadreTCuadre.Value - DMCuadreTotal.QCuadreTotalPaidoutPCTPaidout.Value]);
      Data.TCuadreTemp.Refresh;


      FQRPaidoutsTotal := TFQRPaidoutsTotal.Create(self);
      DMCuadreTotal.QPaidoutsTotalPC.Close;
      DMCuadreTotal.QPaidoutsTotalPC.ParamByName('Fecha1').asDate := DateTimePickerDesde.Date;
      DMCuadreTotal.QPaidoutsTotalPC.ParamByName('Fecha2').asDate := DateTimePickerHasta.Date;
      DMCuadreTotal.QPaidoutsTotalPC.ParamByName('NoCaja').asInteger := StrToInt(EditNoCaja.Text);
      DMCuadreTotal.QPaidoutsTotalPC.Open;

      Data.TCuadreTemp.Close;
      Data.TCuadreTemp.Open;
      QRFCuadreTotal.QRLabel13.Caption := 'Cuadre Caja #' + EditNoCaja.Text;
      with QRCompositeReport1 do
      begin
        Reports.Add(QRFCuadreTotal.QRCuadreTotal);
        Reports.Add(FQRPaidoutsTotal.QRPaidouts);
      end;
end;
end;

procedure TFMenu.FormCreate(Sender: TObject);
begin
  DateTimePickerHasta.Date := Date;
  DateTimePickerDesde.Date := Date;
  CuadreTotal := False;
  CuadreParcial := False;
  CuadrePorCaja :=  False;
end;

end.
