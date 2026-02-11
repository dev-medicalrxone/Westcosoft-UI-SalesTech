unit UntCreateNewUser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmCreateNewUser = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    EditUserName: TEdit;
    Label1: TLabel;
    EditIniciales: TEdit;
    Label2: TLabel;
    EditPwrd: TEdit;
    Label3: TLabel;
    sbClassic: TSpeedButton;
    procedure EditUserNameKeyPress(Sender: TObject; var Key: Char);
    procedure sbClassicClick(Sender: TObject);
    procedure EditInicialesExit(Sender: TObject);
    procedure EditUserNameExit(Sender: TObject);
    procedure EditPwrdExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    PasswordStr: String;
  end;

var
  FrmCreateNewUser: TFrmCreateNewUser;

implementation

{$R *.dfm}

uses UPassword2, UntCommon, UntQueries, UntCommonPOS, UntDMMidas;

procedure TFrmCreateNewUser.EditInicialesExit(Sender: TObject);
begin
  if Length(EditIniciales.Text) <> 3 then
  begin
    CommonPOS.ShowMessageStr('Error, Initials must be of 3 letters!',10,clBlack);
    EditIniciales.SetFocus;
    exit;
  end;
  EditIniciales.Text := Copy(EditIniciales.Text,1,3);
  With DMMidas do
  begin
    Queries.OpenPasswordsIniciales(Trim(EditIniciales.Text));
    if CDSPasswords.RecordCount > 0 then
    begin
      CommonPOS.ShowMessageStr('Error, User Initials exist in the database!',10,clBlack);
      EditIniciales.SetFocus;
      exit;
    end;
  end;
end;

procedure TFrmCreateNewUser.EditPwrdExit(Sender: TObject);
begin
  if Length(EditPwrd.Text) < 3 then
  begin
    EditPwrd.Text := '';
    EditPwrd.SetFocus;
    exit;
  end;
  With DMMidas do
  begin
    begin
      PasswordStr := Trim(EditPwrd.Text);
      if PasswordStr > '' then
      begin
        PasswordStr := CommonPOS.base64encode(PasswordStr);//CommonRoutine EnDeCrypt(PasswordStr);
        //EditPwrd.Text := PasswordStr;
      end;
    end;
  end;
end;

procedure TFrmCreateNewUser.EditUserNameExit(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSPasswords.Close;
    CDSPasswords.CommandText := 'Select * from PASSWORDS where USERNAME = ' + chr(39) + Trim(EditUserName.Text) + chr(39);
    CDSPasswords.Open;
    if CDSPasswords.RecordCount > 0 then
    begin
      CommonPOS.ShowMessageStr('Error, User name exist in the database!',10,clRed);
      EditUserName.SetFocus;
      exit;
    end;
  end;
end;

procedure TFrmCreateNewUser.EditUserNameKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmCreateNewUser.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if ModalResult = mrOk then
  begin
    if Trim(EditUserName.Text) > '' then
    begin
      if Trim(EditIniciales.Text) > '' then
      begin
        if Trim(EditPwrd.Text) > '' then
        begin
          CanClose := True;
        end;
      end;
    end;

  end;
end;

procedure TFrmCreateNewUser.sbClassicClick(Sender: TObject);
Var
  PasswordStr: String;
begin
  With DMMIdas do
  begin
    begin
      FPassword2 := TFPassword2.Create(nil);
      With FPassword2 do
      begin
        ShowModal;
        if ModalResult = mrOk then
        begin
          PasswordStr := Trim(FPassword2.EditPassword.Text);
          if PasswordStr > '' then
          begin
            FrmCreateNewUser.EditPwrd.Text := PasswordStr;
          end;
        end;
        FPassword2 := nil;
        Free;
      end;
    end;
  end;
end;


end.
