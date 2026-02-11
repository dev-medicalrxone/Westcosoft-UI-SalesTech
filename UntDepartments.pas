unit UntDepartments;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, DBCtrls, ExtCtrls, DB, StdCtrls, Buttons, ComCtrls,
  ToolWin, ResourceLocalizer;

type
  TFrmDepartments = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ToolBar1: TToolBar;
    ToolButtonInsert: TToolButton;
    ToolButtonEdit: TToolButton;
    ToolButtonDelete: TToolButton;
    ToolButtonPrior: TToolButton;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ToolButtonNext: TToolButton;
    TlBtnPostUpdates: TToolButton;
    ToolButtonCancelUpdates: TToolButton;
    ToolButtonRefresh: TToolButton;
    ToolButton6: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolBar2: TToolBar;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    ToolButton25: TToolButton;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    DSSubDpt: TDataSource;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButtonPriorClick(Sender: TObject);
    procedure ToolButtonNextClick(Sender: TObject);
    procedure ToolButtonInsertClick(Sender: TObject);
    procedure ToolButtonEditClick(Sender: TObject);
    procedure ToolButtonDeleteClick(Sender: TObject);
    procedure TlBtnPostUpdatesClick(Sender: TObject);
    procedure ToolButtonCancelUpdatesClick(Sender: TObject);
    procedure ToolButtonRefreshClick(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
    procedure ToolButton19Click(Sender: TObject);
    procedure ToolButton20Click(Sender: TObject);
    procedure ToolButton22Click(Sender: TObject);
    procedure ToolButton23Click(Sender: TObject);
    procedure ToolButton25Click(Sender: TObject);
    procedure DSSubDptStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure language;
    procedure FormShow(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDepartments: TFrmDepartments;

implementation

uses UntDMMidas, untMain, DBClient, UntShopperEdit, UntEditInventorySP,
  untFilters, UntAttribDepartment, UntInventory;

{$R *.DFM}

procedure TFrmDepartments.DataSource1StateChange(Sender: TObject);
begin
  ToolButtonInsert.Enabled := DMMidas.CDSDepartamentos.State = dsBrowse;
  ToolButtonEdit.Enabled := ToolButtonInsert.Enabled;
  ToolButtonDelete.Enabled := ToolButtonInsert.Enabled;
  ToolButtonPrior.Enabled := ToolButtonInsert.Enabled;
  ToolButtonNext.Enabled := ToolButtonInsert.Enabled;
  TlBtnPostUpdates.Enabled := DMMidas.CDSDepartamentos.ChangeCount > 0;
  ToolButtonCancelUpdates.Enabled := TlBtnPostUpdates.Enabled;
  ToolButtonRefresh.Enabled := Not TlBtnPostUpdates.Enabled;
end;

procedure TFrmDepartments.FormCreate(Sender: TObject);
begin
    with DMMidas do
    begin
      CDSDepartamentos.Close;
      CDSDepartamentos.CommandText := 'Select * From departamento order by DESCRIPCION';
      CDSDepartamentos.Open;
      {CDSSubDept.Close;
      CDSSubDept.CommandText := 'Select * From Sub_departamento order by DESCRIPCION';
      CDSSubDept.Open; }
      if CDSInventarioPisoDEPARTAMENTO.Value > 0 then
      begin
        CDSDepartamentos.First;
        CDSDepartamentos.Locate('DEPARTAMENTO', CDSInventarioPisoDEPARTAMENTO.Value, []);
      end;
    end;
end;

procedure TFrmDepartments.FormShow(Sender: TObject);
begin
  if FrmMain.LanguageStr = 'English' then
    language;
end;

procedure TFrmDepartments.language;
begin
  DBGrid1.Columns[0].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 112);
  DBGrid1.Columns[1].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 206);
  Label1.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 243);
  Label2.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 244);
  DBGrid2.Columns[0].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 112);
  DBGrid2.Columns[1].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 206);
  DBGrid1.Columns[0].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 112);
  FrmDepartments.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 245);
end;

procedure TFrmDepartments.ToolButtonPriorClick(Sender: TObject);
begin
  DMMidas.CDSDepartamentos.Prior;
end;

procedure TFrmDepartments.ToolButtonNextClick(Sender: TObject);
begin
  DMMidas.CDSDepartamentos.Next;
end;

procedure TFrmDepartments.ToolButtonInsertClick(Sender: TObject);
begin
  DMMidas.CDSDepartamentos.Append;
end;

procedure TFrmDepartments.ToolButtonEditClick(Sender: TObject);
begin
  DMMidas.CDSDepartamentos.Edit;
end;

procedure TFrmDepartments.ToolButtonDeleteClick(Sender: TObject);
begin
  if FrmMain.LanguageStr = 'English' then
    FrmMain.msgD := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 296)
  else
    FrmMain.msgD := '¿Realmente quiere borrar?';
  If MessageDlg(FrmMain.msgD, mtConfirmation, [mbYes,mbNo], 0) = mrYes then
    DMMidas.CDSDepartamentos.Delete;
end;

procedure TFrmDepartments.TlBtnPostUpdatesClick(Sender: TObject);
begin
  //DMMidas.CDSDepartamentos.ApplyUpdates(-1);
  //DMMidas.CDSDepartamentos.Refresh;
end;

