unit UntRepConfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ComCtrls, Buttons, ExtCtrls;

type
  TFrmRepConfig = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    DateTimePickerDesde: TDateTimePicker;
    Label2: TLabel;
    DateTimePickerHasta: TDateTimePicker;
    DBLookupComboBox1: TDBLookupComboBox;
    ComboBoxNoCaja: TComboBox;
    ComboBoxTurno: TComboBox;
    CheckBoxUsuario: TCheckBox;
    CheckBoxTurno: TCheckBox;
    CheckBoxCaja: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure ComboBoxTurnoClick(Sender: TObject);
    procedure ComboBoxNoCajaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRepConfig: TFrmRepConfig;

implementation

uses UntDMMidas;

{$R *.dfm}

procedure TFrmRepConfig.FormCreate(Sender: TObject);
begin
  DateTimePickerDesde.Date := Date;
  DateTimePickerHasta.Date := Date;
end;

procedure TFrmRepConfig.DBLookupComboBox1Click(Sender: TObject);
begin
  CheckBoxUsuario.Checked := True;
end;

procedure TFrmRepConfig.ComboBoxTurnoClick(Sender: TObject);
begin
  CheckBoxTurno.Checked := True;
end;

procedure TFrmRepConfig.ComboBoxNoCajaClick(Sender: TObject);
begin
  CheckBoxCaja.Checked := True;
end;

end.
