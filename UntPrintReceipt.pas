unit UntPrintReceipt;

interface

uses Soap.XSBuiltIns, UntIVULoto, System.Classes, frxClass, Vcl.ComCtrls, System.SysUtils,
     Vcl.Forms, Vcl.Printers;

Type
 TPrintReceipt = Class(TObject)
  public
  WorkingDirectory: String;
  procedure PrintReceipt(THead, NoRecibos: Integer; OpenDrwr: Boolean; TransType, PrintType: String; IVULoto, RePrint, Factura, Kitchen, FinalReceipt: Boolean);
  private
    function GetTotal_lines(TransType: String; FinalReceipt: Boolean;
      DeudaLocal, DeudaLayaway: Double): Boolean;
    function StartTab(InsertHeader: Boolean; ID: Integer; Balance: Double;
      transType: String): Boolean;
    procedure OpenDrawer;
    procedure SelectPrinter(PrnText: String);
    procedure GetIVULoto(TransType: String);
    function CenterString(InStr: String; StrLen: Integer): String;
    function LeftJString(InStr: String; StrLen: Integer): String;
  public
  end;

Var
  PrintReceipt : TPrintReceipt;

Implementation

uses UntDMMidas, UntDelInfo, UntCommonPOS, untReceiptView;


{ TPrintReceipt }

procedure TPrintReceipt.PrintReceipt(THead , NoRecibos: Integer; OpenDrwr: Boolean; TransType, PrintType: String; IVULoto, RePrint, Factura, Kitchen, FinalReceipt: Boolean);
Var
  loops, Cnt: Integer;
  Cred, LWay: Boolean;
  DeudaLocal, DeudaLayaway: Double;
  Taxable: String;

  cm: txPosRequest;
  Response: txPosResponse;
  //Response: ivuLotoData;
  D: TXSDateTime;
  MTax, STax, TotalV, SubTotalV: TXSDecimal;
  TenderTypeS: tenderType;
  MyTxServer: TxServer;
  SubTotalF: Double;
  IVULotoDate: String;
  Counter: Integer;
  loop: Boolean;
  lStringList: TStringList;
  I,J, NoOf: Integer;
  Receipt: String;
  Page1: TfrxReportPage;
  Note: String;
  customerId: Integer;
  customerStr: String;
  SendByeMail: boolean;
  //aStream : tMemoryStream;
