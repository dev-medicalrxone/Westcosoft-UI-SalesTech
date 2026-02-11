unit UntInventory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, ToolWin, ComCtrls, StdCtrls, Mask,
  Buttons, ExtCtrls, DB, DBCGrids, Vcl.Touch.Keyboard, Vcl.Menus, ResourceLocalizer;

type
  TFrmInventory = class(TForm)
    PnlSearchProd: TPanel;
    EdtSearch: TEdit;
    Button1: TButton;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    SpeedButton27: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton28: TSpeedButton;
    SpeedButton29: TSpeedButton;
    SpeedButton30: TSpeedButton;
    SpeedButton31: TSpeedButton;
    SpeedButton32: TSpeedButton;
    SpeedButton33: TSpeedButton;
    SpeedButton34: TSpeedButton;
    SpeedButton35: TSpeedButton;
    SpeedButton36: TSpeedButton;
    Label1: TLabel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    TlBtnPost: TToolButton;
    TlBtnRefresh: TToolButton;
    ToolButton16: TToolButton;
    ToolButton5: TToolButton;
    TlBtnCancel: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    cxPageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Label77: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    SpeedButton38: TSpeedButton;
    Label18: TLabel;
    DBEdit1: TDBEdit;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    DBText15: TDBText;
    DBText21: TDBText;
    TabSheet3: TTabSheet;
    DBCtrlGrid2: TDBCtrlGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    SpeedButton37: TSpeedButton;
    DBEdit2: TDBEdit;
    TabSheet4: TTabSheet;
    Panel4: TPanel;
    Label6: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    SpeedButton39: TSpeedButton;
    DBEdit3: TDBEdit;
    DBCtrlGrid3: TDBCtrlGrid;
    DBText3: TDBText;
    DBText10: TDBText;
    DBText16: TDBText;
    DBText17: TDBText;
    DBText18: TDBText;
    DBText19: TDBText;
    DBText20: TDBText;
    TouchKeyboard1: TTouchKeyboard;
    ToolButton2: TToolButton;
    Button2: TButton;
    cbFilterByDept: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid3TitleClick(Column: TColumn);
    procedure TBSearchProdClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure TlBtnRefreshClick(Sender: TObject);
    procedure TlBtnPost2Click(Sender: TObject);
    procedure TlBtnCancel2Click(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBCtrlGrid1DblClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure EdtSearchExit(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBEdit2Change(Sender: TObject);
    procedure SpeedButton39Click(Sender: TObject);
    procedure ToolButton23Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);

    procedure dxBarButton4Click(Sender: TObject);
    procedure EdtSearchKeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure language;
    procedure FormShow(Sender: TObject);
    procedure cbFilterByDeptClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInventory: TFrmInventory;

implementation

uses UntDMMidas, UntQueries, UntEditInventory, UntAgruparProductos, untMain,
  UntBrowseInv, UntCommon, UntCommonPOS, UntlabelBC, UntSeleccioneOpcion,
  UntEditInventorySP, UntExportInventory, UntDepartments;

{$R *.dfm}

procedure TFrmInventory.FormClose(Sender: TObject;
  var Action: TCloseAction);
Var
  MyRes: TModalResult;
begin
  //If TlBtnPost.Enabled then
  //begin
    {MyRes := MessageDlg('Inventario - Hay cambios pendientes, ¿desea guardar?',mtConfirmation,[mbYes,mbNo,mbCancel],0);
    If MyRes = mrCancel then
      Action := caNone
    else
    begin
      If MyRes = mrYes then
      begin
        If DMMidas.CDSInventarioPiso.ApplyUpdates(-1) = 0 then
        begin
          DMMidas.CDSInventarioPiso.Active := False;
          Action := caFree;
          FrmInventory := NIL;
        end
        else
        begin
          Action := caNone;
        end;
      end
      else
      begin
        DMMidas.CDSInventarioPiso.CancelUpdates;
      end;
    end;}
  //end
  //else
  begin
    //DMMidas.CDSInventarioPiso.Active := False;
    Action := caFree;
    FrmInventory := NIL;
  end;
  FrmMain.PanelHeading.Visible := True;
end;

procedure TFrmInventory.DBGrid3TitleClick(Column: TColumn);
Var
  NUPC: String;
begin
  NUPC := DMMidas.CDSInventarioPisoCODIGOBARRA.Value;
  Case Column.Index of
    0:
    begin
      With DMMidas.CDSInventarioPiso do
      begin
        Active := False;
        CommandText := 'Select * from InventarioPiso with (NOLOCK) where recetario = ' +#39 + 'P'+ #39  + ' order by CODIGOBARRA';
        Active := True;
      end;
    end;
    1:
    begin
      With DMMidas.CDSInventarioPiso do
      begin
        Active := False;
        CommandText := 'Select * from InventarioPiso with (NOLOCK) where recetario = '  +#39 + 'P'+ #39 + ' order by Descripcion';
        Active := True;
      end;
    end;
  end;
  DMMidas.CDSInventarioPiso.Locate('CODIGOBARRA',NUPC,[])
end;

procedure TFrmInventory.dxBarButton4Click(Sender: TObject);
begin
  With DMMidas do
  begin
    //
  end;
end;

procedure TFrmInventory.TBSearchProdClick(Sender: TObject);
Var
  NUPC: String;
begin
  PnlSearchProd.Visible := True;
  //PnlSearchProd.Visible := TBSearchProd.Down;
 // If PnlSearchProd.Visible = False then PnlSearchProd.Visible := True;
  If PnlSearchProd.Visible = True then
  begin
    EdtSearch.SetFocus
  end
  else
  begin
    {With DMMidas do
    begin
      NUPC := DMMidas.CDSInventarioPisoCODIGOBARRA.Value;
      CDSInventarioPiso.Active := False;
      CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where recetario = ' +#39 + 'P'+ #39 + ' order by CODIGOBARRA';
      CDSInventarioPiso.Active := True;
      DMMidas.CDSInventarioPiso.Locate('CODIGOBARRA',NUPC,[])
    end;
    //Grid3.SetFocus;  }
  end;
end;

procedure TFrmInventory.FormCreate(Sender: TObject);
begin
  With DMMidas do
  begin
   { if StandalonePOS = true then
    begin
      QInventarioPisoFD.Connection := FDConnection1;
    end;  }
    //CDSInventarioPiso.Active := True;
    CDSInventarioPiso.Close;
    CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where recetario = ' +#39 + 'P'+ #39 + ' and Descripcion like ' + #39 +  'A%' + #39 +' order by Descripcion';
    CDSInventarioPiso.Open;
  end;
end;

procedure TFrmInventory.FormShow(Sender: TObject);
begin
  if FrmMain.LanguageStr = 'English' then
    language;
end;

procedure TFrmInventory.language;
begin
  DBGrid1.Columns[0].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 111);
  DBGrid1.Columns[1].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 112);
  DBGrid1.Columns[2].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 108);
  DBGrid1.Columns[3].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 113);
  DBGrid1.Columns[4].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 114);
  DBGrid1.Columns[10].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 115);
  DBGrid1.Columns[11].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 116);
  DBGrid1.Columns[12].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 117);
  DBGrid1.Columns[13].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 118);
  DBGrid1.Columns[14].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 119);
  DBGrid1.Columns[15].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 120);
  DBGrid1.Columns[16].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 121);
  DBGrid1.Columns[17].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 122);
  DBGrid1.Columns[18].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 123);
  DBGrid1.Columns[19].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 124);
  DBGrid1.Columns[20].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 125);
  DBGrid1.Columns[22].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 126);
  DBGrid1.Columns[23].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 127);
  DBGrid1.Columns[24].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 128);
  DBGrid1.Columns[25].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 129);
  DBGrid1.Columns[30].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 130);
  DBGrid1.Columns[31].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 131);
  TabSheet1.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 069);
  Label72.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 132);
  Label73.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 133);
  Label75.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 134);
  Label76.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 135);
  Label4.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 132);
  Label7.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 136);
  Label8.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 134);
  Label9.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 137);
  Label13.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 132);
  Label14.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 133);
  Label16.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 134);
  Label17.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 135);
