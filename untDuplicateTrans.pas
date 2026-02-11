unit untDuplicateTrans;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmDuplicateTrans = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    responseStr, transNameStr, refNo: String;
  end;

var
  FrmDuplicateTrans: TFrmDuplicateTrans;

implementation

{$R *.dfm}

uses untIpe, UntCheckOut, untEvertec, UntCommonPOS;

procedure TFrmDuplicateTrans.Button1Click(Sender: TObject);
begin
  CommonPOS.adjDelete := True;
  refNo := Format('%.*d',[6, StrToInt(refno)]);
  ipe.journal(refNo);
  ModalResult := mrOk;
end;

procedure TFrmDuplicateTrans.Button2Click(Sender: TObject);
begin
  if CommonPOS.TransactionType = 'TFAM' then
    ipe.ebtTransDup(CommonPOS.ebtType, '009100')
  else
    ipe.saleTrans('', '009100', '', '0');
  ModalResult := mrOk;
end;

procedure TFrmDuplicateTrans.Button3Click(Sender: TObject);
begin
  ipe.printReceipt(Copy(transNameStr, 1, transNameStr.Length -1), '0');
  FrmCheckOut.Edit4.Text := '0';
  FrmEvertec.Button2.Visible := True;
  ModalResult := mrOk;
end;

procedure TFrmDuplicateTrans.Button4Click(Sender: TObject);
begin
  FrmCheckOut.Edit4.Text := '0';
  ModalResult := mrCancel;
end;

end.
