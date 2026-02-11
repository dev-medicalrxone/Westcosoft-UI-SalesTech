unit UntCalcularAusp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  StdCtrls, ComCtrls, ImgList, Grids, DBGrids,
  ExtCtrls, ToolWin, Data.DB, System.ImageList, ResourceLocalizer;

type
  TFrmCalcularAusp = class(TForm)
    DBGrid1: TDBGrid;
    ImageList1: TImageList;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    Label1: TLabel;
    DateTimePickerDesde: TDateTimePicker;
    Label2: TLabel;
    DateTimePickerHasta: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure BtnExecuteClick(Sender: TObject);
    procedure BtnExportClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure language;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCalcularAusp: TFrmCalcularAusp;

implementation

uses UntDMMidas, SqlExpr, UntSelAuspicio, UntRptAuspicio, UntCommonPOS, untMain;

{$R *.dfm}

procedure TFrmCalcularAusp.FormCreate(Sender: TObject);
begin
  DateTimePickerDesde.Date := Date;
  DateTimePickerHasta.Date := Date;
  With DMMidas do
  begin
    CDSClientes.Close;
    CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where socio > ' + #39 + '         ' + #39 + ' and socio <> ' + #39 + '0' + #39 + ' order by Socio';
    CDSCLIENTES.Open;
  end;
end;

procedure TFrmCalcularAusp.FormShow(Sender: TObject);
begin
  if FrmMain.languageStr = 'English' then
    language;
end;

procedure TFrmCalcularAusp.language;
begin
  FrmCalcularAusp.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 342);
  label1.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 343);
  label2.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 344);
  DBGrid1.Columns[0].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 053);
  DBGrid1.Columns[1].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 345);
  DBGrid1.Columns[2].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 346);
  DBGrid1.Columns[3].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 059);
end;

procedure TFrmCalcularAusp.BtnExecuteClick(Sender: TObject);
Var
  Directory, StartTime, EndTime, SelTxt, FromTxt, WhereTxt, GroupTxt: String;
  Day,Month, Year: Word;
  TransValue, RxValue: Double;
  Counter: Integer;
  //MyFile: TextFile;