end;

procedure TFrmInventory.SpeedButton1Click(Sender: TObject);
begin
  With Sender as TSpeedButton do
  Queries.OpenInventory(Caption, '',false);
end;

procedure TFrmInventory.ToolButton5Click(Sender: TObject);
begin
  FrmEditInventorySP := TFrmEditInventorySP.Create(Self);
  With FrmEditInventorySP, DMMidas.CDSInventarioPiso do
  begin
    tbAppend.Click;
    ShowModal;
    FrmEditInventory := Nil;
    FrmEditInventory.Free;
  end;
end;

procedure TFrmInventory.ToolButton17Click(Sender: TObject);
begin
  With DMMidas do
  begin
    if FrmMain.LanguageStr = 'English' then
      FrmMain.msgD := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 296)
    else
      FrmMain.msgD := '¿Realmente quiere borrar?';
    If MessageDlg(FrmMain.msgD,mtConfirmation,[mbYes,mbNo],0) = mrYes then
    Begin
      CommonPOS.InsertLog('Drug deleted', 'D', DMMidas.CDSInventarioPisoCODIGOBARRA.Value,
                  Copy(CommonPOS.User,1,3), '',
                  0, 0, 0, 0,
                  0, 0, 0, DMMidas.CDSInventarioPisoPRODUCTNO.Value,'Product ' + Trim(DMMidas.CDSInventarioPisoDESCRIPCION.Value) + ' was deleted by ' + CommonPOS.User ,false,true);
      FDQuery1.SQL.Text := 'Delete from InventarioPiso where ProductNo = ' + CDSInventarioPisoPRODUCTNO.asString;
      FDQuery1.ExecSQL;
      CDSInventarioPiso.Refresh;
      TlBtnPost.Enabled := True;
      TlBtnCancel.Enabled := True;
      TlBtnRefresh.Enabled := False;
    end;
  end;
