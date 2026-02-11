unit UTransacciones;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, Buttons, StdCtrls, DBCtrls, DB,
  DBTables, Mask, WinTypes, ComCtrls, Printers,
  Registry, Menus, ToolWin, jpeg, ImgList;

type
  TFTipoTrans = class(TForm)
    Panel1: TPanel;
    RGReportes: TRadioGroup;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    DateTimePickerDesde: TDateTimePicker;
    DateTimePickerHasta: TDateTimePicker;
    EditCajero: TEdit;
    Label3: TLabel;
    EditTurno: TEdit;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    EditNoCaja: TEdit;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTipoTrans: TFTipoTrans;

implementation

uses UTipoTrans, UPOS, UCalendar, UCommonObj, UCommonRoutines, UCuadre,
  UEmploees, UData, UntUsuario;

{$R *.DFM}

procedure TFTipoTrans.Button1Click(Sender: TObject);
begin
 if Data.TPasswords.Locate('Iniciales', FTipoTrans.EditCajero.Text,[loCaseInsensitive]) then
 Begin
   Case RGReportes.ItemIndex  of
     0: begin
          if Data.TPasswordsVerTransacciones.Value = 'T' then
          begin
            FTransacciones := TFTransacciones.Create(Self);
            FTransacciones.QTodasTrans.Close;
            FTransacciones.QTodasTrans.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
            FTransacciones.QTodasTrans.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
            FTransacciones.QTodasTrans.Open;
            FTransacciones.DBGrid1.DataSource := FTransacciones.DSTodasTrans;
            FTransacciones.ShowModal;
            FTransacciones.Free;
          end
          else
            ShowMessage('Usuario no autorizado');
        end;
     1: begin
          if Data.TPasswordsVerTransacciones.Value = 'T' then
          begin
            FTransacciones := TFTransacciones.Create(Self);
            FTransacciones.QTransCash.Close;
            FTransacciones.QTransCash.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;;
            FTransacciones.QTransCash.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;;
            FTransacciones.QTransCash.Open;
            FTransacciones.DBGrid1.DataSource := FTransacciones.DSTransCash;
            FTransacciones.ShowModal;
            FTransacciones.Free;
          end
          else
            ShowMessage('Usuario no autorizado');
        end;
     2: begin
          if Data.TPasswordsVerTransacciones.Value = 'T' then
          begin
            FTransacciones := TFTransacciones.Create(Self);
            FTransacciones.QTransVisa.Close;
            FTransacciones.QTransVisa.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;;
            FTransacciones.QTransVisa.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;;
            FTransacciones.QTransVisa.Open;
            FTransacciones.DBGrid1.DataSource := FTransacciones.DSTransVisa;
            FTransacciones.ShowModal;
            FTransacciones.Free;
          end
          else
            ShowMessage('Usuario no autorizado');

        end;
     3: begin
        if Data.TPasswordsVerTransacciones.Value = 'T' then
         begin
           FTransacciones := TFTransacciones.Create(Self);
           FTransacciones.QTransMC.Close;
           FTransacciones.QTransMC.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;;
           FTransacciones.QTransMC.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;;
           FTransacciones.QTransMC.Open;
           FTransacciones.DBGrid1.DataSource := FTransacciones.DSTransMC;
           FTransacciones.ShowModal;
           FTransacciones.Free;
         end
         else
           ShowMessage('Usuario no autorizado....');
        end;
     4: begin
        if Data.TPasswordsVerTransacciones.Value = 'T' then
         begin
           FTransacciones := TFTransacciones.Create(Self);
           FTransacciones.QTransDisc.Close;
           FTransacciones.QTransDisc.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;;
           FTransacciones.QTransDisc.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;;
           FTransacciones.QTransDisc.Open;
           FTransacciones.DBGrid1.DataSource := FTransacciones.DSTransDisc;
           FTransacciones.ShowModal;
           FTransacciones.Free;
         end
         else
         ShowMessage('Usuario no autorizado....');
        end;
     5: begin
        if Data.TPasswordsVerTransacciones.Value = 'T' then
         begin
           FTransacciones := TFTransacciones.Create(Self);
           FTransacciones.QTransAmEx.Close;
           FTransacciones.QTransAmEx.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;;
           FTransacciones.QTransAmEx.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;;
           FTransacciones.QTransAmEx.Open;
           FTransacciones.DBGrid1.DataSource := FTransacciones.DSTransAmEx;
           FTransacciones.ShowModal;
           FTransacciones.Free;
         end
         else
         ShowMessage('Usuario no autorizado...');
        end;
     6: begin
        if Data.TPasswordsVerTransacciones.Value = 'T' then
         begin
           FTransacciones := TFTransacciones.Create(Self);
           FTransacciones.QTransSavi.Close;
           FTransacciones.QTransSavi.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;;
           FTransacciones.QTransSavi.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;;
           FTransacciones.QTransSavi.Open;
           FTransacciones.DBGrid1.DataSource := FTransacciones.DSTransSavi;
           FTransacciones.ShowModal;
           FTransacciones.Free;
         end
         else
           ShowMessage('Usuario no autorizado...');
        end;
     7: begin
        if Data.TPasswordsVerTransacciones.Value = 'T' then
         begin
           FTransacciones := TFTransacciones.Create(Self);
           FTransacciones.QTransChec.Close;
           FTransacciones.QTransChec.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;;
           FTransacciones.QTransChec.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;;
           FTransacciones.QTransChec.Open;
           FTransacciones.DBGrid1.DataSource := FTransacciones.DSTransChec;
           FTransacciones.ShowModal;
           FTransacciones.Free;
         end
         else
           ShowMessage('Usuario no autorizado...');
        end;
     8: begin
        if Data.TPasswordsVerTransacciones.Value = 'T' then
         begin
           FTransacciones := TFTransacciones.Create(Self);
           FTransacciones.QTransCred.Close;
           FTransacciones.QTransCred.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;;
           FTransacciones.QTransCred.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;;
           FTransacciones.QTransCred.Open;
           FTransacciones.DBGrid1.DataSource := FTransacciones.DSTransCred;
           FTransacciones.ShowModal;
           FTransacciones.Free;
         end
         else
           ShowMessage('Usuario no autorizado...');
        end;
     10: begin
         if Data.TPasswordsVerTransacciones.Value = 'T' then
          begin
           FTransacciones := TFTransacciones.Create(Self);
           FTransacciones.QPaidout.Close;
           FTransacciones.QPaidout.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;;
           FTransacciones.QPaidout.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;;
           FTransacciones.QPaidout.Open;
           FTransacciones.DBGrid1.DataSource := FTransacciones.DSPaidout;
           FTransacciones.ShowModal;
           FTransacciones.Free;
          end
          else
          showMessage('Usuario no autorizado...');
         end;
     9: begin
        if Data.TPasswordsVerTransacciones.Value = 'T' then
         begin
           FTransacciones := TFTransacciones.Create(Self);
           FTransacciones.QTransAbon.Close;
           FTransacciones.QTransAbon.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
           FTransacciones.QTransAbon.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
           FTransacciones.QTransAbon.Open;
           FTransacciones.DBGrid1.DataSource := FTransacciones.DSTransAbon;
           FTransacciones.ShowModal;
           FTransacciones.Free;
         end
         else
           ShowMessage('Usuario no autorizado...');
         end;
     11: begin
         if Data.TPasswordsCuadreParcial.Value = 'T' then
         begin
           QRCuadre := TQRCuadre.Create(self);

           QRCuadre.QAbonos.Close;
           QRCuadre.QAbonos.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
           QRCuadre.QAbonos.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
           QRCuadre.QAbonos.ParamByName('Turno').AsInteger := StrToInt(EditTurno.Text);
           QRCuadre.QAbonos.ParamByName('Usuario').AsString := EditCajero.Text;
           QRCuadre.QAbonos.ParamByName('NoCaja').AsInteger := StrToInt(EditNoCaja.Text);
           QRCuadre.QAbonos.Open;

           QRCuadre.QPaidout.Close;
           QRCuadre.QPaidout.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
           QRCuadre.QPaidout.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
           QRCuadre.QPaidout.ParamByName('Turno').AsInteger := StrToInt(EditTurno.Text);
           QRCuadre.QPaidout.ParamByName('Usuario').AsString := EditCajero.Text;
           QRCuadre.QPaidout.ParamByName('NoCaja').AsInteger := StrToInt(EditNoCaja.Text);
           QRCuadre.QPaidout.Open;

           QRCuadre.QDevolucion.Close;
           QRCuadre.QDevolucion.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
           QRCuadre.QDevolucion.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
           QRCuadre.QDevolucion.ParamByName('Turno').AsInteger := StrToInt(EditTurno.Text);
           QRCuadre.QDevolucion.ParamByName('Usuario').AsString := EditCajero.Text;
           QRCuadre.QDevolucion.ParamByName('NoCaja').AsInteger := StrToInt(EditNoCaja.Text);
           QRCuadre.QDevolucion.Open;

           QRCuadre.QDebito.Close;
           QRCuadre.QDebito.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
           QRCuadre.QDebito.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
           QRCuadre.QDebito.ParamByName('Turno').AsInteger := StrToInt(EditTurno.Text);
           QRCuadre.QDebito.ParamByName('Usuario').AsString := EditCajero.Text;
           QRCuadre.QDebito.ParamByName('NoCaja').AsInteger := StrToInt(EditNoCaja.Text);
           QRCuadre.QDebito.Open;

           QRCuadre.QSumaCuadre.Close;
           QRCuadre.QSumaCuadre.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
           QRCuadre.QSumaCuadre.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
           QRCuadre.QSumaCuadre.ParamByName('Turno').AsInteger := StrToInt(EditTurno.Text);
           QRCuadre.QSumaCuadre.ParamByName('Usuario').AsString := EditCajero.Text;
           QRCuadre.QSumaCuadre.ParamByName('NoCaja').AsInteger := StrToInt(EditNoCaja.Text);
           QRCuadre.QSumaCuadre.Open;

           QRCuadre.QCuadre.Close;
           QRCuadre.QCuadre.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
           QRCuadre.QCuadre.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
           QRCuadre.QCuadre.ParamByName('Turno').AsInteger := StrToInt(EditTurno.Text);
           QRCuadre.QCuadre.ParamByName('Usuario').AsString := EditCajero.Text;
           QRCuadre.QCuadre.ParamByName('NoCaja').AsInteger := StrToInt(EditNoCaja.Text);
           QRCuadre.QCuadre.Open;
           QRCuadre.QRLabelHeading.Caption := Data.TCreditDebitSetupStoreName.Value;
           QRCuadre.QRLabel5.Caption := 'Cuadre de ' + DateToStr(DateTimePickerDesde.Date) + ' hasta ' + DateToStr(DateTimePickerHasta.Date)
                                         +' Usuario: ' + Data.TPasswordsUserName.Value +' Caja #: ' + FTipoTrans.EditNoCaja.Text;
           QRCuadre.QRLabelTotal.Caption := Format('%m', [(QRCuadre.QSumaCuadresumPrecioVenta.Value + QRCuadre.QAbonossumPrecioVenta.Value) -
                                            (QRCuadre.QDebitosumPrecioVenta.Value + QRCuadre.QPaidoutsumPrecioVenta.Value
                                             + QRCuadre.QDevolucionsumPrecioVenta.Value)]);
           QRCuadre.QRCuadreRep.preview;
         end
         else
           ShowMessage('Usuario no autorizado...');
         end;
     12: begin
          if Data.TPasswordsCuadreTotal.Value = 'T' then
          begin
           QRCuadre := TQRCuadre.Create(self);

           QRCuadre.QRDBTextDescrip.DataSet := QRCuadre.QCuadreTC;
           QRCuadre.QRDBTextDept.DataSet := QRCuadre.QCuadreTC;
           QRCuadre.QRDBTextGanan.DataSet := QRCuadre.QCuadreTC;
           QRCuadre.QRDBTextPrecio.DataSet := QRCuadre.QCuadreTC;
           QRCuadre.QRDBTextTotalVentas.DataField := Format('%m', [QRCuadre.QSumaCuadreTCsumPrecioVenta.Value]);

           QRCuadre.QAbonosTC.Close;
           QRCuadre.QAbonosTC.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
           QRCuadre.QAbonosTC.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
           QRCuadre.QAbonosTC.ParamByName('Turno').AsInteger := StrToInt(EditTurno.Text);
           QRCuadre.QAbonosTC.ParamByName('NoCaja').AsInteger := StrToInt(EditNoCaja.Text);
           QRCuadre.QAbonosTC.Open;
           QRCuadre.QRDBTextAbono.DataSet := QRCuadre.QAbonosTC;

           QRCuadre.QPaidoutTC.Close;
           QRCuadre.QPaidoutTC.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
           QRCuadre.QPaidoutTC.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
           QRCuadre.QPaidoutTC.ParamByName('Turno').AsInteger := StrToInt(EditTurno.Text);
           QRCuadre.QPaidoutTC.ParamByName('NoCaja').AsInteger := StrToInt(EditNoCaja.Text);
           QRCuadre.QPaidoutTC.Open;
           QRCuadre.QRDBTextPaidout.DataSet := QRCuadre.QPaidoutTC;

           QRCuadre.QDevolucionTC.Close;
           QRCuadre.QDevolucionTC.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
           QRCuadre.QDevolucionTC.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
           QRCuadre.QDevolucionTC.ParamByName('Turno').AsInteger := StrToInt(EditTurno.Text);
           QRCuadre.QDevolucionTC.ParamByName('NoCaja').AsInteger := StrToInt(EditNoCaja.Text);
           QRCuadre.QDevolucionTC.Open;
           QRCuadre.QRDBTextDevo.DataSet := QRCuadre.QDevolucionTC;

           QRCuadre.QDebitoTC.Close;
           QRCuadre.QDebitoTC.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
           QRCuadre.QDebitoTC.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
           QRCuadre.QDebitoTC.ParamByName('Turno').AsInteger := StrToInt(EditTurno.Text);
           QRCuadre.QDebitoTC.ParamByName('NoCaja').AsInteger := StrToInt(EditNoCaja.Text);
           QRCuadre.QDebitoTC.Open;
           QRCuadre.QRDBTextDebito.DataSet := QRCuadre.QDebitoTC;

           QRCuadre.QSumaCuadreTC.Close;
           QRCuadre.QSumaCuadreTC.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
           QRCuadre.QSumaCuadreTC.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
           QRCuadre.QSumaCuadreTC.ParamByName('Turno').AsInteger := StrToInt(EditTurno.Text);
           QRCuadre.QSumaCuadreTC.ParamByName('NoCaja').AsInteger := StrToInt(EditNoCaja.Text);
           QRCuadre.QSumaCuadreTC.Open;
           QRCuadre.QRDBTextGanancia.DataSet := QRCuadre.QSumaCuadreTC;


           QRCuadre.QCuadreTC.Close;
           QRCuadre.QCuadreTC.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
           QRCuadre.QCuadreTC.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
           QRCuadre.QCuadreTC.ParamByName('Turno').AsInteger := StrToInt(EditTurno.Text);
           QRCuadre.QCuadreTC.ParamByName('NoCaja').AsInteger := StrToInt(EditNoCaja.Text);
           QRCuadre.QCuadreTC.Open;

           QRCuadre.QRCuadreRep.DataSet := QRCuadre.QCuadreTC;
           QRCuadre.QRLabelHeading.Caption := Data.TCreditDebitSetupStoreName.Value;
           QRCuadre.QRLabel5.Caption := 'Cuadre total de ' + DateToStr(DateTimePickerDesde.Date) + ' hasta ' + DateToStr(DateTimePickerHasta.Date)
                                         +' Caja #: ' + FTipoTrans.EditNoCaja.Text;
	   QRCuadre.QRLabelTotal.Caption := Format('%m', [(QRCuadre.QSumaCuadreTCsumPrecioVenta.Value + QRCuadre.QAbonosTCSumPrecioVenta.Value) -
                                            (QRCuadre.QDebitoTCsumPrecioVenta.Value + QRCuadre.QPaidoutTCsumPrecioVenta.Value
                                             + QRCuadre.QDevolucionTCsumPrecioVenta.Value)]);
           QRCuadre.QRCuadreRep.preview;
          end
          else
            ShowMessage('Usuario no autorizado...');
         end;
     13: begin
          if Data.TPasswordsCuadreTotal.Value = 'T' then
          begin
           QRCuadre := TQRCuadre.Create(self);

           QRCuadre.QRDBTextDescrip.DataSet := QRCuadre.QCuadreT;
           QRCuadre.QRDBTextDept.DataSet := QRCuadre.QCuadreT;
           QRCuadre.QRDBTextGanan.DataSet := QRCuadre.QCuadreT;
           QRCuadre.QRDBTextPrecio.DataSet := QRCuadre.QCuadreT;
           QRCuadre.QRDBTextTotalVentas.DataSet := QRCuadre.QcuadreT;

           QRCuadre.QAbonosT.Close;
           QRCuadre.QAbonosT.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
           QRCuadre.QAbonosT.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
           QRCuadre.QAbonosT.Open;
           QRCuadre.QRDBTextAbono.DataSet := QRCuadre.QAbonosT;

           QRCuadre.QPaidoutT.Close;
           QRCuadre.QPaidoutT.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
           QRCuadre.QPaidoutT.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
           QRCuadre.QPaidoutT.Open;
           QRCuadre.QRDBTextPaidout.DataSet := QRCuadre.QPaidoutT;

           QRCuadre.QDevolucionT.Close;
           QRCuadre.QDevolucionT.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
           QRCuadre.QDevolucionT.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
           QRCuadre.QDevolucionT.Open;
           QRCuadre.QRDBTextDevo.DataSet := QRCuadre.QDevolucionT;

           QRCuadre.QDebitoT.Close;
           QRCuadre.QDebitoT.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
           QRCuadre.QDebitoT.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
           QRCuadre.QDebitoT.Open;
           QRCuadre.QRDBTextDebito.DataSet := QRCuadre.QDebitoT;

           QRCuadre.QSumaCuadreT.Close;
           QRCuadre.QSumaCuadreT.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
           QRCuadre.QSumaCuadreT.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
           QRCuadre.QSumaCuadreT.Open;
           QRCuadre.QRDBTextGanancia.DataSet := QRCuadre.QSumaCuadreT;


           QRCuadre.QCuadreT.Close;
           QRCuadre.QCuadreT.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
           QRCuadre.QCuadreT.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
           QRCuadre.QCuadreT.Open;

           QRCuadre.QRCuadreRep.DataSet := QRCuadre.QCuadreT;
           QRCuadre.QRLabelHeading.Caption := Data.TCreditDebitSetupStoreName.Value;
           QRCuadre.QRLabel5.Caption := 'Cuadre total de ' + DateToStr(DateTimePickerDesde.Date) + ' hasta ' + DateToStr(DateTimePickerHasta.Date);
	   QRCuadre.QRLabelTotal.Caption := Format('%m', [(QRCuadre.QSumaCuadreTsumPrecioVenta.Value + QRCuadre.QAbonosTSumPrecioVenta.Value) -
                                            (QRCuadre.QDebitoTsumPrecioVenta.Value + QRCuadre.QPaidoutTsumPrecioVenta.Value
                                             + QRCuadre.QDevolucionTsumPrecioVenta.Value)]);
           QRCuadre.QRCuadreRep.preview;
          end
          else
            ShowMessage('Usuario no autorizado...');
         end;
     14: begin
          if Data.TPasswordsCuadreTotal.Value = 'T' then
          begin
           QRCuadre := TQRCuadre.Create(self);

           QRCuadre.QRDBTextDescrip.DataSet := QRCuadre.QCuadreCaja;
           QRCuadre.QRDBTextDept.DataSet := QRCuadre.QCuadreCaja;
           QRCuadre.QRDBTextGanan.DataSet := QRCuadre.QCuadreCaja;
           QRCuadre.QRDBTextPrecio.DataSet := QRCuadre.QCuadreCaja;
           QRCuadre.QRDBTextTotalVentas.DataSet := QRCuadre.QCuadreCaja;

           QRCuadre.QAbonosCaja.Close;
           QRCuadre.QAbonosCaja.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
           QRCuadre.QAbonosCaja.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
           QRCuadre.QAbonosCaja.ParamByName('NoCaja').AsInteger := StrToInt(EditNoCaja.Text);
           QRCuadre.QAbonosCaja.Open;
           QRCuadre.QRDBTextAbono.DataSet := QRCuadre.QAbonosCaja;

           QRCuadre.QPaidoutCaja.Close;
           QRCuadre.QPaidoutCaja.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
           QRCuadre.QPaidoutCaja.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
           QRCuadre.QPaidoutCaja.ParamByName('NoCaja').AsInteger := StrToInt(EditNoCaja.Text);
           QRCuadre.QPaidoutCaja.Open;
           QRCuadre.QRDBTextPaidout.DataSet := QRCuadre.QPaidoutCaja;

           QRCuadre.QDevolucionCaja.Close;
           QRCuadre.QDevolucionCaja.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
           QRCuadre.QDevolucionCaja.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
           QRCuadre.QDevolucionCaja.ParamByName('NoCaja').AsInteger := StrToInt(EditNoCaja.Text);
           QRCuadre.QDevolucionCaja.Open;
           QRCuadre.QRDBTextDevo.DataSet := QRCuadre.QDevolucionCaja;

           QRCuadre.QDebitoCaja.Close;
           QRCuadre.QDebitoCaja.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
           QRCuadre.QDebitoCaja.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
           QRCuadre.QDebitoCaja.ParamByName('NoCaja').AsInteger := StrToInt(EditNoCaja.Text);
           QRCuadre.QDebitoCaja.Open;
           QRCuadre.QRDBTextDebito.DataSet := QRCuadre.QDebitoCaja;

           QRCuadre.QSumaCuadreCaja.Close;
           QRCuadre.QSumaCuadreCaja.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
           QRCuadre.QSumaCuadreCaja.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
           QRCuadre.QSumaCuadreCaja.ParamByName('NoCaja').AsInteger := StrToInt(EditNoCaja.Text);
           QRCuadre.QSumaCuadreCaja.Open;
           QRCuadre.QRDBTextGanancia.DataSet := QRCuadre.QSumaCuadreCaja;


           QRCuadre.QCuadreCaja.Close;
           QRCuadre.QCuadreCaja.ParamByName('FechaDesde').AsDate := DateTimePickerDesde.Date;
           QRCuadre.QCuadreCaja.ParamByName('FechaHasta').AsDate := DateTimePickerHasta.Date;
           QRCuadre.QCuadreCaja.ParamByName('NoCaja').AsInteger := StrToInt(EditNoCaja.Text);
           QRCuadre.QCuadreCaja.Open;

           QRCuadre.QRCuadreRep.DataSet := QRCuadre.QCuadreCaja;
           QRCuadre.QRLabelHeading.Caption := Data.TCreditDebitSetupStoreName.Value;
           QRCuadre.QRLabel5.Caption := 'Cuadre total de ' + DateToStr(DateTimePickerDesde.Date) + ' hasta ' + DateToStr(DateTimePickerHasta.Date)
                                         +' Caja #: ' + FTipoTrans.EditNoCaja.Text;
           QRCuadre.QRLabelTotal.Caption := Format('%m', [(QRCuadre.QSumaCuadreCajasumPrecioVenta.Value + QRCuadre.QAbonosCajaSumPrecioVenta.Value) -
                                            (QRCuadre.QDebitoCajasumPrecioVenta.Value + QRCuadre.QPaidoutCajasumPrecioVenta.Value
                                             + QRCuadre.QDevolucionCajasumPrecioVenta.Value)]);
           QRCuadre.QRCuadreRep.preview;
          end
          else
          ShowMessage('Usuario no autorizado...');
         end;
   end;
 end;
end;


procedure TFTipoTrans.SpeedButton1Click(Sender: TObject);
begin
  FEmploees := TFEmploees.Create(Self);
  With FEmploees do
  begin
    ShowModal;
    if ModalResult = mrOk then
    begin
      FTipoTrans.EditCajero.Text := Data.TPasswordsIniciales.Value;
    end;
    Free;
  end;
end;

procedure TFTipoTrans.FormCreate(Sender: TObject);
begin
  EditNoCaja.Text := FPOS.EditNoCaja.Text;
  EditTurno.Text := FPOS.EditTurno.Text;
  EditCajero.Text := FPOS.EditUsuario.Text;
  DateTimePickerDesde.Date := Date;
  DateTimePickerHasta.Date := Date;
end;

end.
