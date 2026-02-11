unit tmpMedicamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ExtCtrls, DBCtrls, Db, Buttons, ComCtrls,
  ToolWin, Mask;

type
  TFBuscarOrdenes = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Bevel1: TBevel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label1: TLabel;
    Label22: TLabel;
    DBText1: TDBText;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    ToolBar1: TToolBar;
    EditSearchPM: TEdit;
    ToolButton12: TToolButton;
    ToolButton11: TToolButton;
    ToolButton1: TToolButton;
    ToolButton6: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton13: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    ToolButton9: TToolButton;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure EditSearchPMChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBuscarOrdenes: TFBuscarOrdenes;

implementation

uses UntDMMidas;

{$R *.DFM}

procedure TFBuscarOrdenes.ToolButton4Click(Sender: TObject);
begin
  DMMidas.CDSOrderHeader.Insert;
  DBEdit17.SetFocus;
end;

procedure TFBuscarOrdenes.ToolButton5Click(Sender: TObject);
begin
  With DMMidas do
  begin
    if (DSOrderHeader.State = dsEdit) or (DSOrderHeader.State = dsInsert) then
    begin
      CDSOrderHeader.Post;
      CDSOrderHeader.Refresh;
      CDSOrderHeader.Last;
    end;
  end;
end;

procedure TFBuscarOrdenes.ToolButton7Click(Sender: TObject);
begin
  DMMidas.CDSOrderHeader.Edit;
end;

procedure TFBuscarOrdenes.ToolButton9Click(Sender: TObject);
begin
  DMMidas.CDSOrderHeader.Cancel;
end;

procedure TFBuscarOrdenes.ToolButton10Click(Sender: TObject);
begin
  DMMidas.CDSOrderHeader.Refresh;
end;

procedure TFBuscarOrdenes.ToolButton8Click(Sender: TObject);
Var
  Mensage: String;
begin
{  if Prescription.Language = 'English' then
    Mensage := 'Do you wish to delete this Invoice?' else}
    Mensage := 'Desea borrar esta Factura?';
  if MessageDlg(Mensage,
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        With DMMidas do
        begin
          CDSOrderHeader.Delete;
          CDSOrderDetail.First;
          While not CDSOrderDetail.Eof do
          begin
            CDSOrderDetail.Delete;
            CDSOrderDetail.Next;
          end;
        end;
      end;
end;

procedure TFBuscarOrdenes.ToolButton1Click(Sender: TObject);
begin
  DMMidas.CDSOrderHeader.First;
end;

procedure TFBuscarOrdenes.ToolButton6Click(Sender: TObject);
begin
  DMMidas.CDSOrderHeader.Prior;
end;

procedure TFBuscarOrdenes.ToolButton2Click(Sender: TObject);
begin
  DMMidas.CDSOrderHeader.Next;
end;

procedure TFBuscarOrdenes.ToolButton3Click(Sender: TObject);
begin
  DMMidas.CDSOrderHeader.Last;
end;

procedure TFBuscarOrdenes.EditSearchPMChange(Sender: TObject);
begin
  DMMidas.CDSOrderHeader.Locate('OrderNumber', EditSearchPM.Text, []);
end;

end.
