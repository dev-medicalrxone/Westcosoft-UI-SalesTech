unit UntSignatureCapture;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, db, DBCtrls, ToolWin, ComCtrls, StdCtrls,
  Controls, ResourceLocalizer;

// ToolWin,ComCtrls,
type
  TFrmeSignatureCapture = class(TForm)
    cxPageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ToolBar2: TToolBar;
    btnShowSignature: TToolButton;
    BtnCaptureSig: TToolButton;
    Panel2: TPanel;
    BtnOk: TButton;
    BtnCancel: TButton;
    Panel1: TPanel;
    ESearchPat: TEdit;
    serchbarcode: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Button3: TButton;
    ButtonSelectAll: TButton;
    Button5: TButton;
    ButtonDeleteAll: TButton;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    Panel4: TPanel;
    DBGrid5: TDBGrid;
    Button7: TButton;
    tbInsert: TToolButton;
    LabelNoRx: TLabel;
    TimerSelectAll: TTimer;
    ToolButton1: TToolButton;
    Label3: TLabel;
    procedure ESearchPatExit(Sender: TObject);
    procedure serchbarcodeExit(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ButtonSelectAllClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ButtonDeleteAllClick(Sender: TObject);
    procedure ESearchPatKeyPress(Sender: TObject; var Key: Char);
    procedure Button7Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure BtnCaptureSigClick(Sender: TObject);
    procedure btnShowSignatureClick(Sender: TObject);
    Procedure FindRxByNoName(TokenStr: String; BagPickup, ChangeTab: Boolean);
    procedure FormShow(Sender: TObject);
    procedure TimerSelectAllTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbInsertClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ShowSignature(SigLink: Integer);
  private
    { Private declarations }
    SIG_LINK: Integer;
    function isInTable(OTC_Number: Integer): Boolean;
    function InsertPickup(NoRx: Largeint; OTCNumber: Integer; All: Boolean): Boolean;

  public
    { Public declarations }
    EraseTabData: Boolean;
    Inserted: Boolean;
  end;

var
  FrmeSignatureCapture: TFrmeSignatureCapture;

implementation

uses UntDMMidas, UntCommonPOS, UntQueries, UntSearchCust2, untMain, UntCommon,
  UntID, UntSignature, UntShowSignature, UntPickup, UntPOSTS, UntDMWC,
  UntSecurity, untSignatureCapture1x5, untSignatureCapture4x3, UntSearchPatRx;
{$R *.dfm}

Procedure TFrmeSignatureCapture.FindRxByNoName(TokenStr: String;
  BagPickup, ChangeTab: Boolean);
Var
  Token1, Token2, Token3: String;
  NoCliente: String;
  isOTCNumber: Boolean;
begin
  if Trim(TokenStr) > '' then
  begin
    isOTCNumber := false;
    if copy(UpperCase(TokenStr), 1, 2) = 'RX' then
    begin
      isOTCNumber := true;
      TokenStr := Trim(copy(UpperCase(TokenStr), 3, 20));
    end;

    With DMMidas do
    begin
      if ChangeTab = True then
        cxPageControl1.ActivePage := TabSheet1;
      if CDSSetup.Active = False then
          CDSSetup.Open;
      if CommonPOS.IsNumber(TokenStr) then
      begin
        begin
          if isOTCNumber = true then
          begin
            Queries.OpenOTC(StrToInt(TokenStr), CDSSetupWF_OVERRIDE_CHECKED.Value);  //Filter considering this setting 11/14/2025//
            NoCliente := IntToStr(CDSOTCNUMEROCLIENTE.Value);
          end
          else
          begin
            CommonPOS.SetConnection(QOTCFD);
            CDSOTC.Close;
            if CDSSetupWF_OVERRIDE_CHECKED.Value = True then          //Filter considering this setting 11/14/2025//
              CDSOTC.CommandText := 'Select * from OTC with (NOLOCK) where NumeroReceta = ' + TokenStr + ' and WF_CHECKED > ' + chr(39) + chr(39)
            else
              CDSOTC.CommandText := 'Select * from OTC with (NOLOCK) where NumeroReceta = ' + TokenStr;
            CDSOTC.Open;
            NoCliente := IntToStr(CDSOTCNUMEROCLIENTE.Value);
          end;
          if Trim(NoCliente) > '' then
          begin
            //if CDSPrescriptionsNUMERORECETA.Value > 0 then
            if CDSOTC.RecordCount > 0 then
            begin
              if BagPickup = True then
                CommonPOS.OpenOTC(CDSOTCNUMEROCLIENTE.Value, True, False)
              else
                CommonPOS.OpenOTC(CDSOTCNUMEROCLIENTE.Value, False, False);
            end
            else
            begin
              TokenStr := '';
              if FrmMain.LanguageStr = 'English' then
                ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 314))
              else
              ShowMessage('Paciente no encontrado...');
              ESearchPat.SetFocus;
            end;
          end;
        end;
      end
      else
      begin
        Queries.OpenPatient_Rx(TokenStr, 0);
        if CDSPacientesNUMEROCLIENTE.Value > 0 then
        begin
          FrmSearchPatRx := TFrmSearchPatRx.Create(Application);
          With FrmSearchPatRx do
          begin
            Tag := 1;
            ShowModal;
            Free;
            FrmSearchPatRx := Nil;
          end;
          if CommonPOS.StandalonePOS = true then
          begin
            dmmidas.qPacientes.Connection := FDConnection2;
          end;
          NoCliente := IntToStr(CDSPacientesNUMEROCLIENTE.Value);
          CommonPOS.OpenPrescriptions(StrToInt(NoCliente), 0, 0);
          CommonPOS.OpenOTC(StrToInt(NoCliente), False, CDSSetupWF_OVERRIDE_CHECKED.Value);
          TokenStr := '';
        end
        else
        begin
          TokenStr := '';
          if FrmMain.LanguageStr = 'English' then
            ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 314))
          else
          ShowMessage('Paciente no encontrado...');
          ESearchPat.SetFocus;
        end;
      end;
      LabelNoRx.Visible := True;
      if CDSOTCNUMERORECETA.Value > 0 then
        LabelNoRx.Caption := CDSOTCNUMERORECETA.AsString
      else
        LabelNoRx.Caption := CDSOTC2NUMERORECETA.AsString;
    end;
  end;
