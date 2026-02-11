unit UntPasswords;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, Grids, DBGrids, Data.DB, frxClass, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Buttons, frCoreClasses, ResourceLocalizer;

type
  TFrmPasswords = class(TForm)
    DBGridPasswords: TDBGrid;
    ToolBar2: TToolBar;
    ToolButton5: TToolButton;
    tbEdit: TToolButton;
    ToolButton17: TToolButton;
    TlBtnRefresh: TToolButton;
    ToolButton20: TToolButton;
    ToolButton1: TToolButton;
    frxReport1: TfrxReport;
    Panel4: TPanel;
    Label12: TLabel;
    Image1: TImage;
    DBText1: TDBText;
    EditSearch: TEdit;
    btnActivate: TButton;
    procedure ToolButton5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbEditClick(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
    procedure TlBtnRefreshClick(Sender: TObject);
    procedure TlBtnPostClick(Sender: TObject);
    procedure TlBtnCancelClick(Sender: TObject);
    procedure DBGridPasswordsDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure EditSearchChange(Sender: TObject);
    procedure btnActivateClick(Sender: TObject);
    procedure DBGridPasswordsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure AddEditPasswords(Option: String);
  private
    procedure OpenPasswords(Option: String);
    { Private declarations }
  public
    SecLevel: String;
  end;

var
  FrmPasswords: TFrmPasswords;

implementation

uses UntDMMidas, untMain, UntEditPasswords, UPassword2, UntDMCentralCredit,
  UntQueries, UntEscojaFecha, untRptCommission, UntCommonPOS, UntCreateNewUser;

{$R *.dfm}

procedure TFrmPasswords.ToolButton5Click(Sender: TObject);
Var
  PasswordStr: String;
begin
  if CommonPOS.isAuthorized('',UserRights.CAMBIARPASSWORD, false) then
  begin
    FrmCreateNewUser := TFrmCreateNewUser.Create(nil);
    With FrmCreateNewUser do
    begin
      ShowModal;
      if ModalResult = mrOk then
      begin
        CommonPOS.DisconnectFromDatabase;
        with DMMidas.ADD_EDIT_USERS_POS do
        begin
          Prepare;
          ParamByName('@ACTIVATE').Value := 0;
          ParamByName('@USERNAME').Value := Trim(Copy(FrmCreateNewUser.EditUserName.Text,1,35));
          ParamByName('@PASSWORD_COL').Value := FrmCreateNewUser.PasswordStr;
          ParamByName('@INICIALES').Value := Trim(Copy(EditIniciales.Text,1,3));
          ParamByName('@USERNO').Value := 0;
          ParamByName('@USER').Value := Copy(CommonPOS.User,1,3);
          ParamByName('@NOTE').Value := 'User: ' + Trim(Copy(FrmCreateNewUser.EditUserName.Text,1,35)) + ' created by: ' + CommonPOS.UserName;
          ExecProc;
          Queries.OpenPasswordsIniciales(Trim(EditIniciales.Text));
          AddEditPasswords('add');
        end;
      end;
      FrmCreateNewUser :=Nil;
      FrmCreateNewUser.Free;
    end;
  end;
end;



procedure TFrmPasswords.EditSearchChange(Sender: TObject);
begin
  OpenPasswords(EditSearch.Text);

end;

procedure TFrmPasswords.FormClose(Sender: TObject;
  var Action: TCloseAction);
Var
  MyRes: TModalResult;
begin
  DMMidas.Users;
  Action := caFree;
  FrmPasswords := NIL;
  FrmMain.TimerLogout.Enabled := true;
end;

procedure TFrmPasswords.tbEditClick(Sender: TObject);
begin
  if CommonPOS.isAuthorized('',UserRights.CAMBIARPASSWORD, false) then
    AddEditPasswords('edit');
end;

procedure TFrmPasswords.AddEditPasswords(Option: String);
begin
  With DMMidas do
  begin
    //if SecLevel = '3' then
    begin
      FrmEditPasswords := TFrmEditPasswords.Create(Self);
      With FrmEditPasswords do
      begin
        ePASSWORD_COL.Text := CommonPOS.base64Decode(DMMidas.CDSPasswordsPASSWORD_COL.Text);
        if option = 'add' then
        begin
          FrmEditPasswords.cbSEC_LEVELChange(self);
        end;
        FrmEditPasswords.ShowModal;
        If FrmEditPasswords.ModalResult = mrOK then
        begin
          FrmPasswords.TlBtnRefresh.Enabled := False;
          CommonPOS.DisconnectFromDatabase;
          With ADD_EDIT_USERS_POS do
          begin
            Prepare;
            ParamByName('@ACTIVATE').Value := 0;
            ParamByName('@USERNAME').Value := Copy(FrmEditPasswords.eUsuario.Text,1,35);
            ParamByName('@PASSWORD_COL').Value := CommonPOS.base64encode(FrmEditPasswords.ePASSWORD_COL.Text);
            ParamByName('@INICIALES').Value := Copy(FrmEditPasswords.eINICIALES.Text,1,3);
            ParamByName('@USERNO').asInteger := CDSPasswordsUSERNO.Value;
            ParamByName('@ACTIVE').Value := FrmEditPasswords.cbActive.Checked;
            ParamByName('@SEC_LEVEL').Value := Copy(FrmEditPasswords.cbSEC_LEVEL.Text,1,1);
            ParamByName('@MAIN_SETUP').AsBoolean := FrmEditPasswords.cbMAIN_SETUP.Checked;
            ParamByName('@MAIN_CUST').asBoolean := FrmEditPasswords.cbMAIN_CUST.Checked;
            ParamByName('@MAIN_LABEL').asBoolean := FrmEditPasswords.cbMAIN_LABEL.Checked;
            ParamByName('@MAIN_INV').asBoolean := FrmEditPasswords.cbMAIN_INV.Checked;
            ParamByName('@VERTRANSACCIONES').asBoolean := FrmEditPasswords.cbMAIN_TRANS.Checked;
            ParamByName('@POS_LOGEADO').asBoolean := FrmEditPasswords.cbLogeado.Checked;
            ParamByName('@CAMBIARPASSWORD').Value := cbChangePassword.Checked;
            if FrmEditPasswords.cbMAIN_DEPT.Checked then
              ParamByName('@MAIN_DEPT').asBoolean := true
            else
              ParamByName('@MAIN_DEPT').asBoolean := false;
            if FrmEditPasswords.cbMAIN_SUPL.Checked then
              ParamByName('@MAIN_SUPL').asBoolean := true
            else
              ParamByName('@MAIN_SUPL').asBoolean := false;
            if FrmEditPasswords.cbMAIN_TOTAL.Checked then
              ParamByName('@MAIN_TOTAL').asBoolean := true
            else
              ParamByName('@MAIN_TOTAL').asBoolean := false;
            if FrmEditPasswords.cbMAIN_ACCTS.Checked then
              ParamByName('@MAIN_ACCTS').asBoolean := true
            else
              ParamByName('@MAIN_ACCTS').asBoolean := false;
            if FrmEditPasswords.cbMAIN_INVRPT.Checked then
              ParamByName('@MAIN_INVRPT').asBoolean := true
            else
              ParamByName('@MAIN_INVRPT').asBoolean := false;
            if FrmEditPasswords.cbAGRUPARPRODUCTOS.Checked then
              ParamByName('@AGRUPARPRODUCTOS').asBoolean := true
            else
              ParamByName('@AGRUPARPRODUCTOS').asBoolean := false;
            if FrmEditPasswords.cbBACKUP.Checked then
              ParamByName('@BACKUP_PERMIT').asBoolean := true
            else
              ParamByName('@BACKUP_PERMIT').asBoolean := false;
            ParamByName('@TIME_CARD').asBoolean := FrmEditPasswords.cbTIME_CARD.Checked;
            if FrmEditPasswords.cbLOG_DATA.Checked then
              ParamByName('@LOG_DATA').asBoolean := true
            else
              ParamByName('@LOG_DATA').asBoolean := false;
            if FrmEditPasswords.cbPOS_REFUND.Checked then
              ParamByName('@POS_REFUND').asBoolean := true
            else
              ParamByName('@POS_REFUND').asBoolean := false;
            if FrmEditPasswords.cbPOS_DELPROD.Checked then
              ParamByName('@POS_DELPROD').asBoolean := true
            else
              ParamByName('@POS_DELPROD').asBoolean := false;
            if FrmEditPasswords.cbPOS_CHGPRICE.Checked then
              ParamByName('@POS_CHGPRICE').asBoolean := true
            else
              ParamByName('@POS_CHGPRICE').asBoolean := false;
            if FrmEditPasswords.cbPOS_DELTRANS.Checked then
              ParamByName('@POS_DELTRANS').asBoolean := true
            else
              ParamByName('@POS_DELTRANS').asBoolean := false;
            if FrmEditPasswords.cbPOS_NCGH.Checked then
              ParamByName('@POS_NCGH').asBoolean := true
            else
              ParamByName('@POS_NCGH').asBoolean := false;
            if FrmEditPasswords.cbPOS_CANCEL.Checked then
              ParamByName('@POS_CANCEL').asBoolean := true
            else
              ParamByName('@POS_CANCEL').asBoolean := false;
            if FrmEditPasswords.cbPOS_DISCOUNT.Checked then
              ParamByName('@POS_DISCOUNT').asBoolean := true
            else
              ParamByName('@POS_DISCOUNT').asBoolean := false;
            if FrmEditPasswords.cbPOS_IVU.Checked then
              ParamByName('@POS_IVU').asBoolean := true
            else
              ParamByName('@POS_IVU').asBoolean := false;
            if FrmEditPasswords.cbPOS_PAYOUT.Checked then
              ParamByName('@POS_PAYOUT').asBoolean := true
            else
              ParamByName('@POS_PAYOUT').asBoolean := false;
            if FrmEditPasswords.cbPOS_OPNDRAWR.Checked then
              ParamByName('@POS_OPNDRAWR').asBoolean := true
            else
              ParamByName('@POS_OPNDRAWR').asBoolean := false;
            if FrmEditPasswords.cbMAIN_TRANS.Checked then
              ParamByName('@MAIN_TRANS').asBoolean := true
            else
              ParamByName('@MAIN_TRANS').asBoolean := false;
            if FrmEditPasswords.cbPOS_REPRINT.Checked then
              ParamByName('@POS_REPRINT').asBoolean := true
            else
              ParamByName('@POS_REPRINT').asBoolean := false;
            if FrmEditPasswords.cbPOS_CREDIT.Checked then
              ParamByName('@POS_CREDIT').asBoolean := true
            else
              ParamByName('@POS_CREDIT').asBoolean := false;
            if FrmEditPasswords.cbGUARDAR_TRANSACCIONES.Checked then
              ParamByName('@GUARDAR_TRANSACCIONES').asBoolean := true
            else
              ParamByName('@GUARDAR_TRANSACCIONES').asBoolean := false;
            if FrmEditPasswords.cbRECALL_TRANS.Checked then
              ParamByName('@RECALL_TRANS').asBoolean := true
            else
              ParamByName('@RECALL_TRANS').asBoolean := false;
            if FrmEditPasswords.cbPOS_HOLD.Checked then
              ParamByName('@POS_HOLD').asBoolean := true
            else
              ParamByName('@POS_HOLD').asBoolean := false;
            if FrmEditPasswords.cbVENTA_MANUAL.Checked then
              ParamByName('@VENTA_MANUAL').asBoolean := true
            else
              ParamByName('@VENTA_MANUAL').asBoolean := false;
            //if FrmEditPasswords.cbCAMBIAR_PRECIO_OTC_RX.Checked :=
            // then
            //  ParamByName('@CAMBIAR_PRECIO_OTC_RX').asBoolean := true
            //else
             ParamByName('@CAMBIAR_PRECIO_OTC_RX').asBoolean := FrmEditPasswords.cbCAMBIAR_PRECIO_OTC_RX.Checked;
            if FrmEditPasswords.cbPOS_BUTTONS.Checked then
              ParamByName('@POS_BUTTONS').asBoolean := true
            else
              ParamByName('@POS_BUTTONS').asBoolean := false;
            if FrmEditPasswords.cbCAPTURAR_FIRMA.Checked then
              ParamByName('@CAPTURAR_FIRMA').asBoolean := true
            else
              ParamByName('@CAPTURAR_FIRMA').asBoolean := false;
            if FrmEditPasswords.cbREDIMIR_PATROCINIO.Checked then
              ParamByName('@REDIMIR_PATROCINIO').asBoolean := true
            else
              ParamByName('@REDIMIR_PATROCINIO').asBoolean := false;
            ParamByName('@POS_ADD_BUTTONS').asBoolean := FrmEditPasswords.cbPOS_ADD_BUTTONS.Checked;
            ParamByName('@POS_TAB_CANCEL').asBoolean := FrmEditPasswords.cbPOS_TAB_CANCEL.Checked;
            ParamByName('@POS_VER_TOTAL_CASH').asBoolean := FrmEditPasswords.cbPOS_VER_TOTAL_CASH.Checked;
            ParamByName('@POS_POST_SHOPPER').asBoolean := FrmEditPasswords.cbPOS_POST_SHOPPER.Checked;
            ParamByName('@POS_REST_DELETEPRODUCT').asBoolean := FrmEditPasswords.cbPOS_REST_DELETEPRODUCT.Checked;
            ParamByName('@POS_LIMITE_CAMBIO_PRECIO').asBoolean := FrmEditPasswords.cbPOS_LIMITE_CAMBIO_PRECIO.Checked;
            ParamByName('@POS_CAMBIAR_PRECIO_INV').asBoolean := FrmEditPasswords.cbPOS_CAMBIAR_PRECIO_INV.Checked;
            //ParamByName('@ADMINISTRATOR').asBoolean := False;

            if FrmEditPasswords.cbCUST_IBAL.Checked then
              ParamByName('@CUST_IBAL').asBoolean := true
            else
              ParamByName('@CUST_IBAL').asBoolean := false;
            if FrmEditPasswords.cbCUST_ILWAY.Checked then
              ParamByName('@CUST_ILWAY').asBoolean := true
            else
              ParamByName('@CUST_ILWAY').asBoolean := false;
            if FrmEditPasswords.cbCUST_EDIT.Checked then
              ParamByName('@CUST_EDIT').asBoolean := true
            else
              ParamByName('@CUST_EDIT').asBoolean := false;
            if FrmEditPasswords.cbCUST_DEL.Checked then
              ParamByName('@CUST_DEL').asBoolean := true
            else
              ParamByName('@CUST_DEL').asBoolean := false;
            {if FrmEditPasswords.cbPORCENTO_DESCUENTO.Checked then
              ParamByName('@PORCENTO_DESCUENTO').asBoolean := true
            else}
            ParamByName('@PORCENTO_DESCUENTO').asBoolean := FrmEditPasswords.cbPORCENTO_DESCUENTO.Checked;
            if FrmEditPasswords.cbTOT_ADDOLD.Checked then
              ParamByName('@TOT_ADDOLD').asBoolean := true
            else
              ParamByName('@TOT_ADDOLD').asBoolean := false;
            if FrmEditPasswords.cbTOT_DEL.Checked then
              ParamByName('@TOT_DEL').asBoolean := true
            else
              ParamByName('@TOT_DEL').asBoolean := false;
            if FrmEditPasswords.cbTOT_EDIT.Checked then
              ParamByName('@TOT_EDIT').asBoolean := true
            else
              ParamByName('@TOT_EDIT').asBoolean := false;
            if FrmEditPasswords.cbTOT_EDITOLD.Checked then
              ParamByName('@TOT_EDITOLD').asBoolean := true
            else
              ParamByName('@TOT_EDITOLD').asBoolean := false;
            ParamByName('@POS_CUADRE_ADMINISTRADOR').asBoolean := FrmEditPasswords.cbPOS_CUADRE_ADMINISTRADOR.Checked;
            ParamByName('@POS_CERRAR_CUADRE_ALIMPIRIMIR').asBoolean := FrmEditPasswords.cbPOS_CERRAR_CUADRE_ALIMPIRIMIR.Checked;
            if FrmEditPasswords.cbQUICKENTRY.Checked then
              ParamByName('@QUICKENTRY').asBoolean := true
            else
              ParamByName('@QUICKENTRY').asBoolean := false;
            if FrmEditPasswords.cbMAIN_RECV.Checked then
              ParamByName('@MAIN_RECV').asBoolean := true
            else
              ParamByName('@MAIN_RECV').asBoolean := false;
            if FrmEditPasswords.cbEM_VERQTYORD.Checked then
              ParamByName('@EM_VERQTYORD').asBoolean := true
            else
              ParamByName('@EM_VERQTYORD').asBoolean := false;
            if FrmEditPasswords.cbREPORTES.Checked then
              ParamByName('@REPORTES').asBoolean := true
            else
              ParamByName('@REPORTES').asBoolean := false;
            if FrmEditPasswords.cbRPT_RECONCILIACION.Checked then
              ParamByName('@RPT_RECONCILIACION').asBoolean := true
            else
              ParamByName('@RPT_RECONCILIACION').asBoolean := false;
            if FrmEditPasswords.cbRPT_INVENTARIO.Checked then
              ParamByName('@RPT_INVENTARIO').asBoolean := true
            else
              ParamByName('@RPT_INVENTARIO').asBoolean := false;
            if FrmEditPasswords.cbRPT_CLIENTES.Checked then
              ParamByName('@RPT_CLIENTES').asBoolean := true
            else
              ParamByName('@RPT_CLIENTES').asBoolean := false;
            if FrmEditPasswords.cbRPT_POS.Checked then
              ParamByName('@RPT_POS').asBoolean := true
            else
              ParamByName('@RPT_POS').asBoolean := false;
            ParamByName('@USER').Value := Copy(CommonPOS.User,1,3);
            ParamByName('@NOTE').Value := 'User ' + CDSPasswordsUSERNAME.Value + ' modified by: ' + CommonPOS.UserName;
            ParamByName('@POS_MODIFY_PAYOUT').asBoolean := cbPOS_MODIFY_PAYOUT.Checked;
            ParamByName('@POS_DELETE_RX').AsBoolean := cbPOS_DELETE_RX.Checked;
            ParamByName('@PROCESS_HANDHELD').AsBoolean := cbProcessHandheld.Checked;
            ParamByName('@DELETE_INVENTORY').AsBoolean := cbDeleteInv.Checked;
            ParamByName('@EDIT_INVENTORY').AsBoolean := cbEditInv.Checked;
            ParamByName('@CREATE_INVENTORY').AsBoolean := cbCreateInv.Checked;
            ExecProc;
          end;
          OpenPasswords('');
          DMMidas.CDSPasswords.Locate('INICIALES', Trim(eINICIALES.Text), [loCaseInsensitive]);
          FrmEditPasswords := Nil;
          FrmEditPasswords.Free;
        end;
//        else
//          CDSPasswords.Cancel;
      end;
    end;
  end;
end;

procedure TFrmPasswords.ToolButton17Click(Sender: TObject);
Var
  User: String;
  UserNo: Integer;
begin
  if CommonPOS.isAuthorized('',UserRights.CAMBIARPASSWORD, false) then
  begin
    With DMMidas do
    begin
      if FrmMain.LanguageStr = 'English' then
        FrmMain.msgD := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 296)
      else
        FrmMain.msgD := '¿Realmente quiere borrar?';
      If MessageDlg(FrmMain.msgD, mtConfirmation,[mbYes,mbNo],0) = mrYes then
      Begin
        User := CDSPasswordsUSERNAME.Value;
        FDQuery1.SQL.Text := 'Delete from PASSWORDS where userno = ' + CDSPasswordsUSERNO.AsString;
        FDQuery1.ExecSQL;
        CommonPOS.InsertLog(User + ' deleted', 'D', '',
                    Copy(CommonPOS.User,1,3), '',
                    0, 0, 0, 0,
                    0, UserNo, 0, 0,'',false,true);
      end;
      CDSPasswords.Refresh;
    end;
  end;
