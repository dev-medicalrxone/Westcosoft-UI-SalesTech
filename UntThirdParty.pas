unit UntThirdParty;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, Grids, DBGrids, DBCtrls, ExtCtrls, DB, StdCtrls, Mask, DBCGrids,
  ToolWin, ComCtrls, jpeg;

type
  TFrmThirdParty = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Image1: TImage;
    Label13: TLabel;
    ImgTitle: TImage;
    Label17: TLabel;
    ToolBar1: TToolBar;
    EditSearchPM: TEdit;
    ToolButton12: TToolButton;
    ToolButton11: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    ToolButton9: TToolButton;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure EditSearchPMChange(Sender: TObject);
    procedure DBComboBox5DropDown(Sender: TObject);
    procedure DBComboBox5Exit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmThirdParty: TFrmThirdParty;

implementation

uses UntCommon, UntQueries, UntMain, UntPlanesMed, UntDMMidas;

{$R *.DFM}

procedure TFrmThirdParty.FormKeyPress(Sender: TObject; var Key: Char);
begin
//  ScreenRoutine.Enter2Tab(Self, Key);
end;



procedure TFrmThirdParty.FormCreate(Sender: TObject);
begin
  //FormActive.FormThirdParty <> True then
  Queries.OpenPlanesMedicos('');
end;

procedure TFrmThirdParty.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    FrmThirdParty := Nil;
    Action := caFree;
end;

procedure TFrmThirdParty.ToolButton1Click(Sender: TObject);
begin
  DMMidas.CDSPlanesMedicos.First;
end;

procedure TFrmThirdParty.ToolButton6Click(Sender: TObject);
begin
  DMMidas.CDSPlanesMedicos.Prior;
end;

procedure TFrmThirdParty.ToolButton2Click(Sender: TObject);
begin
  DMMidas.CDSPlanesMedicos.Next;
end;

procedure TFrmThirdParty.ToolButton3Click(Sender: TObject);
begin
  DMMidas.CDSPlanesMedicos.Last;
end;

procedure TFrmThirdParty.ToolButton4Click(Sender: TObject);
begin
  FrmPlanesEdit := TFrmPlanesEdit.Create(self);
  With FrmPlanesEdit do
  begin
    DMMidas.CDSPlanesMedicos.Append;
    ShowModal;
    Free;
  end;
end;

procedure TFrmThirdParty.ToolButton5Click(Sender: TObject);
begin
  With DMMidas do
  begin
    if (DSPlanesMedicos.State = dsEdit) or (DSPlanesMedicos.State = dsInsert) then
    begin
      CDSPlanesMedicos.Post;
    end;
  end;
end;

procedure TFrmThirdParty.ToolButton7Click(Sender: TObject);
begin
  FrmPlanesEdit := TFrmPlanesEdit.Create(self);
  With FrmPlanesEdit do
  begin
    DMMidas.CDSPlanesMedicos.Edit;
    ShowModal;
    Free;
  end;
end;

procedure TFrmThirdParty.ToolButton9Click(Sender: TObject);
begin
  DMMidas.CDSPlanesMedicos.Cancel;
end;

procedure TFrmThirdParty.ToolButton8Click(Sender: TObject);
Var
  Mensage: String;
begin
  Mensage := 'Desea borrar este Plan Medico?';
  if MessageDlg(Mensage,
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
          DMMidas.CDSPlanesMedicos.Delete;
      end;
end;

procedure TFrmThirdParty.ToolButton10Click(Sender: TObject);
begin
  DMMidas.CDSPlanesMedicos.Refresh;
end;

procedure TFrmThirdParty.EditSearchPMChange(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSPlanesMedicos.Locate('Nombre', EditSearchPM.Text,  [LoCaseInsensitive, loPartialKey]);
  end;
end;

procedure TFrmThirdParty.DBComboBox5DropDown(Sender: TObject);
begin
//  DBComboBox5.Width := 350;
end;

procedure TFrmThirdParty.DBComboBox5Exit(Sender: TObject);
begin
//  DBComboBox5.Width := 110;
//  DBComboBox5.Text := Copy(DBComboBox5.Text, 1, 2);
end;

procedure TFrmThirdParty.DBGrid1DblClick(Sender: TObject);
begin
  ToolButton7.Click;
end;

end.
