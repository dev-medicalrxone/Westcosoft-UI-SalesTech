unit UntMercanciaRecibida;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask;

type
  TFMercanciaRecibida = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBNavigator1: TDBNavigator;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    EditNuevoInventario: TEdit;
    Label12: TLabel;
    EditCantidadRecibida: TEdit;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    EditCosto: TEdit;
    Label14: TLabel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    LabelNDC: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditCantidadRecibidaChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
  private
    { Private declarations }
//    Costo: Double;
  public
    { Public declarations }
  end;

var
  FMercanciaRecibida: TFMercanciaRecibida;

implementation

uses UOrdenes, UntDMMidas;

{$R *.DFM}

procedure TFMercanciaRecibida.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;                                 { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFMercanciaRecibida.EditCantidadRecibidaChange(Sender: TObject);
begin
  //EditNuevoInventario.Text := FloatToStr(StrToFloat(EditCantidadRecibida.Text) +
  //                             DMMidas.CDS .Value);
  //Prescription.Precios(StrToFloat(EditCantidadRecibida.Text));
  //EditCosto.Text := Format('%n', [Prescription.Costo]); //FloatToStr(Prescription.Costo);
end;

procedure TFMercanciaRecibida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  if DtMdlData.TInventario2.Modified = True then
//       DtMdlData.TInventario2.Post;
end;

procedure TFMercanciaRecibida.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
Var
  NDCTFC: Char;
  NDCTF: String;
begin
  NDCTF := Copy(EditCosto.Text, 1, 1);
  NDCTFC := NDCTF[1];
  if (ord(NDCTFC) >= 48) and (ord(NDCTFC) <= 57) then
    CanClose := True
  else
  begin
    ShowMessage('Debe entrar el costo del articulo o medicamento para poder continuar, gracias');
    CanClose := False;
    EditCosto.SetFocus;
  end;
end;

procedure TFMercanciaRecibida.FormCreate(Sender: TObject);
begin
//  LabelNDC.Caption :=  DMMidas.CDSInventarioNDC.Value;
//  Costo := DMMidas.CDSInventarioCosto.Value;
end;

procedure TFMercanciaRecibida.DBEdit3Exit(Sender: TObject);
begin
//  if DtMdlData.TInventario2.Modified = True then  DtMdlData.TInventario2.Post;
end;

end.
