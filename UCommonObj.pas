unit UCommonObj;

interface
 

Type
  TPreAuthCompletion = class(TObject)
    public
      MessageID: String;
      Version: String;
      RoutingData: String;
      FS: String;
      BankID: String;
      MerchantID: String;
      TerminalType: String;
      ProcessingCode: String;
      POSEntryMode: String;
      SwipeTrackData: String;
      ManualAccountNumber: String;
      ManualExpDate: String;
      Amount1: String;
      Amount2: String;
      OriginalAuthAmount: String;
      OriginalDateTime: String;
      AcquirerRefData: String;
      MarketData: String;
      ShiftID: String;
      ClerkID: String;
      MerchantType: String;
      ApprovalCode: String;
      Body: String;
      procedure BuildBody(Manual: Boolean; TrackData, AccountNumber,
                ExpDate, Amnt1, Amnt2: String);
  end;

  TCheckVerification = class(TObject)
    TerminalId: String;
    TerminalNumber: String;
    FS: String;
    WCC: String;
    CheckNumber: String;
    IDCode: String;
    IDNumber: String;
    AmountofSale: String;
  end;

  TPoleDisplay = class(TObject)
    Display: String;
    procedure EnviarMensage(Mensage: String);
  end;

  TForceTrans = class(TObject)
    public
      MessageID: String;
      Version: String;
      RoutingData: String;
      FS: String;
      BankID: String;
      MerchantID: String;
      TerminalType: String;
      ProcessingCode: String;
      POSEntryMode: String;
      SwipeTrackData: String;
      ManualAccountNumber: String;
      ManualExpDate: String;
      Amount1: String;
      Amount2: String;
      OriginalAuthAmount: String;
      ApprovalCode: String;
      BatchNumber: String;
      ItemNumber: String;
      OriginalDate: String;
      OriginalTime: String;
      AcquirerRefData: String;
      MarketData: String;
      ShiftID: String;
      ClerkID: String;
      MerchantType: String;
      Body: String;
      procedure BuildBodyF(Manual: Boolean; TrackData, AccountNumber,
                ExpDate, Amnt1, Amnt2: String);
  end;


  TCreditReturn = class(TObject)
    public
      MessageID: String;
      Version: String;
      RoutingData: String;
      FS: String;
      BankID: String;
      MerchantID: String;
      TerminalType: String;
      ProcessingCode: String;
      POSEntryMode: String;
      SwipeTrackData: String;
      ManualAccountNumber: String;
      ManualExpDate: String;
      Amount1: String;
      Amount2: String;
      OriginalAutorizedAmount: String;
      BatchNumber: String;
      ItemNumber: String;
      OriginalDate: String;
      OriginalTime: String;
      AcquirerRefData: String;
      MarketData: String;
      ShiftID: String;
      ClerkID: String;
      MerchantType: String;
      Body: String;
      procedure BuildBodyCR(Manual: Boolean; TrackData, AccountNumber,
                ExpDate, Amnt1, Amnt2: String);
  end;

  TTransaction = class(TObject)
    public
      MessageID: String;
      Version: String;
      RoutingData: String;
      FS: String;
      BankID: String;
      MerchantID: String;
      TerminalType: String;
      ProcessingCode: String;
      POSEntryMode: String;
      SwipeTrackData: String;
      ManualAccountNumber: String;
      ManualExpDate: String;
      Amount1: String;
      Amount2: String;
      AcquirerRefData: String;
      AVSInformation: String;
      MarketData: String;
      ShiftID: String;
      ClerkID: String;
      MerchantType: String;
      ApprovalCode: String;
      Body: String;
      procedure BuildBody(Manual: Boolean; TrackData, AccountNumber,
                ExpDate, Amnt1, Amnt2: String);
  end;

  TVoidTrans = Class(TObject)
    Public
      MessageID: String;
      Version: String;
      RoutingData: String;
      FS: String;
      BankID: String;
      MerchantID: String;
      TerminalType: String;
      ProcessingCode: String;
      POSEntryMode: String;
      AccountNumber: String;
      ExpDate: String;
      Amount1: String;
      Amount2: String;
      BatchNumber: String;
      ItemNumber: String;
      OriginalDate: String;
      OriginalTime: String;
      AcquirerRefData: String;
      ShiftID: String;
      ClerkID: String;
      MerchantType: String;
      BodyV: String;
      procedure BuildBodyV(Manual: Boolean; AccountNumber,
                ExpDate, Amnt1, Amnt2, ItemNumb: String);
  end;

  TCreditAdjTrans = Class(TObject)
    Public
      MessageID: String;
      Version: String;
      RoutingData: String;
      FS: String;
      BankID: String;
      MerchantID: String;
      TerminalType: String;
      ProcessingCode: String;
      POSEntryMode: String;
      AccountNumber: String;
      ExpDate: String;
      Amount1: String;
      Amount2: String;
      OriginalAuthAmount: String;
      BatchNumber: String;
      ItemNumber: String;
      OriginalDate: String;
      OriginalTime: String;
      AcquirerRefData: String;
      MarketData: String;
      ShiftID: String;
      ClerkID: String;
      MerchantType: String;
      BodyA: String;
      procedure BuildBodyA(Manual: Boolean; AccountNumber,
                ExpDate, Amnt1, Amnt2, ItemNumb: String);
  end;

    TReversalTrans = Class(TObject)
    Public
      MessageID: String;
      Version: String;
      RoutingData: String;
      FS: String;
      BankID: String;
      MerchantID: String;
      TerminalType: String;
      ProcessingCode: String;
      POSEntryMode: String;
      AccountNumber: String;
      ExpDate: String;
      Amount1: String;
      Amount2: String;
      ApprovalCode: String;
      AcquirerRefData: String;
      ReversalQNumber: String;
      BodyR: String;
      procedure BuildBodyR(Manual: Boolean; AccountNumber,
                ExpDate, Amnt1, Amnt2, AppCode: String);
  end;

  TResponse = class(TObject)
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
    AcquirerRefData: String;
    ReversalQueueNumber: String;
    procedure BreakBody(InputStr: String);
  end;

    TCReversalResponse = class(TObject)
    RoutingData: String;
    Verbiage: String;
    ActionCode: String;
    Amount1: String;
    Amount2: String;
    AcquirerRefData: String;
    procedure CRBreakBody(InputStr: String);
  end;

  TTransType = class(TObject)
    Over: String;
    Constructor Create;
  end;

  TBCliente = class(TObject)
    Buscar: String;
    Constructor Create;
  end;

  TCall = Class(TObject)
   Public
     Settlement: Boolean;
   end;

 Var
    Call: TCall;
    BCliente: TBCliente;
    CreditReturn: TCreditReturn;
    TransHeader: TTransaction;
    TransType: TTransType;
    Response: TResponse;
    CReversalResponse: TCReversalResponse;
    TVoid: TVoidTrans;
    TReversal: TReversalTrans;
    CreditAdjTrans: TCreditAdjTrans;
    TForce: TForceTrans;
    PreAuthCompletion: TPreAuthCompletion;
    PoleDisplay: TPoleDisplay;
  function LRC(Input: String): Integer;