end;

procedure TFrmInventory.ToolButton16Click(Sender: TObject);
begin
  //if CommonPOS.isAuthorized('MAIN_INV', false) then
  if (UserRights.MAIN_INV = True) or (Trim(CommonPOS.User) = 'ADM') then
  begin
    FrmEditInventorySP := TFrmEditInventorySP.Create(Self);
    With FrmEditInventorySP do
    begin
      ShowModal;
      FrmEditInventorySP := Nil;
      FrmEditInventorySP.Free;
    end;
  end;
end;

procedure TFrmInventory.TlBtnRefreshClick(Sender: TObject);
begin
  DMMidas.CDSInventarioPiso.Refresh;
end;

procedure TFrmInventory.TlBtnPost2Click(Sender: TObject);
var
  GProductNo, Departamento, Sub_departamento: Integer;
  Precio, Costo: Double;
begin
  With DMMidas do
  begin
    GProductNo := CDSInventarioPisoGROUP_PRODUCTNO.Value;
    Costo := CDSInventarioPisoCOSTO.asFloat;
    Precio := CDSInventarioPisoPRECIO.asFloat;
    Departamento := CDSInventarioPisoDEPARTAMENTO.Value;
    Sub_departamento := CDSInventarioPisoSUB_DEPARTAMENTO.Value;
  end;
end;


procedure TFrmInventory.TlBtnCancel2Click(Sender: TObject);
begin
  DMMidas.CDSInventarioPiso.CancelUpdates;
  TlBtnPost.Enabled := False;
  TlBtnCancel.Enabled := False;
  TlBtnRefresh.Enabled := True;
end;

procedure TFrmInventory.DBGrid3DblClick(Sender: TObject);
begin
  ToolButton16.Click;
end;


procedure TFrmInventory.Button2Click(Sender: TObject);
begin
  With DMMidas do
  begin
        With DMMidas.CALC_PRODUCT_TAX do
        begin
          Prepare;
          ParambyName('@PRODUCTNO').Value := CDSInventarioPisoPRODUCTNO.Value;
          ParambyName('@QTY').Value := 1;
          ParamByName('@PRICE').Value := CDSInventarioPisoPRECIO.asFloat;
          ExecProc;
          ShowMessage('Price: ' + FloatToStr(CDSInventarioPisoPRECIO.asFloat) + chr(13) +
          'Total Tax: ' + FloatToStr(ParamByName('@TOTAL_TAX').Value));
          //SalesTax := FDQuery1.FieldByName('Price').Value + SalesTax + ParamByName('@TOTAL_TAX').Value;
        end;
  end;
