unit UContestacionCredit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFContestacion = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button3: TButton;
    Button2: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FContestacion: TFContestacion;

implementation

uses UData, UCommonObj, UCommonObjDebit;

{$R *.DFM}

procedure TFContestacion.Button1Click(Sender: TObject);
Var
  RecvFile: TextFile;
  TmpString, ExpDate, AccountNumber, TransTime: String;
  ActionCode, CurrValue: String;
  Amount: String;
  RefDataa, RefDatab, RefDatac, RefDatad, RefDatae, RefDataf, RefDatag, RefDatah: String;
  Posicion: Integer;
  ActionCode2, Date, Time, Verbiage: String;
Begin
  Memo1.Lines.Clear;
  Amount := '$0.00';
  AssignFile(RecvFile,'..\Data\Recvfile.pca');
  Reset(RecvFile);
  Response := TResponse.Create;
  ReadLn(RecvFile,TmpString);
  Response.BreakBody(TmpString);
  if Response.Verbiage = 'AP' then
    begin
      Data.TCreditDetailRecord.Insert;
      Data.TCreditDetailRecordPocessingCode.Value := TransHeader.ProcessingCode;
      Data.TCreditDetailRecordPOSEntryMode.Value := TransHeader.POSEntryMode;
      AccountNumber := Copy(TransHeader.SwipeTrackData,2,16);
      Data.TCreditDetailRecordAccountNumber.Value := AccountNumber;
      ExpDate := Copy(TransHeader.SwipeTrackData,46,4);
      Data.TCreditDetailRecordExpirationDate.Value := ExpDate;
      Data.TCreditDetailRecordAmount1.Value := TransHeader.Amount1;
      Data.TCreditDetailRecordAmount2.Value := TransHeader.Amount2;
      Data.TCreditDetailRecordItemNumber.Value := Response.ItemNumber;
      Data.TCreditDetailRecordBatchNumber.Value := Response.BatchNumber;
      ActionCode := Copy(Response.ActionCode, 13,3);
      Data.TCreditDetailRecordActionCode.Value := ActionCode;
      Data.TCreditDetailRecordApprovalCode.Value := Response.ApprovalCode;
      Data.TCreditDetailRecordTransactionDate.Value := Response.ActionCode;
      TransTime := Copy(Response.ActionCode,7,6);
      Data.TCreditDetailRecordTransactionTime.Value := TransTime;
      Data.TCreditDetailRecordAcquirerReferenceData.Value := Response.AcquirerRefData;
      Data.TCreditDetailRecordMarketData.Value := TransHeader.MarketData;
      Data.TCreditDetailRecordAVSResultCode.Value := Response.AVSResultCode;
      Data.TCreditDetailRecordRoutingData.Value := Response.RoutingData;
      Data.TCreditDetailRecordMerchantType.Value := TransHeader.MerchantType;
      Data.TCreditDetailRecordShiftID.Value := TransHeader.ShiftID;
      Data.TCreditDetailRecordClerkID.Value := TransHeader.ClerkID;
      Data.TCreditDetailRecordCodigodeReferencia.Value := 'AP';
      Data.TCreditDetailRecord.Post;
    end;
  if TmpString > '' then
  begin
    Date := Copy(Response.ActionCode,1,6);
    Time := Copy(Response.ActionCode,7,6);
    ActionCode2 := Copy(Response.ActionCode,13,3);
    if Data.TActionCodes.Locate('Code', ActionCode2,[]) then
      Verbiage := Data.TActionCodesDescription.Value
    else
     begin
      if ActionCode2 = '001' then
        begin
          if Response.Verbiage = 'CALL AE' then Verbiage := 'Call American Express';
          if Response.Verbiage = 'CALL CB' then Verbiage := 'Refer to Carte Blanche';
          if Response.Verbiage = 'CALL DC' then Verbiage := 'Refer to Diners Club';
          if Response.Verbiage = 'CALL DISCOVER' then Verbiage := 'Refer to Discover';
          if Response.Verbiage = 'CALL JB' then Verbiage := 'Refer to JBS';
          if Response.Verbiage = 'CALL ND' then Verbiage := 'Call your Visa/MasterCard Voice Authorization Center';
          if Response.Verbiage = 'CALL TC' then Verbiage := 'Refer to TeleCredit';
          if Response.Verbiage = 'CALL TK' then Verbiage := 'Refer to TeleChek';
          if Response.Verbiage = 'CALL WC' then Verbiage := 'Refer to WorldChek';
          if Response.Verbiage = 'ISSUER UNAVAIL' then Verbiage := 'Global can not contact issuing bank for authorization';
        end;
      if ActionCode2 = '012' then
        begin
          if Response.Verbiage = 'INVLD SERV ID' then Verbiage := 'Invalid Merchant ID';
          if Response.Verbiage = 'INVALID REQUEST' then Verbiage := 'Administrative message contain syntax error.';
          if Response.Verbiage = 'INVLD TRAN CODE' then Verbiage := 'Processing code entered is incorrect, please refer to valid processing codes.';
        end;
      if ActionCode2 = '014' then
        begin
          if Response.Verbiage = 'INVLD ACCT' then Verbiage := 'Account number does not pass issuer edit checks.';
          if Response.Verbiage = 'INVLD CODE ACCT' then Verbiage := 'Valid account number matched with a transaction code for a different card type.';
          if Response.Verbiage = 'INVLD PREFIX' then Verbiage := 'Globals user tables ar set up incorrectly for this account.'
        end;
     end;
    if Response.RoutingData > ' ' then Memo1.Lines.Add('Routing Data: '+ Response.RoutingData);
    Memo1.Lines.Add('Verbige: '+ Verbiage);
    if Response.BatchNumber > ' ' then Memo1.Lines.Add('Batch Number: '+ Response.BatchNumber);
    if Response.ItemNumber > ' ' then Memo1.Lines.Add('Item Number: '+ Response.ItemNumber);
    if Response.BatchAmount > ' ' then Memo1.Lines.Add('Batch Amount: '+ Response.BatchAmount);
    Memo1.Lines.Add('Date: ' + Date);
    Memo1.Lines.Add('Time: ' + Time);
    Memo1.Lines.Add('Action Code: '+ ActionCode2);
    if Response.AVSResultCode > ' ' then Memo1.Lines.Add('AVS Result Code: ' + Response.AVSResultCode);
    if Response.ApprovalCode > ' ' then Memo1.Lines.Add('Approval Code: ' + Response.ApprovalCode);
    if Response.Amount1 > ' ' then Memo1.Lines.Add('Amount 1: ' + Response.Amount1);
    if Response.Amount2 > ' ' then Memo1.Lines.Add('Amount 2: ' + Response.Amount2);
    //Memo1.Lines.Add('A.R.D.: '+ Response.AcquirerRefData);
    CurrValue := Response.AcquirerRefData;
    if CurrValue > '' then
      Begin
              Posicion := Pos('a', CurrValue);
              if Posicion > 0 then
                begin
                 RefDataa := Copy(CurrValue,Posicion+1,Pos('a',CurrValue)-Posicion+1);
                  begin
                    if RefDataa = 'A' then
                      Memo1.Lines.Add('Auth. characteristic: Card present');
                    if RefDataa = 'E' then
                      Memo1.Lines.Add('Auth. characteristic: Card present, merchant name and location sent with request.');
                    if RefDataa = 'C' then
                      Memo1.Lines.Add('Auth. characteristic: Card present, merchant name and location sent with request, and terminal is cardholder activated.');
                    if RefDataa = 'V' then
                      Memo1.Lines.Add('Auth. characteristic: Card not present, AVS request.');
                    if RefDataa = 'P' then
                      Memo1.Lines.Add('Auth. characteristic: Card not present, preferred customer program participation.');
                    if RefDataa = 'I' then
                      Memo1.Lines.Add('Auth. characteristic: Incremental Authorization.');
                    if RefDataa = 'N' then
                      Memo1.Lines.Add('Auth. characteristic: Not a CPS qualified transaction.');
                  end;
                end;

              Posicion := Pos('b', CurrValue);
              if Posicion > 0 then
                begin
                  RefDatab := Copy(CurrValue,Posicion+1,Pos('b',CurrValue)-Posicion+15);
                  Memo1.Lines.Add('Transaction ID/Trace ID: '+RefDatab);
                end;

              Posicion := Pos('c', CurrValue);
              if Posicion > 0 then
                begin
                  RefDatac := Copy(CurrValue,Posicion+1,Pos('c',CurrValue)-Posicion+4);
                  if RefDatac = '02  ' then
                    Memo1.Lines.Add('Validation Code: Primary account number missing');
                  if RefDatac = '18  ' then
                    Memo1.Lines.Add('Validation Code: Merchant type missing');
                  if RefDatac = '22  ' then
                    Memo1.Lines.Add('Validation Code: POS Entry mode not equal to 90');
                  if RefDatac = '42  ' then
                    Memo1.Lines.Add('Validation Code: Card acceptor id code is missing');
                  if RefDatac = '59  ' then
                    Memo1.Lines.Add('Validation Code: Merchant zip code is missing');
                  if RefDatac = 'AN  ' then
                    Memo1.Lines.Add('Validation Code: Account number missing in track data');
                  if RefDatac = 'AV  ' then
                    Memo1.Lines.Add('Validation Code: Address verification (AVS) not requested');
                  if RefDatac = 'CN  ' then
                    Memo1.Lines.Add('Validation Code: Cash not qualified for CPS');
                  if RefDatac = 'CV  ' then
                    Memo1.Lines.Add('Validation Code: Not monitored or participating in CVV');
                  if RefDatac = 'CX  ' then
                    Memo1.Lines.Add('Validation Code: Acquirer temporarly excluded from CVV');
                  if RefDatac = 'ED  ' then
                    Memo1.Lines.Add('Validation Code: Expiration Date missing in track data');
                  if RefDatac = 'EM  ' then
                    Memo1.Lines.Add('Validation Code: Enriched card acceptor name/location');
                  if RefDatac = 'IC  ' then
                    Memo1.Lines.Add('Validation Code: Invalid contry code');
                  if RefDatac = 'IM  ' then
                    Memo1.Lines.Add('Validation Code: Invalid merchant type');
                  if RefDatac = 'IP  ' then
                    Memo1.Lines.Add('Validation Code: Invalid purchase identifier');
                  if RefDatac = 'IS  ' then
                    Memo1.Lines.Add('Validation Code: Invalid State code');
                  if RefDatac = 'MC  ' then
                    Memo1.Lines.Add('Validation Code: Not participating in Multi-currency');
                  if RefDatac = 'NA  ' then
                    Memo1.Lines.Add('Validation Code: Not approved in response');
                  if RefDatac = 'NP  ' then
                    Memo1.Lines.Add('Validation Code: Not participating in PS/2000');
                  if RefDatac = 'NT  ' then
                    Memo1.Lines.Add('Validation Code: Not participating in CPS/ATM');
                  if RefDatac = 'NV  ' then
                    Memo1.Lines.Add('Validation Code: Not a visa card transaction');
                  if RefDatac = 'TA  ' then
                    Memo1.Lines.Add('Validation Code: Account number does not match track data');
                  if RefDatac = 'TD  ' then
                    Memo1.Lines.Add('Validation Code: Expiration date does not match track data');
                  if RefDatac = 'TI  ' then
                    Memo1.Lines.Add('Validation Code: Transaction identifier invalid');
                end;

              Posicion := Pos('d', CurrValue);
              if Posicion > 0 then
                Begin
                  RefDatad := Copy(CurrValue,Posicion+1,Pos('d',CurrValue)-Posicion+1);
                  if RefDatad = '0' then
                    Memo1.Lines.Add('Auth. Source Code: Source unknown');
                  if RefDatad = '1' then
                    Memo1.Lines.Add('Auth. Source Code: STIP, timeout response');
                  if RefDatad = '2' then
                    Memo1.Lines.Add('Auth. Source Code: LCS response');
                  if RefDatad = '3' then
                    Memo1.Lines.Add('Auth. Source Code: STIP, issuer in suppression - inq mode');
                  if RefDatad = '4' then
                    Memo1.Lines.Add('Auth. Source Code: STIP response, issuer unavailable');
                  if RefDatad = '5' then
                    Memo1.Lines.Add('Auth. Source Code: Issuer approval');
                  if RefDatad = '7' then
                    Memo1.Lines.Add('Auth. Source Code: Acquirer approval, Base 1 down');
                  if RefDatad = '8' then
                    Memo1.Lines.Add('Auth. Source Code: Acquirer approval of referal');
                end;

              Posicion := Pos('e', CurrValue);
              if Posicion > 0 then
                Begin
                  RefDatae := Copy(CurrValue,Posicion+1,Pos('e',CurrValue)-Posicion+2);
                  if RefDatae = 'A ' then
                    Memo1.Lines.Add('Response Code: Track 1 or 2 not present in the message');
                  if RefDatae = 'B ' then
                    Memo1.Lines.Add('Response Code: Track 1 and 2 present in the message');
                  if RefDatae = 'C ' then
                    Memo1.Lines.Add('Response Code: Primary account number not equal in track data');
                  if RefDatae = 'D ' then
                    Memo1.Lines.Add('Response Code: Expiration date not equal in track data');
                  if RefDatae = 'E ' then
                    Memo1.Lines.Add('Response Code: Card type invalid in track data');
                  if RefDatae = 'F ' then
                    Memo1.Lines.Add('Response Code: Field separators invalid in track data');
                  if RefDatae = 'G ' then
                    Memo1.Lines.Add('Response Code: A field withinthe track data exeeds the maximum length');
                  if RefDatae = 'H ' then
                    Memo1.Lines.Add('Response Code: Transaction category code is T for telephone order');
                  if RefDatae = 'I ' then
                    Memo1.Lines.Add('Response Code: POS Customer presence indicator is 1 for custormer no present');
                  if RefDatae = 'J ' then
                    Memo1.Lines.Add('Response Code: POS card presence indicator is 1 for card not present');
                end;

              Posicion := Pos('f', CurrValue);
                if Posicion > 0 then
                  Begin
                    RefDataf := Copy(CurrValue,Posicion+1,Pos('f',CurrValue)-Posicion+1);
                  if RefDataf = 'A' then
                    Memo1.Lines.Add('Market Specific Data Indicator: Auto rental');
                  if RefDataf = 'H' then
                    Memo1.Lines.Add('Market Specific Data Indicator: Hotel');
                  end;

              Posicion := Pos('g', CurrValue);
              if Posicion > 0 then
              begin
                RefDatag := Copy(CurrValue,Posicion+1,Pos('g',CurrValue)-Posicion+2);
                Memo1.Lines.Add(RefDatag);
              end;

            Posicion := Pos('h', CurrValue);
            if Posicion > 0 then
              begin
                RefDatah := Copy(CurrValue,Posicion+1,Pos('h',CurrValue)-Posicion+1);
                if RefDatah = 'B' then
                  Memo1.Lines.Add('Prestigious Pop. Indicator: $1,000.00 Limit');
                if RefDatah = 'S' then
                  Memo1.Lines.Add('Prestigious Pop. Indicator: $1,500.00 Limit');
                if RefDatah = 'D' then
                  Memo1.Lines.Add('Prestigious Pop. Indicator: Visa Classic $500.00, Visa Gold $1,500.00 Limit, Visa Bussines $1,500.00 Limit');
              end;
      end;
    Memo1.Lines.Add(Response.ReversalQueueNumber);
  end;
  CloseFile(RecvFile);
