unit UDesdeHasta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls;

type

  TFDesdeHasta = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePickerDesde: TDateTimePicker;
    DateTimePickerHasta: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    //function GetCalendarDate: TDateTime;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDesdeHasta: TFDesdeHasta;

implementation

uses UCalendar;

{$R *.DFM}

procedure TFDesdeHasta.FormCreate(Sender: TObject);
begin
  DateTimePickerDesde.DateTime := Date;
  DateTimePickerHasta.DateTime := Date;
end;

end.
