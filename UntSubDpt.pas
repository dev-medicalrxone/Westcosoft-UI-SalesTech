unit UntSubDpt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ComCtrls, ToolWin,
  Data.DB;

type
  TFrmSubDept = class(TForm)
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton12: TToolButton;
    ToolButton9: TToolButton;
    ToolButton6: TToolButton;
    ToolButton10: TToolButton;
    TlBtnPost: TToolButton;
    ToolButton7: TToolButton;
    ToolButton11: TToolButton;
    ToolButton8: TToolButton;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure TlBtnPostClick(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSubDept: TFrmSubDept;

implementation

uses UntDMMidas;

{$R *.dfm}

procedure TFrmSubDept.ToolButton4Click(Sender: TObject);
begin
  DMMidas.CDSSubDept.Prior;
end;

procedure TFrmSubDept.ToolButton5Click(Sender: TObject);
begin
  DMMidas.CDSSubDept.Next;
end;

procedure TFrmSubDept.ToolButton1Click(Sender: TObject);
begin
  DMMidas.CDSSubDept.append;
end;

procedure TFrmSubDept.ToolButton2Click(Sender: TObject);
begin
  DMMidas.CDSSubDept.Edit;
end;

procedure TFrmSubDept.ToolButton3Click(Sender: TObject);
begin
  If MessageDlg('¿Realmente quiere borrar?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
    DMMidas.CDSDepartamentos.Delete;
end;

procedure TFrmSubDept.ToolButton9Click(Sender: TObject);
begin
  DMMidas.CDSSubDept.Cancel;
end;

procedure TFrmSubDept.TlBtnPostClick(Sender: TObject);
begin
  DMMidas.CDSSubDept.ApplyUpdates(-1);
  DMMidas.CDSSubDept.Refresh;
end;

procedure TFrmSubDept.ToolButton6Click(Sender: TObject);
begin
  DMMidas.CDSSubDept.Post;
end;

procedure TFrmSubDept.ToolButton7Click(Sender: TObject);
begin
  DMMidas.CDSSubDept.CancelUpdates;
end;

procedure TFrmSubDept.ToolButton8Click(Sender: TObject);
begin
  DMMidas.CDSSubDept.Refresh;
end;

procedure TFrmSubDept.FormCreate(Sender: TObject);
begin
  if DMMidas.CDSSubDept.active = false then DMMidas.CDSSubDept.Active := True;
end;

end.