end;

procedure TFrmeSignatureCapture.BtnCaptureSigClick(Sender: TObject);
Var
  Continue, Cerrar: Boolean;
  AuthUser: String;
  Item: Integer;
begin
  //if DMMidas.CDSPickUp.RecordCount > 0 then
  //commonPOS.productSignature := False;
  if DMMidas.CDSOTC.RecordCount > 0 then
  begin
    CommonPOS.Capture_Signature_User := '';
    With DMMidas do
    begin
      {if Self.Tag <> 1 then
      begin
        //============== Show all Prescriptions availble for signature =============
        CommonPOS.OpenOTC(CDSOTCNUMEROCLIENTE.Value, False);
      end;}
      Continue := False;
      Item := 56;
      if CDSSetupPOS_SIGNATURE_PASSWORD.Value = True then
      begin
        Continue := CommonPOS.LoginAdmin('CAPTURAR_FIRMA');
        if Continue = False then
        begin
          //CommonPOS.ShowMessageStr('User not authorized!', 12);
        end
        else
        begin
          CommonPOS.Capture_Signature_User := Copy(DMMidas.PWRD_ISAUTHORIZED.ParamByName('@INICIALES').Value,1,3);
        end;
      end
      else
      begin
        Continue := True;
        CommonPOS.Capture_Signature_User := CommonPOS.User;
      end;

      if Continue = True then
      begin
        BtnCaptureSig.Enabled := False;
        if CDSPickUp.RecordCount > 0 then
        begin
          FrmID := TFrmID.Create(Self);
          With FrmID do
          begin
            //EditID.Text := Trim(DMMidas.CDSClientesIDENTIFICACION.Value);
            //EditPickedupBy.Text := Trim(DMMidas.CDSClientesNombreCompleto2.Value);
            EditID.Text := Trim(DMMidas.CDSPacientesIDENTIFICACION.Value);
            EditPickedupBy.Text := Trim(DMMidas.CDSPacientesNombreCompleto.Value);
            //FrmID.FormStyle := fsStayOnTop;
            ShowModal;
            if ModalResult = mrOK then
            begin
              if UserRights.Pesc_Sig_isIdentity = False then
              begin
                With DMMidas do
                begin
                  CommonPOS.DisconnectFromDatabase;
                  With SIGNATURE_LINK do
                  begin
                    Prepare;
                    ExecProc;
                    CommonPOS.SignatureLink := ParamByName('@SIGNATURE_LINK').Value;
                  end;
                  OTCNumber := CDSOTCOTCNUMBER.Value;
                end;
              end;
              if Trim(CDSSetupSIGPLUS.Value) = '4x3' then
              begin
                FrmSignature := TFrmSignature.Create(Self);
                with FrmSignature do
                begin
                  FrmSignature.Caption := IntToStr(CommonPOS.SignatureLink);
                  FrmSignature.FormStyle := fsStayOnTop;
                  if FrmID.RadioGroup1.ItemIndex = 0 then
                    FrmSignature.CapturePatSignature := True
                  else
                    FrmSignature.CapturePatSignature := False;
                  if FrmeSignatureCapture.Tag = 0 then
                    FrmSignature.Tag := 0;
                  ShowModal;
                  if FrmSignature.ModalResult <> mrCancel then
                    Cerrar := True
                  else
                    Cerrar := False;
                  FrmSignature.Free;
                  FrmSignature := Nil;
                end;
              end;
              if Trim(CDSSetupSIGPLUS.Value) = '4x3-Simple' then
              begin
                FrmeSignatureCapture4x3 := TFrmeSignatureCapture4x3.Create(Self);
                With FrmeSignatureCapture4x3 do
                begin
                  ShowModal;
                  if FrmeSignatureCapture4x3.ModalResult = mrOk then
                    cerrar := True
                  else
                    cerrar := False;
                  FrmeSignatureCapture4x3 := Nil;
                  FrmeSignatureCapture4x3.Free;
                end;
              end;
              if Trim(CDSSetupSIGPLUS.Value) = '1x5' then
              begin
                {CommonPOS.Save_eSignature(Trim(''),Copy(CommonPOS.Capture_Signature_User,1,3),'1',
                               'Axel', '1955731',2);}
                FrmeSignatureCapture1x5 := TFrmeSignatureCapture1x5.Create(Self);
                With FrmeSignatureCapture1x5 do
                begin
                  ShowModal;
                  if FrmeSignatureCapture1x5.ModalResult = mrOk then
                    cerrar := True
                  else
                    cerrar := False;
                  FrmeSignatureCapture1x5 := Nil;
                  FrmeSignatureCapture1x5.Free;
                end;
              end;
            end;
            FrmID := nil;
            FrmID.Free;
            if Cerrar = True then
              FrmeSignatureCapture.BtnOk.Click
            else
              FrmeSignatureCapture.BtnCancel.Click;
          end;

        end
        else
          BtnCaptureSig.Enabled := True;

      end;
    end;
  end;
