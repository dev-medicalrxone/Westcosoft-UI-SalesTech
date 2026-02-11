unit UntBarcodePrintQ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, Data.DB;

type
  TFrmBarcodePrintQ = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    ToolBar1: TToolBar;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    EditSearch: TEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    Button2: TButton;
    ToolButton1: TToolButton;
    procedure EditSearchExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditSearchKeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBarcodePrintQ: TFrmBarcodePrintQ;

implementation

uses UntDMMidas, untMain, UntQueries, UntSearchInv2, UntEditBarcodePrintQ,
  UntlabelBC, UntSeleccioneOpcion, UntEditInventory, UntCommon, UntCommonPOS;

{$R *.dfm}

procedure TFrmBarcodePrintQ.Button2Click(Sender: TObject);
begin
  If MessageDlg('Delete all item?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  Begin
    With DMMidas do
    begin
      SQLQuery1.SQL.Text := '';
      SQLQuery1.SQL.Text := 'Delete from BARCODE_PRINTING_Q';
      SQLQuery1.ExecSQL(False);
      cdsBarcodePrintQ.Refresh;
    end;
  End;
end;

procedure TFrmBarcodePrintQ.EditSearchExit(Sender: TObject);
begin
  With DMMidas do
  begin
    If Trim(EditSearch.Text) <> '' then
    begin
      FrmSearchInv2 := TFrmSearchInv2.Create(nil);
      With FrmSearchInv2 do
      begin
        Queries.OpenInventory(Trim(EditSearch.Text), '',false);
        if CDSInventarioPiso.RecordCount >= 2 then
        begin
          EditSearch.Text := '';
          ShowModal;
        end;
        if CDSInventarioPiso.RecordCount >= 1 then
        begin
          cdsBarcodePrintQ.First;
          if not cdsBarcodePrintQ.Locate('PRODUCT_ID', CDSInventarioPisoPRODUCTNO.Value, []) then
          begin
            EditSearch.Text := '';
            if cdsBarcodePrintQ.Active = False then cdsBarcodePrintQ.Active := True;
            cdsBarcodePrintQ.Append;
            cdsBarcodePrintQCOPIES.Value := 1;
            cdsBarcodePrintQPRODUCT.Value := CDSInventarioPisoDESCRIPCION.Value;
            cdsBarcodePrintQPRODUCT_ID.Value := CDSInventarioPisoPRODUCTNO.Value;
            cdsBarcodePrintQREGISTER_NO.Value := StrToInt(CommonPOS.RegisterNo);
            cdsBarcodePrintQ.Post;
            cdsBarcodePrintQ.Refresh;
            EditSearch.SetFocus;
          end
          else
          begin
            ShowMessage('Item in queue!');
            EditSearch.Text := '';
          end;
        end;
        FrmSearchInv2 := nil;
        Free;
      end;
    end;
  end;
end;

procedure TFrmBarcodePrintQ.EditSearchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then                              { if it's an enter key }
  Begin
    Key := #0;                                 { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
  END;
end;

procedure TFrmBarcodePrintQ.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmBarcodePrintQ := nil;
end;

procedure TFrmBarcodePrintQ.FormShow(Sender: TObject);
begin
  With DMMidas do
  begin
    if Trim(CommonPOS.RegisterNo) > '' then
    begin
      cdsBarcodePrintQ.Close;
      cdsBarcodePrintQ.CommandText := 'select * from BARCODE_PRINTING_Q where REGISTER_NO = ' + CommonPOS.RegisterNo + ' order by Product';
      cdsBarcodePrintQ.Open;
    end;
  end;

end;

procedure TFrmBarcodePrintQ.ToolButton1Click(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSInventarioPiso.Close;
    CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where ProductNo = ' + cdsBarcodePrintQPRODUCT_ID.asString;
    CDSInventarioPiso.Open;
    FrmEditInventory := TFrmEditInventory.Create(Self);
    With FrmEditInventory, DMMidas.CDSInventarioPiso do
    begin
      Edit;
      ShowModal;
      If ModalResult = mrOK then
      begin
        Try
          Post;
        except
          Cancel;
        end;
      end
      else
        cancel;
      Release;
    end;
  end;
end;

procedure TFrmBarcodePrintQ.ToolButton3Click(Sender: TObject);
begin
  DMMidas.cdsBarcodePrintQ.Refresh;
end;

procedure TFrmBarcodePrintQ.ToolButton4Click(Sender: TObject);
begin
  With DMMidas do
  begin
    FrmEditBarcodePrintQ := TFrmEditBarcodePrintQ.Create(self);
    With FrmEditBarcodePrintQ do
    begin
      cdsBarcodePrintQ.Edit;
      ShowModal;
      if ModalResult = mrOk then cdsBarcodePrintQ.Post else cdsBarcodePrintQ.Cancel;
      cdsBarcodePrintQ.Refresh;
      Free;
    end;
  end;
end;

procedure TFrmBarcodePrintQ.ToolButton5Click(Sender: TObject);
begin
    If MessageDlg('Delete this item?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    Begin
      DMMidas.cdsBarcodePrintQ.Delete;
    End;
end;

procedure TFrmBarcodePrintQ.ToolButton7Click(Sender: TObject);
Var
  PID: String;
begin
  With DMMidas do
  begin
    PID := CDSInventarioPisoPRODUCTNO.AsString;
    FrmLabelsBC := TFrmLabelsBC.Create(Self);
    With FrmLabelsBC do
    begin
      cdsBarcodePrintQ.First;
      while not cdsBarcodePrintQ.Eof do
      begin
        CDSInventarioPiso.Close;
        CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where ProductNo = ' + cdsBarcodePrintQPRODUCT_ID.asString;
        CDSInventarioPiso.Open;
        With frxReport1 do
        begin
          PrintOptions.Copies := cdsBarcodePrintQCOPIES.Value;
          if CommonPOS.PrintToScreen = True then
          begin
            ShowReport
          end
          else
          begin
            PrepareReport;
            Print;
          end;
        end;
        cdsBarcodePrintQ.Next;
      end;
      FrmLabelsBC.Free;
    end;
  end;
end;

end.
