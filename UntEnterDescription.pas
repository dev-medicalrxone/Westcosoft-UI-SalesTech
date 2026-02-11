unit UntEnterDescription;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Touch.Keyboard, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TFrmEnterDescription = class(TForm)
    Panel1: TPanel;
    TouchKeyboard1: TTouchKeyboard;
    EditDescripcion: TEdit;
    Button1: TButton;
    procedure EditDescripcionKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEnterDescription: TFrmEnterDescription;

implementation

{$R *.dfm}

uses UntCommonPOS;

procedure TFrmEnterDescription.EditDescripcionKeyPress(Sender: TObject;
  var Key: Char);
var
  Count: Integer;
begin
  Count := Length(EditDescripcion.Text);
  if Count >= 5 then
  begin
    Button1.Enabled := True;
    CommonPOS.ID_Verified := True;
  end;
end;

end.
