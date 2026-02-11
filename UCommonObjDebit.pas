unit UCommonObjDebit;

interface

Type

 TDTransaction = class(TObject)
    public
      MessageID: String;
      Version: String;
      RoutingData: String;
      FS: String;
      BankID: String;
      MerchantID: String;
      TerminalType: String;
      ProcessingCode: String;
      Date: String;
      Time: String;
      POSEntryMode: String;
      SwipeTrackData: String;
      Amount1: String;
      Amount2: String;
      ShiftID: String;
      ClerkID: String;
      PINBlock: String;
      AuthenticationCode: String;
      MerchantType: String;
      MarketData: String;
      KeySerialNumber: String;
      POSSecuenceNumber: String;
      Body: String;
      procedure BuildBody(TrackData, Amnt1, Amnt2, PINBlock: String);
  end;

 TAdmTransRequest = class(TObject)
    public
      MessageID: String;
      Version: String;
      RoutingData: String;
      FS: String;
      BankID: String;
      MerchantID: String;
      TerminalType: String;
      ProcessingCode: String;
      ShiftID: String;
      ClerkID: String;
      ApplicationID: String;
      SystemInformation: String;
      AdminData: String;
      Body: String;
      procedure BuildBody(ItemNumber: String);
  end;


 TDPreAuthorization = class(TObject)
    public
      MessageID: String;
      Version: String;
      RoutingData: String;
      FS: String;
      BankID: String;
      MerchantID: String;
      TerminalType: String;
      ProcessingCode: String;
      Date: String;
      Time: String;
      POSEntryMode: String;
      SwipeTrackData: String;
      Amount1: String;
      Amount2: String;
      ShiftID: String;
      ClerkID: String;
      PINBlock: String;
      AuthenticationCode: String;
      MerchantType: String;
      MarketData: String;
      Body: String;
      procedure BuildBody(TrackData, Amnt1, Amnt2, PINBlock: String);
  end;

 TDPreAuthCompletion = class(TObject)
    public
      MessageID: String;
      Version: String;
      RoutingData: String;
      FS: String;
      BankID: String;
      MerchantID: String;
      TerminalType: String;
      ProcessingCode: String;
      Date: String;
      Time: String;
      POSEntryMode: String;
      SwipeTrackData: String;
      Amount1: String;
      Amount2: String;
      ShiftID: String;
      ClerkID: String;
      ReferenceNumber: String;
      TraceNumber: String;
      OriginalAmount: String;
      PINBlock: String;
      AuthenticationCode: String;
      MerchantType: String;
      MarketData: String;
      Body: String;
      procedure BuildBody(TrackData, Amnt1, Amnt2, PINBlock: String);
  end;

 TDReturnTrans = class(TObject)
    public
      MessageID: String;
      Version: String;
      RoutingData: String;
      FS: String;
      BankID: String;
      MerchantID: String;
      TerminalType: String;
      ProcessingCode: String;
      Date: String;
      Time: String;
      POSEntryMode: String;
      SwipeTrackData: String;
      Amount1: String;
      Amount2: String;
      ShiftID: String;
      ClerkID: String;
      BatchNumber: String;
      ItemNumber: String;
      OriginalDateTime: String;
      ReferenceNumber: String;
      TraceNumber: String;
      PINBlock: String;
      AuthenticationCode: String;
      MerchantType: String;
      MarketData: String;
      KeySerialNumber: String;
      POSSecuenceNumber: String;
      BodyR: String;
      procedure BuildBody(TrackData, Amnt1, Amnt2, PINBlock: String);
  end;

 TDVoidTrans = class(TObject)
    public
      MessageID: String;
      Version: String;
      RoutingData: String;
      FS: String;
      BankID: String;
      MerchantID: String;
      TerminalType: String;
      ProcessingCode: String;
      Date: String;
      Time: String;
      POSEntryMode: String;
      SwipeTrackData: String;
      Amount1: String;
      Amount2: String;
      ShiftID: String;
      ClerkID: String;
      BatchNumber: String;
      ItemNumber: String;
      ReferenceNumber: String;
      TraceNumber: String;
      PINBlock: String;
      AuthenticationCode: String;
      MerchantType: String;
      MarketData: String;
      BodyV: String;
      procedure BuildBody(TrackData, Amnt1, Amnt2, PINBlock: String);
  end;

 TDReversalTrans = class(TObject)
    public
      MessageID: String;
      Version: String;
      RoutingData: String;
      FS: String;
      BankID: String;
      MerchantID: String;
      TerminalType: String;
      ProcessingCode: String;
      Date: String;
      Time: String;
      POSEntryMode: String;
      AccountNumber: String;
      Amount1: String;
      Amount2: String;
      ReversalQNumber: String;
      ReversalReasonCode: String;
      BodyR: String;
      procedure BuildBody(AccountNumber, Amnt1, Amnt2: String);
  end;

 TBalanceTrans = class(TObject)
    public
      MessageID: String;
      Version: String;
      RoutingData: String;
      FS: String;
      BankID: String;
      MerchantID: String;
      TerminalType: String;
      ProcessingCode: String;
      ShiftID: String;
      ClerkID: String;
      ApplicationID: String;
      SystemInformation: String;
      NoOfCreditCardPurchases: String;
      CreditCardPurchasesAmount: String;
      NoOfCreditCardReturns: String;
      CreditCardReturnAmount: String;
      NoOfDebitCardPurchases: String;
      DebitCardPurchasesAmount: String;
      NoOfDebitCardReturns: String;
      DebitCardReturnAmount: String;
      NoOfItems: String;
      BatchNumber: String;
      Body: String;
      procedure BuildBody(ApplicationID: String);
  end;

  TDResponse = class(TObject)
    RoutingData: String;
    Verbiage: String;
    BatchNumber: String;
    ItemNumber: String;
    BatchAmount: String;
    ActionCode: String;
    AVSResultCode: String;
    ApprovalCode: String;
    Amount1: String;
    Amount2: String;
    AccountType: String;
    ReferenceNumber: String;
    TraceNumber: String;
    MACKey: String;
    PINKey: String;
    FieldKey: String;
    AuthenticationCode: String;
    TransmissionNumber: String;
    TransactionCode: String;
    ResponseCode: String;
    ReversalQNumber: String;
    procedure DBreakBody(InputStr: String);
  end;

  TAdmItemRevResponse = class(TObject)
    RoutingData: String;
    ActionCode: String;
    BatchNumber: String;
    NumberofItems: String;
    BatchAmount: String;
    DetailRecord: String;
    procedure DBreakBody(InputStr: String);
  end;

  TClearHostResponse = class(TObject)
    RoutingData: String;
    ActionCode: String;
    NumberofItemsonBathc: String;
    BatchAmount: String;
    ControlNumber: String;
    Procedure DBreakBody(InputStr: String);
  end;

  TAdmTotalRevResponse = class(TObject)
    RoutingData: String;
    ActionCode: String;
    BatchNumber: String;
    NumberofItems: String;
    BatchAmount: String;
    NoCredCardPurch: String;
    CredCardPurchAmount: String;
    NumberofCredCardReturns: String;
    CredCardReturnAmount: String;
    NumberOfDebitCardPurchases: String;
    DebitCardPurchAmount: String;
    NumberOfDebitCardReturns: String;
    DebitCardReturnAmount: String;
    procedure DBreakBody(InputStr: String);
  end;

   TDReversalResponse = class(TObject)
    RoutingData: String;
    Verbiage: String;
    ActionCode: String;
    procedure DRBreakBody(InputStr: String);
  end;

   TSettlementResponse = class(TObject)
    RoutingData: String;
    Verbiage: String;
    ActionCode: String;
    BatchControlNumber: String;
    procedure BreakBody(InputStr: String);
  end;

  TBalanceResponse = class(TObject)
    RoutingData: String;
    ActionCode: String;
    BatchNumber: String;
    NumberofItemsinBatch: String;
    BatchAmount: String;
    NumberOfCreditCardPurchases: String;
    CreditCardPurchaseAmount: String;
    NumberOfCreditCardReturn: String;
    CreditCardReturnAmount: String;
    NumberOfDebitCardPurchases: String;
    DebitCardPurchasesAmount: String;
    NumberOfDebitCardReturns: String;
    DebitCardReturnsAmount: String;
    ControlNumber: String;
    BodyReturnResponse: String;
    procedure BreakBody(InputStr: String);
  end;

  TDebitCardDetailRecord = Class(TObject)
    ProcessingCode: String;
    POSEntryMode: String;
    AccountNumber: String;
    ExpirationDate: String;
    Amount1: String;
    Amount2: String;
    ItemNumber: String;
    BatchNumber: String;
    ActionCode: String;
    TransactionDateTime: String;
    RoutingData: String;
    ReferenceNumber: String;
    ShiftID: String;
    ClerkID: String;
    MarketData: String;
    BodyResponse: String;
    procedure DBreakBody(InputStr: String);
  end;

