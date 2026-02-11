unit UntEnterPO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TFrmEnter_PO = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    EditPO: TEdit;
    DBText1: TDBText;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEnter_PO: TFrmEnter_PO;

implementation

{$R *.dfm}

uses UntDMMidas;

end.
