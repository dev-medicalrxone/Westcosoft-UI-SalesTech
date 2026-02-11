unit UntCobroRecetas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Keyboard, ExtCtrls;

type
  TFrmCobroRecetas = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EditDescripcion: TEdit;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    TouchKeyboard1: TTouchKeyboard;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCobroRecetas: TFrmCobroRecetas;

implementation

uses UntCommon;

{$R *.dfm}

procedure TFrmCobroRecetas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  CommonForm.Enter2tab(Self,Key);
end;

end.
