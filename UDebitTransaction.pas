unit UDebitTransaction;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons;

type
  TFDebitTransaction = class(TForm)
    Information: TGroupBox;
    EditTrackData: TEdit;
    Label1: TLabel;
    EditCreditCard: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    EditPINBlock: TEdit;
    Label4: TLabel;
    EditAmount1: TEdit;
    Label2: TLabel;
    EditAmount2: TEdit;
    Label3: TLabel;
    Timer1: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure EditTrackDataExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDebitTransaction: TFDebitTransaction;

implementation

uses UCommonObjDebit, UCreditDebit;

{$R *.DFM}

procedure TFDebitTransaction.FormActivate(Sender: TObject);
begin
  EditTrackData.Text := '';
  //EditAmount1.Text := '';
  EditAmount2.Text := '';
  EditPINBlock.Text := '';
end;

procedure TFDebitTransaction.Timer1Timer(Sender: TObject);
begin
  if EditPINBlock.Text > '  ' then
  begin
    //ShowMessage(s71.ReadMessage);
    //EditPINBlock.Text := s71.ReadMessage;
  end;
end;

procedure TFDebitTransaction.EditTrackDataExit(Sender: TObject);
begin
if EditTrackData.Text > '' then
  begin
    //FdebitTransaction.s71.Open;
    //FdebitTransaction.s71.GeneratePinBlock('WESCOM, INC.','ENTER PIN:', '4003010123456780','1569951808DA0B80');
  end;
end;

procedure TFDebitTransaction.FormCreate(Sender: TObject);
begin
  //s71.Open;
end;

end.
