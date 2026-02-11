unit UntSalesPromotion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ToolWin, ExtCtrls, db, Mask,
  DBCtrls;

type
  TFrmSalesPromo = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton16: TToolButton;
    TlBtnPost: TToolButton;
    TlBtnCancel: TToolButton;
    ToolButton5: TToolButton;
    ToolButton13: TToolButton;
    TlBtnRefresh: TToolButton;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    procedure ToolButton1Click(Sender: TObject);
    procedure TlBtnPostClick(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure TlBtnCancelClick(Sender: TObject);
    procedure TlBtnRefreshClick(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSalesPromo: TFrmSalesPromo;

implementation

uses UntDMMidas, untMain, UntCommonPOS;

{$R *.dfm}

procedure TFrmSalesPromo.DBEdit1Change(Sender: TObject);
begin
  {With DMMidas do
  begin
    if (CommonPOS.IsNumber(DBEdit1.Text) = true)
    and (CommonPOS.IsNumber(DBEdit2.Text) = true)
    and (CommonPOS.IsNumber(DBEdit3.Text) = true) then
    begin
      Label4.Visible := True;
      Label4.Caption := Format('%m',[(CDSInventarioPisoPRECIO.asFloat * StrToFloat(DBEdit1.Text) + ((CDSInventarioPisoPRECIO.asFloat * StrToFloat(DBEdit2.Text) - (CDSInventarioPisoPRECIO.asFloat * StrToFloat(DBEdit2.Text)) * StrToFloat('0.' + DBEdit3.Text))))]);
    end
    else
    begin
      Label4.Caption := '';
      Label4.Visible := False;
    end;
  end;}
end;

procedure TFrmSalesPromo.FormCreate(Sender: TObject);
begin
  With DMMidas do
  begin
    cdsSalesPromo.Close;
    cdsSalesPromo.CommandText := 'Select * from Sales_Promotion order by ID';
    cdsSalesPromo.Open;
  end;
end;

procedure TFrmSalesPromo.TlBtnCancelClick(Sender: TObject);
begin
  With DMMidas do
  begin
    cdsSalesPromo.Cancel;
  end;
end;

procedure TFrmSalesPromo.TlBtnPostClick(Sender: TObject);
begin
  With DMMidas do
  begin
    if (dsSalesPromo.State = dsEdit) or (dsSalesPromo.State = dsInsert) then
    begin
      cdsSalesPromo.Post;
    end;
  end;
end;

procedure TFrmSalesPromo.TlBtnRefreshClick(Sender: TObject);
begin
  With DMMidas do
  begin
    cdsSalesPromo.Refresh;
  end;
end;

procedure TFrmSalesPromo.ToolButton16Click(Sender: TObject);
begin
  With DMMidas do
  begin
    cdsSalesPromo.Edit;
  end;
end;

procedure TFrmSalesPromo.ToolButton1Click(Sender: TObject);
begin
  With DMMidas do
  begin
    cdsSalesPromo.Append;
  end;
end;

procedure TFrmSalesPromo.ToolButton5Click(Sender: TObject);
begin
  With DMMidas do
  begin
    if MessageDlg('Do you wish to delete this item?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      cdsSalesPromo.Delete;
    end;
  end;
end;

end.
