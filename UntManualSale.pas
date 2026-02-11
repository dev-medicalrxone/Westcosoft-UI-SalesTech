unit UntManualSale;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, Keyboard,Spin, ResourceLocalizer;

type
  TFrmManualSale = class(TForm)
    Panel1: TPanel;
    EditDescripcion: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel2: TPanel;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    TouchKeyboard1: TTouchKeyboard;
    Button1: TButton;
    Button2: TButton;
    EditCantidad: TSpinEdit;
    EditPrecio: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure EditPrecioChange(Sender: TObject);
    procedure language;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmManualSale: TFrmManualSale;

implementation

uses UntDMMidas, UntCommon, UntCommonPOS, untMain;

{$R *.DFM}

procedure TFrmManualSale.EditPrecioChange(Sender: TObject);
var
  tmp : integer;
begin
  if CommonPOS.IsNumber(EditPrecio.Text) then
    EditPrecio.Color := clWhite
  else
    EditPrecio.Color := clRed;
end;


procedure TFrmManualSale.FormCreate(Sender: TObject);
begin
  With DMMidas.CDSDepartamentos, ComboBox1 do
  begin
    First;
    Clear;
    Items.Add('MANUAL');
    While Not EOF do
    begin
      Items.Add(FieldByName('DESCRIPCION').asString);
      Next;
    end;
    ItemIndex := 0;
  end;
end;

procedure TFrmManualSale.FormKeyPress(Sender: TObject; var Key: Char);
begin
  CommonForm.Enter2tab(Self,Key);
end;

procedure TFrmManualSale.FormShow(Sender: TObject);
begin
  EditDescripcion.SetFocus;
{  if FrmManualSale.Tag = 0 then
  begin
    FrmManualSale.Height := 130;
    FrmManualSale.Width := 73;
  end
  else
  begin
    FrmManualSale.Height := 453;
    EditDescripcion.SetFocus;
  end;}
  if FrmMain.LanguageStr = 'English' then
    language;
end;

procedure TFrmManualSale.language;
begin
  FrmManualSale.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 251);
  label1.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 112);
  label2.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 138);
  label3.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 020);
  label4.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 113);
  EditDescripcion.Text := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 212);
end;

end.