begin

  if PrintType = '1' then
  begin
    SendByeMail := true;
  end
  else
  begin
    SendByeMail := false;
  end;
  //cotizacion := False;
  if (CommonPos.Restaurant = True) and (Kitchen = True) then
  //if (CommonPos.Restaurant = True) or (PrintType = '1') then //0 = print, 1 = email, 2 = text message
  begin
    {if Kitchen = True then
    begin
      FrmKitchenExtraInfo := TFrmKitchenExtraInfo.Create(nil);
      With FrmKitchenExtraInfo do
      begin
        ShowModal;
        Note := Trim(FrmKitchenExtraInfo.Memo1.Text);
        FrmKitchenExtraInfo := Nil;
        FrmKitchenExtraInfo.Free;
      end;
      CommonPOS.PrintKitchenReceipt(THead, Note);
    end;

    if PrintType = '1' then
    begin
      //Send_email_receipt(THead, false);
    end;
    }
  end
  else
  begin
    if TransType = 'DLVR' then
    begin
      {
      FrmDelInfo := TFrmDelInfo.Create(nil);
      with FrmDelInfo do
      begin
        ShowModal;
        if ModalResult = mrok then
        begin
          StartTab(True, CommonPOS.Header, DMMidas.CDSTransHeadTOTAL.asFloat, 'D');
          With DMMidas.CDSTrHeadAdHoc do
          begin
            SQL.Clear;
            SQL.Add('Update TransactionHeader_TEMP Set DeliveryName = ''' + FrmDelInfo.EditDelName.Text
                           + ''', DeliveryAddress1 = ''' + FrmDelInfo.EditDelAddress1.Text
                           + ''', DeliveryAddress2 = ''' + FrmDelInfo.EditDelAddress2.Text
                           + ''', DeliveryPhone = ''' + FrmDelInfo.EditDelPhone.Text
                           + ''', DeliveredBy = ''' + FrmDelInfo.EditDelBy.Text
                           + ''', DELIVERY_CITY = ''' + FrmDelInfo.EditDelCity.Text
                           + ''', DELIVERY_STATE = ''' + FrmDelInfo.EditDelState.Text
                           + ''', DELIVERY_ZIPCODE = ''' + FrmDelInfo.EditDelZipCode.Text
                           + ''' Where TransactionNumber = '
                           + IntToStr(THead));
            ExecSQL(True);
          end;
        end;
      FrmDelInfo := Nil;
      FrmDelInfo.Free;
      exit
      end;
      }
    end;

    if TransType = 'INVOICE' then
    begin
    //  cotizacion := True;
     // StartTab(True, CommonPOS.Header, DMMidas.CDSTransHeadTOTAL.asFloat, 'I');
      cotizacion := True;
      customerId := DMMidas.cdsOpenTabsCUSTOMER_ID.Value;
      DMMidas.cdsOpenTabs.Close;
      DMMidas.cdsOpenTabs.CommandText := 'Select * from OPEN_TABS where TRANSACTIONNUMBER = ' + IntToStr(THead);
      DMMidas.cdsOpenTabs.Open;
      if DMMidas.cdsOpenTabs.RecordCount = 0 then
      begin
        StartTab(True, CommonPOS.Header, DMMidas.CDSTransHeadTOTAL.asFloat, 'I');
      end;
    end;

    if CommonPos.Customer > 0 then
    begin
      Queries.OpenPatient('','','',CommonPOS.Customer);
    end;
    if Factura = True then
    begin
        FrmReceiptView := TFrmReceiptView.Create(Application);
        With FrmReceiptView do
        begin
          RichEdit1.Clear;

          With DMMidas.CDSHead do
          Begin
            Active := False;
            if RePrint = True then
              CommandText := 'select * from transactionheader where transactionnumber = ' + IntToStr(THead)
            else
              CommandText := 'select * from transactionheader_temp where transactionnumber = ' + IntToStr(THead);
            Active := True;
            If (FieldByName('PaymentType1').asString = 'CRED') OR (FieldByName('PaymentType2').asString = 'CRED') then
              Cred := True;
            If (FieldByName('PaymentType1').asString = 'LWAY') OR (FieldByName('PaymentType2').asString = 'LWAY') then
              LWay := True;
            if DMMidas.CDSSetup.Active = False then DMMidas.CDSSetup.Active := true;
          end;
          With DMMidas.CDSDetail do
          begin
            Active := False;
            if RePrint = True then
              CommandText := 'select * from transactiondetail where transactionnumber = ' + IntToStr(THead)
            else
              CommandText := 'select * from transactiondetail_temp where transactionnumber = ' + IntToStr(THead);
            Active := True;
          end;
          GetTotal_lines(TransType, FinalReceipt, DeudaLocal, DeudaLayaway);
          if (CommonPos.Customer = 0) and (DMMidas.CDSHeadCUSTOMERID.Value > 0) then
          begin
            CommonPos.Customer := DMMidas.CDSHeadCUSTOMERID.Value;
          end;
          GetIVULoto(TransType);
          PrintLargeReceipt(THead, TRUE, true, SendByeMail, 'ivuloto');
          DMMidas.CDSTransHead.Active := False;
          DMMidas.CDSTransShow.Active := False;
          DMMidas.cdsOpenTabs.Close;
          FrmReceiptView := nil;
          FrmReceiptView.Free;
        end;
    end
    else
    begin
      loops := 0;
      While loops <> NoRecibos do
      begin
        loops := loops + 1;
        if FinalReceipt = True then
        begin
          OpenDrawer;
        end;
        if (CommonPos.Customer > 0) or (CommonPOS.Trans_AbonoCredito > 0) then
        begin
          DeudaLocal := DMMidas.CDSClientesDEUDA.asFloat; //Queries.DeudaCliente(CommonPos.Customer);
          DeudaLayaway := DMMidas.CDSClientesLAWAY.asFloat;//Queries.DeudaClienteLayaway(CommonPos.Customer);
        end;
        Cred := False;
        LWay := False;
        if (CommonPOS.Restaurant = True) and (FinalReceipt = True) then
        begin
          With DMMidas do
          begin
            cdsOpenTabs.Close;
            cdsOpenTabs.CommandText := 'Select * from OPEN_TABS where TRANSACTIONNUMBER = ' + IntToStr(THead);
            cdsOpenTabs.Open;
          end;
        end;
        With DMMidas.CDSHead do
        Begin
          Active := False;
          if RePrint = True then
            CommandText := 'select * from transactionheader where transactionnumber = ' + IntToStr(THead)
          else
            CommandText := 'select * from transactionheader_temp where transactionnumber = ' + IntToStr(THead);
          Active := True;

          If (FieldByName('PaymentType1').asString = 'CRED') OR (FieldByName('PaymentType2').asString = 'CRED') then
            Cred := True;
          If (FieldByName('PaymentType1').asString = 'LWAY') OR (FieldByName('PaymentType2').asString = 'LWAY') then
            LWay := True;
          //================================IVULOTO=====================================
          Try
            if (loops = 1) and (FinalReceipt = True) and (CommonPOS.IVULOTO_ACTIVO) then
            begin
              GetIVULoto(TransType);
            end;
          except
            //
          end;
          //===============================================================================

          If CommonPOS.ReceiptPrinter <> '' then
            SelectPrinter(CommonPOS.ReceiptPrinter)
          else
            SelectPrinter('EPSON');

          FrmReceiptView := TFrmReceiptView.Create(Application);
          With FrmReceiptView do        //FrmMain
          begin
            With RichEdit1 do
            begin
              Font.Name := 'Lucida Console';
              //Font.Name := 'Arial';
              Font.Size := FrmMain.PrinterFontSize; //6;
              Font.Style := [];
              Lines.Clear;
              {If (OpenDrwr = True) and (DMMidas.CDSSetupPOS_APP_OPEN_DRAWER.Value = True) then
              begin
                LblDummy.Font.Name := 'Control';
                SelAttributes.Assign(LblDummy.Font);
                if Copy(CommonPOS.ReceiptPrinter, 1, 5) <> 'RP300' Then Lines.Add('A');
              end;}
              Lines.Add('------------------------------------');
              LblDummy.Font.Name := 'Lucida Console';
              LblDummy.Font.Size := FrmMain.PrinterFontSize + 2;//10;
              LblDummy.Font.Style := [fsBold];
              SelAttributes.Assign(LblDummy.Font);
              Lines.Add(CenterString(Trim(DMMidas.CDSSetupSTORENAME.Value),30));
              LblDummy.Font.Size := FrmMain.PrinterFontSize;//6;
              LblDummy.Font.Style := [fsBold];
              SelAttributes.Assign(LblDummy.Font);
              Lines.Add(CenterString(Trim(DMMidas.CDSSetupSTOREADDRESS.Value),33));
              LblDummy.Font.Size := FrmMain.PrinterFontSize;//6;
              LblDummy.Font.Style := [fsBold];
              SelAttributes.Assign(LblDummy.Font);
              Lines.Add(CenterString(DMMidas.CDSSetupSTORETELEPHONE.Value,33));
              Lines.Add('------------------------------------');
              //Lines.Add('Terminal ID: ' + CommonPOS.IVULOTO_TERMINALID);
              Lines.Add(Format('%0s %24s%',['Register: '+ CommonPOS.RegisterNo, 'ID: ' +IntToStr(THead)]));
              Lines.Add(Format('%22s%',[DateTimetoStr(Now)]));
              if CommonPOS.Restaurant = True then
              begin
                Lines.Add('# OF ITEMS: ' + DMMidas.CDSHead.FieldByName('NumberItems').asString);
                if DMMidas.cdsOpenTabs.RecordCount > 0 then
                begin
                  Lines.Add('Server: ' + Trim(DMMidas.cdsOpenTabsSERVER_DEFINE.Value));
                  LblDummy.Font.Style := [fsBold];
                  SelAttributes.Assign(LblDummy.Font);
                  Lines.Add('Customer: ' + Trim(DMMidas.cdsOpenTabsCUSTOMER.Value));
                end
                else
                begin
                  Lines.Add('Customer: ' + Trim(DMMidas.CDSHeadCUSTOMER.Value));
                end;
              end
              else
              begin
                Lines.Add('User: ' + CommonPOS.User + '  # OF ITEMS: ' + DMMidas.CDSHead.FieldByName('NumberItems').asString);
              end;
              Lines.Add('------------------------------------');
              With DMMidas.CDSDetail do
              Begin
                Active := False;
                if RePrint = True then
                begin
                  CommandText := 'Select [IDNUMBER] ,[TRANSACTIONNUMBER],[UPC] ,[TOTAL] ,[VOIDED] ' +
                  ',[SUBDETAIL] ,[PRODDESCRIPTION] ,[PRODDEPARTMENT],[REGTOTAL] ,[FOOD] ,[PRICE],[REGPRICE] '+
                  ',[MODIFIED] ,[DISCOUNT],[COSTO],[FECHAVENTA],[SUPLIDOR],[TOTAL_VALUE],[AWP],[ID],[TAX]'+
                  ',[PRODUCTNO],[TAX_ESTATAL],[TAX_MUNICIPAL],[QTY],[OPENED],[GROUP_PROD],[REGISTER],[SUPERVISOR]'+
                  ',[PATROCINIO],[SUBDEPARTAMENTO], [MAIN_COURSE], [MAIN_COURSE_ID], [TERMINO], [BARCODEALTERNO1] FROM TransactionDetail WHERE TransactionNumber = ' + IntToStr(THead) + ' Order By IDNumber';
                end
                else
                begin
                  CommandText := 'Select [IDNUMBER] ,[TRANSACTIONNUMBER],[UPC] ,[TOTAL] ,[VOIDED] ' +
                  ',[SUBDETAIL] ,[PRODDESCRIPTION] ,[PRODDEPARTMENT],[REGTOTAL] ,[FOOD] ,[PRICE],[REGPRICE] '+
                  ',[MODIFIED] ,[DISCOUNT],[COSTO],[FECHAVENTA],[SUPLIDOR],[TOTAL_VALUE],[AWP],[ID],[TAX]'+
                  ',[PRODUCTNO],[TAX_ESTATAL],[TAX_MUNICIPAL],[QTY],[OPENED],[GROUP_PROD],[REGISTER],[SUPERVISOR]'+
                  ',[PATROCINIO],[SUBDEPARTAMENTO], [MAIN_COURSE], [MAIN_COURSE_ID], [TERMINO], [BARCODEALTERNO1] FROM TransactionDetail_TEMP WHERE TransactionNumber = ' + IntToStr(THead) + ' Order By IDNumber';
                end;
                Active := True;
                First;
                While Not EOF do
                Begin
                  if (FieldByName('Tax_Estatal').asString = 'T') or (FieldByName('Tax_Municipal').asString = 'T') then Taxable := 'T' else Taxable := 'F';
                  Lines.Add(Format('%26s %8s%1s',[
                  Copy(LeftJString(FieldByName('ProdDescription').asString + ' '
                  + FieldByName('SubDetail').asString,26),1,26),
                  Format('%m',[FieldByName('Total').asFloat]),
                  Taxable]));
                  IF (FieldByName('Qty').asInteger > 1) Or (FieldByName('Qty').asInteger < -1) then
                  begin
                    Lines.Add('          ' + FieldByName('Qty').asString + ' @ ' +
                            Format('%m',[FieldByName('Price').asFloat]));
                  end;
                  Next;
                end;
                Close;
              end;

              With DMMidas.CDSHead do
              Begin
                LblDummy.Font.Size := FrmMain.PrinterFontSize;//6;
                GetTotal_lines(TransType, FinalReceipt, DeudaLocal, DeudaLayaway);
                if CommonPOS.MemoStr > '' then
                begin
                   Lines.Add(CommonPOS.MemoStr);
                end;
                CommonPOS.MemoStr := '';
                //--------------------------- Suggested Tip -----------------------
                if (CommonPOS.Restaurant = True) and (FinalReceipt = False) then
                begin
                  Lines.Add('');
                  Lines.Add(CenterString('Suggested Tip: ' + Format('%f', [DMMidas.CDSSetupTIP_PERCENTAGE1.asFloat]) + '%  - ' + Format('%m', [DMMidas.CDSHead.FieldByName('TOTAL').asFloat * DMMidas.CDSSetupTIP_PERCENTAGE1.asFloat]),35));
                  Lines.Add(CenterString('Suggested Tip: ' + Format('%f', [DMMidas.CDSSetupTIP_PERCENTAGE2.asFloat]) + '%  - ' + Format('%m', [DMMidas.CDSHead.FieldByName('TOTAL').asFloat * DMMidas.CDSSetupTIP_PERCENTAGE2.asFloat]), 35));
                  Lines.Add(CenterString('Suggested Tip: ' + Format('%f', [DMMidas.CDSSetupTIP_PERCENTAGE3.asFloat]) + '%  - ' + Format('%m', [DMMidas.CDSHead.FieldByName('TOTAL').asFloat * DMMidas.CDSSetupTIP_PERCENTAGE3.asFloat]), 35));
                end;
                Active := False;
              end;
              //----------------------------------------------------------------
              //============================IVULoto===========================
              if (IVULOTO_ACTIVO = True) and (FinalReceipt = True) then
              begin
                Try
                  begin
                    Lines.Add('');
                    Lines.Add('---------------------------');
                    Lines.Add('------------------------------------');
                    Lines.Add(' CONTROL    : ' + CommonPOS.IVULotoControlNumber);
                    Lines.Add(' ST');
                    Lines.Add('----Processed by Softek---');
                    Lines.Add('');
                    Lines.Add('');
                    Lines.Add('');
                  end;
                except
                end;
              end;
              //============================Triple S OTC ===================
              if CommonPOS.TripleS_previousBalance > 0 then
              begin
                    Lines.Add('');
                    Lines.Add('------------------------------------');
                    Lines.Add(' TRIPLE-S ADVANTAGE OTC BALANCE: ');
                    Lines.Add('------------------------------------');
                    Lines.Add(' PREVIOUS BALANCE: ' +  Format('%m', [CommonPOS.TripleS_previousBalance]));
                    Lines.Add(' APPROVED AMOUNT: ' + Format('%m', [CommonPOS.TripleS_ApprovedAmount]));
                    Lines.Add(' NEW BALANCE: '+ Format('%m', [CommonPOS.TripleS_finalBalance]));// Format('%m', [CommonPOS.TripleS_previousBalance - CommonPOS.TripleS_ApprovedAmount]));
                    Lines.Add('------------------------------------');
                    Lines.Add('');
                    Lines.Add('');
              end;
              //----------------------------------------------------------------
              Lines.Add('');
              Lines.Add(CenterString(DMMidas.CDSSetupRECEIPT_MESSAGE.Value,36));

              if Assigned(frmOpenTabs) then
              begin
                FrmReceiptView.Close;
              end
              else
              begin
                if TransType = 'DLVR' then
                begin
                  Lines.Add(Note);
                end;
                if PrintType = '1' then //1 := email
                begin
                  Send_email_receipt(THead, false);
                  //SendEmailPharmatec(CommonPos.email, IntToStr(THead) + '.pdf', RichEdit1, true);
                end
                else
                begin
                  if CommonPOS.PrintToScreen = False then
                  begin
                    Print('');
                  end
                  else
                  begin
                    FrmReceiptView.ShowModal;
                  end;
                end;
              end;
            end;
            FrmReceiptView := Nil;
            FrmReceiptView.Free;
          end;
        end;
      end;
    end;
    if IVULOTO_ACTIVO = True then
    try
      //cm.Free;
    except
    end;
  end;

end;

function TPrintReceipt.GetTotal_lines(TransType: String; FinalReceipt: Boolean; DeudaLocal, DeudaLayaway: Double): Boolean;
begin
  With DMMidas.CDSHead do
  Begin
    With FrmReceiptView.RichEdit1 do
    begin
      Lines.Add('------------------------------------');
      //LblDummy.Font.Size := FrmMain.PrinterFontSize;//6;
      Lines.Add(Format('%24s %10s',['SUB TOTAL:', Format('%m',[FieldByName('SUBTOTAL').asFloat])]));
      Lines.Add('------------------------------------');
      Lines.Add(Format('%24s %10s',['TAX ESTATAL:', Format('%m',[FieldByName('TAX_ESTATAL').asFloat])]));
      if FieldByName('TAX_PROCESSED_FOOD').asFloat > 0 then
        Lines.Add(Format('%24s %10s',['TAX PROC. FOOD:', Format('%m',[FieldByName('TAX_PROCESSED_FOOD').asFloat])]));
      Lines.Add(Format('%24s %10s',['TAX MUNICIPAL:', Format('%m',[FieldByName('TAX').asFloat])]));

      if CommonPOS.Restaurant = False then
      begin
        if FieldByName('TAX_SERVICIO').asFloat > 0 then
        Lines.Add(Format('%24s %10s',['TAX SERVICIO:', Format('%m',[FieldByName('TAX_SERVICIO').asFloat])]));
      end;
      Lines.Add('------------------------------------');
      if FinalReceipt = False then
        Lines.Add(Format('%24s %10s',['CHECK:', Format('%m',[FieldByName('TOTAL').asFloat])]));

      if (CommonPOS.Restaurant = True) and (FinalReceipt = False) then
      begin
        Lines.Add('');
        Lines.Add(Format('%24s %8s',['GRATUITY:', '___________']));
        Lines.Add('');
        Lines.Add(Format('%24s %8s',['TOTAL:', '___________']));
      end
      else
      begin
        if CommonPOS.Restaurant = True then
          Lines.Add(Format('%24s %10s',['GRATUITY:', Format('%m',[FieldByName('TOTAL_TIP').asFloat])]));
      end;
      if FinalReceipt = True then
        Lines.Add(Format('%24s %10s',['TOTAL:', Format('%m',[FieldByName('TOTAL').asFloat + FieldByName('TOTAL_TIP').asFloat])]));

      If FieldByName('PayAmount1').asFloat > 0 then
      begin
        Lines.Add(Format('%24s %10s',
                [UpperCase(Copy(FieldByName('PaymentType1').asString,1,4)+':'),
                Format('%m',[FieldByName('PayAmount1').asFloat])]));
        If FieldByName('PayAmount2').asFloat > 0 then
        begin
          Lines.Add(Format('%24s %10s',
                  [UpperCase(Copy(FieldByName('PaymentType2').asString,1,4)+':'),
                  Format('%m',[FieldByName('PayAmount2').asFloat])]));
        end;
      end;

      IF FinalReceipt = True then Lines.Add(Format('%24s %10s',['CHANGE:', Format('%m',[FieldByName('Change').asFloat])]));

      If (FieldByName('RegTotal').asFloat - FieldByName('Total').asFloat > 0) AND
         (FieldByName('PaymentType1').asString <> 'POUT') then
      begin
        Lines.Add(Format('%24s %10s',['SU AHORRO:',Format('%m',[FieldByName('RegTotal').asFloat - FieldByName('Total').asFloat])]));
      end;
      If (Customer <> 0) then
      begin

      end;
      if (TransType = 'CRED') or (CommonPOS.Trans_AbonoCredito > 0) or
      (DeudaLocal > 0) then
      begin
        Lines.Add('');
        Lines.Add(DMMidas.CDSClientesNombreCompleto2.Value);
        If FrmMain.PrintBalance then
        begin
          Lines.Add('BALANCE CREDITO: ' + Format('%m', [DeudaLocal]));//Format('%m', [DMMidas.CDSClientesDEUDA.asFloat + FieldByName('Total').asFloat]));
        end;
        Lines.Add('');
        Lines.Add('Firma: __________________________ ');
        Lines.Add('');
      end;
      if (TransType = 'LWAY') or (AbonoLayawayCR = True) then
      begin
        Lines.Add('');
        Lines.Add(DMMidas.CDSClientesNombreCompleto2.Value);
        If FrmMain.PrintBalance then
          Lines.Add('BALANCE LAY AWAY: ' + Format('%m', [DeudaLayaway]));
        Lines.Add('');
        Lines.Add('Firma: __________________________ ');
        Lines.Add('');
      end;

      if (PatrocinioActivo = True) or (RedimirPatrocinioActivo = True) then
      begin
        Lines.Add('');
        Lines.Add(DMMidas.CDSClientesNombreCompleto2.Value);
        Lines.Add('Patrocinio: ' + Format('%m', [DMMidas.CDSClientesPATROCINIO.asFloat]));
        Lines.Add('');
        Lines.Add('Firma: __________________________ ');
        Lines.Add('');
      end;


      if CommonPOS.MemoStr > '' then
      begin
         Lines.Add(CommonPOS.MemoStr);
      end;
      CommonPOS.MemoStr := '';
      //--------------------------- Suggested Tip -----------------------
      if (CommonPOS.Restaurant = True) and (FinalReceipt = False) then
      begin
        Lines.Add('');
        Lines.Add(CenterString('Suggested Tip: ' + Format('%f', [DMMidas.CDSSetupTIP_PERCENTAGE1.asFloat]) + '%  - ' + Format('%m', [DMMidas.CDSHead.FieldByName('TOTAL').asFloat * DMMidas.CDSSetupTIP_PERCENTAGE1.asFloat]),35));
        Lines.Add(CenterString('Suggested Tip: ' + Format('%f', [DMMidas.CDSSetupTIP_PERCENTAGE2.asFloat]) + '%  - ' + Format('%m', [DMMidas.CDSHead.FieldByName('TOTAL').asFloat * DMMidas.CDSSetupTIP_PERCENTAGE2.asFloat]), 35));
        Lines.Add(CenterString('Suggested Tip: ' + Format('%f', [DMMidas.CDSSetupTIP_PERCENTAGE3.asFloat]) + '%  - ' + Format('%m', [DMMidas.CDSHead.FieldByName('TOTAL').asFloat * DMMidas.CDSSetupTIP_PERCENTAGE3.asFloat]), 35));
      end;
      Active := False;
    end;
  end;
end;

function TPrintReceipt.StartTab(InsertHeader: Boolean; ID: Integer; Balance: Double; transType: String): Boolean;
Var
  CustomerStr, Telephone: String;
  CanContinue: Boolean;
  CustomerID: Integer;
  GROUP_BY_NAME: String;
begin
{
  Result := False;
  CanContinue := True;
  With DMMidas do
  begin
    cdsOpenTabs.Close;
    cdsOpenTabs.CommandText := 'Select * from OPEN_TABS where GROUP_BY_ID <> ' + IntToStr(ID)  + ' and ISTABLE = 1 order by ID';
    cdsOpenTabs.Open;
    FrmStartTab := TFrmStartTab.Create(nil);
    With FrmStartTab do
    begin
      if InsertHeader = false then
      begin
        FrmStartTab.btnStartNewTab.Visible := False;
        FrmStartTab.btnOK.Visible := False;
        FrmStartTab.BtnAddTable.Visible := True;
      end
      else
      begin
        if cotizacion = True then
        begin
          FrmStartTab.btnOK.Visible := True;
          FrmStarttab.btnStartNewTab.Visible := False;
        end
        else
        begin
          FrmStartTab.btnOK.Visible := False;
          FrmStarttab.btnStartNewTab.Visible := True;
        end;
      end;
      ShowModal;
      if ModalResult = mrYes then
      begin
        GROUP_BY_NAME := cdsOpenTabsGROUP_BY_NAME.Value;

        FDQuery1.SQL.Text := 'UPDATE TABS_HEADER SET GROUP_BY_ID = ' + IntToStr(cdsOpenTabsID.Value)
        + ', GROUP_BY_NAME = ' + chr(39) + GROUP_BY_NAME + chr(39) + ' WHERE ID = ' + IntToStr(ID); //
        FDQuery1.ExecSQL;

        FDQuery1.SQL.Text := 'UPDATE TABS_DETAIL SET GROUP_BY_ID = ' + IntToStr(cdsOpenTabsID.Value)
        + ', GROUP_BY_NAME = ' + chr(39) + GROUP_BY_NAME + chr(39)
        + ' WHERE TABS_ID = ' + IntToStr(ID);
        FDQuery1.ExecSQL;
        CommonPOS.GroupTabs(cdsOpenTabsID.Value);
        exit;
      end;
      if (ModalResult = mrOk) or (ModalResult = mrClose) or
      (ModalResult = mrYes)
      and (Trim(EdtSearch.Text) > '') then
      begin
        if (ModalResult = mrOk) then    //Check for opened tabs
        begin
          CustomerStr := CDSClientesNombreCompleto2.Value;
          CustomerID := CDSClientesNUMEROCLIENTE.Value;
          cdsOpenTabs.Close;
          cdsOpenTabs.CommandText := 'Select * from OPEN_TABS where CUSTOMER_ID = ' + IntToStr(CustomerID);     //Checks opened tabs with customers saved in db
          cdsOpenTabs.Open;
          if cdsOpenTabs.RecordCount > 0 then
          begin
            Result := False;
            ShowMessageStr('Customer has an open Tab!', 12,clBlack);
            CanContinue := False;
          end
          else
          begin
            cdsOpenTabs.Close;
            cdsOpenTabs.CommandText := 'Select * from OPEN_TABS where CUSTOMER = ' + chr(39) + Trim(CustomerStr) + chr(39);               //Checks opened tabs with customers not saved in db
            cdsOpenTabs.Open;
            if cdsOpenTabs.RecordCount > 0 then
            begin
              Result := False;
              ShowMessageStr('Customer has an open Tab!', 12,clBlack);
              CanContinue := False;
            end;
          end;
        end;
        if (ModalResult = mrClose) then
        begin
          Result := True;
          CustomerStr := Trim(FrmStartTab.EdtSearch.Text);
          CustomerID := 0;
          CanContinue := True;
        end;

        if CanContinue = True then
        begin
          Result := True;
          CommonPOS.InsertNewTab(InsertHeader, Trim(Copy(CustomerStr, 1,45)), Trim(Copy(Telephone, 1,13)), transType, Balance, CustomerID);
          FrmPOSRest.LabelCustomer.Caption := '';
        end
        else
          Result := False;
      end
      else
      begin
        Result := False;
      end;
      FrmStartTab := nil;
      Free;
    end;
  end;
  }
end;

procedure TPrintReceipt.OpenDrawer;
begin
  if (DMMidas.CDSSetupPOS_APP_OPEN_DRAWER.Value = True) Then
  begin
    begin
      If (POS('Epson',CommonPOS.ReceiptPrinter) <> 0) OR
         (POS('EPSON',CommonPOS.ReceiptPrinter) <> 0) then
      begin
        With Printer do
        begin
          BeginDoc;
          Canvas.Font.Name := 'Control';
          if Copy(CommonPOS.ReceiptPrinter, 1, 5) = 'RP300' Then
            Canvas.TextOut(0,0,'ESC =')
          else
            Canvas.TextOut(0,0,'A');
          EndDoc;
        end;
      end
      else
      begin
        SelectPrinter(CommonPOS.ReceiptPrinter);
        With Printer do
        begin
          BeginDoc;
          Canvas.Font.Name := 'Control';
          if Copy(CommonPOS.ReceiptPrinter, 1, 5) = 'RP300' Then
            Canvas.TextOut(0,0,'ESC =')
          else
            Canvas.TextOut(0,0,'A');
          EndDoc;
        end;
      end;
    end;
  end;
end;

procedure TPrintReceipt.SelectPrinter(PrnText: String);
Var
  I: Integer;
Begin
  For I := 0 To Printer.Printers.Count - 1 do
  Begin
    If Pos (PrnText,Printer.Printers[I]) <> 0 then
    Begin
      Printer.PrinterIndex := I;
    end;
  end;
end;

procedure TPrintReceipt.GetIVULoto(TransType: String);
Var
  loops, Cnt: Integer;
  Cred, LWay: Boolean;
  DeudaLocal, DeudaLayaway: Double;
  Taxable: String;

  cm: txPosRequest;
  Response: txPosResponse;
  //Response: ivuLotoData;
  D: TXSDateTime;
  MTax, STax, TotalV, SubTotalV: TXSDecimal;
  TenderTypeS: tenderType;
  MyTxServer: TxServer;
  SubTotalF: Double;
  IVULotoDate: String;
  Counter: Integer;
  loop: Boolean;
begin

  With DMMidas.CDSHead do
  Begin
    If (FieldByName('PaymentType1').asString = 'CRED') OR (FieldByName('PaymentType2').asString = 'CRED') then
      Cred := True;
    If (FieldByName('PaymentType1').asString = 'LWAY') OR (FieldByName('PaymentType2').asString = 'LWAY') then
      LWay := True;
    //================================IVULOTO=====================================
    Try
      //if loops = 1 then
      begin
        if CommonPOS.IVULOTO_ACTIVO then
        begin
          if (TransType = 'CASH') or (TransType = 'ATH') or (TransType = 'CHK') or (TransType = 'TFAM') or (TransType = 'VISA') then
          begin
            if DMMidas.CDSSetup.Active = False then DMMidas.CDSSetup.Active := True;
            if CommonPOS.InternetActive = True then
            begin
              MTax := TXSDecimal.Create;
              STax := TXSDecimal.Create;
              SubTotalV := TXSDecimal.Create;
              TotalV := TXSDecimal.Create;
              D := TXSDateTime.Create;
              D.AsDateTime := Now;
              MTax.AsBcd := FieldByName('TAX').AsBcd;
              STax.AsBcd := FieldByName('TAX_ESTATAL').AsBCD;
              SubTotalV.XSToNative(FormatFloat('0.00',(FieldByName('TOTAL').Value - FieldByName('TOTAL_TAX').Value)));
              TotalV.AsBcd := FieldByName('TOTAL').AsBCD;
              cm := txPosRequest.Create();
              cm.merchantId := trim(DMMidas.CDSSetupIVULOTO_MERCHANT_ID.Value); //'00000000000';
              cm.municipalTax := MTax;
              cm.stateTax := STax;
              cm.subTotal := SubTotalV;
              if TransType = 'CASH' then cm.tenderType := CASH;
              if (TransType = 'ATH') OR (TransType = 'TFAM') then cm.tenderType := ATH;
              if TransType = 'VISA' then cm.tenderType := CREDIT;
              if TransType = 'CHK' then cm.tenderType := EBT;
              cm.terminalId := Trim(CommonPOS.IVULOTO_TERMINALID); //'POS02';
              cm.terminalPassword := trim(DMMidas.CDSSetupIVULOTO_PASSWORD.Value);
              cm.total := TotalV;
              cm.transactionDate := D;
              if RefundPOS = true then
                cm.transactionType := REFUND
              else
                cm.transactionType := SALE;
              MyTxServer := GetTxServer(False,'', nil);
              Response := MyTxServer.requestIVULoto(cm);
              //ShowMessageStr(Response.ivuLoto);
              IVULotoDate := '';
              Counter := 1;
              loop := True;
              While loop = True do
              begin
                If copy(Response.drawDate.NativeToXS, counter, 1) = 'T' then
                  Loop := False
                else
                  IVULotoDate := IVULotoDate + copy(Response.drawDate.NativeToXS, counter, 1);
                Counter := Counter + 1;
              end;
              IVULotoDate := copy(IVULotoDate, 6,2) + '/' + copy(IVULotoDate, 9,2) + '/' + copy(IVULotoDate, 1,4);
              IVULotoDate := MonthOftheYear(IVULotoDate) + '/' + copy(IVULotoDate, 4,8);
              CommonPOS.IVULotoControlNumber := Response.ivuLoto;
            end;
          end;
        end;
      end;
    except
      //
    end;
  End;
end;

function TPrintReceipt.CenterString(InStr: String; StrLen: Integer): String;
Var
  Xpos, X : Integer;
begin
  InStr := Trim(InStr);
  Xpos := Trunc((StrLen - Length(InStr))/2);
  For X := 1 to Xpos do
    InStr := ' ' + InStr;
  Result := InStr;
end;

function TPrintReceipt.LeftJString(InStr: String; StrLen: Integer): String;
Var
  Xpos, X : Integer;
begin
  InStr := Trim(InStr);
  Xpos := (StrLen - Length(InStr));
  For X := 1 to Xpos do
    InStr := InStr + ' ';
  Result := InStr;
end;

end.
