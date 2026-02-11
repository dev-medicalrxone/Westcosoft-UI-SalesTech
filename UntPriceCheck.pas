unit UntPriceCheck;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids;

type
  TFrmPriceCheck = class(TForm)
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPriceCheck: TFrmPriceCheck;

implementation

uses UntDMMidas;

{$R *.dfm}

procedure TFrmPriceCheck.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
{  If DMMidas.CDSInventarioPisoESP.Value then
  Begin
    with (Sender as TDBGrid) do Canvas.Brush.Color := clYellow;
    with (Sender as TDBGrid) do Canvas.FillRect(Rect);
    With (Sender as TDBGrid) do Canvas.Font.Color := clRed;
    if (gdSelected in State) then
    begin
      with (Sender as TDBGrid) do
      begin
        Canvas.Brush.Color := clGreen;
        Canvas.Font.Color := clWhite;
      end;
    end;
  end
  else
  if (gdSelected in State) then
  begin
    with (Sender as TDBGrid) do
    begin
      Canvas.Brush.Color := clNavy;
      Canvas.Font.Color := clWhite;
    end;
  end;
  with (Sender as TDBGrid) do DefaultDrawColumnCell(Rect, DataCol, Column, State);}
end;

end.
