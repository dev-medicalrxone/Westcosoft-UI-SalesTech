unit untLogDetail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TFrmLogDetail = class(TForm)
    Panel3: TPanel;
    BBOK: TButton;
    Memo1: TMemo;
    DBMemo1: TDBMemo;
    Panel1: TPanel;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogDetail: TFrmLogDetail;

implementation

{$R *.dfm}

end.
