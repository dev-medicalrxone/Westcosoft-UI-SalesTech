unit UntUtilities;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ComCtrls,
  ToolWin, ResourceLocalizer;

type
  TFrmUtilities = class(TForm)
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton1: TToolButton;
    ToolButton6: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    TlBtnPost: TToolButton;
    ToolButton7: TToolButton;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    DataSource1: TDataSource;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    BitBtn2: TBitBtn;
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure TlBtnPostClick(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure language;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUtilities: TFrmUtilities;

implementation

uses UntDMMidas, untMain;

{$R *.dfm}

procedure TFrmUtilities.ToolButton4Click(Sender: TObject);
begin
  DMMidas.CDSUtilities.Prior;
end;

procedure TFrmUtilities.ToolButton5Click(Sender: TObject);
begin
  DMMidas.CDSUtilities.Next;
end;

procedure TFrmUtilities.FormCreate(Sender: TObject);
begin
  DMMidas.CDSUtilities.Active := True;
end;

procedure TFrmUtilities.FormDestroy(Sender: TObject);
begin
  DMMidas.CDSUtilities.Active := False;
end;

procedure TFrmUtilities.FormShow(Sender: TObject);
begin
  if FrmMain.LanguageStr = 'English' then
    language;
end;

procedure TFrmUtilities.language;
begin
  DBGrid1.Columns[1].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 240);
  DBGrid1.Columns[2].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 241);
  DBGrid1.Columns[3].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 242);
end;

procedure TFrmUtilities.ToolButton1Click(Sender: TObject);
begin
  With DMMidas do begin
    CDSUtilities.Append;
    //CDSUtilitiesUTILITY_ID.Value := 9999;
  end;
end;

procedure TFrmUtilities.ToolButton2Click(Sender: TObject);
begin
  DMMidas.CDSUtilities.Edit;
end;

procedure TFrmUtilities.ToolButton3Click(Sender: TObject);
begin
  if FrmMain.LanguageStr = 'English' then
    FrmMain.msgD := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 296)
  else
    FrmMain.msgD := '¿Realmente quiere borrar?';
  If MessageDlg(FrmMain.msgD, mtConfirmation, [mbYes,mbNo], 0) = mrYes then
    DMMidas.CDSUtilities.Delete;
end;

procedure TFrmUtilities.ToolButton9Click(Sender: TObject);
begin
  DMMidas.CDSUtilities.Cancel;
end;

procedure TFrmUtilities.ToolButton6Click(Sender: TObject);
begin
  DMMidas.CDSUtilities.Post;
end;

procedure TFrmUtilities.TlBtnPostClick(Sender: TObject);
begin
  DMMidas.CDSUtilities.ApplyUpdates(-1);
  DMMidas.CDSUtilities.Refresh;
end;

procedure TFrmUtilities.ToolButton7Click(Sender: TObject);
begin
  DMMidas.CDSUtilities.CancelUpdates;
end;

procedure TFrmUtilities.DataSource1StateChange(Sender: TObject);
begin
  ToolButton1.Enabled := DMMidas.CDSUtilities.State = dsBrowse;
  ToolButton2.Enabled := ToolButton1.Enabled;
  ToolButton3.Enabled := ToolButton1.Enabled;
  ToolButton4.Enabled := ToolButton1.Enabled;
  ToolButton5.Enabled := ToolButton1.Enabled;
  TlBtnPost.Enabled := DMMidas.CDSUtilities.ChangeCount > 0;
  ToolButton7.Enabled := TlBtnPost.Enabled;
  ToolButton8.Enabled := Not TlBtnPost.Enabled;
end;

end.
