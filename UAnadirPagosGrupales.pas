unit UAnadirPagosGrupales;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Buttons, ExtCtrls;

type
  TFAnadirPagosGrupales = class(TForm)
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAnadirPagosGrupales: TFAnadirPagosGrupales;

implementation

{$R *.DFM}

procedure TFAnadirPagosGrupales.FormCreate(Sender: TObject);
begin
  DateTimePicker1.DateTime := Date;
end;

end.
