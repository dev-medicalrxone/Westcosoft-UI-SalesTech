unit UntShopper;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, ExtCtrls, Grids, DBGrids, StdCtrls, db;

type
  TFrmShopper = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    ToolBar2: TToolBar;
    ToolButton2: TToolButton;
    ToolButton44: TToolButton;
    ToolButton5: TToolButton;
    Panel4: TPanel;
    EditSearch: TEdit;
    CheckBox1: TCheckBox;
    ToolBar1: TToolBar;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton4: TToolButton;
    Button1: TButton;
    Button3: TButton;
    ToolButton122: TToolButton;
    ToolButton333: TToolButton;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton44Click(Sender: TObject);
    procedure EditSearchExit(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditSearchKeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
    procedure ToolButton122Click(Sender: TObject);
    procedure ToolButton333Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmShopper: TFrmShopper;

implementation

uses UntDMMidas, untMain, UntSearchInv2, UntEditBarcodePrintQ, UntEditInventory,
  UntlabelBC, UntQueries, UntCommon, UntCommonPOS, UntEditShopperDetail,
  UntShopperEdit;

{$R *.dfm}

procedure TFrmShopper.Button3Click(Sender: TObject);
Var
  DeptStr, SubDeptStr, SalesPromoID: String;
begin
  With DMMidas do
  begin
    //{cdsShopper.First;
    //while not cdsShopper.Eof do
    //begin
      if cdsShopperDetailSPECIAL.Value <= 0 then
      begin
        ShowMessage('Error ' + Trim(cdsShopperDESCRIPTION.Value) + ' special price must be grater than zero!');
        Exit;
      end;
      //cdsShopper.Next;
    //end;


    if cdsShopperDEPARTMENT.Value > 0 then
    begin
     DeptStr :=  ', Departamento = ' + cdsShopperDEPARTMENT.AsString;
    end
    else
      DeptStr := '';

    if cdsShopperSUB_DEPARTMENT.Value > 0 then
    begin
     SubDeptStr :=  ', SUB_DEPARTAMENTO = ' + cdsShopperSUB_DEPARTMENT.AsString;
    end
    else
      SubDeptStr := '';
    If MessageDlg('Apply special Update?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    Begin
      CommonPOS.DisconnectFromDatabase;
      With POST_SHOPPER do
      begin
        Prepare;
        ParamByName('@ID').Value := cdsShopperID.Value;
        ParamByName('@COMESPECIAL').Value := cdsShopperSTART_DATE.asDateTime;
        ParamByName('@TERMINAESPECIAL').Value := cdsShopperEND_DATE.asDateTime;
        ExecProc;
      end;
      cdsShopper.Refresh;
      ShowMessage('Shopper was posted!');
    End;
  end;
end;

procedure TFrmShopper.EditSearchExit(Sender: TObject);
Var
  SalePrice: Double;
begin
  With DMMidas do
  begin
    If Trim(EditSearch.Text) <> '' then
    begin
      FrmSearchInv2 := TFrmSearchInv2.Create(nil);
      With FrmSearchInv2 do
      begin
        Queries.OpenInventory(Trim(EditSearch.Text), '',false);
        if CDSInventarioPiso.RecordCount >= 1 then
        begin
          if CDSInventarioPiso.RecordCount > 1 then
          begin
            EditSearch.Text := '';
            begin
              ShowModal;
            end;
          end;
          if CDSInventarioPiso.RecordCount >= 1 then
          begin
            if cdsShopperDetail.Active = False then cdsShopperDetail.Active := True;
            cdsShopperDetail.First;
            if not cdsShopperDetail.Locate('PRODUCT_ID', CDSInventarioPisoPRODUCTNO.Value, []) then
            begin
              if CDSInventarioPisoESPECIAL.IsNull then
                SalePrice := 0
              else
                SalePrice := CDSInventarioPisoESPECIAL.asFloat;
              FDQuery1.SQL.Text := 'INSERT INTO [dbo].[SHOPPER_DETAIL] ([ID],[PRODUCT],[PRODUCT_ID],[COPIES],[LAST_SPECIAL],[SPECIAL],[RETAIL_PRICE],[SALES_PROMOTION_ID],[COST])' +
               ' VALUES ' +
               '(' + cdsShopperID.asString +
               ',' + chr(39) + CDSInventarioPisoDESCRIPCION.Value + chr(39) +
               ',' + CDSInventarioPisoPRODUCTNO.asString +
               ',' + '1' +
               ',' + chr(39) + FloatToStr(SalePrice) + chr(39) +
               ',' + FloatToStr(SalePrice) +
               ',' + CDSInventarioPisoPRECIO.asString +
               ',0'+
               ',' + CDSInventarioPisoCOSTO.asString +')';
              FDQuery1.ExecSQL;
            end;
            cdsShopperDetail.Refresh;
            cdsShopperDetail.Last;
            EditSearch.Text := '';
            EditSearch.SetFocus;
          end;
        end
        else
        begin
          ShowMessage('Product not found!');
          EditSearch.SetFocus;
        end;
        Free;
        FrmSearchInv2 := nil;
      end;
    end;
  end;
end;


procedure TFrmShopper.EditSearchKeyPress(Sender: TObject; var Key: Char);
begin
  CommonForm.Enter2tab(Self,Key);
end;

procedure TFrmShopper.FormShow(Sender: TObject);
begin
  With DMMidas do
  begin
    cdsShopper.Close;
    cdsShopper.CommandText := 'Select * from Shopper_header where PERCENTAGE_DISCOUNT = 0 OR PERCENTAGE_DISCOUNT IS NULL  order by ID';
    cdsShopper.Open;
    if CommonPOS.isAuthorized('', UserRights.POS_POST_SHOPPER, false) then
      Button3.Visible := True
    else
      Button3.Visible := False;
  end;
end;

procedure TFrmShopper.ToolButton10Click(Sender: TObject);
begin
    If MessageDlg('Delete this item?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    Begin
      DMMidas.cdsShopperDetail.Delete;
    End;
end;

procedure TFrmShopper.ToolButton122Click(Sender: TObject);
begin
  DMMidas.cdsShopper.First;
end;

procedure TFrmShopper.ToolButton13Click(Sender: TObject);
begin
  With DMMidas do
  begin
    FrmShopperEdit := TFrmShopperEdit.Create(nil);
    With FrmShopperEdit do
    begin
      cdsShopper.Append;
      ShowModal;
      if ModalResult = mrOk then
      begin
        cdsShopper.Post;
        cdsShopper.Refresh;
        cdsShopper.Last;
      end
      else
        cdsShopper.Cancel;

      FrmShopperEdit.Free;
      FrmShopperEdit := Nil;
    end;
  end;
end;

procedure TFrmShopper.ToolButton1Click(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSInventarioPiso.Close;
    CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where ProductNo = ' + cdsShopperDetailPRODUCT_ID.asString;
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

procedure TFrmShopper.ToolButton333Click(Sender: TObject);
begin
  DMMidas.cdsShopper.Last;
end;

procedure TFrmShopper.ToolButton3Click(Sender: TObject);
begin
  DMMidas.cdsShopperDetail.Refresh;
end;

procedure TFrmShopper.ToolButton44Click(Sender: TObject);
begin
  With DMMidas do
  begin
    FrmShopperEdit := TFrmShopperEdit.Create(nil);
    With FrmShopperEdit do
    begin
      cdsShopper.Edit;
      ShowModal;
      if ModalResult = mrOk then
        cdsShopper.Post
      else
        cdsShopper.Cancel;

      FrmShopperEdit.Free;
      FrmShopperEdit := Nil;
    end;
  end;
end;

procedure TFrmShopper.ToolButton4Click(Sender: TObject);
begin
  DMMidas.cdsShopper.Refresh;
end;

procedure TFrmShopper.ToolButton5Click(Sender: TObject);
begin
    If MessageDlg('Delete this item?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    Begin
      With DMMidas do
      begin
        SQLQuery1.SQL.Text := 'Delete from shopper_detail where ID = ' + cdsShopperID.AsString;
        SQLQuery1.ExecSQL();
        cdsShopper.Delete;
      end;
    End;
end;

procedure TFrmShopper.ToolButton6Click(Sender: TObject);
begin
  With DMMidas do
  begin
    if (dsShopperDetail.State = dsEdit) or (dsShopperDetail.State = dsInsert) then
    begin
      cdsShopperDetail.Post;
      cdsShopperDetail.Refresh;
    end;
  end;
end;

procedure TFrmShopper.ToolButton7Click(Sender: TObject);
Var
  PID: String;
begin
  With DMMidas do
  begin
    PID := CDSInventarioPisoPRODUCTNO.AsString;
    FrmLabelsBC := TFrmLabelsBC.Create(Self);
    With FrmLabelsBC do
    begin
      cdsShopperDetail.First;
      while not cdsShopperDetail.Eof do
      begin
        CDSInventarioPiso.Close;
        CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where ProductNo = ' + cdsShopperDetailPRODUCT_ID.asString;
        CDSInventarioPiso.Open;
        //ppReport1.PrinterSetup.Copies := cdsShopperDetailCOPIES.Value;
        //ppReport1.ShowPrintDialog := CheckBox1.Checked;
        //ppReport1.Print;
        cdsShopperDetail.Next;
      end;
      FrmLabelsBC.Free;
    end;
  end;
end;

procedure TFrmShopper.ToolButton8Click(Sender: TObject);
begin
  With DMMidas do
  begin
    FrmEditShopperDetail := TFrmEditShopperDetail.Create(self);
    With FrmEditShopperDetail do
    begin
      cdsShopperDetail.Edit;
      ShowModal;
      if ModalResult = mrOk then cdsShopperDetail.Post else cdsShopperDetail.Cancel;
      cdsShopperDetail.Refresh;
      Free;
    end;
  end;
end;



end.