{  TForceBalanceTransReponse = Class(Object)
    RoutingData: String;
    ActionCode: String;
    BatchNumber: String;
    NumberofItems: String;
    BatchAmount: String;
    NumberOfCreditCardPurchases: String;
    CreditCardPurchasesAmount: String;
    NumberofCreditCardReturns: String;
    CreditCardReturnAmount: String;
    NumberOfDebitCardPurchases: String;
    DebitCardPurchAmount: String;
    NumberOfDebitCardReturns: String;
    DebitCardReturnAmount: String;
    ControlNumber: String;
    BodyResponse: String;
    procedure DBreackBody(InputStr: String);
  end;
 }


  TCreditCardDetailRecord = Class(TObject)
    ProcessingCode: String;
    POSEntryMode: String;
    AccountNumber: String;
    ExpirationDate: String;
    Amount1: String;
    Amount2: String;
    OriginalAuthAmount: String;
    ItemNumber: String;
    BatchNumber: String;
    ActionCode: String;
    ApprovalCode: String;
    TransactionDateTime: String;
    AuthorizedDate: String;
    AcquirerReferenceData: String;
    MarketData: String;
    AVSResultCode: String;
    RoutingData: String;
    MerchantType: String;
    ShiftID: String;
    ClerkID: String;
    BodyResponse: String;
    procedure DBreakBody(InputStr: String);
  end;


