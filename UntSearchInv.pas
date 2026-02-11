unit UntSearchInv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ExtCtrls, Buttons, DB;

type
  TFrmSearchInv = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DataSource1: TDataSource;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSearchInv: TFrmSearchInv;

implementation

uses UntDMMidas, UntQueries;

{$R *.DFM}

procedure TFrmSearchInv.DBGrid1DblClick(Sender: TObject);
begin
  BitBtn1.Click;
end;

procedure TFrmSearchInv.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  With DMMidas do
  begin
    if CDSInventarioPisoQTYINVENTARIO.asFloat < CDSInventarioPisoCMININVENTARIO.Value then
    Begin
      With (Sender as TDBGrid) do Canvas.Font.Color := clRed;
      if (gdSelected in State) then
      begin
        with (Sender as TDBGrid) do
        begin
          //Canvas.Brush.Color := clGreen;
          Canvas.Font.Color := clWhite;
        end;
      end;
    end;
    if CDSInventarioPisoQTYINVENTARIO.asFloat = CDSInventarioPisoCMININVENTARIO.Value then
    Begin
      With (Sender as TDBGrid) do Canvas.Font.Color := clYellow;
      if (gdSelected in State) then
      begin
        with (Sender as TDBGrid) do
        begin
          //Canvas.Brush.Color := clGreen;
          Canvas.Font.Color := clWhite;
        end;
      end;
    end;
    if CDSInventarioPisoQTYINVENTARIO.asFloat > CDSInventarioPisoCMININVENTARIO.Value then
    Begin
      With (Sender as TDBGrid) do Canvas.Font.Color := clLime;
      if (gdSelected in State) then
      begin
        with (Sender as TDBGrid) do
        begin
          //Canvas.Brush.Color := clGreen;
          Canvas.Font.Color := clWhite;
        end;
      end;
    end;
  with (Sender as TDBGrid) do DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;
procedure TFrmSearchInv.FormShow(Sender: TObject);
begin
  if Tag = 1 then Edit1.SetFocus;
  //BitBtn1.Enabled := False;
end;

procedure TFrmSearchInv.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Tag = 1 then
  begin
    if Key = #13 then
    Begin
      Key := #0;                                 { eat enter key }
      Perform(WM_NEXTDLGCTL, 0, 0);
      if Trim(Edit1.Text) = '' then
      begin
        BitBtn1.Enabled := False;
        BitBtn2.Click;
      end
      else
      begin
        DBGrid1.SetFocus;              { move to next control }
        If Trim(Edit1.Text) <> '' then
        begin
          Queries.OpenInventory(Trim(Edit1.Text), '', false);
          Edit1.Text := '';
        end;
      end;
    end;
  end;

end;

procedure TFrmSearchInv.Edit1Exit(Sender: TObject);
begin
  if Tag = 1 then
  begin
    BitBtn1.Enabled := True;
  end;
end;

procedure TFrmSearchInv.Edit1Enter(Sender: TObject);
begin
  if Tag = 1 then BitBtn1.Enabled := False;
end;

end.