end;

procedure TFContestacion.Button2Click(Sender: TObject);
Var
  RecvFile: TextFile;
  TmpString: String;
  Amount, Verbiage, ActionCode2, Date, Time: String;
  AccountNumber, ExpDate, ActionCode, TransTime: String;
Begin
  Memo1.Lines.Clear;
  Amount := '$0.00';
  AssignFile(RecvFile,'..\Data\Recvfile.pca');
  Reset(RecvFile);
  DResponse := TDResponse.Create;
  ReadLn(RecvFile,TmpString);
  DResponse.DBreakBody(TmpString);
  ActionCode := Copy(DResponse.ActionCode, 13,3);
  if (ActionCode = '000') or (ActionCode = '008') or (ActionCode = '094')
     or (ActionCode = '0NC') or (ActionCode = '0NE') or  (ActionCode = '0P1') then
  begin
    Data.TDebitDetailRecord.Insert;
    Data.TDebitDetailRecordPocessingCode.Value := DTransHeader.ProcessingCode;
    Data.TDebitDetailRecordPOSEntryMode.Value := DTransHeader.POSEntryMode;
    AccountNumber := Copy(DTransHeader.SwipeTrackData,2,16);
    Data.TDebitDetailRecordAccountNumber.Value := AccountNumber;
    ExpDate := Copy(DTransHeader.SwipeTrackData,46,4);
    Data.TDebitDetailRecordExpirationDate.Value := ExpDate;
    Data.TDebitDetailRecordAmount1.Value := DTransHeader.Amount1;
    Data.TDebitDetailRecordAmount2.Value := DTransHeader.Amount2;
    Data.TDebitDetailRecordItemNumber.Value := DResponse.ItemNumber;
    Data.TDebitDetailRecordBatchNumber.Value := DResponse.BatchNumber;
    ActionCode := Copy(DResponse.ActionCode, 13,3);
    Data.TDebitDetailRecordActionCode.Value := ActionCode;
    Data.TDebitDetailRecordTransactionDate.Value := DResponse.ActionCode;
    TransTime := Copy(DResponse.ActionCode,7,6);
    Data.TDebitDetailRecordTransactionTime.Value := TransTime;
    Data.TDebitDetailRecordRoutingData.Value := DResponse.RoutingData;
    Data.TDebitDetailRecordReferenceNumber.Value := DResponse.ReferenceNumber;
    Data.TDebitDetailRecordShiftID.Value := DTransHeader.ShiftID;
    Data.TDebitDetailRecordClerkID.Value := DTransHeader.ClerkID;
    Data.TDebitDetailRecordMarketData.Value := DTransHeader.MarketData;
    Data.TDebitDetailRecordCodigodeReferencia.Value := 'AP';
    Data.TDebitDetailRecord.Post;
  end;
  if TmpString > '' then
  begin
    Date := Copy(DResponse.ActionCode,1,6);
    Time := Copy(DResponse.ActionCode,7,6);
    ActionCode2 := Copy(DResponse.ActionCode,13,3);
    if Data.TActionCodes.Locate('Code', ActionCode2,[]) then
      Verbiage := Data.TActionCodesDescription.Value
    else
     begin
      if ActionCode2 = '001' then
        begin
          if DResponse.Verbiage = 'CALL AE' then Verbiage := 'Call American Express';
          if DResponse.Verbiage = 'CALL CB' then Verbiage := 'Refer to Carte Blanche';
          if DResponse.Verbiage = 'CALL DC' then Verbiage := 'Refer to Diners Club';
          if DResponse.Verbiage = 'CALL DISCOVER' then Verbiage := 'Refer to Discover';
          if DResponse.Verbiage = 'CALL JB' then Verbiage := 'Refer to JBS';
          if DResponse.Verbiage = 'CALL ND' then Verbiage := 'Call your Visa/MasterCard Voice Authorization Center';
          if DResponse.Verbiage = 'CALL TC' then Verbiage := 'Refer to TeleCredit';
          if DResponse.Verbiage = 'CALL TK' then Verbiage := 'Refer to TeleChek';
          if DResponse.Verbiage = 'CALL WC' then Verbiage := 'Refer to WorldChek';
          if DResponse.Verbiage = 'ISSUER UNAVAIL' then Verbiage := 'Global can not contact issuing bank for authorization';
        end;
      if ActionCode2 = '012' then
        begin
          if DResponse.Verbiage = 'INVLD SERV ID' then Verbiage := 'Invalid Merchant ID';
          if DResponse.Verbiage = 'INVALID REQUEST' then Verbiage := 'Administrative message contain syntax error.';
          if DResponse.Verbiage = 'INVLD TRAN CODE' then Verbiage := 'Processing code entered is incorrect, please refer to valid processing codes.';
        end;
      if ActionCode2 = '014' then
        begin
          if DResponse.Verbiage = 'INVLD ACCT' then Verbiage := 'Account number does not pass issuer edit checks.';
          if DResponse.Verbiage = 'INVLD CODE ACCT' then Verbiage := 'Valid account number matched with a transaction code for a different card type.';
          if DResponse.Verbiage = 'INVLD PREFIX' then Verbiage := 'Globals user tables ar set up incorrectly for this account.'
        end;
     end;
    if DResponse.RoutingData > '  ' then Memo1.Lines.Add('Routing Data: '+ DResponse.RoutingData);
    Memo1.Lines.Add('Verbige: '+ Verbiage);
    if DResponse.BatchNumber > '  ' then Memo1.Lines.Add('Batch Number: '+ DResponse.BatchNumber);
    if DResponse.ItemNumber > '  ' then Memo1.Lines.Add('Item Number: '+ DResponse.ItemNumber);
    if DResponse.BatchAmount > '  ' then Memo1.Lines.Add('Batch Amount: '+ DResponse.BatchAmount);
    Memo1.Lines.Add('Date: ' + Date);
    Memo1.Lines.Add('Time: ' + Time);
    Memo1.Lines.Add('Action Code: '+ ActionCode2);
    if DResponse.ActionCode > '  ' then Memo1.Lines.Add('Action Code: ' + DResponse.ActionCode);
    if DResponse.Amount1 > '  ' then Memo1.Lines.Add('Amount 1: ' + DResponse.Amount1);
    if DResponse.Amount2 > '  ' then Memo1.Lines.Add('Amount 2: ' + DResponse.Amount2);
    if DResponse.AccountType = '00' then Memo1.Lines.Add('Account Type: Default');
    if DResponse.AccountType = '10' then Memo1.Lines.Add('Account Type: Savings');
    if DResponse.AccountType = '20' then Memo1.Lines.Add('Account Type: Checking');
    if DResponse.ReferenceNumber > '  ' then Memo1.Lines.Add('Ref. Number: ' + DResponse.ReferenceNumber);
    if DResponse.TraceNumber > '  ' then Memo1.Lines.Add('Trace Number: ' + DResponse.TraceNumber);
    if DResponse.MACKey > '  ' then Memo1.Lines.Add('MAC Key: ' + DResponse.MACKey);
    if DResponse.PINKey > '  ' then Memo1.Lines.Add('PIN Key: ' + DResponse.PINKey);
    if DResponse.FieldKey > '  ' then Memo1.Lines.Add('Field Key: ' + DResponse.FieldKey);
    if DResponse.AuthenticationCode > '  ' then Memo1.Lines.Add('Auth. Code: ' + DResponse.AuthenticationCode);
    if DResponse.TransmissionNumber > '  ' then Memo1.Lines.Add('Trans. Number: ' + DResponse.TransmissionNumber);
    if DResponse.TransactionCode > '  ' then Memo1.Lines.Add('Trans. Code: ' + DResponse.TransactionCode);
    if DResponse.ResponseCode > '  ' then Memo1.Lines.Add('Resp. Code: ' + DResponse.ResponseCode);
    if DResponse.ReversalQNumber > '  ' then Memo1.Lines.Add('Reversal Queue Number: ' + DResponse.ReversalQNumber);
  end;
  CloseFile(RecvFile);
