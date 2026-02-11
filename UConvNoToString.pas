unit UConvNoToString;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, ExtCtrls, ComCtrls;

type
  TFNumberToString = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Button1: TButton;
    Panel2: TPanel;
    EString: TEdit;
    ENumber: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    EConsepto: TEdit;
    Label4: TLabel;
    RadioButton1: TRadioButton;
    SpeedButton2: TSpeedButton;
    Button2: TButton;
    EditNumeroCheque: TEdit;
    Label5: TLabel;
    EditNumeroCuenta: TEdit;
    Label6: TLabel;
    DateTimePicker1: TDateTimePicker;
    Procedure Numbers;
{    procedure SingleDigit;
    procedure DoubleDigit;
    procedure TripleDigit;
    procedure FourDigit;
    procedure Teens;}

    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNumberToString: TFNumberToString;
  Number: String;
  Number2: String;
  FinalNumber: String;
  No: String;
  Number1: Double;
  Words, Nu1, Nu2, Nu3, Nu4, Nu5, Nu6: String;
  No1: Double;
  Numero: String;
  NumeroIncExp: String;

implementation

uses UChequeManual2, UData, UChequeManual3, UntIncExpense, UDMSuplidores;

{$R *.DFM}
Procedure TFNumberToString.Numbers;
begin
  if No = '0' then Words := '';
  if No = '1' then Words := 'one';
  if No = '2' then Words := 'two';
  if No = '3' then Words := 'three';
  if No = '4' then Words := 'four';
  if No = '5' then Words := 'five';
  if No = '6' then Words := 'six';
  if No = '7' then Words := 'seven';
  if No = '8' then Words := 'eight';
  if No = '9' then Words := 'nine';
  if No = '10' then Words := 'ten';
  if No = '11' then Words := 'eleven';
  if No = '12' then Words := 'twelve';
  if No = '13' then Words := 'thirteen';
  if No = '14' then Words := 'fourteen';
  if No = '15' then Words := 'fifteen';
  if No = '16' then Words := 'sixteen';
  if No = '17' then Words := 'seventeen';
  if No = '18' then Words := 'eighteen';
  if No = '19' then Words := 'nineteen';
  if No = '20' then Words := 'twenty';
  if No = '30' then Words := 'thirty';
  if No = '40' then Words := 'fourty';
  if No = '50' then Words := 'fifty';
  if No = '60' then Words := 'sixty';
  if No = '70' then Words := 'seventy';
  if No = '80' then Words := 'eighty';
  if No = '90' then Words := 'ninety';
end;

procedure TFNumberToString.Button1Click(Sender: TObject);
Var
  Cheque: Integer;
begin
  Cheque := Data.TCreditDebitSetupCheque.Value;
  if Cheque = 1 then
  begin
    FQRChequeManual := TFQRChequeManual.Create(self);
    FQRChequeManual.QRLabel4.Caption := DateToStr(DateTimePicker1.DateTime);
    FQRChequeManual.QRLabel5.Caption := FNumberToString.EConsepto.Text;
    FQRChequeManual.QRLabel10.Caption := FNumberToString.ENumber.Text;
    FQRChequeManual.QRLabel9.Caption := FNumberToString.EString.Text;
    FQRChequeManual.QRLabel1.Caption := FNumberToString.Edit2.Text;
    FQRChequeManual.QRChequeManual.Preview;
  end
  else
  begin
    FQRChequeManual3 := TFQRChequeManual3.Create(self);
    FQRChequeManual3.QRLabel4.Caption := DateToStr(DateTimePicker1.DateTime);
    FQRChequeManual3.QRLabel5.Caption := FNumberToString.EConsepto.Text;
    FQRChequeManual3.QRLabel10.Caption := FNumberToString.ENumber.Text;
    FQRChequeManual3.QRLabel9.Caption := FNumberToString.EString.Text;
    FQRChequeManual3.QRLabel1.Caption := FNumberToString.Edit2.Text;
    FQRChequeManual3.QRChequeManual.Preview;
  end;
end;

