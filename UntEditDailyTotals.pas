unit UntEditDailyTotals;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, ComCtrls, Printers,
  Spin, db, Provider, SqlExpr, DBClient, Data.FMTBcd, Vcl.Touch.Keyboard, ResourceLocalizer;

type
  TFrmEditDailyTotals = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnCancel: TBitBtn;
    BtnPrint: TBitBtn;
    RichEdit1: TRichEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    DBText5: TDBText;
    DBText7: TDBText;
    Label7: TLabel;
    Label13: TLabel;
    DBText9: TDBText;
    DBEdit9: TDBEdit;
    DBText10: TDBText;
    Label14: TLabel;
    Label8: TLabel;
    DBText8: TDBText;
    DBEdit7: TDBEdit;
    DBMemo1: TDBMemo;
    DBText6: TDBText;
    Label10: TLabel;
    Label9: TLabel;
    Panel3: TPanel;
    Label12: TLabel;
    Label1: TLabel;
    Label11: TLabel;
    SpinEditNOCAJA: TSpinEdit;
    SpinEdit1: TSpinEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource1: TDataSource;
    TabSheet3: TTabSheet;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    DBEdit1: TDBEdit;
    Label15: TLabel;
    QVentasDpt: TSQLDataSet;
    DSPVentasDpt: TDataSetProvider;
    CDSDepts: TClientDataSet;
    btnOK: TButton;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBText11: TDBText;
    Label19: TLabel;
    SpeedButton8: TSpeedButton;
    Label20: TLabel;
    DBEdit4: TDBEdit;
    Label21: TLabel;
    DBText12: TDBText;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    EditTotalTax: TEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    SpeedButton11: TSpeedButton;
    DBEdit16: TDBEdit;
    DBText13: TDBText;
    Label22: TLabel;
    TouchKeyboard1: TTouchKeyboard;
    Label23: TLabel;
    DBEdit15: TDBEdit;
    BitBtn1: TBitBtn;
    DBEdit17: TDBEdit;
    Label24: TLabel;
    DBEdit18: TDBEdit;
    Label25: TLabel;
    SpeedButton12: TSpeedButton;
    Label26: TLabel;
    DBText14: TDBText;
    DBEdit19: TDBEdit;
    SpeedButton13: TSpeedButton;
    Button1: TButton;
    BitBtn2: TBitBtn;
    Label27: TLabel;
    DBText15: TDBText;
    Label28: TLabel;
    DBText16: TDBText;
    DBEdit20: TDBEdit;
    procedure BtnPrintClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure TabSheet3Enter(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure VerTransacciones(TipoTrans: String; Indice: Integer);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure language;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEditDailyTotals: TFrmEditDailyTotals;

implementation

uses UntDMMidas, untMain, UntVerTrans, UntCalculateMoney,
  UntCommonPOS, UntCommon, untReceiptView, untIpe, untReprintSettle;

{$R *.dfm}

procedure TFrmEditDailyTotals.BitBtn1Click(Sender: TObject);
begin
  CommonPOS.PrintTransactions('Visa');
end;

procedure TFrmEditDailyTotals.BitBtn2Click(Sender: TObject);
begin
  FrmReprintSettle := TFrmReprintSettle.Create(self);
  with FrmReprintSettle do
  begin
    DateTimePicker1.Date := now;
    showModal;
    Free;
    FrmReprintSettle := Nil;
  end;
end;

procedure TFrmEditDailyTotals.BtnPrintClick(Sender: TObject);
begin
  If PageControl1.ActivePageIndex = 0 then
  begin
    CommonPOS.SelectPrinter(CommonPOS.ReceiptPrinter);
    FrmReceiptView := TFrmReceiptView.Create(self);
    With FrmReceiptView.RichEdit1 do
    begin
      Lines.Clear;
      Font.Name := 'Lucida Console';
      Font.Size := 8;
      Font.Style := [fsBold];
      Lines.Add(CommonPOS.CenterString(DMMidas.CDSSetupSTORENAME.Value,36));
      Font.Name := 'Lucida Console';
      Font.Style := [];
      Lines.Add(CommonPOS.CenterString(DMMidas.CDSSetupSTOREADDRESS.Value,36));
      Lines.Add(CommonPOS.CenterString(DMMidas.CDSSetupADDRESS2.Value,36));
      //Lines.Add(CommonPOS.CenterString(Trim(DMMidas.CDSSetupPUEBLO.Value),36));
      Lines.Add(CommonPOS.CenterString('CASHIER RECONCILIATION',36));
      //Lines.Add('CAJERO: ' + DMMidas.CDSPasswordsUSERNAME.Value);
      Lines.Add('CASHIER: ' + DMMidas.CDSDailyTotalsEMPLEADO.Value);
      Lines.Add('Reconc.#: ' + DMMidas.CDSDailyTotalsID.AsString);
      Lines.Add('Fecha: ' + DateToStr(Date) + ' Hora: ' + TimeToStr(Time));
      Lines.Add('------------------------------------');
      With DMMidas do
      begin
        With CDSDailyTotals do
        begin
          Lines.Add('CASH:       ' + Format('%24s',[Format('%m', [CDSDailyTotalsCASHCOUNT.asFloat])]));
          Lines.Add('CASH-BACK:  ' + Format('%24s',[Format('%m', [CDSDailyTotalsCASHBACK.asFloat])]));
          Lines.Add('CHECKS:     ' + Format('%24s',[Format('%m', [CDSDailyTotalsCHECKCOUNT.asFloat])]));
          Lines.Add('CREDIT CARD:' + Format('%24s',[Format('%m', [CDSDailyTotalsCCARDCOUNT.asFloat])]));
          Lines.Add('DEBIT:      ' + Format('%24s',[Format('%m', [CDSDailyTotalsATHCOUNT.asFloat])]));
          Lines.Add('PAY MOVIL:  ' + Format('%24s',[Format('%m', [CDSDailyTotalsATHMCOUNT.asFloat])]));
          Lines.Add('PAY OUTS:   ' + Format('%24s',[Format('%m', [CDSDailyTotalsPAYOUTCOUNT.asFloat])]));
          Lines.Add('H.CHARGE:   ' + Format('%24s',[Format('%m', [CDSDailyTotalsPOCOUNT.asFloat])]));
          Lines.Add('NO CHARGE:  ' + Format('%24s',[Format('%m', [CDSDailyTotalsOTHERCOUNT.asFloat])]));
          Lines.Add('STORE USE:  ' + Format('%24s',[Format('%m', [CDSDailyTotalsUTILITYREAD.asFloat])]));
          Lines.Add('TRIPLE-S:   ' + Format('%24s',[Format('%m', [CDSDailyTotalsTRIPLESREAD.asFloat])]));
          Lines.Add('PAYPAL:     ' + Format('%24s',[Format('%m', [CDSDailyTotalsPAYPALREAD.asFloat])]));
          Lines.Add('GRATUITY:   ' + Format('%24s',[Format('%m', [CDSDailyTotalsTIPSREAD.asFloat])]));
          Lines.Add('BANK/BASE:  ' + Format('%24s',[Format('%m', [CDSDailyTotalsSTARTBANK.asFloat])]));
          Lines.Add('                            ========');
          Lines.Add('TOTAL:      ' + Format('%24s',[Format('%m', [CDSDailyTotalsTOTAL_READ.asFloat])]));
          Lines.Add('');
          Lines.Add('REGISTER:   ' + Format('%24s',[Format('%m', [CDSDailyTotalsTOTAL_COUNT.asFloat])])); //CDSDailyTotalsCOUNTTOTAL
          Lines.Add('SALES:      ' + Format('%24s',[Format('%m', [CDSDailyTotalsTOTAL_READ.asFloat])]));
          Lines.Add('DIFFERENCE: ' + Format('%24s',[Format('%m', [CDSDailyTotalsDIFFERENCE_AMOUNT.asFloat])])); //CDSDailyTotalsDIFF
          //Lines.Add('OVER/SHORT: ' + Format('%24s',[CDSDailyTotalsOVRSHORT.asFloat]));
          Lines.Add('STATE TAX:  ' + Format('%24s',[Format('%m', [CDSDailyTotalsTAX_ESTATAL.asFloat])]));
          Lines.Add('REDUCED TAX:' + Format('%24s',[Format('%m', [CDSDailyTotalsTAX_PROCESSED_FOOD.asFloat])]));
          Lines.Add('TAX MUN.:   ' + Format('%24s',[Format('%m', [CDSDailyTotalsTAX_MUNICIPAL.asFloat])]));
          Lines.Add('TOTAL TAX:  ' + Format('%24s',[Format('%m', [CDSDailyTotalsTAX_ESTATAL.asFloat + CDSDailyTotalsTAX_MUNICIPAL.asFloat + CDSDailyTotalsTAX_PROCESSED_FOOD.asFloat])]));
          Lines.Add(Format('%36s',[DateToStr(CDSDailyTotalsSALESDATE.AsDateTime)]));
        end;
      end;
      if CommonPOS.PrintToScreen = False then
      begin
        Print('');
      end
      else
      begin
        FrmReceiptView.ShowModal;
      end;
    end;
    if DMMidas.CDSPasswordsPOS_CERRAR_CUADRE_ALIMPIRIMIR.Value = True then
      FrmEditDailyTotals.BtnOK.Click
    else
     Self.Close;;
  end
  else
  begin
    //DBChart1.Print;
  end;
end;

procedure TFrmEditDailyTotals.Button1Click(Sender: TObject);
begin
  if FrmMain.TCPClient.Port <>  2030 then
    ipe.logon;
  ipe.settle;
end;

procedure TFrmEditDailyTotals.PageControl1Change(Sender: TObject);
Var
  Day, Month, Year: Word;
begin
  DecodeDate(DMMidas.CDSDailyTotalsSALESDATE.AsDateTime,Year,Month,Day);
  If PageControl1.ActivePageIndex = 1 then
  begin
    With CDSDepts do
    begin
      Active := False;
      CommandText := 'Select transactiondetail.proddepartment, SUM(transactiondetail.total) as STotal From transactiondetail inner join transactionheader '
                   + 'on transactiondetail.transactionnumber = transactionheader.transactionnumber '
                   + 'Where '
                   + '(transactionheader.transactiondate = ''' + Format('%.2d/%.2d/%.4d',[Month,Day,Year]) +''') '
                   + 'AND (transactionheader.EmployNumber = ''' + DMMidas.CDSDailyTotalsEMPLOYNUMBER.Value + ''') '
                   + 'AND (transactionheader.Voided = 0) '
                   + 'AND (transactionheader.Shift = ' + IntToStr(SpinEdit1.Value)
                   + 'AND transactionheader.Register = ' + IntToStr(SpinEditNOCAJA.Value) + ') '
                   + 'GROUP BY transactiondetail.proddepartment';
      Active := True;
    end;
  end;
end;

procedure TFrmEditDailyTotals.TabSheet3Enter(Sender: TObject);
begin
  FrmEditDailyTotals.WindowState := wsMaximized;
  With CDSDepts do
  begin
    Close;
    CommandText := 'Select SUBDETAIL, sum(TOTAL) from VerTransacciones where PRODDEPARTMENT = ' + #39 + 'UTILIDAD' + #39 + ' AND FECHAVENTA = ' +  #39 + DateToStr(Date) + #39+ ' and EmployNumber =  '  + #39 + DMMidas.CDSPasswordsINICIALES.Value + #39 + ' AND REGISTER = ' + #39 + SpinEditNOCAJA.Text + #39 + ' and Shift = ' +#39 + SpinEdit1.Text + #39 + ' GROUP BY SUBDETAIL';
    Open;
  end;
end;

procedure TFrmEditDailyTotals.TabSheet2Show(Sender: TObject);
begin
  FrmEditDailyTotals.WindowState := wsMaximized;
  With CDSDepts do
  begin
    Close;
    CommandText := 'Select PRODDEPARTMENT, sum(TOTAL) from VerTransacciones where FECHAVENTA = ' +  #39 + DateToStr(Date) + #39+ ' and EmployNumber =  '  + #39 + DMMidas.CDSPasswordsINICIALES.Value + #39 + ' AND REGISTER = ' + #39 + SpinEditNOCAJA.Text + #39 + ' and Shift = ' +#39 + SpinEdit1.Text + #39 + ' GROUP BY PRODDEPARTMENT';
    Open;
  end;
end;

procedure TFrmEditDailyTotals.TabSheet1Show(Sender: TObject);
begin
  FrmEditDailyTotals.WindowState := wsNormal;
end;

procedure TFrmEditDailyTotals.SpeedButton10Click(Sender: TObject);
begin
    VerTransacciones('NCHG', 10);
end;

procedure TFrmEditDailyTotals.SpeedButton11Click(Sender: TObject);
begin
  VerTransacciones('PPAL', 15);
end;

procedure TFrmEditDailyTotals.SpeedButton12Click(Sender: TObject);
begin
  VerTransacciones('TSSS', 14);
end;

procedure TFrmEditDailyTotals.SpeedButton1Click(Sender: TObject);
begin
  VerTransacciones('Cheque', 3);
end;

procedure TFrmEditDailyTotals.SpeedButton2Click(Sender: TObject);
begin
  VerTransacciones('Targeta de Credito', 2);
end;

procedure TFrmEditDailyTotals.SpeedButton3Click(Sender: TObject);
begin
  VerTransacciones('ATHM', 4);
end;

procedure TFrmEditDailyTotals.VerTransacciones(TipoTrans: String; Indice: Integer);
begin
  FrmVerTrans := TFrmVerTrans.Create(Self);
  FrmVerTrans.FormStyle := fsNormal;
  FrmVerTrans.WindowState := wsNormal;
  DMMidas.CDSPasswords.First;
  DMMidas.CDSPasswords.Locate('INICIALES', CommonPOS.User, [loCaseInsensitive]);
  With FrmVerTrans do
  begin
    With DMMidas do
    begin
      dtpFrom.Date := StrToDate(formatdatetime('ddddd', CDSDailyTotalsSALESDATE.asDateTime));
      ComboBox2.Text := CDSDailyTotalsREGISTER.AsString;
      ComboBox1.ItemIndex := Indice;
      ComboBox1.Text := TipoTrans;
      ComboBox3.Text := CDSDailyTotalsID.AsString;
      ToolButton1.Click;
      Show;
    end;
  end;
end;


procedure TFrmEditDailyTotals.SpeedButton4Click(Sender: TObject);
begin
  VerTransacciones('CASH', 0);
end;

procedure TFrmEditDailyTotals.SpeedButton5Click(Sender: TObject);
begin
  VerTransacciones('POUT', 6);
end;

procedure TFrmEditDailyTotals.SpeedButton6Click(Sender: TObject);
begin
  VerTransacciones('CRED', 1);
end;

procedure TFrmEditDailyTotals.SpeedButton7Click(Sender: TObject);
begin
  FrmCalculateTotals := TFrmCalculateTotals.Create(self);
  with FrmCalculateTotals do
  begin
    ShowModal;
    DMMidas.CDSDailyTotalsCASHCOUNT.Value := StrToFloat(EditTotal.text);
    Free;
  end;
end;

procedure TFrmEditDailyTotals.SpeedButton8Click(Sender: TObject);
begin
  VerTransacciones('WIC', 8);
end;

procedure TFrmEditDailyTotals.SpeedButton9Click(Sender: TObject);
begin
  VerTransacciones('REF', 9);
end;

procedure TFrmEditDailyTotals.FormCreate(Sender: TObject);
Var
  AuthUser: String;
begin
  With DMMidas do
  begin
    AuthUser := CommonPOS.User;
    CDSPasswords.First;
    If CDSPasswords.Locate('INICIALES', Trim(AuthUser), [loCaseInsensitive]) Then
    begin
      if CDSPasswordsPOS_VER_TOTAL_CASH.Value = False then
      begin
        DBText1.Visible := False;
        //BtnPrint.Enabled := False;
      end;
    end;
    if CDSSetupSALESTECH_STAND_ALONE.Value = True then
    begin
      //QVentasDpt.SQLConnection := SQLConnectionSA;
    end;
  end;
end;

procedure TFrmEditDailyTotals.FormKeyPress(Sender: TObject; var Key: Char);
begin
  CommonForm.Enter2tab(Self,Key);
end;

procedure TFrmEditDailyTotals.FormShow(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSDailyTotals.Refresh;
    CDSDailyTotals.Edit;
  end;
  if FrmMain.LanguageStr = 'English' then
    language;
end;

procedure TFrmEditDailyTotals.language;
begin
  FrmEditDailyTotals.Caption :=  TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 200);
  label3.Caption :=  TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 004);
  label4.Caption :=  TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 201);
  label5.Caption :=  TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 202);
  label7.Caption :=  TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 018);
  label14.Caption :=  TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 203);
  label16.Caption :=  TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 011);
  label17.Caption :=  TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 010);
  labeL20.Caption :=  TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 204);
  label24.Caption :=  TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 205);
  label9.Caption :=  TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 206);
  //label10.Caption :=  TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 1352);
  label12.Caption :=  TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 194);
  TabSheet1.Caption :=  TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 208);

end;

end.