end;

procedure TFrmInventory.cbFilterByDeptClick(Sender: TObject);
begin
  if cbFilterByDept.Checked = True then
  begin
    if CommonPOS.isAuthorized('',UserRights.MAIN_DEPT, false) then
    begin
      FrmDepartments := TFrmDepartments.Create(self);
      With FrmDepartments do
      begin
        DBGrid2.Visible := False;
        ToolBar2.Visible := False;
        DBGrid1.Align := alClient;
        ShowModal;
        If ModalResult = mrOK then
        begin
          with DMMidas do
          begin
            CDSInventarioPiso.Close;
            CDSInventarioPiso.CommandText := 'select top (1000) * from INVENTARIOPISO where DEPARTAMENTO = ' + chr(39) + CDSDepartamentosDEPARTAMENTO.asString + chr(39);
            CDSInventarioPiso.Open;
          end;
        end
        else
        begin
          //DMMidas.CDSDepartamentos.CancelUpdates;
          cbFilterByDept.Checked := False;
        end;
        Release;
      end;
    end;
  end
  else
  begin
    FormCreate(nil);         //Cmt: To reset the filter by department 11/17/2025//
  end;
end;

procedure TFrmInventory.DBCtrlGrid1DblClick(Sender: TObject);
begin
  ToolButton16.Click;
end;

procedure TFrmInventory.DBGrid1DblClick(Sender: TObject);
begin
  if CommonPOS.isAuthorized('',UserRights.EDIT_INVENTORY, false) = true then
    ToolButton16.Click;
end;

procedure TFrmInventory.ToolButton1Click(Sender: TObject);
begin
  Queries.OpenInventory(Trim(DMMidas.CDSInventarioPisoCodigoBarra.Value), '',false);
end;

procedure TFrmInventory.EdtSearchExit(Sender: TObject);
Var
  Token1: String;
begin
  if EdtSearch.Text > ' ' then
  begin
    Token1 := Trim(EdtSearch.Text);
    Queries.OpenInventory(Token1, '',false);
    //ShowMessage(IntToStr(DMMidas.CDSInventarioPiso.RecordCount));
    if DMMidas.CDSInventarioPiso.RecordCount = 0 then
    begin
      if FrmMain.LanguageStr = 'English' then
        ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 320))
      else
      ShowMessage('Producto no encontrado...');
      EdtSearch.SetFocus;
    end
    else
      EdtSearch.Text := '';
  end;
end;

procedure TFrmInventory.EdtSearchKeyPress(Sender: TObject; var Key: Char);
begin
  CommonForm.Enter2tab(Self,Key);
end;

