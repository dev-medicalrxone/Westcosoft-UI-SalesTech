unit untIpe;

interface
uses

  InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns, wininet, pngimage,
  Windows, Messages, Classes, Graphics, Controls, Dialogs,
  StdCtrls, Forms, DBCtrls, DB, Grids, DBGrids, Mask, ExtCtrls,
  Buttons, WinTypes, ComCtrls, Printers, Registry,  ToolWin, Shellapi,
  SysUtils, frxClass, System.Threading, Vcl.WinXCtrls;

type
  TIpe = class(TObject)
  procedure executeCommand(sCommand, transName, s: String; timer: Integer);
  procedure executeCommand2(sCommand, transName, s: String);
  procedure executeCommand3(sCommand, transName, s: String);
  procedure getLogonValues(s: String);
  function readData(s, token: String; var error: Boolean): Boolean;
  function showStatus(s: String): String;
  function checkLRC(const s: string): Integer;
  procedure manageGlabalVars(flag: Boolean);
  function insertFinishedTransaction(noTrans: Integer; response: String): Boolean;
  function nextRefNo(option: String): Integer;
  function voidStr(str, option: String; amount: Double): String;
  procedure showError(error: String);


  //Transactions//
  procedure logon;
  procedure logoff;
  procedure printReceipt(transType, receiptType: String);
  procedure settle;
  procedure saleTrans(specialAcct, processingCode, upcs, manualTrans: String);
  procedure saleMcs(total, upcs: String);
  procedure refundMcs(total, upcs: String);
  procedure mcsBalance;
  procedure ivuCash(option: String);
  procedure journal(reference: String);
  procedure adjDelete(s: String);
  procedure refund(ManualTrans: String);
  procedure ebtBalance;
  procedure ebtTrans(option: String);
  procedure ebtTransDup(option, procCode: String);
  procedure prodVerification(prodList: String);
  procedure tipAdj(s: String);
  procedure prodVerify;
  procedure cashWithdrawal;
  private
    { Private declarations }
    isTransaction: Boolean;
    merchOrCustReceipt: String;
    journalStr: String;
    procedure getValues(token: String);
    function DefineJournal(counter: Integer; Option, Token: String): String;
    function responseCode(Token: String): String;
    function formatAmounts(Token: String): String;
  public
    { Public declarations }
    sessionID, terminalId, stationNumber, refNo : String;
    globalIndicator: TActivityIndicator;
    globalLabel: TLabel;

  end;

var
  ipe : TIpe;

implementation

{ TIpe }

uses untMain, UntCommon, UntPOSRest, UntCommonPOS, untEvertec, UntCheckOut,
  UntDMMidas, untWebReceipt, untDuplicateTrans, untValidateProds,
  UntEnterNumber, UntQueries;

