unit UntUserList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, Data.DB, Vcl.Touch.Keyboard;

type
  TFrmUserList = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    EditSearch: TEdit;
    TouchKeyboard1: TTouchKeyboard;
    procedure EditSearchChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUserList: TFrmUserList;

implementation

uses UntDMMidas, UntQueries;

{$R *.dfm}

procedure TFrmUserList.EditSearchChange(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSPasswords.Close;
    CDSPasswords.CommandText := 'Select * from passwords where username like ' + chr(39) + Trim(EditSearch.Text) + '%' + chr(39)  +   ' order by username';
    CDSPasswords.Open;
  end;
end;

end.
