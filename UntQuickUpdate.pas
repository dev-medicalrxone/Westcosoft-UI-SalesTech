unit UntQuickUpdate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, Mask, DBCtrls, StdCtrls, ExtCtrls, Buttons, db, ResourceLocalizer;

type
  TFrmQuickUpdate = class(TForm)
    ToolBar1: TToolBar;
    ToolButtonAdd: TToolButton;
    ToolButtonSave: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    EditBuscarMedicamento: TEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBText1: TDBText;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBLookupComboBox3: TDBLookupComboBox;
    Label6: TLabel;
    Label7: TLabel;
    EditQty: TEdit;
    Label1: TLabel;
    DBEdit5: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    Bevel1: TBevel;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    Bevel3: TBevel;
    cxDBDateEdit3: TDBEdit;
    cxDBDateEdit1: TDBEdit;
    cxDBDateEdit2: TDBEdit;
    procedure EditBuscarMedicamentoExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure EditQtyExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ToolButtonSaveClick(Sender: TObject);
    procedure ToolButtonAddClick(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure EditBuscarMedicamentoKeyPress(Sender: TObject; var Key: Char);
    procedure EditBuscarMedicamentoEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure language;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmQuickUpdate: TFrmQuickUpdate;

implementation

uses UntQueries, UntMain, UntDMMidas, UntCommon, UntSearchInv,
  UntEditInventory, UntEditInventorySP;

{$R *.dfm}

procedure TFrmQuickUpdate.EditBuscarMedicamentoExit(Sender: TObject);
Var
  Token1, Token2, Token3: String;
Begin
  With DMMidas do
  begin
    if EditBuscarMedicamento.Text > '' then
    begin
      Queries.MultiToken(EditBuscarMedicamento.Text, Token1, Token2, Token3);
      Queries.OpenInventory(Token1, '',false);
      if DMMidas.CDSInventarioPisoCODIGOBARRA.Value > '' then
      begin
        FrmSearchInv := TFrmSearchInv.Create(Self);
        With FrmSearchInv do
        Begin
          FrmSearchInv.FormStyle := fsNormal;
          if DMMidas.CDSInventarioPiso.RecordCount > 1 then
            FrmSearchInv.ShowModal
          else
            FrmSearchInv.ModalResult := mrOK;
        end;
        EditBuscarMedicamento.Text := '';
        FrmSearchInv.Release;
        DBEdit1.SetFocus;
      end
      else
      begin
        if FrmMain.LanguageStr = 'English' then
          ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 320))
        else
        ShowMessage('Medicamento no encontrado...');
        EditBuscarMedicamento.SetFocus;
      end;
    end;
  end;
end;


procedure TFrmQuickUpdate.SpeedButton1Click(Sender: TObject);
begin
//  FrmMain.dxBarButtonDpt.Click;
end;

procedure TFrmQuickUpdate.EditQtyExit(Sender: TObject);
Var
  StrProdID: String;
begin
  if EditQty.Text > '' then
  begin
    With DMMidas do
    begin
      if DSInventarioPiso.State <> dsEdit then
      begin
        CDSInventarioPiso.Edit;
      end;
        StrProdID := CDSInventarioPisoCODIGOBARRA.Value;
        ToolButtonSave.Click;
        if StrToFloat(EditQty.Text) > 0 then
          EditQty.Text := '-' + EditQty.Text
        else
          EditQty.Text := Copy(EditQty.Text, 2,10);
        Queries.InventoryControl(CDSInventarioPisoPRODUCTNO.Value, '', StrToFloat(EditQty.Text));
        Queries.OpenInventory(StrProdID, '',false);
        EditBuscarMedicamento.SetFocus
    end;
    EditQty.Text := '0';
  end;  
end;

procedure TFrmQuickUpdate.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DMMidas.DSInventarioPiso.AutoEdit := False;
end;

procedure TFrmQuickUpdate.FormCreate(Sender: TObject);
begin
  DMMidas.DSInventarioPiso.AutoEdit := True;
end;

procedure TFrmQuickUpdate.FormShow(Sender: TObject);
begin
  if FrmMain.LanguageStr = 'English' then
    language;
end;

procedure TFrmQuickUpdate.language;
begin
  label3.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 232);
  label4.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 233);
  label12.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 234);
  label7.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 235);
  GroupBox2.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 236);
  label8.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 237);
  label9.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 238);
  label11.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 239);
end;

procedure TFrmQuickUpdate.SpeedButton2Click(Sender: TObject);
begin
//  FrmMain.dxBarButton26.Click;
end;

procedure TFrmQuickUpdate.ToolButtonSaveClick(Sender: TObject);
var
  GProductNo, Departamento, Sub_departamento: Integer;
  Precio, Costo: Double;
