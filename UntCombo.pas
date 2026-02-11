unit UntCombo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, ToolWin, ExtCtrls, StdCtrls, db, Buttons;

type
  TFrmCombo = class(TForm)
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    ToolButton2: TToolButton;
    Label1: TLabel;
    ToolBar2: TToolBar;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    Edit1: TEdit;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    procedure ToolButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCombo: TFrmCombo;

implementation

uses UntDMMidas, untMain, UntSearchInv, UntSearchInv2;

{$R *.dfm}

procedure TFrmCombo.Edit1Change(Sender: TObject);
begin
  DMMidas.CDSCombo.Locate('Product', Trim(Edit1.Text), [loPartialkey, loCaseInsensitive]);
end;

procedure TFrmCombo.FormCreate(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSCombo.Close;
    CDSCombo.CommandText := 'Select * from Combo order by Product';
    CDSCombo.Open;
  end;
end;

procedure TFrmCombo.ToolButton10Click(Sender: TObject);
begin
  DMMidas.CDSCombo.Delete;
end;

procedure TFrmCombo.ToolButton11Click(Sender: TObject);
begin
  DMMidas.CDSCombo.Cancel;
end;

procedure TFrmCombo.ToolButton12Click(Sender: TObject);
begin
  DMMidas.CDSCombo_detail.Cancel;
end;

procedure TFrmCombo.ToolButton1Click(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSCombo.Append;
  end;
end;

procedure TFrmCombo.ToolButton2Click(Sender: TObject);
begin
  With DMMidas do
  begin
   if (DSCombo.State = dsEdit) or (DSCombo.State = dsInsert) then
    begin
      CDSCombo.Post;
      CDSCombo.Refresh;
    end;
  end;
end;

procedure TFrmCombo.ToolButton3Click(Sender: TObject);
begin
  DMMidas.CDSCombo_detail.Cancel;
  With DMMidas do
  begin
    FrmSearchInv2 := TFrmSearchInv2.Create(Self);
    With FrmSearchInv2 do
    begin
      ShowModal;
      if modalResult = mrOk then
      begin
        CDSCombo_Detail.Append;
        CDSCombo_DetailProduct.Value := CDSInventarioPisoDescripcion.Value;
        CDSCombo_DetailPrice.Value := CDSInventarioPisoPrecio.asFloat;
        CDSCombo_DetailProductNo.Value := CDSInventarioPisoProductNo.Value;
        CDSCombo_DetailCombo_ID.Value := CDSComboCombo_ID.Value;
        //DBGrid2.Columns[3].
       // CDSCombo_Detail.Post;
      end;
    end;


  end;
end;

procedure TFrmCombo.ToolButton4Click(Sender: TObject);
begin
  With DMMidas do
  begin
   if (DSCombo_detail.State = dsEdit) or (DSCombo_detail.State = dsInsert) then
    begin
      CDSCombo_detail.Post;
    end;
  end;
end;

procedure TFrmCombo.ToolButton5Click(Sender: TObject);
begin
  DMMidas.CDSCombo_detail.Refresh;
end;

procedure TFrmCombo.ToolButton6Click(Sender: TObject);
begin
  DMMidas.CDSCombo_detail.Edit;
end;

procedure TFrmCombo.ToolButton7Click(Sender: TObject);
begin
  DMMidas.CDSCombo_detail.Delete;
end;

procedure TFrmCombo.ToolButton8Click(Sender: TObject);
begin
  DMMidas.CDSCombo.Refresh;
end;

procedure TFrmCombo.ToolButton9Click(Sender: TObject);
begin
  DMMidas.CDSCombo.Edit;
end;

end.
