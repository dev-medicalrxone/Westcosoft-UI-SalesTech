unit UMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, ExtCtrls, ComCtrls, Buttons, Menus;

type
    TFVisa = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    BitBtn1: TBitBtn;
    Animate1: TAnimate;
    MainMenu1: TMainMenu;
    CreditDebitForm1: TMenuItem;
    SetupCreditDebitAccount1: TMenuItem;
    File1: TMenuItem;
    ContestacionCredit1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    DebitForm1: TMenuItem;
    ContestacinDebito1: TMenuItem;
    DebitCardReversalTrans1: TMenuItem;
    CreditcardreversalTrans1: TMenuItem;
    CreditVoid1: TMenuItem;
    Credit1: TMenuItem;
    Debit1: TMenuItem;
    IncrementalAuthorization1: TMenuItem;
    ReturnTransaction1: TMenuItem;
    ForceTransaction1: TMenuItem;
    Override1: TMenuItem;
    Adjustment1: TMenuItem;
    AVSAddressVerification1: TMenuItem;
    Void1: TMenuItem;
    Reversal1: TMenuItem;
    Balance1: TMenuItem;
    dsad1: TMenuItem;
    SettlementTransactionRequest1: TMenuItem;
    ActionCodes1: TMenuItem;
    ActionCodesforSettlement1: TMenuItem;
    Prueba1: TMenuItem;
    POS1: TMenuItem;
    POS: TMenuItem;
    POS2: TMenuItem;
    Inventario1: TMenuItem;
    Empleados1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CreditDebitForm1Click(Sender: TObject);
    procedure SetupCreditDebitAccount1Click(Sender: TObject);
    procedure ContestacionCredit1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure DebitForm1Click(Sender: TObject);
    procedure CreditVoid1Click(Sender: TObject);
    procedure Override1Click(Sender: TObject);
    procedure ReturnTransaction1Click(Sender: TObject);
    procedure CreditcardreversalTrans1Click(Sender: TObject);
    procedure ForceTransaction1Click(Sender: TObject);
    procedure Adjustment1Click(Sender: TObject);
    procedure PartialReversal1Click(Sender: TObject);
    procedure AVSAddressVerification1Click(Sender: TObject);
    procedure IncrementalAuthorization1Click(Sender: TObject);
    procedure DebitCardReversalTrans1Click(Sender: TObject);
    procedure ContestacinDebito1Click(Sender: TObject);
    procedure Void1Click(Sender: TObject);
    procedure Reversal1Click(Sender: TObject);
    procedure SettlementTransactionRequest1Click(Sender: TObject);
    procedure Balance1Click(Sender: TObject);
    procedure ActionCodes1Click(Sender: TObject);
    procedure ActionCodesforSettlement1Click(Sender: TObject);
    procedure Prueba1Click(Sender: TObject);
    procedure POS1Click(Sender: TObject);
    procedure Inventario1Click(Sender: TObject);
    procedure POS2Click(Sender: TObject);
    procedure Empleados1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  FVisa: TFVisa;
  NoPuerto: Integer;
  ProcessingCode: String;

implementation

uses Wlccdll, UCreditDebit, UCreditDebitSetup, UContestacionCredit,
  UDebitTrans, UCreditVoid, UData, UCommonObj, UReversal, UCredAdjTrans,
  UDebitTransaction, UCommonObjDebit, UDebitReturn, UDebitVoid,
  UDebitReversal, UActionCodes, UActionCdoesSettlement, UPOS, UInventarioPiso,
  UPassword, UEmpleados;

{$R *.DFM}

procedure TFVisa.Button1Click(Sender: TObject);
Var
  ComPort,ComResult, Counter: Integer;
  ErrorCount, ErrorNo, LErrorNo: Integer;
  Telefono, SendText: PChar;
  SendTxt, ResText: String;
  RecvFile, SendFile: TextFile;
  MyArray: array[0..1800] of Char;
  ResMessage: PChar;


begin
Animate1.Active := true;
NoPuerto := Data.TCreditDebitSetupModemComPort.Value;
Counter := 0;
ResMessage := MyArray;
With TransHeader do
 Begin
//   BuildBody(True);
//   SendTxt := Body;

 end;

  ComPort := ComOpen('Com', NoPuerto, 2400, 7, 3, 1, 16384, 16384);
  ComSetWriteTimeout(ComPort, 10000);
  if ComPort = NoPuerto then
  begin
      Memo1.Lines.Add('Com Port ' +InttoStr(ComPort)+ ' open');
      CsetModemParmResetStr(ComPort, 'ATZ|');
      LErrorNo := CSetModemInitStr(ComPort, 'AT&F|');
      If LErrorNo <> 1 then
          LErrorNo := CSetModemParmResetStr(ComPort, 'ATZ|');
        If LErrorNo <> 1 then
          Begin
            Memo1.Lines.Add('Error Initializing Port')
          end
        else
          Memo1.Lines.Add('Port initialized - AT&C1&D2S25=9X4S2=43S12=50EV1QH');
          LerrorNo := 0;
          //Telefono := PChar('18006544518');
          Telefono := PChar('18005543363');   //Authorization
          //Telefono := PChar('18007522281');   //Settlement
          Memo1.Lines.Add('Dialing ' +StrPas(Telefono));
//          SendTxt := TransHeader.Body;
//          SendText := PChar(SendTxt);

AssignFile(SendFile, '..\Data\Sendfile.pca');
Reset(SendFile);
Readln(SendFile,SendTxt);
SendText := PChar(SendTxt);
CloseFile(SendFile);

          //===============================================
          //Se ejecuta la llamada a NDC, con convisa_start
          //===============================================
            ComSetFlow(ComPort, 2);
            ComResult := ComVisa_Start(ComPort, Telefono, 1, '', SendText, '..\Data\Logfile.txt', 1, 1);
            //ComResult := ComVisa_Start(ComPort, Telefono, 1, '', SendText, '', 0, 1);