begin
  With DMMidas do
  begin
    if (DSInventarioPiso.State = dsEdit) or (DSInventarioPiso.State = dsInsert) then
    begin
      GProductNo := CDSInventarioPisoGROUP_PRODUCTNO.Value;
      Costo := CDSInventarioPisoCOSTO.asFloat;
      Precio := CDSInventarioPisoPRECIO.asFloat;
      Departamento := CDSInventarioPisoDEPARTAMENTO.Value;
      Sub_departamento := CDSInventarioPisoSUB_DEPARTAMENTO.Value;
      If CDSInventarioPiso.ApplyUpdates(-1) = 0 then
      begin
        {SPGROUP_PROD_POS.Close;
        SPGROUP_PROD_POS.ParamByName('@PrecioPar').AsFloat := Precio;
        SPGROUP_PROD_POS.ParamByName('@CostoPar').AsFloat := Costo;
        SPGROUP_PROD_POS.ParamByName('@DeptPar').AsInteger := Departamento;
        SPGROUP_PROD_POS.ParamByName('@SUBDPT').AsInteger := SUB_DEPARTAMENTO;
        SPGROUP_PROD_POS.ParamByName('@GPNO').AsInteger := GPRODUCTNO;
        SPGROUP_PROD_POS.ExecProc;}
      end;
    end;
  end;
  EditBuscarMedicamento.SetFocus;
end;

procedure TFrmQuickUpdate.ToolButtonAddClick(Sender: TObject);
Var
  Barcode: String;
begin
  if DMMidas.CDSInventarioPiso.Active = false then
  begin
    Queries.OpenInventory('TYLENOL', '',false);
  end;
  FrmQuickUpdate.FormStyle := fsNormal;
  FrmEditInventorySP := TFrmEditInventorySP.Create(Self);
  With FrmEditInventorySP, DMMidas.CDSInventarioPiso do
  begin
    tbAppend.Click;
    ShowModal;
    if ModalResult = mrOk then
    begin
      Queries.OpenInventory(Trim(EditUPC.Text), '',false);
    end;
    FrmEditInventorySP := Nil;
    FrmEditInventorySP.Free;
  end;
  FrmQuickUpdate.BringToFront;
{
  FrmEditInventory := TFrmEditInventory.Create(Self);
  With FrmEditInventory do
  begin
    With DMMidas do
    begin
      CDSInventarioPiso.Append;
      ShowModal;
      If ModalResult = mrOK then
      begin
        Try
          Barcode := FrmEditInventory.DBEdit2.Text;
          //ProductID := IntToStr(CDSNoClienteGEN_ID.Value);
          CDSInventarioPiso.Post;
          CDSInventarioPiso.ApplyUpdates(-1);
          CDSInventarioPiso.Close;
          CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where Codigobarra = ' + #39 + Trim(Barcode) + #39;
          CDSInventarioPiso.Open;
          EditQty.SetFocus;
        except
          CDSInventarioPiso.Cancel;
        end;
      end
      else
        CDSInventarioPiso.cancel;
      Release;
    end;
  end;
  }
end;


procedure TFrmQuickUpdate.ToolButton3Click(Sender: TObject);
begin
  FrmQuickUpdate.FormStyle := fsNormal;
  FrmEditInventorySP := TFrmEditInventorySP.Create(Self);
  With FrmEditInventorySP, DMMidas.CDSInventarioPiso do
  begin
    Edit;
    ShowModal;
    If ModalResult = mrOK then
    begin
      Try
        Post;
      except
        Cancel;
      end;
    end
    else
      cancel;
    Release;
  end;
  FrmQuickUpdate.BringToFront;
end;

procedure TFrmQuickUpdate.ToolButton5Click(Sender: TObject);
begin
  if FrmMain.LanguageStr = 'English' then
    FrmMain.msgD := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 296)
  else
    FrmMain.msgD := 'Desea borrar este producto?';
  if MessageDlg(FrmMain.msgD,
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        DMMidas.CDSInventarioPiso.Delete;
      end;
end;

procedure TFrmQuickUpdate.ToolButton4Click(Sender: TObject);
begin
  DMMidas.CDSInventarioPiso.Refresh;
end;

procedure TFrmQuickUpdate.EditBuscarMedicamentoKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then
  Begin
    Key := #0;                                 { eat enter key }
    Self.Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
  end;
end;

procedure TFrmQuickUpdate.EditBuscarMedicamentoEnter(Sender: TObject);
begin
  if (DMMidas.CDSInventarioPiso.ChangeCount > 0) then DMMidas.CDSInventarioPiso.ApplyUpdates(0);
end;

end.