procedure TFrmDepartments.ToolButtonCancelUpdatesClick(Sender: TObject);
begin
  DMMidas.CDSDepartamentos.CancelUpdates;
end;

procedure TFrmDepartments.ToolButtonRefreshClick(Sender: TObject);
begin
  DMMidas.CDSDepartamentos.Refresh;
end;

procedure TFrmDepartments.ToolButton6Click(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSDepartamentos.Post;
  end;
end;

procedure TFrmDepartments.ToolButton9Click(Sender: TObject);
begin
  DMMidas.CDSDepartamentos.Cancel;
end;

procedure TFrmDepartments.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  with DMMidas do
  begin
    if CDSDepartamentosDEPARTAMENTO.AsString > '' then
    begin
      CDSSubDept.Close;
      CDSSubDept.CommandText := 'Select * from sub_departamento where link_subdpt = ' + CDSDepartamentosDEPARTAMENTO.AsString;
      CDSSubDept.Open;
    end
    else
    begin
      CDSSubDept.Close;
      CDSSubDept.CommandText := 'Select * from sub_departamento where link_subdpt = ' + '99999999';
      CDSSubDept.Open;
    end
  end;
end;

procedure TFrmDepartments.ToolButton13Click(Sender: TObject);
begin
  DMMidas.CDSSubDept.Prior;
end;

procedure TFrmDepartments.ToolButton14Click(Sender: TObject);
begin
  DMMidas.CDSSubDept.Next;
end;

procedure TFrmDepartments.ToolButton15Click(Sender: TObject);
begin
  DMMidas.CDSSubDept.append;
end;

procedure TFrmDepartments.ToolButton16Click(Sender: TObject);
begin
  DMMidas.CDSSubDept.Edit;
end;

procedure TFrmDepartments.ToolButton17Click(Sender: TObject);
begin
  if FrmMain.LanguageStr = 'English' then
    FrmMain.msgD := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 296)
  else
    FrmMain.msgD := '¿Realmente quiere borrar?';
  If MessageDlg(FrmMain.msgd, mtConfirmation, [mbYes,mbNo], 0) = mrYes then
    DMMidas.CDSSubDept.Delete;
end;

procedure TFrmDepartments.ToolButton19Click(Sender: TObject);
begin
  DMMidas.CDSSubDept.Cancel;
end;

procedure TFrmDepartments.ToolButton1Click(Sender: TObject);
begin
  frmDepartmentAttributes := TfrmDepartmentAttributes.Create(self);
  With frmDepartmentAttributes do
  begin
    if DMMidas.CDSDepartamentosDEPARTAMENTO.AsString > '' then
    begin
      RecParametros('D', DMMidas.CDSDepartamentosDESCRIPCION.AsString,DMMidas.CDSDepartamentosDEPARTAMENTO.AsString);
      ShowModal;
      free;
    end
  end;
end;

procedure TFrmDepartments.ToolButton20Click(Sender: TObject);
begin
  DMMidas.CDSSubDept.Post;
  DMMidas.CDSSubDept.Refresh;
end;

procedure TFrmDepartments.ToolButton22Click(Sender: TObject);
begin
  DMMidas.CDSSubDept.ApplyUpdates(-1);
  DMMidas.CDSSubDept.Refresh;
end;

procedure TFrmDepartments.ToolButton23Click(Sender: TObject);
begin
  DMMidas.CDSSubDept.CancelUpdates;
end;

procedure TFrmDepartments.ToolButton25Click(Sender: TObject);
begin
  DMMidas.CDSSubDept.Refresh;
end;

procedure TFrmDepartments.ToolButton2Click(Sender: TObject);
begin
  frmDepartmentAttributes := TfrmDepartmentAttributes.Create(self);
  With frmDepartmentAttributes do
  begin
    if DMMidas.CDSSubDeptDEPARTAMENTO.AsString > '' then
    begin
      RecParametros('S', DMMidas.CDSSubDeptDESCRIPCION.AsString,DMMidas.CDSSubDeptDEPARTAMENTO.AsString);
      ShowModal;
      free;
    end
  end;
end;

procedure TFrmDepartments.DSSubDptStateChange(Sender: TObject);
begin
  ToolButton15.Enabled := DMMidas.CDSSubDept.State = dsBrowse;
  ToolButton16.Enabled := ToolButton15.Enabled;
  ToolButton17.Enabled := ToolButton15.Enabled;
  ToolButton13.Enabled := ToolButton15.Enabled;
  ToolButton14.Enabled := ToolButton15.Enabled;
  ToolButton22.Enabled := DMMidas.CDSSubDept.ChangeCount > 0;
  ToolButton23.Enabled := ToolButton22.Enabled;
  ToolButton25.Enabled := Not ToolButton23.Enabled;
end;

procedure TFrmDepartments.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if not Assigned(FrmShopperEdit) and not (Assigned(FrmInventory)) and not (Assigned(FrmEditInventorySP)) and not(Assigned(FrmFilters)) then
  begin
    with DMMidas do
    begin
      CDSDepartamentos.Close;
      CDSDepartamentos.CommandText := 'Select * From departamento order by DESCRIPCION';
      CDSDepartamentos.Open;
      CDSSubDept.Close;
      CDSSubDept.CommandText := 'Select * From Sub_departamento order by DESCRIPCION';
      CDSSubDept.Open;
    end;
  end;
end;

end.
