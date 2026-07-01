unit UntLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, ToolWin, jpeg, ExtCtrls, StdCtrls, Data.DB,
  Vcl.DBCtrls, frxClass, frxDBSet, Vcl.Mask, System.ImageList, Vcl.ImgList,
  frCoreClasses, frxExportBaseDialog, frxExportCSV;

type
  TFrmLog = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    TabSheet2: TTabSheet;
    ToolBar2: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    DBGrid2: TDBGrid;
    ToolBar3: TToolBar;
    ToolButton12: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    tbSearchTag: TToolButton;
    ToolButton17: TToolButton;
    ToolButton19: TToolButton;
    rptLog: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    ImageList1: TImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure dxBarButtonFirstClick(Sender: TObject);
    procedure dxBarButtonPriorClick(Sender: TObject);
    procedure dxBarButtonNextClick(Sender: TObject);
    procedure dxBarButtonClick(Sender: TObject);
    procedure tbDetailClick(Sender: TObject);
    procedure ToolButton19Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure tbSearchTagClick(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLog: TFrmLog;

implementation

uses UntMain, UntFilterLog, UntCommon,
  untLogDetail, UntQueries,
  UntInventory, UntDMMidas, UntCommonPOS;

{$R *.dfm}

procedure TFrmLog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmLog := Nil;
{  if (not Assigned(FHistorial)) AND (not Assigned(FAnadirRecetas))
  AND (not Assigned(FrmWorkflow)) then
  begin
    FrmMain.Panel2.Enabled := True;
    FrmMain.TimerLogout.Enabled := True;
  end; }
end;

procedure TFrmLog.FormCreate(Sender: TObject);
Var
  OrderBy: String;
begin
  With DMMidas do
  begin
    OrderBy :=  ' order by NOLOG DESC';
    CDSLog.Close;
    CDSLog.CommandText := 'Select * from LOG where Usuario = ' + #39 +
    Trim(CommonPOS.User) + #39 + ' and convert(varchar, Fecha, 101) between ' +
    #39 + DateToStr(Date) + #39 +
    ' and ' + #39 + DateToStr(Date) + #39 + ' and POS_RX = ' + chr(39) + 'R' + chr(39) + OrderBy;
    CDSLog.Open;
  end;
end;

procedure TFrmLog.FormShow(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSPasswords.Close;
    CDSPasswords.CommandText := 'Select * from passwords order by username';
    CDSPasswords.Open;
  end;
end;

procedure TFrmLog.ToolButton15Click(Sender: TObject);
begin
  rptLog.ShowReport;
end;

procedure TFrmLog.ToolButton16Click(Sender: TObject);
begin
{  With DMMidas do
  begin
    if CDSLogCUSTOMER_ID.Value > 0 then
    begin
      Queries.OpenPatient('', '', '',
        DMMidas.CDSLogCUSTOMER_ID.Value);
    end
    else
    begin
      if CDSLogNO_RX.Value > 0 then
      begin
        Queries.OpenPrescriptions(0,0,CDSLogNO_RX.Value);
        if CDSPrescriptions.RecordCount > 0 then
        begin
          Queries.OpenPatient('','','',CDSPrescriptionsNUMEROCLIENTE.Value);
        end;
      end;
    end;
    {if CDSPacientes.Active = True then
    begin
      if CDSPacientes.RecordCount > 0 then
      begin
        FBuscarPacientes := TFBuscarPacientes.Create(nil);
        With FBuscarPacientes do
        begin
          FormStyle := fsStayOnTop;
          FBuscarPacientes.PageControl1.ActivePage := TabSheet2;
          PopupMode := pmExplicit;
          PopupParent := FrmWorkflow;
          BitBtnCancel.Enabled := False;
          ShowModal;
          FBuscarPacientes := Nil;
          FBuscarPacientes.Free;
        end;
        CommonRoutinesRx.DisconnectFromDatabase;
      end;
    end;
  end;
  }
end;

procedure TFrmLog.ToolButton17Click(Sender: TObject);
begin
  {With DMMidas do
  begin
    CDSDoctores.Close;
    if CDSLogPRESCRIBER_ID.Value > 0 then
    begin
      Queries.OpenDoctoresNoDoctor(CDSLogPRESCRIBER_ID.Value);
    end
    else
    begin
      if CDSLogNO_RX.Value > 0 then
      begin
        Queries.OpenPrescriptions(0,0,CDSLogNO_RX.Value);
        if CDSPrescriptions.RecordCount > 0 then
        begin
          Queries.OpenDoctoresNoDoctor(CDSPrescriptionsNUMERODOCTOR.Value);
        end;
      end;
    end;
    if CDSDoctores.Active = true then
    begin
      if CDSDoctores.RecordCount > 0 then
      begin
        FrmEditDoctor := TFrmEditDoctor.Create(nil);
        With FrmEditDoctor do
        begin
          if Queries.VerificarSiExistenRecetas(0, 0, CDSDoctoresNUMERODOCTOR.Value,
            0, '') = True then
          begin
            tbPrefijo.ReadOnly := True;
            tbName.ReadOnly := True;
            tbMiddlName.ReadOnly := True;
            tbFirstLastName.ReadOnly := True;
            tbFirstLastName.ReadOnly := True;
            tbSecondLastName.ReadOnly := True;
            LabelWarning.Visible := True;
            LabelWarning.Caption :=
              'Este Doctor tiene recetas en el historial, no podra cambiar el nombre ni apellidos del doctor.';
          end
          else
          begin
            tbPrefijo.ReadOnly := False;
            tbName.ReadOnly := False;
            tbMiddlName.ReadOnly := False;
            tbFirstLastName.ReadOnly := False;
            tbFirstLastName.ReadOnly := False;
            tbSecondLastName.ReadOnly := False;
          end;
          ShowModal;
          FrmEditDoctor.FormStyle := fsStayOnTop;
          FrmEditDoctor := Nil;
          Free;
        end;
      end;
    end;
  end;
  CommonRoutinesRx.DisconnectFromDatabase; }
end;

procedure TFrmLog.ToolButton19Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmLog.ToolButton1Click(Sender: TObject);
Var
  NoRx: String;
  ShowAll: String;
  FromTo: String;
  ControlledOnly: String;
  Unsuccessful: String;
  OrderBy: String;
begin
  OrderBy :=  ' order by NOLOG DESC';  With DMMidas do
  begin
    CDSPasswords.Close;
    CDSPasswords.CommandText := 'Select * from Passwords';
    CDSPasswords.Open;
    FrmFilterLog := TFrmFilterLog.Create(Self);
    FrmFilterLog.ShowModal;
    if FrmFilterLog.cbUnsuccessful.Checked = true then
    begin
      Unsuccessful := ' and successful = 0';
    end;
    FromTo := #39 + DateToStr(FrmFilterLog.DateTimePickerDesde.Date) + #39 +
            ' and ' + #39 + DateToStr(FrmFilterLog.DateTimePickerHasta.Date) +  #39;
    if FrmFilterLog.CheckBoxAll.Checked = true then
    begin
      ShowAll := ' and POS_RX = ' + chr(39) + 'P' + chr(39);
    end
    else
    begin
      ShowAll := '';
    end;
    if FrmFilterLog.cbShowBackups.Checked = true then
    begin
      CDSLog.Close;
      CDSLog.CommandText := 'Select * from LOG where CODIGO = ' + chr(39) + 'B'
        + chr(39) + ShowAll + ControlledOnly + Unsuccessful + ' order by NOLOG DESC';
      CDSLog.Open;
    end
    else
    begin
      begin
        if FrmFilterLog.CheckBoxByUser.Checked then
        begin
          CDSLog.Close;
          CDSLog.CommandText := 'Select * from LOG where Usuario = ' + #39 +
            CDSPasswordsINICIALES.Value + #39 +
            ' and convert(varchar, Fecha, 101) Between ' + FromTo +
            ShowAll + ControlledOnly + Unsuccessful +
            ' order by NOLOG DESC';
          CDSLog.Open;
        end
        else
        begin
          CDSLog.Close;
          CDSLog.CommandText :=
            'Select * from LOG where convert(varchar, Fecha, 101) Between ' +
            FromTo + ShowAll + ControlledOnly + Unsuccessful + ' order by NOLOG DESC';
          CDSLog.Open;
        end;
      end;

      {cdsPasswordLog.Close;
      cdsPasswordLog.CommandText := 'Select * from PASSWORD_LOG where CONVERT(CHAR(101),Date_Time, 101) between ' + FromTo;
      cdsPasswordLog.Open;}
    end;
    FrmFilterLog := nil;
    FrmFilterLog.Free;
  end;
end;

procedure TFrmLog.ToolButton2Click(Sender: TObject);
begin
  { With DM do
    begin
    CDSPasswords.Close;
    CDSPasswords.CommandText := 'Select * from Passwords';
    CDSPasswords.Open;
    FrmFilterLog := TFrmFilterLog.Create(Self);
    FrmFilterLog.Caption := 'Delete log from...';
    FrmFilterLog.ShowModal;
    if FrmFilterLog.ModalResult = mrOk then
    begin
    if FrmFilterLog.CheckBoxByUser.Checked then
    begin
    if MessageDlg('Do you whish to delete all transactions log between '  +  DateToStr(FrmFilterLog.DateTimePickerDesde.Date) + ' and ' + DateToStr(FrmFilterLog.DateTimePickerHasta.Date) + ' and user = ' + CDSPasswordsUSERNAME.Value + '?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
    CDSLog.Close;
    CDSLog.CommandText := 'Delete from LOG where Usuario = ' + #39 + CDSPasswordsINICIALES.Value + #39 + ' and Fecha Between ' +  #39 + DateToStr(FrmFilterLog.DateTimePickerDesde.Date) + #39 + ' and '  + #39 + DateToStr(FrmFilterLog.DateTimePickerHasta.Date) + #39;
    CDSLog.Execute;
    end;
    end
    else
    begin
    if MessageDlg('Do you whish to delete all transactions log between '  + DateToStr(FrmFilterLog.DateTimePickerDesde.Date) + ' and ' + DateToStr(FrmFilterLog.DateTimePickerHasta.Date) + ' and from all users?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
    CDSLog.Close;
    CDSLog.CommandText := 'Delete from LOG where Fecha Between ' +  #39 + DateToStr(FrmFilterLog.DateTimePickerDesde.Date) + #39 + ' and '  + #39 + DateToStr(FrmFilterLog.DateTimePickerHasta.Date) + #39;
    CDSLog.Execute;
    end;
    end;
    end;
    FrmFilterLog.Free;
    end; }
end;

procedure TFrmLog.tbDetailClick(Sender: TObject);
begin
  With DMMidas do
  begin
    FrmLogDetail := TFrmLogDetail.Create(nil);
    With FrmLogDetail do
    begin
      Memo1.Lines.Add(cdslogDESC_CODIGO.Value);
      if CDSLogNO_RX.Value > 0 then
      begin
        Memo1.Lines.Add('Precription Number: ' + CDSLogNO_RX.AsString);
      end;
      Memo1.Lines.Add('Date: ' + CDSLogFECHA.AsString + ' / User: ' + CDSLogUSUARIO_DEFINE.Value);
      FrmLogDetail.Caption := 'Log Detail: ' + CDSLogDESCRIPCION.Value;
      if CDSLogCUSTOMER_ID.Value > 0 then
      begin
        Queries.OpenPatient('','','',CDSLogCUSTOMER_ID.Value);
        Memo1.Lines.Add('Patient: ' + CDSClientesNombreCompleto2.Value + ' / DOB: ' + CDSClientesFECHANACIMIENTO.AsString);
      end;
      {if CDSLogPATIENT_HEALTH_PLAN_ID.Value > 0 then
      begin
        Queries.OpenPatPlan(0,CDSLogPATIENT_HEALTH_PLAN_ID.Value,false, false);
        Memo1.Lines.Add('Patient health plan: ' + CDSPatPlanPLANMEDICO.Value);
      end;}
      {if (CDSLogDRUG_ID.Value > 0) or (CDSLogNDC_BARCODE.Value > '') then
      begin
        if CDSLogDRUG_ID.Value > 0 then
          Queries.OpenInventoryPID(CDSLogDRUG_ID.Value)
        else
          Queries.OpenInventoryNDC(CDSLogNDC_BARCODE.Value);
        Memo1.Lines.Add('Medication: ' + CDSInventarioMedicamentoStr.Value+ ' / ' +CDSInventarioCONTROLADO.Value + ' / ' +'NDC: ' +CDSInventarioNDC.Value);
        //Memo1.Lines.Add();
      end;}
      {if CDSLogPRESCRIBER_ID.Value > 0 then
      begin
        Queries.OpenDoctoresNoDoctor(CDSLogPRESCRIBER_ID.Value);
        Memo1.Lines.Add('Prescriber: ' + CDSDoctoresNombreCompleto.Value + ' / NPI: ' + CDSDoctoresNPI.Value + ' / DEA: ' + CDSDoctoresDEA_FEDERAL.Value);
      end;
      if CDSLogHEALTH_PLAN_ID.Value > 0 then
      begin
        Queries.OpenPlanesMedicosPLANESMEDICOSNO(CDSLogHEALTH_PLAN_ID.Value);
        Memo1.Lines.Add('Health Plan: ' + Trim(CDSPlanesMedicosNOMBRE.Value) + ' / ' + 'BIN: ' + CDSPlanesMedicosBINNUMBER.Value);
      end;
      }


      ShowModal;
      FrmLogDetail := Nil;
      Free;
    end;
  end;
end;

procedure TFrmLog.tbSearchTagClick(Sender: TObject);
begin
{  With DM do
  begin
    if (CDSLogDRUG_ID.Value > 0) or (Trim(CDSLogNDC_BARCODE.Value) > '') then
    begin
      Queries.OpenPasswords('', Trim(Prescription.UserInitials));
      if (DM.CDSPasswordsUSERNAME.Value > '') or
        (Trim(Prescription.UserInitials) = 'LEXA') then
      begin
        if (DM.CDSPasswordsInventarioRx.Value <> true) and
          (Trim(Prescription.UserInitials) <> 'LEXA') then
        begin
          CommonRoutinesRx.ShowMessageStr('User not authorized!');
          // Not authorized
        end
        else
        begin
          if (CDSLogDRUG_ID.Value > 0) then
            Queries.OpenInventoryPID(CDSLogDRUG_ID.Value)
          else
            Queries.OpenInventoryNDC(CDSLogNDC_BARCODE.Value);
          if not Assigned(FrmInventory) then
          Begin
            FrmInventory := TFrmInventory.Create(self);
            With FrmInventory do
            begin
              Tag := 1;
              FormStyle := fsStayOnTop;
              WindowState := wsNormal;
              PageControl1.ActivePageIndex := 1;
              ShowModal;
              FrmInventory := Nil;
              FrmInventory.Free;
            end;
          end
          else
            FrmInventory.BringToFront;
        end;
      end
      else
        CommonRoutinesRx.ShowMessageStr('User not authorized!');
    end;
  end; }
end;

procedure TFrmLog.dxBarButtonFirstClick(Sender: TObject);
begin
  DMMidas.CDSLog.First;
end;

procedure TFrmLog.dxBarButtonPriorClick(Sender: TObject);
begin
  DMMidas.CDSLog.Prior;
end;

procedure TFrmLog.dxBarButtonNextClick(Sender: TObject);
begin
  DMMidas.CDSLog.nEXT;
end;

procedure TFrmLog.dxBarButtonClick(Sender: TObject);
begin
  DMMidas.CDSLog.Last;
end;

end.
