unit UntWarning;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, Buttons, StdCtrls, DBCtrls, DB,
  Mask, ComCtrls, Printers, Wlccdll, Variants, Math,
  Registry, ToolWin, jpeg, ImgList, Spin, Menus,
  MPlayer;

type
  TFrmWarning = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Timer1: TTimer;
    MediaPlayer1: TMediaPlayer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmWarning: TFrmWarning;

implementation

{$R *.dfm}

procedure TFrmWarning.Timer1Timer(Sender: TObject);
begin
   //Beep(1000,1000);
   Timer1.Enabled := False;
end;

procedure TFrmWarning.FormShow(Sender: TObject);
begin
  Try
    begin
      MediaPlayer1.Open;
       MediaPlayer1.Play;
    end;
  except
    Timer1.Enabled := True;
  end;
end;

end.
