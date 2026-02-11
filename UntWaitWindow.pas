unit UntWaitWindow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Gauges, StdCtrls, Buttons;

type
  TWaitWindow = class(TForm)
    Panel1: TPanel;
    Image3: TImage;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Image1: TImage;
    Image2: TImage;
    Gauge1: TGauge;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    Dir: Integer;
  public
    { Public declarations }
  end;

var
  WaitWindow: TWaitWindow;

implementation

{$R *.dfm}

procedure TWaitWindow.FormCreate(Sender: TObject);
begin
  Dir := 1;
end;

procedure TWaitWindow.Timer1Timer(Sender: TObject);
begin
  If Dir = 1 then
  begin
    If gauge1.PercentDone < gauge1.MaxValue then
    begin
      Gauge1.AddProgress(1);
      Gauge1.foreColor := clNavy;
      Gauge1.BackColor := clWhite;
    end
    else
    begin
      Dir := -1;
    end;
  end
  else
  begin
    If (gauge1.PercentDone > gauge1.MinValue) then
    begin
      Gauge1.AddProgress(-1);
      Gauge1.ForeColor := clWhite;
      Gauge1.BackColor := clNavy;
    end
    else
    begin
      Dir := 1;
    end;
  end;
  Refresh;
end;

end.