end;

procedure TFrmPasswords.ToolButton1Click(Sender: TObject);
Var
  Memo1: TfrxMemoView;
begin
  FrmEscojaFechas := TFrmEscojaFechas.Create(FrmPasswords);
  with FrmEscojaFechas do
  begin
    showModal;
    if ModalResult = mrok then
    begin
      frmComReport := TFrmComReport.Create(nil);
      with frmComReport do
      begin
        cdsCommission.Close;
        cdsCommission.CommandText := 'select salesman, SUM(commission) as TotalCommission from VERTRANSACCIONES where convert(varchar, transactiondate, 101) between' +
         chr (39) + DateToStr(frmEscojaFechas.Desde.Date) + chr(39) + 'and' + chr (39) + DateToStr(frmEscojaFechas.hasta.Date) + chr(39) +
          'group by salesman';
        cdsCommission.open;
        rptCommission.PrepareReport();
        rptCommission.ShowReport;
        frmComReport.Free;
        frmComReport := nil;
      end;
    end;
    FrmEscojaFechas.Free;
    FrmEscojaFechas := nil;
  end;
end;

procedure TFrmPasswords.TlBtnRefreshClick(Sender: TObject);
begin
  DMMidas.CDSPasswords.Refresh;
end;

procedure TFrmPasswords.TlBtnPostClick(Sender: TObject);
begin
  If DMMidas.CDSPasswords.ApplyUpdates(-1) = 0 then
  begin
    TlBtnRefresh.Enabled := True;
  end;
