unit UDebitVoid;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons;

type
  TFDebitVoid = class(TForm)
    Information: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EditTrackData: TEdit;
    EditAmount1: TEdit;
    EditAmount2: TEdit;
    EditPINBlock: TEdit;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    EditItemNumber: TEdit;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDebitVoid: TFDebitVoid;

implementation

uses UCommonObjDebit;

{$R *.DFM}

procedure TFDebitVoid.Button1Click(Sender: TObject);
//Var
 // Billto, TmpString, CurrValue: String;
   //Posicion: Integer;

begin
{    case FDebitVoid.ComboBox1.ItemIndex of
      0: Billto := 'Ahorro';
      1: Billto := 'Cheques';
    end;
  if Billto = 'Ahorro' then
    DVoidTrans.ProcessingCode := 'A41000'
  else
    DVoidTrans.ProcessingCode := 'A42000';

  TmpString := EditTrackData.Text;
  Posicion := Pos(';', TmpString);
    if Posicion > 0 then
      begin
        CurrValue := Copy(TmpString,Posicion+1,Pos('?',TmpString)-2);
      end;
  EditTrackData.Text := CurrValue;
  DVoidTrans.BuildBody(EditTrackData.Text, EditAmount1.Text,
                        EditAmount2.Text, EditPINBlock.Text);
//  FCreditDebit.Close;
//  FVisa.Button1.Click;
}
end;

procedure TFDebitVoid.FormActivate(Sender: TObject);
begin
{  EditTrackData.Text := '';
  EditAmount1.Text := '';
  EditAmount2.Text := '';
  EditPINBlock.Text := '';
}
end;

end.