implementation

Constructor TBCliente.Create;
Begin
  Buscar := 'AXEL';
end;

Constructor TTransType.Create;
Begin
  Over := '003010';
end;

procedure TVoidTrans.BuildBodyV(Manual: Boolean; AccountNumber,
ExpDate, Amnt1, Amnt2, ItemNumb: String);
Var
  SendText: PChar;
  SendTxt: String;
  SendFile: TextFile;
Begin
  FS := '';
  MessageID := '*';
  Version := '02';
  TVoid.AccountNumber := AccountNumber;
  TVoid.ExpDate := ExpDate;
  TVoid.Amount1 := Amnt1;
  TVoid.Amount2 := Amnt2;
  TVoid.ItemNumber := ItemNumb;

  If Manual then
    BodyV := MessageID+Version+RoutingData+FS+BankID+MerchantID+FS+TerminalType+
            ProcessingCode+FS+POSEntryMode+FS+AccountNumber+
            FS+ExpDate+FS+Amount1+FS+Amount2+FS+BatchNumber+FS+ItemNumber+FS+
            OriginalDate+OriginalTime+FS+AcquirerRefData+FS+ShiftID+FS+ClerkID+FS+MerchantType
  else
    BodyV := MessageID+Version+RoutingData+FS+BankID+MerchantID+FS+TerminalType+
            ProcessingCode+FS+POSEntryMode+FS+AccountNumber+
            FS+ExpDate+FS+Amount1+FS+Amount2+FS+BatchNumber+FS+ItemNumber+FS+
            OriginalDate+OriginalTime+FS+AcquirerRefData+FS+ShiftID+FS+ClerkID+FS+MerchantType;

            AssignFile(SendFile, '..\Data\SendFile.pca');
                      Rewrite(SendFile);
                      Append(SendFile);
                      SendTxt := TVoid.BodyV;
                      SendText := PChar(SendTxt);
                      Write(SendFile, SendText);
                      CloseFile(SendFile);


