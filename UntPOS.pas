unit UntPOS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, Buttons, StdCtrls, DBCtrls, DB,
  Mask,  ComCtrls, Printers, Wlccdll, Variants, Math,
  Registry, ToolWin, jpeg, ImgList, Spin, Menus, System.ImageList;
type
  TFrmPOS = class(TForm)
    ImageList4: TImageList;
    PopupMenu1: TPopupMenu;
    VerTransacciones1: TMenuItem;
    VerArticulos1: TMenuItem;
    ImageList5: TImageList;
    ImageList2: TImageList;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    LabelDescuento: TLabel;
    Label3: TLabel;
    Panel4: TPanel;
    Label1: TLabel;
    Label80: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Edit2: TEdit;
    Panel5: TPanel;
    DBEdit2: TDBEdit;
    LblPayType: TLabel;
    ToolBar1: TToolBar;
    BBorrar: TToolButton;
    BBuscar: TToolButton;
    ToolButton7: TToolButton;
    BQTY: TToolButton;
    BPrecio: TToolButton;
    BLimpiar: TToolButton;
    ToolButton8: TToolButton;
    BSalir: TToolButton;
    Panel6: TPanel;
    BtnCash: TSpeedButton;
    BtnCredit: TSpeedButton;
    BtnATH: TSpeedButton;
    BtnCheck: TSpeedButton;
    BtnVisa: TSpeedButton;
    BtnRX: TSpeedButton;
    BtnOTC: TSpeedButton;
    Panel7: TPanel;
    BtnRefund: TSpeedButton;
    BtnPCredit: TSpeedButton;
    BtnDiscount: TSpeedButton;
    BtnPayOut: TSpeedButton;
    BtnALayAway: TSpeedButton;
    BtnOpenRegister: TSpeedButton;
    BtnManual: TSpeedButton;
    Label5: TLabel;
    EditPetty: TEdit;
    EditRegister: TEdit;
    Label6: TLabel;
    BtnHold: TSpeedButton;
    LblWait: TLabel;
    BtnLayAway: TSpeedButton;
    LblDummy: TLabel;
    BtnSocio: TSpeedButton;
    BtnNoCharge: TSpeedButton;
    Timer1: TTimer;
    BtnReprint: TSpeedButton;
    Panel10: TPanel;
    Image4: TImage;
    Image5: TImage;
    Panel11: TPanel;
    Image6: TImage;
    SpeedButton1: TSpeedButton;
    BtnUtil: TSpeedButton;
    PopupMenu2: TPopupMenu;
    PAQUETESOCAJA1: TMenuItem;
    ASSEMBLIES1: TMenuItem;
    PICKUPS1: TMenuItem;
    Edit3: TEdit;
    Label7: TLabel;
    Edit4: TEdit;
    Edit1: TEdit;
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    Procedure Numbers;
    procedure BBorrarClick(Sender: TObject);
    procedure BPrecioClick(Sender: TObject);
    procedure Information1Click(Sender: TObject);
    procedure EditBuscarArticuloKeyPress(Sender: TObject; var Key: Char);
    procedure ESearchPatKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxFacturaReciboClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure BQTYClick(Sender: TObject);
    procedure BLimpiarClick(Sender: TObject);
    procedure BSalirClick(Sender: TObject);
    procedure PayTransaction(PyType: String);
    procedure BBuscarClick(Sender: TObject);
    procedure BtnCashClick(Sender: TObject);
    procedure BtnATHClick(Sender: TObject);
    procedure BtnCheckClick(Sender: TObject);
    procedure BtnVisaClick(Sender: TObject);
    procedure BtnManualClick(Sender: TObject);
    procedure BtnRXClick(Sender: TObject);
    procedure BtnOTCClick(Sender: TObject);
    procedure BtnPCreditClick(Sender: TObject);
    procedure BtnDiscountClick(Sender: TObject);
    procedure BtnCreditClick(Sender: TObject);
    procedure EditTurnoChange(Sender: TObject);
    procedure BtnPayOutClick(Sender: TObject);
    procedure BtnOpenRegisterClick(Sender: TObject);
    procedure BtnHoldClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnLayAwayClick(Sender: TObject);
    procedure BtnALayAwayClick(Sender: TObject);
    procedure Edit4AfterEnter(Sender: TObject);
    procedure BtnSocioClick(Sender: TObject);
    procedure BtnNoChargeClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BtnReprintClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BtnUtilClick(Sender: TObject);
    procedure BtnRefundClick(Sender: TObject);
    procedure PAQUETESOCAJA1Click(Sender: TObject);
    procedure ASSEMBLIES1Click(Sender: TObject);
    procedure PICKUPS1Click(Sender: TObject);
    procedure Edit1PropertiesChange(Sender: TObject);
  private
    Customer, HeldCust: Integer;
    CrPay, LaPay, HeldCrPay, HeldLaPay: Boolean;
    Perc, HeldPerc: Single;
    CrPayAmnt, LaPayAmnt, HeldCrPayAmnt, HeldLaPayAmnt: Currency;
    CustomerSSN, CrSignature: String;
  public
    Group_Counter, Header: Integer;
  end;

