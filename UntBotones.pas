unit UntBotones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, ToolWin, ComCtrls, db;

type
  TFrmBotones = class(TForm)
    Panel1: TPanel;
    Button2: TButton;
    DBGrid1: TDBGrid;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    DBImage1: TDBImage;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBotones: TFrmBotones;

implementation

uses UntDMMidas, UntSearchInv2, untMain, UntEditarBotones;

{$R *.dfm}

procedure TFrmBotones.ToolButton1Click(Sender: TObject);
begin
  FrmBotonesEdit := TFrmBotonesEdit.Create(nil);
  With FrmBotonesEdit do
  begin
    DMMidas.CDSBotones.Insert;
    ShowModal;
    Free;
  end;
end;

procedure TFrmBotones.ToolButton2Click(Sender: TObject);
begin
  dmmidas.CDSBotones.Cancel;
end;

procedure TFrmBotones.ToolButton3Click(Sender: TObject);
begin
  FrmBotonesEdit := TFrmBotonesEdit.Create(nil);
  With FrmBotonesEdit do
  begin
    ShowModal;
    Free;
  end;
end;

procedure TFrmBotones.ToolButton5Click(Sender: TObject);
begin
  With DMMidas do
  begin
    if MessageDlg('Desea borrar ese boton?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      CDSBotones.Delete;
      CDSBotones.Refresh;
    end;
  end;

end;

end.