procedure TFNumberToString.SpeedButton1Click(Sender: TObject);
begin
  Nu1 := '';
  Nu2 := '';
  Nu3 := '';
  Nu4 := '';
  Nu5 := '';
  Nu6 := '';
  Words := '';
  No1 := (StrToFloat(ENumber.Text) * 100);
  Numero := FloatToStr(No1);

  if Length(Numero) = 3 then
    begin
      No := Copy(Numero, 1,1);
      Numbers;
      Nu1 := Words;
      if Words = 'one' then
        EString.Text := Nu1 + ' dollar with '+Copy(Numero, 2,2)+ '/100'
      else
        EString.Text := Nu1 + ' dollars with '+Copy(Numero, 2,2)+ '/100';
    end;


  if Length(Numero) = 4 then
    begin
    if (StrToInt(Copy(Numero, 1,2)) >= 10) and (StrToInt(Copy(Numero, 1,2)) <= 19) then
      begin
        No := Copy(Numero, 1,2);
        Numbers;
        Nu1 := Words;
        EString.Text := Nu1+' dollars with '+Copy(Numero, 3,2)+ '/100';
      end
      else
      begin
        No := Copy(Numero, 1,1) + '0';
        Numbers;
        Nu1 := Words;
        No := Copy(Numero, 2,1);
        Numbers;
        Nu2 := Words;
        EString.Text := Nu1+' '+Nu2+ ' dollars with '+Copy(Numero, 3,2)+ '/100';
      end;
    end;

  if Length(Numero) = 5 then
    begin
      No := Copy(Numero, 1,1);
      Numbers;
      Nu1 := Words + ' hundred ';
      if Copy(Numero,2,1) = '00' then No := Copy(Numero, 2,1)
      else
        begin
          if (StrToInt(Copy(Numero, 2,2)) >= 10) and (StrToInt(Copy(Numero, 2,2)) <= 19) then
            begin
              No := Copy(Numero, 2,2);
              Numbers;
              Nu2 := ' and ' +Words;
            end
          else
            if StrToInt(Copy(Numero, 2, 1)) > 0 then
            begin
              No := Copy(Numero, 2, 1)+ '0';
              Numbers;
              if Words = '' then
                Nu2 := Words
              else
                Nu2 := ' and '+Words;

              No := Copy(Numero, 3, 1);
              Numbers;
              Nu3 := Words;
            end
            else
            begin
              No := Copy(Numero, 3, 1);
              Numbers;
              if Words = '' then
                Nu3 := Words
              else
                Nu3 := ' and '+Words;
            end;
        end;
      EString.Text := Nu1+' '+Trim(Nu2)+ ' '+Trim(Nu3)+ ' dollars with '+Copy(Numero, 4,2)+ '/100';
    end;


  if Length(Numero) = 6 then
    begin
      No := Copy(Numero, 1,1);
      Numbers;
      Nu1 := Words + ' thousand ';

      No := Copy(Numero, 2, 1);
      Numbers;
      if Words = '' then Nu2 := Words;
      if Words > '' then Nu2 := Words+ ' hundred ';
      if Copy(Numero,3,1) = '00' then No := Copy(Numero, 3,1)
      else
        begin
          if (StrToInt(Copy(Numero, 3,2)) >= 10) and (StrToInt(Copy(Numero, 3,2)) <= 19) then
            begin
              No := Copy(Numero, 3,2);
              Numbers;
              Nu3 := ' and ' +Words;
            end
          else
            if StrToInt(Copy(Numero, 3, 1)) > 0 then
            begin
              No := Copy(Numero, 3, 1)+ '0';
              Numbers;
              if Words = '' then
                Nu3 := Words
              else
                Nu3 := ' and '+Words;

              No := Copy(Numero, 4, 1);
              Numbers;
              Nu4 := Words;
            end
            else
            begin
              No := Copy(Numero, 4, 1);
              Numbers;
              if Words = '' then
                Nu4 := Words
              else
                Nu4 := ' and '+Words;
            end;
        end;
      EString.Text := Nu1+' '+Trim(Nu2)+ ' '+Trim(Nu3)+' '+Trim(Nu4)+' dollars with '+Copy(Numero, 5,2)+ '/100';
    end;

  if Length(Numero) = 7 then
    begin
      if (StrToInt(Copy(Numero, 1,2)) >= 10) and (StrToInt(Copy(Numero, 1,2)) <= 19) then
      begin
        No := Copy(Numero, 1, 2);
        Numbers;
        Nu1 := Words + ' thousand ';
      end
      else
      begin
        No := Copy(Numero, 1, 1)+ '0';
        Numbers;
        Nu1 := Words;
        No := Copy(Numero, 2, 1);
        Numbers;
        Nu2 := Words + ' thousand ';
      end;

      No := Copy(Numero, 3, 1);
      Numbers;
      if Words = '' then Nu3 := Words;
      if Words > '' then Nu3 := Words+ ' hundred ';
      if Copy(Numero,3,1) = '00' then No := Copy(Numero, 3,1)
      else
        begin
          if (StrToInt(Copy(Numero, 4,2)) >= 10) and (StrToInt(Copy(Numero, 4,2)) <= 19) then
            begin
              No := Copy(Numero, 4,2);
              Numbers;
              Nu4 := ' and ' +Words;
            end
          else
            if StrToInt(Copy(Numero, 4, 1)) > 0 then
            begin
              No := Copy(Numero, 4, 1)+ '0';
              Numbers;
              if Words = '' then
                Nu4 := Words
              else
                Nu4 := ' and '+Words;

              No := Copy(Numero, 5, 1);
              Numbers;
              Nu5 := Words;
            end
            else
            begin
              No := Copy(Numero, 5, 1);
              Numbers;
              if Words = '' then
                Nu5 := Words
              else
                Nu5 := ' and '+Words;
            end;
        end;
      EString.Text := Nu1+' '+Trim(Nu2)+ ' '+Trim(Nu3)+' '+Trim(Nu4)+' '+Trim(Nu5)+' dollars with '+Copy(Numero, 6,2)+ '/100';
    end;