begin
      Counter := 0;
      With DMMidas do

      begin
        CDSClientes.First;
        While not CDSClientes.Eof do
        begin
          SelTxt := 'select pacientes.socio, pacientes.apellidopaterno,'
                    + ' pacientes.apellidomaterno, pacientes.nombre, sum(amount)';
          FromTxt := ' from clienttransactions inner join pacientes on'
                     + ' clienttransactions.clientno = pacientes.numerocliente';
          GroupTxt := ' group by pacientes.socio, pacientes.apellidopaterno,'
                      + ' pacientes.apellidomaterno, pacientes.nombre order by pacientes.socio';
          //WhereTxt := ' where code = ''AU''' + ' and pacientes.socio > ' + #39 +'0'+ #39 ;
          WhereTxt := ' where code = ''AU''' + ' and pacientes.socio = ' + #39 + tRIM(CDSClientesSOCIO.Value) + #39;
          //DecodeDate(DateTimePickerDesde.Date,year,month,day);
          //StartTime := '''' + Format('%.2d/%.2d/%.4d 00:00:00',[Month,Day,Year]) + '''';
          StartTime := DateToStr(DateTimePickerDesde.Date);
          //DecodeDate(DateTimePickerHasta.Date,year,month,day);
          //EndTime := '''' + Format('%.2d/%.2d/%.4d 00:00:00',[Month,Day,Year]) + '''';
          EndTime := DateToStr(DateTimePickerHasta.Date);
          WhereTxt := WhereTxt + ' and DATEOFTRANS between '+ #39 + Starttime + #39 +
                                   ' and ' + #39 + EndTime + #39;


          With CDSAdHocPrintList do
          begin
            SQL.Clear;
            SQL.Add(SelTxt);
            SQL.Add(FromTxt);
            SQL.Add(WhereTxt);
            SQL.Add(GroupTxt);
            //ShowMessage(SQL.Text);
            Open;
            TransValue := Fields[4].asFloat;

            CDSAdHocPrintList.Close;
            SQL.Clear;
            SQL.Add('Select sum(Pago_Plan) from OTC where NumeroCliente = ' + CDSClientesNUMEROCLIENTE.AsString  + ' and FechaOTC between '+ #39 + DateToStr(DateTimePickerDesde.Date)+ #39 + ' and ' + #39 + DateToStr(DateTimePickerHasta.Date)+ #39);
            //ShowMessage(SQL.Text);
            Open;
            RxValue := Fields[0].asFloat;
            CommonPOS.DisconnectFromDatabase;
            With SQLSPCalcularAusp do
            begin
              Prepare;
              ParamByName('@strAuspicio').AsFloat := TransValue + RxValue;
              ParamByName('@NoCliente').AsInteger := CDSClientesNUMEROCLIENTE.Value;
              ExecProc;
            end;

            {SQLQueryCalcAusp.Close;
            SQLQueryCalcAusp.SQL.Text := 'Update Pacientes set Auspicio = ' + FloatToStr(TransValue + RxValue);
            SQLQueryCalcAusp.ExecSQL;}
            TransValue := 0;
            RxValue := 0;

             Next;
          end;
          Counter := Counter + 1;
          StatusBar1.Panels[0].Text := 'Registros actualizados: ' + IntToStr(counter);
          StatusBar1.Refresh;
          CDSClientes.Next;
        end;
      end;
      With DMMidas do
      begin
        CDSClientes.Close;
        CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where socio > ' + #39 + '         ' + #39 + ' and socio <> ' + #39 + '0' + #39 + ' order by socio';
        CDSCLIENTES.Open;
      end;

end;

procedure TFrmCalcularAusp.BtnExportClick(Sender: TObject);
Var
  Directory: String;
  MyFile: TextFile;
begin
  FrmSelAuspicio := TFrmSelAuspicio.Create(Self);
  With FrmSelAuspicio do
  begin
    ShowModal;
    Directory := Edit1.Text;
    If ModalResult = mrOK then
    begin
      //=== Export to text File ====//
      With DMMidas do
      begin
        CDSClientes.Close;
        CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where socio > ' + #39 + '         ' + #39 + ' and socio <> ' + #39 + '0' + #39 + ' order by Socio';
        CDSCLIENTES.Open;
        AssignFile(MyFile, Directory);
        Rewrite(MyFile);
          CDSClientes.First;
          While not CDSClientes.Eof do
          begin
            if CDSClientesAUSPICIO.Value > 0 then
            begin
              Writeln(MyFile, Trim(CDSClientesSocio.Value) + '|' + Trim(CDSClientesNombreCompleto2.Value) + '|' + Format('%.2n',[CDSClientesAuspicio.asFloat]));
            end;
            CDSClientes.Next;
          end;
          CloseFile(MyFile);
          if FrmMain.LanguageStr = 'English' then
            ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 347) + Directory)
          else
          ShowMessage('Auspicio exportado a ' + Directory);
      end;
    end;
    Free;
  end;
end;

procedure TFrmCalcularAusp.BtnPrintClick(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSClientes.Close;
    CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where socio > ' + #39 + '         ' + #39 + ' and socio <> ' + #39 + '0' + #39 + ' and Auspicio > 0 order by socio';
    CDSCLIENTES.Open;
  end;
  FrmRptAuspicio := TFrmRptAuspicio.Create(self);
  With FrmRptAuspicio do
  begin
    with FrmRptAuspicio do
    begin
      //ppLabel4.Caption := 'Reporte de Auspicio, desde: ' + DateToStr(DateTimePickerDesde.date) + ' hasta: ' + datetostr(DateTimePickerHasta.date);
      //ppReportAuspicio.Print;
      Free;
    end;
  end;
  With DMMidas do
  begin
    CDSClientes.Close;
    CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where socio > ' + #39 + '         ' + #39 + ' and socio <> ' + #39 + '0' + #39 + ' order by socio';
    CDSCLIENTES.Open;
  end;
end;

end.