end;

procedure TCreditAdjTrans.BuildBodyA(Manual: Boolean; AccountNumber,
ExpDate, Amnt1, Amnt2, ItemNumb: String);
Var
  SendText: PChar;
  SendTxt: String;
  SendFile: TextFile;
Begin
  FS := '';
  MessageID := '*';
  Version := '02';
  CreditAdjTrans.AccountNumber := AccountNumber;
  CreditAdjTrans.ExpDate := ExpDate;
  CreditAdjTrans.Amount1 := Amnt1;
  CreditAdjTrans.Amount2 := Amnt2;
  CreditAdjTrans.ItemNumber := ItemNumb;
  If Manual then
    BodyA := MessageID+Version+RoutingData+FS+BankID+MerchantID+FS+TerminalType+
            ProcessingCode+FS+POSEntryMode+FS+AccountNumber+
            FS+ExpDate+FS+Amount1+FS+Amount2+FS+OriginalAuthAmount+FS+BatchNumber+FS+ItemNumber+FS+
            OriginalDate+OriginalTime+FS+AcquirerRefData+FS+MarketData+FS+ShiftID+FS+ClerkID+FS+MerchantType
  else
    BodyA := MessageID+Version+RoutingData+FS+BankID+MerchantID+FS+TerminalType+
             ProcessingCode+FS+POSEntryMode+FS+AccountNumber+
             FS+ExpDate+FS+Amount1+FS+Amount2+FS+OriginalAuthAmount+FS+BatchNumber+FS+ItemNumber+FS+
             OriginalDate+OriginalTime+FS+AcquirerRefData+FS+MarketData+FS+ShiftID+FS+ClerkID+FS+MerchantType;

            AssignFile(SendFile, '..\Data\SendFile.pca');
                      Rewrite(SendFile);
                      Append(SendFile);
                      SendTxt := CreditAdjTrans.BodyA;
                      SendText := PChar(SendTxt);
                      Write(SendFile, SendText);
                      CloseFile(SendFile);


end;

procedure TReversalTrans.BuildBodyR(Manual: Boolean; AccountNumber,
ExpDate, Amnt1, Amnt2, AppCode: String);
Var
  SendText: PChar;
  SendTxt: String;
  SendFile: TextFile;
