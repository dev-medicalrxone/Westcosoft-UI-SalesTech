unit UQty;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons;

type
  TFQty = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FQty: TFQty;

implementation

uses UData, UntDMMidas;

{$R *.DFM}

procedure TFQty.FormCreate(Sender: TObject);
begin
  Label2.Caption := DMMidas.CDSPOSArticulo.Value;
end;

end.
