unit UntSearchCust;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ExtCtrls, Buttons, DBCtrls, DB, Variants;

type
  TFrmSearchCust = class(TForm)
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Edit1: TEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LMDDockSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSearchCust: TFrmSearchCust;

implementation

uses UntDMMidas, UntQueries, UntEditCustomer, untMain, UntCommonPOS;

{$R *.DFM}

procedure TFrmSearchCust.Edit1Change(Sender: TObject);
Var
  NCust: Integer;
  Token1, Token2, Token3: String;
begin
  Queries.MultiToken(Edit1.Text, Token1, Token2, Token3);
  Try
    NCust := StrToInt(Token1);
    Queries.OpenPatient(Token1, Token2, Token3, NCust);
  except
    Queries.OpenPatient(Token1, Token2, Token3, 0);
  end;
  if DMMidas.CDSClientes.RecordCount = 0 then
  begin
    ShowMessage('Paciente no encontrado...');
    Edit1.SetFocus;
  end;
end;

procedure TFrmSearchCust.FormCreate(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSClientes.Active := False;
    CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK)';
    CDSClientes.Active := True;
  end;
  {if FrmMain.WebCredit = True then
  begin
    DBGrid1.Columns[6].FieldName := 'DEUDACentralizada';
    DBGrid1.Columns[6].Title.Caption := 'DEUDA';
  end}

end;

procedure TFrmSearchCust.LMDDockSpeedButton1Click(Sender: TObject);
Var
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  if CommonPOS.isAuthorized('',UserRights.MAIN_CUST, False) then
  begin
    FrmEditCustomer := TFrmEditCustomer.Create(Self);
    With FrmEditCustomer, DMMidas.CDSClientes do
    begin
      Append;
      //FieldByName('NUMEROCLIENTE').Value := 0;
      ShowModal;
      If ModalResult = mrOK then
      begin
        Post;
        If DMMidas.CDSClientes.ApplyUpdates(-1) <> 0 then
        begin
          ShowMessage('No pude guardar la información');
        end;
      end
      else
        cancel;
      Release;
    end;
  end;
end;

end.
