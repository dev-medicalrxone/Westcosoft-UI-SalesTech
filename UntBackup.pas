unit UntBackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,  Registry;

type
  TFrmBackup = class(TForm)
    EditBackup: TEdit;
    SpeedButton1: TSpeedButton;
    EditRestore: TEdit;
    SpeedButton2: TSpeedButton;
    Panel1: TPanel;
    OpenDialog1: TOpenDialog;
    LabelBackup: TLabel;
    LabelRestore: TLabel;
    BitBtnBackup: TBitBtn;
    BitBtnRestore: TBitBtn;
    BtnClose: TBitBtn;
    Memo1: TMemo;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtnBackupClick(Sender: TObject);
    procedure BitBtnRestoreClick(Sender: TObject);
    procedure EditBackupChange(Sender: TObject);
    procedure EditRestoreChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBackup: TFrmBackup;

implementation

{$R *.dfm}

procedure TFrmBackup.SpeedButton1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then EditBackup.text := (OpenDialog1.FileName);
end;

procedure TFrmBackup.SpeedButton2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then EditRestore.text := (OpenDialog1.FileName);
end;

procedure TFrmBackup.BitBtnBackupClick(Sender: TObject);
begin
{ BtnClose.SetFocus;
 BitBtnBackup.Enabled := False;
 with IBBackupService1 do
  begin
    ServerName := EditBackup.Text;
    LoginPrompt := False;
    Params.Add('user_name=sysdba');
    Params.Add('password=indiantea');
    Active := True;
    try
      Verbose := True;
      DatabaseName := EditBackup.Text;
      BackupFile.Add(EditRestore.Text);
      ServiceStart;
      While not Eof do
        Memo1.Lines.Add(GetNextLine);
    finally
      Active := False;
      Memo1.Lines.Add('Backup completed...');
    end;
  end;
}
end;


procedure TFrmBackup.BitBtnRestoreClick(Sender: TObject);
Var
  BDPChar: Array[0..256] of Char;
begin
  if MessageDlg('Caution... this process replaces the current data. Do you wish to continue?' ,mtWarning,[mbYes,mbNo],0) = mrYes then
  begin
    //StrPCopy(BDPChar, 'C:\Progra~1\Borland\Interb~1\bin\Gbak.exe ' + EditBackup.Text + ' ' + EditRestore.Text + ' -user ' +  #34 +'sysdba' + #34 + ' -password ' + #34 + 'indiantea' +#34+ ' -v -r');
    //WinExec(BDPChar,SW_NORMAL);
    Self.Close;
  end;
end;

procedure TFrmBackup.EditBackupChange(Sender: TObject);
Var
  Registro: TRegistry;
begin
  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_LOCAL_MACHINE;
  Registro.OpenKey('\SOFTWARE\WOW6432Node\FarmaTec2000', True);
  try
    Registro.WriteString('BackupDir', EditBackup.Text);
  except
  end;
  Registro.Free;
end;

procedure TFrmBackup.EditRestoreChange(Sender: TObject);
Var
  Registro: TRegistry;
begin
  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_LOCAL_MACHINE;
  Registro.OpenKey('\SOFTWARE\WOW6432Node\FarmaTec2000', True);
  try
    Registro.WriteString('RestoreDir', EditRestore.Text);
  except
  end;
  Registro.Free;
end;

procedure TFrmBackup.FormCreate(Sender: TObject);
Var
  Registro: TRegistry;
begin
  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_LOCAL_MACHINE;
  Registro.OpenKey('\SOFTWARE\WOW6432Node\FarmaTec2000', True);
  try
    EditBackup.Text := Registro.ReadString('BackupDir');
    EditRestore.Text := Registro.ReadString('RestoreDir');
  except
  end;
  Registro.Free;
end;


end.