Begin
  FS := '';
  MessageID := '*';
  Version := '02';
  //BankID := '070400';
  //MerchantID := '2222';
  //TerminalType := 'XXX';
  //TReversal.AccountNumber := AccountNumber;
  TReversal.ExpDate := ExpDate;
  TReversal.Amount1 := Amnt1;
  TReversal.Amount2 := Amnt2;
  TReversal.ApprovalCode := AppCode;
  If Manual then
    BodyR :=MessageID+Version+RoutingData+FS+BankID+MerchantID+FS+TerminalType+
            ProcessingCode+FS+POSEntryMode+FS+AccountNumber+
            FS+ExpDate+FS+Amount1+FS+Amount2+FS+ApprovalCode+FS+AcquirerRefData+
            FS+ReversalQNumber
  else
    BodyR :=MessageID+Version+RoutingData+FS+BankID+MerchantID+FS+TerminalType+
            ProcessingCode+FS+POSEntryMode+FS+AccountNumber+
            FS+ExpDate+FS+Amount1+FS+Amount2+FS+ApprovalCode+FS+AcquirerRefData+
            FS+ReversalQNumber;

            AssignFile(SendFile, '..\Data\SendFile.pca');
                      Rewrite(SendFile);
                      Append(SendFile);
                      SendTxt := TReversal.BodyR;
                      SendText := PChar(SendTxt);
                      Write(SendFile, SendText);
                      CloseFile(SendFile);
end;


procedure TCreditReturn.BuildBodyCR(Manual: Boolean; TrackData, AccountNumber,
ExpDate, Amnt1, Amnt2: String);
Var
  SendText: PChar;
  SendTxt: String;
  SendFile: TextFile;
