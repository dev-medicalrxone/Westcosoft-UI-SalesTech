unit UntFilterTimeCard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.ComCtrls;

type
  TFrmFilterTimeCard = class(TForm)
    dtpFrom: TDateTimePicker;
    dtpTo: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    cbFilterByEmp: TCheckBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFilterTimeCard: TFrmFilterTimeCard;

implementation

{$R *.dfm}

uses UntDMMidas;

procedure TFrmFilterTimeCard.FormCreate(Sender: TObject);
begin
  dtpFrom.Date := Date();
  dtpTo.Date := Date();
end;

end.
