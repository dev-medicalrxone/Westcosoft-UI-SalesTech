unit UntEditCustomer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, ToolWin, ComCtrls, db, Mask,
  DBCtrls, Vcl.Touch.Keyboard, ResourceLocalizer;

type
  TFrmEditCustomer = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    TouchKeyboard1: TTouchKeyboard;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    Label4: TLabel;
    Label15: TLabel;
    Label2: TLabel;
    Label23: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label6: TLabel;
    Label22: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    SpeedButton1: TSpeedButton;
    Label24: TLabel;
    SpeedButton2: TSpeedButton;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Bevel1: TBevel;
    Bevel3: TBevel;
    Label36: TLabel;
    Label28: TLabel;
    SpeedButton3: TSpeedButton;
    Bevel2: TBevel;
    Label29: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit26: TDBEdit;
    DBMemo1: TDBMemo;
    DBCheckBox1: TDBCheckBox;
    TabSheet2: TTabSheet;
    Label5: TLabel;
    DBEdit27: TDBEdit;
    SpeedButton4: TSpeedButton;
    Label7: TLabel;
    DBComboBox2: TDBComboBox;
    procedure DBEdit1Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure language;
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEditCustomer: TFrmEditCustomer;

implementation

uses UntDMMidas, UntQueries, untMain, UntSearchNoSocio, UntCommonPOS,
  untCustomerClassification;

{$R *.DFM}

procedure TFrmEditCustomer.DBEdit1Enter(Sender: TObject);
begin
  With Sender as TDBEdit do
  begin
    If Focused then Color := clYellow else Color := clWhite;
  end;
end;

procedure TFrmEditCustomer.FormCreate(Sender: TObject);
begin

  {if FrmMain.WebCredit = True then
  begin
    DBEdit16.DataField := 'DEUDACentralizada';
  end
  else DBEdit16.DataField := 'DEUDA'; }
end;

procedure TFrmEditCustomer.SpeedButton1Click(Sender: TObject);
Var
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  if CommonPOS.isAuthorized('',UserRights.CUST_IBAL, false) then
  begin
    DBEdit14.ReadOnly := False;
  end;  
end;

procedure TFrmEditCustomer.FormShow(Sender: TObject);
begin
  {if (FrmMain.WebCredit = True) then
    DBEdit16.DataField := 'DeudaCentralizada'; }
  if FrmMain.LanguageStr = 'English' then
    language;
end;

procedure TFrmEditCustomer.language;
begin
  FrmEditCustomer.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 081);
  Label2.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 082);
  Label1.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 083);
  Label9.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 084);
  Label10.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 085);
  Label11.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 086);
  Label4.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 087);
  Label15.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 088);
  Label23.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 089);
  Label19.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 090);
  Label6.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 091);
  Label33.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 092);
  Label34.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 093);
  Label35.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 094);
  Label16.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 043);
  Label29.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 095);
  Label20.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 096);
  Label18.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 097);
  Label26.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 098);
  Label28.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 099);
  Label25.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 100);
  Label24.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 052);
end;

procedure TFrmEditCustomer.SpeedButton2Click(Sender: TObject);
Var
  AuthUser, NoSocio, msg2: String;

begin
  //if (Trim(DMMidas.CDSClientesSOCIO.Value) = '')  or (Trim(DMMidas.CDSClientesSOCIO.Value) = '0') then
  AuthUser := CommonPOS.User;
  if CommonPOS.isAuthorized('',UserRights.MAIN_ACCTS, false) then
  begin
    FrmSearchNoSocio := TFrmSearchNoSocio.Create(Self);
    With FrmSearchNoSocio do
    begin
      ShowModal;
      NoSocio := FrmSearchNoSocio.EditSearch.Text;
      With DMMidas do
      begin
        CDSClientes2.Close;
        CDSClientes2.CommandText := 'Select * from Pacientes with (NOLOCK) where Socio = ' + chr(39) + NoSocio + chr(39);
        CDSClientes2.Open;
        if CDSClientes2NOMBRE.Value > '' then
        begin
          CDSClientes2.Close;
            if FrmMain.LanguageStr = 'English' then
            ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 317))
          else
          ShowMessage('Cliente existe...');
        end
        else
        begin
          if FrmMain.LanguageStr = 'English' then
          begin
            FrmMain.msgD := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 297);
            msg2 := TResourceLocalizer.GetString(FrmMain.LanguageResOffset, 298);
          end
          else
          begin
            FrmMain.msgD := 'Desea anadir el numero de socio ';
            msg2 := ' a este cliente?'
          end;
          if MessageDlg(FrmMain.msgD + NoSocio + msg2,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            CDSClientes2.Close;
            CDSClientesSOCIO.Value := NoSocio;
          end;
        end;
      end;
      Free;
    end;
  end;
end;

procedure TFrmEditCustomer.SpeedButton3Click(Sender: TObject);
Var
  AuthUser: String;
begin
  With FrmMain do
  begin
    AuthUser := CommonPOS.User;
    //If IsAuthorized(AuthUser,52) then
    //if CommonPOS.isAuthorized('MAIN_INV') then
    begin
      DBEdit25.ReadOnly := False;
      DBEdit25.Enabled := True;
    end;
  end;
end;

procedure TFrmEditCustomer.SpeedButton4Click(Sender: TObject);
begin
  frmCustomerClassification := TfrmCustomerClassification.Create(nil);
  With frmCustomerClassification do
  begin
    ShowModal;
    if ModalResult = mrOk then
    begin
      DMMidas.CDSClientesCLASIFICATION.Value := Trim(Copy(DMMidas.cdsCUSTOMER_CLASSIFICATIONCLIENT_CASSIFICATION.Value, 1,20));
    end;
    frmCustomerClassification := Nil;
    Free;
  end;
end;

procedure TFrmEditCustomer.BitBtn3Click(Sender: TObject);
Var
  NoCliente: Integer;
begin
  With DMMidas do
  begin
    NoCliente := CDSClientesNUMEROCLIENTE.Value;
    CDSClientes.Post;
    CDSClientes.Close;
    CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where NumeroCliente = ' + IntToStr(NoCliente);
    CDSClientes.Open;
    //ppReport1.Print;
    //BitBtn1.Click;
  end;
end;

procedure TFrmEditCustomer.BitBtn4Click(Sender: TObject);
Var
  NoCliente: Integer;
begin
  With DMMidas do
  begin
    NoCliente := CDSClientesNUMEROCLIENTE.Value;
    Try
      CDSClientes.Post;
    Except
     //
    end;
    CDSClientes.Close;
    CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where NumeroCliente = ' + IntToStr(NoCliente);
    CDSClientes.Open;

    {if Length(CDSClientesNombreCompleto2.Value) <= 30 then ppDBText1.Font.Size := 9;

    if Length(CDSClientesMailingAddDefine.Value) < 50 then ppDBMemo1.Font.Size := 8;
    if Length(CDSClientesMailingAddDefine.Value) < 40 then ppDBMemo1.Font.Size := 10;
    if Length(CDSClientesMailingAddDefine.Value) > 60 then ppDBMemo1.Font.Size := 7;
    ppReport2.Print;}
  end;
end;

end.