end;


procedure TFrmeSignatureCapture.Button3Click(Sender: TObject);
Var
  Counter: Integer;
  Inserted: Boolean;
begin
  With DMMidas do
  begin
    serchbarcode.Enabled := False;
    ESearchPat.Enabled := False;
    CDSPickUp.Close;
    CDSPickUp.CommandText :=
      'Select * from Pick_up where Instancia = ' + IntToStr(FrmMain.Instancia);
    CDSPickUp.Open;
    Counter := CDSPickUp.RecordCount;
    CDSPickUp.First;
    if InsertPickup(CDSOTCNUMERORECETA.Value, CDSOTCOTCNUMBER.Value, False) = true then
    begin
      CDSPickUp.Close;
      CDSPickUp.CommandText :=
        'Select * from Pick_up where Instancia = ' + IntToStr
        (FrmMain.Instancia);
      CDSPickUp.Open;
    end;
  end;
end;

function TFrmeSignatureCapture.isInTable(OTC_Number: Integer): Boolean;
begin
  Result := False;
  with DMMidas do
  begin
    FDQuery1.Close;
    FDQuery1.sql.Text := 'Select * from Pick_up where OTCNUMBER = ' + IntToStr(OTC_Number);
    FDQuery1.Open;
    if FDQuery1.RecordCount > 0 then Result := True;
  end;