Begin
  FS := '';
  MessageID := '*';
  Version := '02';
  CreditReturn.SwipeTrackData := TrackData;
  CreditReturn.ManualAccountNumber := AccountNumber;
  CreditReturn.ManualExpDate := ExpDate;
  CreditReturn.Amount1 := Amnt1;
  CreditReturn.Amount2 := Amnt2;
  {AC := TransHeader.ApprovalCode;
  if AC > ' ' then
    AC := FS+TransHeader.ApprovalCode
  else
    AC := '';
  //end;}
  If Manual then
    Body := MessageID+Version+RoutingData+FS+BankID+MerchantID+FS+TerminalType+
              ProcessingCode+FS+POSEntryMode+FS+ManualAccountNumber+
              FS+ManualExpDate+FS+Amount1+FS+Amount2+FS+OriginalAutorizedAmount+FS+
              BatchNumber+FS+ItemNumber+FS+OriginalDate+OriginalTime+FS+AcquirerRefData+FS+
              MarketData+FS+ShiftID+FS+ClerkID+FS+MerchantType
  else
    Body := MessageID+Version+RoutingData+FS+BankID+MerchantID+FS+TerminalType+
              ProcessingCode+FS+POSEntryMode+FS+SwipeTrackData+FS+Amount1+FS+Amount2+FS+
              OriginalAutorizedAmount+FS+BatchNumber+FS+ItemNumber+FS+OriginalDate+
              OriginalTime+FS+AcquirerRefData+FS+MarketData+FS+ShiftID+FS+ClerkID+FS+MerchantType;

            AssignFile(SendFile, '..\Data\SendFile.pca');
                      Rewrite(SendFile);
                      Append(SendFile);
                      SendTxt := CreditReturn.Body;
                      SendText := PChar(SendTxt);
                      Write(SendFile, SendText);
                      CloseFile(SendFile);

end;

procedure TTransaction.BuildBody(Manual: Boolean; TrackData, AccountNumber,
ExpDate, Amnt1, Amnt2: String);
Var
  SendText: PChar;
  AC, SendTxt: String;
  SendFile: TextFile;
Begin
  FS := '';
  MessageID := '*';
  Version := '02';
  TransHeader.SwipeTrackData := TrackData;
  TransHeader.ManualAccountNumber := AccountNumber;
  TransHeader.ManualExpDate := ExpDate;
  TransHeader.Amount1 := Amnt1;
  TransHeader.Amount2 := Amnt2;
  AC := TransHeader.ApprovalCode;
  if AC > ' ' then
    AC := FS+TransHeader.ApprovalCode
  else
    AC := '';
  //end;
  If Manual then
    Body := MessageID+Version+RoutingData+FS+BankID+MerchantID+FS+TerminalType+
              ProcessingCode+FS+POSEntryMode+FS+ManualAccountNumber+
              FS+ManualExpDate+FS+Amount1+FS+Amount2+FS+AcquirerRefData+FS+AVSInformation
              +FS+MarketData+FS+ShiftID+FS+ClerkID+FS+MerchantType+AC
  else
    Body := MessageID+Version+RoutingData+FS+BankID+MerchantID+FS+TerminalType+
              ProcessingCode+FS+POSEntryMode+FS+SwipeTrackData+FS+Amount1+FS+
              Amount2+FS+AcquirerRefData+FS+AVSInformation
              +FS+MarketData+FS+ShiftID+FS+ClerkID+FS+MerchantType+AC;
            TransHeader.ApprovalCode := '';
            AssignFile(SendFile, '..\Data\SendFile.pca');
                      Rewrite(SendFile);
                      Append(SendFile);
                      SendTxt := TransHeader.Body;
                      SendText := PChar(SendTxt);
                      Write(SendFile, SendText);
                      CloseFile(SendFile);

end;

procedure TPreAuthCompletion.BuildBody(Manual: Boolean; TrackData, AccountNumber,
ExpDate, Amnt1, Amnt2: String);
Var
  SendText: PChar;
  AC, SendTxt: String;
  SendFile: TextFile;
Begin
  FS := '';
  MessageID := '*';
  Version := '02';
  PreAuthCompletion.SwipeTrackData := TrackData;
  PreAuthCompletion.ManualAccountNumber := AccountNumber;
  PreAuthCompletion.ManualExpDate := ExpDate;
  PreAuthCompletion.Amount1 := Amnt1;
  PreAuthCompletion.Amount2 := Amnt2;
  AC := PreAuthCompletion.ApprovalCode;
  if AC > ' ' then
    AC := FS+PreAuthCompletion.ApprovalCode
  else
    AC := '';

  If Manual then
    Body := MessageID+Version+RoutingData+FS+BankID+MerchantID+FS+TerminalType+
              ProcessingCode+FS+POSEntryMode+FS+ManualAccountNumber+
              FS+ManualExpDate+FS+Amount1+FS+Amount2+FS+OriginalAuthAmount+FS+
              OriginalDateTime+FS+AcquirerRefData+FS+MarketData+FS+ShiftID+FS+
              ClerkID+FS+MerchantType+AC
  else
    Body := MessageID+Version+RoutingData+FS+BankID+MerchantID+FS+TerminalType+
              ProcessingCode+FS+POSEntryMode+FS+SwipeTrackData+FS+Amount1+FS+
              Amount2+FS+OriginalAuthAmount+FS+OriginalDateTime+FS+AcquirerRefData
              +FS+MarketData+FS+ShiftID+FS+ClerkID+FS+MerchantType+AC;

            AssignFile(SendFile, '..\Data\SendFile.pca');
                      Rewrite(SendFile);
                      Append(SendFile);
                      SendTxt := PreAuthCompletion.Body;
                      SendText := PChar(SendTxt);
                      Write(SendFile, SendText);
                      CloseFile(SendFile);

end;

procedure TPoleDisplay.EnviarMensage(Mensage: String);
begin
//  Mensage := EnviarMensage(Mensage);
end;

procedure TForceTrans.BuildBodyF(Manual: Boolean; TrackData, AccountNumber,
ExpDate, Amnt1, Amnt2: String);
Var
  SendText: PChar;
  SendTxt: String;
  SendFile: TextFile;
Begin
  FS := '';
  MessageID := '*';
  Version := '02';
  //BankID := '070400';
  //MerchantID := '2222';
  //TerminalType := 'XXX';

  If Manual then
    Body := MessageID+Version+RoutingData+FS+BankID+MerchantID+FS+TerminalType+
              ProcessingCode+FS+POSEntryMode+FS+ManualAccountNumber+
              FS+ManualExpDate+FS+Amount1+FS+Amount2+FS+OriginalAuthAmount+FS+
              ApprovalCode+FS+BatchNumber+FS+ItemNumber+FS+OriginalDate+
              OriginalTime+FS+AcquirerRefData+FS+MarketData+FS+ShiftID+FS+
              ClerkID+FS+MerchantType
  else
    Body := MessageID+Version+RoutingData+FS+BankID+MerchantID+FS+TerminalType+
              ProcessingCode+FS+POSEntryMode+FS+SwipeTrackData+FS+Amount1+FS+
              Amount2+FS+OriginalAuthAmount+FS+ApprovalCode+FS+BatchNumber+FS+
              ItemNumber+FS+OriginalDate+OriginalTime+FS+AcquirerRefData+FS+
              MarketData+FS+ShiftID+FS+ClerkID+FS+MerchantType;

            AssignFile(SendFile, '..\Data\SendFile.pca');
                      Rewrite(SendFile);
                      Append(SendFile);
                      SendTxt := TForce.Body;
                      SendText := PChar(SendTxt);
                      Write(SendFile, SendText);
                      CloseFile(SendFile);

end;



procedure TResponse.BreakBody(InputStr: String);
Var
  IntArray: Array[0..11] of String;
  TmpString: String;
  Count: Integer;
Begin
  For Count := 0 to 11 do
  Begin
    IntArray[Count]:= ' ';
  end;
  Count := 0;
  While Length(InputStr) > 0 do
  Begin
    If Pos(#28,InputStr) > 0 then
    Begin
      IntArray[Count] := Copy(InputStr,0,Pos(#28,InputStr)-1);
      InputStr := Copy(InputStr,Pos(#28,InputStr)+1,Length(InputStr));
    end
    Else
    Begin
      IntArray[Count] := InputStr;
      TmpString := '';
    end;
    Count:= Count + 1;
  end;
// Llamar rutina y romper en array
   RoutingData:= IntArray[0];
   Verbiage:= IntArray[1];
   BatchNumber:= IntArray[2];
   ItemNumber:= IntArray[3];
   BatchAmount:= IntArray[4];
   ActionCode:= IntArray[5];
   AVSResultCode:= IntArray[6];
   ApprovalCode:= IntArray[7];
   Amount1:= IntArray[8];
   Amount2:= IntArray[9];
   AcquirerRefData:= IntArray[10];
   ReversalQueueNumber:= IntArray[11];
end;



procedure TCReversalResponse.CRBreakBody(InputStr: String);
Var
  IntArray: Array[0..10] of String;
  TmpString: String;
  Counter: Integer;
Begin
  For Counter := 0 to 10 do
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

   RoutingData:= IntArray[0];
   Verbiage:= IntArray[1];
   ActionCode:= IntArray[2];
   Amount1:= IntArray[3];
   Amount2:= IntArray[4];
   AcquirerRefData:= IntArray[5];
end;




function LRC(Input: String): Integer;
Var I, TmpLRC: Integer;
begin
  TmpLRC := 0;
  For I := 1 to Length(Input) do
  Begin
    TmpLRC := TmpLRC xor Ord(Input[I]);
  end;
  Result := TmpLRC;
end;


Initialization
Begin
  Call := TCall.Create;
  CreditReturn := TCreditReturn.Create;
  BCliente := TBCliente.Create;
  TransType := TTransType.Create;
  TransHeader := TTransaction.Create;
  TVoid := TVoidTrans.Create;
  TReversal := TReversalTrans.Create;
  CreditAdjTrans := TCreditAdjTrans.Create;
  TForce := TForceTrans.Create;
  PreAuthCompletion := TPreAuthCompletion.Create;
  PoleDisplay := TPoleDisplay.Create;
end;

end.




