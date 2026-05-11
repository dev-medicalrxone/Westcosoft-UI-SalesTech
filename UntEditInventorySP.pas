unit UntEditInventorySP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.Buttons, Vcl.Touch.Keyboard, Vcl.DBCtrls,
  Vcl.ExtDlgs, ResourceLocalizer{, hyiedefs, hyieutils, iexBitmaps, iesettings, iexLayers,
  iexRulers, iexToolbars, iexUserInteractions, imageenio, imageenproc, ieview,
  imageenview{, hyieutils, iexBitmaps, hyiedefs, iesettings, iexLayers,
  iexRulers, ieview, imageenview, data.db, iexToolbars, iexUserInteractions,
  imageenio, imageenproc};

type
  TFrmEditInventorySP = class(TForm)
    ToolBar1: TToolBar;
    tbAppend: TToolButton;
    tlBtnPost: TToolButton;
    tbEdit: TToolButton;
    tbCancel: TToolButton;
    TouchKeyboard1: TTouchKeyboard;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    btnRecipe: TButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    OpenDialog1: TOpenDialog;
    SavePictureDialog1: TSavePictureDialog;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label43: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label44: TLabel;
    Label45: TLabel;
    Bevel3: TBevel;
    Label4: TLabel;
    Label9: TLabel;
    Bevel4: TBevel;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label10: TLabel;
    Bevel5: TBevel;
    Label2: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Bevel6: TBevel;
    Label46: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label3: TLabel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Label1: TLabel;
    sbNewUPC: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label5: TLabel;
    Bevel10: TBevel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label11: TLabel;
    EditDescription: TEdit;
    EditCosto: TEdit;
    EditRetailPrice: TEdit;
    EditPrecioVenta2: TEdit;
    EditPrecioGrupo: TEdit;
    EditGROUP_QTY: TEdit;
    EditPrecioCaja: TEdit;
    EditQtyCaja: TEdit;
    EditEspecial: TEdit;
    EditCOMESPECIAL: TEdit;
    EditTERMINAESPECIAL: TEdit;
    EditSALES_PROMOTION_ID: TEdit;
    EditNO_MODIFIERS: TEdit;
    cbKitchen: TCheckBox;
    cbModifiers: TCheckBox;
    EditMinimo: TEdit;
    EditMaximo: TEdit;
    EditQtyInventario: TEdit;
    cbEditarPrecio: TCheckBox;
    EditPO: TEdit;
    EditUPC: TEdit;
    EditPartNumber: TEdit;
    EditDeptDesc: TEdit;
    EditAdditionalInfo: TEdit;
    cbShowIndividual: TCheckBox;
    cbPatrocinio: TCheckBox;
    cbStateTaxable: TCheckBox;
    cbLocalTax: TCheckBox;
    cbFoodItem: TCheckBox;
    cbNoUPC: TCheckBox;
    EditProductID: TEdit;
    EditSubDeptDesc: TEdit;
    EditSupDesc: TEdit;
    cbRecipe: TCheckBox;
    EditRecipePrice: TEdit;
    eDailySalePrice: TEdit;
    eDailySaleStartTime: TEdit;
    eDailySalEndTime: TEdit;
    cbDAILY_SALE_ACTIVE: TCheckBox;
    EditPrecioVenta3: TEdit;
    cbProcessedFood: TCheckBox;
    cbTripleS: TCheckBox;
    cbShowOnEcomm: TCheckBox;
    cbCustIDRequired: TCheckBox;
    OpenDialog2: TOpenDialog;
    SavePictureDialog2: TSavePictureDialog;
    TabSheet2: TTabSheet;
    MemoProductNote: TMemo;
    Label13: TLabel;
    Label14: TLabel;
    EditProductClassification: TEdit;
    Bevel11: TBevel;
    Bevel13: TBevel;
    EditDptS: TEdit;
    Label21: TLabel;
    EditDptL: TEdit;
    Label22: TLabel;
    Bevel14: TBevel;
    Bevel15: TBevel;
    EditPseudoMgD: TEdit;
    Label28: TLabel;
    EditPseudoMgP: TEdit;
    Label41: TLabel;
    Bevel16: TBevel;
    Label47: TLabel;
    Label48: TLabel;
    EditMaxPerTx: TEdit;
    Label52: TLabel;
    Label53: TLabel;
    EditSkipPriceUpdtIni: TEdit;
    Label56: TLabel;
    EditStockLoc: TEdit;
    cbAllowDiscount: TCheckBox;
    Bevel19: TBevel;
    cbRound: TCheckBox;
    cbNline: TCheckBox;
    cbEbt: TCheckBox;
    cbSigSis: TCheckBox;
    cbOtcCard: TCheckBox;
    cbPseudo: TCheckBox;
    cbNonRefundable: TCheckBox;
    cbPepSpray: TCheckBox;
    cbSkipPriceUpdt: TCheckBox;
    EditLastMod: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    Bevel17: TBevel;
    Label20: TLabel;
    EditLineLoc: TEdit;
    Label23: TLabel;
    EditShelfLoc: TEdit;
    dtpSkipPriceUpdt: TDateTimePicker;
    EditLastModDate: TEdit;
    Label24: TLabel;
    EditProdSize: TEdit;
    Label25: TLabel;
    Bevel18: TBevel;
    cbAge: TComboBox;
    EditGm1: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    EditGm2: TEdit;
    Label17: TLabel;
    EditGm3: TEdit;
    Label12: TLabel;
    SpeedButton9: TSpeedButton;
    Button5: TButton;
    Bevel12: TBevel;
    Bevel20: TBevel;
    SpeedButton10: TSpeedButton;
    EditSupDesc2: TEdit;
    Label26: TLabel;
    cbSupplierPrice: TCheckBox;
    cbSupplierPrice2: TCheckBox;
    Label27: TLabel;
    EditItemId: TEdit;
    Label42: TLabel;
    EditItemID2: TEdit;
    Label49: TLabel;
    EditGroupNo: TEdit;
    cbMainGroupProd: TCheckBox;
    TabSheet3: TTabSheet;
    Panel1: TPanel;
    Label54: TLabel;
    lblUser: TLabel;
    ComboBoxFrom: TComboBox;
    ComboBoxTo: TComboBox;
    Label55: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Button4: TButton;
    Button6: TButton;
    EditTransferFloor: TEdit;
    EditTransferStock: TEdit;
    EditTransferPending: TEdit;
    EditTransferUpc: TEdit;
    EditTransferDescription: TEdit;
    EditTransferPrice: TEdit;
    EditTransferQty: TEdit;
    Label64: TLabel;
    EditQtyStock: TEdit;
    EditQtyFloor: TEdit;
    Label65: TLabel;
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure tlBtnPostClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditCostoChange(Sender: TObject);
    procedure EditRetailPriceChange(Sender: TObject);
    procedure EditPrecioVenta2Change(Sender: TObject);
    procedure EditPrecioGrupoChange(Sender: TObject);
    procedure EditGROUP_QTYChange(Sender: TObject);
    procedure EditPrecioCajaChange(Sender: TObject);
    procedure EditQtyCajaChange(Sender: TObject);
    procedure EditEspecialChange(Sender: TObject);
    procedure EditMinimoChange(Sender: TObject);
    procedure EditMaximoChange(Sender: TObject);
    procedure EditQtyInventarioChange(Sender: TObject);
    procedure EditNO_MODIFIERSChange(Sender: TObject);
    procedure tbAppendClick(Sender: TObject);
    procedure sbNewUPCClick(Sender: TObject);
    procedure btnRecipeClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure EditRecipePriceChange(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure eDailySalePriceChange(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure EditPrecioVenta3Change(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure language;
    procedure FormShow(Sender: TObject);
    procedure EditGm1Exit(Sender: TObject);
    procedure EditRetailPriceExit(Sender: TObject);
    procedure EditCostoExit(Sender: TObject);
    procedure EditGm2Exit(Sender: TObject);
    procedure EditGm3Exit(Sender: TObject);
    procedure EditPrecioVenta2Exit(Sender: TObject);
    procedure EditPrecioVenta3Exit(Sender: TObject);
    procedure EditRetailPriceEnter(Sender: TObject);
    procedure EditPrecioVenta2Enter(Sender: TObject);
    procedure EditPrecioVenta3Enter(Sender: TObject);
    procedure cbSupplierPriceClick(Sender: TObject);
    procedure cbSupplierPrice2Click(Sender: TObject);
    procedure ComboBoxFromChange(Sender: TObject);
    procedure ComboBoxToChange(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
    hasImage: Boolean;
    precio, costo, gm: Double;
    precioStr: String;
  public
    NoSupplier,NoSupplier2, NoDept, NoSubDept: Integer;
    { Public declarations }
  end;

var
  FrmEditInventorySP: TFrmEditInventorySP;

implementation

{$R *.dfm}

uses UntSelectDateTime, UntSalesPromotion,  UntCommon, UntQueries,
  UntCommonPOS, UntRecipe, untMain, UntDepartments, UntSuppliers, UntlabelBC,
  UntSeleccioneOpcion, UntEnterBarcode2, UntDMMidas;

procedure TFrmEditInventorySP.btnRecipeClick(Sender: TObject);
Var
  Cost, RetailPrice: Double;
begin
  FrmRecipe := TFrmRecipe.Create(nil);
  With FrmRecipe do
  begin
    With DMMidas do
    begin
      tlBtnPost.Click;
      cdsRecipe.Close;
      cdsRecipe.CommandText := 'Select * from Recipe where MAIN_PRODUCT_ID = ' + CDSInventarioPisoPRODUCTNO.AsString;
      cdsRecipe.Open;
      Caption := 'Recipe for ' + CDSInventarioPisoDESCRIPCION.Value;
      ShowModal;
      if ModalResult = mrOk then
      begin
        FDQuery1.SQL.Text := 'Select sum(Price) as TPrice, sum(Cost) as TCosto from Recipe where MAIN_PRODUCT_ID = ' + CDSInventarioPisoPRODUCTNO.AsString;
        FDQuery1.Open;
        if FDQuery1.FieldByName('TPrice').Value > 0 then
        begin
          RetailPrice := FDQuery1.FieldByName('TPrice').Value;
          EditRecipePrice.Text := CommonPOS.Flt2str(RetailPrice, 2); //Format('%.2f', [RetailPrice]);//Format('%n', [RetailPrice]);
          cbRecipe.Checked := True;
          tlBtnPost.Click;
        end
        else
          cbRecipe.Checked := False;
      end;

      FrmRecipe := Nil;
      FrmRecipe.Free;
    end;
  end;
end;

procedure TFrmEditInventorySP.Button3Click(Sender: TObject);
Var
  ProductID: Integer;
  AuthUser, Barcode: String;
begin
  if FrmMain.LanguageStr = 'English' then
    FrmMain.msgD := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 303)
  else
    FrmMain.msgD := 'Precaución... Desea clonar este producto?';
  if MessageDlg(FrmMain.msgD ,mtWarning,[mbYes,mbNo],0) = mrYes then
  begin
    AuthUser := CommonPOS.User;
    if CommonPOS.isAuthorized('',UserRights.MAIN_INV, false) then
    begin
      With DMMidas do
      begin
        CommonPOS.DisconnectFromDatabase;
        With CLONE_PRODUCT do
        begin
          //Barcode := InputBox('Enter new barcode:', 'barcode', '');
          FrmImputBarcode := TFrmImputBarcode.Create(nil);
          With FrmImputBarcode do
          begin
            ShowModal;
            Barcode := Trim(FrmImputBarcode.EditBarcode.Text);
            Free;
            FrmImputBarcode := Nil;
          end;
          if Trim(Barcode) > '' then
          begin
            ProductID := StrToInt(EditProductID.Text);//.Value;
            //CDSInventarioPiso.Post;
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
              //CDSInventarioPiso.Edit;
              FormCreate(self);
            end
            else
              ShowMessage('Product is in inventory!');
          end;
        end;
      end;
    end;
  end;
end;

procedure TFrmEditInventorySP.Button4Click(Sender: TObject);
var
  FromField, ToField: string;
  TransferQty: Double;
begin
    // Decide which fields to use based on combo boxes
    if SameText(ComboBoxFrom.Text, 'Floor') and SameText(ComboBoxTo.Text, 'Stock') then
    begin
      FromField := 'QTY_FLOOR';
      ToField   := 'QTY_STOCK';
    end
    else
    if SameText(ComboBoxFrom.Text, 'Stock') and SameText(ComboBoxTo.Text, 'Floor') then
    begin
      FromField := 'QTY_STOCK';
      ToField   := 'QTY_FLOOR';
    end;
    TransferQty := StrToFloatDef(EditTransferQty.Text, 0);
    if TransferQty <= 0 then
      Exit;
  with DMMidas.FDQuery1 do
  begin
    close;
    sql.Text := 'update inventariopiso set ' + FromField + ' = ' + FromField + ' - ' + TransferQty.ToString +
    ', ' + ToField + ' = ' + ToField + ' + ' + TransferQty.ToString;
    ExecSQL
  end;
  DMMidas.CDSInventarioPiso.Refresh;
  FrmEditInventorySP.FormCreate(nil);
end;

procedure TFrmEditInventorySP.Button5Click(Sender: TObject);
begin
  with DMMidas do
  begin
    cdsProductImage.Close;
    cdsProductImage.CommandText := 'select * from INVENTORY_IMAGE where PRODUCT_ID =' + editProductId.Text ;
    cdsProductImage.Open;
    if cdsProductImage.RecordCount > 0 then
    begin
      FDQuery1.SQL.Text := 'delete from INVENTORY_IMAGE where PRODUCT_ID =' + editProductId.Text ;
      FDQuery1.ExecSQL;
    end;
  end;
  //ImageEnView1.Clear;
end;

procedure TFrmEditInventorySP.Button6Click(Sender: TObject);
begin
  EditTransferQty.Text := '0';
end;

procedure TFrmEditInventorySP.cbSupplierPrice2Click(Sender: TObject);
begin
  cbSupplierPrice.Checked := not cbSupplierPrice2.Checked;
  if DMMidas.CDSInventarioPisoSUPPLIER_PRICE2.Value <> 0 then
  begin
    EditCosto.Text := DMMidas.CDSInventarioPiso.FieldByName('SUPPLIER_PRICE2').asString;
    EditCostoExit(nil);
  end;
end;

procedure TFrmEditInventorySP.cbSupplierPriceClick(Sender: TObject);
begin
  cbSupplierPrice2.Checked := not cbSupplierPrice.Checked;
  if DMMidas.CDSInventarioPisoSUPPLIER_PRICE.Value <> 0 then
  begin
    EditCosto.Text := DMMidas.CDSInventarioPiso.FieldByName('SUPPLIER_PRICE').asString;
    EditCostoExit(nil);
  end;
end;

procedure TFrmEditInventorySP.ComboBoxFromChange(Sender: TObject);
begin
  if ComboBoxFrom.ItemIndex = ComboBoxTo.ItemIndex then
  begin
    if ComboBoxTo.ItemIndex = 0 then
      ComboBoxTo.ItemIndex := 1
    else
      ComboBoxTo.ItemIndex := 0;
  end;
end;

procedure TFrmEditInventorySP.ComboBoxToChange(Sender: TObject);
begin
  if ComboBoxFrom.ItemIndex = ComboBoxTo.ItemIndex then
  begin
    if ComboBoxFrom.ItemIndex = 0 then
      ComboBoxFrom.ItemIndex := 1
    else
      ComboBoxFrom.ItemIndex := 0;
  end;
end;

procedure TFrmEditInventorySP.eDailySalePriceChange(Sender: TObject);
begin
  if CommonPOS.IsNumber(eDailySalePrice.Text) then
    eDailySalePrice.Color := clWhite
  else
    eDailySalePrice.Color := clred;
end;

procedure TFrmEditInventorySP.EditCostoChange(Sender: TObject);
begin
  if CommonPOS.IsNumber(EditCosto.Text) then
    EditCosto.Color := clWhite
  else
    EditCosto.Color := clred;
end;

procedure TFrmEditInventorySP.EditCostoExit(Sender: TObject);
var
  gm2, gm3, precio2, precio3: Double;
begin
  costo := StrToFloat(EditCosto.Text);
  precio := StrToFloat(EditRetailPrice.Text);
  precio2 := StrToFloat(EditPrecioVenta2.Text);
  precio3 := StrToFloat(EditPrecioVenta3.Text);
  if (costo <= 0)  then
    exit;
  if (EditGm1.Text > '') and (EditGm1.Text <> '0') then
  begin
    gm := StrToFloat(EditGm1.Text);
    //precio := costo + (gm / 100) * costo;
    precio := costo + (costo * gm /100)
  end;
  if (EditGm2.Text > '') and (EditGm2.Text <> '0') then
  begin
    gm2 := StrToFloat(EditGm2.Text);
    precio2 := costo + (gm2 / 100) * costo;
  end;
  if (EditGm3.Text > '') and (EditGm3.Text <> '0') then
  begin
    gm3 := StrToFloat(EditGm3.Text);
    precio3 := costo + (gm3 / 100) * costo;
  end;
  if DMMidas.CDSInventarioPisoROUND.Value = True then
  begin
    precio := CommonPOS.roundPrice(precio.ToString);
    EditRetailPrice.Text := Format('%.2f', [precio]);
    precio2 := CommonPOS.roundPrice(precio2.ToString);
    EditPrecioVenta2.Text := Format('%.2f', [precio2]);
    precio3 := CommonPOS.roundPrice(precio3.ToString);
    EditPrecioVenta3.Text := Format('%.2f', [precio3]);
  end;
  EditRetailPrice.Text := Format('%.2f', [precio]);
  //EditRetailPrice.Text := FormatFloat('0.00', precio);
  EditPrecioVenta2.Text := Format('%.2f', [precio2]);
  EditPrecioVenta3.Text := Format('%.2f', [precio3]);
end;

procedure TFrmEditInventorySP.EditEspecialChange(Sender: TObject);
begin
  if CommonPOS.IsNumber(EditEspecial.Text) then
    EditEspecial.Color := clWhite
  else
    EditEspecial.Color := clred;
end;

procedure TFrmEditInventorySP.EditGm1Exit(Sender: TObject);
var
  costo, gm, precio: Double;
begin
  costo := StrToFloat(EditCosto.Text);
  gm := StrToFloat(EditGm1.Text);
  if costo > 0 then
  begin
    precio := costo * (1 + gm / 100);
    if DMMidas.CDSInventarioPisoROUND.Value = True then
      precio := CommonPOS.roundPrice(precio.ToString);
    EditRetailPrice.Text := Format('%.2f', [precio]);
  end;
end;

procedure TFrmEditInventorySP.EditGm2Exit(Sender: TObject);
begin
  costo := StrToFloat(EditCosto.Text);
  gm := StrToFloat(EditGm2.Text);
  if costo > 0 then
  begin
    precio := costo * (1 + gm / 100);
    if DMMidas.CDSInventarioPisoROUND.Value = True then
      precio := CommonPOS.roundPrice(precio.ToString);
    EditPrecioVenta2.Text := Format('%.2f', [precio]);
  end;
end;

procedure TFrmEditInventorySP.EditGm3Exit(Sender: TObject);
begin
  costo := StrToFloat(EditCosto.Text);
  gm := StrToFloat(EditGm3.Text);
  if costo > 0 then
  begin
    precio := costo * (1 + gm / 100);
    if DMMidas.CDSInventarioPisoROUND.Value = True then
      precio := CommonPOS.roundPrice(precio.ToString);
    EditPrecioVenta3.Text := Format('%.2f', [precio]);
  end;
end;

procedure TFrmEditInventorySP.EditGROUP_QTYChange(Sender: TObject);
begin
  if CommonPOS.IsNumber(EditGROUP_QTY.Text) then
    EditGROUP_QTY.Color := clWhite
  else
    EditGROUP_QTY.Color := clred;
end;

procedure TFrmEditInventorySP.EditMaximoChange(Sender: TObject);
begin
  if CommonPOS.IsNumber(EditMaximo.Text) then
    EditMaximo.Color := clWhite
  else
    EditMaximo.Color := clred;
end;

procedure TFrmEditInventorySP.EditMinimoChange(Sender: TObject);
begin
  if CommonPOS.IsNumber(EditMinimo.Text) then
    EditMinimo.Color := clWhite
  else
    EditMinimo.Color := clred;
end;

procedure TFrmEditInventorySP.EditNO_MODIFIERSChange(Sender: TObject);
begin
   if CommonPOS.IsNumber(EditNO_MODIFIERS.Text) then
    EditNO_MODIFIERS.Color := clWhite
  else
    EditNO_MODIFIERS.Color := clred;
end;

procedure TFrmEditInventorySP.EditPrecioCajaChange(Sender: TObject);
begin
  if CommonPOS.IsNumber(EditPrecioCaja.Text) then
    EditPrecioCaja.Color := clWhite
  else
    EditPrecioCaja.Color := clred;
end;

procedure TFrmEditInventorySP.EditPrecioGrupoChange(Sender: TObject);
begin
  if CommonPOS.IsNumber(EditPrecioGrupo.Text) then
    EditPrecioGrupo.Color := clWhite
  else
    EditPrecioGrupo.Color := clred;
end;

procedure TFrmEditInventorySP.EditPrecioVenta2Change(Sender: TObject);
begin
  if CommonPOS.IsNumber(EditPrecioVenta2.Text) then
    EditPrecioVenta2.Color := clWhite
  else
    EditPrecioVenta2.Color := clred;
end;

procedure TFrmEditInventorySP.EditPrecioVenta2Enter(Sender: TObject);
begin
  precioStr := EditPrecioVenta2.Text;
end;

procedure TFrmEditInventorySP.EditPrecioVenta2Exit(Sender: TObject);
begin
  if editPrecioVenta2.Text = precioStr then
  begin
    exit;
  end;
  if DMMidas.CDSInventarioPisoROUND.Value = True then
    precio := CommonPOS.roundPrice(EditPrecioVenta2.Text)
  else
    precio := StrToFloat(EditPrecioVenta2.Text);
  costo := StrToFloat(EditCosto.Text);
  if costo > 0 then
  begin
    gm := (precio / costo - 1) * 100;
    EditGm2.Text := format('%.2f', [gm]);
  end;
end;

procedure TFrmEditInventorySP.EditPrecioVenta3Change(Sender: TObject);
begin
  if CommonPOS.IsNumber(EditPrecioVenta3.Text) then
    EditPrecioVenta3.Color := clWhite
  else
    EditPrecioVenta3.Color := clred;
end;

procedure TFrmEditInventorySP.EditPrecioVenta3Enter(Sender: TObject);
begin
  precioStr := EditPrecioVenta3.Text;
end;

procedure TFrmEditInventorySP.EditPrecioVenta3Exit(Sender: TObject);
begin
  if EditPrecioVenta3.Text = precioStr then
  begin
    exit
  end;
  if DMMidas.CDSInventarioPisoROUND.Value = True then
    precio := CommonPOS.roundPrice(EditPrecioVenta3.Text)
  else
    precio := StrToFloat(EditPrecioVenta3.Text);
  costo := StrToFloat(EditCosto.Text);
  if costo > 0 then
  begin
    gm := (precio / costo - 1) * 100;
    EditGm3.Text := format('%.2f', [gm]);
  end;
end;

procedure TFrmEditInventorySP.EditQtyCajaChange(Sender: TObject);
begin
   if CommonPOS.IsNumber(EditQtyCaja.Text) then
    EditQtyCaja.Color := clWhite
  else
    EditQtyCaja.Color := clred;
end;

procedure TFrmEditInventorySP.EditQtyInventarioChange(Sender: TObject);
begin
  if CommonPOS.IsNumber(EditQtyInventario.Text) then
    EditQtyInventario.Color := clWhite
  else
    EditQtyInventario.Color := clred;
end;

procedure TFrmEditInventorySP.EditRecipePriceChange(Sender: TObject);
begin
  if CommonPOS.IsNumber(EditRecipePrice.Text) then
    EditRecipePrice.Color := clWhite
  else
    EditRecipePrice.Color := clred;
end;

procedure TFrmEditInventorySP.EditRetailPriceChange(Sender: TObject);
var
  precio, costo, gm: Double;
begin
  if CommonPOS.IsNumber(EditRetailPrice.Text) then
    EditRetailPrice.Color := clWhite
  else
    EditRetailPrice.Color := clred;
end;

procedure TFrmEditInventorySP.EditRetailPriceEnter(Sender: TObject);
begin
  precioStr := EditRetailPrice.Text;
end;

procedure TFrmEditInventorySP.EditRetailPriceExit(Sender: TObject);
begin
  if EditRetailPrice.Text = precioStr then
    exit;
  costo := StrToFloat(EditCosto.Text);
  if DMMidas.CDSInventarioPisoROUND.Value = True then
    precio := CommonPOS.roundPrice(EditRetailPrice.Text)
  else
    precio := StrToFloat(EditRetailPrice.Text);
  if costo > 0 then
  begin
    gm := (precio / costo - 1) * 100;
    EditGm1.Text := format('%.2f', [gm]);
  end;
end;

procedure TFrmEditInventorySP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if ModalResult = mrOk then TlBtnPost.Click;
  //ImageEnView1.Clear;
end;

procedure TFrmEditInventorySP.FormCreate(Sender: TObject);
var
  ms: TStream;
begin
  With DMMidas do
  begin
    cbCustIDRequired.Checked := CDSInventarioPisoCUSTOMER_ID_REQUIRED.Value;
    NoSupplier := CDSInventarioPisoNUMEROSUPLIDOR.Value;
    NoSupplier2 := CDSInventarioPisoNUMEROSUPLIDOR2.Value;
    NoDept := CDSInventarioPisoDEPARTAMENTO.Value;
    NoSubDept :=  CDSInventarioPisoSUB_DEPARTAMENTO.Value;
    if CDSInventarioPisoDEPARTAMENTO.Value > 0 then
    begin
      CDSDepartamentos.Close;
      CDSDepartamentos.CommandText := 'select * from DEPARTAMENTO where DEPARTAMENTO = ' + IntToStr(NoDept);
      CDSDepartamentos.Open;
    end;
    if NoSubDept > 0 then
    begin
      CDSSubDept.Close;
      CDSSubDept.CommandText := 'select * from SUB_DEPARTAMENTO where DEPARTAMENTO = ' + IntToStr(NoSubDept);
      CDSSubDept.Open;
    end;

    if CDSInventarioPisoNUMEROSUPLIDOR.Value > 0 then
    begin
      CDSSuplidores.Close;
      CDSSuplidores.CommandText := 'select * from SUPLIDORES where NUMEROSUPLIDOR = ' + CDSInventarioPisoNUMEROSUPLIDOR.AsString;
      CDSSuplidores.Open;
    end;

    EditDescription.Text := CDSInventarioPisoDESCRIPCION.Value;
    if CDSInventarioPisoRECIPE_PRICE.Value > 0 then
      EditRecipePrice.Text := Format('%f', [CDSInventarioPisoRECIPE_PRICE.asFloat])
    else
      EditRecipePrice.Text := '0.00';
    if CDSInventarioPisoCOSTO.Value > 0 then    
      EditCosto.Text := Format('%f', [CDSInventarioPisoCOSTO.asFloat])
    else
      EditCosto.Text := '0.00';
    if CDSInventarioPisoPRECIO.Value > 0 then
      EditRetailPrice.Text := Format('%f', [CDSInventarioPisoPRECIO.asFloat])
    else
      EditRetailPrice.Text := '0.00';
    if CDSInventarioPisoPRECIOVENTA2. asFloat > 0 then
      EditPrecioVenta2.Text := Format('%f', [CDSInventarioPisoPRECIOVENTA2.asFloat])
    else
      EditPrecioVenta2.Text := '0.00';
    if CDSInventarioPisoPRECIOVENTA3.asFloat > 0 then
      EditPrecioVenta3.Text := Format('%f', [CDSInventarioPisoPRECIOVENTA3.asFloat])
    else
      EditPrecioVenta3.Text := '0.00';
    if CDSInventarioPisoRBP.Value > 0 then 
      EditPrecioGrupo.Text := Format('%f', [CDSInventarioPisoRBP.asFloat])
    else 
      EditPrecioGrupo.Text := '0.00';
    if CDSInventarioPisoGROUP_QTY.Value > 0 then  
      EditGROUP_QTY.Text := CDSInventarioPisoGROUP_QTY.asString
    else
      EditGROUP_QTY.Text := '0';
    if CDSInventarioPisoPRECIO_CAJA.Value > 0 then    
      EditPrecioCaja.Text := Format('%f', [CDSInventarioPisoPRECIO_CAJA.asFloat])
    else
      EditPrecioCaja.Text := '0';
    if CDSInventarioPisoQTY_CAJA.Value > 0 then
      EditQtyCaja.Text := Format('%f', [CDSInventarioPisoQTY_CAJA.asFloat])
    else
      EditQtyCaja.Text := '0.00';
    if CDSInventarioPisoESPECIAL.Value > 0 then
      EditEspecial.Text := Format('%f', [CDSInventarioPisoESPECIAL.asFloat])
    else
      EditEspecial.Text := '0.00';
    EditGroupNo.Text := CDSInventarioPisoGROUP_PRODUCTNO.asString;
    cbMainGroupProd.Checked := CDSInventarioPisoMAIN_NDC.AsBoolean;
    EditCOMESPECIAL.Text := DateTimeToStr(CDSInventarioPisoCOMESPECIAL.asDateTime);
    EditTERMINAESPECIAL.Text := DateTimeToStr(CDSInventarioPisoTERMINAESPECIAL.asDateTime);
    EditDeptDesc.Text := CDSDepartamentosDESCRIPCION.Value;
    EditSubDeptDesc.Text := CDSSubDeptDESCRIPCION.Value;
    EditSupDesc.Text := CDSSuplidoresSUPLIDOR.Value;
    if CDSInventarioPisoCMININVENTARIO.Value > 0 then
      EditMinimo.Text := Format('%f', [CDSInventarioPisoCMININVENTARIO.asFloat])
    else
      EditMinimo.Text := '0.00';
    if CDSInventarioPisoCMaxINVENTARIO.Value > 0  then
      EditMaximo.Text := Format('%f', [CDSInventarioPisoCMaxINVENTARIO.asFloat])
    else
      EditMaximo.Text := '0.00';

    if CDSInventarioPisoQTYINVENTARIO.isNull = True then
      EditQtyInventario.Text := '0.00'
    else
      EditQtyInventario.Text := Format('%f', [CDSInventarioPisoQTYINVENTARIO.asFloat]);
    if CDSInventarioPisoQTY_FLOOR.IsNull = True then            //qty_floor field and edits added AGC 041426
      EditQtyFloor.Text := '0'
    else
      EditQtyFloor.Text := CDSInventarioPisoQTY_FLOOR.AsString;
    if CDSInventarioPisoQTY_STOCK.IsNull = True then            //qty_stock field and edits added AGC 041426
      EditQtyStock.Text := '0'
    else
      EditQtyStock.Text := CDSInventarioPisoQTY_STOCK.AsString;
    EditProductID.Text := CDSInventarioPisoPRODUCTNO.AsString;
    EditUPC.Text := CDSInventarioPisoCODIGOBARRA.Value;
    EditPartNumber.Text := CDSInventarioPisoBARCODE2.Value;
    EditAdditionalInfo.Text := CDSInventarioPisoINFOADICIONAL.Value;
    EditPO.Text := CDSInventarioPisoPO.Value;

    if CDSInventarioPisoMODIFIER_QTY.Value > 0 then
      EditNO_MODIFIERS.Text := CDSInventarioPisoMODIFIER_QTY.asString
    else
     EditNO_MODIFIERS.Text := '0';

    cbKitchen.Checked := CDSInventarioPisoKITCHEN.Value;
    cbModifiers.Checked := CDSInventarioPisoHAS_MODIFIER.Value;
    cbShowIndividual.Checked := CDSInventarioPisoSHOWINDIVIDUAL.Value;
    if CDSInventarioPisoPATROCINIO.Value = 1 then
       cbPatrocinio.Checked := True
    else
      cbPatrocinio.Checked := False;
    if CDSInventarioPisoTAXABLE_ESTATAL.Value = '1' then
      cbStateTaxable.Checked := True
    else
      cbStateTaxable.Checked := False;

    if CDSInventarioPisoTAXABLE.Value = '1' then
      cbLocalTax.Checked := True
    else
      cbLocalTax.Checked := False;
    if CDSInventarioPisoFOODITEM.Value = 1 then
      cbFoodItem.Checked := True
    else
      cbFoodItem.Checked := False;
    if CDSInventarioPisoNONEBC.Value = 1 then
      cbNoUPC.Checked := True
    else
     cbNoUPC.Checked := False;
    if CDSInventarioPisoSHOW_ON_ECOMM.Value = true then
      cbShowOnEcomm.Checked := True
    else
     cbShowOnEcomm.Checked := False;
    cbRecipe.Checked := CDSInventarioPisoRECIPE.Value;
    cbTripleS.Checked := CDSInventarioPisoTRIPLES_PRODUCT.Value;
    if CDSInventarioPisoDAILY_SPECIAL_PRICE.asFloat > 0 then
      eDailySalePrice.Text := Format('%f', [CDSInventarioPisoDAILY_SPECIAL_PRICE.asFloat])
    else
      eDailySalePrice.Text := '0.00';
    if Trim(CDSInventarioPisoDAILY_SALE_START_TIME.AsString) > '' then
      eDailySaleStartTime.Text := CDSInventarioPisoDAILY_SALE_START_TIME.AsString
    else
      eDailySaleStartTime.Text := '12:00:00';

    if Trim(CDSInventarioPisoDAILY_SALE_END_TIME.AsString) > '' then
      eDailySalEndTime.Text := CDSInventarioPisoDAILY_SALE_END_TIME.AsString
    else
      eDailySalEndTime.Text := '12:00:00';
    cbDAILY_SALE_ACTIVE.Checked := CDSInventarioPisoDAILY_SALE_ACTIVE.Value;

    if CDSInventarioPisoSALES_PROMOTION_ID.IsNull = true then
      EditSALES_PROMOTION_ID.Text := '0'
    else
      EditSALES_PROMOTION_ID.Text := CDSInventarioPisoSALES_PROMOTION_ID.asString;
    MemoProductNote.Text := CDSInventarioPisoNOTE.Value;
    EditProductClassification.Text := CDSInventarioPisoPRODUCT_CLASSIFICATION.Value;
    cbProcessedFood.Checked := CDSInventarioPisoPROCESSED_FOOD.Value;
    ///new wescosoft///
    if CDSInventarioPisoGm1.IsNull = True then
      EditGm1.Text := '0'
    else
      EditGm1.Text := CDSInventarioPisoGm1.asString;
    if CDSInventarioPisoGm2.IsNull = True then
      EditGm2.Text := '0'
    else
      EditGm2.Text := CDSInventarioPisoGm2.asString;
    if CDSInventarioPisoGm3.IsNull = True then
      EditGm3.Text := '0'
    else
      EditGm3.Text := CDSInventarioPisoGm3.asString;
    if CDSInventarioPisopseudoMgD.IsNull = True then
      EditPseudoMgD.Text := '0'
    else
      EditPseudoMgD.Text := CDSInventarioPisopseudoMgD.asString;
    if CDSInventarioPisoPseudoMgP.IsNull = True then
      EditPseudoMgP.Text := '0'
    else
      EditPseudoMgP.Text := CDSInventarioPisoPseudoMgP.asString;
    EditDptS.Text := CDSInventarioPisoDepS.Value;
    EditDptL.Text := CDSInventarioPisoDepL.Value;
    EditLineLoc.Text := CDSInventarioPisoline_loc.Value;
    EditShelfLoc.Text := CDSInventarioPisoshelf_loc.Value;
    EditStockLoc.Text := CDSInventarioPisostock_loc.Value;
    EditProdSize.Text := CDSInventarioPisoSIZE_IT.Value;
    if CDSInventarioPisoMaxPerTx.IsNull = True then
      EditMaxPerTx.Text := '0'
    else
      EditMaxPerTx.Text := CDSInventarioPisoMaxPerTx.asString;
    dtpSkipPriceUpdt.DateTime := CDSInventarioPisoDtSkipPriceUpd.AsDateTime;
    EditSkipPriceUpdtIni.Text := CDSInventarioPisoSkipPriceUpdInit.Value;
    EditLastMod.Text := CDSInventarioPisoULTIMOCAMBIO.Value;
    EditLastModDate.Text := CDSInventarioPisoLST_MODIF_PR.asString;
    cbAllowDiscount.Checked := CDSInventarioPisoALWDISC.Value;
    cbRound.Checked := CDSInventarioPisoROUND.Value;
    cbNline.Checked := CDSInventarioPisoNLINE.Value;
    cbEbt.Checked := CDSInventarioPisoEBT.Value;
    cbSigSis.Checked := CDSInventarioPisoSigis.Value;
    cbOtcCard.Checked := CDSInventarioPisoOTCCard.Value;
    cbPseudo.Checked := CDSInventarioPisopseudo.Value;
    cbNonRefundable.Checked := CDSInventarioPisoNonRefund.Value;
    cbPepSpray.Checked := CDSInventarioPisopepspray.Value;
    cbSkipPriceUpdt.Checked := CDSInventarioPisoSkipPriceUpd.Value;
    if CDSInventarioPisoAskID.IsNull then
      cbAge.ItemIndex := 0
    else
      cbAge.Text := CDSInventarioPisoAskID.AsString;
    if CDSInventarioPisoNUMEROSUPLIDOR2.Value > 0 then
    begin
      CDSSuplidores.Close;
      CDSSuplidores.CommandText := 'select * from SUPLIDORES where NUMEROSUPLIDOR = ' + CDSInventarioPisoNUMEROSUPLIDOR2.AsString;
      CDSSuplidores.Open;
      EditSupDesc2.Text := CDSSuplidoresSUPLIDOR.Value;
    end;
    if CDSInventarioPisoSUPPLIER_PRICE_DEFINE.Value = 0 then
      cbSupplierPrice.Checked := True
    else
      cbSupplierPrice2.Checked := True;
    EditItemId.Text := CDSInventarioPisoSUPP_ITEMID.Value;
    EditItemID2.Text := CDSInventarioPisoSUPP_ITEMID2.Value;
    ///
    if Trim(editProductId.Text) > '' then
    begin
      cdsProductImage.Close;
      cdsProductImage.CommandText := 'select * from INVENTORY_IMAGE where PRODUCT_ID =' + editProductId.Text ;
      cdsProductImage.Open;
      if cdsProductImage.RecordCount > 0 then
      begin
        try
          hasImage := True;
          ms := TStream.Create;
          //ms :=  cdsProductImage.CreateBlobStream(cdsProductImage.FieldByName('PROD_IMAGE'), bmRead);
          //ImageEnView1.IO.LoadFromStream(ms);
        finally
          ms.Free;
        end;
      end
      else
      begin
        //ImageEnView1.Clear;
        hasImage := False;
      end;
    end;
    //Transfer from floor to stock tab added AGC 041426
    lblUser.Caption := CommonPOS.UserName;
    EditTransferUpc.Text := CDSInventarioPisoCODIGOBARRA.AsString;
    EditTransferDescription.Text := CDSInventarioPisoDESCRIPCION.asString;
    EditTransferPrice.Text := Format('%f', [CDSInventarioPisoPRECIO.asFloat]);
    EditTransferStock.Text := CDSInventarioPisoQTY_STOCK.AsString;
    EditTransferFloor.Text := CDSInventarioPisoQTY_FLOOR.ASstring;
  end;
end;

procedure TFrmEditInventorySP.FormKeyPress(Sender: TObject; var Key: Char);
begin
  CommonForm.Enter2tab(Self,Key);  
end;

procedure TFrmEditInventorySP.FormShow(Sender: TObject);
begin
  if FrmMain.LanguageStr = 'English' then
    language;
  cbKitchen.Enabled := CommonPOS.Restaurant;
  cbModifiers.Enabled := CommonPOS.Restaurant;
  Label10.Enabled := CommonPOS.Restaurant;
  EditNO_MODIFIERS.Enabled := CommonPOS.Restaurant;
  if DMMidas.CDSSetupVENDOR.Value <> 'WesCom, Inc.' then     //Option added to edit form based on vendor AGC 041426
  begin
    cbFoodItem.Caption := 'EBT';
    cbTripleS.Enabled := False;
    cbProcessedFood.Enabled := False;
  end;
end;

procedure TFrmEditInventorySP.language;
begin
  Label36.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 138);
  Label37.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 119);
  Label38.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 121);
  Label39.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 120);
  Label40.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 017);
  cbPatrocinio.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 382);      //Translation added AGC 041426
