unit UntSearchNoSocio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,ResourceLocalizer;

type
  TFrmSearchNoSocio = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    EditSearch: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure language;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSearchNoSocio: TFrmSearchNoSocio;

implementation

{$R *.dfm}

uses untMain;

procedure TFrmSearchNoSocio.FormShow(Sender: TObject);
begin
  language;
end;

procedure TFrmSearchNoSocio.language;
begin
  FrmSearchNoSocio.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 079);
  label1.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 080);
end;

end.