end;

procedure TFrmeSignatureCapture.ButtonSelectAllClick(Sender: TObject);
Var
  Counter: Integer;
begin
  Counter := 0;
  With DMMidas do
  begin
    if CDSOTC.Active = False then
    begin
      CDSOTC.Close;
      CDSOTC.CommandText := 'Select * from OTC with (NOLOCK)  Where OTCNumber = 0';
      CDSOTC.Open;
    end;
    serchbarcode.Enabled := False;
    ESearchPat.Enabled := False;
    CDSOTC.First;
    While not CDSOTC.Eof do
    begin
      InsertPickup(CDSOTCNUMERORECETA.Value, CDSOTCOTCNUMBER.Value, False);
      CDSOTC.Next;
    end;
    CDSPickUp.Close;
    CDSPickUp.CommandText :=
      'Select * from Pick_up where Instancia = ' + IntToStr
      (FrmMain.Instancia);
    CDSPickUp.Open;
  end;
end;

procedure TFrmeSignatureCapture.Button5Click(Sender: TObject);
begin
  With DMMidas do
  begin
    QDeletePickUp.SQL.Text :=
      'Delete from Pick_up where OTCNumber = ' + IntToStr
      (CDSPickUpOTCNUMBER.Value);
    QDeletePickUp.ExecSQL();
    CDSPickUp.Refresh;
  end;
end;

procedure TFrmeSignatureCapture.ButtonDeleteAllClick(Sender: TObject);
begin
  With DMMidas do
  begin
    QDeletePickUp.SQL.Text :=
      'Delete from Pick_up where Instancia = ' + IntToStr(FrmMain.Instancia);
    QDeletePickUp.ExecSQL();
    if CDSPickUp.Active = True then
      CDSPickUp.Refresh;
  end;
end;

procedure TFrmeSignatureCapture.Button7Click(Sender: TObject);
begin
  With DMMidas do
  begin
    if CommonPOS.isAuthorized('BORRAR_FIRMA', UserRights.BORRAR_FIRMA, true) then
    begin
      if FrmMain.LanguageStr = 'English' then
        FrmMain.msgD := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 313)
      else
        FrmMain.msgD := 'Desea borrar la firma de la receta';
      if MessageDlg(FrmMain.msgD + ': ' +
          CDSOTC2NUMERORECETA.AsString, mtConfirmation,
        [mbYes, mbNo], 0) = mrYes then
      begin
        CDSPrescriptions.Close;
        CDSPrescriptions2.Close;
        QDeletePickUp.SQL.Text :=
          'Delete from PRESCRIPTION_ESIGNATURE where signature_link = ' +
          CDSOTC2SIGNATURE_LINK.AsString;
        QDeletePickUp.ExecSQL();

        QDeletePickUp.SQL.Text :=
          'Update OTC set Signature_link = 1, PICKEDUPBY_RELATION = 0, WC_PICKUP = 0, PICKEDUP_ID = ' + #39 +
          '' + #39 + ' where OTCNUMBER = ' + CDSOTC2OTCNUMBER.AsString;
        QDeletePickUp.ExecSQL();

        if CDSClientesNUMEROCLIENTE.Value > 0 then
        begin
          CDSOTC2.Close;
          CDSOTC2.CommandText := 'Select * from OTC with (NOLOCK)  where NumeroCliente = ' +
            CDSClientesNUMEROCLIENTE.AsString + ' and SIGNATURE_LINK > 1 and (deducible + pago_plan) > 0';
          CDSOTC2.Open;
        end;
        FindRxByNoName(Trim(LabelNoRx.Caption), False, False);
      end;
    end
    else
    begin
      if FrmMain.LanguageStr = 'English' then
        ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 273))
      else
      ShowMessage('Usuario no autorizado!');
    end;
  end;
