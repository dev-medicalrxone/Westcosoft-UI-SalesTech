unit UntSearchInv2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, dbcgrids, ExtCtrls, Buttons, Keyboard, ResourceLocalizer;

type
  TFrmSearchInv2 = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    Panel3: TPanel;
    EditSearchProd: TEdit;
    TouchKeyboard1: TTouchKeyboard;
    Panel1: TPanel;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    BtnOK: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn3: TBitBtn;
    DBText6: TDBText;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EditSearchProdExit(Sender: TObject);
    procedure EditSearchProdKeyPress(Sender: TObject; var Key: Char);
    procedure EditSearchProdEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBCtrlGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure language;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSearchInv2: TFrmSearchInv2;

implementation

uses UntDMMidas, UntQueries, UntCommon, Math, UntEditInventorySP,
  UntEditInventory, UntCommonPOS, UntPOSRest, untMain;

{$R *.dfm}

procedure TFrmSearchInv2.BitBtn1Click(Sender: TObject);
begin
  DMMidas.CDSInventarioPiso.Next;
end;

procedure TFrmSearchInv2.BitBtn2Click(Sender: TObject);
begin
  DMMidas.CDSInventarioPiso.Prior;
end;

procedure TFrmSearchInv2.BitBtn3Click(Sender: TObject);
begin
  if CommonPOS.isAuthorized('MAIN_INV',UserRights.MAIN_INV, true) then
  begin
    FrmEditInventorySP := TFrmEditInventorySP.Create(Self);
    With FrmEditInventorySP do
    begin
      ShowModal;
      FrmEditInventory := Nil;
      FrmEditInventorySP.Free;
      DMMidas.CDSInventarioPiso.Refresh;
    end;
  end;
end;

procedure TFrmSearchInv2.BitBtn5Click(Sender: TObject);
begin
  Queries.OpenInventory(Trim(DMMidas.CDSInventarioPisoCodigoBarra.Value), '', false);
end;

procedure TFrmSearchInv2.DBCtrlGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then                              { if it's an enter key }
  Begin
    BtnOK.Click;            { move to next control }
  END;
end;

procedure TFrmSearchInv2.EditSearchProdExit(Sender: TObject);
Var
  Token1: String;
{begin
  if EditSearchProd.Text > ' ' then
  begin
    Token1 := Trim(EditSearchProd.Text);
    Queries.OpenInventory2(Token1, '');
    //ShowMessage(IntToStr(DMMidas.CDSInventarioPiso.RecordCount));
    if DMMidas.CDSInventarioPiso2.RecordCount = 0 then
    begin
      ShowMessage('Product not found!...');
      EditSearchProd.SetFocus;
    end
    else
      EditSearchProd.Text := '';
  end;
end;}
begin
  If Trim(EditSearchProd.Text) <> '' then
  begin
    IF DBCtrlGrid1.DataSource = DMMidas.DSInventarioPiso then Queries.OpenInventory(Trim(EditSearchProd.Text), '', false)
    else
    begin
      if EditSearchProd.Text > ' ' then
      begin
        Token1 := Trim(EditSearchProd.Text);
        Queries.OpenInventory2(Token1, '');
        //ShowMessage(IntToStr(DMMidas.CDSInventarioPiso.RecordCount));
        if DMMidas.CDSInventarioPiso2.RecordCount = 0 then
        begin
          ShowMessage('Product not found!...');
          EditSearchProd.SetFocus;
        end
        else
          EditSearchProd.Text := '';
      end;
    end;
    //BitBtn3.SetFocus;
  end;
  BtnOK.Enabled := True;
end;


procedure TFrmSearchInv2.EditSearchProdKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then                              { if it's an enter key }
  Begin
    Key := #0;                                 { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
  END;
end;

procedure TFrmSearchInv2.EditSearchProdEnter(Sender: TObject);
begin
   BtnOK.Enabled := False;
end;

procedure TFrmSearchInv2.FormCreate(Sender: TObject);
begin
  With DMMidas do
  begin
    if Assigned(FrmPOSRest) then
    begin
      if CommonPos.Customer > 0 then
      begin
        if CDSClientesRETAILPRICE_SELECTED.Value = 'Price 2' then DBText4.DataField := 'PRECIOVENTA2';
        if CDSClientesRETAILPRICE_SELECTED.Value = 'Price 3' then DBText4.DataField := 'PRECIOVENTA3';
      end;
    end;

  end;
end;

procedure TFrmSearchInv2.FormShow(Sender: TObject);
begin
  If Tag = 0 then DBCtrlGrid1.SetFocus
  else
    EditSearchProd.SetFocus;
  if FrmMain.LanguageStr = 'English' then
    language;
end;

procedure TFrmSearchInv2.language;
begin
  label2.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 225);
  label3.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 229);
  label4.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 113);
  BitBtn5.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 226);
  BitBtn3.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 227);
  FrmSearchInv2.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 228);
end;

end.
