unit untReprintType;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmReprintType = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    btnTest: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnTestClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReprintType: TFrmReprintType;

implementation

{$R *.dfm}

uses untIpe, untWebReceipt, UntCommonPOS;

procedure TFrmReprintType.btnTestClick(Sender: TObject);
begin
  FrmWebReceipt := TFrmWebReceipt.Create(application);
  with FrmWebReceipt do
  begin
    CommonPOS.receiptType := '1';
    WebBrowser1.Navigate(extractfilepath(application.exename) + 'custReceipt.html');
    showModal;
    Free;
    FrmWebReceipt := Nil;
  end;
end;

procedure TFrmReprintType.Button1Click(Sender: TObject);
begin
  ipe.printReceipt('SALE', '0')
end;

procedure TFrmReprintType.Button2Click(Sender: TObject);
begin
  ipe.printReceipt('SALE', '1')
end;

procedure TFrmReprintType.Button3Click(Sender: TObject);
begin
  ipe.printReceipt('SETTLE', '0')
end;

procedure TFrmReprintType.Button4Click(Sender: TObject);
begin
  ipe.printReceipt('REFUND', '1')
end;

procedure TFrmReprintType.FormShow(Sender: TObject);
begin
  ipe.globalIndicator := nil;
end;

end.