end;

procedure TFrmeSignatureCapture.ESearchPatExit(Sender: TObject);
Var
  Token1, Token2, Token3: String;
begin
  if Trim(ESearchPat.Text) > '' then
  begin
    FindRxByNoName(Trim(ESearchPat.Text), False, True);
    With DMwc do
    begin
      Panel3.Enabled := True;
      BtnCaptureSig.Enabled := True;
    end;
    ESearchPat.Text := '';
    FrmeSignatureCapture.Caption := 'eSignature Capture ' + DMMidas.CDSPacientesNombreCompleto.Value + '      DOB: ' + DMMidas.CDSPacientesFECHANACIMIENTO.asString +
    '      Mobile phone: ' + DMMidas.CDSPacientesCELULAR.asString;
  end;
end;

procedure TFrmeSignatureCapture.ESearchPatKeyPress(Sender: TObject;
  var Key: Char);
begin
  CommonForm.Enter2tab(Self, Key);
end;

procedure TFrmeSignatureCapture.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CommonPOS.ScanedRxLink := 0;
  DMMidas.qPacientes.Connection := DMMidas.FDConnection1;
end;

procedure TFrmeSignatureCapture.FormCreate(Sender: TObject);
begin
  CommonPOS.ScanedRxLink := 0;
  {With DMMidas do
  begin
    CDSPickUp.Close;
    CDSPickUp.CommandText :=
      'Select * from Pick_up where Instancia = ' + IntToStr(FrmMain.Instancia);
    CDSPickUp.Open;
  end;}
  EraseTabData := False;
  Label3.Caption := IntToStr(FrmMain.Instancia);
end;

procedure TFrmeSignatureCapture.FormShow(Sender: TObject);
begin
  ButtonDeleteAll.Click;
  //Timer1.Enabled := True;
  FrmeSignatureCapture.Caption :=
    'eSignature Capture ' + DMMidas.CDSClientesNombreCompleto2.Value; //DMwc.cdsWillCall_StatusNombreCompleto.Value;
  label1.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 255);
  label2.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 306);
  TabSheet1.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 307);
  TabSheet2.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 308);
  DBGrid3.Columns[0].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 309);
  DBGrid3.Columns[1].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 134);
  DBGrid3.Columns[2].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 310);
  DBGrid1.Columns[0].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 309);
  DBGrid1.Columns[1].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 134);
  DBGrid1.Columns[2].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 311);
  DBGrid4.Columns[0].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 309);
  DBGrid4.Columns[1].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 310);
  DBGrid4.Columns[2].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 134);
  Button7.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 312);
  //=======New Code==================
  TimerSelectAll.Enabled := true;
  {if Self.Tag <> 1 then
  begin
    CommonPOS.PrescriptionsButNotBilled;
    ButtonSelectAll.Click;
    BtnCaptureSig.Click;
  end;}
end;

procedure TFrmeSignatureCapture.serchbarcodeExit(Sender: TObject);
Var
  NDCTFC: Char;
  NDCTF: String;
  // NORX: LargeInt;
  Token1, Token2, Token3: String;
  NoCliente: Integer;
