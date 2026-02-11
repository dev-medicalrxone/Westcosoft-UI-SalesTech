unit UntCalculateMoney;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Spin, Vcl.Buttons, Vcl.ComCtrls, Printers;

type
  TFrmCalculateTotals = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    LabelUno: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    LabelDos: TLabel;
    Label7: TLabel;
    LabelCinco: TLabel;
    BitBtn1: TBitBtn;
    LabelTotal: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    LabelDiez: TLabel;
    LabelVeinte: TLabel;
    LabelCincuenta: TLabel;
    Label8: TLabel;
    LabelCien: TLabel;
    Label9: TLabel;
    LabelOneCent: TLabel;
    LabelFiveCents: TLabel;
    LabelCincoCentavos: TLabel;
    LabelUnCentavo: TLabel;
    LabelDiezCentavos: TLabel;
    LabelTenCents: TLabel;
    LabelTwentyFiveCents: TLabel;
    LabellVeinticincoCent: TLabel;
    Button1: TButton;
    EditTotal: TEdit;
    SEUno: TEdit;
    SEDos: TEdit;
    SECinco: TEdit;
    SEDiez: TEdit;
    SEVeinte: TEdit;
    SECincuenta: TEdit;
    SECien: TEdit;
    SEUnCentavo: TEdit;
    SECincoCentavos: TEdit;
    SEDiezCentavos: TEdit;
    SEVeinticincoCent: TEdit;
    RichEdit1: TRichEdit;
    procedure Total(Cantidad: Double);
    procedure Button1Click(Sender: TObject);
    procedure ppReport1BeforePrint(Sender: TObject);
    procedure EditTotalChange(Sender: TObject);
    procedure SEUnoChange(Sender: TObject);
    procedure SEDosChange(Sender: TObject);
    procedure SECincoChange(Sender: TObject);
    procedure SEDiezChange(Sender: TObject);
    procedure SEVeinteChange(Sender: TObject);
    procedure SECincuentaChange(Sender: TObject);
    procedure SECienChange(Sender: TObject);
    procedure SEUnCentavoChange(Sender: TObject);
    procedure SECincoCentavosChange(Sender: TObject);
    procedure SEDiezCentavosChange(Sender: TObject);
    procedure SEVeinticincoCentChange(Sender: TObject);
    procedure SEUnoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCalculateTotals: TFrmCalculateTotals;
  Uno, Dos, Cinco, Diez, Veinte, Cincuenta, Cien: Double;
  UnCentavo, CincoCentavos, DiezCentavos, VeinticincoCentavos: Double;
implementation

uses UntEditDailyTotals, UntCommonPOS, UntCommon, UntDMMidas;

{$R *.dfm}

procedure TFrmCalculateTotals.Total(Cantidad: Double);
begin
  EditTotal.text := Format('%f', [Uno + Dos + Cinco + Diez + Veinte + Cincuenta + Cien + UnCentavo + CincoCentavos + DiezCentavos + VeinticincoCentavos]);
end;


procedure TFrmCalculateTotals.SEUnCentavoChange(Sender: TObject);
begin
  if CommonPOS.IsNumber(SEUnCentavo.text) then
  begin
    UnCentavo := StrToFloat(SEUnCentavo.text) * 0.01;
    LabelUnCentavo.Caption := Format('%m', [UnCentavo]);
    Total(UnCentavo);
  end;
end;

procedure TFrmCalculateTotals.SEUnoChange(Sender: TObject);
begin
  if CommonPOS.IsNumber(SEUno.text) then
  begin
    Uno := StrToFloat(SEUno.text) * 1;
    LabelUno.Caption := Format('%m', [Uno]);
    Total(Uno);
  end;
end;

procedure TFrmCalculateTotals.SEUnoKeyPress(Sender: TObject; var Key: Char);
begin
  CommonForm.Enter2tab(Self,Key);
end;