//            CloseFile(Sendfile);
            While ComResult = 5 do
               begin
                  if Counter = 0 then
                    begin
                      If ComCarrier(3) = 1 then
                        begin
                          Memo1.Lines.Add('Conect...');
                          Memo1.Lines.Add('Sending...' + SendTxt);
                          Counter := 1;
                        end;
                    end;
                  ComResult := ComVisa_Next(ComPort);
                  ErrorCount := ComGetErrors(ComPort);
                  ErrorNo := ComGetErrorNo(ComPort);
                  If ((ErrorCount > 0) AND (ErrorNo <> LErrorNo))then
                    Begin
                      //Memo1.Lines.add(ComVisaErrors(ErrorNo));
                      LErrorNo := ErrorNo;
                    end;
                  If ComResult = 6 then
                    Begin
                      ComVisa_Get_Message(ComPort, ResMessage, 1714);
                      ResText := StrPas(ResMessage);
                      Memo1.Lines.Add('Reciving...');
                      Memo1.Lines.Add(ResText);
                      AssignFile(RecvFile, '..\Data\RECVFILE.PCA');
                      Rewrite(RecvFile);
                      Append(RecvFile);
                      Write(RecvFile, ResText);
                      CloseFile(RecvFile);
                    end;
                  end;
               end
  else
      Begin
        ShowComError(ComPort);
        Memo1.Lines.Add('Error connecting');
      end;
        Memo1.Lines.Add('Disconnecting... ');
        ComClose(ComPort);
        Memo1.Lines.Add('Disconnected');
        Animate1.Active := False;

end;


procedure TFVisa.Button2Click(Sender: TObject);
begin
     Animate1.Active := False;
     NoPuerto := 3;
     Memo1.Lines.Add('Disconnecting... ');
     ComVisa_Abort(NoPuerto);
     ComClose(NoPuerto);
     Memo1.Lines.Add('Disconnected');

end;

procedure TFVisa.CreditDebitForm1Click(Sender: TObject);
begin
  FCreditDebit := TFCreditDebit.Create(self);
  TransHeader.POSEntryMode := '210100200000'; //Swipe
//TransHeader.POSEntryMode := '100100600000'; //Manual
  TransHeader.ProcessingCode := '003000';
  FCreditDebit.ShowModal;
  FCreditDebit.Free;
end;

procedure TFVisa.SetupCreditDebitAccount1Click(Sender: TObject);
begin
     FCreditDebitSetup.show;
end;

procedure TFVisa.ContestacionCredit1Click(Sender: TObject);
begin
     FContestacion.Show;
end;

procedure TFVisa.Exit1Click(Sender: TObject);
begin
     Application.Terminate;
end;

procedure TFVisa.DebitForm1Click(Sender: TObject);
begin
  FDebitTransaction := TFDebitTransaction.Create(Self);
  DTransHeader.MessageID := Data.TCreditDebitSetupMessageID.Value;
  DTransHeader.Version := Data.TCreditDebitSetupVersion.Value;
  DTransHeader.BankID := Data.TCreditDebitSetupBankID.Value;
  DTransHeader.MerchantID := Data.TCreditDebitSetupMerchantID.Value;
  DTransHeader.TerminalType := Data.TCreditDebitSetupTerminalType.Value;
  DTransHeader.POSEntryMode := '210100200000';
//  DTransHeader.ProcessingCode := '000000';
  FDebitTransaction.ShowModal;
  FDebitTransaction.Free;
end;

procedure TFVisa.CreditVoid1Click(Sender: TObject);
begin
  FCreditVoid := TFCreditVoid.Create(Self);
  TVoid.POSEntryMode := '10010600000';
  TVoid.ProcessingCode := '003010';
  FCreditVoid.ShowModal;
  FCreditVoid.Free;
end;

procedure TFVisa.Override1Click(Sender: TObject);
begin
  FCreditDebit := TFCreditDebit.Create(Self);
  TransHeader.ProcessingCode := '003010';
  TransHeader.POSEntryMode := '210100200000'; //Swipe
  FCreditDebit.ShowModal;
  FCreditDebit.Free;
end;

procedure TFVisa.ReturnTransaction1Click(Sender: TObject);
begin
  FCreditDebit := TFCreditDebit.Create(Self);
  TransHeader.ProcessingCode := '203000';
  TransHeader.POSEntryMode := '210100200000'; //Swipe
  FCreditDebit.ShowModal;
  FCreditDebit.Free;
end;

procedure TFVisa.CreditcardreversalTrans1Click(Sender: TObject);
begin
  FCreditReversal := TFCreditReversal.Create(Self);
  TReversal.POSEntryMode := '10010600000';
  TReversal.ProcessingCode := '003030';
  FCreditReversal.ShowModal;
  FCreditReversal.Free;
end;

procedure TFVisa.ForceTransaction1Click(Sender: TObject);
begin
  FCreditDebit := TFCreditDebit.Create(Self);
  TransHeader.ProcessingCode := 'A53000';
  TransHeader.POSEntryMode := '210100200000'; //Swipe
  FCreditDebit.ShowModal;
  FCreditDebit.Free;
end;

procedure TFVisa.Adjustment1Click(Sender: TObject);
begin
  FCreditAdjustmentTrans := TFCreditAdjustmentTrans.Create(self);
  CreditAdjTrans.POSEntryMode := '10010600000';
  CreditAdjTrans.ProcessingCode := '023000';
  FCreditAdjustmentTrans.ShowModal;
  FCreditAdjustmentTrans.Free;
end;

procedure TFVisa.PartialReversal1Click(Sender: TObject);
begin
  TransHeader.ProcessingCode := '203000';
{  Data.TCreditDebitSetup.Edit;
  Data.TCreditDebitSetupProssesingCode.Value := '003060';
  Data.TCreditDebitSetup.Post;
  FCreditDebit.Show;
}
end;

