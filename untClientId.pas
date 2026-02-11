unit untClientId;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmClientId = class(TForm)
    Panel1: TPanel;
    ButtonOk: TButton;
    FrmClientId: TButton;
    Label1: TLabel;
    Label2: TLabel;
    EditClientId: TEdit;
    editClientName: TEdit;
    Label3: TLabel;
    EditAddress: TEdit;
    EditCity: TEdit;
    EditZipCode: TEdit;
    RadioGroup1: TRadioGroup;
    EditState: TEdit;
    Label4: TLabel;
    procedure editClientNameChange(Sender: TObject);
    procedure EditClientIdChange(Sender: TObject);
    procedure editClientNameKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmClientId: TFrmClientId;

implementation

{$R *.dfm}

procedure TFrmClientId.EditClientIdChange(Sender: TObject);
begin
  if (Trim(editClientId.Text) > '') and (Trim(editClientName.Text) > '') then
    buttonOk.enabled := True
  else
    buttonOk.Enabled := False;
end;

procedure TFrmClientId.editClientNameChange(Sender: TObject);
begin
  if (trim(editClientId.Text) > '') and (Trim(editClientName.Text) > '') then
    buttonOk.enabled := True
  else
    buttonOk.Enabled := False;
end;

procedure TFrmClientId.editClientNameKeyPress(Sender: TObject; var Key: Char);
begin
  // Check if the pressed key is NOT a letter (a-z or A-Z)
  // and NOT the Backspace character (#8, to allow editing)
    if not (Key in
    ['A'..'Z', 'a'..'z',      // letters
     ' ',                     // space
     '''',                    // single quote:  '
     '"',                     // double quote:  "
     #8,                      // backspace
     #9,                      // tab
     #13]) then
  begin
    // If it's another character, change it to a null character (#0)
    // which prevents the character from being entered into the TEdit.
    Key := #0;
  end;
end;

end.
