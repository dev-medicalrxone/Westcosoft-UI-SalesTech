unit UntEditBarcodePrintQ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, DBCtrls;

type
  TFrmEditBarcodePrintQ = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEditBarcodePrintQ: TFrmEditBarcodePrintQ;

implementation

uses UntDMMidas, UntCommon;

{$R *.dfm}

procedure TFrmEditBarcodePrintQ.FormKeyPress(Sender: TObject; var Key: Char);
begin
  CommonForm.Enter2tab(Self,Key);
end;

end.