procedure TIpe.adjDelete(s: String);
begin
  refNo := Format('%.*d',[6, nextRefNo('REFERENCE_NO')]);
  isTransaction := True;
  s := sessionId + refNo + voidStr(s, 'void', 0);
  //s := s + '000000000352/000000000034/000000003740/000000000000/000000000000////// ';
  ipe.executeCommand('TRANS\', 'ADJDELETE.', s, 15)
end;

procedure TIpe.cashWithdrawal;
begin

end;

function TIpe.checkLRC(const s: string): Integer;
var
   I: Integer;
begin
   Result := 0;
   for I:=1 to Length(s) do
     Result := Result xor Ord(s[I])
end;

procedure TIpe.ebtBalance;
var
  s: String;
begin
  refNo := Format('%.*d',[6, nextRefNo('REFERENCE_NO')]);
  isTransaction := True;
  s := sessionID + refNo + '310000000000000000000000000000000EBT/BALANCE/////////////';
  ipe.executeCommand('TRANS\', 'EBT.', s, 15)
end;

procedure TIpe.ebtTrans(option: String);
var
  value, stateTax, munTax, redTax, cashback, adjData, foodTax, s, processingCode: String;
  cashBack1, adjValue, stateTax2, munTax2, redTax2: Double;
begin
  if option = 'CASHCASH' then
  begin
    stateTax := '000000000000';
    munTax := '000000000000';
    redTax := '000000000000';
    cashBack := '000000000000';
    adjData := '000000000000';
    processingCode := '010000';
    value := StringReplace(CommonPOS.ebtWithdrawalAmnt, '.', '', [rfReplaceAll, rfIgnoreCase]);
    value := StringReplace(value, '$', '', [rfReplaceAll, rfIgnoreCase]);
    value := StringReplace(value, '(', '', [rfReplaceAll, rfIgnoreCase]);
    value := StringReplace(value, ')', '', [rfReplaceAll, rfIgnoreCase]);
    value := Format('%.*d',[12, StrToInt(value)]);
  end
  else
  begin
    CommonPOS.calcSplitPayment(FrmCheckOut.Edit4.Text, stateTax, munTax, redTax, foodTax);
    value := StringReplace(FrmCheckOut.Edit4.Text, '.', '', [rfReplaceAll, rfIgnoreCase]);
    value := StringReplace(value, '$', '', [rfReplaceAll, rfIgnoreCase]);
    value := StringReplace(value, '(', '', [rfReplaceAll, rfIgnoreCase]);
    value := StringReplace(value, ')', '', [rfReplaceAll, rfIgnoreCase]);
    value := StringReplace(value, '-', '', [rfReplaceAll, rfIgnoreCase]);
    value := Format('%.*d',[12, StrToInt(value)]);
    cashBack := CommonPOS.ebtCashBack;
    if cashBack <> '' then
      begin
        cashback := StringReplace(cashback, '.', '', [rfReplaceAll, rfIgnoreCase]);
        cashBack := Format('%.*d',[12, StrToInt(cashBack)]);
      end
    else
      cashBack := '000000000000';

    //CommonPOS.ebtCashBack := '';   /////Check this for later in transaction////

    stateTax2 := StrToFloat(stateTax);
    stateTax := FormatFloat('0.00', abs(stateTax2));
    stateTax := StringReplace(stateTax, '.', '', [rfReplaceAll, rfIgnoreCase]);
    stateTax := StringReplace(stateTax, '$', '', [rfReplaceAll, rfIgnoreCase]);
    stateTax := Format('%.*d',[12, StrToInt(stateTax)]);

    munTax2 := StrToFloat(munTax);
    munTax := FormatFloat('0.00', abs(munTax2));
    munTax := StringReplace(munTax, '.', '', [rfReplaceAll, rfIgnoreCase]);
    munTax := StringReplace(munTax, '$', '', [rfReplaceAll, rfIgnoreCase]);
    munTax := Format('%.*d',[12, StrToInt(munTax)]);

    redTax2 := StrToFloat(redTax);
    redTax := FormatFloat('0.00', abs(redTax2));
    redTax := StringReplace(redTax, '.', '', [rfReplaceAll, rfIgnoreCase]);
    redTax := StringReplace(redTax, '$', '', [rfReplaceAll, rfIgnoreCase]);
    redTax := Format('%.*d',[12, StrToInt(redTax)]);

    adjValue := StrToFloat(FrmCheckOut.Edit4.Text) + StrToFloat(FrmCheckOut.EditTIP.Text);
    adjData := FormatFloat('0.00', abs(adjValue));
    adjData := StringReplace(adjData,'.', '', [rfReplaceAll, rfIgnoreCase]);
    adjData := Format('%.*d',[12, StrToInt(adjData)]);

    refNo := Format('%.*d',[6, nextRefNo('REFERENCE_NO')]);
    if option = 'REFUND' then
      processingCode := '200000'
    else
      processingCode := '090000';
  end;
  isTransaction := True;
      ///FOODPURCH(Food stamp purchase), REFUND(Food stamp refund), CASHPURCH(Purchase), CASHBACK(Purchase w cashback), CASHCASH(Withdrawl), BALANCE(Check balance)///
  s := sessionID + refNo + '' + processingCode +'' + Trim(value) + ''+ cashBack + '980EBT/' + option + '////' + stateTax + '/' + munTax + '//' + redTax + '//////';
  ipe.executeCommand('TRANS\', 'EBT.', s, 20)
end;


procedure TIpe.ebtTransDup(option, procCode: String);
var
  value, stateTax, munTax, redTax, cashback, adjData, foodTax, s, processingCode: String;
  cashBack1, adjValue, stateTax2, munTax2, redTax2: Double;
begin
  if option = 'CASHCASH' then
  begin
    stateTax := '000000000000';
    munTax := '000000000000';
    redTax := '000000000000';
    cashBack := '000000000000';
    adjData := '000000000000';
    processingCode := '010000';
    value := StringReplace(CommonPOS.ebtWithdrawalAmnt, '.', '', [rfReplaceAll, rfIgnoreCase]);
    value := StringReplace(value, '$', '', [rfReplaceAll, rfIgnoreCase]);
    value := StringReplace(value, '(', '', [rfReplaceAll, rfIgnoreCase]);
    value := StringReplace(value, ')', '', [rfReplaceAll, rfIgnoreCase]);
    value := Format('%.*d',[12, StrToInt(value)]);
  end
  else
  begin
    CommonPOS.calcSplitPayment(FrmCheckOut.Edit4.Text, stateTax, munTax, redTax, foodTax);
    value := StringReplace(FrmCheckOut.Edit4.Text, '.', '', [rfReplaceAll, rfIgnoreCase]);
    value := StringReplace(value, '$', '', [rfReplaceAll, rfIgnoreCase]);
    value := StringReplace(value, '(', '', [rfReplaceAll, rfIgnoreCase]);
    value := StringReplace(value, ')', '', [rfReplaceAll, rfIgnoreCase]);
    value := StringReplace(value, '-', '', [rfReplaceAll, rfIgnoreCase]);
    value := Format('%.*d',[12, StrToInt(value)]);
    cashBack := CommonPOS.ebtCashBack;
    if cashBack <> '' then
      begin
        cashback := StringReplace(cashback, '.', '', [rfReplaceAll, rfIgnoreCase]);
        cashBack := Format('%.*d',[12, StrToInt(cashBack)]);
      end
    else
      cashBack := '000000000000';

    stateTax2 := StrToFloat(stateTax);
    stateTax := FormatFloat('0.00', abs(stateTax2));
    stateTax := StringReplace(stateTax, '.', '', [rfReplaceAll, rfIgnoreCase]);
    stateTax := StringReplace(stateTax, '$', '', [rfReplaceAll, rfIgnoreCase]);
    stateTax := Format('%.*d',[12, StrToInt(stateTax)]);

    munTax2 := StrToFloat(munTax);
    munTax := FormatFloat('0.00', abs(munTax2));
    munTax := StringReplace(munTax, '.', '', [rfReplaceAll, rfIgnoreCase]);
    munTax := StringReplace(munTax, '$', '', [rfReplaceAll, rfIgnoreCase]);
    munTax := Format('%.*d',[12, StrToInt(munTax)]);

    redTax2 := StrToFloat(redTax);
    redTax := FormatFloat('0.00', abs(redTax2));
    redTax := StringReplace(redTax, '.', '', [rfReplaceAll, rfIgnoreCase]);
    redTax := StringReplace(redTax, '$', '', [rfReplaceAll, rfIgnoreCase]);
    redTax := Format('%.*d',[12, StrToInt(redTax)]);

    adjValue := StrToFloat(FrmCheckOut.Edit4.Text) + StrToFloat(FrmCheckOut.EditTIP.Text);
    adjData := FormatFloat('0.00', abs(adjValue));
    adjData := StringReplace(adjData,'.', '', [rfReplaceAll, rfIgnoreCase]);
    adjData := Format('%.*d',[12, StrToInt(adjData)]);

    refNo := Format('%.*d',[6, nextRefNo('REFERENCE_NO')]);
    processingCode := procCode;
  end;
  isTransaction := True;
  s := sessionID + refNo + '' + processingCode +'' + Trim(value) + ''+ cashBack + '980EBT/' + option + '////' + stateTax + '/' + munTax + '//' + redTax + '//////';
  //s := sessionID + refNo + '090000' + Trim(Value) + ' ' + cashBack + '980EBT/' + option + '////000000000002/000000000004//000000000003/000000000001/////';
  ipe.executeCommand('TRANS\', 'EBT.', s, 15)
end;

procedure TIpe.executeCommand2(sCommand, transName, s: String);
begin

end;

procedure TIpe.executeCommand(sCommand, transName, s: String; timer: Integer);
var
  i, timer1: Integer;
  response: String;
  flag, error: Boolean;
  sendFile: TextFile;
begin
  manageGlabalVars(True);
  try
  begin
    if sCommand = 'RECEIPTDATA\' then
    begin
      s := sCommand + s;
    end
    else if sCommand = 'JOURNAL\' then
    begin
      i := checkLRC(s);
      s := sCommand +  s + chr(i);
    end
    else
    begin
      s := '5278' + transName + s;
      i := checkLRC(s);
      s := sCommand +  s + chr(i);
    end;
    timer1 := 0;
    FrmMain.tcpClient.Connect;
    if Assigned(FrmEvertec) then
      FrmEvertec.Memo2.Lines.Add(s);
    FrmMain.tcpClient.IOHandler.Write(s);
    flag := false;
    try
      while flag = False do
      begin
        timer1 := timer1 + 1;
        if timer1 >= timer then
        begin
          if Assigned(FrmCheckOut) then
          begin
            FrmCheckOut.Edit4.Text := '0.00';
            error := true;
          end;
          if Assigned(FrmEvertec) then
          begin
            FrmEvertec.btnClose.Visible := True;
          end;
          FrmMain.tcpClient.Disconnect;
          showError('An error has occurred. Please try again later.');
          CommonPOS.ebtType := '';
          exit
        end;
        while FrmMain.tcpClient.IOHandler.CheckForDataOnSource(1000) do
        begin
          If not FrmMain.tcpClient.IOHandler.InputBufferIsEmpty then
          begin
            timer1 := 0;
            response := FrmMain.tcpClient.IOHandler.InputBufferAsString();
            flag := readData(response, 'APPROVED', error);
            ///update ui
            if Assigned(FrmValidateProds) then
            begin
              FrmValidateProds.Memo1.Lines.Add(response)
            end;
            if (globalLabel <> nil) and (isTransaction = True) then
            begin
              //globalLabel.Caption := showStatus(response);
              FrmEvertec.memo1.Lines.Clear;
              FrmEvertec.memo1.Lines.Add(CommonPOS.CenterString(showStatus(response), showStatus(response).Length));
              FrmEvertec.Memo2.Lines.Add(response);
            end
            else
              //ShowMessage(showStatus(response));
          end;
        end;
      end;
      //////Begin processing result///////
      FrmMain.tcpClient.Disconnect;
     { Error returned from pinpad }
      if error then
      begin
        if transName = 'SETTLE.' then
        begin
           showError(showStatus(response));
        end
        else if transName = 'TIPADJUST.' then
        begin
          showError(showStatus(response));
        end
        else if isTransaction then
        begin
          i := Pos('DP/', response);    ///Check for Duplicate trans///
          if i > 0 then
          begin
            FrmDuplicateTrans := TFrmDuplicateTrans.Create(Nil);
            FrmDuplicateTrans.responseStr := response;
            FrmDuplicateTrans.transNameStr := transName;
            FrmDuplicateTrans.refNo := showStatus(response);
            FrmEvertec.FormStyle := fsNormal;
            FrmDuplicateTrans.FormStyle := fsStayOnTop;
            FrmDuplicateTrans.ShowModal;
            FrmDuplicateTrans.Free;
            FrmDuplicateTrans := nil;
            FrmEvertec.FormStyle := fsStayOnTop;
          end
         else
         begin
           if Assigned(FrmCheckOut) then
           begin
             FrmCheckOut.Edit4.Text := '0';
             FrmEvertec.btnClose.Visible := True;
           end;
           if Assigned(FrmEvertec) then
           begin
             FrmEvertec.btnClose.Visible := True;
           end;
           insertFinishedTransaction(CommonPOS.Header, response);
         end;
        end
        else if sCommand = 'RECEIPTDATA\' then
        begin
          showError(showStatus(response));
        end
        else if sCommand = 'JOURNAL\' then
        begin
          showError(showStatus(response));
        end
        else if transName = 'PRODVERIFICATION.' then
        begin
          showError(showStatus(response));
        end
        else if transName = 'CARDVERIFICATION.' then
        begin
          showError(showStatus(response));
        end;
      end
      { No error returned from pinpad }
      else
      begin
        if transName = 'SETTLE.' then
        begin
          if insertFinishedTransaction(0, response) then
          begin
            ////Print receipt////
            CommonPOS.Insert_Print_Jobs(True, false, false, 'receipt', '0', CommonPOS.EvertecID, 'SET', '', '', '', '0', 1);
          end;
        end
        else if transName = 'PRODVERIFICATION.' then
        begin
          FrmValidateProds.updateValidProducts(response);
          FrmValidateProds.Memo1.Lines.Add(response) ;
        end
        else if transName = 'CARDVERIFICATION.' then
        begin
          //printReceipt(Copy(transName, 1, transName.Length -1), '1');
          insertFinishedTransaction(CommonPOS.Header, response);
        end
        else if transName = 'EBT.' then
        begin
          if CommonPOS.ebtWithdrawalAmnt > '' then
          begin
            CommonPOS.ExecPayout(IntToStr(CommonPOS.TransNo), StrToFloat(CommonPOS.ebtWithdrawalAmnt));
          end
          else if CommonPOS.ebtCashBack > '' then
          begin
            CommonPOS.AddProduct('F','99999999997','CASHBACK','CASB','F','',
                           CommonPOS.User, 'F', 'F', StrToFloat(CommonPOS.ebtCashBack),
                           StrToFloat(CommonPOS.ebtCashBack), 0, 0,1,0,CommonPOS.Turno, CommonPOS.ID, 0,0,0,0,false,false,'',0,false,0,false, false);
            CommonPOS.ebtCashBack := '';
          end;
          insertFinishedTransaction(CommonPOS.Header, response);
          i := Pos('/BALANCE/', response);    ///Check for EBT balance trans///
          if i > 0 then
          begin
            CommonPOS.Insert_Print_Jobs(True, false, false, 'receipt', '0', CommonPOS.EvertecID, 'BAL', '', '', '', '0', 1);
          end;
          CommonPOS.receiptType := 'ebt';
          if Assigned(FrmEvertec) then
            FrmEvertec.btnClose.Visible := True;
        end
        else if isTransaction then
        begin
          if insertFinishedTransaction(CommonPOS.Header, response) then
          begin
            if transName = 'ADJDELETE.' then
            begin
              CommonPOS.VoidTrans(CommonPOS.Header);
              CommonPOS.Header := 0;
            end
            else
            begin
              CommonPOS.EvertecID := '';
            end;
            //FrmEvertec.button2.Visible := True;
            if Assigned(FrmEvertec) then
             FrmEvertec.btnClose.Visible := True;
          end;
        end
        else if transName = 'TIPADJUST.' then
        begin
          with DMMidas do
          begin
            Queries.OpentTransHeader(CommonPOS.Header, false);
            FDQuery2.SQL.Text := 'Update TRANSACTIONHEADER set TIP = '+ FloatToStr(CommonPOS.tip) + ' + TOTAL_TIP = ' + FloatToStr(CommonPOS.tip) + ' + ISNULL(TIP,0) where TRANSACTIONNUMBER = '+ IntToStr(CommonPOS.Header);
            FDQuery2.ExecSQL;
          end;
          CommonPOS.tip := 0;
          CommonPOS.Header := 0;
        end
        else if sCommand = 'RECEIPTDATA\' then         //Receipt transaction//
        begin
          FrmWebReceipt := TFrmWebReceipt.Create(nil);
          With FrmWebReceipt do
          begin
            Tag := 1;
            if transName = 'SETTLE' then
            begin
              CommonPOS.receiptType := 'settle';
              AssignFile(SendFile, extractfilepath(application.exename) + 'settleReceipt.html')
            end
            else if ipe.merchOrCustReceipt = '0' then
            begin
              if CommonPOS.receiptType = '' then
                CommonPOS.receiptType := '0';
              AssignFile(SendFile, extractfilepath(application.exename) + 'merchReceipt.html')
            end
            else
            begin
              if CommonPOS.receiptType = '' then                            //////check this///////
                CommonPOS.receiptType := '1';
              AssignFile(SendFile, extractfilepath(application.exename) + 'custReceipt.html');
            end;
            Rewrite(SendFile);
            Write(SendFile, response + '<link rel="stylesheet" type="text/css" href="ReceiptStyle.css">');
            CloseFile(SendFile);
            if transName = 'SETTLE' then
              FrmWebReceipt.WebBrowser1.Navigate(extractfilepath(application.exename) + 'settleReceipt.html')
            else
            begin
              if merchOrCustReceipt = '1' then
                FrmWebReceipt.WebBrowser1.Navigate(extractfilepath(application.exename) + 'custReceipt.html')
              else
                FrmWebReceipt.WebBrowser1.Navigate(extractfilepath(application.exename) + 'merchReceipt.html')
            end;
            showModal;
            Free;
            FrmWebReceipt := Nil;
          end
        end
        else if sCommand = 'JOURNAL\' then
        begin
          if CommonPOS.adjDelete then
            adjDelete(response)
          else
            tipAdj(response)
        end;
      end;
    finally
    begin
      FrmMain.tcpClient.Disconnect;
      CommonPOS.ebtType := '';
    end;
    end;
  end;
  except on E: exception do
  begin
    if Assigned(FrmCheckOut) then
    begin
      FrmCheckOut.Edit4.Text := '0.00';
      error := true;
    end;
    if Assigned(FrmEvertec) then
    begin
      FrmEvertec.btnClose.Visible := True;
    end;
    FrmMain.tcpClient.Disconnect;
    showError('An error has occurred. Please try again later.');
    CommonPOS.ebtType := '';
  end;
  end;
end;


procedure TIpe.executeCommand3(sCommand, transName, s: String);
begin
end;

procedure TIpe.getLogonValues(s: String);
var
  loc: Integer;
begin
  loc := Pos('.', s);
  terminalId := Copy(s, loc + 1, 8);
  stationNumber := Copy(s, loc + 9, 4);
  sessionID := Copy(s, loc + 13, 23);
  refNo := Copy(s, loc + 36, 6);
end;

function TIpe.insertFinishedTransaction(noTrans: Integer;
  response: String): Boolean;
begin
  result := true;
  Try
    With DMMidas.POS_INSERT_EVERTEC_TRANS do
    begin
      ParamByName('@TRANS_NO').Value := NoTrans;
      ParamByName('@RESPONSE').Value := response;
      ExecProc;
      CommonPOS.EvertecID := ParamByName('@ID').Value;
    end;
  Except
    Result := false;
  End;
end;

procedure TIpe.ivuCash(option: String);
var
  value, stateTax, munTax, redTax, foodTax, cashback, adjData, valueTotal, s: String;
  cashBack1, adjValue, stateTax2, munTax2, redTax2, foodTax2, total, otherTotal: Double;
  len: Integer;
begin
{
  CommonPOS.calcSplitPayment(FrmCheckOut.Edit4.Text, stateTax, munTax, redTax, foodTax);
  value := StringReplace(FrmCheckOut.Edit4.Text, '.', '', [rfReplaceAll, rfIgnoreCase]);
  value := StringReplace(value, '$', '', [rfReplaceAll, rfIgnoreCase]);
  value := StringReplace(value, '(', '', [rfReplaceAll, rfIgnoreCase]);
  value := StringReplace(value, ')', '', [rfReplaceAll, rfIgnoreCase]);
  value := StringReplace(value, '-', '', [rfReplaceAll, rfIgnoreCase]);
  value := Format('%.*d',[12, StrToInt(value)]);

  stateTax2 := StrToFloat(stateTax);
  stateTax := FormatFloat('0.00', abs(stateTax2));
  stateTax := StringReplace(stateTax, '.', '', [rfReplaceAll, rfIgnoreCase]);
  stateTax := StringReplace(stateTax, '$', '', [rfReplaceAll, rfIgnoreCase]);
  stateTax := Format('%.*d',[12, StrToInt(stateTax)]);

  munTax2 := StrToFloat(munTax);
  munTax := FormatFloat('0.00', abs(munTax2));
  munTax := StringReplace(munTax, '.', '', [rfReplaceAll, rfIgnoreCase]);
  munTax := StringReplace(munTax, '$', '', [rfReplaceAll, rfIgnoreCase]);
  munTax := Format('%.*d',[12, StrToInt(munTax)]);

  redTax2 := StrToFloat(redTax);
  redTax := FormatFloat('0.00', abs(redTax2));
  redTax := StringReplace(redTax, '.', '', [rfReplaceAll, rfIgnoreCase]);
  redTax := StringReplace(redTax, '$', '', [rfReplaceAll, rfIgnoreCase]);
  redTax := Format('%.*d',[12, StrToInt(redTax)]);

  refNo := Format('%.*d',[6, nextRefNo('REFERENCE_NO')]);
  isTransaction := True;
  //s := sessionID + refNo + ''+ processingCode + '' + Trim(value) + ''+ cashBack + '' + specialAcct + '' + upcs + '0/////' + stateTax + '/' + munTax + '/' + adjData + '/' + redTax + '/000000000000/////';
  s := sessionID + refNo + '000000' + Trim(value) + 'IVUCASH/' + option + '////' + stateTax + '/' + munTax + '//' + redTax + '/000000000000/////';
  }
  if StrTofloat(FrmCheckOut.EditTIP.Text) > 0 then
  begin
    total := StrToFloat(FrmCheckout.Edit4.Text) - StrToFloat(FrmCheckout.EditTIP.Text);
  end
  else
    total := StrToFloat(FrmCheckout.Edit4.Text);
  if CommonPOS.RefundPOS = True then
  begin
    valueTotal := FrmPOSRest.DBText3.Caption;
    valueTotal := StringReplace(valueTotal, '$', '', [rfReplaceAll, rfIgnoreCase]);
    valueTotal := StringReplace(valueTotal, '(', '', [rfReplaceAll, rfIgnoreCase]);
    valueTotal := StringReplace(valueTotal, ')', '', [rfReplaceAll, rfIgnoreCase]);
    otherTotal := StrToFloat(valueTotal);
  end
  else
    otherTotal := StrToFloat(Copy(FrmPOSRest.DBText3.Caption, 2, FrmPOSRest.DBText3.GetTextLen));
  with DMMidas do
  begin
    if CDSTransHeadPAYAMOUNT1.Value > 0 then
    begin
      otherTotal := otherTotal - CDSTransHeadPAYAMOUNT1.asFloat;
    end;
  end;

  if total > otherTotal then//StrToFloat(Copy(FrmPOSRest.DBText3.Caption, 2, FrmPOSRest.DBText3.GetTextLen)) then
  begin
    total := otherTotal//StrToFloat(Copy(FrmPOSRest.DBText3.Caption, 2, FrmPOSRest.DBText3.GetTextLen));
  end;
  CommonPOS.calcSplitPayment(FloatToStr(total), stateTax, munTax, redTax, foodTax);
  //value := StringReplace(FrmPOSRest.DBText3.Caption, '.', '', [rfReplaceAll, rfIgnoreCase]);
  value := FormatFloat('0.00', abs(total));
  value := StringReplace(value, '.', '', [rfReplaceAll, rfIgnoreCase]);
  value := StringReplace(value, '$', '', [rfReplaceAll, rfIgnoreCase]);
  value := StringReplace(value, '(', '', [rfReplaceAll, rfIgnoreCase]);
  value := StringReplace(value, ')', '', [rfReplaceAll, rfIgnoreCase]);
  value := Format('%.*d',[12, StrToInt(value)]);


  cashBack := '000000000000';

  //stateTax := StringReplace(FrmPOSRest.DBText2.Caption, '.', '', [rfReplaceAll, rfIgnoreCase]);
  stateTax2 := StrToFloat(stateTax);
  stateTax := FormatFloat('0.00', abs(stateTax2));
  stateTax := StringReplace(stateTax, '.', '', [rfReplaceAll, rfIgnoreCase]);
  stateTax := StringReplace(stateTax, '$', '', [rfReplaceAll, rfIgnoreCase]);
  stateTax := Format('%.*d',[12, StrToInt(stateTax)]);

  //munTax := StringReplace(FrmPOSRest.DBText1.Caption, '.', '', [rfReplaceAll, rfIgnoreCase]);
  munTax2 := StrToFloat(munTax);
  munTax := FormatFloat('0.00', abs(munTax2));
  munTax := StringReplace(munTax, '.', '', [rfReplaceAll, rfIgnoreCase]);
  munTax := StringReplace(munTax, '$', '', [rfReplaceAll, rfIgnoreCase]);
  munTax := Format('%.*d',[12, StrToInt(munTax)]);

  //redTax := StringReplace(FrmPOSRest.DBText5.Caption, '.', '', [rfReplaceAll, rfIgnoreCase]);
  redTax2 := StrToFloat(redTax);
  redTax := FormatFloat('0.00', abs(redTax2));
  redTax := StringReplace(redTax, '.', '', [rfReplaceAll, rfIgnoreCase]);
  redTax := StringReplace(redTax, '$', '', [rfReplaceAll, rfIgnoreCase]);
  redTax := Format('%.*d',[12, StrToInt(redTax)]);
  if (cashback = '000000000000') then
  begin
    adjValue := StrToFloat(Copy(FrmCheckOut.EditTotalwTip.Text, 2, Length(FrmCheckOut.EditTotalwTip.Text)));
    //adjValue := StrToFloat(FrmCheckOut.Edit4.Text) + StrToFloat(FrmCheckOut.EditTIP.Text);
    adjData := FormatFloat('0.00', abs(adjValue));
    //adjData := FloatToStr(adjValue);
    adjData := StringReplace(adjData,'.', '', [rfReplaceAll, rfIgnoreCase]);
    adjData := Format('%.*d',[12, StrToInt(adjData)]);
  end
  else
    adjData := '';

  refNo := Format('%.*d',[6, nextRefNo('REFERENCE_NO')]);

  isTransaction := True;
  //s := sessionID + refNo + ''+ processingCode + '' + Trim(value) + ''+ cashBack + '' + specialAcct + '' + upcs + '0/////' + stateTax + '/' + munTax + '/' + adjData + '/' + redTax + '/000000000000/////';
  s := sessionID + refNo + '000000' + Trim(value) + 'IVUCASH/' + option + '////' + stateTax + '/' + munTax + '/' + adjData +'/' + redTax + '/000000000000/////';
  ipe.executeCommand('TRANS\', 'IVUCASH.', s, 15)
end;

procedure TIpe.journal(reference: String);
begin
  refNo := Format('%.*d',[6, nextRefNo('REFERENCE_NO')]);
  isTransaction := False;
  executeCommand('JOURNAL\', '', reference + '\', 15);
end;

procedure TIpe.logon;
var
  s: String;
begin
  FrmMain.tcpClient.Port := StrToInt(CommonPOS.pinPortNum);
  FrmMain.tcpClient.Host := CommonPOS.pinIp;
  refNo := Format('%.*d',[6, nextRefNo('REFERENCE_NO')]);
  isTransaction := False;
  s := CommonPOS.pinTid + Format('%.*d',[4, StrToInt(CommonPOS.pinStationNum)]) + Format('%.*d',[4, StrToInt(CommonPOS.RegisterNo)]) + refNo + chr(28) + chr(28);
  executeCommand('TRANS\', 'LOGON.', s, 15);
end;

procedure TIpe.logoff;
var
  s: String;
begin
  refNo := Format('%.*d',[6, nextRefNo('REFERENCE_NO')]);
  isTransaction := False;
  s := sessionID + refNo + chr(28) + chr(28);
  executeCommand('TRANS\', 'LOGOFF.', s, 15);
end;

procedure TIpe.manageGlabalVars(flag: Boolean);
begin
 { if globalIndicator <> nil then
    globalIndicator.Animate := flag;     }
end;

procedure TIpe.mcsBalance;
var
  s: String;
begin
  isTransaction := False;
  s := sessionID + refNo + '000000CS0//////////////';
  FrmEvertec.Memo1.Lines.Add('Swipe MCS card');
  executeCommand('TRANS\', 'CARDVERIFICATION.', s, 15);
end;

function TIpe.nextRefNo(option: String): Integer;
begin
  With DMMidas do
  begin
    With NEXT_ID do
    begin
      Prepare;
      ParamByName('@OPTION').Value := option;
      ExecProc;
      result := ParamByName('@ID').Value;
    end;
  end;

end;

procedure TIpe.printReceipt(transType, receiptType: String);
var
  s: String;
begin
  isTransaction := False;
  merchOrCustReceipt :=  receiptType;
  s := transType + '\1\1\' + receiptType + '\';
  executeCommand('RECEIPTDATA\', transType, s, 15);
end;

procedure TIpe.prodVerification(prodList: String);
var
  s: String;
begin
  refNo := Format('%.*d',[6, nextRefNo('REFERENCE_NO')]);
  isTransaction := False;
  //s := sessionID + refNo + ''+ processingCode + '' + Trim(value) + ''+ cashBack + '' + specialAcct + '0/////' + stateTax + '/' + munTax + '//' + redTax + '/000000000000/////';
  s := sessionID + refNo + '000000CS' + prodList + '0//////////////';
  ipe.executeCommand('TRANS\', 'PRODVERIFICATION.', s, 15);
end;

procedure TIpe.prodVerify;
var
  s: String;
begin
  refNo := Format('%.*d',[6, nextRefNo('REFERENCE_NO')]);
  isTransaction := False;
  s := sessionID + refNo + '000000CS300002821501@3.78,0730637022341@9.18,0355910954524@20.34,00002821501@2.000//////////////4';
  FrmValidateProds.Memo1.Lines.Add('TRANS\' +  s + chr(i));
  ipe.executeCommand('TRANS\', 'PRODVERIFICATION.', s, 15)
end;

function TIpe.readData(s, token: String; var error: Boolean): Boolean;
var
  i: Integer;
begin
  if s = 'NOT FOUND' then
  begin
    error := True;
    result := True;
    exit
  end;
  i := Pos('SETTLE.', s);  ///Check if Settlement///
  if i > 0 then
  begin
    i := Pos('BALANCED', s);
    if i > 0 then
    begin
      error := False;
      result := True;
      exit
    end
  end; 
  i := Pos('/ZY^', s);    ///Check for errors///
  if i > 0 then
  begin
    error := True;
    result := True;
    exit
  end;
  i := Pos('DOCTYPE', s);  ///Check if is receipt///
  if i > 0 then
  begin
    result := True;
    exit
  end;
  i := Pos('HATHECRPSPOINT1', s);  ///Check if is journal///
  if i > 0 then
  begin
    result := True;
    exit
  end;    
  i := Pos(token, s);    //check for approved transactions//
  if i > 0 then
  begin
    i := Pos('LOGON.', s);
    if i > 0 then
    begin
      getLogonValues(s);
    end;
    result := True
  end
  else
    result := False;
end;

procedure TIpe.refund(manualTrans: String);
var
  value, stateTax, munTax, redTax, s: String;
begin
  value := StringReplace(FrmPOSRest.DBText3.Caption, '.', '', [rfReplaceAll, rfIgnoreCase]);
  value := StringReplace(value, '$', '', [rfReplaceAll, rfIgnoreCase]);
  value := StringReplace(value, '(', '', [rfReplaceAll, rfIgnoreCase]);
  value := StringReplace(value, ')', '', [rfReplaceAll, rfIgnoreCase]);
  value := Format('%.*d',[12, StrToInt(value)]);

  stateTax := StringReplace(FrmPOSRest.DBTextStateTax.Caption, '.', '', [rfReplaceAll, rfIgnoreCase]);
  stateTax := StringReplace(stateTax, '$', '', [rfReplaceAll, rfIgnoreCase]);
  stateTax := StringReplace(stateTax, '(', '', [rfReplaceAll, rfIgnoreCase]);
  stateTax := StringReplace(stateTax, ')', '', [rfReplaceAll, rfIgnoreCase]);
  stateTax := Format('%.*d',[12, StrToInt(stateTax)]);

  munTax := StringReplace(FrmPOSRest.DBTextMunTax.Caption, '.', '', [rfReplaceAll, rfIgnoreCase]);
  munTax := StringReplace(munTax, '$', '', [rfReplaceAll, rfIgnoreCase]);
  munTax := StringReplace(munTax, '(', '', [rfReplaceAll, rfIgnoreCase]);
  munTax := StringReplace(munTax, ')', '', [rfReplaceAll, rfIgnoreCase]);
  munTax := Format('%.*d',[12, StrToInt(munTax)]);

  redTax := StringReplace(FrmPOSRest.DBTextRedTax.Caption, '.', '', [rfReplaceAll, rfIgnoreCase]);
  redTax := StringReplace(redTax, '$', '', [rfReplaceAll, rfIgnoreCase]);
  redTax := StringReplace(redTax, '(', '', [rfReplaceAll, rfIgnoreCase]);
  redTax := StringReplace(redTax, ')', '', [rfReplaceAll, rfIgnoreCase]);
  redTax := Format('%.*d',[12, StrToInt(redTax)]);

  refNo := Format('%.*d',[6, nextRefNo('REFERENCE_NO')]);

  isTransaction := True;
  s := sessionID + refNo + '000000' + Trim(value) + '000000000000' + manualTrans + '/////' + stateTax + '/' + munTax + '//' + redTax + '/000000000000/////';
  ipe.executeCommand('TRANS\', 'REFUND.', s, 20)
end;

procedure TIpe.refundMcs(total, upcs: String);
var
  s, munTax, redTax, cashback, adjData, specialAcct, foodTax: String;
  value, stateTax: String;
  cashBack1, adjValue, stateTax2, munTax2, redTax2, foodTax2: Double;
begin
  specialAcct := 'CS';
  stateTax := '000000000000';
  munTax := '000000000000';
  redTax := '000000000000';
  cashBack := '000000000000';
  adjData := '000000000000';

  CommonPOS.calcSplitPayment(total, stateTax, munTax, redTax, foodTax);
  //value := StringReplace(FrmPOSRest.DBText3.Caption, '.', '', [rfReplaceAll, rfIgnoreCase]);
  value := FormatFloat('0.00', abs(StrToFloat(total)));
  value := StringReplace(value, '.', '', [rfReplaceAll, rfIgnoreCase]);
  value := StringReplace(value, '$', '', [rfReplaceAll, rfIgnoreCase]);
  value := StringReplace(value, '(', '', [rfReplaceAll, rfIgnoreCase]);
  value := StringReplace(value, ')', '', [rfReplaceAll, rfIgnoreCase]);
  value := StringReplace(value, '-', '', [rfReplaceAll, rfIgnoreCase]);
  value := Format('%.*d',[12, StrToInt(value)]);

  cashBack := '000000000000';

  //stateTax := StringReplace(FrmPOSRest.DBText2.Caption, '.', '', [rfReplaceAll, rfIgnoreCase]);
  stateTax2 := StrToFloat(stateTax);
  stateTax := FormatFloat('0.00', abs(stateTax2));
  stateTax := StringReplace(stateTax, '.', '', [rfReplaceAll, rfIgnoreCase]);
  stateTax := StringReplace(stateTax, '$', '', [rfReplaceAll, rfIgnoreCase]);
  stateTax := StringReplace(stateTax, '(', '', [rfReplaceAll, rfIgnoreCase]);
  stateTax := StringReplace(stateTax, ')', '', [rfReplaceAll, rfIgnoreCase]);
  stateTax := Format('%.*d',[12, StrToInt(stateTax)]);

  //munTax := StringReplace(FrmPOSRest.DBText1.Caption, '.', '', [rfReplaceAll, rfIgnoreCase]);
  munTax2 := StrToFloat(munTax);
  munTax := FormatFloat('0.00', abs(munTax2));
  munTax := StringReplace(munTax, '.', '', [rfReplaceAll, rfIgnoreCase]);
  munTax := StringReplace(munTax, '$', '', [rfReplaceAll, rfIgnoreCase]);
  munTax := StringReplace(munTax, '(', '', [rfReplaceAll, rfIgnoreCase]);
  munTax := StringReplace(munTax, ')', '', [rfReplaceAll, rfIgnoreCase]);
  munTax := Format('%.*d',[12, StrToInt(munTax)]);

  //redTax := StringReplace(FrmPOSRest.DBText5.Caption, '.', '', [rfReplaceAll, rfIgnoreCase]);
  redTax2 := StrToFloat(redTax);
  redTax := FormatFloat('0.00', abs(redTax2));
  redTax := StringReplace(redTax, '.', '', [rfReplaceAll, rfIgnoreCase]);
  redTax := StringReplace(redTax, '$', '', [rfReplaceAll, rfIgnoreCase]);
  redTax := StringReplace(redTax, '(', '', [rfReplaceAll, rfIgnoreCase]);
  redTax := StringReplace(redTax, ')', '', [rfReplaceAll, rfIgnoreCase]);
  redTax := Format('%.*d',[12, StrToInt(redTax)]);

  adjData := '000000000000';

  processingCode := '000000';
  total := StringReplace(total, '.', '', [rfReplaceAll, rfIgnoreCase]);
  total := StringReplace(total, '$', '', [rfReplaceAll, rfIgnoreCase]);
  total := Format('%.*d',[12, StrToInt(total)]);
  isTransaction := True;
  s := sessionID + refNo + ''+ processingCode + '' + Trim(value) + ''+ cashBack + '' + specialAcct + '' + upcs + '0/////' + stateTax + '/' + munTax + '/' + adjData + '/' + redTax + '/000000000000/////';
  ipe.executeCommand('TRANS\', 'REFUND.', s, 15)
end;

procedure TIpe.saleMcs(total, upcs: String);
var
  s, munTax, redTax, cashback, adjData, specialAcct, foodTax: String;
  value, stateTax: String;
  cashBack1, adjValue, stateTax2, munTax2, redTax2, foodTax2: Double;
begin
  specialAcct := 'CS';
  stateTax := '000000000000';
  munTax := '000000000000';
  redTax := '000000000000';
  cashBack := '000000000000';
  adjData := '000000000000';

  CommonPOS.calcSplitPayment(total, stateTax, munTax, redTax, foodTax);
  //value := StringReplace(FrmPOSRest.DBText3.Caption, '.', '', [rfReplaceAll, rfIgnoreCase]);
  value := FormatFloat('0.00', abs(StrToFloat(total)));
  value := StringReplace(value, '.', '', [rfReplaceAll, rfIgnoreCase]);
  value := StringReplace(value, '$', '', [rfReplaceAll, rfIgnoreCase]);
  value := StringReplace(value, '(', '', [rfReplaceAll, rfIgnoreCase]);
  value := StringReplace(value, ')', '', [rfReplaceAll, rfIgnoreCase]);
  value := Format('%.*d',[12, StrToInt(value)]);

  cashBack := '000000000000';

  //stateTax := StringReplace(FrmPOSRest.DBText2.Caption, '.', '', [rfReplaceAll, rfIgnoreCase]);
  stateTax2 := StrToFloat(stateTax);
  stateTax := FormatFloat('0.00', abs(stateTax2));
  stateTax := StringReplace(stateTax, '.', '', [rfReplaceAll, rfIgnoreCase]);
  stateTax := StringReplace(stateTax, '$', '', [rfReplaceAll, rfIgnoreCase]);
  stateTax := Format('%.*d',[12, StrToInt(stateTax)]);

  //munTax := StringReplace(FrmPOSRest.DBText1.Caption, '.', '', [rfReplaceAll, rfIgnoreCase]);
  munTax2 := StrToFloat(munTax);
  munTax := FormatFloat('0.00', abs(munTax2));
  munTax := StringReplace(munTax, '.', '', [rfReplaceAll, rfIgnoreCase]);
  munTax := StringReplace(munTax, '$', '', [rfReplaceAll, rfIgnoreCase]);
  munTax := Format('%.*d',[12, StrToInt(munTax)]);

  //redTax := StringReplace(FrmPOSRest.DBText5.Caption, '.', '', [rfReplaceAll, rfIgnoreCase]);
  redTax2 := StrToFloat(redTax);
  redTax := FormatFloat('0.00', abs(redTax2));
  redTax := StringReplace(redTax, '.', '', [rfReplaceAll, rfIgnoreCase]);
  redTax := StringReplace(redTax, '$', '', [rfReplaceAll, rfIgnoreCase]);
  redTax := Format('%.*d',[12, StrToInt(redTax)]);

  adjData := '000000000000';

  processingCode := '000000';
  total := StringReplace(total, '.', '', [rfReplaceAll, rfIgnoreCase]);
  total := StringReplace(total, '$', '', [rfReplaceAll, rfIgnoreCase]);
  total := Format('%.*d',[12, StrToInt(total)]);
  isTransaction := True;
  //s := sessionID + refNo + ''+ processingCode + '' + Trim(total) + ''+ cashBack + '' + specialAcct + '0/////' + stateTax + '/' + munTax + '/' + adjData + '/' + redTax + '/000000000000/////';
  s := sessionID + refNo + ''+ processingCode + '' + Trim(value) + ''+ cashBack + '' + specialAcct + '' + upcs + '0/////' + stateTax + '/' + munTax + '/' + adjData + '/' + redTax + '/000000000000/////';
  ipe.executeCommand('TRANS\', 'SALE.', s, 20)
end;

procedure TIpe.saleTrans(specialAcct, processingCode, upcs, manualTrans: String);
var
  value, stateTax, munTax, redTax, foodTax, cashback, adjData, s: String;
  cashBack1, adjValue, stateTax2, munTax2, redTax2, foodTax2, total: Double;
  timer1: Integer;
begin
  if StrTofloat(FrmCheckOut.EditTIP.Text) > 0 then
  begin
    total := StrToFloat(FrmCheckout.Edit4.Text) - StrToFloat(FrmCheckout.EditTIP.Text);
  end
  else if (StrToFloat(FrmCheckout.Edit4.Text) > DMMidas.CDSTransHeadTOTAL.Value) and (CommonPOS.TransactionType <> 'CAS') then
    total := DMMidas.CDSTransHeadTOTAL.asFloat
  else
    total := StrToFloat(FrmCheckout.Edit4.Text);
  CommonPOS.calcSplitPayment(FloatToStr(total), stateTax, munTax, redTax, foodTax);
  //value := StringReplace(FrmPOSRest.DBText3.Caption, '.', '', [rfReplaceAll, rfIgnoreCase]);
  value := FormatFloat('0.00', abs(total));
  value := StringReplace(value, '.', '', [rfReplaceAll, rfIgnoreCase]);
  value := StringReplace(value, '$', '', [rfReplaceAll, rfIgnoreCase]);
  value := StringReplace(value, '(', '', [rfReplaceAll, rfIgnoreCase]);
  value := StringReplace(value, ')', '', [rfReplaceAll, rfIgnoreCase]);
  value := Format('%.*d',[12, StrToInt(value)]);

  with DMMidas do
  begin
    CashBack1 := (CDSTransHeadTOTAL.asFloat + (CDSTransHeadTotal_Tip.asFloat + StrToFloat(FrmCheckOut.EditTIP.Text))) - (CDSTransHeadPAYAMOUNT1.asFloat + (StrToFloat(FrmCheckout.Edit4.Text)));
    if CashBack1 < -0.01 then
    begin
      //CashBack := FloatToStr(abs((CDSTransHeadTOTAL.asFloat + (CDSTransHeadTotal_Tip.asFloat + StrToFloat(FrmCheckout.EditTIP.Text))) - (CDSTransHeadPAYAMOUNT1.asFloat + (StrToFloat(FrmCheckOut.Edit4.Text)))));
      //cashBack := FloatToStr(cashBack1 * cashBack1);
      cashBack := FormatFloat('0.00', abs(cashBack1));
      cashback := StringReplace(cashback, '.', '', [rfReplaceAll, rfIgnoreCase]);
      cashBack := Format('%.*d',[12, StrToInt(cashBack)]);
      if (cashback <> '000000000000') and (processingCode = '000000') then
      begin
        processingCode := '090000';
        value := StringReplace(FrmPOSRest.DBText3.Caption, '.', '', [rfReplaceAll, rfIgnoreCase]);
        value := StringReplace(value, '$', '', [rfReplaceAll, rfIgnoreCase]);
        value := StringReplace(value, '(', '', [rfReplaceAll, rfIgnoreCase]);
        value := StringReplace(value, ')', '', [rfReplaceAll, rfIgnoreCase]);
        value := Format('%.*d',[12, StrToInt(value)]);
      end;
    end
    else
      cashBack := '000000000000';
  end;

  //stateTax := StringReplace(FrmPOSRest.DBText2.Caption, '.', '', [rfReplaceAll, rfIgnoreCase]);
  stateTax2 := StrToFloat(stateTax);
  stateTax := FormatFloat('0.00', abs(stateTax2));
  stateTax := StringReplace(stateTax, '.', '', [rfReplaceAll, rfIgnoreCase]);
  stateTax := StringReplace(stateTax, '$', '', [rfReplaceAll, rfIgnoreCase]);
  stateTax := Format('%.*d',[12, StrToInt(stateTax)]);

  //munTax := StringReplace(FrmPOSRest.DBText1.Caption, '.', '', [rfReplaceAll, rfIgnoreCase]);
  munTax2 := StrToFloat(munTax);
  munTax := FormatFloat('0.00', abs(munTax2));
  munTax := StringReplace(munTax, '.', '', [rfReplaceAll, rfIgnoreCase]);
  munTax := StringReplace(munTax, '$', '', [rfReplaceAll, rfIgnoreCase]);
  munTax := Format('%.*d',[12, StrToInt(munTax)]);

  //redTax := StringReplace(FrmPOSRest.DBText5.Caption, '.', '', [rfReplaceAll, rfIgnoreCase]);
  redTax2 := StrToFloat(redTax);
  redTax := FormatFloat('0.00', abs(redTax2));
  redTax := StringReplace(redTax, '.', '', [rfReplaceAll, rfIgnoreCase]);
  redTax := StringReplace(redTax, '$', '', [rfReplaceAll, rfIgnoreCase]);
  redTax := Format('%.*d',[12, StrToInt(redTax)]);
  if (cashback = '000000000000') then
  begin
    adjValue := StrToFloat(Copy(FrmCheckOut.EditTotalwTip.Text, 2, Length(FrmCheckOut.EditTotalwTip.Text)));
    //adjValue := StrToFloat(FrmCheckOut.Edit4.Text) + StrToFloat(FrmCheckOut.EditTIP.Text);
    adjData := FormatFloat('0.00', abs(adjValue));
    //adjData := FloatToStr(adjValue);
    adjData := StringReplace(adjData,'.', '', [rfReplaceAll, rfIgnoreCase]);
    adjData := Format('%.*d',[12, StrToInt(adjData)]);
  end
  else
    adjData := '';

  refNo := Format('%.*d',[6, nextRefNo('REFERENCE_NO')]);
  if specialAcct = 'AM' then
    timer1 := 45
  else
    timer1 := 20;

  isTransaction := True;
  s := sessionID + refNo + ''+ processingCode + '' + Trim(value) + ''+ cashBack + '' + specialAcct + '' + upcs + '' + manualTrans + '/////' + stateTax + '/' + munTax + '/' + adjData + '/' + redTax + '/000000000000/////';
  //s := sessionID + refNo + '000000' + Trim(value) + '000000000000' + specialAcct + '0/////000000000009/000000000009//000000000009/000000000009/////';
  ipe.executeCommand('TRANS\', 'SALE.', s, timer1)
end;

procedure TIpe.settle;
var
  s: String;
begin
  refNo := Format('%.*d',[6, nextRefNo('REFERENCE_NO')]);
  isTransaction := False;
  s :=  sessionID + refNo + 'SN';
  executeCommand('TRANS\', 'SETTLE.', s, 15)
end;

procedure TIpe.showError(error: String);
begin
  if Assigned(FrmEvertec) then
  begin
    FrmEvertec.memo1.Lines.Clear;
    FrmEvertec.memo1.Font.Color := clRed;
    FrmEvertec.memo1.Font.Style := [fsBold];
    FrmEvertec.memo1.Lines.Add(error);
  end
  else
  begin
    CommonPOS.ShowMessageStr(error, 10, clRed);
  end;
end;

function TIpe.showStatus(s: String): String;
var
  loc, i: Integer;
  sl: TStringList;
begin
  sl := TStringList.Create;
  sl.StrictDelimiter := TRUE;
  sl.Delimiter := '/';
  sl.DelimitedText := Trim(s);
  i := sl.Count;
  for I := 0 to i - 1 do
  begin
    if i = 1 then result := sl.Strings[i];
  end;
  sl.Free;
end;
procedure TIpe.tipAdj(s: String);
var
  tipAmnt: String;
begin
  FrmInputNumber := TFrmInputNumber.Create(Application);
  With FrmInputNumber do
  begin
    Caption := 'Enter tip amount';
    ShowModal;
    if ModalResult = mrOk then
    begin
      tipAmnt := EditNumber.Text;
      CommonPOS.tip := StrToFloat(tipAmnt);
      //tipAmnt := Format('%.*d',[12, tipAmnt]);
      refNo := Format('%.*d',[6, nextRefNo('REFERENCE_NO')]);
      isTransaction := True;
      s := sessionId + refNo + voidStr(s, 'tip', StrToFloat(tipAmnt));
    end
    else
      tipAmnt := '';
    Free;
    FrmInputNumber := nil;
    if tipAmnt > '' then
    begin
      isTransaction := False;
      ipe.executeCommand('TRANS\', 'TIPADJUST.', s, 15)
    end;
  end;
end;

function TIpe.voidStr(str, option: String; amount: Double): String;
Var
  sl, slHeader: TStringList;
  i: integer;
  s,sHeader: String;
  loc: Integer;
  counter: integer;
  extended: String;
  SaleAmount, StateTax, CityTax, ReduceStateTax, BAReduceStateTax: String;
  amnt1: Double;
  saleAmnt: Integer;
begin
  amnt1 := 0;
  saleAmnt := 0;
  counter :=0;
  SL := TStringList.Create;
  sl.StrictDelimiter := TRUE;
  sl.Delimiter := chr(28);// chr(28);
  sl.DelimitedText := Trim(str);
  i := sl.Count;
  for I := 0 to i - 1 do
  begin
    counter := counter + 1;
    if Counter = 2 then
    begin
      extended := DefineJournal(counter, 'extended', sl.Strings[I]);
      extended := extended+'/REDATH/A//';
    end;
    if Counter = 15 then
    begin
      StateTax := DefineJournal(counter, 'extended', sl.Strings[I]);
    end;
    if Counter = 16 then
    begin
      CityTax := DefineJournal(counter, 'extended', sl.Strings[I]);
    end;
    if Counter = 14 then // Sale amount //
    begin
      SaleAmount := DefineJournal(counter, 'extended', sl.Strings[I]);
    end;
    if Counter = 37 then // reduced sales tax //
    begin
      ReduceStateTax := DefineJournal(counter, 'extended', sl.Strings[I]);
    end;
    if Counter = 38 then
    begin
      BAReduceStateTax := DefineJournal(counter, 'extended', sl.Strings[I]);
    end;
  end;
  if option = 'void' then
  begin
    extended := extended + StateTax + CityTax + SaleAmount + ReduceStateTax + BAReduceStateTax+'/////'+chr(28)+' ';
  end;
  if option = 'tip' then
  begin
    SaleAmount := StringReplace(SaleAmount,'/', '', [rfReplaceAll, rfIgnoreCase]);
    SaleAmount := FloatToStr(amount + (StrToInt(SaleAmount) / 100));
    SaleAmount := formatAmounts(SaleAmount);
    SaleAmount := SaleAmount + '/';
    extended := extended + StateTax + CityTax + SaleAmount + ReduceStateTax + BAReduceStateTax + '/////'+chr(28)+' ';
  end;

  counter :=0;
  SL := TStringList.Create;
  sl.StrictDelimiter := TRUE;
  sl.Delimiter := chr(28);// chr(28);
  sl.DelimitedText := Trim(str);
  i := sl.Count;
  for I := 0 to i - 1 do
  begin
    counter := counter + 1;
    s := s + DefineJournal(counter, 'void', sl.Strings[I]);
  end;
  sl.Free;
  result := chr(28) + s + extended;
end;

function TIpe.formatAmounts(Token: String): String;
Var
  amount: double;
begin
  if Trim(Token) = '' then
  result := '000000000000'
  else
  begin
    amount := StrToFloat(Token);
    amount := (amount *100);
    result := result + FormatFloat('000000000000', amount);
  end;
end;

function TIpe.DefineJournal(counter: Integer; Option, Token: String): String;
Var
  loc, loc2, len: integer;
  s: String;
  amount: double;
  amount2: String;
begin
  result := '';
  case counter of
  0: begin
       //result := 'Authorization Code: ' + Token);
     end;
  1: begin
       if option = 'view' then result := 'ID Database Index: ' + Token;
     end;
  2: begin
       if option = 'extended' then result := Token + '/';
       if option = 'view' then result := 'Card Type: ' + Token;
     end;
  3: begin
       if option = 'view' then result := 'Transaction Type: ' + Token;
     end;
  4: begin
       if option = 'view' then result := 'Payment Type: ' + Token;
     end;
  5: begin
       if option = 'view' then result := 'Host Type: ' + Token;
     end;
  6: begin
       if option = 'view' then result := 'Host Version: ' + Token;
     end;
  7: begin
       if option = 'view' then result := 'IPE Terminal ID: ' + Token;
     end;
  8: begin
       if option = 'view' then result := 'Station Number: ' + Token;
     end;
  9: begin
       if option = 'view' then result := 'Cashier ID: ' + Token;
     end;
  10: begin
        if option = 'view' then result := 'Reference Number: ' + Token;
      end;
  11: begin
        if option = 'void' then result := result + chr(28);
        if option = 'view' then result := 'Response Code string: ' + responseCode(Token);
      end;
  12: begin
        if option = 'void' then result := result + Token + chr(28);
        if option = 'view' then result := 'Authorization Code: ' + Token;
      end;
  13: begin
        if option = 'void' then result := result + '220000' + chr(28);
        if option = 'view' then result := 'Processing Code: ' + Token;
      end;
  14: begin
        if option = 'extended' then result := formatAmounts(Token)  + '/'
        else
         if option = 'void' then result := formatAmounts(Token) + chr(28)
        else
         if option = 'view' then result := 'Transaction Amount: ' + Token;
      end;
  15: begin
        if option = 'extended' then result := formatAmounts(Token)  + '/';
        if option = 'view' then result := 'State Tax: ' + Token;
      end;
  16: begin
        if option = 'extended' then result := formatAmounts(Token)  + '/';
        if option = 'view' then result := 'City Tax: ' + Token;
      end;
  17: begin
        if option = 'extended' then result := formatAmounts(Token)  + '/'
        else
        if option = 'void' then result :=  formatAmounts(Token) + chr(28)
        else
          if option = 'view' then result := 'Additional Amount: ' + Token;
      end;
  18: begin
        //if option = 'void' then result :=  formatAmounts(Token) + chr(28)
        //else
        if option = 'view' then result := 'Tip Amount: ' + Token;
      end;
  19: begin
        if option = 'void' then result := result + Token + chr(28);
        if option = 'view' then result := 'PAN Card Number/FTD: ' + Token;
      end;
  20: begin
        if option = 'void' then result := Token + chr(28);
        if option = 'view' then result := 'Invoice Number: ' + Token;
      end;
  21: begin
        if option = 'void' then result := result  + chr(28);
        if option = 'view' then result := 'Transaction Time: ' + Token;
      end;
  22: begin
        if option = 'void' then result := result + chr(28);
        if option = 'view' then result := 'Transaction Date: ' + Token;
      end;
  23: begin
        if option = 'void' then result := result + chr(28);
        if option = 'view' then result := 'EBT Food Stamp Balance / GIFT CARD Balance: ' + Token;
      end;
  24: begin
        if option = 'void' then result := result + chr(28);
        if option = 'view' then result := 'EBT Cash Balance: ' + Token;
      end;
  25: begin
        if option = 'void' then result := result + Token + chr(28);
        if option = 'view' then
        result := 'Special Account: ' + Token;
      end;
  26: begin
        if option = 'void' then result := result + chr(28);
        if option = 'view' then
        result := 'Host Text1: ' + Token;
      end;
  27: begin
        if option = 'void' then result := result + chr(28);
        if option = 'view' then
        result := 'Host Text2: ' + Token;
      end;
  28: begin
        if option = 'void' then result := result + Token + chr(28);
        if option = 'view' then
          result := 'Trans ID (SDT): ' + Token;
      end;
  29: begin
        if option = 'void' then result := result + chr(28);
        if option = 'view' then
          result := 'Batch Number: ' + Token;
      end;
  30: begin
        if option = 'void' then result := result + chr(28);
        if option = 'view' then
          result := 'Trace Number: ' + Token;
      end;
  31: begin
        if option = 'void' then result := result + chr(28);
        if option = 'view' then
        result := 'Reserved Future: ' + Token;
      end;
  32: begin
        if option = 'void' then result := result + Token + chr(28);
        if option = 'view' then
          result := 'Manual Entry Indicator: ' + Token;
      end;
  33: begin
        if option = 'void' then result := result + chr(28);
        if option = 'view' then
          result := 'POS Retailer: ' + Token;
      end;
  34: begin
        //if option = 'view' then DefineEFMF(Token, Option);
      end;
  35: begin
        if option = 'view' then result := 'Service Account: ' + Token;
      end;
  36: begin
        if option = 'view' then result := 'Capture Date: ' + Token;
      end;
  37: begin
        if option = 'extended' then result := formatAmounts(Token)  + '/';
        if option = 'view' then
          result := 'Reduced State Tax: ' + Token;
      end;
  38: begin
        if option = 'extended' then result := formatAmounts(Token)  + '/';
        if option = 'view' then
          result := 'Base amount for Reduced State Tax: ' + Token;
      end;
  39: begin
        if option = 'view' then result := 'Reserved Future: ' + Token;
      end;
  40: begin
        if option = 'view' then result := 'Ivu Lotto control Data: ' + Token;
      end;
  41: begin
        if option = 'view' then result := 'Transaction Host Id: ' + Token;
      end;
  42: begin
        if option = 'view' then result := 'EMV Transaction: ' + Token;
      end;
  43: begin
        if option = 'view' then result := 'Reserved Future: ' + Token;
      end;
  end;
end;

function Tipe.responseCode(Token: String): String;
Var
  sl3: TStringList;
  i: integer;
  s: String;
  loc: Integer;
  counter: integer;
begin
  counter :=0;
  sl3 := TStringList.Create;
  sl3.StrictDelimiter := TRUE;
  sl3.Delimiter := '/';// chr(28);
  sl3.DelimitedText := Trim(token);
  i := sl3.Count;
  for I := 0 to sl3.Count-1 do
  begin
    case counter of
    1: begin
         if sl3.Strings[I] = '00' then result := 'APPROVED, ECR should generate receipt.';
         if sl3.Strings[I] = 'ZW' then result := 'Denied, ECR should generate receipt.';
         if sl3.Strings[I] = 'ZY' then result := 'Denied, Other exceptions like time out errors in the card read, etc. ECR should not generate receipt.';
         if sl3.Strings[I] = 'ST' then result := 'This is a status message. ECR will display the response message on screen.';
       end;
    end;
    counter := counter +1;
  end;

end;

procedure TIpe.getValues(token: String);
Var
  sl: TStringList;
  i: integer;
  s: String;
  loc: Integer;
  counter: integer;
begin
  counter :=0;
  SL := TStringList.Create;
  sl.StrictDelimiter := TRUE;
  sl.Delimiter := chr(28);// chr(28);
  sl.DelimitedText := Trim(token);
  i := sl.Count;
  for I := 0 to i - 1 do
  begin
   { counter := counter + 1;
    Memo2.Lines.Add(sl.Strings[I]);
    if Trim(sl.Strings[I]) > '' then
      DefineResponse(counter, sl.Strings[I]); }
  end;
  sl.Free;
end;

Initialization
  ipe := TIpe.Create;
end.
