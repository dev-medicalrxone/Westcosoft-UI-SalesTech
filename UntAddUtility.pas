unit UntAddUtility;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Keyboard, ResourceLocalizer;

type
  TFrmAddUtility = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    edit2: TEdit;
    Edit1: TEdit;
    TBUtilidad: TEdit;
    TBBuscarUtilidad: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure TBBuscarUtilidadExit(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure edit2Change(Sender: TObject);
    procedure language;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAddUtility: TFrmAddUtility;

implementation

uses UntDMMidas, SqlExpr, UntCommon, UntCommonPOS, UntUtilities, untMain;

{$R *.dfm}

procedure TFrmAddUtility.FormCreate(Sender: TObject);
begin
  With DMMidas.CDSAdHocPrintList do
  begin
    SQL.Clear;
    SQL.Add('Select Name, BarCode from Utilities order by Name');
    Active := True;
    ComboBox1.Items.Clear;
    While not EOF do
    begin
      ComboBox1.Items.Add(Fields[0].asString);
      Next;
    end;
    ComboBox1.ItemIndex := 0;
    Active := False;
  end;
end;

procedure TFrmAddUtility.Edit1Change(Sender: TObject);
begin
  if CommonPOS.IsNumber(Edit1.Text) then
    Edit1.Color := clWhite
  else
    Edit1.Color := clred;
end;

procedure TFrmAddUtility.Edit1Exit(Sender: TObject);
begin
  Try
    With DMMidas.CDSAdHocPrintList do
    begin
      SQL.Clear;
      SQL.Add('Select CHARGE_AMNT, CHARGE_PER from Utilities Where Name = ''' + Trim(TBUtilidad.Text) + '''');
      Active := True;
      Edit2.Text := Format('%.2f',[StrToFloat(Fields[0].Value + (StrtoFloat(Edit1.Text) * Fields[1].Value / 100))]);
      Active := False;
      {With DMMidas do
      begin
        if CDSUtilities.Active = False then CDSUtilities.Active := True;
        CDSUtilities.First;
        CDSUtilities.Locate('NAME', ComboBox1.Text, []);
      end;}
    end;
  Except
  end;
end;

procedure TFrmAddUtility.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  CommonForm.AllowNumbers(Key);
end;

procedure TFrmAddUtility.edit2Change(Sender: TObject);
begin
  if CommonPOS.IsNumber(Edit2.Text) then
    Edit2.Color := clWhite
  else
    Edit2.Color := clred;
end;

procedure TFrmAddUtility.FormKeyPress(Sender: TObject; var Key: Char);
begin
  CommonForm.Enter2tab(Self,Key);
end;

procedure TFrmAddUtility.FormShow(Sender: TObject);
begin
  //if commonPOS.TouchScreen = True then
  //begin
    FrmAddUtility.Height := 409;
  //end;
  if FrmMain.LanguageStr = 'English' then
    language;
end;

procedure TFrmAddUtility.language;
begin
  FrmAddUtility.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 333);
  label1.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 334);
  label2.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 335);
  label3.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 241);
end;

procedure TFrmAddUtility.TBBuscarUtilidadExit(Sender: TObject);
begin
  IF TBBuscarUtilidad.Text > '' then
  begin
    With DMMidas do
    begin
      CDSUtilities.Close;
      CDSUtilities.CommandText := 'select * from utilities where name like ' + #39 + Trim(TBBuscarUtilidad.Text) + '%' +  #39 ;
      CDSUtilities.Open;
      if Trim(CDSUtilitiesNAME.Value) = '' then
      begin
        CDSUtilities.Close;
        CDSUtilities.CommandText := 'select * from utilities where Barcode =  ' + #39 + Trim(TBBuscarUtilidad.Text) +  #39;
        CDSUtilities.Open;
      end;
    end;
    if Trim(Dmmidas.CDSUtilitiesNAME.Value) > '' then
    begin
      TBBuscarUtilidad.Text := '';
      FrmUtilities := TFrmUtilities.Create(self);
      With FrmUtilities do
      begin
        ShowModal;
        TBUtilidad.Text := Trim(DMMidas.CDSUtilitiesNAME.Value);
      end;
    end
    else
    begin
      if FrmMain.LanguageStr = 'English' then
        ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 336))
      else
        ShowMessage('Utilidad no encontrada!');
       TBBuscarUtilidad.SetFocus;
    end;
   end;
end;

end.
