unit UntEnterBarcode2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFrmImputBarcode = class(TForm)
    EditBarcode: TEdit;
    Panel1: TPanel;
    Button1: TButton;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmImputBarcode: TFrmImputBarcode;

implementation

{$R *.dfm}

uses UntDMMidas, UntCommonPOS;

procedure TFrmImputBarcode.SpeedButton1Click(Sender: TObject);
Var
  NewUPC: String;
begin
  With DMMidas do
  begin
    CommonPOS.DisconnectFromDatabase;
    SPNEXT_BARCODE.Prepare;
    SPNEXT_BARCODE.ExecProc;
    NewUPC := IntToStr(SPNEXT_BARCODE.ParamByName('@BARCODE_NO').AsInteger);
    With SQLQuery do
    begin
      Close;
      SQL.Text := 'Select max(CODIGOBARRA) from INVENTARIOPISO where CODIGOBARRA like ' + #39 + NewUPC + '%'+ #39;    // '000000000%''';
      Active := True;;
      If Fields[0].asString <> '' then
      NewUPC := Format('%.12d',[StrToInt(Trim(Fields[0].asString)) + 1]);
      Active := False;
    end;
    EditBarcode.Text := NewUPC;
  end;
end;

end.
