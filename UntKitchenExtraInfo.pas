unit UntKitchenExtraInfo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Touch.Keyboard,
  Vcl.ExtCtrls;

type
  TFrmKitchenExtraInfo = class(TForm)
    Panel1: TPanel;
    Memo1: TMemo;
    TouchKeyboard1: TTouchKeyboard;
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmKitchenExtraInfo: TFrmKitchenExtraInfo;

implementation

{$R *.dfm}

end.
