unit UntDelivered;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls,
  Buttons, Keyboard, DBCtrls, Spin, ResourceLocalizer;

type
  TFrmDelivered = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtnOK: TBitBtn;
    Label1: TLabel;
    TouchKeyboard1: TTouchKeyboard;
    SpeedButton1: TSpeedButton;
    Memo1: TMemo;
    Label2: TLabel;
    Label3: TLabel;
    SpinEdit1: TSpinEdit;
    cxCheckBox1: TCheckBox;
    EditDeliveredBy: TEdit;
    BitBtnCancel: TBitBtn;
    procedure EditDeliveredByExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDelivered: TFrmDelivered;

implementation

uses UntDMMidas, UntUserList, UntCommon, UntCommonPOS, untMain;

{$R *.dfm}

procedure TFrmDelivered.EditDeliveredByExit(Sender: TObject);
begin
  If Length(EditDeliveredBy.Text) > 30 then
  begin
    if FrmMain.LanguageStr = 'English' then
      ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 331))
    else
    ShowMessage('El campo no puede ser mayor de 30 espacios');
    EditDeliveredBy.Text := copy(EditDeliveredBy.Text, 1, 30); 
  end;
  If Length(EditDeliveredBy.Text) > 0 then BitBtnOK.Enabled := True;
end;

procedure TFrmDelivered.FormShow(Sender: TObject);
begin
  if CommonPOS.Restaurant = True then EditDeliveredBy.Enabled := False;
  SpeedButton1.Enabled := False;
end;

procedure TFrmDelivered.SpeedButton1Click(Sender: TObject);
begin
  With DMMidas do
  begin
    if CommonPOS.Restaurant = True then
    begin
      CDSPasswords.Close;
      CDSPasswords.CommandText := 'Select * from passwords order by username';
      CDSPasswords.Open;
       FrmUserList := TFrmUserList.Create(nil);
       With FrmUserList do
       begin
         ShowModal;
         EditDeliveredBy.Text := Trim(DMMidas.CDSPasswordsUSERNAME.Value);
         Free;
       end;
    end;
  end;
end;

end.
