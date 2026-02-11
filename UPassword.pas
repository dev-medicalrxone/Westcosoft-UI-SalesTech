unit UPassword;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
     Buttons, db, Messages, Dialogs, DBGrids;

type
  TPasswordDlg = class(TForm)
    Label1: TLabel;
    Password: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure PasswordKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PasswordDlg: TPasswordDlg;

implementation

uses UData, UPOS;

{$R *.DFM}

procedure TPasswordDlg.BitBtn2Click(Sender: TObject);
begin
  //PasswordDlg.Close;
end;

procedure TPasswordDlg.PasswordKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
   //if Key = #13 then                              { if it's an enter key }
  Begin
    if not (PasswordDlg.ActiveControl is TDBGrid) then
    begin { if not on a TDBGrid }
      Key := #0;
      PasswordDlg.Button1.Click;         { eat enter key }
    end
  end;
end;

end.