procedure TFVisa.AVSAddressVerification1Click(Sender: TObject);
begin
  FCreditDebit := TFCreditDebit.Create(self);
  TransHeader.ProcessingCode := '383000';
  FCreditDebit.ShowModal;
  FCreditDebit.Free;
end;

procedure TFVisa.IncrementalAuthorization1Click(Sender: TObject);
begin
//Incremental purchase Transaction, debo verificar el PC
  FCreditDebit := TFCreditDebit.Create(Self);
  TransHeader.POSEntryMode := '210100200000'; //Swipe
  TransHeader.ProcessingCode := '003000';
  FCreditDebit.ShowModal;
  FCreditDebit.Free;
end;

procedure TFVisa.DebitCardReversalTrans1Click(Sender: TObject);
begin
  FDebitTransaction := TFDebitTransaction.Create(Self);
  DTransHeader.MessageID := Data.TCreditDebitSetupMessageID.Value;
  DTransHeader.Version := Data.TCreditDebitSetupVersion.Value;
  DTransHeader.BankID := Data.TCreditDebitSetupBankID.Value;
  DTransHeader.MerchantID := Data.TCreditDebitSetupMerchantID.Value;
  DTransHeader.TerminalType := Data.TCreditDebitSetupTerminalType.Value;
  DTransHeader.POSEntryMode := '210100200000';
///  DTransHeader.ProcessingCode := '000010';
  FDebitTransaction.ShowModal;
  FDebitTransaction.Free;
end;

procedure TFVisa.ContestacinDebito1Click(Sender: TObject);
begin
  FDebitReturn := TFDebitReturn.Create(Self);
  DReturnTrans.MessageID := Data.TCreditDebitSetupMessageID.Value;
  DReturnTrans.Version := Data.TCreditDebitSetupVersion.Value;
  DReturnTrans.BankID := Data.TCreditDebitSetupBankID.Value;
  DReturnTrans.MerchantID := Data.TCreditDebitSetupMerchantID.Value;
  DReturnTrans.TerminalType := Data.TCreditDebitSetupTerminalType.Value;
  DReturnTrans.POSEntryMode := '210100200000';
//  DReturnTrans.ProcessingCode := '200000';
  FDebitReturn.ShowModal;
  FDebitReturn.Free;
end;

procedure TFVisa.Void1Click(Sender: TObject);
begin
  FDebitVoid := TFDebitVoid.Create(Self);
  DVoidTrans.MessageID := Data.TCreditDebitSetupMessageID.Value;
  DVoidTrans.Version := Data.TCreditDebitSetupVersion.Value;
  DVoidTrans.BankID := Data.TCreditDebitSetupBankID.Value;
  DVoidTrans.MerchantID := Data.TCreditDebitSetupMerchantID.Value;
  DVoidTrans.TerminalType := Data.TCreditDebitSetupTerminalType.Value;
  DVoidTrans.POSEntryMode := '210100200000';
//  DVoidTrans.ProcessingCode := 'A40000';
  FDebitVoid.ShowModal;
  FDebitVoid.Free;
end;

procedure TFVisa.Reversal1Click(Sender: TObject);
begin
  FDebitReversal := TFDebitReversal.Create(Self);
  DReversalTrans.MessageID := Data.TCreditDebitSetupMessageID.Value;
  DReversalTrans.Version := Data.TCreditDebitSetupVersion.Value;
  DReversalTrans.BankID := Data.TCreditDebitSetupBankID.Value;
  DReversalTrans.MerchantID := Data.TCreditDebitSetupMerchantID.Value;
  DReversalTrans.TerminalType := Data.TCreditDebitSetupTerminalType.Value;
  // Changed DReversalTrans.POSEntryMode := '100100600000';
  DReversalTrans.POSEntryMode := '210100600000';
//  DReversalTrans.ProcessingCode := '000030';
  FDebitReversal.ShowModal;
  FDebitReversal.Free;
end;

procedure TFVisa.SettlementTransactionRequest1Click(Sender: TObject);
var
 SendTxt: String;
 DetailRecord: String;
 SendFile: TextFile;
 Coma: String;
 Counter: Integer;
begin
    Counter := 0;
    while not Data.TDebitDetailRecord.EOF do
    Begin
    DetailRecord := Data.TDebitDetailRecordPocessingCode.Value+Coma+
                      Data.TDebitDetailRecordPOSEntryMode.Value+Coma+
                      Data.TDebitDetailRecordAccountNumber.Value+Coma+
                      Data.TDebitDetailRecordExpirationDate.Value+Coma+
                      Data.TDebitDetailRecordAmount1.Value+Coma+
                      Data.TDebitDetailRecordAmount2.Value+Coma+
                      Data.TDebitDetailRecordItemNumber.Value+Coma+
                      Data.TDebitDetailRecordBatchNumber.Value+Coma+
                      Data.TDebitDetailRecordActionCode.Value+Coma+
                      Data.TDebitDetailRecordTransactionDate.Value+
                      Data.TDebitDetailRecordTransactionTime.Value+Coma+
                      Data.TDebitDetailRecordRoutingData.Value+Coma+
                      Data.TDebitDetailRecordReferenceNumber.Value+Coma+
                      Data.TDebitDetailRecordShiftID.Value+Coma+
                      Data.TDebitDetailRecordClerkID.Value+Coma+
                      Data.TDebitDetailRecordMarketData.Value;
          AssignFile(SendFile, '..\Data\SendFile.pca');
          Append(SendFile);
          Write(SendFile, DetailRecord);
          CloseFile(SendFile);
          Counter := Counter + 1;
        if counter = 3 then
        begin
          AssignFile(SendFile, '..\Data\SendFile.pca');
          Rewrite(SendFile);
          Append(SendFile);
          Write(SendFile, SendTxt);
          CloseFile(SendFile);
          Counter := 0;
        end;
        Data.TCreditDetailRecord.Next;
    end;