Var
    AdmTotalRevResponse: TAdmTotalRevResponse;
    AdmItemRevResponse: TAdmItemRevResponse;
    DTransHeader: TDTransaction;
    DReturnTrans: TDReturnTrans;
    DVoidTrans: TDVoidTrans;
    DResponse: TDResponse;
    DReversalTrans: TDReversalTrans;
    ReversalResponse: TDReversalResponse;
    BalanceTrans: TBalanceTrans;
    BalanceResponse: TBalanceResponse;
    SettlementResponse: TSettlementResponse;
    DPreAuthorization: TDPreAuthorization;
    DPreAuthCompletion: TDPreAuthCompletion;
    AdmTransRequest: TAdmTransRequest;
    CreditCardDetailRecord: TCreditCardDetailRecord;
    DebitCardDetailRecord: TDebitCardDetailRecord;
    ClearHostResponse: TClearHostResponse;

implementation


procedure TClearHostResponse.DBreakBody(InputStr: String);
Var
  IntArray: Array[0..6] of String;
  TmpString: String;
  Counter: Integer;
Begin
  For Counter := 0 to 6 do
  Begin
    IntArray[Counter]:= ' ';
  end;
  Counter := 0;
  While (Length(InputStr) > 0) do
  //While Counter <= 10 do
  Begin
    If (Pos(#28,InputStr) > 0) or (Counter <= 100) then
    Begin
      IntArray[Counter] := Copy(InputStr,0,Pos(#28,InputStr)-1);
      InputStr := Copy(InputStr,Pos(#28,InputStr)+1,Length(InputStr));
    end
    Else
    Begin
      IntArray[Counter] := InputStr;
      TmpString := '';
    end;
    Counter := Counter + 1;
  end;
// Llamar rutina y romper en array
    RoutingData:= IntArray[0];
    ActionCode:= IntArray[1];
    NumberofItemsonBathc:= IntArray[2];
    BatchAmount:= IntArray[3];
    ControlNumber:= IntArray[4];
end;

procedure TSettlementResponse.BreakBody(InputStr: String);
Var
  IntArray: Array[0..6] of String;
  TmpString: String;
  Counter: Integer;
Begin
  For Counter := 0 to 6 do
  Begin
    IntArray[Counter]:= ' ';
  end;
  Counter := 0;
  While (Length(InputStr) > 0) do
  //While Counter <= 10 do
  Begin
    If (Pos(#28,InputStr) > 0) or (Counter <= 100) then
    Begin
      IntArray[Counter] := Copy(InputStr,0,Pos(#28,InputStr)-1);
      InputStr := Copy(InputStr,Pos(#28,InputStr)+1,Length(InputStr));
    end
    Else
    Begin
      IntArray[Counter] := InputStr;
      TmpString := '';
    end;
    Counter := Counter + 1;
  end;
// Llamar rutina y romper en array
    RoutingData:= IntArray[0];
    Verbiage:= IntArray[1];
    ActionCode:= IntArray[2];
    BatchControlNumber:= IntArray[3];
end;


procedure TBalanceResponse.BreakBody(InputStr: String);
Var
  IntArray: Array[0..14] of String;
  TmpString: String;
  Counter: Integer;
Begin
  For Counter := 0 to 14 do
  Begin
    IntArray[Counter]:= ' ';
  end;
  Counter := 0;
  While Length(InputStr) > 0 do
  Begin
    If Pos(#28,InputStr) > 0 then
    Begin
      IntArray[Counter] := Copy(InputStr,0,Pos(#28,InputStr)-1);
      InputStr := Copy(InputStr,Pos(#28,InputStr)+1,Length(InputStr));
    end
    Else
    Begin
      IntArray[Counter] := InputStr;
      TmpString := '';
    end;
    Counter := Counter + 1;
  end;
// Llamar rutina y romper en array
    RoutingData:= IntArray[0];
    ActionCode:= IntArray[1];
    BatchNumber:= IntArray[2];
    NumberofItemsinBatch:= IntArray[3];
    BatchAmount:= IntArray[4];
    NumberOfCreditCardPurchases:= IntArray[5];
    CreditCardPurchaseAmount:= IntArray[6];
    NumberOfCreditCardReturn:= IntArray[7];
    CreditCardReturnAmount:= IntArray[8];
    NumberOfDebitCardPurchases:= IntArray[9];
    DebitCardPurchasesAmount:= IntArray[10];
    NumberOfDebitCardReturns:= IntArray[11];
    DebitCardReturnsAmount:= IntArray[12];
    ControlNumber:= IntArray[13];
end;



Procedure TCreditCardDetailRecord.DBreakBody(InputStr: String);
Var
  IntArray: Array[0..20] of String;
  TmpString: String;
  Counter: Integer;
Begin
  For Counter := 0 to 20 do
  Begin
    IntArray[Counter]:= ' ';
  end;
  Counter := 0;
  While Length(InputStr) > 0 do
  Begin
    If Pos(',',InputStr) > 0 then
    Begin
      IntArray[Counter] := Copy(InputStr,0,Pos(',',InputStr)-1);
      InputStr := Copy(InputStr,Pos(',',InputStr)+1,Length(InputStr));
    end
    Else
    Begin
      IntArray[Counter] := InputStr;
      TmpString := '';
    end;
    Counter := Counter + 1;
  end;
// Llamar rutina y romper en array
    ProcessingCode:= IntArray[0];
    POSEntryMode:= IntArray[1];
    AccountNumber:= IntArray[2];
    ExpirationDate:= IntArray[3];
    Amount1:= IntArray[4];
    Amount2:= IntArray[5];
    OriginalAuthAmount:= IntArray[6];
    ItemNumber:= IntArray[7];
    BatchNumber:= IntArray[8];
    ActionCode:= IntArray[9];
    ApprovalCode:= IntArray[10];
    TransactionDateTime:= IntArray[11];
    AuthorizedDate:= IntArray[12];
    AcquirerReferenceData:= IntArray[13];
    MarketData:= IntArray[14];
    AVSResultCode:= IntArray[15];
    RoutingData:= IntArray[16];
    MerchantType:= IntArray[17];
    ShiftID:= IntArray[18];
    ClerkID:= IntArray[19];
end;


Procedure TDebitCardDetailRecord.DBreakBody(InputStr: String);
Var
  IntArray: Array[0..15] of String;
  TmpString: String;
  Counter: Integer;
Begin
  For Counter := 0 to 15 do
  Begin
    IntArray[Counter]:= ' ';
  end;
  Counter := 0;
  While Length(InputStr) > 0 do
  Begin
    If Pos(',',InputStr) > 0 then
    Begin
      IntArray[Counter] := Copy(InputStr,0,Pos(',',InputStr)-1);
      InputStr := Copy(InputStr,Pos(',',InputStr)+1,Length(InputStr));
    end
    Else
    Begin
      IntArray[Counter] := InputStr;
      TmpString := '';
    end;
    Counter := Counter + 1;
  end;
// Llamar rutina y romper en array
    ProcessingCode:= IntArray[0];
    POSEntryMode:= IntArray[1];
    AccountNumber:= IntArray[2];
    ExpirationDate:= IntArray[3];
    Amount1:= IntArray[4];
    Amount2:= IntArray[5];
    ItemNumber:= IntArray[6];
    BatchNumber:= IntArray[7];
    ActionCode:=IntArray[8];
    TransactionDateTime:= IntArray[9];
    RoutingData:= IntArray[10];
    ReferenceNumber:= IntArray[11];
    ShiftID:= IntArray[12];
    ClerkID:= IntArray[13];
    MarketData:= IntArray[14];
end;


procedure TDReversalResponse.DRBreakBody(InputStr: String);
Var
  IntArray: Array[0..2] of String;
  TmpString: String;
  Counter: Integer;
Begin
  For Counter := 0 to 2 do
  Begin
    IntArray[Counter]:= ' ';
  end;
  Counter := 0;
  While Length(InputStr) > 0 do
  Begin
    If Pos(#28,InputStr) > 0 then
    Begin
      IntArray[Counter] := Copy(InputStr,0,Pos(#28,InputStr)-1);
      InputStr := Copy(InputStr,Pos(#28,InputStr)+1,Length(InputStr));
    end
    Else
    Begin
      IntArray[Counter] := InputStr;
      TmpString := '';
    end;
    Counter := Counter + 1;
  end;
// Llamar rutina y romper en array
   RoutingData:= IntArray[0];
   Verbiage:= IntArray[1];
   ActionCode:= IntArray[2];
end;



procedure TDResponse.DBreakBody(InputStr: String);
Var
  IntArray: Array[0..18] of String;
  TmpString: String;
  Counter: Integer;
Begin
  For Counter := 0 to 18 do
  Begin
    IntArray[Counter]:= ' ';
  end;
  Counter := 0;
  While Length(InputStr) > 0 do
  Begin
    If Pos(#28,InputStr) > 0 then
    Begin
      IntArray[Counter] := Copy(InputStr,0,Pos(#28,InputStr)-1);
      InputStr := Copy(InputStr,Pos(#28,InputStr)+1,Length(InputStr));
    end
    Else
    Begin
      IntArray[Counter] := InputStr;
      TmpString := '';
    end;
    Counter := Counter + 1;
  end;
// Llamar rutina y romper en array
   RoutingData:= IntArray[0];
   Verbiage:= IntArray[1];
   BatchNumber:= IntArray[2];
   ItemNumber:= IntArray[3];
   BatchAmount:= IntArray[4];
   ActionCode:= IntArray[5];
   Amount1:= IntArray[6];
   Amount2:= IntArray[7];
   AccountType:=  IntArray[8];
   ReferenceNumber:= IntArray[9];
   TraceNumber:= IntArray[10];
   MACKey:=  IntArray[11];
   PINKey:=  IntArray[12];
   FieldKey:= IntArray[13];
   AuthenticationCode:=  IntArray[14];
   TransmissionNumber:= IntArray[15];
   TransactionCode:=  IntArray[16];
   ResponseCode:= IntArray[17];
   ReversalQNumber:=  IntArray[18];
end;


procedure TAdmItemRevResponse.DBreakBody(InputStr: String);
Var
  IntArray: Array[0..20] of String;
  TmpString: String;
  Counter: Integer;
Begin
  For Counter := 0 to 20 do
  Begin
    IntArray[Counter]:= ' ';
  end;
  Counter := 0;
  While Length(InputStr) > 0 do
  Begin
    If Pos(#28,InputStr) > 0 then
    Begin
      IntArray[Counter] := Copy(InputStr,0,Pos(#28,InputStr)-1);
      InputStr := Copy(InputStr,Pos(#28,InputStr)+1,Length(InputStr));
    end
    Else
    Begin
      IntArray[Counter] := InputStr;
      TmpString := '';
    end;
    Counter := Counter + 1;
  end;
// Llamar rutina y romper en array
   RoutingData:= IntArray[0];
   ActionCode:= IntArray[1];
   BatchNumber:= IntArray[2];
   NumberofItems:= IntArray[3];
   BatchAmount:= IntArray[4];
   DetailRecord:= IntArray[5];
end;

procedure TAdmTotalRevResponse.DBreakBody(InputStr: String);
Var
  IntArray: Array[0..12] of String;
  TmpString: String;
  Counter: Integer;
Begin
  For Counter := 0 to 12 do
  Begin
    IntArray[Counter]:= ' ';
  end;
  Counter := 0;
  While Length(InputStr) > 0 do
  Begin
    If Pos(#28,InputStr) > 0 then
    Begin
      IntArray[Counter] := Copy(InputStr,0,Pos(#28,InputStr)-1);
      InputStr := Copy(InputStr,Pos(#28,InputStr)+1,Length(InputStr));
    end
    Else
    Begin
      IntArray[Counter] := InputStr;
      TmpString := '';
    end;
    Counter := Counter + 1;
  end;
// Llamar rutina y romper en array
    RoutingData := IntArray[0];
    ActionCode := IntArray[1];
    BatchNumber:= IntArray[2];
    NumberofItems:= IntArray[3];
    BatchAmount:= IntArray[4];
    NoCredCardPurch:= IntArray[5];
    CredCardPurchAmount:= IntArray[6];
    NumberofCredCardReturns:= IntArray[7];
    CredCardReturnAmount:= IntArray[8];
    NumberOfDebitCardPurchases:= IntArray[9];
    DebitCardPurchAmount:= IntArray[10];
    NumberOfDebitCardReturns:= IntArray[11];
    DebitCardReturnAmount:= IntArray[12];
end;


procedure TDTransaction.BuildBody(TrackData, Amnt1, Amnt2, PINBlock: String);
Var
  SendText: PChar;
  SendTxt: String;
  SendFile: TextFile;
Begin
  FS := '';
  DTransHeader.SwipeTrackData := TrackData;
  DTransHeader.Amount1 := Amnt1;
  DTransHeader.Amount2 := Amnt2;
  //DTransHeader.PINBlock := PINBlock;
  //DTransHeader.PINBlock := '57BDDD421B8E47C6';
  PINBLock := '423E2E81B0DB77F0';

  Body := MessageID+Version+RoutingData+FS+BankID+MerchantID+FS+TerminalType+
              ProcessingCode+Date+Time+FS+POSEntryMode+FS+TrackData+FS+
              Amount1+FS+Amount2+FS+ShiftID+FS+ClerkID+FS+PINBlock+AuthenticationCode+FS+
              MerchantType+FS+MarketData+FS+KeySerialNumber+FS+POSSecuenceNumber;

  AssignFile(SendFile, '..\Data\SendFile.pca');
                      Rewrite(SendFile);
                      Append(SendFile);
                      SendTxt := DTransHeader.Body;
                      SendText := PChar(SendTxt);
                      Write(SendFile, SendText);
                      CloseFile(SendFile);

end;


procedure TAdmTransRequest.BuildBody(ItemNumber: String);
Var
  SendText: PChar;
  SendTxt: String;
  SendFile: TextFile;
Begin
  FS := '';

  Body := MessageID+Version+RoutingData+FS+BankID+MerchantID+FS+TerminalType+
          ProcessingCode+FS+ShiftID+FS+ClerkID+FS+ApplicationID+FS+SystemInformation+FS+
          AdminData;

  AssignFile(SendFile, '..\Data\SendFile.pca');
                      Rewrite(SendFile);
                      Append(SendFile);
                      SendTxt := AdmTransRequest.Body;
                      SendText := PChar(SendTxt);
                      Write(SendFile, SendText);
                      CloseFile(SendFile);

end;


procedure TDPreAuthorization.BuildBody(TrackData, Amnt1, Amnt2, PINBlock: String);
Var
  SendText: PChar;
  SendTxt: String;
  SendFile: TextFile;
Begin
  FS := '';

  Body := MessageID+Version+RoutingData+FS+BankID+MerchantID+FS+TerminalType+
              ProcessingCode+Date+Time+FS+POSEntryMode+FS+TrackData+FS+
              Amount1+FS+Amount2+FS+ShiftID+FS+ClerkID+FS+PINBlock+AuthenticationCode+FS+
              MerchantType+FS+MarketData;

  AssignFile(SendFile, '..\Data\SendFile.pca');
                      Rewrite(SendFile);
                      Append(SendFile);
                      SendTxt := DPreAuthorization.Body;
                      SendText := PChar(SendTxt);
                      Write(SendFile, SendText);
                      CloseFile(SendFile);

end;

procedure TDPreAuthCompletion.BuildBody(TrackData, Amnt1, Amnt2, PINBlock: String);
Var
  SendText: PChar;
  SendTxt: String;
  SendFile: TextFile;
Begin
  FS := '';
  DPreAuthCompletion.SwipeTrackData := TrackData;
  DPreAuthCompletion.Amount1 := Amnt1;
  DPreAuthCompletion.Amount2 := Amnt2;
  DPreAuthCompletion.PINBlock := PINBlock;

  Body := MessageID+Version+RoutingData+FS+BankID+MerchantID+FS+TerminalType+
              ProcessingCode+Date+Time+FS+POSEntryMode+FS+TrackData+FS+
              Amount1+FS+Amount2+FS+ShiftID+FS+ClerkID+FS+ReferenceNumber+FS+
              TraceNumber+FS+OriginalAmount+FS+PINBlock+AuthenticationCode+FS+
              MerchantType+FS+MarketData;

  AssignFile(SendFile, '..\Data\SendFile.pca');
                      Rewrite(SendFile);
                      Append(SendFile);
                      SendTxt := DPreAuthCompletion.Body;
                      SendText := PChar(SendTxt);
                      Write(SendFile, SendText);
                      CloseFile(SendFile);

end;

procedure TBalanceTrans.BuildBody(ApplicationID: String);
Var
  SendText: PChar;
  SendTxt: String;
  SendFile: TextFile;
Begin
  FS := '';
  BalanceTrans.SystemInformation := 'WESCOMIN';
  Body := MessageID+Version+RoutingData+FS+BankID+MerchantID+FS+TerminalType+
              ProcessingCode+FS+ShiftID+FS+ClerkID+FS+ApplicationID+FS+SystemInformation+FS+
              NoOfCreditCardPurchases+FS+CreditCardPurchasesAmount+FS+NoOfCreditCardReturns+FS+
              CreditCardReturnAmount+FS+NoOfDebitCardPurchases+FS+DebitCardPurchasesAmount+FS+
              NoOfDebitCardReturns+FS+DebitCardReturnAmount+FS+NoOfItems+FS+BatchNumber;
                      AssignFile(SendFile, '..\Data\SendFile.pca');
                      Rewrite(SendFile);
                      Append(SendFile);
                      SendTxt := BalanceTrans.Body;
                      SendText := PChar(SendTxt);
                      Write(SendFile, SendText);
                      CloseFile(SendFile);

end;


procedure TDReturnTrans.BuildBody(TrackData, Amnt1, Amnt2, PINBlock: String);
Var
  SendText: PChar;
  SendTxt: String;
  SendFile: TextFile;
Begin
  FS := '';
    PINBLock := '423E2E81B0DB77F0';
  BodyR := MessageID+Version+RoutingData+FS+BankID+MerchantID+FS+TerminalType+
              ProcessingCode+Date+Time+FS+POSEntryMode+FS+TrackData+FS+
              Amount1+FS+Amount2+FS+ShiftID+FS+ClerkID+FS+BatchNumber+FS+ItemNumber+FS+
              Date+Time+FS+ReferenceNumber+FS+TraceNumber+FS+PINBlock+AuthenticationCode+FS+
              MerchantType+FS+MarketData+FS+KeySerialNumber+FS+POSSecuenceNumber;

  AssignFile(SendFile, '..\Data\SendFile.pca');
                      Rewrite(SendFile);
                      Append(SendFile);
                      SendTxt := DReturnTrans.BodyR;
                      SendText := PChar(SendTxt);
                      Write(SendFile, SendText);
                      CloseFile(SendFile);


end;

procedure TDReversalTrans.BuildBody(AccountNumber, Amnt1, Amnt2: String);
Var
  SendText: PChar;
  SendTxt: String;
  SendFile: TextFile;
Begin
  FS := '';
  //DReversalTrans.AccountNumber := AccountNumber;
  //DReversalTrans.Amount1 := Amnt1;
  //DReversalTrans.Amount2 := Amnt2;

  BodyR := MessageID+Version+RoutingData+FS+BankID+MerchantID+FS+TerminalType+
              ProcessingCode+Date+Time+FS+POSEntryMode+FS+AccountNumber+FS+
              Amount1+FS+Amount2+FS+ReversalQNumber+FS+ReversalReasonCode;

  AssignFile(SendFile, '..\Data\SendFile.pca');
                      Rewrite(SendFile);
                      Append(SendFile);
                      SendTxt := DReversalTrans.BodyR;
                      SendText := PChar(SendTxt);
                      Write(SendFile, SendText);
                      CloseFile(SendFile);

end;


procedure TDVoidTrans.BuildBody(TrackData, Amnt1, Amnt2, PINBlock: String);
Var
  SendText: PChar;
  SendTxt: String;
  SendFile: TextFile;
Begin
  FS := '';

  BodyV := MessageID+Version+RoutingData+FS+BankID+MerchantID+FS+TerminalType+
              ProcessingCode+Date+Time+FS+POSEntryMode+FS+TrackData+FS+
              Amount1+FS+Amount2+FS+ShiftID+FS+ClerkID+FS+BatchNumber+FS+ItemNumber+FS+
              ReferenceNumber+FS+TraceNumber+FS+PINBlock+AuthenticationCode+FS+
              MerchantType+FS+MarketData;

  AssignFile(SendFile, '..\Data\SendFile.pca');
                      Rewrite(SendFile);
                      Append(SendFile);
                      SendTxt := DVoidTrans.BodyV;
                      SendText := PChar(SendTxt);
                      Write(SendFile, SendText);
                      CloseFile(SendFile);

end;


Initialization
Begin
  DTransHeader := TDTransaction.Create;
  DReturnTrans := TDReturnTrans.Create;
  DVoidTrans := TDVoidTrans.Create;
  DReversalTrans := TDReversalTrans.Create;
  BalanceTrans := TBalanceTrans.Create;
  DPreAuthorization :=  TDPreAuthorization.Create;
  DPreAuthCompletion := TDPreAuthCompletion.Create;
  AdmTransRequest := TAdmTransRequest.Create;
end;
end.
