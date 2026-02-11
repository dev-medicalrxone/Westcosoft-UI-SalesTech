unit UntServicios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFrmServicios = class(TForm)
    EditDescripcion: TEdit;
    EditValor: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    CBCobrarImpuesto: TCheckBox;
    Panel2: TPanel;
    procedure EditValorExit(Sender: TObject);
    procedure EditDescripcionKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmServicios: TFrmServicios;

implementation

uses UntCommonPOS, UntCommon;

{$R *.dfm}

procedure TFrmServicios.EditDescripcionKeyPress(Sender: TObject; var Key: Char);
begin
  CommonForm.Enter2tab(Self,Key);
end;

procedure TFrmServicios.EditValorExit(Sender: TObject);
begin
  if not CommonPOS.IsNumber(EditValor.Text) then
  begin
    ShowMessage(Trim(EditValor.Text) +  ' no es un valor numerico!');
    EditValor.Text := '';
    EditValor.SetFocus;
  end;

end;

end.