begin
  if serchbarcode.Text > '' then
  begin
    cxPageControl1.ActivePage := TabSheet1;
    if copy(UpperCase(serchbarcode.Text), 1, 2) = 'RX' then
      serchbarcode.Text := Trim(copy(UpperCase(serchbarcode.Text), 3, 20));
    NDCTF := copy(serchbarcode.Text, 1, 1);
    NDCTFC := NDCTF[1];
    if ((ord(NDCTFC) >= 48) and (ord(NDCTFC) <= 57) and
        (Length(serchbarcode.Text) <= 7)) or
      (copy(UpperCase(serchbarcode.Text), 1, 2) = 'RX') then
    begin
      With DMMidas do
      begin
        try
          begin
            {if CommonPOS.standalone = True then
            begin
              QOTCFD.Connection := FDConnection2;
              SQLQPrescriptions2FD.Connection := FDConnection2;
              DQLDSOTC2FD.Connection := FDConnection2;
            end
            else
            begin
              QOTCFD.Connection := FDConnection1;
              SQLQPrescriptions2FD.Connection := FDConnection1;
              DQLDSOTC2FD.Connection := FDConnection1;
            end;}
            CommonPOS.SetConnection(QOTCFD);
            CDSOTC.Close;
            CDSOTC.CommandText := 'Select * from OTC with (NOLOCK)  where OTCNumber = ' + #39 + Trim
              (serchbarcode.Text) + #39;
            CDSOTC.Open;
            NoCliente := CDSOTCNUMEROCLIENTE.Value;
            if NoCliente > 0 then
            begin
              CommonPOS.OpenOTC(NoCliente, False, False);
            end

            {if CDSOTCOTCNUMBER.Value > 0 then
            begin
              CommonPOS.OpenPrescriptions(CDSOTCNUMEROCLIENTE.Value, 0, 0);
              CommonPOS.SetConnection(SQLQPrescriptions2FD);
              CDSPrescriptions2.Close;
              CDSPrescriptions2.CommandText :=
                'Select * from Prescriptions with (NOLOCK) where NumeroCliente = ' + IntToStr
                (NoCliente) + ' and SCANED_RX_LINK > 0 ' +
                ' order by NumeroReceta';
              CDSPrescriptions2.Open;

              Queries.OpenPatient('', '', '', NoCliente);
              FrmeSignatureCapture.Caption := 'eSignature Capture ' + DMMidas.CDSClientesNombreCompleto2.Value;
              serchbarcode.Text := '';

              CommonPOS.SetConnection(DQLDSOTC2FD);
              CDSOTC2.Close;
              CDSOTC2.CommandText := 'Select * from OTC with (NOLOCK)  where NumeroCliente = ' + IntToStr(NoCliente)
                + ' and SIGNATURE_LINK > 1';
              CDSOTC2.Open;
              CommonPOS.OpenOTC(NoCliente, False);
            end}
            else
            begin
              serchbarcode.Text := '';
              if FrmMain.LanguageStr = 'English' then
                ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 314))
              else
              ShowMessage('Paciente no encontrado...');
              serchbarcode.SetFocus;
            end;
          end;
        except
          CommonPOS.ShowMessageStr('Error on exit', 14, clRed)
        end;
      end;
    end;
  end;
end;

procedure TFrmeSignatureCapture.TabSheet1Show(Sender: TObject);
begin
  With DMMidas do
  begin
    if EraseTabData = True then
    begin
      QDeletePickUp.SQL.Text :=
        'Delete from Pick_up where Instancia = ' + IntToStr(FrmMain.Instancia);
      QDeletePickUp.ExecSQL();
      if CDSPickUp.Active = True then
        CDSPickUp.Refresh;
      // FindRxByNoName(CDSOTCNUMERORECETA.AsString);
    end;
  end;
end;

procedure TFrmeSignatureCapture.TabSheet2Show(Sender: TObject);
begin
  With DMMidas Do
  begin
    if CDSClientesNUMEROCLIENTE.Value > 0 then
    begin
      CDSOTC2.Close;
      CDSOTC2.CommandText := 'Select * from OTC with (NOLOCK)  where NumeroCliente = ' +
        CDSClientesNUMEROCLIENTE.AsString + ' and SIGNATURE_LINK > 1 and (deducible + pago_plan) > 0';
      CDSOTC2.Open;
      EraseTabData := True;
    end;
  end;
end;

procedure TFrmeSignatureCapture.TimerSelectAllTimer(Sender: TObject);
begin
  TimerSelectAll.Enabled := False;
  if Self.Tag >= 1 then
  begin
    FindRxByNoName(DMwc.cdsWillCallRX_NUMBER.asString, True, True);
    Application.ProcessMessages;
    ButtonSelectAll.Click;
    BtnCaptureSig.Click;
  end;
end;

procedure TFrmeSignatureCapture.tbInsertClick(Sender: TObject);
Var
  SCANED_RX_LINK: Integer;
