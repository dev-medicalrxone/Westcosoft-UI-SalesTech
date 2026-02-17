unit UntEditPasswords;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Mask, ComCtrls, DB,
  frxClass, frxDBSet, frxBarcode, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, ResourceLocalizer, frCoreClasses;

type
  TFrmEditPasswords = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    TabSheet7: TTabSheet;
    ReportUserID: TfrxReport;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxDBDataset1: TfrxDBDataset;
    ADD_EDIT_USERS_POS: TFDStoredProc;
    eUsuario: TEdit;
    ePASSWORD_COL: TEdit;
    eINICIALES: TEdit;
    cbActive: TCheckBox;
    cbSEC_LEVEL: TComboBox;
    cbMAIN_LABEL: TCheckBox;
    cbMAIN_DEPT: TCheckBox;
    cbMAIN_SUPL: TCheckBox;
    cbMAIN_TOTAL: TCheckBox;
    cbMAIN_ACCTS: TCheckBox;
    cbMAIN_INVRPT: TCheckBox;
    cbAGRUPARPRODUCTOS: TCheckBox;
    cbBACKUP: TCheckBox;
    cbTIME_CARD: TCheckBox;
    cbLOG_DATA: TCheckBox;
    cbPOS_REFUND: TCheckBox;
    cbPOS_DELPROD: TCheckBox;
    cbPOS_CHGPRICE: TCheckBox;
    cbPOS_DELTRANS: TCheckBox;
    cbPOS_NCGH: TCheckBox;
    cbPOS_CANCEL: TCheckBox;
    cbPOS_DISCOUNT: TCheckBox;
    cbPOS_IVU: TCheckBox;
    cbPOS_PAYOUT: TCheckBox;
    cbPOS_OPNDRAWR: TCheckBox;
    cbMAIN_TRANS: TCheckBox;
    cbPOS_REPRINT: TCheckBox;
    cbPOS_CREDIT: TCheckBox;
    cbGUARDAR_TRANSACCIONES: TCheckBox;
    cbRECALL_TRANS: TCheckBox;
    cbPOS_HOLD: TCheckBox;
    cbVENTA_MANUAL: TCheckBox;
    cbREDIMIR_PATROCINIO: TCheckBox;
    cbCAMBIAR_PRECIO_OTC_RX: TCheckBox;
    cbPOS_BUTTONS: TCheckBox;
    cbCAPTURAR_FIRMA: TCheckBox;
    cbPOS_POST_SHOPPER: TCheckBox;
    cbPOS_REST_DELETEPRODUCT: TCheckBox;
    cbPOS_LIMITE_CAMBIO_PRECIO: TCheckBox;
    cbPOS_CAMBIAR_PRECIO_INV: TCheckBox;
    cbPOS_TAB_CANCEL: TCheckBox;
    cbCUST_IBAL: TCheckBox;
    cbCUST_ILWAY: TCheckBox;
    cbCUST_EDIT: TCheckBox;
    cbCUST_DEL: TCheckBox;
    cbPORCENTO_DESCUENTO: TCheckBox;
    cbTOT_ADDOLD: TCheckBox;
    cbTOT_DEL: TCheckBox;
    cbTOT_EDIT: TCheckBox;
    cbTOT_EDITOLD: TCheckBox;
    cbPOS_CUADRE_ADMINISTRADOR: TCheckBox;
    cbPOS_CERRAR_CUADRE_ALIMPIRIMIR: TCheckBox;
    cbPOS_VER_TOTAL_CASH: TCheckBox;
    cbQUICKENTRY: TCheckBox;
    cbMAIN_RECV: TCheckBox;
    cbEM_VERQTYORD: TCheckBox;
    cbREPORTES: TCheckBox;
    cbRPT_RECONCILIACION: TCheckBox;
    cbRPT_INVENTARIO: TCheckBox;
    cbRPT_CLIENTES: TCheckBox;
    cbRPT_POS: TCheckBox;
    cbPOS_ADD_BUTTONS: TCheckBox;
    cbLogeado: TCheckBox;
    cbMAIN_SETUP: TCheckBox;
    cbMAIN_CUST: TCheckBox;
    cbChangePassword: TCheckBox;
    cbPOS_MODIFY_PAYOUT: TCheckBox;
    cbPOS_DELETE_RX: TCheckBox;
    cbProcessHandheld: TCheckBox;
    TabSheet8: TTabSheet;
    cbMAIN_INV: TCheckBox;
    cbCreateInv: TCheckBox;
    cbDeleteInv: TCheckBox;
    cbEditInv: TCheckBox;
    procedure DBCheckBox8MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure cbSEC_LEVELChange(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure language;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEditPasswords: TFrmEditPasswords;

implementation

uses UntDMMidas, UntPasswords, DateUtils, UntCommonPOS, untMain;

{$R *.DFM}

procedure TFrmEditPasswords.Button3Click(Sender: TObject);
var
  s: String;
  barcode: TfrxBarCodeView;
begin
  s := CommonPOS.base64Decode(DMMidas.CDSPasswordsPASSWORD_COL.Value);
  barcode := ReportUserID.FindObject('BarCode1') as TfrxBarCodeView;
  barcode.Text := s;
  //barcode.Text := '12345678901';
  ReportUserID.PrepareReport;
  ReportUserID.ShowReport;
end;

procedure TFrmEditPasswords.cbSEC_LEVELChange(Sender: TObject);
Var
  I,J: Integer;
begin
  For J := 0 to PageControl2.PageCount - 1 do
  begin
    For I := 0 to PageControl2.Pages[J].ControlCount - 1 do
    begin
      If PageControl2.Pages[J].Controls[I] is TCheckBox then    // TDBCheckBox
      begin
        With PageControl2.Pages[J].Controls[I] as TCheckBox do
        begin
          Checked := False;
          If Copy(cbSEC_LEVEL.Text,1,1) = '1' then
          begin
            If Pos('(1)',Caption) <> 0 then
            begin
              Checked := True;
            end;
          end;
          If Copy(cbSEC_LEVEL.Text,1,1) = '2' then
          begin
            If (Pos('(1)',Caption) <> 0) OR (Pos('(2)',Caption) <> 0) then
            begin
              Checked := True;
            end;
          end;
          If Copy(cbSEC_LEVEL.Text,1,1) = '3' then
          begin
            Checked := True;
          end;
          If Pos('(4)',Caption) <> 0 then
          begin
            Checked := False;
          end;
        end;
      end;
    end;
  end;
end;

procedure TFrmEditPasswords.DBCheckBox8MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IF (DMMidas.CDSPasswords.State = dsInsert) OR
     (DMMidas.CDSPasswords.State = dsEdit) then
end;

procedure TFrmEditPasswords.FormCreate(Sender: TObject);
Var
  I,J: Integer;
begin
  If FrmPasswords.SecLevel = '2' then
  begin
    For J := 0 to PageControl2.PageCount - 1 do
    begin
      For I := 0 to PageControl2.Pages[J].ControlCount - 1 do
      begin
        If PageControl2.Pages[J].Controls[I] is TDBCheckBox then
        begin
          With PageControl2.Pages[J].Controls[I] as TDBCheckBox do
            If Pos('(3)',Caption) <> 0 then
            begin
              ReadOnly := True;
              Enabled := False;
            end;
        end;
      end;
    end;
  end;
  With DMMidas do
  begin
    cbChangePassword.Checked := CDSPasswordsCAMBIARPASSWORD.Value;
    eUsuario.Text := CDSPasswordsUSERNAME.Value;
    eINICIALES.Text := CDSPasswordsINICIALES.Value;
    cbLogeado.Checked := CDSPasswordsPOS_LOGEADO.Value;
    cbActive.Checked := CDSPasswordsACTIVE.Value;
    cbSEC_LEVEL.Text := CDSPasswordsSEC_LEVEL.Value;
    cbPOS_MODIFY_PAYOUT.Checked := CDSPasswordsPOS_MODIFY_PAYOUT.Value;
    if CDSPasswordsMAIN_SETUP.Value = true then
      cbMAIN_SETUP.Checked := True
    else
      cbMAIN_SETUP.Checked := False;
    if CDSPasswordsMAIN_CUST.Value = true then
      cbMAIN_CUST.Checked := True
    else
      cbMAIN_CUST.Checked := False;
    if CDSPasswordsMAIN_LABEL.Value = true then
      cbMAIN_LABEL.Checked := True
    else
      cbMAIN_LABEL.Checked := False;
    if CDSPasswordsMAIN_INV.Value = true then
      cbMAIN_INV.Checked := True
    else
      cbMAIN_INV.Checked := False;
    if CDSPasswordsMAIN_DEPT.Value = true then
      cbMAIN_DEPT.Checked := True
    else
      cbMAIN_DEPT.Checked := False;
    if CDSPasswordsMAIN_SUPL.Value = true then
      cbMAIN_SUPL.Checked := True
    else
      cbMAIN_SUPL.Checked := False;
    if CDSPasswordsMAIN_TOTAL.Value = true then
      cbMAIN_TOTAL.Checked := True
    else
      cbMAIN_TOTAL.Checked := False;
    if CDSPasswordsMAIN_ACCTS.Value = true then
      cbMAIN_ACCTS.Checked := True
    else
      cbMAIN_ACCTS.Checked := False;
    if CDSPasswordsMAIN_INVRPT.Value = true then
      cbMAIN_INVRPT.Checked := True
    else
      cbMAIN_INVRPT.Checked := False;
    if CDSPasswordsAGRUPARPRODUCTOS.Value = true then
      cbAGRUPARPRODUCTOS.Checked := True
    else
      cbAGRUPARPRODUCTOS.Checked := False;
    if CDSPasswordsBACKUP_PERMIT.Value = true then
      cbBACKUP.Checked := True
    else
      cbBACKUP.Checked := False;
    cbTIME_CARD.Checked :=  CDSPasswordsTIME_CARD.Value;
    if CDSPasswordsLOG_DATA.Value = true then
      cbLOG_DATA.Checked := True
    else
      cbLOG_DATA.Checked := False;
    if CDSPasswordsPOS_REFUND.Value = true then
      cbPOS_REFUND.Checked := True
    else
      cbPOS_REFUND.Checked := False;
    if CDSPasswordsPOS_DELPROD.Value = true then
      cbPOS_DELPROD.Checked := True
    else
      cbPOS_DELPROD.Checked := False;
    if CDSPasswordsPOS_CHGPRICE.Value = true then
      cbPOS_CHGPRICE.Checked := True
    else
      cbPOS_CHGPRICE.Checked := False;
    if CDSPasswordsPOS_DELTRANS.Value = true then
      cbPOS_DELTRANS.Checked := True
    else
      cbPOS_DELTRANS.Checked := False;
    if CDSPasswordsPOS_NCGH.Value = true then
      cbPOS_NCGH.Checked := True
    else
      cbPOS_NCGH.Checked := False;
    if CDSPasswordsPOS_CANCEL.Value = true then
      cbPOS_CANCEL.Checked := True
    else
      cbPOS_CANCEL.Checked := False;
    if CDSPasswordsPOS_DISCOUNT.Value = true then
      cbPOS_DISCOUNT.Checked := True
    else
      cbPOS_DISCOUNT.Checked := False;
    if CDSPasswordsPOS_IVU.Value = true then
      cbPOS_IVU.Checked := True
    else
      cbPOS_IVU.Checked := False;
    if CDSPasswordsPOS_PAYOUT.Value = true then
      cbPOS_PAYOUT.Checked := True
    else
      cbPOS_PAYOUT.Checked := False;
    if CDSPasswordsPOS_OPNDRAWR.Value = true then
      cbPOS_OPNDRAWR.Checked := True
    else
      cbPOS_OPNDRAWR.Checked := False;
    if CDSPasswordsMAIN_TRANS.Value = true then
      cbMAIN_TRANS.Checked := True
    else
      cbMAIN_TRANS.Checked := False;
    if CDSPasswordsPOS_REPRINT.Value = true then
      cbPOS_REPRINT.Checked := True
    else
      cbPOS_REPRINT.Checked := False;
    if CDSPasswordsPOS_CREDIT.Value = true then
      cbPOS_CREDIT.Checked := True
    else
      cbPOS_CREDIT.Checked := False;
    if CDSPasswordsGUARDAR_TRANSACCIONES.Value = true then
      cbGUARDAR_TRANSACCIONES.Checked := True
    else
      cbGUARDAR_TRANSACCIONES.Checked := False;
    if CDSPasswordsRECALL_TRANS.Value = true then
      cbRECALL_TRANS.Checked := True
    else
      cbRECALL_TRANS.Checked := False;
    if CDSPasswordsPOS_HOLD.Value = true then
      cbPOS_HOLD.Checked := True
    else
      cbPOS_HOLD.Checked := False;
    if CDSPasswordsVENTA_MANUAL.Value = true then
      cbVENTA_MANUAL.Checked := True
    else
      cbVENTA_MANUAL.Checked := False;
    if CDSPasswordsREDIMIR_PATROCINIO.Value = true then
      cbREDIMIR_PATROCINIO.Checked := True
    else
      cbREDIMIR_PATROCINIO.Checked := False;
    {if CDSPasswordsCAMBIAR_PRECIO_OTC_RX.Value = true then
      cbCAMBIAR_PRECIO_OTC_RX.Checked := True
    else
      cbCAMBIAR_PRECIO_OTC_RX.Checked := False;}
    cbCAMBIAR_PRECIO_OTC_RX.Checked := CDSPasswordsCAMBIAR_PRECIO_OTC_RX.Value;

    if CDSPasswordsPOS_BUTTONS.Value = true then
      cbPOS_BUTTONS.Checked := True
    else
      cbPOS_BUTTONS.Checked := False;
    if CDSPasswordsCAPTURAR_FIRMA.Value = true then
      cbCAPTURAR_FIRMA.Checked := True
    else
      cbCAPTURAR_FIRMA.Checked := False;
    cbPOS_VER_TOTAL_CASH.Checked := CDSPasswordsPOS_VER_TOTAL_CASH.Value;
    cbPOS_POST_SHOPPER.Checked := CDSPasswordsPOS_POST_SHOPPER.Value;
    cbPOS_REST_DELETEPRODUCT.Checked := CDSPasswordsPOS_REST_DELETEPRODUCT.Value;
    cbPOS_LIMITE_CAMBIO_PRECIO.Checked := CDSPasswordsPOS_LIMITE_CAMBIO_PRECIO.Value;
    cbPOS_CAMBIAR_PRECIO_INV.Checked := CDSPasswordsPOS_CAMBIAR_PRECIO_INV.Value;
    cbPOS_TAB_CANCEL.Checked := CDSPasswordsPOS_TAB_CANCEL.Value;
    if CDSPasswordsCUST_IBAL.Value = true then
      cbCUST_IBAL.Checked := True
    else
      cbCUST_IBAL.Checked := False;
    if CDSPasswordsCUST_ILWAY.Value = true then
      cbCUST_ILWAY.Checked := True
    else
      cbCUST_ILWAY.Checked := False;
    if CDSPasswordsCUST_EDIT.Value = true then
      cbCUST_EDIT.Checked := True
    else
      cbCUST_EDIT.Checked := False;
    if CDSPasswordsCUST_DEL.Value = true then
      cbCUST_DEL.Checked := True
    else
      cbCUST_DEL.Checked := False;
    {if CDSPasswordsPORCENTO_DESCUENTO.Value = true then
      cbPORCENTO_DESCUENTO.Checked := True
    else
      cbPORCENTO_DESCUENTO.Checked := False;}
    cbPORCENTO_DESCUENTO.Checked := CDSPasswordsPORCENTO_DESCUENTO.Value;
    if CDSPasswordsTOT_ADDOLD.Value = true then
      cbTOT_ADDOLD.Checked := True
    else
      cbTOT_ADDOLD.Checked := False;
    if CDSPasswordsTOT_DEL.Value = true then
      cbTOT_DEL.Checked := True
    else
      cbTOT_DEL.Checked := False;
    if CDSPasswordsTOT_EDIT.Value = true then
      cbTOT_EDIT.Checked := True
    else
      cbTOT_EDIT.Checked := False;
    if CDSPasswordsTOT_EDITOLD.Value = true then
      cbTOT_EDITOLD.Checked := True
    else
      cbTOT_EDITOLD.Checked := False;
    cbPOS_CUADRE_ADMINISTRADOR.Checked := CDSPasswordsPOS_CUADRE_ADMINISTRADOR.Value;
    cbPOS_CERRAR_CUADRE_ALIMPIRIMIR.Checked := CDSPasswordsPOS_CERRAR_CUADRE_ALIMPIRIMIR.Value;
    if CDSPasswordsQUICKENTRY.Value = true then
      cbQUICKENTRY.Checked := True
    else
      cbQUICKENTRY.Checked := False;
    if CDSPasswordsMAIN_RECV.Value = true then
      cbMAIN_RECV.Checked := True
    else
      cbMAIN_RECV.Checked := False;
    if CDSPasswordsEM_VERQTYORD.Value = true then
      cbEM_VERQTYORD.Checked := True
    else
      cbREPORTES.Checked := False;
    if CDSPasswordsREPORTES.Value = true then
      cbREPORTES.Checked := True
    else
      cbREPORTES.Checked := False;
    if CDSPasswordsRPT_RECONCILIACION.Value = true then
      cbRPT_RECONCILIACION.Checked := True
    else
      cbRPT_RECONCILIACION.Checked := False;
    if CDSPasswordsRPT_INVENTARIO.Value = true then
      cbRPT_INVENTARIO.Checked := True
    else
      cbRPT_INVENTARIO.Checked := False;
    if CDSPasswordsRPT_CLIENTES.Value = true then
      cbRPT_CLIENTES.Checked := True
    else
      cbRPT_CLIENTES.Checked := False;
    if CDSPasswordsRPT_POS.Value = true then
      cbRPT_POS.Checked := True
    else
      cbRPT_POS.Checked := False;
    cbPOS_ADD_BUTTONS.Checked := CDSPasswordsPOS_ADD_BUTTONS.Value;
    cbPOS_DELETE_RX.Checked := CDSPasswordsPOS_DELETE_RX.Value;
    cbProcessHandheld.Checked := CDSPasswordsPROCESS_HANDHELD.Value;
    cbCreateInv.Checked := CDSPasswordsCREATE_INVENTORY.Value;
    cbEditInv.Checked := CDSPasswordsEDIT_INVENTORY.Value;
    cbDeleteInv.Checked := CDSPasswordsDELETE_INVENTORY.Value;
  end;
end;

procedure TFrmEditPasswords.FormShow(Sender: TObject);
begin
  if FrmMain.LanguageStr = 'English' then
    language;
end;

procedure TFrmEditPasswords.language;
begin
  Label1.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 139);
  Label3.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 140);
  Label4.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 141);
  cbLogeado.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 142);
  cbMAIN_CUST.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 143);
  cbMAIN_LABEL.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 144);
  cbMAIN_INV.Caption := 'INVENTORY (1)';//TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 145);
  cbMAIN_DEPT.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 146);
  cbMAIN_SUPL.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 147);
  cbMAIN_TOTAL.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 148);
  cbMAIN_ACCTS.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 149);
  cbChangePassword.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 150);
  cbMAIN_INVRPT.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 151);
  cbAGRUPARPRODUCTOS.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 152);
  cbBACKUP.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 153);
  cbTIME_CARD.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 154);
  cbLOG_DATA.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 155);
  cbPOS_DELPROD.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 156);
  cbPOS_CHGPRICE.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 157);
  cbPOS_DELTRANS.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 158);
  cbPOS_CANCEL.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 159);
  cbPOS_DISCOUNT.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 160);
  cbPOS_OPNDRAWR.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 161);
  cbMAIN_TRANS.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 162);
  cbPOS_REPRINT.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 163);
  cbPOS_CREDIT.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 164);
  cbGUARDAR_TRANSACCIONES.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 165);
  cbVENTA_MANUAL.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 166);
  cbCAMBIAR_PRECIO_OTC_RX.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 167);
  cbPOS_BUTTONS.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 168);
  cbCAPTURAR_FIRMA.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 169);
  cbPOS_LIMITE_CAMBIO_PRECIO.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 170);
  cbPOS_CAMBIAR_PRECIO_INV.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 171);
  tabsheet3.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 172);
  cbCUST_IBAL.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 173);
  cbCUST_ILWAY.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 174);
  cbCUST_EDIT.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 175);
  cbCUST_DEL.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 176);
  cbPORCENTO_DESCUENTO.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 177);
  tabsheet4.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 178);
  cbTOT_ADDOLD.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 179);
  cbTOT_DEL.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 176);
  cbTOT_EDIT.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 180);
  cbTOT_EDITOLD.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 181);
  cbPOS_CUADRE_ADMINISTRADOR.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 182);
  cbPOS_CERRAR_CUADRE_ALIMPIRIMIR.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 183);
  cbPOS_VER_TOTAL_CASH.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 184);
  TabSheet6.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 185);
  cbREPORTES.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 186);
  cbRPT_RECONCILIACION.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 187);
  cbRPT_INVENTARIO.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 188);
  cbRPT_CLIENTES.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 189);
  cbRPT_POS.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 190);
  Button3.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 191);
  FrmEditPasswords.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 192);
end;

end.
