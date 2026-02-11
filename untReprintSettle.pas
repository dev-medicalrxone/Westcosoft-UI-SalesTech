unit untReprintSettle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFrmReprintSettle = class(TForm)
    DBGrid1: TDBGrid;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    procedure DateTimePicker1CloseUp(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReprintSettle: TFrmReprintSettle;

implementation

{$R *.dfm}

uses UntDMMidas, UntCommonPOS;

procedure TFrmReprintSettle.Button1Click(Sender: TObject);
begin
  CommonPOS.EvertecID := DMMidas.cdsEvertecID.AsString;
  CommonPOS.Insert_Print_Jobs(True, false, false, 'receipt', '0', CommonPOS.EvertecID, 'SET', '', '', '', '0', 1);
end;

procedure TFrmReprintSettle.DateTimePicker1CloseUp(Sender: TObject);
begin
  with DMMidas do
  begin
    cdsEvertec.Close;
    cdsEvertec.CommandText := 'select * FROM EVERTEC WHERE ' +
    'RESPONSE LIKE ' + chr(39) + '%SETTLE%' + chr(39) + ' AND CONVERT(CHAR(10),  date_time, 101) = ' +
    chr(39) + dateToStr(DateTimePicker1.Date) + chr(39) + 'order by ID';
    cdsEvertec.Open;
  end;
end;

end.
