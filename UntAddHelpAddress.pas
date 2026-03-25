unit UntAddHelpAddress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, ToolWin, ComCtrls, Grids, DBGrids, StdCtrls, Db,
  Buttons;

// Form imported from farmatec project AGC 032426
type
  TFrmHelpAddress = class(TForm)
    Panel2: TPanel;
    Label35: TLabel;
    BitBtn1: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    DBMemo2: TDBMemo;
    TabSheet2: TTabSheet;
    DBMemo1: TDBMemo;
    ToolBar1: TToolBar;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton27: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton30: TToolButton;
    ESearchPat2: TEdit;
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton10Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ESearchPat2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure ESearchPat2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHelpAddress: TFrmHelpAddress;

implementation

uses UntCommon, UntMain, UntQueries, UntDMMidas;

{$R *.dfm}

procedure TFrmHelpAddress.ToolButton11Click(Sender: TObject);
begin
  DMMidas.CDSHelp.First;
end;

procedure TFrmHelpAddress.ToolButton6Click(Sender: TObject);
begin
  DMMidas.CDSHelp.Prior;
end;

procedure TFrmHelpAddress.ToolButton5Click(Sender: TObject);
begin
  DMMidas.CDSHelp.Next;
end;

procedure TFrmHelpAddress.ToolButton12Click(Sender: TObject);
begin
  DMMidas.CDSHelp.Last;
end;

procedure TFrmHelpAddress.ToolButton7Click(Sender: TObject);
begin
  DMMidas.CDSHelp.Append;
  DBGrid1.SetFocus;
end;

procedure TFrmHelpAddress.ToolButton2Click(Sender: TObject);
begin
  DMMidas.CDSHelp.Edit;
end;

procedure TFrmHelpAddress.ToolButton4Click(Sender: TObject);
begin
  DMMidas.CDSHelp.Cancel;
end;

procedure TFrmHelpAddress.ToolButton8Click(Sender: TObject);
begin
  DMMidas.CDSHelp.Refresh;
end;

procedure TFrmHelpAddress.ToolButton1Click(Sender: TObject);
begin
  With DMMidas do
  begin
    if (DSHelp.State = dsEdit) or (DSHelp.State = dsInsert) then
    begin
      CDSHelp.Post;
      cdsHelp.Refresh;
    end;
  end;
end;

procedure TFrmHelpAddress.ToolButton9Click(Sender: TObject);
Var
  Mensage: String;
begin
  if FrmMain.LanguageStr = 'English' then
    Mensage := 'Do you wish to delete this Record?'
  else
    Mensage := 'Desea borrar este record?';
  if MessageDlg(Mensage, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DMMidas.CDSHelp.Delete;
  end;
end;

procedure TFrmHelpAddress.FormCreate(Sender: TObject);
begin
  with DMMidas do
  begin
    if CDSHelp.Active = False then
    begin
      CDSHelp.Close;
      CDSHelp.CommandText := 'Select * from HelpTable order by Descripcion' ;
      CDSHelp.Open;
    end;
  end;
end;

procedure TFrmHelpAddress.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmHelpAddress := Nil;
end;

procedure TFrmHelpAddress.ToolButton10Click(Sender: TObject);
begin
  with DMMidas do
  begin
    CDSHelp.Close;
    CDSHelp.CommandText := 'Select * from HelpTable order by Descripcion';
    CDSHelp.Open;
  end;
  // ppReportHelp.Print;
end;

procedure TFrmHelpAddress.FormShow(Sender: TObject);
begin
  BitBtn1.SetFocus;
end;

procedure TFrmHelpAddress.ESearchPat2Change(Sender: TObject);
begin
  if ESearchPat2.Text > '' then
  begin
    with DMMidas do
    begin
      cdsHelp.Locate('DESCRIPCION', ESearchPat2.Text, [loCaseInsensitive, loPartialKey]);
    end;
  end;
end;

procedure TFrmHelpAddress.ESearchPat2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  With DMMidas do
  begin
    CDSHelp.Locate('Descripcion', ESearchPat2.Text,
      [loPartialkey, loCaseInsensitive])
  end;
end;

procedure TFrmHelpAddress.BitBtn1Click(Sender: TObject);
begin
  Self.Close;
end;

end.