procedure TFrmCalculateTotals.SEDosChange(Sender: TObject);
begin
  if CommonPOS.IsNumber(SEDos.text) then
  begin
    Dos := StrToFloat(SEDos.Text) * 2;
    LabelDos.Caption := Format('%m', [Dos]);
    Total(Dos);
  end;
end;

procedure TFrmCalculateTotals.SEVeinteChange(Sender: TObject);
begin
  if CommonPOS.IsNumber(SEVeinte.text) then
  begin
    Veinte := StrToFloat(SEVeinte.text) * 20;
    LabelVeinte.Caption := Format('%m', [Veinte]);
    Total(Veinte);
  end;
end;

procedure TFrmCalculateTotals.SEVeinticincoCentChange(Sender: TObject);
begin
  if CommonPOS.IsNumber(SEVeinticincoCent.text) then
  begin
    VeinticincoCentavos := StrToFloat(SEVeinticincoCent.text) * 0.25;
    LabellVeinticincoCent.Caption := Format('%m', [VeinticincoCentavos]);
    Total(VeinticincoCentavos);
  end;
end;

procedure TFrmCalculateTotals.SECincuentaChange(Sender: TObject);
begin
  if CommonPOS.IsNumber(SECincuenta.text) then
  begin
    Cincuenta := StrToFloat(SECincuenta.text) * 50;
    LabelCincuenta.Caption := Format('%m', [Cincuenta]);
    Total(Cincuenta);
  end;
end;

procedure TFrmCalculateTotals.SECienChange(Sender: TObject);
begin
  if CommonPOS.IsNumber(SECien.text) then
  begin
    Cien := StrToFloat(SECien.text) * 100;
    LabelCien.Caption := Format('%m', [Cien]);
    Total(Cien);
  end;
end;

procedure TFrmCalculateTotals.SEDiezCentavosChange(Sender: TObject);
begin
  if CommonPOS.IsNumber(SEDiezCentavos.text) then
  begin
    DiezCentavos := StrToFloat(SEDiezCentavos.text) * 0.10;
    LabelDiezCentavos.Caption := Format('%m', [DiezCentavos]);
    Total(DiezCentavos);
  end;
end;

procedure TFrmCalculateTotals.SEDiezChange(Sender: TObject);
begin
  if CommonPOS.IsNumber(SEDiez.text) then
  begin
    Diez := StrToFloat(SEDiez.text) * 10;
    LabelDiez.Caption := Format('%m', [Diez]);
    Total(Diez);
  end;
end;

procedure TFrmCalculateTotals.EditTotalChange(Sender: TObject);
begin
  if CommonPOS.IsNumber(EditTotal.Text) then
     EditTotal.Color := clWhite
  else
     EditTotal.Color := clred;
end;

procedure TFrmCalculateTotals.FormShow(Sender: TObject);
begin
  uno := 0;
  dos := 0;
  cinco := 0;
  diez := 0;
  veinte := 0;
  cincuenta := 0;
  cien := 0;
  unCentavo := 0;
  cincoCentavos := 0;
  diezCentavos := 0;
  VeinticincoCentavos := 0;
  EditTotal.Text := '0.00';
end;

procedure TFrmCalculateTotals.SECincoCentavosChange(Sender: TObject);
begin
  if CommonPOS.IsNumber(SECincoCentavos.text) then
  begin
    CincoCentavos := (StrToFloat(SECincoCentavos.Text) * 0.05);
    LabelCincoCentavos.Caption := Format('%m', [CincoCentavos]);
    Total(CincoCentavos);
  end;
end;

procedure TFrmCalculateTotals.SECincoChange(Sender: TObject);
begin
  if CommonPOS.IsNumber(SECinco.text) then
  begin
    Cinco := StrToFloat(SECinco.text) * 5;
    LabelCinco.Caption := Format('%m', [Cinco]);
    Total(Cinco);
  end;
end;

