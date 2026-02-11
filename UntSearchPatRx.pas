unit UntSearchPatRx;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Touch.Keyboard, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFrmSearchPatRx = class(TForm)
    Panel1: TPanel;
    EdtSearch: TEdit;
    Panel2: TPanel;
    btnOK: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    TouchKeyboard1: TTouchKeyboard;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSearchPatRx: TFrmSearchPatRx;

implementation

{$R *.dfm}

uses UntDMMidas;

procedure TFrmSearchPatRx.FormShow(Sender: TObject);
begin
  if self.tag = 1 then DBGrid1.SetFocus;

end;

end.
