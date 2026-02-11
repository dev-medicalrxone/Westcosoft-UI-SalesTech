unit UCreditTransaction;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TFCreditTransaction = class(TForm)
    Panel1: TPanel;
    EditSwipeTrackData: TEdit;
    Label1: TLabel;
    EditAmount1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    EditAccountNumber: TEdit;
    EditExpirationDate: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    EditAmount2: TEdit;
    Label7: TLabel;
    EditCreditCard: TEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label4: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCreditTransaction: TFCreditTransaction;

implementation

uses UCreditDebit, UCommonObj, UCommonObjDebit, UData;

{$R *.DFM}

procedure TFCreditTransaction.BitBtn1Click(Sender: TObject);
Var
  TmpString, CurrValue: String;
  Posicion: Integer;
begin
  if EditCreditCard.Text = 'Visa' then
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
  //FCreditTransaction.Close;

  //FVisa.Button1.Click;
end;


procedure TFCreditTransaction.FormActivate(Sender: TObject);
begin
{  EditSwipeTrackData.Text := '';
  EditAccountNumber.Text := '';
  EditExpirationDate.Text := '';
  EditAmount2.Text := '';
}
end;

procedure TFCreditTransaction.BitBtn3Click(Sender: TObject);
Var
  TmpString, CurrValue: String;
  Posicion, NoTrans: Integer;
begin
  if EditAccountNumber.Text > ' ' then
    TransHeader.POSEntryMode := '210100600000' //Manual
    else
    TransHeader.POSEntryMode := '210100200000'; //Swipe

  if EditCreditCard.Text = 'Pre-Authorization Completion...' then
  begin
    if EditAccountNumber.Text > ' ' then
      PreAuthCompletion.POSEntryMode := '210100600000' //Manual
      else
      PreAuthCompletion.POSEntryMode := '210100200000'; //Swipe
    NoTrans := StrToInt(Label4.Caption);
    if Data.TCreditDetailRecord.Locate('Transaccion', NoTrans,[]) then
    begin
      PreAuthCompletion.AcquirerRefData := Data.TCreditDetailRecordAcquirerReferenceData.Value;
      PreAuthCompletion.ProcessingCode := '153000';
      PreAuthCompletion.BankID := Data.TCreditDebitSetupBankID.Value;
      PreAuthCompletion.MerchantID := Data.TCreditDebitSetupMerchantID.Value;
      PreAuthCompletion.TerminalType := Data.TCreditDebitSetupTerminalType.Value;
      PreAuthCompletion.TerminalType := Data.TCreditDebitSetupTerminalType.Value;
      PreAuthCompletion.ApprovalCode := Data.TCreditDetailRecordApprovalCode.Value;
      EditAmount1.Text := Data.TCreditDetailRecordAmount1.Value;
      TmpString := EditSwipeTrackData.Text;
      Posicion := Pos('%', TmpString);
      if Posicion > 0 then
        begin
          CurrValue := Copy(TmpString,Posicion+1,Pos('?',TmpString)-2);
        end;
      EditSwipeTrackData.Text := CurrValue;
      if EditSwipeTrackData.Text > ' ' then
      PreAuthCompletion.BuildBody(False, EditSwipeTrackData.Text, EditAccountNumber.Text,
                            EditExpirationDate.Text, EditAmount1.Text, EditAmount2.Text)
      else
      PreAuthCompletion.BuildBody(True, EditSwipeTrackData.Text, EditAccountNumber.Text,
                            EditExpirationDate.Text, EditAmount1.Text, EditAmount2.Text)

    end
    else
     ShowMessage('Transacción no encontrada...');
    //end;
  end


  else
  begin
    if Copy(EditCreditCard.Text, 1, 4) = 'Visa' then
      TransHeader.AcquirerRefData := 'aY'
    else
      TransHeader.AcquirerRefData := '';
    TmpString := EditSwipeTrackData.Text;
    Posicion := Pos('%', TmpString);
    if Posicion > 0 then
      begin
        CurrValue := Copy(TmpString,Posicion+1,Pos('?',TmpString)-2);
      end;
    EditAmount1.Text := FloatToStr(Data.QTotalTransTotalTrans.Value * 100);
    EditSwipeTrackData.Text := CurrValue;
    if EditSwipeTrackData.Text > ' ' then
    TransHeader.BuildBody(False, EditSwipeTrackData.Text, EditAccountNumber.Text,
                          EditExpirationDate.Text, EditAmount1.Text, EditAmount2.Text)
    else
    TransHeader.BuildBody(True, EditSwipeTrackData.Text, EditAccountNumber.Text,
                          EditExpirationDate.Text, EditAmount1.Text, EditAmount2.Text)
  end;
end;
end.