end;

procedure TFrmEditInventorySP.sbNewUPCClick(Sender: TObject);
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
    EditUPC.Text := NewUPC;
  end;
end;

procedure TFrmEditInventorySP.SpeedButton1Click(Sender: TObject);
Var
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  //If FrmMain.IsAuthorized(AuthUser,5) then
  if CommonPOS.isAuthorized('',UserRights.MAIN_DEPT,false)  then
  begin
    With DMMidas do
    begin
      FrmDepartments := TFrmDepartments.Create(self);
      With FrmDepartments do
      begin
        ShowModal;
        If ModalResult = mrOK then
        begin
          EditDeptDesc.Text := CDSDepartamentosDESCRIPCION.Value;
          NoDept := CDSDepartamentosDEPARTAMENTO.Value;
          cbStateTaxable.Checked := CDSDepartamentosTAXABLE.Value;
          cbLocalTax.Checked := CDSDepartamentosTAXABLE.Value;
          cbStateTaxable.Checked := CDSDepartamentosTAXABLE.Value;
          if (CDSDepartamentosGm1.asString > '') and (CDSDepartamentosGm1.Value <> 0)then
          begin
            EditGm1.Text := CDSDepartamentosGm1.asString;
            EditGm1.OnExit(nil);
          end;
          cbShowIndividual.Checked := CDSDepartamentosNLINE.Value;
          cbNline.Checked := CDSDepartamentosNLINE.Value;
          cbAllowDiscount.Checked := CDSDepartamentosALWDISC.Value;
          cbRound.Checked := CDSDepartamentosROUND.Value;
          cbEbt.Checked := CDSDepartamentosEBT.Value;
          cbSigSis.Checked := CDSDepartamentosSigis.Value;
          cbOtcCard.Checked := CDSDepartamentosOTCCard.Value;
          cbPseudo.Checked := CDSDepartamentosPseudo.Value;
          if CDSDepartamentospseudoMgD.asString > '' then
            EditPseudoMgD.Text := CDSDepartamentospseudoMgD.asString
          else
            EditPseudoMgD.Text := '0';
          if CDSDepartamentosPseudoMgP.asString > '' then
            EditPseudoMgP.Text := CDSDepartamentosPseudoMgP.asString
          else
            EditPseudoMgP.Text := '0';
          cbNonRefundable.Checked := CDSDepartamentosNonRefund.Value;
          cbPepSpray.Checked := CDSDepartamentosPepSpray.Value;
          if CDSDepartamentosMaxPerTx.asString > '' then
            EditMaxPerTx.Text := CDSDepartamentosMaxPerTx.asString
          else
            EditMaxPerTx.Text := '0';
          cbSkipPriceUpdt.Checked := CDSDepartamentosSkipPriceUpd.Value;
          cbAge.Text := CDSDepartamentosAskID.asString;
        end
        else
        begin
          //DMMidas.CDSDepartamentos.CancelUpdates;
        end;
        FrmDepartments := Nil;
        Free;
      end;
    end;
  end;