end;

procedure TFVisa.Balance1Click(Sender: TObject);
Var
 ApplicationID: String;
begin
  BalanceTrans.ProcessingCode := 'A70001';
  BalanceTrans.MessageID := Data.TCreditDebitSetupMessageID.Value;
  BalanceTrans.Version := Data.TCreditDebitSetupVersion.Value;
  BalanceTrans.BankID := Data.TCreditDebitSetupBankID.Value;
  BalanceTrans.MerchantID := Data.TCreditDebitSetupMerchantID.Value;
  BalanceTrans.TerminalType := Data.TCreditDebitSetupTerminalType.Value;
  BalanceTrans.BatchNumber := Data.TCreditDetailRecordBatchNumber.Value;
  ApplicationID := '1RDR***';
  Data.QNoCredCardPurch.Open;
  Data.QNoDebitCardPurch.Open;
  Data.QCredCardPurchAmount.Open;
  Data.QDebitCardPurchAmount.Open;
  Data.QNoDebitCardReturns.Open;
  Data.QNoCredCardReturns.Open;
  Data.QCredCardReturnAmount.Open;
  Data.QDebitCardReturnAmount.Open;
  if Data.QNoCredCardPurchTNoCredCardPurch.Value > 0 then
    BalanceTrans.NoOfCreditCardPurchases := IntToStr(Data.QNoCredCardPurchTNoCredCardPurch.Value)
  else
    BalanceTrans.NoOfCreditCardPurchases := '';

  if Data.QNoDebitCardPurchTNoDebitCardPurch.Value > 0 then
    BalanceTrans.NoOfDebitCardPurchases := IntToStr(Data.QNoDebitCardPurchTNoDebitCardPurch.Value)
  else
    BalanceTrans.NoOfDebitCardPurchases :=  '';

  if Data.QCredCardPurchAmountTCAmount1.Value > 0 then
    BalanceTrans.CreditCardPurchasesAmount := FloatToStr(Data.QCredCardPurchAmountTCAmount1.Value)
  else
    BalanceTrans.CreditCardPurchasesAmount := '';

  if Data.QDebitCardPurchAmountTDAmount1.Value > 0 then
    BalanceTrans.DebitCardPurchasesAmount := FloatToStr(Data.QDebitCardPurchAmountTDAmount1.Value)
  else
    BalanceTrans.DebitCardPurchasesAmount := '';

  if Data.QNoCredCardReturnsTNoCredCardReturns.Value > 0 then
    BalanceTrans.NoOfCreditCardReturns := IntToStr(Data.QNoCredCardReturnsTNoCredCardReturns.Value)
  else
    BalanceTrans.NoOfCreditCardReturns := '';

  if Data.QNoDebitCardReturnsTNoDebitCardReturns.Value > 0 then
    BalanceTrans.NoOfDebitCardReturns := IntToStr(Data.QNoDebitCardReturnsTNoDebitCardReturns.Value)
  else
    BalanceTrans.NoOfDebitCardReturns := '';

  if Data.QCredCardReturnAmountTCReturnAmount1.Value > 0 then
    BalanceTrans.CreditCardReturnAmount := FloatToStr(Data.QCredCardReturnAmountTCReturnAmount1.Value)
  else
    BalanceTrans.CreditCardReturnAmount := '';

  if Data.QDebitCardReturnAmountTDReturnAmount1.Value > 0 then
    BalanceTrans.DebitCardReturnAmount := FloatToStr(Data.QDebitCardReturnAmountTDReturnAmount1.Value)
  else
    BalanceTrans.DebitCardReturnAmount := '';

  BalanceTrans.NoOfItems := IntToStr(Data.QNoCredCardPurchTNoCredCardPurch.Value+
                            Data.QNoDebitCardPurchTNoDebitCardPurch.Value+
                            Data.QNoCredCardReturnsTNoCredCardReturns.Value+
                            Data.QNoDebitCardReturnsTNoDebitCardReturns.Value);

  Data.QNoCredCardPurch.Close;
  Data.QNoDebitCardPurch.Close;
  Data.QCredCardPurchAmount.Close;
  Data.QDebitCardPurchAmount.Close;
  if BalanceTrans.NoOfItems = '0' then
    ShowMessage('No existen transacciones')
  else
      BalanceTrans.BuildBody(ApplicationID);
end;

procedure TFVisa.ActionCodes1Click(Sender: TObject);
begin
     FActionCodes.Show;
end;

procedure TFVisa.ActionCodesforSettlement1Click(Sender: TObject);
begin
  FActionCodesSettlement.Show;
end;

procedure TFVisa.Prueba1Click(Sender: TObject);
Var
  ApplicationID: String;
  ComPort,ComResult, Counter: Integer;
  ErrorCount, ErrorNo, LErrorNo: Integer;
  Telefono, SendText: PChar;
  SendTxt, ResText: String;
  RecvFile, SendFile: TextFile;
  MyArray: array[0..1800] of Char;
  ResMessage: PChar;
  TmpString: String;
  ActionCode2, Date, Time, Verbiage1, Verbiage: String;
  SequenceNo, ProcessingCode, DetailRecord: String;
  FS, RoutingData: PChar;
  Coma: String;

