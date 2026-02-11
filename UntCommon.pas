unit UntCommon;

interface

Uses
  Forms,
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Dialogs,
  DB,
  Grids,
  DBGrids,
  ExtCtrls,
  StdCtrls,
  Buttons,
  Mask,
  DBCtrls,
  ComCtrls,
  Registry,
  Printers;

Type
  TCommonForm = class(TObject)
    procedure Enter2tab(Form1: TForm; var Key: Char) ;
    function    AllowNumbers(Key: Char): Char;
    function    AllowCurrency(Key: Char): Char;
  end;

Var
  CommonForm: TCommonForm;

implementation

procedure TCommonForm.Enter2tab(Form1: TForm; var Key: Char);
Begin
  if Key = #13 then                              { if it's an enter key }
  Begin
    if not (Form1.ActiveControl is TDBGrid) then
    begin { if not on a TDBGrid }
      Key := #0;                                 { eat enter key }
      Form1.Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
    end
    else
    Begin
      if (Form1.ActiveControl is TDBGrid) then      { if it is a TDBGrid }
      Begin
        with TDBGrid(Form1.ActiveControl) do
        Begin
          if selectedindex < (fieldcount -1) then  { increment the field }
          Begin
            selectedindex := selectedindex +1
          end
          else
          Begin
            selectedindex := 0;
          end;
        end;
      end;
    end;
  end;
end;

function TCommonForm.AllowNumbers(Key: Char): Char;
begin
  Result := Key;
  If (Pos(Key,'0123456789') = 0) and (Key <> #8) then
    Result := #0;
end;

function TCommonForm.AllowCurrency(Key: Char): Char;
begin
  Result := Key;
  If (Pos(Key,'0123456789.') = 0) and (Ord(Key) <> 8) then
    Result := #0;
end;

end.
