unit UntBrowseInv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TFrmBrowseInventory = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    cxButton2: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    Search: TEdit;
    procedure SearchEnter(Sender: TObject);
    procedure SearchExit(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure SearchKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBrowseInventory: TFrmBrowseInventory;

implementation

uses UntDMMidas, UntQueries;

{$R *.dfm}

procedure TFrmBrowseInventory.SearchEnter(Sender: TObject);
begin
  Search.Text := '';
end;

procedure TFrmBrowseInventory.SearchExit(Sender: TObject);
Var
  Token1: String;
begin
  if Search.Text > ' ' then
  begin
    Token1 := Trim(Search.Text);
    Queries.OpenInventory(Token1, '',false);
    if DMMidas.CDSInventarioPiso.RecordCount = 0 then
    begin
      ShowMessage('Product not found...');
      Search.SetFocus;
    end;
  end;
end;

procedure TFrmBrowseInventory.cxButton2Click(Sender: TObject);
begin
  DMMidas.CDSInventarioPiso.ApplyUpdates(-1);
end;

procedure TFrmBrowseInventory.SearchKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
    Begin
      Key := #0;                                 { eat enter key }
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
end;

end.