procedure TFrmCalculateTotals.Button1Click(Sender: TObject);
begin
  CommonPOS.SelectPrinter(CommonPOS.ReceiptPrinter);
  With RichEdit1 do
  begin
    Lines.Clear;
    Font.Name := 'Lucida Console';
    Font.Size := 9;
    Font.Style := [fsBold];
    Lines.Add(CommonPOS.CenterString(DMMidas.CDSSetupSTORENAME.Value,36));
    Font.Name := 'Lucida Console';
    Font.Style := [];
    Lines.Add(CommonPOS.CenterString(DMMidas.CDSSetupSTOREADDRESS.Value,36));
    Lines.Add(CommonPOS.CenterString('CUADRE DE CAJERO',36));
    Lines.Add('CAJERO: ' + CommonPOS.User);
    Lines.Add('Cuadre #: ');
    Lines.Add('Date: ' + DateToStr(Date) + ' Time: ' + TimeToStr(Time));
    Lines.Add('------------------------------------');
    Lines.Add('Cajero: ' +  CommonPOS.User);
    Lines.Add(' $0.01 = ' + LabelUnCentavo.Caption);
    Lines.Add(' $0.05 = ' + LabelCincoCentavos.Caption);
    Lines.Add(' $0.10 = ' + LabelDiezCentavos.Caption);
    Lines.Add(' $0.25 = ' + LabellVeinticincoCent.Caption);
    Lines.Add(' $1.00 = ' + LabelUno.Caption);
    Lines.Add(' $2.00 = ' + LabelDos.Caption);
    Lines.Add(' $5.00 = ' + LabelCinco.Caption);
    Lines.Add(' $10.00 = ' + LabelDiez.Caption);
    Lines.Add(' $20.00 = ' + LabelVeinte.Caption);
    Lines.Add(' $50.00 = ' + LabelCincuenta.Caption);
    Lines.Add(' $100.00 = ' + LabelCien.Caption);
    Lines.Add('Total en caja: ' + FrmCalculateTotals.EditTotal.Text);
    Print('');
  end;
end;


procedure TFrmCalculateTotals.ppReport1BeforePrint(Sender: TObject);
begin
{  ppLabelUsuario.Text := 'Cajero: ' +  FrmEditDailyTotals.DBLookupComboBox1.Text;
  ppLabelUnCentavo.Text := FrmCalculateTotals.SEUnCentavo.Text + ' de un centavo = ' + LabelUnCentavo.Caption;
  ppLabelCincoCentavos.Text := FrmCalculateTotals.SECincoCentavos.Text + ' de cinco centavos = ' + LabelCincoCentavos.Caption;
  ppLabelDiesCentavos.Text := FrmCalculateTotals.SEDiezCentavos.Text + ' de diez centavos = ' + LabelDiezCentavos.Caption;
  ppLabelVeinticincoCentavos.Text := FrmCalculateTotals.SEVeinticincoCent.Text + ' de veinticinco centavos = ' + LabellVeinticincoCent.Caption;
  ppLabelUnDollar.Text := FrmCalculateTotals.SEUno.Text + ' de un dolar = ' + LabelUno.Caption;
  ppLabelDosDolares.Text := FrmCalculateTotals.SEDos.Text + ' de dos dolares = ' + LabelDos.Caption;
  ppLabelCincoDolares.Text := FrmCalculateTotals.SECinco.Text + ' de cinco dolares = ' + LabelCinco.Caption;
  ppLabelDiezDolares.Text := FrmCalculateTotals.SEDiez.Text + ' de diez dolares = ' + LabelDiez.Caption;
  ppLabelVeinteDolares.Text := FrmCalculateTotals.SEVeinte.Text + ' de veinte dolares = ' + LabelVeinte.Caption;
  ppLabelCincuentaDolares.Text := FrmCalculateTotals.SECincuenta.Text + ' de cincuenta dolares = ' + LabelCincuenta.Caption;
  ppLabelCienDolares.Text := FrmCalculateTotals.SECien.Text + ' de cien dolares = ' + LabelCien.Caption;
  ppLabelTotal.Text := 'Total en caja: ' + FrmCalculateTotals.EditTotal.Text;
  }
end;

end.
