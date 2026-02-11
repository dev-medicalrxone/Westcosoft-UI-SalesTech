unit UntVendors;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Touch.Keyboard;

type
  TFrmVendors = class(TForm)
    Panel1: TPanel;
    Button2: TButton;
    Button1: TButton;
    Panel2: TPanel;
    EditSearchVendors: TEdit;
    DBGrid1: TDBGrid;
    TouchKeyboard1: TTouchKeyboard;
    procedure EditSearchVendorsChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVendors: TFrmVendors;

implementation

{$R *.dfm}

uses UntDMMidas;

procedure TFrmVendors.EditSearchVendorsChange(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSPasswords.Locate('USERNAME', Trim(EditSearchVendors.Text), [loPartialKey, loCaseInsensitive]);
  end;
end;

end.
