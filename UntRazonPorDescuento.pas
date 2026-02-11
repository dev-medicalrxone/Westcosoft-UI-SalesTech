unit UntRazonPorDescuento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,
  StdCtrls, Keyboard, Buttons, ExtCtrls;

type
  TFrmRazonDescuento = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn4: TBitBtn;
    Edit1: TEdit;
    TouchKeyboard1: TTouchKeyboard;
    Panel3: TPanel;
    cxRadioGroup1: TRadioGroup;
    procedure cxRadioGroup1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRazonDescuento: TFrmRazonDescuento;

implementation

{$R *.dfm}

procedure TFrmRazonDescuento.cxRadioGroup1Click(Sender: TObject);
begin
  case cxRadioGroup1.ItemIndex of
  0: Edit1.Text := cxRadioGroup1.Items[0];
  1: Edit1.Text := cxRadioGroup1.Items[1];
  2: Edit1.Text := cxRadioGroup1.Items[2];
  3: Edit1.Text := cxRadioGroup1.Items[3];
  4: Edit1.Text := cxRadioGroup1.Items[4];
  5: Edit1.Text := cxRadioGroup1.Items[5];
  6: Edit1.Text := cxRadioGroup1.Items[6];
  7: Edit1.Text := cxRadioGroup1.Items[7];
  end;


end;

procedure TFrmRazonDescuento.Edit1Change(Sender: TObject);
begin
  if Trim(Edit1.Text) = '' then BitBtn4.Enabled := False else BitBtn4.Enabled := True; 
end;

end.
