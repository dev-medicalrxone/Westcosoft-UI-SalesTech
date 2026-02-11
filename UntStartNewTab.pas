unit UntStartNewTab;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmSartNewTab = class(TForm)
    Button1: TButton;
    btnStartTable: TButton;
    Button3: TButton;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSartNewTab: TFrmSartNewTab;

implementation

{$R *.dfm}

uses untMain, UntDMMidas, UntCommonPOS;

procedure TFrmSartNewTab.FormShow(Sender: TObject);
begin
{  With DMMidas do
  begin
    if CommonPOS.Restaurant = false then
    begin
      btnStartTable.Visible := false;
    end;
  end;  }
end;

end.
