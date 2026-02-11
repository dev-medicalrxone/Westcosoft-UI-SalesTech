unit UntShowMessage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrmShowMessage = class(TForm)
    Memo1: TMemo;
    v: TPanel;
    BitBtnOk: TButton;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmShowMessage: TFrmShowMessage;

implementation

{$R *.dfm}

procedure TFrmShowMessage.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmShowMessage := Nil;
  Action := caFree;
  Timer1.Enabled := False;
end;

procedure TFrmShowMessage.Timer1Timer(Sender: TObject);
begin
  Self.Close;
end;

end.
