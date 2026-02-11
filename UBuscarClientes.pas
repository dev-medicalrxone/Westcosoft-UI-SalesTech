unit UBuscarClientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ExtCtrls, Buttons;

type
  TFBuscarClientes = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    procedure BuscarClientes;
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBuscarClientes: TFBuscarClientes;

implementation

uses UData, UCommonObj, UPOS, UBuscarClientesQuery;

{$R *.DFM}

Procedure TFBuscarClientes.BuscarClientes;
Var
  Token1, Token2, Token3, TmpString: String;
Begin
  Token1 := '';
  Token2 := '';
  Token3 := '';
  TmpString := Trim(BCliente.Buscar);
  If Length(TmpString) <> 0 then
  Begin
    If Pos(' ',TmpString) <> 0 then
    Begin
      Token1 := Trim(Copy(TmpString,1,Pos(' ',TmpString)));
      TmpString := Trim(Copy(TmpString,Pos(' ',TmpString),Length(TmpString)));
      If Length(TmpString) <> 0 then
      Begin
        If Pos(' ',TmpString) <> 0 then
        Begin
          Token2 := Trim(Copy(TmpString,1,Pos(' ',TmpString)));
          TmpString := Trim(Copy(TmpString,Pos(' ',TmpString),Length(TmpString)));
          If Length(TmpString) <> 0 then
          Begin
            If Pos(' ',TmpString) <> 0 then
            Begin
              Token3 := Trim(Copy(TmpString,1,Pos(' ',TmpString)));
            end
            Else
            Begin
              Token3 := TmpString;
            end;
          end;
        end
        Else
        Begin
          Token2 := TmpString;
        end;
      end;
    end
    Else
    Begin
      Token1 := TmpString;
    end;
  end;
  Data.QBuscarClientes.Close;
  Data.QBuscarClientes.ParamByName('Token1').AsString := Trim(Token1) + '%';
  Data.QBuscarClientes.ParamByName('Token2').AsString := Trim(Token2) + '%';
  Data.QBuscarClientes.ParamByName('Token3').AsString := Trim(Token3) + '%';
  Data.QBuscarClientes.Open;

  FBuscarPatQuery := TFBuscarPatQuery.Create(Self);
  With FBuscarPatQuery do
    Begin
      ShowModal;
      if ModalResult = mrOK then
        Begin
          NoCliente := Data.QBuscarClientesNumeroCliente.Value;
          Data.TClientes.Locate('NumeroCliente', NoCliente,[]);
          FPOS.ESearchPat.Text := '';
        end;
    end;
end;

procedure TFBuscarClientes.Edit1Exit(Sender: TObject);
begin
  BCliente.Buscar := Edit1.Text;
  BuscarClientes;
end;

end.
