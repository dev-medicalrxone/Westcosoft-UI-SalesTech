unit UntEditInventory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ExtCtrls, Mask, Menus, Vcl.Touch.Keyboard,
  Vcl.ComCtrls, Vcl.ToolWin;

type
  TFrmEditInventory = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label42: TLabel;
    Label43: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label44: TLabel;
    Label45: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label46: TLabel;
    SpeedButton4: TSpeedButton;
    Label50: TLabel;
    Label51: TLabel;
    GroupBox2: TGroupBox;
    DBText6: TDBText;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    DBText9: TDBText;
    Panel5: TPanel;
    DBText2: TDBText;
    DBText10: TDBText;
    Label21: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBComboBox1: TDBComboBox;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit15: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBEdit17: TDBEdit;
    Label3: TLabel;
    DBEdit16: TDBEdit;
    Label4: TLabel;
    DBEdit18: TDBEdit;
    Label6: TLabel;
    SpeedButton5: TSpeedButton;
    OpenDialog1: TOpenDialog;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBImage1: TDBImage;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Label9: TLabel;
    SpeedButton6: TSpeedButton;
    DBCheckBox7: TDBCheckBox;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    DBCheckBox8: TDBCheckBox;
    DBEdit23: TDBEdit;
    Button4: TButton;
    Label10: TLabel;
    TouchKeyboard1: TTouchKeyboard;
    ToolBar1: TToolBar;
    TlBtnPost: TToolButton;
    tbCancel: TToolButton;
    tbAppend: TToolButton;
    tbEdit: TToolButton;
    procedure DBEdit1Enter(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton5Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure TlBtnPostClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbCancelClick(Sender: TObject);
    procedure tbAppendClick(Sender: TObject);
    procedure tbEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEditInventory: TFrmEditInventory;

implementation

uses UntDMMidas, untMain, UntCommon, UntInventory, SqlExpr, DB, UntQueries,
  UntSalesPromotion, UntSelectDateTime, UntRecipe, UntCommonPOS;

{$R *.dfm}

procedure TFrmEditInventory.Button4Click(Sender: TObject);
begin
  FrmRecipe := TFrmRecipe.Create(nil);
  With FrmRecipe do
  begin
    With DMMidas do
    begin
      cdsRecipe.Close;
      cdsRecipe.CommandText := 'Select * from Recipe where MAIN_PRODUCT_ID = ' + CDSInventarioPisoPRODUCTNO.AsString;
      cdsRecipe.Open;
      Caption := 'Recipe for ' + CDSInventarioPisoDESCRIPCION.Value;
      ShowModal;
      FrmRecipe := Nil;
      FrmRecipe.Free;
      FDQuery1.SQL.Text := 'Select sum(Price) as TPrice, sum(Cost) as TCosto from Recipe where MAIN_PRODUCT_ID = ' + CDSInventarioPisoPRODUCTNO.AsString;
      FDQuery1.Open;
      if FDQuery1.RecordCount > 0 then
      begin
        CDSInventarioPisoCOSTO.asFloat := FDQuery1.FieldByName('TCosto').Value;
        CDSInventarioPisoPRECIO.asFloat := FDQuery1.FieldByName('TPrice').Value;
        CDSInventarioPisoRECIPE.Value := True;
      end
      else
        CDSInventarioPisoRECIPE.Value := False;
    end;
  end;
end;

procedure TFrmEditInventory.cxButton1Click(Sender: TObject);
Var
  ProductID: Integer;
  AuthUser, Barcode: String;
begin
  if MessageDlg('Precaución... Desea clonar este producto?' ,mtWarning,[mbYes,mbNo],0) = mrYes then
  begin
    AuthUser := CommonPOS.User;
    if CommonPOS.isAuthorized('',UserRights.MAIN_INV, false) then
    begin
      With DMMidas do
      begin
        CommonPOS.DisconnectFromDatabase;
        With CLONE_PRODUCT do
        begin
          Prepare;
          Barcode := InputBox('Enter new barcode:', 'barcode', '');
          if Trim(Barcode) > '' then
          begin
            ProductID := CDSInventarioPisoPRODUCTNO.Value;
            CDSInventarioPiso.Post;
            CDSInventarioPiso.Close;
            CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where CODIGOBARRA = ' + CHR(39) + Barcode + chr(39);
            CDSInventarioPiso.Open;
            if CDSInventarioPiso.RecordCount = 0 then
            begin
              ParamByName('@PRODUCTNO').Value := ProductID;
              ParamByName('@BARCODE').Value := barcode;
              ExecProc;
              ProductID := CLONE_PRODUCT.ParamByName('@PRODUCTID').Value;
              CDSInventarioPiso.Close;
              CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where PRODUCTNO = ' + IntToStr(ProductID);
              CDSInventarioPiso.Open;
              CDSInventarioPiso.Edit;

            end
            else
              ShowMessage('Product is in inventory!');
          end;
        end;
      end;
    end;
  end;
end;

procedure TFrmEditInventory.DBEdit1Enter(Sender: TObject);
begin
  With Sender as TDBEdit do
  begin
    If Focused then Color := clYellow else Color := clWhite;
    //If Field.IsNull and (Pos(DataField,'COSTOPRECIORBPESPECIALCMININVENTARIOCMAXINVENTARIOQTYINVENTARIO') <> 0) then
     // Field.Value := 0;
  end;
end;

procedure TFrmEditInventory.SpeedButton3Click(Sender: TObject);
Var
  NewUPC: String;
begin
  With DMMidas do
  begin
    CommonPOS.DisconnectFromDatabase;
    SPNEXT_BARCODE.Prepare;
    SPNEXT_BARCODE.ExecProc;
    NewUPC := IntToStr(SPNEXT_BARCODE.ParamByName('@BARCODE_NO').AsInteger);
    With SQLQuery do
    begin
      Close;
      SQL.Text := 'Select max(CODIGOBARRA) from INVENTARIOPISO where CODIGOBARRA like ' + #39 + NewUPC + '%'+ #39;    // '000000000%''';
      Active := True;;
      If Fields[0].asString <> '' then
      NewUPC := Format('%.12d',[StrToInt(Trim(Fields[0].asString)) + 1]);
      Active := False;
    end;
    CDSInventarioPisoCODIGOBARRA.Value := NewUPC;
  end;
end;

procedure TFrmEditInventory.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if ModalResult = mrOk then
    TlBtnPost.Click
  else
    tbCancel.Click;
end;

procedure TFrmEditInventory.FormKeyPress(Sender: TObject; var Key: Char);
begin
  CommonForm.Enter2tab(Self,Key);
end;

procedure TFrmEditInventory.SpeedButton5Click(Sender: TObject);
var
  ImageStr, dir: string;
  ButtonNumber: String;
begin
  //ButtonNumber := DMMidas.CDSBotonesBUTTON_NUMBER.AsString;
  //TBPost.Click;
  With DMMidas do
  begin
    cdsProductImage.Close;
    cdsProductImage.CommandText := 'Select * from Product_Image where PRODUCT_ID = ' + CDSInventarioPisoPRODUCTNO.AsString;
    cdsProductImage.Open;
    if cdsProductImagePRODUCT_ID.asString = '' then
    begin
      cdsProductImage.Append;
      cdsProductImagePRODUCT_ID.Value := CDSInventarioPisoPRODUCTNO.Value;
      cdsProductImage.Post;
    end;
    If OpenDialog1.Execute then
      ImageStr := (OpenDialog1.FileName);
    With SQLQuery do
    begin
      sql.Text := 'UPDATE PRODUCT_IMAGE SET IMAGE = (SELECT BulkColumn  FROM Openrowset( Bulk ' + chr(39) + ImageStr + chr(39) + ', Single_Blob) as img)' +
      {sql.Text := 'UPDATE PRODUCT_IMAGE SET IMAGE = (SELECT BulkColumn ' +
      ' FROM OPENROWSET( Bulk ' + chr(39) + ImageStr + chr(39) + ', SINGLE_BLOB) AS image)' +  }
      ' WHERE PRODUCT_ID = ' + CDSInventarioPisoPRODUCTNO.AsString;
      SQLQuery.ExecSQL();
    end;
    cdsProductImage.Refresh;
  end;
end;


procedure TFrmEditInventory.SpeedButton6Click(Sender: TObject);
begin
  FrmSalesPromo := TFrmSalesPromo.Create(nil);
  With FrmSalesPromo do
  begin
   ShowModal;
   DMMidas.CDSInventarioPisoSALES_PROMOTION_ID.Value := DMMidas.cdsSalesPromoID.Value;
   FrmSalesPromo := Nil;
   Free;
  end;
end;

procedure TFrmEditInventory.SpeedButton7Click(Sender: TObject);
begin
  FrmSelectDateTime := TFrmSelectDateTime.Create(nil);
  With FrmSelectDateTime do
  begin
    ShowModal;
    if ModalResult = mrOk then
    begin
      With DMMidas do
      begin
        CDSInventarioPisoCOMESPECIAL.asString := DateToStr(FrmSelectDateTime.dtpDate.Date) + ' ' +  TimeToStr(FrmSelectDateTime.dtpTime.Time);
      end;
    end;
    FrmSelectDateTime := Nil;
    Free;
  end;
end;

procedure TFrmEditInventory.SpeedButton8Click(Sender: TObject);
begin
  FrmSelectDateTime := TFrmSelectDateTime.Create(nil);
  With FrmSelectDateTime do
  begin
    ShowModal;
    if ModalResult = mrOk then
    begin
      With DMMidas do
      begin
        CDSInventarioPisoTERMINAESPECIAL.asString := DateToStr(FrmSelectDateTime.dtpDate.Date) + ' ' +  TimeToStr(FrmSelectDateTime.dtpTime.Time);
      end;
    end;
    FrmSelectDateTime := Nil;
    Free;
  end;
end;

procedure TFrmEditInventory.TlBtnPostClick(Sender: TObject);
begin
  With DMMidas do
  begin
    if (DSInventarioPiso.State = dsEdit) or (DSInventarioPiso.State = dsInsert) then
    begin
      CDSInventarioPiso.Post;
      CDSInventarioPiso.Refresh;
    end;
  end;
end;

procedure TFrmEditInventory.tbAppendClick(Sender: TObject);
begin
  With DMMidas do
  begin
    if (DSInventarioPiso.State <> dsEdit) or (DSInventarioPiso.State <> dsInsert) then
    begin
      CDSInventarioPiso.Insert;
    end;
  end;
end;

procedure TFrmEditInventory.tbCancelClick(Sender: TObject);
begin
  DMMidas.CDSInventarioPiso.Cancel;
end;

procedure TFrmEditInventory.tbEditClick(Sender: TObject);
begin
  With DMMidas do
  begin
    if (DSInventarioPiso.State <> dsEdit) or (DSInventarioPiso.State <> dsInsert) then
    begin
      CDSInventarioPiso.Edit;
    end;
  end;
end;

end.
