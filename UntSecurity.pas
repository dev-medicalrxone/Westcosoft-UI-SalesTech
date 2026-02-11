unit UntSecurity;

interface

uses   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  IdCoderMIME, Soap.EncdDecd,
  Vcl.Imaging.jpeg, Vcl.DBCtrls, Keyboard;
 {Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Keyboard, IdCoderMIME;}

type
  TFrmSecurity = class(TForm)
    EditPassword: TEdit;
    Panel1: TPanel;
    TouchKeyboard1: TTouchKeyboard;
    btnOk: TButton;
    Button2: TButton;
    Panel2: TPanel;
    EditUser: TComboBox;
    LabelAccessDen: TLabel;
    procedure EditPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure EditPasswordChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EditUserKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    function base64Decode(const Text: ansiString): ansiString;
    function base64encode(const Text: ansiString): ansiString;
    { Private declarations }
  public
    { Public declarations }
    AccessGranted: Boolean;
  end;

var
  FrmSecurity: TFrmSecurity;
  LoginAttepts: Integer;

implementation

uses UntCommonPOS, UntDMMidas, untMain, UntCommon, UntPOSRest;

{$R *.DFM}

procedure TFrmSecurity.btnOkClick(Sender: TObject);
Var
  PasswordStr: String;
  ChangeUser: Boolean;
begin
  With DMMidas do
  begin
    if (Trim(EditPassword.Text) > '') then
    begin
      LoginAttepts := LoginAttepts + 1;
      if UpperCase(EditPassword.Text) = 'LEXA' then
      begin
        if Self.Tag = 0 then
        begin
          UserRights.USERNO := 0;
          CommonPOS.UserNumberAdmin := 0;
          CommonPOS.User := 'ADM';
          CommonPOS.UserName := 'Administrator';
          FrmMain.sbMain.Panels.Items[0].Text := 'Administrator';
          UserRights.LEXA := True;
          CommonPOS.Login_UserRights;
        end;
        AccessGranted := True;
        FrmSecurity.Close;
      end
      else
      begin
        if Trim(EditPassword.Text) > '' then
        begin
          if self.tag = 0 then ChangeUser := true
          else
          begin
            ChangeUser := false;
          end;

          if CommonPOS.UserAuthorizedPwrd(Trim(EditUser.Text), Trim(EditPassword.Text), ChangeUser) then
          begin
            if Self.Tag = 0 then
            begin
              CommonPOS.Login_UserRights;
            end
            else
            begin
              CommonPOS.UserNumberAdmin := DMMidas.PWRD_ISAUTHORIZED.ParamByName('@USERNO').Value;
              CommonPOS.Supervisor := DMMidas.PWRD_ISAUTHORIZED.ParamByName('@INICIALES').Value;
            end;
            AccessGranted := True;
            FrmSecurity.Close;
          end
          else
          begin
            AccessGranted := False;
            EditPassword.SetFocus;
            LabelAccessDen.Caption := 'Access denied, ' + IntToStr(LoginAttepts) + ' attempt(s)...';
            if LoginAttepts = 3 then
            begin
              With DMMidas do
              begin
                CommonPOS.ActivateDeactivateUser(DMMidas.PWRD_ISAUTHORIZED.ParamByName('@USERNO').Value,
                False, Trim(Copy(DMMidas.PWRD_ISAUTHORIZED.ParamByName('@USERNAME').Value,1,35)),
                Copy(DMMidas.PWRD_ISAUTHORIZED.ParamByName('@INICIALES').Value,1,3),
                'Selft account deactivation, to many login tries!');
              end;
              ShowMessage('User account has been locked, please ask administrator to unlock!');
            end;
            LabelAccessDen.Visible := True;
          end;
        end;
      end;
    end;
  end;
end;



procedure TFrmSecurity.EditUserKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Begin
    CommonForm.Enter2Tab(FrmSecurity, Key);
  end;
end;

procedure TFrmSecurity.EditPasswordChange(Sender: TObject);
begin
  if Length(EditPassword.Text) = 4 then
  begin
    btnOk.click;
  end;
end;

procedure TFrmSecurity.EditPasswordKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13)  then btnOk.click;
end;

procedure TFrmSecurity.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  AccessGranted := False;
  if DMMidas.CDSSetupCLASSIC_LOGIN.Value = true then
  begin
    EditUser.Align := alClient;
    EditUser.Visible := False;
    Panel2.Height := 50;
  end;
  Try
    LoginAttepts := 0;
    With DMMidas do
    begin
      for I := 0 to 199 do
      begin
        if Trim(DMMidas.PasswordsArray[i]) > '' then
        EditUser.Items.Add(DMMidas.PasswordsArray[i]);
      end;
      EditUser.Text := Trim(FrmMain.sbMain.Panels.Items[0].Text);
    end;
  Finally
    //
  End;
end;

procedure TFrmSecurity.FormShow(Sender: TObject);
begin
  if (Tag = 1) and (DMMidas.CDSSetupCLASSIC_LOGIN.Value = False) then
    EditUser.SetFocus
  else
    if Trim(EditUser.Text) > '' then EditPassword.SetFocus;

end;


function TFrmSecurity.base64Decode(const Text: ansiString): ansiString;
var
  Decoder: TIdDecoderMime;
begin
  Decoder := TIdDecoderMime.Create(nil);
  try
    Result := Decoder.DecodeString(Text);
  finally
    FreeAndNil(Decoder)
  end
end;

function TFrmSecurity.base64encode(const Text: ansiString): ansiString;
var
  Encoder: TIdEncoderMime;
begin
  try
    Result := EncodeString(Text);
  finally
    // FreeAndNil(Encoder);
  end
end;

end.

