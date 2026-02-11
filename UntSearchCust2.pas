unit UntSearchCust2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, Keyboard, Buttons,
   ToolWin, ComCtrls, ImgList, Mask, DBCtrls, Data.DB, System.ImageList, ResourceLocalizer;

type
  TFrmSearchCust2 = class(TForm)
    ImageList1: TImageList;
    GroupBox1: TGroupBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    EdtSearch: TEdit;
    cxRadioGroup1: TRadioGroup;
    dbgrid: TDBGrid;
    DBEdit8: TDBEdit;
    Label2: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    DBEdit14: TDBEdit;
    Label3: TLabel;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    DBEdit12: TDBEdit;
    Label4: TLabel;
    Label15: TLabel;
    DBEdit7: TDBEdit;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    Label22: TLabel;
    DBEdit11: TDBEdit;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit9: TDBEdit;
    Label20: TLabel;
    Label19: TLabel;
    DBEdit13: TDBEdit;
    Label23: TLabel;
    DBEdit10: TDBEdit;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    TouchKeyboard1: TTouchKeyboard;
    Panel2: TPanel;
    btnOK: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EditSearchCustPropertiesChange(Sender: TObject);
    procedure BtnNewClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnOpenClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdtSearchEnter(Sender: TObject);
    procedure EdtSearchKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure dbgridEnter(Sender: TObject);
    procedure language;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSearchCust2: TFrmSearchCust2;

implementation

uses UntDMMidas, UntQueries, untMain, UntCommon, UntDMCentralCredit,
  UntCommonPOS;

{$R *.dfm}

procedure TFrmSearchCust2.BitBtn1Click(Sender: TObject);
begin
  DMMidas.CDSClientes.Next;
end;

procedure TFrmSearchCust2.BitBtn2Click(Sender: TObject);
begin
  DMMidas.CDSClientes.Prior;
end;

procedure TFrmSearchCust2.EditSearchCustPropertiesChange(Sender: TObject);
Var
  Token1, Token2, Token3: String;
  NCust: Integer;
begin
  if Trim(EdtSearch.Text) > '' then
  begin
    btnOK.Enabled := True;
    Queries.MultiToken(EdtSearch.Text, Token1, Token2, Token3);
    Queries.OpenPatient(Token1, Token2, Token3, 0);
  end;
end;


procedure TFrmSearchCust2.BtnNewClick(Sender: TObject);
begin
  if DMMidas.CDSClientes.Active = False then DMMidas.CDSClientes.Active := True;
  DBEdit14.ReadOnly := False;
  DMMidas.CDSClientes.Append;
end;

procedure TFrmSearchCust2.BtnSaveClick(Sender: TObject);
Var
  No: Integer;
begin
  With DMMidas do
  begin
    if CDSClientes.Active = False then CDSClientes.Active := True;
    CDSClientes.Post;
    CDSClientes.ApplyUpdates(-1);
    sdsLastIdentity.Close;
    sdsLastIdentity.Open;
    No := sdsLastIdentity.Fields[0].asInteger;
    //Queries.OpenPatient('','','', no);
    CDSClientes.Close;
    CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where numerocliente = ' + IntToStr(No);
    CDSClientes.Open;
    DBEdit14.ReadOnly := True;
  end;
end;

procedure TFrmSearchCust2.dbgridEnter(Sender: TObject);
begin
  btnOK.Enabled := True;
end;

procedure TFrmSearchCust2.BtnOpenClick(Sender: TObject);
begin
  if DMMidas.CDSClientes.Active = False then DMMidas.CDSClientes.Active := True;
  DMMidas.CDSClientes.Edit;
end;

procedure TFrmSearchCust2.BtnDeleteClick(Sender: TObject);
begin
  if DMMidas.CDSClientes.Active = False then DMMidas.CDSClientes.Active := True;
  ShowMessage('Not autorized...');
end;

procedure TFrmSearchCust2.FormCreate(Sender: TObject);
begin
  cxRadioGroup1.ItemIndex := CommonPOS.OpcionBusqueda;
end;

procedure TFrmSearchCust2.FormShow(Sender: TObject);
Var
  AuthUser : String;
begin
  if self.Tag = 0 then
  begin
    With DMMidas do
    begin
      CDSClientes.Close;
    end;
    EdtSearch.SetFocus;
  end
  else
  begin
    dbgrid.SetFocus;
  end;
  if FrmMain.LanguageStr = 'English' then
    language;
end;

procedure TFrmSearchCust2.language;
begin
  TabSheet1.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 052);
  TabSheet2.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 061);
  cxRadioGroup1.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 348);
  cxRadioGroup1.Items[0] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 240);
  cxRadioGroup1.Items[1] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 041);
  cxRadioGroup1.Items[2] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 089);
  cxRadioGroup1.Items[3] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 349);
  cxRadioGroup1.Items[4] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 082);
  dbgrid.Columns[0].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 240);
  dbgrid.Columns[1].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 089);
  dbgrid.Columns[2].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 096);
  dbgrid.Columns[3].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 097);
  dbgrid.Columns[4].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 082);
  dbgrid.Columns[5].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 350);
end;

procedure TFrmSearchCust2.ToolButton1Click(Sender: TObject);
Var
  Amount: String;
  Year, Month, Day: Word;
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  if CommonPOS.isAuthorized('',UserRights.CUST_IBAL, false) then
  begin
    DecodeDate(Date, Year, Month, Day);
    Amount := '0';
    If InputQuery('Patrociio inicial','Entre la cantidad',Amount) then
    begin
      Try
        With DMMidas.FDQuery1 do
        begin
          SQL.Text := 'Insert Into ClientTransactions (CODE, AMOUNT, DATEOFTRANS, ATTENDEDBY, CLIENTNO, TRANSNO, PAIDAMOUNT, BALANCE) ' +
                   		'Values (' + chr(39) + 'PC' + chr(39) +',' + AMOUNT +',' + chr(39) + DateToStr(Date) + chr(39) + ',' + chr(39) + CommonPOS.User + chr(39) + ',' +  DMMidas.CDSClientesNUMEROCLIENTE.AsString + ',' +  '0, 0, 0)';
          ExecSQL;
          DMMidas.CDSClientes.Refresh;
        end;
      except
      begin
        if FrmMain.LanguageStr = 'English' then
          ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 267))
        else
        ShowMessage('Cantidad inválida');
      end;
      end;
    end;
  end;
end;

procedure TFrmSearchCust2.EdtSearchEnter(Sender: TObject);
begin
  btnOK.Enabled := False;
end;

procedure TFrmSearchCust2.EdtSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  CommonForm.Enter2tab(Self,Key);
end;

end.