procedure TFrmInventory.DBEdit1Change(Sender: TObject);
begin
  IF cxPageControl1.ActivePageIndex = 1 then
  begin
    With DMMidas do
    begin
      CDSOrderDetailHistory.Close;
      if CDSInventarioPisoRECETARIO.Value = 'P' then
        CDSOrderDetailHistory.CommandText := 'SELECT ORDER_HEADER_1.ORDERDATE, ORDER_HEADER_1.SUPPLIER, ORDER_HEADER_1.ORDERID, ORDER_HEADER_1.PO_NO, ' +
                                             'ORDER_DETAIL_1.ORDERID, ORDER_DETAIL_1.DESCRIPTION, ORDER_DETAIL_1.PRICE, ORDER_DETAIL_1.COSTRECEIVED, '+
                                             'ORDER_DETAIL_1.COSTORDERED, ORDER_DETAIL_1.AWP, ORDER_DETAIL_1.QTYRECEIVED, ORDER_DETAIL_1.UPC FROM ORDER_HEADER ORDER_HEADER_1 ' +
                                             'INNER JOIN ORDER_DETAIL ORDER_DETAIL_1 ON ' +
                                             '(ORDER_DETAIL_1.ORDERID = ORDER_HEADER_1.ORDERID) ' +
                                             'where ORDER_DETAIL_1.UPC = ' + #39 + Trim(CDSInventarioPisoCODIGOBARRA.Value) + #39 +
                                             ' ORDER BY ORDER_HEADER_1.ORDERID, ORDER_HEADER_1.ORDERDATE '
      else
        CDSOrderDetailHistory.CommandText := 'SELECT ORDER_HEADER_1.ORDERDATE, ORDER_HEADER_1.SUPPLIER, ORDER_HEADER_1.ORDERID, ORDER_HEADER_1.PO_NO, ' +
                                             'ORDER_DETAIL_1.ORDERID, ORDER_DETAIL_1.DESCRIPTION, ORDER_DETAIL_1.PRICE, ORDER_DETAIL_1.COSTRECEIVED, '+
                                             'ORDER_DETAIL_1.COSTORDERED, ORDER_DETAIL_1.AWP, ORDER_DETAIL_1.QTYRECEIVED, ORDER_DETAIL_1.UPC FROM ORDER_HEADER ORDER_HEADER_1 ' +
                                             'INNER JOIN ORDER_DETAIL ORDER_DETAIL_1 ON ' +
                                             '(ORDER_DETAIL_1.ORDERID = ORDER_HEADER_1.ORDERID) ' +
                                             'where ORDER_DETAIL_1.UPC = ' + #39 + Trim(CDSInventarioPisoNDC.Value) + #39 +
                                             ' ORDER BY ORDER_HEADER_1.ORDERID, ORDER_HEADER_1.ORDERDATE ';

      CDSOrderDetailHistory.Open;
      CDSOrderDetailHistory.Last;
    end;
  end;
end;

procedure TFrmInventory.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  With DMMidas do
  begin
    if CDSInventarioPisoQTYINVENTARIO.asFloat < CDSInventarioPisoCMININVENTARIO.Value then
    Begin
      With (Sender as TDBGrid) do Canvas.Font.Color := clRed;
      if (gdSelected in State) then
      begin
        with (Sender as TDBGrid) do
        begin
          Canvas.Font.Color := clWhite;
        end;
      end;
    end;
    if CDSInventarioPisoQTYINVENTARIO.asFloat = CDSInventarioPisoCMININVENTARIO.Value then
    Begin
      With (Sender as TDBGrid) do Canvas.Font.Color := clYellow;
      if (gdSelected in State) then
      begin
        with (Sender as TDBGrid) do
        begin
          Canvas.Font.Color := clWhite;
        end;
      end;
    end;
    if CDSInventarioPisoQTYINVENTARIO.asFloat > CDSInventarioPisoCMININVENTARIO.Value then
    Begin
      With (Sender as TDBGrid) do Canvas.Font.Color := clLime;
      if (gdSelected in State) then
      begin
        with (Sender as TDBGrid) do
        begin
          Canvas.Font.Color := clWhite;
        end;
      end;
    end;
  with (Sender as TDBGrid) do DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TFrmInventory.DBEdit2Change(Sender: TObject);
begin
  IF cxPageControl1.ActivePageIndex = 2 then
  begin
    With DMMidas do
    begin
      CDSVerTransacciones.Close;
      CDSVerTransacciones.CommandText := 'Select UPC, QTY, PRICE, TRANSACTIONNUMBER, employnumber, register, fechaventa, ID from VerTransacciones where UPC = ' + #39 + CDSInventarioPisoCODIGOBARRA.Value + #39 + ' order by TRANSACTIONNUMBER';
      CDSVerTransacciones.Open;
    end;
  end;
end;

procedure TFrmInventory.SpeedButton39Click(Sender: TObject);
begin
    With DMMidas do
    begin
      CDSTransferHistory.Close;
      if CDSInventarioPisoRECETARIO.Value = 'P' then
        CDSTransferHistory.CommandText :=  'SELECT ORDER_HEADER_1.TRANSFERDATE, ORDER_HEADER_1.PARTNER, ORDER_HEADER_1.TRANSFERID, '+
                                             'ORDER_DETAIL_1.TRANSFERID, ORDER_DETAIL_1.PRODUCTO, ORDER_DETAIL_1.PRICE, ORDER_DETAIL_1.COSTSENT, ' +
                                             'ORDER_DETAIL_1.AWP, ORDER_DETAIL_1.QTYRECEIVED, ORDER_DETAIL_1.UPC FROM TRANSFER_HEADER ORDER_HEADER_1 ' +
                                             'INNER JOIN TRANSFER_DETAIL ORDER_DETAIL_1 ON '+
                                             '(ORDER_DETAIL_1.TRANSFERID = ORDER_HEADER_1.TRANSFERID) '+
                                             'where ORDER_DETAIL_1.UPC = ' + #39 + Trim(CDSInventarioPisoCODIGOBARRA.Value) + #39 + 
                                             ' ORDER BY ORDER_HEADER_1.TRANSFERID, ORDER_HEADER_1.TRANSFERDATE ';

      CDSTransferHistory.Open;
      CDSTransferHistory.Last;
    end;
  //end;
