unit UntAssembly;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, ImgList, db,
  StdCtrls, Buttons, FMTBcd, SqlExpr, ComCtrls, ToolWin, System.ImageList, ResourceLocalizer;

type
  TFrmAssembly = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    ImageList1: TImageList;
    SQLQueryValue: TSQLQuery;
    SQLQueryValueTPRECIO: TFloatField;
    SQLQueryValueTCOSTO: TFloatField;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolBar2: TToolBar;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    BtnSave: TToolButton;
    ToolButton9: TToolButton;
    BtnRefresh1: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    EditSearch: TEdit;
    ToolButton8: TToolButton;
    procedure BtnNew1Click(Sender: TObject);
    procedure BtnSave1Click(Sender: TObject);
    procedure BtnDelete1Click(Sender: TObject);
    procedure BtnRefresh1Click(Sender: TObject);
    procedure BtnNewClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnOpen1Click(Sender: TObject);
    procedure BtnOpenClick(Sender: TObject);
    procedure CalcTotal;
    procedure BtnRefreshClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure EditSearchChange(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAssembly: TFrmAssembly;

implementation

uses untMain, UntDMMidas, UntSearchInv, UntAssemblyEdit,
  UntRptReciboAssemblies, UntSearchInv2, UntEscoja;

{$R *.dfm}

procedure TFrmAssembly.BtnNew1Click(Sender: TObject);
begin
  DMMidas.CDSAssembly_Header.Append;
end;

procedure TFrmAssembly.BtnSave1Click(Sender: TObject);
begin
  With DMMidas do
  begin
    if (DSAssemblyHeader.State = dsEdit) or (DSAssemblyHeader.State = dsInsert) then
    begin
      CDSAssembly_Header.Post;
    end;
  end;
end;

procedure TFrmAssembly.BtnDelete1Click(Sender: TObject);
begin
  With DMMidas.CDSAssembly_Header do
  begin
    if FrmMain.LanguageStr = 'English' then
      FrmMain.msgD := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 296)
    else
      FrmMain.msgD := '¿Realmente quiere borrar?';
    If MessageDlg('Realmente quiere borrar',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    Begin
      Delete;
    end;
  end;
end;

procedure TFrmAssembly.BtnRefresh1Click(Sender: TObject);
begin
  DMMidas.CDSAssembly_Header.Refresh;
end;

procedure TFrmAssembly.BtnNewClick(Sender: TObject);
Var
  Loop: Boolean;
begin
  //if DMMidas.CDSAssembly_Header.State = dsEdit
  if (DMMidas.CDSAssembly_Header.State = dsEdit) or (DMMidas.CDSAssembly_Header.State = dsInsert) then
  begin
    DMMidas.CDSAssembly_Header.Post;
    DMMidas.CDSAssembly_Header.Last;
  end;
  Loop := True;
  FrmSearchInv2 := TFrmSearchInv2.Create(self);
  With FrmSearchInv2 do
  begin
    Tag := 1;
    While Loop = True do
    begin
      FrmSearchInv2.EditSearchProd.Text := '';
      FrmSearchInv2.Tag := 1;
      ShowModal;
      if ModalResult = mrOk then
      begin
        With DMMidas do
        begin
          CDSAssembly_Detail.Append;
          CDSAssembly_DetailNO_TRANS.Value := CDSAssembly_HeaderNO_TRANS.Value;
          CDSAssembly_DetailBARCODE.Value := CDSInventarioPisoCODIGOBARRA.Value;
          CDSAssembly_DetailDESCRIPTION.Value := CDSInventarioPisoDESCRIPCION.Value;
          CDSAssembly_DetailCOSTO.Value := CDSInventarioPisoCOSTO.asFloat;
          CDSAssembly_DetailPRECIO.Value := CDSInventarioPisoPRECIO.asFloat;
          CDSAssembly_DetailQTY.Value := 1;
          FrmAssemblyEdit := TFrmAssemblyEdit.Create(self);
          With FrmAssemblyEdit do
          begin
            ShowModal;
            Free;
            BtnSave.Click;
          end;
        end;
        FrmSearchInv.Free;
      end
      else
      begin
        FrmSearchInv.Free;
        Loop := false;
      end;
    end;
  end;
end;

procedure TFrmAssembly.BtnSaveClick(Sender: TObject);
Var
  PrecioStr, CostoStr: Double;
begin
  With DMMidas do
  begin
    if (DSAssemblyDetail.State = dsEdit) or (DSAssemblyDetail.State = dsInsert) then
    begin
      CDSAssembly_Detail.Post;
      CalcTotal;
    end;
  end;
end;

procedure TFrmAssembly.BtnDeleteClick(Sender: TObject);
begin
  With DMMidas.CDSAssembly_Detail do
  begin
    If MessageDlg('Realmente quiere borrar',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    Begin
      Delete;
      CalcTotal;
    end;
  end;
end;

procedure TFrmAssembly.BtnOpen1Click(Sender: TObject);
begin
  DMMidas.CDSAssembly_Header.Edit;
end;

procedure TFrmAssembly.BtnOpenClick(Sender: TObject);
begin
  DMMidas.CDSAssembly_Detail.Edit;
  FrmAssemblyEdit := TFrmAssemblyEdit.Create(self);
  With FrmAssemblyEdit do
  begin
    ShowModal;
    Free;
    BtnSave.Click;
  end;

end;

procedure TFrmAssembly.CalcTotal;
begin
  With DMMidas do
  begin
    SQLQueryValue.Close;
    SQLQueryValue.ParamByName('NOTRANS').Value := CDSAssembly_DetailNO_TRANS.Value;
    SQLQueryValue.Open;

    SQLQueryCalcAusp.Close;
    SQLQueryCalcAusp.SQL.Clear;
    SQLQueryCalcAusp.SQL.Text := 'Update Assembly_header set Precio = ' + SQLQueryValueTPRECIO.AsString  + ', Costo = ' + SQLQueryValueTCOSTO.AsString + ' where NO_TRANS = ' + CDSAssembly_DetailNO_TRANS.AsString;
    //ShowMessage(SQLQueryCalcAusp.SQL.Text);
    SQLQueryCalcAusp.ExecSQL;
    BtnRefresh1.Click;
  end;
end;

procedure TFrmAssembly.EditSearchChange(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSAssembly_Header.Close;
    CDSAssembly_Header.CommandText := 'Select * from ASSEMBLY_HEADER where DESCRIPTION like ' + CHR(39) + EditSearch.Text + '%' + CHR(39) + ' order by DESCRIPTION';
    CDSAssembly_Header.Open;
  end;
end;

procedure TFrmAssembly.FormShow(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSAssembly_Header.Close;
    CDSAssembly_Header.CommandText := 'Select * from ASSEMBLY_HEADER order by DESCRIPTION';
    CDSAssembly_Header.Open;
  end;
end;

procedure TFrmAssembly.ToolButton8Click(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSAssembly_Header.Close;
    CDSAssembly_Header.CommandText := 'Select * from ASSEMBLY_HEADER order by DESCRIPTION';
    CDSAssembly_Header.Open;
  end;
end;

procedure TFrmAssembly.BtnRefreshClick(Sender: TObject);
begin
  DMMidas.CDSAssembly_Detail.Refresh;
  CalcTotal;
end;

procedure TFrmAssembly.BtnPrintClick(Sender: TObject);
Var
  NoTrans: integer;
begin
  NoTrans := DMMidas.CDSAssembly_HeaderNO_TRANS.Value;
  FrmEscoja := TFrmEscoja.Create(Self);
  With FrmEscoja do
  begin
    ShowModal;
    if ModalResult = mrOk then
    begin
      FrmRptReciboAssemblies := TFrmRptReciboAssemblies.Create(Application);
      With FrmRptReciboAssemblies do
      begin
        With DMMidas do
        begin
          CDSAssembly_Header.Close;
          CDSAssembly_Header.CommandText := 'Select * from Assembly_Header where No_trans = ' + IntToStr(NoTrans);
          CDSAssembly_Header.Active := True;
        end;
        //if RadioGroup1.ItemIndex = 0 then ppReport1.PrintReport;
        //if RadioGroup1.ItemIndex = 1 then ppReport2.PrintReport;
      end;
    end;
    With DMMidas do
    begin
      CDSAssembly_Header.Close;
      CDSAssembly_Header.CommandText := 'Select * from Assembly_Header Order by No_trans';
      CDSAssembly_Header.Active := True;
    end;

  end;
end;

end.
