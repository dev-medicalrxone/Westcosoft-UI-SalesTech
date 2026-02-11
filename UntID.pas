unit UntID;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls;

type
  TFrmID = class(TForm)
    Panel1: TPanel;
    ButtonOk: TButton;
    Button2: TButton;
    Panel2: TPanel;
    RadioGroup1: TRadioGroup;
    BtnSave: TButton;
    EditID: TEdit;
    EditPickedupBy: TEdit;
    procedure RadioGroup1Click(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure EditIDChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmID: TFrmID;

implementation

uses UntDMMidas, UntCommon, UntCommonPOS;

{$R *.dfm}

procedure TFrmID.EditIDChange(Sender: TObject);
begin
  if Trim(EditID.Text) > '' then
  begin
    ButtonOk.Enabled := True;
    BtnSave.Enabled := True;
  end
  else
  begin
    ButtonOk.Enabled := False;
    BtnSave.Enabled := False;
  end;
end;

procedure TFrmID.FormShow(Sender: TObject);
begin
  if Trim(EditID.Text) > '' then
  begin
    ButtonOk.Enabled := True;
    BtnSave.Enabled := True;
  end
  else
  begin
    ButtonOk.Enabled := False;
    BtnSave.Enabled := False;
  end;
end;

procedure TFrmID.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
  0: begin
       EditID.Text := Trim(DMMidas.CDSClientesIDENTIFICACION.Value);
       EditPickedupBy.Text := Trim(DMMidas.CDSClientesNombreCompleto2.Value);
     end;
  1..5: begin
          EditID.Text := '';
          EditPickedupBy.Text := '';
        end;
  end;
end;

procedure TFrmID.BtnSaveClick(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 0 then
  begin
    With DMMidas do
    begin
      if CommonPOS.StandalonePOS = true then
        SQLQuery.Connection := FDConnection2
      else
        SQLQuery.Connection := FDConnection1;
      SQLQuery.SQL.Text := 'Update pacientes set Identificacion = ' + chr(39) + Trim(Copy(EditID.Text,1,20)) + chr(39) + ' where NumeroCliente = ' + CDSPacientesNUMEROCLIENTE.AsString;
      SQLQuery.ExecSQL();
    end;
  end;
end;

end.
