unit USplash2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, jpeg, Registry;

type
  TFSplash2 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    BitBtn1: TBitBtn;
    Image2: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSplash2: TFSplash2;

implementation

{$R *.DFM}

uses UntDMMidas;

procedure TFSplash2.FormCreate(Sender: TObject);
Var
  Imagen: TImage;
begin
  try
    if dmmidas.CDSSetupVENDOR.Value = 'WesCom, Inc.' then
    begin
      Imagen := Image1;
      Image2.Visible := False;
      Imagen.Width := 672;
    end
    else
    begin
      Imagen := Image2;
      Image1.Visible := False;
      Imagen.Width := 704;
    end;
    Imagen.Align := alClient;
  except
  end;
end;

end.