end;

procedure TFrmEditInventorySP.SpeedButton2Click(Sender: TObject);
Var
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  //If FrmMain.IsAuthorized(AuthUser,5) then
  if CommonPOS.isAuthorized('',UserRights.MAIN_DEPT,false) then
  begin
    With DMMidas do
    begin
      FrmDepartments := TFrmDepartments.Create(self);
      With FrmDepartments do
      begin
        ShowModal;
        If ModalResult = mrOK then
        begin
          EditSubDeptDesc.Text := CDSSubDeptDESCRIPCION.Value;
          NoSubDept := CDSSubDeptDEPARTAMENTO.Value; //CDSSubDeptLINK_SUBDPT.Value;
          EditDeptDesc.Text := CDSDepartamentosDESCRIPCION.Value;
          NoDept := CDSDepartamentosDEPARTAMENTO.Value;
        end
        else
        begin
          //DMMidas.CDSDepartamentos.CancelUpdates;
        end;
        FrmDepartments := Nil;
        Free;
      end;
    end;
  end;
end;

procedure TFrmEditInventorySP.SpeedButton3Click(Sender: TObject);
Var
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  if CommonPOS.isAuthorized('',UserRights.MAIN_SUPL, false) then
  begin
    With DMMidas do
    begin
      if CDSInventarioPisoNUMEROSUPLIDOR.Value > 0 then
      begin
        CDSSuplidores.Close;
        CDSSuplidores.CommandText := 'Select * from Suplidores where NUMEROSUPLIDOR = ' + CDSInventarioPisoNUMEROSUPLIDOR.asString;
        CDSSuplidores.Open;
      end
      else
      begin
        CDSSuplidores.Close;
        CDSSuplidores.CommandText := 'Select * from Suplidores order by Suplidor';
        CDSSuplidores.Open;
      end;
      FrmSuppliers := TFrmSuppliers.Create(self);
      With FrmSuppliers do
      begin
        if TComponent(Sender).Name = 'SpeedButton10' then
          FrmSuppliers.Tag := 2;
        ShowModal;
        If ModalResult = mrOK then
        begin
          if FrmSuppliers.Tag = 2 then    //To identify wether change is for supplier 1 or supplier 2 AGC 02/13/2026///
          begin
            EditSupDesc2.Text := CDSSuplidoresSUPLIDOR.Value;
            NoSupplier2 := CDSSuplidoresNUMEROSUPLIDOR.Value;
          end
          else
          begin
            EditSupDesc.Text := CDSSuplidoresSUPLIDOR.Value;
            NoSupplier := CDSSuplidoresNUMEROSUPLIDOR.Value;
          end;
        end
        else
        begin
          //DMMidas.CDSSuplidores.CancelUpdates;
        end;
        FrmSuppliers := Nil;
        Free;
      end;
    end;
  end;
