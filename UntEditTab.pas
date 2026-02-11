unit UntEditTab;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.Touch.Keyboard;

type
  TFrmEditTab = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    EditCustomer: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnOk: TButton;
    EditTelephone: TMaskEdit;
    TouchKeyboard1: TTouchKeyboard;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEditTab: TFrmEditTab;

implementation

{$R *.dfm}

uses UntDMMidas, UntEditTabs;

procedure TFrmEditTab.FormShow(Sender: TObject);
begin
  EditTelephone.SetFocus;
end;

end.
