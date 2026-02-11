unit UntCalendar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, ExtCtrls, Grids, Calendar;

type
  TFrmCalendar = class(TForm)
    Calendar: TCalendar;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    CBMonth: TComboBox;
    SEYear: TSpinEdit;
    procedure CBMonthChange(Sender: TObject);
    procedure SEYearChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCalendar: TFrmCalendar;

implementation

{$R *.DFM}

procedure TFrmCalendar.CBMonthChange(Sender: TObject);
begin
  try
    Calendar.Month := CBMonth.ItemIndex + 1
  except
    Calendar.Day := Calendar.Day - 1;
    CBMonthChange(Self);
  end;
end;

procedure TFrmCalendar.SEYearChange(Sender: TObject);
begin
  try
    Calendar.Year := SEYear.Value;
  except
    Calendar.Day := Calendar.Day - 1;
    SEYearChange(Self);
  end;
end;

procedure TFrmCalendar.FormCreate(Sender: TObject);
begin
  CBMonth.ItemIndex := Calendar.Month - 1;
  SEYear.Value := Calendar.Year;
end;

end.
