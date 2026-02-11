unit UntEditTabs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Touch.Keyboard, Vcl.Mask, Vcl.DBCtrls, db;

type
  TFrmEditTabs = class(TForm)
    TouchKeyboard1: TTouchKeyboard;
    Panel2: TPanel;
    Button1: TButton;
    ToolBar1: TToolBar;
    TBPost: TToolButton;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    procedure TBPostClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEditTabs: TFrmEditTabs;

implementation

{$R *.dfm}

uses UntDMMidas;

procedure TFrmEditTabs.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  TBPost.Click;
  FrmEditTabs := nil;
  Action := caFree;
end;

procedure TFrmEditTabs.TBPostClick(Sender: TObject);
begin
  With DMMidas do
  begin
    if (dsTabsHeader.State = dsEdit) or (dsTabsHeader.State = dsInsert) then
    begin
      cdsTabsHeaderGROUP_BY_NAME.Value := DBEdit1.Text;
      cdsTabsHeader.Post;
      cdsTabsHeader.Refresh;
    end;
  end;
end;

procedure TFrmEditTabs.ToolButton2Click(Sender: TObject);
begin
  DMMidas.cdsTabsHeader.Cancel;
end;

procedure TFrmEditTabs.ToolButton5Click(Sender: TObject);
begin
  With DMMidas do
  begin
    if MessageDlg('Do you wish to delete this button', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      cdsTabsHeader.Delete;
      cdsTabsHeader.Refresh;
    end;
  end;
end;

end.