end;

procedure TFrmPasswords.TlBtnCancelClick(Sender: TObject);
begin
  DMMidas.CDSPasswords.CancelUpdates;
  TlBtnRefresh.Enabled := True;
end;

procedure TFrmPasswords.btnActivateClick(Sender: TObject);
Var
  Active: Boolean;
  Token: String;
begin

  With DMMidas do
  begin
    if btnActivate.Caption = 'Activate Account' then
    begin
      Active := True;
      Token := ' activated by: ';
      btnActivate.Caption := 'Deactivate Account';
    end
    else
    begin
      Active := False;
      Token := ' deactivated by: ';
      btnActivate.Caption := 'Activate Account';
    end;
    CommonPOS.ActivateDeactivateUser(CDSPasswordsUSERNO.Value, Active, Trim(Copy(CDSPasswordsUSERNAME.Value,1,35)), Copy(CommonPOS.User,1,3), Trim(CDSPasswordsUSERNAME.Value) + Token + CommonPOS.UserName);
    CDSPasswords.Refresh;
  end;
end;

procedure TFrmPasswords.DBGridPasswordsDblClick(Sender: TObject);
begin
  tbEdit.Click;
end;

procedure TFrmPasswords.DBGridPasswordsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  With DMMidas do
  begin
    If (Column.FieldName = 'ACTIVE') Then
    Begin
      if CDSPasswordsACTIVE.Value = false then
      Begin
        With (Sender as TDBGrid) do
          Canvas.Font.Color := clRed;
      end
      else
      begin
        With (Sender as TDBGrid) do
          Canvas.Font.Color := clGreen;
      end;
    End;
    with (Sender as TDBGrid) do
      DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TFrmPasswords.FormCreate(Sender: TObject);
begin
  OpenPasswords('');
end;

Procedure TFrmPasswords.OpenPasswords(Option: String);
begin
  With DMMidas do
  begin
    CDSPasswords.Close;
    if Trim(Option) > '' then
      CDSPasswords.CommandText := 'Select * from Passwords where Username Like ' +
      #39 + '%'+ Option + '%' + #39 + ' Order by UserName'
    else
      CDSPasswords.CommandText := 'Select * from Passwords order by Username';
    CDSPasswords.Open;
    //SecLevel := CDSPasswordsSEC_LEVEL.Value;
  end;
end;

end.