end;

procedure TFrmEditInventorySP.SpeedButton4Click(Sender: TObject);
begin
  FrmSelectDateTime := TFrmSelectDateTime.Create(nil);
  With FrmSelectDateTime do
  begin
    ShowModal;
    if ModalResult = mrOk then
    begin
      eDailySaleStartTime.Text := TimeToStr(FrmSelectDateTime.dtpTime.Time);
    end;
    FrmSelectDateTime := Nil;
    Free;
  end;
end;

procedure TFrmEditInventorySP.SpeedButton5Click(Sender: TObject);
begin
  FrmSelectDateTime := TFrmSelectDateTime.Create(nil);
  With FrmSelectDateTime do
  begin
    ShowModal;
    if ModalResult = mrOk then
    begin
      eDailySalEndTime.Text := TimeToStr(FrmSelectDateTime.dtpTime.Time);
    end;
    FrmSelectDateTime := Nil;
    Free;
  end;
end;

procedure TFrmEditInventorySP.SpeedButton6Click(Sender: TObject);
begin
  FrmSalesPromo := TFrmSalesPromo.Create(nil);
  With FrmSalesPromo do
  begin
    ShowModal;
    EditSALES_PROMOTION_ID.Text := DMMidas.cdsSalesPromoID.asString;
    FrmSalesPromo := Nil;
    Free;
  end;
