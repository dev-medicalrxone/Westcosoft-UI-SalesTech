unit UntSelectDateTime;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.WinXPickers;

type
  TFrmSelectDateTime = class(TForm)
    dtpTime: TTimePicker;
    dtpDate: TDatePicker;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelectDateTime: TFrmSelectDateTime;

implementation

{$R *.dfm}

uses UntCommonPOS;

procedure TFrmSelectDateTime.FormCreate(Sender: TObject);
begin
  dtpDate.Date := Date();
  dtpTime.Time := Time();
end;

end.