end;

procedure TFContestacion.Button3Click(Sender: TObject);
Var
  RecvFile: TextFile;
  TmpString: String;
  CurrValue: String;
  Amount, Verbiage, Date, Time, ActionCode2: String;
  RefDataa, RefDatab, RefDatac, RefDatad, RefDatae, RefDataf, RefDatag, RefDatah: String;
  Posicion: Integer;

Begin
  Memo1.Lines.Clear;
  Amount := '$0.00';
  AssignFile(RecvFile,'..\Data\Recvfile.pca');
  Reset(RecvFile);
  CReversalResponse := TCReversalResponse.Create;
  ReadLn(RecvFile,TmpString);
  CReversalResponse.CRBreakBody(TmpString);
  if TmpString > '' then
  begin
    Date := Copy(CReversalResponse.ActionCode,1,6);
    Time := Copy(CReversalResponse.ActionCode,7,6);
    ActionCode2 := Copy(CReversalResponse.ActionCode,13,3);
    if Data.TActionCodes.Locate('Code', ActionCode2,[]) then
      Verbiage := Data.TActionCodesDescription.Value
    else
     begin
      if ActionCode2 = '001' then
        begin
          if CReversalResponse.Verbiage = 'CALL AE' then Verbiage := 'Call American Express';
          if CReversalResponse.Verbiage = 'CALL CB' then Verbiage := 'Refer to Carte Blanche';
          if CReversalResponse.Verbiage = 'CALL DC' then Verbiage := 'Refer to Diners Club';
          if CReversalResponse.Verbiage = 'CALL DISCOVER' then Verbiage := 'Refer to Discover';
          if CReversalResponse.Verbiage = 'CALL JB' then Verbiage := 'Refer to JBS';
          if CReversalResponse.Verbiage = 'CALL ND' then Verbiage := 'Call your Visa/MasterCard Voice Authorization Center';
          if CReversalResponse.Verbiage = 'CALL TC' then Verbiage := 'Refer to TeleCredit';
          if CReversalResponse.Verbiage = 'CALL TK' then Verbiage := 'Refer to TeleChek';
          if CReversalResponse.Verbiage = 'CALL WC' then Verbiage := 'Refer to WorldChek';
          if CReversalResponse.Verbiage = 'ISSUER UNAVAIL' then Verbiage := 'Global can not contact issuing bank for authorization';
        end;
      if ActionCode2 = '012' then
        begin
          if CReversalResponse.Verbiage = 'INVLD SERV ID' then Verbiage := 'Invalid Merchant ID';
          if CReversalResponse.Verbiage = 'INVALID REQUEST' then Verbiage := 'Administrative message contain syntax error.';
          if CReversalResponse.Verbiage = 'INVLD TRAN CODE' then Verbiage := 'Processing code entered is incorrect, please refer to valid processing codes.';
        end;
      if ActionCode2 = '014' then
        begin
          if CReversalResponse.Verbiage = 'INVLD ACCT' then Verbiage := 'Account number does not pass issuer edit checks.';
          if CReversalResponse.Verbiage = 'INVLD CODE ACCT' then Verbiage := 'Valid account number matched with a transaction code for a different card type.';
          if CReversalResponse.Verbiage = 'INVLD PREFIX' then Verbiage := 'Globals user tables ar set up incorrectly for this account.'
        end;
     end;
    if CReversalResponse.RoutingData > ' ' then Memo1.Lines.Add('Routing Data: '+ CReversalResponse.RoutingData);
    Memo1.Lines.Add('Verbige: '+ Verbiage);
    Memo1.Lines.Add('Date: ' + Date);
    Memo1.Lines.Add('Time: ' + Time);
    Memo1.Lines.Add('Action Code: '+ ActionCode2);
    if CReversalResponse.Amount1 > ' ' then Memo1.Lines.Add('Amount 1: ' + CReversalResponse.Amount1);
    if CReversalResponse.Amount2 > ' ' then Memo1.Lines.Add('Amount 2: ' + CReversalResponse.Amount2);
    CurrValue := CReversalResponse.AcquirerRefData;
    if CurrValue > ' ' then
      begin
              Posicion := Pos('a', CurrValue);
              if Posicion > 0 then
                begin
                 RefDataa := Copy(CurrValue,Posicion+1,Pos('a',CurrValue)-Posicion+1);
                  begin
                    if RefDataa = 'A' then
                      Memo1.Lines.Add('Auth. characteristic: Card present');
                    if RefDataa = 'E' then
                      Memo1.Lines.Add('Auth. characteristic: Card present, merchant name and location sent with request.');
                    if RefDataa = 'C' then
                      Memo1.Lines.Add('Auth. characteristic: Card present, merchant name and location sent with request, and terminal is cardholder activated.');
                    if RefDataa = 'V' then
                      Memo1.Lines.Add('Auth. characteristic: Card not present, AVS request.');
                    if RefDataa = 'P' then
                      Memo1.Lines.Add('Auth. characteristic: Card not present, preferred customer program participation.');
                    if RefDataa = 'I' then
                      Memo1.Lines.Add('Auth. characteristic: Incremental Authorization.');
                    if RefDataa = 'N' then
                      Memo1.Lines.Add('Auth. characteristic: Not a CPS qualified transaction.');
                  end;
                end;

              Posicion := Pos('b', CurrValue);
              if Posicion > 0 then
                begin
                  RefDatab := Copy(CurrValue,Posicion+1,Pos('b',CurrValue)-Posicion+15);
                  Memo1.Lines.Add('Transaction ID/Trace ID: '+RefDatab);
                end;

              Posicion := Pos('c', CurrValue);
              if Posicion > 0 then
                begin
                  RefDatac := Copy(CurrValue,Posicion+1,Pos('c',CurrValue)-Posicion+4);
                  if RefDatac = '02  ' then
                    Memo1.Lines.Add('Validation Code: Primary account number missing');
                  if RefDatac = '18  ' then
                    Memo1.Lines.Add('Validation Code: Merchant type missing');
                  if RefDatac = '22  ' then
                    Memo1.Lines.Add('Validation Code: POS Entry mode not equal to 90');
                  if RefDatac = '42  ' then
                    Memo1.Lines.Add('Validation Code: Card acceptor id code is missing');
                  if RefDatac = '59  ' then
                    Memo1.Lines.Add('Validation Code: Merchant zip code is missing');
                  if RefDatac = 'AN  ' then
                    Memo1.Lines.Add('Validation Code: Account number missing in track data');
                  if RefDatac = 'AV  ' then
                    Memo1.Lines.Add('Validation Code: Address verification (AVS) not requested');
                  if RefDatac = 'CN  ' then
                    Memo1.Lines.Add('Validation Code: Cash not qualified for CPS');
                  if RefDatac = 'CV  ' then
                    Memo1.Lines.Add('Validation Code: Not monitored or participating in CVV');
                  if RefDatac = 'CX  ' then
                    Memo1.Lines.Add('Validation Code: Acquirer temporarly excluded from CVV');
                  if RefDatac = 'ED  ' then
                    Memo1.Lines.Add('Validation Code: Expiration Date missing in track data');
                  if RefDatac = 'EM  ' then
                    Memo1.Lines.Add('Validation Code: Enriched card acceptor name/location');
                  if RefDatac = 'IC  ' then
                    Memo1.Lines.Add('Validation Code: Invalid contry code');
                  if RefDatac = 'IM  ' then
                    Memo1.Lines.Add('Validation Code: Invalid merchant type');
                  if RefDatac = 'IP  ' then
                    Memo1.Lines.Add('Validation Code: Invalid purchase identifier');
                  if RefDatac = 'IS  ' then
                    Memo1.Lines.Add('Validation Code: Invalid State code');
                  if RefDatac = 'MC  ' then
                    Memo1.Lines.Add('Validation Code: Not participating in Multi-currency');
                  if RefDatac = 'NA  ' then
                    Memo1.Lines.Add('Validation Code: Not approved in response');
                  if RefDatac = 'NP  ' then
                    Memo1.Lines.Add('Validation Code: Not participating in PS/2000');
                  if RefDatac = 'NT  ' then
                    Memo1.Lines.Add('Validation Code: Not participating in CPS/ATM');
                  if RefDatac = 'NV  ' then
                    Memo1.Lines.Add('Validation Code: Not a visa card transaction');
                  if RefDatac = 'TA  ' then
                    Memo1.Lines.Add('Validation Code: Account number does not match track data');
                  if RefDatac = 'TD  ' then
                    Memo1.Lines.Add('Validation Code: Expiration date does not match track data');
                  if RefDatac = 'TI  ' then
                    Memo1.Lines.Add('Validation Code: Transaction identifier invalid');
                end;

              Posicion := Pos('d', CurrValue);
              if Posicion > 0 then
                Begin
                  RefDatad := Copy(CurrValue,Posicion+1,Pos('d',CurrValue)-Posicion+1);
                  if RefDatad = '0' then
                    Memo1.Lines.Add('Auth. Source Code: Source unknown');
                  if RefDatad = '1' then
                    Memo1.Lines.Add('Auth. Source Code: STIP, timeout response');
                  if RefDatad = '2' then
                    Memo1.Lines.Add('Auth. Source Code: LCS response');
                  if RefDatad = '3' then
                    Memo1.Lines.Add('Auth. Source Code: STIP, issuer in suppression - inq mode');
                  if RefDatad = '4' then
                    Memo1.Lines.Add('Auth. Source Code: STIP response, issuer unavailable');
                  if RefDatad = '5' then
                    Memo1.Lines.Add('Auth. Source Code: Issuer approval');
                  if RefDatad = '7' then
                    Memo1.Lines.Add('Auth. Source Code: Acquirer approval, Base 1 down');
                  if RefDatad = '8' then
                    Memo1.Lines.Add('Auth. Source Code: Acquirer approval of referal');
                end;

              Posicion := Pos('e', CurrValue);
              if Posicion > 0 then
                Begin
                  RefDatae := Copy(CurrValue,Posicion+1,Pos('e',CurrValue)-Posicion+2);
                  if RefDatae = 'A ' then
                    Memo1.Lines.Add('Response Code: Track 1 or 2 not present in the message');
                  if RefDatae = 'B ' then
                    Memo1.Lines.Add('Response Code: Track 1 and 2 present in the message');
                  if RefDatae = 'C ' then
                    Memo1.Lines.Add('Response Code: Primary account number not equal in track data');
                  if RefDatae = 'D ' then
                    Memo1.Lines.Add('Response Code: Expiration date not equal in track data');
                  if RefDatae = 'E ' then
                    Memo1.Lines.Add('Response Code: Card type invalid in track data');
                  if RefDatae = 'F ' then
                    Memo1.Lines.Add('Response Code: Field separators invalid in track data');
                  if RefDatae = 'G ' then
                    Memo1.Lines.Add('Response Code: A field withinthe track data exeeds the maximum length');
                  if RefDatae = 'H ' then
                    Memo1.Lines.Add('Response Code: Transaction category code is T for telephone order');
                  if RefDatae = 'I ' then
                    Memo1.Lines.Add('Response Code: POS Customer presence indicator is 1 for custormer no present');
                  if RefDatae = 'J ' then
                    Memo1.Lines.Add('Response Code: POS card presence indicator is 1 for card not present');
                end;

              Posicion := Pos('f', CurrValue);
                if Posicion > 0 then
                  Begin
                    RefDataf := Copy(CurrValue,Posicion+1,Pos('f',CurrValue)-Posicion+1);
                  if RefDataf = 'A' then
                    Memo1.Lines.Add('Market Specific Data Indicator: Auto rental');
                  if RefDataf = 'H' then
                    Memo1.Lines.Add('Market Specific Data Indicator: Hotel');
                  end;

              Posicion := Pos('g', CurrValue);
              if Posicion > 0 then
              begin
                RefDatag := Copy(CurrValue,Posicion+1,Pos('g',CurrValue)-Posicion+2);
                Memo1.Lines.Add(RefDatag);
              end;

            Posicion := Pos('h', CurrValue);
            if Posicion > 0 then
              begin
                RefDatah := Copy(CurrValue,Posicion+1,Pos('h',CurrValue)-Posicion+1);
                if RefDatah = 'B' then
                  Memo1.Lines.Add('Prestigious Pop. Indicator: $1,000.00 Limit');
                if RefDatah = 'S' then
                  Memo1.Lines.Add('Prestigious Pop. Indicator: $1,500.00 Limit');
                if RefDatah = 'D' then
                  Memo1.Lines.Add('Prestigious Pop. Indicator: Visa Classic $500.00, Visa Gold $1,500.00 Limit, Visa Bussines $1,500.00 Limit');
              end;
      end;        
  end;
