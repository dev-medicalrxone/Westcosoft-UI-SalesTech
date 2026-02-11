unit UntFilterLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ComCtrls, Buttons, ExtCtrls, Menus;

type
  TFrmFilterLog = class(TForm)
    Panel1: TPanel;
    BitBtnOK: TButton;
    BitBtnCancel: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    CheckBoxByUser: TCheckBox;
    DateTimePickerDesde: TDateTimePicker;
    DateTimePickerHasta: TDateTimePicker;
    CheckBoxAll: TCheckBox;
    cbShowBackups: TCheckBox;
    cbUnsuccessful: TCheckBox;
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFilterLog: TFrmFilterLog;

implementation

uses UntDMMidas;

{$R *.dfm}

procedure TFrmFilterLog.DBLookupComboBox1Click(Sender: TObject);
begin
  CheckBoxByUser.Checked := True;
  CheckBoxAll.Checked := False;
end;

procedure TFrmFilterLog.FormCreate(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSPasswords.Close;
    CDSPasswords.CommandText := 'Select * from passwords order by username';
    CDSPasswords.Open;
  end;
  DateTimePickerDesde.Date := Date;
  DateTimePickerHasta.Date := Date;
end;

end.