begin
  With DMMidas do
  begin
    CDSPickUp.First;
    begin
      CommonPOS.DisconnectFromDatabase;
      SPSCANED_RX_LINK.ExecProc;
      CDSNextRxNumber.Close;
      CDSNextRxNumber.Open;
      SCANED_RX_LINK := CDSNextRxNumberSCANED_RX_LINK.Value;
      While not CDSPickUp.Eof do
      begin
        if CommonPOS.standalone = True then
          UPDATE_OTC_SIGNATURELINK.Connection := FDConnection2
        else
          UPDATE_OTC_SIGNATURELINK.Connection := FDConnection1;
        CommonPOS.DisconnectFromDatabase;
        With UPDATE_OTC_SIGNATURELINK do
        begin
          Prepare;
          ParamByName('@WF_SIGNATURE').AsString := Trim(CommonPOS.Capture_Signature_User) + ' ' + DateTimeToStr(Now);
          ParamByName('@SCANED_RX_LINK').AsInteger := SCANED_RX_LINK;
          ParamByName('@OTCNumber').AsInteger := CDSPickUpOTCNUMBER.Value;
          ExecProc;
        end;
        if (Self.Tag = 0) and (CDSSetupPOS_IMPORT_SIGNATURE.Value = True) then // Called by button not Pickup
        begin
          CommonPOS.FindRx(CDSPickUpOTCNUMBER.AsString, False, False, 'OTCNUMBER', false);
        end;
        CDSPickUp.Next;
      end;
    end;
    FindRxByNoName(Trim(LabelNoRx.Caption), False, True);
  end;
end;

procedure TFrmeSignatureCapture.ToolButton1Click(Sender: TObject);
begin
  FrmeSignatureCapture.Tag := DMwc.cdsWillCall_StatusBAG_NUMBER.Value;
  BtnCancel.Click;
end;

procedure TFrmeSignatureCapture.btnShowSignatureClick(Sender: TObject);
begin
  ShowSignature(DMMidas.CDSOTCSIGNATURE_LINK.Value);
end;

procedure TFrmeSignatureCapture.ShowSignature(SigLink: Integer);
begin
  With DMMidas do
  begin
    CDSOTC.Refresh;
    if CDSOTCNUMERORECETA.Value > 0 then
    begin
      if SigLink > 0 then
      begin
        CDSPRESC_ESIGNATURE.Close;
        CDSPRESC_ESIGNATURE.CommandText :=
          'Select * from PRESCRIPTION_ESIGNATURE with (NOLOCK) WHERE SIGNATURE_LINK = ' + IntToStr(SigLink);
        CDSPRESC_ESIGNATURE.Open;
        if CDSPRESC_ESIGNATURE.RecordCount > 0 then
        begin
          CommonPOS.SignatureLink := SigLink;
          FrmShowSignature := TFrmShowSignature.Create(Self);
          With FrmShowSignature do
          begin
            FormStyle := fsStayOnTop;
            ShowModal;
            FrmShowSignature := Nil;
            Free;
          end;
        end
        else
          ShowMessage('No patient signature captured!');
      end
      else
      begin
        ShowMessage('No patient signature captured!');
      end;
    end;
  end;
end;

function TFrmeSignatureCapture.InsertPickup(NoRx: Largeint; OTCNumber: Integer; All: Boolean): Boolean;
begin
  Result := false;
  if CommonPOS.CheckifRxInSavedTransactions(IntToStr(OTCNumber), IntToStr(NoRx)) = False then
  begin
    With DMMidas do
    begin
      with INSERT_PICKUP do
      begin
        Prepare;
        ParamByName('@NORX').Value := NoRx;
        ParamByName('@OTCNUMBER').Value := OTCNumber;
        ParamByName('@INSTANCIA').Value := FrmMain.Instancia;
        ParamByName('@FECHA').Value := Date;
        ParamByName('@ALL').Value := All;
        ParamByName('@REGISTER_ID').Value := StrToInt(CommonPOS.RegisterNo);
        ExecProc;
        Result := ParamByName('@INSERTED').Value;
      end;
    end;
  end;
end;


end.
