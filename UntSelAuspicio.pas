unit UntSelAuspicio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls;

type
  TFrmSelAuspicio = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    CheckBox1: TCheckBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker1: TDateTimePicker;
    CheckBox2: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Label1: TLabel;
    SaveDialog1: TSaveDialog;
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LMDDockSpeedButton1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelAuspicio: TFrmSelAuspicio;

implementation

uses UntDMMidas, SqlExpr, DB;

{$R *.dfm}

procedure TFrmSelAuspicio.CheckBox1Click(Sender: TObject);
begin
  ComboBox1.Enabled := CheckBox1.Checked;
end;

procedure TFrmSelAuspicio.CheckBox2Click(Sender: TObject);
begin
  DateTimePicker1.Enabled := CheckBox2.Checked;
  DateTimePicker2.Enabled := CheckBox2.Checked;
end;

procedure TFrmSelAuspicio.FormCreate(Sender: TObject);
begin
  Edit1.Text := SaveDialog1.InitialDir + '\' + SaveDialog1.FileName;
  DateTimePicker1.Date := Date;
  DateTimePicker2.Date := Date;
  {With DMMidas.CDSAdHocPrintList do
  begin
    SQL.Clear;
    SQL.Add('Select NumeroCliente, Nombre, ApellidoPaterno, ApellidoMaterno From Pacientes Order By ApellidoPaterno, ApellidoMaterno, Nombre');
    Open;
    While Not EOF do
    begin
      If (Length(Trim(Fields[2].asString)) > 0) or (Length(Trim(Fields[1].asString)) > 0) or (Length(Trim(Fields[3].asString)) > 0) then
      begin
        ComboBox1.Items.Add(Trim(Trim(Trim(Fields[2].asString) + ' ' + Fields[3].asString) + ', ' + Fields[1].asString));
        ComboBox2.Items.Add(Fields[0].asString);
      end;
      Next;
    end;
    Close;
  end;}
end;

procedure TFrmSelAuspicio.LMDDockSpeedButton1Click(Sender: TObject);
begin
  If SaveDialog1.Execute then
  begin
    Edit1.Text := SaveDialog1.FileName;
  end;
end;

procedure TFrmSelAuspicio.ComboBox1Change(Sender: TObject);
begin
  ComboBox2.ItemIndex := ComboBox1.ItemIndex;
end;

end.