begin
  //============== Balance Transaction =========================//
  BalanceTrans.ProcessingCode := 'A70001';
  BalanceTrans.MessageID := Data.TCreditDebitSetupMessageID.Value;
  BalanceTrans.Version := Data.TCreditDebitSetupVersion.Value;
  BalanceTrans.BankID := Data.TCreditDebitSetupBankID.Value;
  BalanceTrans.MerchantID := Data.TCreditDebitSetupMerchantID.Value;
  BalanceTrans.TerminalType := Data.TCreditDebitSetupTerminalType.Value;
  BalanceTrans.BatchNumber := Data.TCreditDetailRecordBatchNumber.Value;
  ApplicationID := '1RDR***';
  Data.QNoCredCardPurch.Open;
  Data.QNoDebitCardPurch.Open;
  Data.QCredCardPurchAmount.Open;
  Data.QDebitCardPurchAmount.Open;
  Data.QNoDebitCardReturns.Open;
  Data.QNoCredCardReturns.Open;
  Data.QCredCardReturnAmount.Open;
  Data.QDebitCardReturnAmount.Open;
  if Data.QNoCredCardPurchTNoCredCardPurch.Value > 0 then
    BalanceTrans.NoOfCreditCardPurchases := IntToStr(Data.QNoCredCardPurchTNoCredCardPurch.Value)
  else
    BalanceTrans.NoOfCreditCardPurchases := '';

  if Data.QNoDebitCardPurchTNoDebitCardPurch.Value > 0 then
    BalanceTrans.NoOfDebitCardPurchases := IntToStr(Data.QNoDebitCardPurchTNoDebitCardPurch.Value)
  else
    BalanceTrans.NoOfDebitCardPurchases :=  '';

  if Data.QCredCardPurchAmountTCAmount1.Value > 0 then
    BalanceTrans.CreditCardPurchasesAmount := FloatToStr(Data.QCredCardPurchAmountTCAmount1.Value)
  else
    BalanceTrans.CreditCardPurchasesAmount := '';

  if Data.QDebitCardPurchAmountTDAmount1.Value > 0 then
    BalanceTrans.DebitCardPurchasesAmount := FloatToStr(Data.QDebitCardPurchAmountTDAmount1.Value)
  else
    BalanceTrans.DebitCardPurchasesAmount := '';

  if Data.QNoCredCardReturnsTNoCredCardReturns.Value > 0 then
    BalanceTrans.NoOfCreditCardReturns := IntToStr(Data.QNoCredCardReturnsTNoCredCardReturns.Value)
  else
    BalanceTrans.NoOfCreditCardReturns := '';

  if Data.QNoDebitCardReturnsTNoDebitCardReturns.Value > 0 then
    BalanceTrans.NoOfDebitCardReturns := IntToStr(Data.QNoDebitCardReturnsTNoDebitCardReturns.Value)
  else
    BalanceTrans.NoOfDebitCardReturns := '';

  if Data.QCredCardReturnAmountTCReturnAmount1.Value > 0 then
    BalanceTrans.CreditCardReturnAmount := FloatToStr(Data.QCredCardReturnAmountTCReturnAmount1.Value)
  else
    BalanceTrans.CreditCardReturnAmount := '';

  if Data.QDebitCardReturnAmountTDReturnAmount1.Value > 0 then
    BalanceTrans.DebitCardReturnAmount := FloatToStr(Data.QDebitCardReturnAmountTDReturnAmount1.Value)
  else
    BalanceTrans.DebitCardReturnAmount := '';

  BalanceTrans.NoOfItems := IntToStr(Data.QNoCredCardPurchTNoCredCardPurch.Value+
                            Data.QNoDebitCardPurchTNoDebitCardPurch.Value+
                            Data.QNoCredCardReturnsTNoCredCardReturns.Value+
                            Data.QNoDebitCardReturnsTNoDebitCardReturns.Value);

  Data.QNoCredCardPurch.Close;
  Data.QNoDebitCardPurch.Close;
  Data.QCredCardPurchAmount.Close;
  Data.QDebitCardPurchAmount.Close;
  if BalanceTrans.NoOfItems = '0' then
    ShowMessage('No existen transacciones')
  else
  //====================llamada a Global =================//
  begin
    BalanceTrans.BuildBody(ApplicationID);
    Animate1.Active := true;
    NoPuerto := Data.TCreditDebitSetupModemComPort.Value;
    Counter := 0;
    ResMessage := MyArray;
      ComPort := ComOpen('Com', NoPuerto, 2400, 7, 3, 1, 16384, 16384);
      ComSetWriteTimeout(ComPort, 10000);
      if ComPort = NoPuerto then
      begin
          Memo1.Lines.Add('Com Port ' +InttoStr(ComPort)+ ' open');
          CsetModemParmResetStr(ComPort, 'ATZ|');
          LErrorNo := CSetModemInitStr(ComPort, 'AT&F|');
          If LErrorNo <> 1 then
              LErrorNo := CSetModemParmResetStr(ComPort, 'ATZ|');
            If LErrorNo <> 1 then
              Begin
                Memo1.Lines.Add('Error Initializing Port')
              end
            else
              Memo1.Lines.Add('Port initialized - AT&C1&D2S25=9X4S2=43S12=50EV1QH');
              LerrorNo := 0;
              Telefono := PChar('18007522281');   //Settlement
              Memo1.Lines.Add('Dialing ' +StrPas(Telefono));
              AssignFile(SendFile, '..\Data\Sendfile.pca');
              Reset(SendFile);
              Readln(SendFile,SendTxt);
              SendText := PChar(SendTxt);
              CloseFile(SendFile);
              ComSetFlow(ComPort, 2);
              ComResult := ComVisa_Start(ComPort, Telefono, 1, '', SendText, '..\Data\Logfile.txt', 1, 1);
                While ComResult = 5 do
                  begin
                    if Counter = 0 then
                      begin
                        If ComCarrier(3) = 1 then
                          begin
                            Memo1.Lines.Add('Conect...');
                            Memo1.Lines.Add('Sending...' + SendTxt);
                            Counter := 1;
                          end;
                      end;
                    ComResult := ComVisa_Next(ComPort);
                    ErrorCount := ComGetErrors(ComPort);
                    ErrorNo := ComGetErrorNo(ComPort);
                    If ((ErrorCount > 0) AND (ErrorNo <> LErrorNo))then
                      Begin
                        //Memo1.Lines.add(ComVisaErrors(ErrorNo));
                        LErrorNo := ErrorNo;
                      end;
                    If ComResult = 6 then
                      Begin
                        ComVisa_Get_Message(ComPort, ResMessage, 1714);
                        ResText := StrPas(ResMessage);
                        Memo1.Lines.Add('Reciving...');
                        Memo1.Lines.Add(ResText);
                        AssignFile(RecvFile, '..\Data\RECVFILE.PCA');
                        Rewrite(RecvFile);
                        Append(RecvFile);
                        Write(RecvFile, ResText);
                        CloseFile(RecvFile);
                      end;
                  end;
                      //============== Contestacion Balance ================//
                        Begin
                          Memo1.Lines.Clear;
                          AssignFile(RecvFile,'..\Data\Recvfile.pca');
                          Reset(RecvFile);
                          BalanceResponse := TBalanceResponse.Create;
                          ReadLn(RecvFile,TmpString);
                          CloseFile(RecvFile);
                          BalanceResponse.BreakBody(TmpString);
                          if TmpString > '' then
                          begin
                            ActionCode2 := Copy(BalanceResponse.ActionCode,1,3);
                            Date := Copy(BalanceResponse.ActionCode,4,6);
                            Time := Copy(BalanceResponse.ActionCode,10,6);
                            Verbiage := Copy(BalanceResponse.ActionCode,16,30);
                            if Data.TActionCodes.Locate('Code', ActionCode2,[]) then
                              Verbiage1 := Data.TActionCodesDescription.Value
                            else
                             begin
                              if ActionCode2 = '001' then
                                begin
                                  if Verbiage = 'CALL AE' then Verbiage1 := 'Call American Express';
                                  if Verbiage = 'CALL CB' then Verbiage1 := 'Refer to Carte Blanche';
                                  if Verbiage = 'CALL DC' then Verbiage1 := 'Refer to Diners Club';
                                  if Verbiage = 'CALL DISCOVER' then Verbiage1 := 'Refer to Discover';
                                  if Verbiage = 'CALL JB' then Verbiage1 := 'Refer to JBS';
                                  if Verbiage = 'CALL ND' then Verbiage1 := 'Call your Visa/MasterCard Voice Authorization Center';
                                  if Verbiage = 'CALL TC' then Verbiage1 := 'Refer to TeleCredit';
                                  if Verbiage = 'CALL TK' then Verbiage1 := 'Refer to TeleChek';
                                  if Verbiage = 'CALL WC' then Verbiage1 := 'Refer to WorldChek';
                                  if Verbiage = 'ISSUER UNAVAIL' then Verbiage1 := 'Global can not contact issuing bank for authorization';
                                end;
                              if ActionCode2 = '012' then
                                begin
                                  if Verbiage = 'INVLD SERV ID' then Verbiage1 := 'Invalid Merchant ID';
                                  if Verbiage = 'INVALID REQUEST' then Verbiage1 := 'Administrative message contain syntax error.';
                                  if Verbiage = 'INVLD TRAN CODE' then Verbiage1 := 'Processing code entered is incorrect, please refer to valid processing codes.';
                                end;
                              if ActionCode2 = '014' then
                                begin
                                  if Verbiage = 'INVLD ACCT' then Verbiage1 := 'Account number does not pass issuer edit checks.';
                                  if Verbiage = 'INVLD CODE ACCT' then Verbiage1 := 'Valid account number matched with a transaction code for a different card type.';
                                  if Verbiage = 'INVLD PREFIX' then Verbiage1 := 'Globals user tables ar set up incorrectly for this account.'
                                end;
                             end;
                            if BalanceResponse.RoutingData > '' then Memo1.Lines.Add('Routing Data: '+ BalanceResponse.RoutingData);
                            ActionCode2 := Copy(BalanceResponse.ActionCode,1,3);
                            Memo1.Lines.Add('Action Code: '+ ActionCode2);
                            Memo1.Lines.Add('Date: ' + Date);
                            Memo1.Lines.Add('Time: ' + Time);
                            Memo1.Lines.Add('Verbiage: ' + Verbiage1);
                            if BalanceResponse.BatchNumber > '' then Memo1.Lines.Add('Batch Number: '+ BalanceResponse.BatchNumber);
                            if BalanceResponse.NumberofItemsinBatch > '' then Memo1.Lines.Add('Number of Items in Batch: '+ BalanceResponse.NumberofItemsinBatch);
                            if BalanceResponse.BatchAmount > '' then Memo1.Lines.Add('Batch Amount: '+ BalanceResponse.BatchAmount);
                            if BalanceResponse.NumberOfCreditCardPurchases > '' then Memo1.Lines.Add('Number of Credit Card Purchases: '+ BalanceResponse.NumberOfCreditCardPurchases);
                            if BalanceResponse.CreditCardPurchaseAmount > '' then Memo1.Lines.Add('Credit Card Purchases Amount: '+ BalanceResponse.CreditCardPurchaseAmount);
                            if BalanceResponse.NumberOfCreditCardReturn > '' then Memo1.Lines.Add('Number of Credit Card Returns: '+ BalanceResponse.NumberOfCreditCardReturn);
                            if BalanceResponse.CreditCardReturnAmount > '' then Memo1.Lines.Add('Credit Card returns Amount: '+ BalanceResponse.CreditCardReturnAmount);
                            if BalanceResponse.NumberOfDebitCardPurchases > '' then Memo1.Lines.Add('Number of Debit Card Purchases: '+ BalanceResponse.NumberOfDebitCardPurchases);
                            if BalanceResponse.DebitCardPurchasesAmount > '' then Memo1.Lines.Add('Debit Card Purchases Amount: '+ BalanceResponse.DebitCardPurchasesAmount);
                            if BalanceResponse.NumberOfDebitCardReturns > '' then Memo1.Lines.Add('Number of Debit Card Returns: '+ BalanceResponse.NumberOfDebitCardReturns);
                            if BalanceResponse.DebitCardReturnsAmount > '' then Memo1.Lines.Add('Debit Card Return Amount: '+ BalanceResponse.DebitCardReturnsAmount);
                            if BalanceResponse.ControlNumber > '' then Memo1.Lines.Add('Control Number: '+ BalanceResponse.ControlNumber);
                          end;
                        end;
                      //============== Termina contestacion Balance =================//
                    //===Comienza Batch upload del settlement
                     begin
                        ProcessingCode := 'A76302';
                        FS := '';
                        Coma := ',';
                        SequenceNo := '1';
                        RoutingData := '';
                        SendTxt := Data.TCreditDebitSetupMessageID.Value+Data.TCreditDebitSetupVersion.Value+
                        RoutingData+FS+Data.TCreditDebitSetupBankID.Value+
                        Data.TCreditDebitSetupMerchantID.Value+FS+Data.TCreditDebitSetupTerminalType.Value+
                        ProcessingCode+FS+SequenceNo+FS;
                        Data.TCreditDetailRecord.First;
                        Counter := 0;
                        while not Data.TCreditDetailRecord.EOF do
                        begin
                         Counter := Counter + 1;
                         DetailRecord := DetailRecord + Data.TCreditDetailRecordPocessingCode.Value+Coma+
                                          Data.TCreditDetailRecordPOSEntryMode.Value+Coma+
                                          Data.TCreditDetailRecordAccountNumber.Value+Coma+
                                          Data.TCreditDetailRecordExpirationDate.Value+Coma+
                                          Data.TCreditDetailRecordAmount1.Value+Coma+
                                          Data.TCreditDetailRecordAmount2.Value+Coma+
                                          Data.TCreditDetailRecordOriginalAuthAmount.Value+Coma+
                                          Data.TCreditDetailRecordItemNumber.Value+Coma+
                                          Data.TCreditDetailRecordBatchNumber.Value+Coma+
                                          Data.TCreditDetailRecordActionCode.Value+Coma+
                                          Data.TCreditDetailRecordTransactionDate.Value+
                                          Data.TCreditDetailRecordTransactionTime.Value+Coma+
                                          Data.TCreditDetailRecordAuthorizedDate.Value+Coma+
                                          Data.TCreditDetailRecordAcquirerReferenceData.Value+Coma+
                                          Data.TCreditDetailRecordMarketData.Value+Coma+
                                          Data.TCreditDetailRecordAVSResultCode.Value+Coma+
                                          Data.TCreditDetailRecordRoutingData.Value+Coma+
                                          Data.TCreditDetailRecordMerchantType.Value+Coma+
                                          Data.TCreditDetailRecordShiftID.Value+Coma+
                                          Data.TCreditDetailRecordClerkID.Value+Coma;
                                          if Counter = 3 then
                                            begin
                                              Memo1.Lines.Add('Enviando settlement...');
                                              Memo1.Lines.Add(SendTxt+DetailRecord);
                                              AssignFile(SendFile, '..\Data\SendFile.pca');
                                              Rewrite(SendFile);
                                              Write(SendFile, SendTxt+DetailRecord);
                                              CloseFile(SendFile);

                                              Counter := 0;
                                              DetailRecord := '';
                                              //SendText := '';
                                              //===next message==
                                              AssignFile(SendFile, '..\Data\Sendfile.pca');
                                              Reset(SendFile);
                                              Readln(SendFile,SendTxt);
                                              SendText := PChar(SendTxt);
                                              CloseFile(SendFile);
                                              ComResult := ComVisa_Start(ComPort, '', 1, '', SendText, '..\Data\Logfile.txt', 0,2);
                                                While ComResult = 5 do
                                                  begin
                                                    //Memo1.Lines.Add('Sending...' + SendTxt);
                                                    ComResult := ComVisa_Next(ComPort);
                                                    ErrorCount := ComGetErrors(ComPort);
                                                    ErrorNo := ComGetErrorNo(ComPort);
                                                    If ((ErrorCount > 0) AND (ErrorNo <> LErrorNo))then
                                                      Begin
                                                        //Memo1.Lines.add(ComVisaErrors(ErrorNo));
                                                        LErrorNo := ErrorNo;
                                                      end;
                                                    If ComResult = 6 then
                                                      Begin
                                                        ComVisa_Get_Message(ComPort, ResMessage, 1714);
                                                        ResText := StrPas(ResMessage);
                                                        Memo1.Lines.Add('Reciving...');
                                                        Memo1.Lines.Add(ResText);
                                                        AssignFile(RecvFile, '..\Data\RECVFILE.PCA');
                                                        Rewrite(RecvFile);
                                                        Append(RecvFile);
                                                        Write(RecvFile, ResText);
                                                        CloseFile(RecvFile);
                                                      end;
                                                  end;
                                            end;
                                            //=================
                         Data.TCreditDetailRecord.Next;
                        end;
                        Data.TDebitDetailRecord.First;
                        DetailRecord := '';
                        while not Data.TDebitDetailRecord.EOF do
                        begin
                         Counter := Counter + 1;
                         DetailRecord := Data.TDebitDetailRecordPocessingCode.Value+Coma+
                                          Data.TDebitDetailRecordPOSEntryMode.Value+Coma+
                                          Data.TDebitDetailRecordAccountNumber.Value+Coma+
                                          Data.TDebitDetailRecordExpirationDate.Value+Coma+
                                          Data.TDebitDetailRecordAmount1.Value+Coma+
                                          Data.TDebitDetailRecordAmount2.Value+Coma+
                                          Data.TDebitDetailRecordItemNumber.Value+Coma+
                                          Data.TDebitDetailRecordBatchNumber.Value+Coma+
                                          Data.TDebitDetailRecordActionCode.Value+Coma+
                                          Data.TDebitDetailRecordTransactionDate.Value+
                                          Data.TDebitDetailRecordTransactionTime.Value+Coma+
                                          Data.TDebitDetailRecordRoutingData.Value+Coma+
                                          Data.TDebitDetailRecordReferenceNumber.Value+Coma+
                                          Data.TDebitDetailRecordShiftID.Value+Coma+
                                          Data.TDebitDetailRecordClerkID.Value+Coma+
                                          Data.TDebitDetailRecordMarketData.Value;
                                          if Counter = 3 then
                                            begin
                                              Memo1.Lines.Add('Enviando settlement...');
                                              Memo1.Lines.Add(SendTxt+DetailRecord);
                                              AssignFile(SendFile, '..\Data\SendFile.pca');
                                              Rewrite(SendFile);
                                              Write(SendFile, SendTxt+DetailRecord);
                                              CloseFile(SendFile);
                                              Counter := 0;
                                              DetailRecord := '';
                                              //SendText := '';
                                              //===next message==============================
                                              AssignFile(SendFile, '..\Data\Sendfile.pca');
                                              Reset(SendFile);
                                              Readln(SendFile,SendTxt);
                                              SendText := PChar(SendTxt);
                                              CloseFile(SendFile);
                                              ComResult := ComVisa_Start(ComPort, '', 1, '', SendText, '..\Data\Logfile.txt', 0,2);
                                                While ComResult = 5 do
                                                  begin
                                                    ComResult := ComVisa_Next(ComPort);
                                                    ErrorCount := ComGetErrors(ComPort);
                                                    ErrorNo := ComGetErrorNo(ComPort);
                                                    If ((ErrorCount > 0) AND (ErrorNo <> LErrorNo))then
                                                      Begin
                                                        LErrorNo := ErrorNo;
                                                      end;
                                                    If ComResult = 6 then
                                                      Begin
                                                        ComVisa_Get_Message(ComPort, ResMessage, 1714);
                                                        ResText := StrPas(ResMessage);
                                                        Memo1.Lines.Add('Reciving...');
                                                        Memo1.Lines.Add(ResText);
                                                        AssignFile(RecvFile, '..\Data\RECVFILE.PCA');
                                                        Rewrite(RecvFile);
                                                        Append(RecvFile);
                                                        Write(RecvFile, ResText);
                                                        CloseFile(RecvFile);
                                                      end;
                                                  end;
                                              //==================
                                            end;
                         Data.TDebitDetailRecord.Next;
                        end;
                        if DetailRecord > '' then
                          Begin
                            Memo1.Lines.Add('Enviando settlement...');
                            Memo1.Lines.Add(SendTxt+DetailRecord);
                            AssignFile(SendFile, '..\Data\SendFile.pca');
                            Rewrite(SendFile);
                            Write(SendFile, SendTxt+DetailRecord);
                            CloseFile(SendFile);
                            //SendText := '';
                            //===next message==============================
                            AssignFile(SendFile, '..\Data\Sendfile.pca');
                            Reset(SendFile);
                            Readln(SendFile,SendTxt);
                            SendText := PChar(SendTxt);
                            CloseFile(SendFile);
                            ComResult := ComVisa_Start(ComPort, '', 1, '', SendText, '..\Data\Logfile.txt', 0,2);
                              While ComResult = 5 do
                                begin
                                  ComResult := ComVisa_Next(ComPort);
                                  ErrorCount := ComGetErrors(ComPort);
                                  ErrorNo := ComGetErrorNo(ComPort);
                                  If ((ErrorCount > 0) AND (ErrorNo <> LErrorNo))then
                                    Begin
                                      LErrorNo := ErrorNo;
                                    end;
                                  If ComResult = 6 then
                                    Begin
                                      ComVisa_Get_Message(ComPort, ResMessage, 1714);
                                      ResText := StrPas(ResMessage);
                                      Memo1.Lines.Add('Reciving...');
                                      Memo1.Lines.Add(ResText);
                                      AssignFile(RecvFile, '..\Data\RECVFILE.PCA');
                                      Rewrite(RecvFile);
                                      Append(RecvFile);
                                      Write(RecvFile, ResText);
                                      CloseFile(RecvFile);
                                    end;
                                end;
                            //==================
                          end;
                     end;
                    //========================termina batch upload del settlement=========//

                  end
                  else
                      Begin
                        ShowComError(ComPort);
                        Memo1.Lines.Add('Error connecting');
                      end;
                      Memo1.Lines.Add('Disconnecting... ');
                      ComClose(ComPort);
                      Memo1.Lines.Add('Disconnected');
                      Animate1.Active := False;
  end;
end;

procedure TFVisa.POS1Click(Sender: TObject);
begin
  FPOS.Show;
end;

procedure TFVisa.Inventario1Click(Sender: TObject);
begin
  FInventarioPiso.show;
end;

procedure TFVisa.POS2Click(Sender: TObject);
begin
  PasswordDlg := TPasswordDlg.Create(self);
  With PasswordDlg do
  Begin
    ShowModal;
    If ModalResult = mrOK then
    begin
     if Data.TPasswords.Locate('Password', Password.Text,[loCaseInsensitive, loPartialKey]) then
      begin
       PasswordDlg.Close;
       PasswordDlg.Free;
       FPOS := TFPOS.Create(self);
       FPOS.Show;
       FPOS.Edit3.Text := IntToStr(Data.TNoTransNumeroTransaccion.Value);
      end
     else
       ShowMessage('Password Incorrecto...')
    end;
  end;
end;

procedure TFVisa.Empleados1Click(Sender: TObject);
begin
  FEmpleados := TFEmpleados.Create(Self);
  FEmpleados.Show;
end;

end.
