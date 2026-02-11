unit untPaymentCardLog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFrmPaymentCardLog = class(TForm)
    Panel3: TPanel;
    ButtonClose: TButton;
    btnManual: TButton;
    lblTransNo: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPaymentCardLog: TFrmPaymentCardLog;

implementation

{$R *.dfm}

uses UntDMMidas, UntCommonPOS;

procedure TFrmPaymentCardLog.FormCreate(Sender: TObject);
begin
  if CommonPOS.otccard = True then
  begin
    ComboBox1.Text := 'OTC Card';
    ComboBox1.Enabled := False;
  end;
end;

end.
