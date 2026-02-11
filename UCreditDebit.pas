unit UCreditDebit;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, DBTables, Mask, ExtCtrls, ComCtrls;

type
  TFCreditDebit = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label18: TLabel;
    Label20: TLabel;
    GroupBox6: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    ComboBox17: TComboBox;
    Label21: TLabel;
    GroupBox7: TGroupBox;
    Label14: TLabel;
    Label16: TLabel;
    GroupBox5: TGroupBox;
    Label22: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    ComboBox11: TComboBox;
    ComboBox12: TComboBox;
    ComboBox13: TComboBox;
    ComboBox14: TComboBox;
    ComboBox15: TComboBox;
    ComboBox16: TComboBox;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    ComboBox4: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label10: TLabel;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    ComboBox9: TComboBox;
    ComboBox10: TComboBox;
    Button1: TButton;
    EditRoutingData: TEdit;
    EditBankID: TEdit;
    EditMerchantID: TEdit;
    EditSwipeTrackData: TEdit;
    EditAccountNumber: TEdit;
    EditExpirationDate: TEdit;
    EditAmount1: TEdit;
    EditAmount2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FCreditDebit: TFCreditDebit;
  ProcessingCode: String;
implementation

uses UCreditDebitSetup, UData, UCommonObj, UCreditVoid, UMain, UPOS;

{$R *.DFM}

procedure TFCreditDebit.Button1Click(Sender: TObject);
Var
  TmpString, CurrValue, Billto: String;
  Posicion: Integer;
begin
    case FCreditDebit.ComboBox17.ItemIndex of
      0: Billto := 'Visa';
      1: Billto := 'Master Card';
      2: Billto := 'American Express';
      3: Billto := 'Debit Credit Card';
    end;
  if Billto = 'Visa' then
    TransHeader.AcquirerRefData := 'aY'
  else
    TransHeader.AcquirerRefData := '';

  TmpString := EditSwipeTrackData.Text;
  Posicion := Pos('%', TmpString);
    if Posicion > 0 then
      begin
        CurrValue := Copy(TmpString,Posicion+1,Pos('?',TmpString)-2);
      end;
  EditAmount1.Text :=  FloatToStr(StrToFloat(EditAmount1.Text) * 100);
  EditSwipeTrackData.Text := CurrValue;
  TransHeader.BuildBody(False, EditSwipeTrackData.Text, EditAccountNumber.Text,
                        EditExpirationDate.Text, EditAmount1.Text, EditAmount2.Text);
  FCreditDebit.Close;
  //FVisa.Button1.Click;
end;

procedure TFCreditDebit.FormActivate(Sender: TObject);
begin
  EditSwipeTrackData.Text := '';
  EditAccountNumber.Text := '';
  EditExpirationDate.Text := '';
  //EditAmount1.Text := '';
  EditAmount2.Text := '';
end;

end.