end;

procedure TFrmEditInventorySP.SpeedButton7Click(Sender: TObject);
begin
  FrmSelectDateTime := TFrmSelectDateTime.Create(nil);
  With FrmSelectDateTime do
  begin
    ShowModal;
    if ModalResult = mrOk then
    begin
      EditCOMESPECIAL.Text := DateToStr(FrmSelectDateTime.dtpDate.Date) + ' ' +  TimeToStr(FrmSelectDateTime.dtpTime.Time);
    end;
    FrmSelectDateTime := Nil;
    Free;
  end;
end;

procedure TFrmEditInventorySP.SpeedButton8Click(Sender: TObject);
begin
  FrmSelectDateTime := TFrmSelectDateTime.Create(nil);
  With FrmSelectDateTime do
  begin
    ShowModal;
    if ModalResult = mrOk then
    begin
      EditTERMINAESPECIAL.Text := DateToStr(FrmSelectDateTime.dtpDate.Date) + ' ' +  TimeToStr(FrmSelectDateTime.dtpTime.Time);
    end;
    FrmSelectDateTime := Nil;
    Free;
  end;
end;

procedure TFrmEditInventorySP.SpeedButton9Click(Sender: TObject);
var
  ImageStr, dir: string;
  ID: String;
begin
  //With DMMidas do
  //begin
  with TOpenDialog.Create(self) do
    try
      Caption := 'Open Image';
      Options := [ofPathMustExist, ofFileMustExist];
      if Execute then
      begin
        //ImageEnView1.IO.LoadFromFile(FileName);
        hasImage := True;
      end
      else
      begin
        hasImage := False;
      end;
    finally
      Free;
    end;

      //ImageStr := (OpenDialog1.FileName);
  {  With FDQuery1 do
    begin
      sql.Text := 'UPDATE CREDITDEBITSETUP SET LOGO = ' +
       ' (SELECT BulkColumn FROM OPENROWSET (BULK ' + chr(39) + ImageStr + chr(39) + ', SINGLE_BLOB) a)' +
      ' WHERE ID = ' + ID;
      ExecSQL();
    end;
    CDSSetup.Refresh; }
  //end;