var
  FrmPOS: TFrmPOS;
  User, Devolucion, Paidout, AbonoLayaway, Layaway, Credito: String;
  Visa, MC, AmEx, Discover, Checking, Savings, Verbiage, Abono: String;
  EndSequesceNo, SequenceNo, NoTransaction, NoTrans, NoCliente,
  CounterNextMessage, PoleDisplayType, I, PatientFound: Integer;
  BatchNumber, ProcessingCode, Cajero, Customer, NoArticulo: String;
  PreAuthorization, Adjustment, Return, Reversal, Void, CanClose, Force: Boolean;
  PreAuthComp, EditFactura: Boolean;
  Numero, Words, Nu1, Nu2, Nu3, Nu4, Nu5, Nu6, Convercion: String;
  No1: Double;
  NoToStr, NoToStr2, Number, Number2, FinalNumber, No: String;
  Number1, PrecioV: Double;
  PorcientoDescuento: Double;
  AbonoCredito, Check, Descuento: Boolean;

implementation

uses UntDMMidas, UntSearchInv, untMain, UntQueries,
  UntManualSale, UPricing, USplash2,
  UntSecurity, UntSearchCust, DBClient, SqlExpr, 
  UntDeliveryInfo,  UntSelectOrder, UntAddUtility,
  UntVentasenGrupo, UntAssemblySelect, UntCommonPOS;

{$R *.DFM}

procedure TFrmPOS.Edit1Exit(Sender: TObject);
begin
{  if Edit1.Text > '' then
  begin
    CommonPOS.FindProduct(Edit1.Text);
    if DMMidas.CDSInventarioPisoDESCRIPCION.Value > '' then
    begin
      Edit1.text := '';
      Edit2.Text := DMMidas.CDSInventarioPisoDESCRIPCION.Value;
    end;
    Edit1.SetFocus;
  end;  }
end;

procedure TFrmPOS.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Begin
    if not (FrmPOS.ActiveControl is TDBGrid) then
    begin { if not on a TDBGrid }
      Key := #0;                                 { eat enter key }
      FrmPOS.Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
    end;
  end;
end;


