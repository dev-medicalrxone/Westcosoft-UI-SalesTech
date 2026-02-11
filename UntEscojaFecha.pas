unit UntEscojaFecha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TFrmEscojaFechas = class(TForm)
    Desde: TDateTimePicker;
    Hasta: TDateTimePicker;
    Panel1: TPanel;
    btnOk: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEscojaFechas: TFrmEscojaFechas;

implementation

{$R *.dfm}

procedure TFrmEscojaFechas.FormCreate(Sender: TObject);
begin
  Desde.Date := Date-30;
  Hasta.Date := Date;
end;

end.