end;

procedure TFrmEditInventorySP.tbAppendClick(Sender: TObject);
begin
  EditDescription.Text := '';
  EditNO_MODIFIERS.Text := '0.00';
  EditCOSTO.Text := '0.00';
  EditPRECIOCAJA.Text := '0.00';
  EditRetailPrice.Text := '0.00';
  EditPrecioCaja.Text := '0.00';
  EditMaximo.Text := '0.00';
  EditMinimo.Text := '0.00';
  EditQTYINVENTARIO.Text := '0.00';
  EditQTYCAJA.Text := '0';
  EditEspecial.Text := '0.00';
  EditGROUP_QTY.Text := '0';
  EditPrecioGrupo.Text := '0.00';
  EditDeptDesc.Text := '';
  EditSubDeptDesc.Text := '';
  EditSupDesc.Text := '';
  EditSupDesc2.Text := '';
  EditSALES_PROMOTION_ID.Text := '0' ;
  EditPO.Text := '';
  EditUPC.Text := '';
  EditPartNumber.Text := '';
  EditAdditionalInfo.Text := '';
  EditProductID.Text := '0';
  cbKitchen.Checked := False;
  cbModifiers.Checked := False;
  cbEditarPrecio.Checked := False;
  cbShowIndividual.Checked := False;
  cbPatrocinio.Checked := False;
  cbStateTaxable.Checked := True; 
  cbFoodItem.Checked := False;
  cbLocalTax.Checked := True;
  cbNoUPC.Checked := False;
  cbRecipe.Checked := False;
  EditCOMESPECIAL.Text := DateTimeToStr(date -30) + ' ' + TimeToStr(Time);
  EditTERMINAESPECIAL.Text := DateTimeToStr(date -30) + ' ' + TimeToStr(Time);
  EditGm1.Text := '0';
  EditGm2.Text := '0';
  EditGm3.Text := '0';
  EditPseudoMgD.Text := '0';
  EditPseudoMgP.Text := '0';
  EditDptS.Text := '';
  EditDptL.Text := '';
  EditLineLoc.Text := '';
  EditShelfLoc.Text := '';
  EditStockLoc.Text := '';
  EditProdSize.Text := '';
  EditMaxPerTx.Text := '0';
  dtpSkipPriceUpdt.DateTime := now;
  EditSkipPriceUpdtIni.Text := '';
  EditLastMod.Text := '';
  EditLastModDate.Text := '';
  cbAllowDiscount.Checked := False;
  cbRound.Checked := False;
  cbNline.Checked := False;
  cbEbt.Checked := False;
  cbSigSis.Checked := False;
  cbOtcCard.Checked := False;
  cbPseudo.Checked := False;
  cbNonRefundable.Checked := False;
  cbPepSpray.Checked := False;
  cbSkipPriceUpdt.Checked := False;
  EditItemId.Text := '';
  EditItemID2.Text := '';
  sbNewUPC.Click;
