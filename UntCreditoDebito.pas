unit UntCreditoDebito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, StdCtrls, Buttons, ExtCtrls, Provider,
  SqlExpr, DB, DBClient, DBLocal, DBLocalS;

type
  TFrmCreditoDebito = class(TForm)
    Desde: TDateTimePicker;
    Hasta: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    Label3: TLabel;
    Label4: TLabel;
    LCredito: TLabel;
    LDebito: TLabel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    SQLClientDataSet1: TSQLClientDataSet;
    SQLClientDataSet1CODE: TStringField;
    SQLClientDataSet1SUM: TFloatField;
    procedure ToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCreditoDebito: TFrmCreditoDebito;

implementation

uses untMain, UntDMMidas;

{$R *.dfm}

procedure TFrmCreditoDebito.ToolButton1Click(Sender: TObject);
begin
    With DMMidas do
  begin
    CDSClientTransactions.Close;
    CDSClientTransactions.CommandText := 'select code, sum(amount) from clienttransactions where dateoftrans Between ' + #39 + DateToStr(Desde.Date) + #39 + ' and ' + #39 + DateToStr(Hasta.Date) + #39 + ' group by code';
    CDSClientTransactions.Open;

  end;
end;

end.
