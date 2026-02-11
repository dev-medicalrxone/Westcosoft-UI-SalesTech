unit UBuscarPacientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, ToolWin, ComCtrls, db, Mask,
  DBCtrls;

type
  TFBuscarPaciente = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ToolBar1: TToolBar;
    ESearchPat: TEdit;
    ToolBar2: TToolBar;
    DBNavigator1: TDBNavigator;
    ScrollBox2: TScrollBox;
    ToolBar3: TToolBar;
    DBNavigator2: TDBNavigator;
    DBGPlans: TDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    BitBtnOk: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    Panel4: TPanel;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    Label7: TLabel;
    Label8: TLabel;
    DBText5: TDBText;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    Label16: TLabel;
    Label18: TLabel;
    Panel5: TPanel;
    DBText2: TDBText;
    DBGrid1: TDBGrid;
    Label17: TLabel;
    DBText8: TDBText;
    DBText10: TDBText;
    Label21: TLabel;
    procedure ESearchPatKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure ESearchPatEnter(Sender: TObject);
    procedure ESearchPatExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Exit(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBGPlansEnter(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBuscarPaciente: TFBuscarPaciente;
  Paciente: String;

implementation

uses UntDMMidas, UntQueries;


{$R *.DFM}



procedure TFBuscarPaciente.ESearchPatKeyPress(Sender: TObject;
  var Key: Char);
Var
  Token1, Token2, Token3: String;
begin
  if Key = #13 then
  Begin
    Queries.MultiToken(ESearchPat.Text, Token1, Token2, Token3);
    Queries.OpenPatient(Token1, Token2, Token3, 0);
  end;
end;

procedure TFBuscarPaciente.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{   case chr(key) of
     #8: begin
          Paciente := Copy(Paciente, 1, Length(Paciente) -1);
          FBuscarPacientes.Caption := Paciente;
          DMMidas.CDSPacientes.Close;
          DMMidas.CDSPacientes.CommandText := 'Select * from Pacientes where NombreCompleto Like ' + chr(39) + ESearchPat.Text + '%' + chr(39) + ' order by NombreCompleto';
          DMMidas.CDSPacientes.Open;
          key := 0;
         end;
     'A'..'Z','a'..'z','0'..'9', ' ' : begin
         FBuscarPacientes.Caption := FBuscarPacientes.Caption + Chr(key);
         Paciente := Paciente + chr(key);
         DMMidas.CDSPacientes.Close;
         DMMidas.CDSPacientes.CommandText := 'Select * from Pacientes where CardholderID = ' + chr(39) + Paciente + '%' + chr(39) + ' order by NombreCompleto';
         DMMidas.CDSPacientes.Open;
         key := 0;
     end;
   end;
   dbgrid1.refresh;}
end;

procedure TFBuscarPaciente.FormShow(Sender: TObject);
begin
  Paciente := Trim(FBuscarPaciente.Caption);
end;

procedure TFBuscarPaciente.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Begin
  if Key = 13 then                              { if it's an enter key }
  Begin
    if not (ActiveControl is TDBGrid) then
    Begin
      Key := 0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    end
    else
    Begin
      if (ActiveControl is TDBGrid) then      { if it is a TDBGrid }
      Begin
        with TDBGrid(ActiveControl) do
        Begin
          if selectedindex < (fieldcount -1) then  { increment the field }
          Begin
            selectedindex := selectedindex +1
          end
          else
          Begin
            selectedindex := 0;
          end;
        end;
      end;
    end;
  end;
end;

procedure TFBuscarPaciente.BitBtn3Click(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet2;
end;

procedure TFBuscarPaciente.DBEdit1Enter(Sender: TObject);
begin
  if DBedit1.Focused then DBEdit1.Color := clYellow else DBEdit1.Color := clWhite;
  if DBedit2.Focused then DBEdit2.Color := clYellow else DBEdit2.Color := clWhite;
  if DBedit3.Focused then DBEdit3.Color := clYellow else DBEdit3.Color := clWhite;
  if DBedit4.Focused then DBEdit4.Color := clYellow else DBEdit4.Color := clWhite;
  if DBedit5.Focused then DBEdit5.Color := clYellow else DBEdit5.Color := clWhite;
  if DBedit6.Focused then DBEdit6.Color := clYellow else DBEdit6.Color := clWhite;
  if DBedit7.Focused then DBEdit7.Color := clYellow else DBEdit7.Color := clWhite;
  if DBedit10.Focused then DBEdit10.Color := clYellow else DBEdit10.Color := clWhite;
  if DBedit11.Focused then DBEdit11.Color := clYellow else DBEdit11.Color := clWhite;
  if DBedit14.Focused then DBEdit14.Color := clYellow else DBEdit14.Color := clWhite;
  if DBedit12.Focused then DBEdit12.Color := clYellow else DBEdit12.Color := clWhite;
  if DBedit13.Focused then DBEdit13.Color := clYellow else DBEdit13.Color := clWhite;
end;

procedure TFBuscarPaciente.ESearchPatEnter(Sender: TObject);
begin
  BitBtnOk.Enabled := False;
end;

procedure TFBuscarPaciente.ESearchPatExit(Sender: TObject);
begin
  BitBtnOk.Enabled := True;
  DBGrid1.SetFocus;
end;

procedure TFBuscarPaciente.FormCreate(Sender: TObject);
begin

  if DMMidas.CDSClientes.Active = False then DMMidas.CDSClientes.Active := True;
end;


procedure TFBuscarPaciente.PageControl1Exit(Sender: TObject);
begin
  if DMMidas.CDSClientes.Modified = True then
  begin
    DMMidas.CDSClientes.Post;
  end;
end;

procedure TFBuscarPaciente.DBEdit9Exit(Sender: TObject);
begin
//  if DMMidas.CDSPacientes.Modified = True
//  then  DMMidas.CDSPacientes.Post;
end;

procedure TFBuscarPaciente.DBGPlansEnter(Sender: TObject);
begin
  if DMMidas.CDSClientes.Modified = True
  then  DMMidas.CDSClientes.Post;
  //DBGPlans.Columns[0].DropDownRows
end;

procedure TFBuscarPaciente.DBEdit11Exit(Sender: TObject);
begin
  DBEdit11.Color := clWhite;
end;

procedure TFBuscarPaciente.DBGrid1DblClick(Sender: TObject);
begin
  BitBtnOk.Click;
end;

end.
