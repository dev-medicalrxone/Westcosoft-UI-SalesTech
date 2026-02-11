unit UntCustomerTabs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Touch.Keyboard, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.DBCGrids, Vcl.ExtCtrls, db;

type
  TFrmStartTab = class(TForm)
    Panel1: TPanel;
    EdtSearch: TEdit;
    Panel3: TPanel;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    Panel2: TPanel;
    btnCancel: TButton;
    btnOK: TButton;
    btnStartNewTab: TButton;
    TouchKeyboard1: TTouchKeyboard;
    DBText2: TDBText;
    DBCtrlGrid2: TDBCtrlGrid;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    Panel4: TPanel;
    Label1: TLabel;
    BtnAddTable: TButton;
    procedure EdtSearchChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmStartTab: TFrmStartTab;

implementation

{$R *.dfm}

uses UntDMMidas, UntQueries, UntCommonPOS;


procedure TFrmStartTab.EdtSearchChange(Sender: TObject);
Var
  Token1, Token2, Token3: String;
  NCust: Integer;
begin
//  if (CommonPOS.Restaurant = True) or (DMMidas.CDSSetupAUTOMOVIL_APP.Value = True) then
//  begin
    if Trim(EdtSearch.Text) > '' then
    begin
      Queries.MultiToken(EdtSearch.Text, Token1, Token2, Token3);
      Queries.OpenPatient(Token1, Token2, Token3, 0);
      DMMidas.CDSClientes.open;
      if DMMidas.CDSClientes.RecordCount = 0 then
        btnOK.Visible := False
      else
      begin
        btnOK.Visible := True;
      end;
      DMMidas.cdsOpenTabs.Locate('CUSTOMER', EdtSearch.Text, [loPartialKey, loCaseInsensitive]);
    end;
  //end;
end;

procedure TFrmStartTab.FormCreate(Sender: TObject);
begin
  With DMMidas do
  begin
    {
    cdsOpenTabs.Close;
    cdsOpenTabs.CommandText := 'Select * from OPEN_TABS where BALANCE > 0 order by Customer';
    cdsOpenTabs.Open;
    }
    if CommonPOS.Restaurant = False then
    begin
      btnStartNewTab.Caption := 'Save Trans.';
      btnOK.Visible :=  False;
    end;
    if DMMidas.CDSSetupAUTOMOVIL_APP.Value = True then
    begin
      btnStartNewTab.Caption := 'Save Trans.';
      btnOK.Visible :=  True;
    end;
    if CommonPOS.Customer > 0 then
    begin
      btnOK.Visible :=  True;
    end;
  end;
end;

end.
