unit UntSuppliers;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, ToolWin, Grids, DBGrids, Db, StdCtrls, Mask, DBCtrls,
  Buttons, ImgList, jpeg, ResourceLocalizer;

type
  TFrmSuppliers = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Panel2: TPanel;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    ToolBar3: TToolBar;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton5: TToolButton;
    ToolButton10: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ESearchSup: TEdit;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
    procedure ToolButton18Click(Sender: TObject);
    procedure ToolButton19Click(Sender: TObject);
    procedure ESearchSupChange(Sender: TObject);
    procedure language;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSuppliers: TFrmSuppliers;

implementation

uses  UntDMMidas, untMain;

{$R *.DFM}

procedure TFrmSuppliers.FormCreate(Sender: TObject);
begin
  if DMMidas.CDSSuplidores.Active = False then DMMidas.CDSSuplidores.Active := True;
end;

procedure TFrmSuppliers.FormShow(Sender: TObject);
begin
  if FrmMain.LanguageStr = 'English' then
    language;
end;

procedure TFrmSuppliers.language;
begin
  FrmSuppliers.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 246);
  Label2.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 135);
  Label5.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 089);
  Label11.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 112);
  Label3.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 091);
  Label10.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 248);
  Label9.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 249);
  Label12.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 250);


  DBGrid1.Columns[1].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 135);
  DBGrid1.Columns[2].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 089);
  DBGrid1.Columns[4].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 248);
  DBGrid1.Columns[5].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 249);

end;

procedure TFrmSuppliers.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  Begin
    Key := 0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmSuppliers.ToolButton11Click(Sender: TObject);
begin
  DMMidas.CDSSuplidores.First;
end;

procedure TFrmSuppliers.ToolButton12Click(Sender: TObject);
begin
  DMMidas.CDSSuplidores.Prior;
end;

procedure TFrmSuppliers.ToolButton13Click(Sender: TObject);
begin
  DMMidas.CDSSuplidores.Next;
end;

procedure TFrmSuppliers.ToolButton14Click(Sender: TObject);
begin
  DMMidas.CDSSuplidores.Last;
end;

procedure TFrmSuppliers.ToolButton10Click(Sender: TObject);
begin
    DMMidas.CDSSuplidores.Append;
end;

procedure TFrmSuppliers.ToolButton15Click(Sender: TObject);
begin
  With DMMidas do
  begin
    if (DSSuplidores.State = dsEdit) or (DSSuplidores.State = dsInsert) then
    begin
      DMMidas.CDSSuplidores.Post;
    end;
  end;
end;

procedure TFrmSuppliers.ToolButton16Click(Sender: TObject);
begin
  DMMidas.CDSSuplidores.Edit;
end;

procedure TFrmSuppliers.ToolButton17Click(Sender: TObject);
begin
  DMMidas.CDSSuplidores.Cancel;
end;

procedure TFrmSuppliers.ToolButton18Click(Sender: TObject);
Var
  Mensage: String;
begin
  if FrmMain.LanguageStr = 'English' then
    FrmMain.msgD := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 296)
  else
    FrmMain.msgD := 'Desea borrar este suplidor?';
  if MessageDlg(FrmMain.msgD,
  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
      DMMidas.CDSSuplidores.Delete;
  end;
end;

procedure TFrmSuppliers.ToolButton19Click(Sender: TObject);
begin
  DMMidas.CDSSuplidores.Refresh;
end;

procedure TFrmSuppliers.ESearchSupChange(Sender: TObject);
begin
  //DMMidas.CDSSuplidores.Locate('Suplidor', ESearchSup.Text, [LoCaseInsensitive, loPartialKey]);
    With DMMidas do
    begin
      if Trim(ESearchSup.Text) > '' then
      begin
        CDSSuplidores.Close;
        CDSSuplidores.CommandText := 'Select * from Suplidores where SUPLIDOR Like ' + chr(39) + Trim(ESearchSup.Text) + '%' + chr(39);
        CDSSuplidores.Open;
      end;
    end;
end;

end.