end;

procedure TFrmInventory.ToolButton23Click(Sender: TObject);
Var
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  //If FrmMain.IsAuthorized(AuthUser,1) then
  //if CommonPOS.isAuthorized('MAIN_INV', false) then
  if (UserRights.MAIN_INV = True) or (Trim(CommonPOS.User) = 'ADM') then
  begin
    FrmBrowseInventory := TFrmBrowseInventory.Create(Application);
    With FrmBrowseInventory do
    begin
      ShowModal;
      Free;
    end;
  end;
end;

procedure TFrmInventory.ToolButton2Click(Sender: TObject);
begin
  if CommonPOS.isAuthorized('MAIN_RECV',UserRights.MAIN_RECV,true) then
  begin
    FrmExportInventory := TFrmExportInventory.Create(nil);
    With FrmExportInventory do
    begin
      ShowModal;
      Free;
      FrmExportInventory := Nil;
    end;
  end;
end;

procedure TFrmInventory.ToolButton3Click(Sender: TObject);
Var
  PID: Integer;
begin
  With DMMidas do
  begin
    PID := CDSInventarioPisoPRODUCTNO.Value;
    FrmLabelsBC := TFrmLabelsBC.Create(Self);
    With FrmLabelsBC do
    begin
      CDSInventarioPiso.Close;
      CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where ProductNo = ' + IntToStr(PID);
      CDSInventarioPiso.Open;
      FrmSeleccioneOpcion := TFrmSeleccioneOpcion.Create(Self);
      With FrmSeleccioneOpcion do
      begin
        ShowModal;
        if RadioGroup1.ItemIndex = 0 then frxReport1.ShowReport;
        if RadioGroup1.ItemIndex = 1 then frxReport125_2.ShowReport;
        if RadioGroup1.ItemIndex = 3 then frxReport1x2.ShowReport;
        if RadioGroup1.ItemIndex = 4 then frxReport1x2.ShowReport;
        FrmSeleccioneOpcion.Free;
      end;
    end;
  end;
end;
{Var
  PID: String;
begin
  With DMMidas do
  begin
    PID := CDSInventarioPisoPRODUCTNO.AsString;
    FrmLabelsBC := TFrmLabelsBC.Create(Self);
    With FrmLabelsBC do
    begin
      CDSInventarioPiso.Close;
      CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where ProductNo = ' + PID;
      CDSInventarioPiso.Open;
      FrmSeleccioneOpcion := TFrmSeleccioneOpcion.Create(Self);
      With FrmSeleccioneOpcion do
      begin
        ShowModal;
        if RadioGroup1.ItemIndex = 0 then
        begin

          //ppReport1.Print;
        end;
        //if RadioGroup1.ItemIndex = 1 then ppReport3.Print;
        //if RadioGroup1.ItemIndex = 2 then ppReport2.Print;
        FrmSeleccioneOpcion.Free;
      end;
    end;
  end;
end;
}
procedure TFrmInventory.ToolButton6Click(Sender: TObject);
Var
  PID: String;
begin
  With DMMidas do
  begin
    PID := CDSInventarioPisoPRODUCTNO.AsString;
    FrmLabelsBC := TFrmLabelsBC.Create(Self);
    With FrmLabelsBC do
    begin
      CDSInventarioPiso.Close;
      CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where ProductNo = ' + PID;
      CDSInventarioPiso.Open;
      //ppReport2.Print;
    end;
  end;
end;

end.
