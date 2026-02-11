unit UntCheckDesc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls;

type
  TFrmCheckDesc = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    EditSearch: TEdit;
    Label1: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditSearchExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCheckDesc: TFrmCheckDesc;

implementation

uses UntDMMidas, UntCommonPOS, UntCommon, UntVerTrans;

{$R *.dfm}

procedure TFrmCheckDesc.EditSearchExit(Sender: TObject);
begin
  With FrmVerTrans do
  begin
    CDSTransactionDetails.Close;
    CDSTransactionDetails.CommandText := 'Select * from VerTransacciones Where BarcodeAlterno1 = ' + #39 + Trim(EditSearch.Text) + #39 + ' or BarcodeAlterno2 = '  + #39 + Trim(EditSearch.Text) + #39;
    CDSTransactionDetails.Open;
  end;
end;

procedure TFrmCheckDesc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  CommonForm.Enter2tab(Self,Key);
end;

end.