procedure TFrmPOS.FormCreate(Sender: TObject);
begin
  With DMMidas do
  begin
    With CDSTrHeadAdHoc2 do
    begin
      Close;
      CommandText := 'Select StartBank, ID from DailyTotals Where EmployNumber = ''' +
                    CommonPOS.User + ''' AND Status_Caja = ' +
                    #39 + 'O' + #39 + ' and Register = ' +  Copy(FrmMain.sbMain.Panels.Items[2].Text, 9, 4);
      Active := True;
    end;
    CommonPOS.FormCreate;
    Edit2.Text := DMMidas.CDSSetupStoreName.Value;
    EditPetty.Text := Format('%m',[DMMidas.CDSTrHeadAdHoc2.FieldByName('STARTBANK').asFloat]);
    EditRegister.Text := CommonPOS.RegisterNo;
    Edit3.Text := DMMidas.CDSTrHeadAdHoc2.fieldbyName('ID').AsString;
    CommonPOS.ID := DMMidas.CDSTrHeadAdHoc2.fieldbyName('ID').asInteger;
  end;
end;

procedure TFrmPOS.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  //if Key = #13 then                              { if it's an enter key }
  Begin
    if not (FrmPOS.ActiveControl is TDBGrid) then
    begin { if not on a TDBGrid }
      Key := #0;                                 { eat enter key }
      FrmPOS.Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
    end
  end
  else
  begin
    If (Pos(Key,'-.0123456789') = 0) and (Key <> #8) then Key := #0;
  end;
end;

procedure TFrmPOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if CommonPOS.CanClose = true then
  begin
    CommonPOS.SendToPole(CommonPOS.CenterString(DMMidas.CDSSetupSTORENAME.Value,20),CommonPOS.CenterString('SALESTEC EXPRESS',20));
    FrmMain.elSerialPort1.Close;
    Action := caFree;
    FrmPOS := NIL;
  end
  else
  begin
    Action := caNone;
  end;
end;

procedure TFrmPOS.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    vk_F1: BtnCash.Click;
    vk_F2: BtnCredit.Click;
    vk_F3: BtnATH.Click;
    vk_F4: BtnCheck.Click;
    vk_F5: BtnVisa.Click;
    vk_F6: BtnLayAway.Click;
    vk_F7: BBorrar.Click;
    vk_F8: BBuscar.Click;
    vk_F9: BQty.Click;
    vk_F10: BPrecio.Click;
    vk_F11: BLimpiar.Click;
    vk_F12: BSalir.Click;
    vk_escape:
    begin
      CommonPOS.SendToPole(CommonPOS.CenterString('WESCOM INC',20),CommonPOS.CenterString('SALESTEC 2000',20));
      Timer1.Enabled := False;
    end;
  end;
  If Shift = [ssCtrl] then
  begin
    Case Key of
      //Ord('A'),Ord('a'): BtnArticulo.Down := True;
      Ord('B'),Ord('b'): BtnALayAway.Click;
      Ord('C'),Ord('c'): BtnPCredit.Click;
      Ord('D'),Ord('d'): BtnDiscount.Click;
      Ord('E'),Ord('e'): BtnRefund.Down := True;
      Ord('H'),Ord('h'): BtnHold.Click;
      Ord('M'),Ord('m'): BtnManual.Click;
      Ord('N'),Ord('n'): BtnNoCharge.Click;
      Ord('P'),Ord('p'): BtnReprint.Click;
      Ord('R'),Ord('r'): BtnRX.Click;
      Ord('S'),Ord('s'): BtnSocio.Click;
      Ord('T'),Ord('t'): BtnOTC.Click;
      Ord('U'),Ord('u'): BtnUtil.Click;
      Ord('Z'),Ord('z'): BtnOpenRegister.Click;
      Ord('Y'),Ord('y'): BtnPayOut.Click;
    end;
  end;
end;



procedure TFrmPOS.BBorrarClick(Sender: TObject);
Var
  TranNo, IDNo: Integer;
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  IDNo := DMMidas.CDSTransShowIDNUMBER.Value;
  TranNo := DMMidas.CDSTransShowTRANSACTIONNUMBER.Value;
  If FrmMain.IsAuthorized(AuthUser,12) then
  begin
    CommonPOS.BorrarProducto(TranNo, IDNo);
  end;
end;

procedure TFrmPOS.BPrecioClick(Sender: TObject);
begin
  CommonPOS.CambioPrecio;
end;

Procedure TFrmPOS.Numbers;
begin
  if No = '0' then Words := '';
  if No = '1' then Words := 'one';
  if No = '2' then Words := 'two';
  if No = '3' then Words := 'three';
  if No = '4' then Words := 'four';
  if No = '5' then Words := 'five';
  if No = '6' then Words := 'six';
  if No = '7' then Words := 'seven';
  if No = '8' then Words := 'eight';
  if No = '9' then Words := 'nine';
  if No = '10' then Words := 'ten';
  if No = '11' then Words := 'eleven';
  if No = '12' then Words := 'twelve';
  if No = '13' then Words := 'thirteen';
  if No = '14' then Words := 'fourteen';
  if No = '15' then Words := 'fifteen';
  if No = '16' then Words := 'sixteen';
  if No = '17' then Words := 'seventeen';
  if No = '18' then Words := 'eighteen';
  if No = '19' then Words := 'nineteen';
  if No = '20' then Words := 'twenty';
  if No = '30' then Words := 'thirty';
  if No = '40' then Words := 'fourty';
  if No = '50' then Words := 'fifty';
  if No = '60' then Words := 'sixty';
  if No = '70' then Words := 'seventy';
  if No = '80' then Words := 'eighty';
  if No = '90' then Words := 'ninety';
end;

procedure TFrmPOS.Information1Click(Sender: TObject);
begin
  FSplash2 := TFSplash2.Create(self);
  FSplash2.BitBtn1.Visible := True;
  FSplash2.ShowModal;
  FSplash2.Free;
end;

procedure TFrmPOS.EditBuscarArticuloKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then                          { if it's an enter key }
  Begin
    if not (FrmPOS.ActiveControl is TDBGrid) then
    begin { if not on a TDBGrid }
      Key := #0;                                 { eat enter key }
      FrmPOS.Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
    end
  end;
end;

procedure TFrmPOS.ESearchPatKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  //if Key = #13 then                              { if it's an enter key }
  Begin
    //Edit1.Text := '';
    if not (FrmPOS.ActiveControl is TDBGrid) then
    begin { if not on a TDBGrid }
      Key := #0;                                 { eat enter key }
      FrmPOS.Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
    end
  end;
end;

procedure TFrmPOS.CheckBoxFacturaReciboClick(Sender: TObject);
//var
//  MyReg : TRegistry;
begin
{   MyReg := TRegistry.create;
   With MyReg do
   begin
     OpenKey('POS', true);
     WriteBool('Factura',CheckBoxFacturaRecibo.Checked );
     WriteString('ComPort', '2');
     Free;
   end;}
end;

procedure TFrmPOS.btnExitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmPOS.BQTYClick(Sender: TObject);
begin
  CommonPOS.CambioQty;
end;

procedure TFrmPOS.BLimpiarClick(Sender: TObject);
begin
  CommonPOS.CancelTrans(DMMidas.CDSTransHeadTRANSACTIONNUMBER.Value);;
end;

procedure TFrmPOS.BSalirClick(Sender: TObject);
begin
  FrmMain.dxBarButtonLogout.Click
end;



procedure TFrmPOS.PayTransaction(PyType: String);
begin
  With DMMidas do
  begin
    if (CDSTransHeadTOTAL.asFloat <> 0) or (CDSTransHeadNUMBERITEMS.Value > 0) then
    begin
     Label4.Visible := True;
     LblPayType.Caption := PyType;
     LblPayType.Visible := True;
     Edit4.Visible := True;
     Edit4.TabStop := True;
     Label3.Caption := 'TOTAL';
     Label3.Font.Size := 10;
     Label3.Visible := True;
     Edit4.Text := Format('%.2f', [CDSTransHeadBalance.Value]);
     Edit2.Text := '# de Articulos: ' + IntToStr(CDSTransHeadNumberItems.Value);
     CommonPOS.SendToPole('Total: ' + Format('$%f',[StrToFloat(Edit4.Text)]) ,Format('$%f',[StrToFloat(Edit2.Text)]));
     Edit4.SetFocus;
    end;
  end;
end;

procedure TFrmPOS.BBuscarClick(Sender: TObject);
begin
  Queries.OpenInventory('', '');
  FrmSearchInv := TFrmSearchInv.Create(self);
  With FrmSearchInv do
  Begin
    ShowModal;
    If ModalResult = mrOK then
    begin
     CommonPOS.AnadirArticulo;
    end;
  end;
end;

procedure TFrmPOS.BtnCashClick(Sender: TObject);
begin
  PayTransaction('CASH');
end;

procedure TFrmPOS.BtnATHClick(Sender: TObject);
begin
  PayTransaction('ATH');
end;

procedure TFrmPOS.BtnCheckClick(Sender: TObject);
begin
  PayTransaction('CHK');
end;

procedure TFrmPOS.BtnVisaClick(Sender: TObject);
begin
  PayTransaction('VISA');
end;

procedure TFrmPOS.BtnManualClick(Sender: TObject);
begin
  CommonPOS.VentaManual(0);
  Edit1.SetFocus;
end;

procedure TFrmPOS.BtnRXClick(Sender: TObject);
begin
//  CommonPOS.FindRx;
  Edit1.SetFocus;
end;
procedure TFrmPOS.BtnOTCClick(Sender: TObject);
begin
  CommonPOS.FindOTC('');
  Edit1.SetFocus;
end;


procedure TFrmPOS.BtnPCreditClick(Sender: TObject);
begin
  CommonPos.PagoCredito(False);
  Edit1.SetFocus;
end;

procedure TFrmPOS.BtnDiscountClick(Sender: TObject);
begin
  if LabelDescuento.Visible = False then
    CommonPOS.Discount(False)
  else
    CommonPOS.Discount(True);
  Edit1.SetFocus;
end;


procedure TFrmPOS.BtnCreditClick(Sender: TObject);
Var
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  If FrmMain.IsAuthorized(AuthUser,30) then
  begin
    CrSignature := AuthUser;
    If Customer = 0 then
      PayTransaction('CRED');
  end;
end;

procedure TFrmPOS.EditTurnoChange(Sender: TObject);
Var
  Day, Month, Year: Word;
  Petty: Currency;
  Loop: Boolean;
  StrPetty: String;
begin
  Loop := True;
  DecodeDate(Date, Year, Month, Day);
  With DMMidas.CDSTrHeadAdHoc2 do
  begin
    Close;
    CommandText := 'Select StartBank from DailyTotals Where EmployNumber = ''' +
                    CommonPOS.User + ''' AND SalesDate = ''' +
                    Format('%.2d/%.2d/%.4d',[Month,Day,Year]) + ''' AND Shift = ' +
                    '0' + ' and Register = ' + EditRegister.Text ;
    Active := True;
    Petty := Fields[0].AsCurrency;
    Active := False;
    if Petty = 0 then
    begin
      StrPetty := '0';
      While loop = True do
      If InputQuery('Petty cash','Entre la cantidad',StrPetty) then
      begin
        Petty := StrToCurr(StrPetty);
        If Petty > 0 then
        begin
          Loop := False;
          With DMMidas do
          begin
            if CDSDailyTotals.Active = False then CDSDailyTotals.Active := True;
            CDSDailyTotals.Append;
            CDSDailyTotalsSTARTBANK.Value := StrToCurr(StrPetty);
            CDSDailyTotalsEMPLOYNUMBER.Value := CommonPOS.User;
            CDSDailyTotalsSALESDATE.asString := DateToStr(Date);
            CDSDailyTotalsSHIFT.Value := 0;
            CDSDailyTotalsREGISTER.Value := StrToInt(EditRegister.Text);
            CDSDailyTotalsID.Value := 0;
            CDSDailyTotals.Post;
            CDSDailyTotals.ApplyUpdates(0);
            EditPetty.Text := Format('%m',[CDSDailyTotalsSTARTBANK.asFloat]);
            FrmMain.ValidPetty := True;
          end;
        end
        else
        begin
          ShowMessage('No puede dejar el petty cash en blanco...');
        end;
      end
      else
      begin
        Loop := False;
      end;
    end
    else
    begin
      FrmMain.ValidPetty := True;
    end;
  end;
end;

procedure TFrmPOS.BtnPayOutClick(Sender: TObject);
begin
  CommonPos.PayOut(False);
  Edit1.SetFocus;
end;


procedure TFrmPOS.BtnOpenRegisterClick(Sender: TObject);
Var
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  If FrmMain.IsAuthorized(AuthUser,17) then
    CommonPOS.OpenDrawer;
end;

procedure TFrmPOS.BtnHoldClick(Sender: TObject);
begin
  CommonPOS.HoldTransaction;
  LblWait.Visible := True;
  Edit1.SetFocus;
end;



procedure TFrmPOS.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  If DMMidas.CDSTransShowPRICE.AsFloat <> DMMidas.CDSTransShowREGPRICE.asFloat then
  Begin
    with (Sender as TDBGrid) do Canvas.Brush.Color := clYellow;
    with (Sender as TDBGrid) do Canvas.FillRect(Rect);
    With (Sender as TDBGrid) do Canvas.Font.Color := clRed;
  end;
  if (gdSelected in State) then
  begin
    with (Sender as TDBGrid) do
    begin
      Canvas.Brush.Color := clNavy;
      Canvas.Font.Color := clWhite;
    end;
  end;
  with (Sender as TDBGrid) do DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrmPOS.BtnLayAwayClick(Sender: TObject);
begin
  If Customer = 0 then
    PayTransaction('LWAY');
end;

procedure TFrmPOS.BtnALayAwayClick(Sender: TObject);
begin
  CommonPOS.AbonoLayaway;
  Edit1.SetFocus;
end;


procedure TFrmPOS.Edit4AfterEnter(Sender: TObject);
begin
  Edit4.Focused;
end;


procedure TFrmPOS.BtnSocioClick(Sender: TObject);
begin
  CommonPOS.Auspicio;
  Edit1.SetFocus;
end;

procedure TFrmPOS.BtnNoChargeClick(Sender: TObject);
Var
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  If FrmMain.IsAuthorized(AuthUser,26) then
    PayTransaction('NCHG');
end;

procedure TFrmPOS.Timer1Timer(Sender: TObject);
begin
  CommonPOS.SendToPole(CommonPOS.CenterString('WESCOM INC',20),CommonPOS.CenterString('SALESTEC 2000',20));
  Timer1.Enabled := False;
end;

procedure TFrmPOS.BtnReprintClick(Sender: TObject);
begin
  CommonPOS.ReprintReceipt;
  Edit1.SetFocus;
end;

procedure TFrmPOS.SpeedButton1Click(Sender: TObject);
Var
  SAmnt: String;
  Amnt, DAmnt: Currency;
  InvNo: Integer;
begin
  If Customer = 0 then
  begin
    FrmSearchCust := TFrmSearchCust.Create(Self);
    With FrmSearchCust do
    begin
      ShowModal;
      If ModalResult = mrOK then
      begin
        Customer := DMMidas.CDSClientesNUMEROCLIENTE.Value;
        FrmMain.sbMain.Panels[3].Text := Trim('Cliente: ' + DMMidas.CDSClientesNOMBRE.Value +
                                             ' ' + DMMidas.CDSClientesAPELLIDOPATERNO.Value);
      end;
      Release;
    end;
  end;
  FrmSelectOrder := TFrmSelectOrder.Create(Self);
  With FrmSelectOrder do
  begin
    DAmnt := 0;
    InvNo := 0;
    ShowModal;
    If ModalResult = mrOK then
    begin
      DAmnt := DMMidas.CDSClientTransactions.FieldByName('Amount').Value -
               DMMidas.CDSClientTransactions.FieldByName('PaidAmount').Value;
      InvNo := DMMidas.CDSClientTransactions.FieldByName('TransNo').Value
    end;
    Release;
  end;
  If (Customer > 0) And (DAmnt > 0) then
  begin
    SAmnt := CurrToStr(DAmnt);
    If InputQuery('Pagos','Entre la cantidad',SAmnt) then
    begin
      Try
        Amnt := StrToCurr(SAmnt);
        If (DAmnt - Amnt) > -0.01 then
        begin
          CommonPOS.AddProduct('F','99999999996','PAGO FACTURA','PAGO','F',IntToStr(InvNo),
                     CommonPOS.User,'F', 'F',Amnt,
                     Amnt, 0,0,1,0,CommonPOS.Turno, CommonPOS.ID, 0, 0,0,0,false,false,'',0);
          CrPay := True;
          CrPayAmnt := Amnt;
        end
        else
        begin
          Customer := 0;
          FrmMain.sbMain.Panels[3].Text := '';
          ShowMessage('Pago no puede ser mayor que la deuda');
        end;
      except
        Customer := 0;
        FrmMain.sbMain.Panels[3].Text := '';
        ShowMessage('Cantidad incorrecta');
      end;
    end;
  end;
end;

procedure TFrmPOS.BtnUtilClick(Sender: TObject);
begin
  FrmAddUtility := TFrmAddUtility.Create(Self);
  With FrmAddUtility do
  begin
    ShowModal;
    If ModalResult = mrOK then
    begin
      If StrToFloat(Edit1.Text) >= 0.01 then
        CommonPOS.AddProduct('F','99999999995','PAGO UTILIDAD ' + ComboBox1.Text,'UTILIDAD','F',ComboBox1.Text,
                   CommonPOS.User,'F', 'F',StrtoFloat(Edit1.text),
                   StrtoFloat(Edit1.text), 0, 0,1,0,CommonPOS.Turno, CommonPOS.ID, 0, 0,0,0,true,false,'',0);
      If StrToFloat(Edit2.Text) >= 0.01 then
        CommonPOS.AddProduct('F','99999999994','CARGO UTILIDAD ' + ComboBox1.Text,'OTROS CARGOS','F',ComboBox1.Text,
                   CommonPOS.User,'F', 'F',StrtoFloat(Edit2.text),
                   StrtoFloat(Edit2.text), 0, 0,1,0,CommonPOS.Turno, CommonPOS.ID, 0, 0,0,0,true,false,'',0);
    end;
    Release;
  end;
end;

procedure TFrmPOS.BtnRefundClick(Sender: TObject);
begin
  if CommonPOS.RefundPOS = False then
  begin
    CommonPOS.RefundPOS := True;
  end
  else
  begin
    CommonPOS.RefundPOS := False;
  end;

  Edit1.SetFocus;
end;

procedure TFrmPOS.PAQUETESOCAJA1Click(Sender: TObject);
begin
  FrmGroupSales := TFrmGroupSales.Create(self);
  with FrmGroupSales do
  begin
    ShowModal;
    Free;
  end;
  Edit1.SetFocus;
end;

procedure TFrmPOS.ASSEMBLIES1Click(Sender: TObject);
begin
  CommonPOS.Assemblies(0);
  Edit1.SetFocus;
end;

procedure TFrmPOS.PICKUPS1Click(Sender: TObject);
begin
  CommonPOS.PickUp;
  Edit1.SetFocus;
end;

procedure TFrmPOS.Edit1PropertiesChange(Sender: TObject);
begin
  FrmMain.TimerPoleDisplayHeader.Enabled := False;
end;

end.