end;
procedure TFNumberToString.SpeedButton2Click(Sender: TObject);
Var
  IncExp: Boolean;

begin
  FIncExp := TFIncExp.Create(self);
  With FIncExp do
    Begin
      FIncExp.ShowModal;
      If ModalResult = mrOK then
        begin
          NumeroIncExp := IntToStr(Data.TIncExpNumero.Value);
          EConsepto.Text := Data.TIncExpDescripcion.Value;
          EditNumeroCuenta.Text := IntToStr(Data.TIncExpNumero.Value);
        end;
    end;
 FIncExp.Free;
end;

procedure TFNumberToString.Button2Click(Sender: TObject);
begin
if MessageDlg('Desea postear esta factura?',
  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
begin
    With DataModuleSuplidores.QryPagos do
    Begin
      Append;
      FieldByName('Suplidor').asInteger := 1;
      FieldByName('Factura').asString := '1111';;
      FieldByName('Cantidad').asCurrency := StrToFloat(ENumber.Text);
      FieldByName('Fecha').asDateTime := DateTimePicker1.DateTime;
      FieldByName('FechaFactura').asDateTime := DateTimePicker1.DateTime;
      FieldByName('Ajuste').asCurrency := 0;
      FieldByName('Descripcion').asString := EConsepto.Text;
      FieldByName('NumeroCuenta').asInteger := StrToInt(EditNumeroCuenta.Text);
      FieldByName('Cheque').AsInteger := StrToInt(EditNumeroCheque.Text);
      DataModuleSuplidores.QryPagos.Post;
    end;
  if MessageDlg('Desea entrar este pago a la cuenta bancaria?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DataModuleSuplidores.TCuentaBancaria.Append;
    DataModuleSuplidores.TCuentaBancariaFecha.Value := DateTimePicker1.DateTime;
    DataModuleSuplidores.TCuentaBancariaDebito.Value := StrToFloat(ENumber.Text);
    DataModuleSuplidores.TCuentaBancariaCredito.Value := 0;
    DataModuleSuplidores.TCuentaBancariaDescripcion.Value := EConsepto.Text;
    DataModuleSuplidores.TCuentaBancariaBalance.Value := 0;
    DataModuleSuplidores.TCuentaBancariaCobrado.Value := 'N';
    DataModuleSuplidores.TCuentaBancariaNumeroCheque.Value := StrToInt(EditNumeroCheque.Text);
    DataModuleSuplidores.TCuentaBancaria.Post;
    DataModuleSuplidores.TCuentaBancaria.Refresh;
  end;
  EString.Text := '';
  ENumber.Text := '';
  Edit2.Text := '';
  EConsepto.Text := '';
  EditNumeroCheque.Text := '';
  EditNumeroCuenta.Text := '';
end;
end;


procedure TFNumberToString.FormCreate(Sender: TObject);
begin
//  Edit4.Text := DateToStr(Date);
  DateTimePicker1.DateTime := Date;
end;


End.
