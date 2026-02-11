unit untEbtOptions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmEbtOptions = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure purchWcashBack(flag: Boolean);
  private
    { Private declarations }
    procedure completeTrans;
  public
    { Public declarations }
  end;

var
  FrmEbtOptions: TFrmEbtOptions;

implementation

{$R *.dfm}

uses UntCommonPOS, UntPOSRest, UntDMMidas, UntEnterNumber;

{ TFrmEbtOptions }

procedure TFrmEbtOptions.Button1Click(Sender: TObject);
begin
  if CommonPOS.checkTrans then
  begin
    CommonPOS.ebtType := 'FOODPURCH';
    CommonPOS.unicaCard := False;
    completeTrans;
  end;
end;

procedure TFrmEbtOptions.Button2Click(Sender: TObject);
begin
  if CommonPOS.checkTrans then
  begin
    CommonPOS.ebtType := 'CASHPURCH';
    CommonPOS.unicaCard := True;
    completeTrans;
  end;
end;

procedure TFrmEbtOptions.Button3Click(Sender: TObject);
begin
  if CommonPOS.checkTrans then
  begin
    CommonPOS.ebtType := 'CASHBACK';
    CommonPOS.unicaCard := True;
    purchWcashBack(CommonPOS.unicaCard)
  end;
end;

procedure TFrmEbtOptions.Button4Click(Sender: TObject);
begin
  if CommonPOS.checkTrans then
  begin
    CommonPOS.ebtType := 'REFUND';
    CommonPOS.unicaCard := False;
    completeTrans;
  end;
end;

procedure TFrmEbtOptions.Button5Click(Sender: TObject);
begin
  CommonPOS.ebtType := 'CASHCASH';
  CommonPOS.unicaCard := True;
  CommonPOS.unicaCashWithdrawl;
end;

procedure TFrmEbtOptions.Button8Click(Sender: TObject);
begin
  if CommonPOS.checkTrans then
  begin
    CommonPOS.ebtType := 'CASHBACK';
    CommonPOS.unicaCard := False;
    purchWcashBack(CommonPOS.unicaCard)
  end;
end;

procedure TFrmEbtOptions.completeTrans;
begin
  CommonPOS.PayTransaction('TFAM');
  if (CommonPOS.TransactionType = ('TFAM')) and (DMMidas.CDSTransHeadCHANGE.asFloat < 0) then
  begin
    FrmPOSRest.btnCheckout.Click;
  end;
  FrmEbtOptions.ModalResult := mrCancel;
end;

procedure TFrmEbtOptions.purchWcashBack(flag: Boolean);
var
  MyStrval: String;
  loop: Boolean;
begin
  loop := True;
  FrmInputNumber := TFrmInputNumber.Create(application);
  with FrmInputNumber do
  begin
    FrmInputNumber.Caption := 'Enter cashback amount';
    EditNumber.text := '0';
    FrmInputNumber.EditNumber.Text := MyStrVal;
    while loop = true do
    begin
      ShowModal;
      if (ModalResult = mrCancel) then
      begin
        loop := False;
        exit
      end;
      MyStrVal := FrmInputNumber.EditNumber.Text;
      if (MyStrVal > '') and (MyStrVal <> '0') then
      begin
        CommonPOS.ebtCashBack := MyStrval;
        loop := false;
        completeTrans;
      end
      else
        loop := True;
    end;
  end;
end;

end.