end;

procedure TFContestacion.Button4Click(Sender: TObject);
Var
  RecvFile: TextFile;
  TmpString: String;
  Amount: String;
  Date, Time, ActionCode2, Verbiage: String;
Begin
  Memo1.Lines.Clear;
  Amount := '$0.00';
  AssignFile(RecvFile,'..\Data\Recvfile.pca');
  Reset(RecvFile);
  ReversalResponse := TDReversalResponse.Create;
  ReadLn(RecvFile,TmpString);
  ReversalResponse.DRBreakBody(TmpString);
  if TmpString > '' then
  begin
    Date := Copy(ReversalResponse.ActionCode,1,6);
    Time := Copy(ReversalResponse.ActionCode,7,6);
    ActionCode2 := Copy(ReversalResponse.ActionCode,13,3);
    if Data.TActionCodes.Locate('Code', ActionCode2,[]) then
      Verbiage := Data.TActionCodesDescription.Value
    else
     begin
      if ActionCode2 = '001' then
        begin
          if ReversalResponse.Verbiage = 'CALL AE' then Verbiage := 'Call American Express';
          if ReversalResponse.Verbiage = 'CALL CB' then Verbiage := 'Refer to Carte Blanche';
          if ReversalResponse.Verbiage = 'CALL DC' then Verbiage := 'Refer to Diners Club';
          if ReversalResponse.Verbiage = 'CALL DISCOVER' then Verbiage := 'Refer to Discover';
          if ReversalResponse.Verbiage = 'CALL JB' then Verbiage := 'Refer to JBS';
          if ReversalResponse.Verbiage = 'CALL ND' then Verbiage := 'Call your Visa/MasterCard Voice Authorization Center';
          if ReversalResponse.Verbiage = 'CALL TC' then Verbiage := 'Refer to TeleCredit';
          if ReversalResponse.Verbiage = 'CALL TK' then Verbiage := 'Refer to TeleChek';
          if ReversalResponse.Verbiage = 'CALL WC' then Verbiage := 'Refer to WorldChek';
          if ReversalResponse.Verbiage = 'ISSUER UNAVAIL' then Verbiage := 'Global can not contact issuing bank for authorization';
        end;
      if ActionCode2 = '012' then
        begin
          if ReversalResponse.Verbiage = 'INVLD SERV ID' then Verbiage := 'Invalid Merchant ID';
          if ReversalResponse.Verbiage = 'INVALID REQUEST' then Verbiage := 'Administrative message contain syntax error.';
          if ReversalResponse.Verbiage = 'INVLD TRAN CODE' then Verbiage := 'Processing code entered is incorrect, please refer to valid processing codes.';
        end;
      if ActionCode2 = '014' then
        begin
          if ReversalResponse.Verbiage = 'INVLD ACCT' then Verbiage := 'Account number does not pass issuer edit checks.';
          if ReversalResponse.Verbiage = 'INVLD CODE ACCT' then Verbiage := 'Valid account number matched with a transaction code for a different card type.';
          if ReversalResponse.Verbiage = 'INVLD PREFIX' then Verbiage := 'Globals user tables ar set up incorrectly for this account.'
        end;
     end;
    if ReversalResponse.RoutingData > ' ' then Memo1.Lines.Add('Routing Data: '+ ReversalResponse.RoutingData);
    Memo1.Lines.Add('Verbige: '+ Verbiage);
    Memo1.Lines.Add('Date: ' + Date);
    Memo1.Lines.Add('Time: ' + Time);
    Memo1.Lines.Add('Action Code: '+ ActionCode2);
  end;