end;

procedure TFrmEditInventorySP.tlBtnPostClick(Sender: TObject);
Var
  MS: TMemoryStream;
  Note: String;
begin
  With DMMidas do
  begin
    CommonPOS.DisconnectFromDatabase;
    try
        With POS_INSERT_EDIT_INVENTORY do
      begin
        Prepare;
        ParamByName('@ADD_EDIT').Value := 1;
        ParamByName('@PROCUCT_ID').Value := StrToInt(EditProductID.Text);
        ParamByName('@DESCRIPCION').Value := Trim(Copy(EditDescription.Text,1,35));
        ParamByName('@COSTO').Value := StrToFloat(EditCosto.Text);
        ParamByName('@PRECIO').Value := StrToFloat(EditRetailPrice.Text);
        ParamByName('@PRECIOVENTA2').Value := StrToFloat(EditPrecioVenta2.Text);
        ParamByName('@PRECIOVENTA3').Value := StrToFloat(EditPrecioVenta3.Text);
        ParamByName('@RBP').Value := StrToFloat(EditPrecioGrupo.Text);
        ParamByName('@GROUP_QTY').Value := StrToFloat(EditGROUP_QTY.Text);
        ParamByName('@PRECIO_CAJA').Value := StrToFloat(EditPrecioCaja.Text);
        ParamByName('@QTY_CAJA').Value := StrToFloat(EditQtyCaja.Text);
        ParamByName('@ESPECIAL').Value := StrToFloat(EditEspecial.Text);
        ParamByName('@COMESPECIAL').Value := StrToDateTime(EditCOMESPECIAL.Text);
        ParamByName('@TERMINAESPECIAL').Value := StrToDateTime(EditTERMINAESPECIAL.Text);
        ParamByName('@SALES_PROMO_DEFINE').Value := StrToIntDef(EditSALES_PROMOTION_ID.Text, 0);
        ParamByName('@KITCHEN').Value := cbKitchen.Checked;
        ParamByName('@HAS_MODIFIER').Value := cbModifiers.Checked;
        ParamByName('@MODIFIER_QTY').Value := StrToFloat(EditNO_MODIFIERS.Text);
        ParamByName('@DESCDEPT').Value := NoDept;
        ParamByName('@SUBDEPT').Value := NoSubDept;
        ParamByName('@Suplidor').Value := NoSupplier;
        ParamByName('@CMININVENTARIO').Value := StrToFloat(EditMinimo.Text);
        ParamByName('@CMAXINVENTARIO').Value := StrToFloat(EditMaximo.Text);
        ParamByName('@QTYINVENTARIO').Value := StrToFloat(EditQtyInventario.Text);
        ParamByName('@EDITAR_PRECIO').Value := cbEditarPrecio.Checked;
        ParamByName('@PO').Value := Copy(EditPO.Text,1,10);
        ParamByName('@CODIGOBARRA').Value := Copy(EditUPC.Text,1,14);
        ParamByName('@BARCODE2').Value := Copy(EditPartNumber.Text,1,14);
        ParamByName('@INFOADICIONAL').Value := Copy(EditAdditionalInfo.Text,1,25);
        ParamByName('@RECIPEPRICE').Value := StrToFloat(EditRecipePrice.Text);
        if cbShowIndividual.Checked then
          ParamByName('@SHOWINDIVIDUAL').Value := '1'
        else
          ParamByName('@SHOWINDIVIDUAL').Value := '0';
        if cbPatrocinio.Checked then
          ParamByName('@PATROCINIO').Value := 1
        else
          ParamByName('@PATROCINIO').Value := 0;
        if cbStateTaxable.Checked then
          ParamByName('@TAXABLE_ESTATAL').Value := '1'
        else
          ParamByName('@TAXABLE_ESTATAL').Value := '0';
        if cbLocalTax.Checked then
          ParamByName('@TAXABLE').Value := '1'
        else
          ParamByName('@TAXABLE').Value := '0';
        if cbFoodItem.Checked then
          ParamByName('@FOODITEM').Value := 1
        else
          ParamByName('@FOODITEM').Value := 0;
        if cbNoUPC.Checked then
          ParamByName('@NONEBC').Value := 1
        else
          ParamByName('@NONEBC').Value := 0;
        if cbShowOnEcomm.Checked then
          ParamByName('@SHOW_ON_ECOMM').Value := 1
        else
          ParamByName('@SHOW_ON_ECOMM').Value := 0;
        ParamByName('@RECIPE').Value := cbRecipe.Checked;
        ParamByName('@DAILY_SALE_START_TIME').Value := StrToTime(eDailySaleStartTime.Text);
        ParamByName('@DAILY_SALE_END_TIME').Value := StrToTime(eDailySalEndTime.Text);
        ParamByName('@DAILY_SPECIAL_PRICE').Value := StrToFloat(eDailySalePrice.Text);
        ParamByName('@PROCESSED_FOOD').Value := cbProcessedFood.Checked;
        ParamByName('@DAILY_SALE_ACTIVE').Value := cbDAILY_SALE_ACTIVE.Checked;
        ParamByName('@TRIPLES_PRODUCT').Value := cbTripleS.Checked;
        ParamByName('@ULTIMOCAMBIO').Value := Trim(Copy(CommonPOS.UserName,1,30));
        ParamByName('@CUSTOMER_ID_REQUIRED').Value := cbCustIDRequired.Checked;
        ParamByName('@NOTE').Value := MemoProductNote.Text;
        ParamByName('@PRODUCT_CLASSIFICATION').Value := Trim(Copy(EditProductClassification.Text,1,20));
        ///New for wescosoft///
        ParamByName('@GM1').Value := StrToFloatDef(Trim(EditGm1.Text),0);
        ParamByName('@GM2').Value := StrToFloatDef(Trim(EditGm2.Text), 0);
        ParamByName('@GM3').Value := StrToFloatDef(Trim(EditGm3.Text), 0);
        ParamByName('@ALWDISC').Value := cbAllowDiscount.Checked;
        ParamByName('@ROUND').Value := cbRound.Checked;
        ParamByName('@DEPL').Value := Trim(EditDptL.Text);
        ParamByName('@DEPS').Value := Trim(EditDptS.Text);
        ParamByName('@NLINE').Value := cbNline.Checked;
        ParamByName('@EBT').Value := cbEbt.Checked;
        ParamByName('@SIGIS').Value := cbSigSis.Checked;
        ParamByName('@OTCCARD').Value := cbOtcCard.Checked;
        ParamByName('@PSEUDO').Value := cbPseudo.Checked;
        if EditPseudoMgD.Text > '' then
          ParamByName('@PSEUDOMGD').Value := StrToIntDef(Trim(EditPseudoMgD.Text), 0)
        else
          ParamByName('@PSEUDOMGD').Value := 0;
        if EditPseudoMgP.Text > '' then
          ParamByName('@PSEUDOMGP').Value := StrToIntDef(Trim(EditPseudoMgP.Text), 0)
        else
          ParamByName('@PSEUDOMGP').Value := 0;
        ParamByName('@NONREFUND').Value := cbNonRefundable.Checked;
        ParamByName('@PEP_SPRAY').Value := cbPepSpray.Checked;
        if EditMaxPerTx.Text > '' then
          ParamByName('@MAXPERTX').Value := StrToIntDef(Trim(EditMaxPerTx.Text), 0)
        else
          ParamByName('@MAXPERTX').Value := StrToIntDef(Trim(EditMaxPerTx.Text), 0);
        ParamByName('@SKIPPRICEUPD').Value := cbSkipPriceUpdt.Checked;
        ParamByName('@DTSKIPPRICEUPD').Value := Trim(DateToStr(dtpSkipPriceUpdt.DATETIME));
        ParamByName('@SKIPPRICEUPDINIT').Value := Trim(EditSkipPriceUpdtIni.Text);
        ParamByName('@LINE_LOC').Value := Trim(EditLineLoc.Text);
        ParamByName('@SHELF_LOC').Value := Trim(EditShelfLoc.Text);
        ParamByName('@STOCK_LOC').Value := Trim(EditStockLoc.Text);
        ParamByName('@LST_MODIF_PR').Value := Now;
        ParamByName('@SIZE_IT').Value := Trim(EditProdSize.Text);
        ParamByName('@AskID').Value := StrToIntDef(Trim(cbAge.Text), 0);
        ParamByName('@NUMEROSUPLIDOR2').Value := NoSupplier2;
        if cbSupplierPrice.Checked = True then    //Select supplier price 1 or 2 ACG 02/13/2026//
          ParamByName('@SUPPLIER_PRICE_DEFINE').AsInteger := 0
        else
          ParamByName('@SUPPLIER_PRICE_DEFINE').AsInteger := 1;
        ParamByName('@SUPP_ITEMID').Value := EditItemId.Text;
        ParamByName('@SUPP_ITEMID2').Value := EditItemId2.Text;
        ParamByName('@GROUP_PRODUCTNO').Value := EditGroupNo.Text;  //Added to link products ACG 03/10/2026//
        ParamByName('@MAIN_NDC').Value := ord(cbMainGroupProd.Checked);
        ///end///
        ExecProc;
        EditProductID.Text := IntToStr(ParamByName('@PID').Value);
      end;
    except on E: Exception do
    begin
      ShowMessage('Error: ' + e.Message)
    end;
    end;
    if StrToFloat(EditRetailPrice.Text) <> CDSInventarioPisoPRECIO.asFloat then
    begin
      Note := 'Price field value was change from: ' + CDSInventarioPisoPRECIO.AsString + ' to ' + EditRetailPrice.Text + chr(13);
    end;
    if StrToFloat(EditEspecial.Text) <> CDSInventarioPisoESPECIAL.asFloat then
    begin
      Note := Note + ' Special field value was change from: ' + CDSInventarioPisoESPECIAL.AsString + ' to ' + EditEspecial.Text;
    end;
    if StrToFloat(EditCosto.Text) <> CDSInventarioPisoCOSTO.asFloat then
    begin
      Note := Note + ' Cost field value was change from: ' + CDSInventarioPisoCOSTO.AsString + ' to ' + EditCosto.Text;
    end;
    CommonPOS.InsertLog('Inventory modified', 'M', CDSInventarioPisoCODIGOBARRA.Value,
                Copy(CommonPOS.User,1,3), '',
                0, 0, 0, 0,
                0, 0, 0, StrToInt(EditProductID.Text),
                'Drug: ' + Trim(CDSInventarioPisoDESCRIPCION.Value) + ' was modified by ' + CommonPOS.UserName + chr(39) + ' ' + Note,false,true);
    if hasImage = True then
    begin
      MS := TMemoryStream.Create;
      //ImageEnView1.IO.SaveToStreamJpeg(MS);
      CommonPOS.DisconnectFromDatabase;
      with POS_INSERT_EDIT_PRODIMAGE do
      begin
        Prepare;
        //ParamByName('@productImage').LoadFromStream(MS, ftBlob);
        ParamByName('@productId').Value := StrToInt(EditProductID.Text);
        ExecProc;
      end;
    end;
    CDSInventarioPiso.Refresh;
  end;
end;

procedure TFrmEditInventorySP.ToolButton1Click(Sender: TObject);
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
        if RadioGroup1.ItemIndex = 3 then frxReport1x2.ShowReport;
        FrmSeleccioneOpcion.Free;
      end;
    end;
  end;
end;

procedure TFrmEditInventorySP.ToolButton2Click(Sender: TObject);
begin
  With DMMidas.CDSInventarioPiso do
  begin
    if FrmMain.LanguageStr = 'English' then
      FrmMain.msgD := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 296)
    else
      FrmMain.msgD := '¿Realmente quiere borrar?';
    If MessageDlg(FrmMain.msgD,mtConfirmation,[mbYes,mbNo],0) = mrYes then
    Begin
      Delete;
      TlBtnPost.Enabled := True;
      FrmEditInventorySP.Close;
    end;
  end;
end;

end.
