unit UntShopperDailySale;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin;

type
  TFrmShopperDailySale = class(TForm)
    ToolBar2: TToolBar;
    ToolButton13: TToolButton;
    ToolButton2: TToolButton;
    ToolButton44: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton122: TToolButton;
    ToolButton333: TToolButton;
    DBGrid1: TDBGrid;
    ToolBar1: TToolBar;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    Panel4: TPanel;
    EditSearch: TEdit;
    CheckBox1: TCheckBox;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    Button1: TButton;
    Button3: TButton;
    Button2: TButton;
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton44Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure EditSearchKeyPress(Sender: TObject; var Key: Char);
    procedure EditSearchExit(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure PostShopper(Active_Inactive: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmShopperDailySale: TFrmShopperDailySale;

implementation

{$R *.dfm}

uses UntDMMidas, UntShpperDailySaleEdit, UntSearchInv2, UntQueries, UntCommon,
  UntCommonPOS;

procedure TFrmShopperDailySale.Button2Click(Sender: TObject);
begin
  PostShopper(False);
end;

procedure TFrmShopperDailySale.Button3Click(Sender: TObject);
begin
  PostShopper(True);
end;

procedure TFrmShopperDailySale.EditSearchExit(Sender: TObject);
Var
  DailyPrice: Double;
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
              if CDSInventarioPisoDAILY_SPECIAL_PRICE.IsNull = True then
                DailyPrice := 0
              else
                DailyPrice := CDSInventarioPisoDAILY_SPECIAL_PRICE.asFloat;
              FDQuery1.SQL.Text := 'INSERT INTO [dbo].[SHOPPER_DETAIL] ([ID],[PRODUCT],[PRODUCT_ID],[COPIES],[LAST_SPECIAL],[SPECIAL],[RETAIL_PRICE],[SALES_PROMOTION_ID],[COST])' +
               ' VALUES ' +
               '(' + cdsShopperID.asString +
               ',' + chr(39) + CDSInventarioPisoDESCRIPCION.Value + chr(39) +
               ',' + CDSInventarioPisoPRODUCTNO.asString +
               ',' + '1' +
               ',' + chr(39) + CDSInventarioPisoESPECIAL.asString + chr(39) +
               ',' + FloatToStr(DailyPrice) +
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

procedure TFrmShopperDailySale.EditSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  CommonForm.Enter2tab(Self,Key);
end;

procedure TFrmShopperDailySale.FormShow(Sender: TObject);
begin
  With DMMidas do
  begin
    cdsShopper.Close;
    cdsShopper.CommandText := 'Select * from Shopper_header where PERCENTAGE_DISCOUNT > 0 order by ID';
    cdsShopper.Open;
    if CDSPasswordsPOS_POST_SHOPPER.Value = True then
      Button3.Visible := True
    else
      Button3.Visible := False;
  end;
end;

procedure TFrmShopperDailySale.PostShopper(Active_Inactive: Boolean);
Var
  MessageStr: String;
begin
  With DMMidas do
  begin
    if cdsShopperPERCENTAGE_DISCOUNT.Value > 0 then
    begin
      if Active_Inactive = True then
        MessageStr := 'Activate Daily special Update?'
      else
        MessageStr := 'Inactivate Daily special Update?';
      If MessageDlg(MessageStr ,mtConfirmation,[mbYes,mbNo],0) = mrYes then
      Begin
        CommonPOS.DisconnectFromDatabase;
        With POST_SHOPPER_DAILY do
        begin
          Prepare;
          ParamByName('@ID').Value := cdsShopperID.Value;
          ParamByName('@COMESPECIAL').Value := StrToTime(cdsShopperDAILY_SALE_START_TIME.Text);
          ParamByName('@TERMINAESPECIAL').Value := StrToTime(cdsShopperDAILY_SALE_END_TIME.Text);
          ParamByName('@PERCENTAGE_DISCOUNT').Value := cdsShopperPERCENTAGE_DISCOUNT.AsFloat;
          ParamByName('@ACTIVE_INACTIVE').Value := Active_Inactive;
          ExecProc;
        end;
        cdsShopper.Refresh;
        if Active_Inactive = True then
          ShowMessage('Daily special activated!')
        else
          ShowMessage('Daily special Inactivated!');
      End;
    end
    else
      ShowMessage('Percentage discount must be grater than zero!');
  end;
end;

procedure TFrmShopperDailySale.ToolButton10Click(Sender: TObject);
begin
    If MessageDlg('Delete this item?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    Begin
      DMMidas.cdsShopperDetail.Delete;
    End;
end;

procedure TFrmShopperDailySale.ToolButton13Click(Sender: TObject);
begin
  With DMMidas do
  begin
    FrmShopperDailySaleEdit := TFrmShopperDailySaleEdit.Create(nil);
    With FrmShopperDailySaleEdit do
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

      FrmShopperDailySaleEdit.Free;
      FrmShopperDailySaleEdit := Nil;
    end;
  end;
end;

procedure TFrmShopperDailySale.ToolButton44Click(Sender: TObject);
begin
  With DMMidas do
  begin
    FrmShopperDailySaleEdit := TFrmShopperDailySaleEdit.Create(nil);
    With FrmShopperDailySaleEdit do
    begin
      cdsShopper.Edit;
      ShowModal;
      if ModalResult = mrOk then
        cdsShopper.Post
      else
        cdsShopper.Cancel;

      FrmShopperDailySaleEdit.Free;
      FrmShopperDailySaleEdit := Nil;
    end;
  end;
end;

procedure TFrmShopperDailySale.ToolButton4Click(Sender: TObject);
begin
  DMMidas.cdsShopper.Refresh;
end;

procedure TFrmShopperDailySale.ToolButton5Click(Sender: TObject);
begin
    If MessageDlg('Delete this item?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    Begin
      With DMMidas do
      begin
        SQLQuery1.SQL.Text := 'Delete from shopper_detail where ID = ' + cdsShopperID.AsString;
        SQLQuery1.ExecSQL();
        cdsShopper.Delete;
      end;
    End
end;

procedure TFrmShopperDailySale.ToolButton6Click(Sender: TObject);
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

end.