end;
procedure TFContestacion.Button5Click(Sender: TObject);
Var
  RecvFile: TextFile;
  TmpString: String;
  ActionCode2, Date, Time, Verbiage1, Verbiage: String;
Begin
  Memo1.Lines.Clear;
  AssignFile(RecvFile,'..\Data\Recvfile.pca');
  Reset(RecvFile);
  BalanceResponse := TBalanceResponse.Create;
  ReadLn(RecvFile,TmpString);
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
procedure TFContestacion.Button6Click(Sender: TObject);
Var
  RecvFile: TextFile;
  TmpString: String;
  ActionCode2, Verbiage1: String;

Begin
  Memo1.Lines.Clear;
  AssignFile(RecvFile,'..\Data\Recvfile.pca');
  Reset(RecvFile);
  SettlementResponse := TSettlementResponse.Create;
  ReadLn(RecvFile,TmpString);
  SettlementResponse.BreakBody(TmpString);
  if TmpString > '' then
  begin
    ActionCode2 := SettlementResponse.ActionCode;
    if Data.TActionCodes.Locate('Code', ActionCode2,[]) then
      Verbiage1 := Data.TActionCodesDescription.Value
    else
     begin
      if ActionCode2 = '001' then
        begin
          if SettlementResponse.Verbiage = 'CALL AE' then Verbiage1 := 'Call American Express';
          if SettlementResponse.Verbiage = 'CALL CB' then Verbiage1 := 'Refer to Carte Blanche';
          if SettlementResponse.Verbiage = 'CALL DC' then Verbiage1 := 'Refer to Diners Club';
          if SettlementResponse.Verbiage = 'CALL DISCOVER' then Verbiage1 := 'Refer to Discover';
          if SettlementResponse.Verbiage = 'CALL JB' then Verbiage1 := 'Refer to JBS';
          if SettlementResponse.Verbiage = 'CALL ND' then Verbiage1 := 'Call your Visa/MasterCard Voice Authorization Center';
          if SettlementResponse.Verbiage = 'CALL TC' then Verbiage1 := 'Refer to TeleCredit';
          if SettlementResponse.Verbiage = 'CALL TK' then Verbiage1 := 'Refer to TeleChek';
          if SettlementResponse.Verbiage = 'CALL WC' then Verbiage1 := 'Refer to WorldChek';
          if SettlementResponse.Verbiage = 'ISSUER UNAVAIL' then Verbiage1 := 'Global can not contact issuing bank for authorization';
        end;
      if ActionCode2 = '012' then
        begin
          if SettlementResponse.Verbiage = 'INVLD SERV ID' then Verbiage1 := 'Invalid Merchant ID';
          if SettlementResponse.Verbiage = 'INVALID REQUEST' then Verbiage1 := 'Administrative message contain syntax error.';
          if SettlementResponse.Verbiage = 'INVLD TRAN CODE' then Verbiage1 := 'Processing code entered is incorrect, please refer to valid processing codes.';
        end;
      if ActionCode2 = '014' then
        begin
          if SettlementResponse.Verbiage = 'INVLD ACCT' then Verbiage1 := 'Account number does not pass issuer edit checks.';
          if SettlementResponse.Verbiage = 'INVLD CODE ACCT' then Verbiage1 := 'Valid account number matched with a transaction code for a different card type.';
          if SettlementResponse.Verbiage = 'INVLD PREFIX' then Verbiage1 := 'Globals user tables ar set up incorrectly for this account.'
        end;
     end;
    if SettlementResponse.RoutingData > '' then Memo1.Lines.Add('Routing Data: '+ SettlementResponse.RoutingData);
    Memo1.Lines.Add('Verbiage: ' + Verbiage1);
    if SettlementResponse.ActionCode > '' then Memo1.Lines.Add('Verbiage: ' + SettlementResponse.ActionCode);
    if SettlementResponse.BatchControlNumber > '' then Memo1.Lines.Add('Batch Number: '+ SettlementResponse.BatchControlNumber);
  end;
end;
end.

