unit untMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, Menus, db, ComCtrls, Registry,
  ShellApi, Printers, crtl, MidasLib,
  ExtCtrls, ToolWin, StdCtrls,
  Buttons,
  Types, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdFTP, IdMessage,
  IdMessageClient, IdSMTPBase, IdSMTP, OleCtrls, SHDocVw, EncdDecd, xmldom,
  XMLIntf, msxmldom, XMLDoc, System.ImageList, Vcl.Imaging.pngimage, Vcl.DBCtrls,
  SIGSIGNLib_TLB, ZylSerialPort, frCoreClasses, frxClass, frxDBSet, Vcl.Grids,
  Vcl.DBGrids, System.StrUtils, frxExportBaseDialog, frxExportCSV, frxExportPDF;//, VirtualUI_SDK;

type
  TFrmMain = class(TForm)
    sbMain: TStatusBar;
    DisImages: TImageList ;
    RichEdit1: TRichEdit;
    LblDummy: TLabel;
    TimerPoleDisplayHeader: TTimer;
    ImageList1: TImageList;
    ImageListDB: TImageList;
    TimerVersion: TTimer;
    FTP: TIdFTP;
    ImageListToolBar: TImageList;
    Images: TImageList;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    XMLDocument1: TXMLDocument;
    MainMenu1: TMainMenu;
    Exit1: TMenuItem;
    Inventory1: TMenuItem;
    QuickEntry1: TMenuItem;
    Partners1: TMenuItem;
    Utillities1: TMenuItem;
    Inventory2: TMenuItem;
    Assembly1: TMenuItem;
    Departments1: TMenuItem;
    Suppliers1: TMenuItem;
    Combo1: TMenuItem;
    PresetButtons1: TMenuItem;
    PrintBarcode1: TMenuItem;
    Shopper21: TMenuItem;
    Shoopper21: TMenuItem;
    ExportData1: TMenuItem;
    Subdepartment1: TMenuItem;
    Customers1: TMenuItem;
    N1: TMenuItem;
    Balacedue1: TMenuItem;
    Administration1: TMenuItem;
    ViewTransactions1: TMenuItem;
    OpenDrawer1: TMenuItem;
    CancelTransaction1: TMenuItem;
    ransactionsLog1: TMenuItem;
    Backup1: TMenuItem;
    Reports1: TMenuItem;
    ImageList48: TImageList;
    SalesPromotionBOGOF1: TMenuItem;
    ButtonModifiers1: TMenuItem;
    sbTimeCard: TSpeedButton;
    imeCard1: TMenuItem;
    RestartPrintServer1: TMenuItem;
    ToolButton1: TSpeedButton;
    cxButtonInventory: TSpeedButton;
    cxButtonSettings: TSpeedButton;
    cxButton1: TSpeedButton;
    dxBarButtonLogout: TSpeedButton;
    cxButtonHistory: TSpeedButton;
    BtnSecurity: TSpeedButton;
    ToolButton2: TSpeedButton;
    cxButtonPrescriber: TSpeedButton;
    PanelHeading: TPanel;
    DBText1: TDBText;
    BalanceTemp1: TMenuItem;
    ImageList2: TImageList;
    ShopperDailySale1: TMenuItem;
    TimerLogout: TTimer;
    ripleSAdvantageReport1: TMenuItem;
    CustomerClassification1: TMenuItem;
    TCPClient: TIdTCPClient;
    SigSign1: TSigSign;
    client: TIdTCPClient;
    TCPClient2: TIdTCPClient;
    ZylSerialPort1: TZylSerialPort;
    dsProductSignature: TfrxDBDataset;
    rptPseudoSales: TfrxReport;
    dsSetup: TfrxDBDataset;
    rptClientAccts: TfrxReport;
    dsClientTrans: TfrxDBDataset;
    dsClientes: TfrxDBDataset;
    rptDeudas: TfrxReport;
    dsInventariopiso: TfrxDBDataset;
    rptProdList: TfrxReport;
    dsSuplidores: TfrxDBDataset;
    rptCuadreDeUsuarios: TfrxReport;
    dsCuadres: TfrxDBDataset;
    rptCuadrePorCajero: TfrxReport;
    Inventory3: TMenuItem;
    DailyTotals1: TMenuItem;
    POS1: TMenuItem;
    Salesbydepartments1: TMenuItem;
    frxPOSDpt: TfrxDBDataset;
    TBRxVerfication: TSpeedButton;
    frxDBDataset1: TfrxDBDataset;
    RptDeptSales: TfrxReport;
    RptTransPorHora: TfrxReport;
    TransPorHora: TfrxDBDataset;
    Salesbyhour1: TMenuItem;
    Salesbyemployees1: TMenuItem;
    frxVentPorEmp: TfrxDBDataset;
    RptVentPorEmp: TfrxReport;
    DailyTotalsAllusers1: TMenuItem;
    DailyTotalByID1: TMenuItem;
    ProductList1: TMenuItem;
    Pseudosaleslog1: TMenuItem;
    Customers2: TMenuItem;
    AccountStatements1: TMenuItem;
    Customerswithdebt1: TMenuItem;
    N2: TMenuItem;
    ReportsApp1: TMenuItem;
    frxReportSalesNoTax: TfrxReport;
    Saleswithouttaxbypaymenttype1: TMenuItem;
    Handheld1: TMenuItem;
    Process832files1: TMenuItem;
    RptTaxCobrado: TfrxReport;
    Chargedtax1: TMenuItem;
    daTotalCobrado: TfrxDBDataset;
    dsTaxEstatalExc: TfrxDBDataset;
    dsTaxMun: TfrxDBDataset;
    dsTarjFamilia: TfrxDBDataset;
    dsTaxServicio: TfrxDBDataset;
    dsTaxServicioExcempto: TfrxDBDataset;
    test1: TMenuItem;
    Pepspraysaleslog1: TMenuItem;
    frxCSVExport1: TfrxCSVExport;
    frxPDFExport1: TfrxPDFExport;
    Help1: TMenuItem;
    Helpform1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButtonDptClick(Sender: TObject);
    procedure dxBarButtonSetupClick(Sender: TObject);
    procedure dxBarButtonClientInfoClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnNextWindowClick(Sender: TObject);
    procedure btnPreviousWindowClick(Sender: TObject);
    procedure dxBarButtonPasswordsClick(Sender: TObject);
    function IsAuthorized(Var UserIn: String; Item: Integer): Boolean;
    procedure dxBarButton28Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton29Click(Sender: TObject);
    procedure dxBarButton26Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton35Click(Sender: TObject);
    procedure VerPrecio(InParm: String);
    procedure btnPrintPreviewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ClientWndProc(var Message: TMessage);
    procedure dxBarButtonUtilitiesClick(Sender: TObject);
    procedure dxBarButton39Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButtonSubDptClick(Sender: TObject);
    procedure dxBarButton40Click(Sender: TObject);
    procedure dxBarButton41Click(Sender: TObject);
    procedure dxBarButton42Click(Sender: TObject);
    procedure TimerPoleDisplayHeaderTimer(Sender: TObject);
    procedure dxBarButton43Click(Sender: TObject);
    procedure BtnNewClick(Sender: TObject);
    procedure dxBarButtonLogoutClick(Sender: TObject);
    procedure BtnPreviewPreviousPageClick(Sender: TObject);
    procedure BtnViewDetailsClick(Sender: TObject);
    procedure BtnExit1Click(Sender: TObject);
    procedure dxBarButton38Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
    procedure dxBarButton34Click(Sender: TObject);
    procedure TimerVersionTimer(Sender: TObject);
    Procedure Language;
    procedure dxBarButton44Click(Sender: TObject);
    procedure dxBarButton45Click(Sender: TObject);
    procedure dxBarButton46Click(Sender: TObject);
    procedure TempClick(Sender: TObject);
    function GetDosOutput(CommandLine: string; Work: string = 'C:\'): string;
    procedure dxBarButton47Click(Sender: TObject);
    procedure dxBarButton48Click(Sender: TObject);
    procedure dxBarButton49Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure QuickEntry1Click(Sender: TObject);
    procedure SalesPromotionBOGOF1Click(Sender: TObject);
    procedure ButtonModifiers1Click(Sender: TObject);
    procedure sbTimeCardClick(Sender: TObject);
    procedure imeCard1Click(Sender: TObject);
    procedure RestartPrintServer1Click(Sender: TObject);
    procedure BalanceTemp1Click(Sender: TObject);
    procedure ShopperDailySale1Click(Sender: TObject);
    procedure cxButtonInventoryClick(Sender: TObject);
    procedure TimerLogoutTimer(Sender: TObject);
    procedure ripleSAdvantageReport1Click(Sender: TObject);
    procedure CustomerClassification1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Pseudosaleslog1Click(Sender: TObject);
    procedure AccountStatementes1Click(Sender: TObject);
    procedure Customerswithdebt1Click(Sender: TObject);
    procedure ProductList1Click(Sender: TObject);
    procedure DailyTotalsAllusers1Click(Sender: TObject);
    procedure DailyTotalByID1Click(Sender: TObject);
    procedure Salesbydepartments1Click(Sender: TObject);
    function GetWhere(From_, To_, GroupBy: String): String;
    procedure CalcTaxes(var TotalCobrado, TaxEstatalExento, TaxMunicipalExento, TarjetaFamilia, TaxServicioExento, TaxServicio: Double; From_, To_: String);
    procedure Salesbyhour1Click(Sender: TObject);
    procedure RptTransPorHoraBeforePrint(Sender: TfrxReportComponent);
    procedure Salesbyemployees1Click(Sender: TObject);
    procedure ReportsApp1Click(Sender: TObject);
    procedure Saleswithouttaxbypaymenttype1Click(Sender: TObject);
    Procedure TotalSalesNoTax(PaymentType, PayAmount, fromDate, toDate, graderorequal, Option: String; substract_change: boolean);
    procedure Handheld1Click(Sender: TObject);
    procedure Process832files1Click(Sender: TObject);
    procedure taxCobrado(desde, hasta: TDate);
    procedure Chargedtax1Click(Sender: TObject);
    procedure test1Click(Sender: TObject);
    procedure Pepspraysaleslog1Click(Sender: TObject);
    procedure RptDeptSalesBeforePrint(Sender: TfrxReportComponent);
    procedure Reports1Click(Sender: TObject);
    procedure Helpform1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TaxMunicipal, TaxEstatal, TotalConTax: Double;
    Heading, Heading2: String;
    RepDir, TranferenciaDir, EMDir: String;
    ValidPetty: Boolean;
    ReceiptPrinter: String;
    LargeRec: Array [0..2] of Boolean; {0- Credit, 1-Lay Away, 2-Others}
    RecetasPharmaTech, PromptDelivery, PrintBalance, BalanceOnPayment: Boolean;
    FClientInstance : TFarProc;
    FPrevClientProc : TFarProc;
    NumFacturas: Integer;
    PrinterFontSize: Integer;
    WebCredit: Boolean;
    versionWeb, versionLocal: String;
    LanguageIndex : integer;
    LanguageResOffset : integer;
    LanguageStr: String;
    //UserNo: Integer;
    UserStr: String;
    Instancia: Integer;
    SearchByBarcode: Boolean;
    msgD: String;
    TCash, TATH, TATHM, TCheck, TCreditCard, TPayPal,
    TFAM, TSSS, TotalSale: Double;
  end;

var
  FrmMain: TFrmMain;


implementation

uses  UntDMMidas, UntRepConfig, UntPasswords,
     UntSetup, UntInventory,
     UntClientes, UntDepartments, UntDailyTotals,
     UntSecurity, UntSuppliers, UntQuickUpdate, UntVerTrans,
     UntSearchInv, UntQueries, UntPriceCheck,
     UntWaitWindow, UntUtilities, UntSubDpt,
     UntWebTrans, UntRptEstadoCuentaWeb, UntAssembly, UntThirdParty, UntBackup,
     UntCommonPOS, UntPOSTS, UntZipAndStore, UntLog, UntDMCentralCredit,
      UntBrowseInv, UntRazonPorDescuento, ResourceLocalizer,
  UntNewVersion, UntCombo, UntBotones, UntSignatureCapture, UntBarcodePrintQ,
  UntShopper, UntShopper2, UntSalesPromotion, UntPOSRest, UntBotonesModifiers,
  UntPunch_inout, UntTimeCard, UntBalanceTemp, UntShopperDailySale,
  UntTripleSReport, untCustomerClassification, untIpe, untEvertec,
  UntEscojaFecha, untFilters, UntInventoryHandheld, UntProcess832files;

{$R *.dfm}
{$R multilanguage.RES}

procedure TFrmMain.CalcTaxes(var TotalCobrado, TaxEstatalExento,
  TaxMunicipalExento, TarjetaFamilia, TaxServicioExento, TaxServicio: Double;
  From_, To_: String);
begin
  With DMmidas do
  begin
    FDQuery1.SQL.Text := 'Select Sum(DETAIL_TOTAL) as TotalCobrado from VerTransacciones  where ' + GetWhere(From_, To_, '');
    FDQuery1.Open;
    if FDQuery1.FieldByName('TotalCobrado').Value > 0 then
      TotalCobrado := FDQuery1.FieldByName('TotalCobrado').Value
    else
      TotalCobrado := 0;

    FDQuery1.SQL.Text := 'Select Sum(DETAIL_TOTAL) as TaxEstatalExento from VerTransacciones where Tax_Estatal <> ' + #39 + 'T' + #39 + ' and ' + GetWhere(From_, To_, '');
    FDQuery1.Open;
    if FDQuery1.FieldByName('TaxEstatalExento').Value > 0 then
      TaxEstatalExento := FDQuery1.FieldByName('TaxEstatalExento').Value
    else
      TaxEstatalExento := 0;

    FDQuery1.SQL.Text := 'Select Sum(DETAIL_TOTAL) as TaxMunicipalExento from VerTransacciones where Tax_Municipal <> ' + #39 + 'T' + #39 + ' and ' + GetWhere(From_, To_, '');
    FDQuery1.Open;
    if FDQuery1.FieldByName('TaxMunicipalExento').Value > 0  then
      TaxMunicipalExento := FDQuery1.FieldByName('TaxMunicipalExento').Value
    else
      TaxMunicipalExento := 0;

    FDQuery1.SQL.Text := 'Select Sum(PayAmount1) as TTarjetaFamilia  from TransactionHeader where Cast(TransactionDate AS DATE) between '  + #39 + From_ + #39 + ' and '  + #39 + To_ + #39 + ' and PaymentType1 = ' + #39 + 'TFAM' + #39;
    FDQuery1.Open;
    if FDQuery1.FieldByName('TTarjetaFamilia').Value > 0 then
      TarjetaFamilia := FDQuery1.FieldByName('TTarjetaFamilia').Value
    else
      TarjetaFamilia := 0;

    FDQuery1.SQL.Text := 'Select Sum(TOTAL) as TaxServicioEento from TransactionDetail  where FechaVenta between '  + #39 + From_ + #39 + ' and '  + #39 + To_ + #39 + ' and ProdDepartment = ' + #39 + '200' + #39 + ' and Tax_Servicio = 0';
    FDQuery1.Open;
    if FDQuery1.FieldByName('TaxServicioEento').Value > 0 then
      TaxServicioExento := FDQuery1.FieldByName('TaxServicioEento').Value
    else
      TaxServicioExento := 0;

    FDQuery1.SQL.Text := 'Select Sum(TOTAL) as TaxServicio from TransactionDetail  where FechaVenta between '  + #39 + From_ + #39 + ' and '  + #39 + To_ + #39 + ' and ProdDepartment = ' + #39 + '200' + #39 + ' and Tax_Servicio = 1';
    FDQuery1.Open;
    if FDQuery1.FieldByName('TaxServicio').Value > 0 then
      TaxServicio := FDQuery1.FieldByName('TaxServicio').Value
    else
      TaxServicio := 0;
  end;
end;

procedure TFrmMain.Chargedtax1Click(Sender: TObject);
var
  s, s2: String;
  Memo1, memo2, memo3: TfrxMemoView;
begin
  FrmFilters := TFrmFilters.Create(nil);
  with FrmFilters do
  begin
    FrmFilters.PageControl1.ActivePageIndex := 2;
    DateFrom.Date := now;
    dateTo.Date := now;
    cbId.Visible := false;
    Label5.Visible := False;
    ShowModal;
    if ModalResult = mrOk then
    begin
      s := DateToStr(dateFrom.Date) ;
      s2 := DateToStr(dateTo.Date);
      taxCobrado(dateFrom.date, dateTo.Date);
      Heading := 'TAX CHARGED REPORT FROM: ' + s  + ' TO ' + s2;
      //if Option = 'Print' then

        Memo1 := RptTaxCobrado.FindObject('MemoHeading') as TfrxMemoView;
        Memo1.Memo.Text := FrmMain.Heading;
        //Ventas//
        Memo1 := RptTaxCobrado.FindObject('mVentasMun') as TfrxMemoView;
        Memo1.Memo.Text := FormatCurr('$#,##0.00', DMMidas.qTotalCobrado.FieldByName('TotalCobrado').AsCurrency);
        //Memo1.FormatData(Memo1.Memo.Text, );
        Memo2 := RptTaxCobrado.FindObject('mVentasEst') as TfrxMemoView;
        Memo2.Memo.Text := FormatCurr('$#,##0.00', DMMidas.qTotalCobrado.FieldByName('TotalCobrado').asCurrency);
        Memo3 := RptTaxCobrado.FindObject('mVentasPfood') as TfrxMemoView;
        Memo3.Memo.Text := FormatCurr('$#,##0.00', DMMidas.qTotalCobrado.FieldByName('TotalCobrado').asCurrency);

        //Excento//
        Memo1 := RptTaxCobrado.FindObject('mMunEx') as TfrxMemoView;
        Memo1.Memo.Text := FormatCurr('$#,##0.00', DMMidas.qTaxMunExcempto.FieldByName('TaxMunicipalExcempto').asCurrency);
        Memo2 := RptTaxCobrado.FindObject('mEstEx') as TfrxMemoView;
        Memo2.Memo.Text := FormatCurr('$#,##0.00', DMMidas.qTaxEstatalExempto.FieldByName('TaxEstatalExcempto').asCurrency);
        Memo3 := RptTaxCobrado.FindObject('mExcentoPf') as TfrxMemoView;
        Memo3.Memo.Text := FormatCurr('$#,##0.00', dmmidas.FDQuery3.FieldByName('ProcessedFoodExcempto').asCurrency); //Format('%m', [TqProcessedFoodExempt.FieldByName('ProcessedFoodExcempto').asFloat]);
        //Ventas tributables//
        Memo1 := RptTaxCobrado.FindObject('mVtMun') as TfrxMemoView;
        Memo1.Memo.Text := FormatCurr('$#,##0.00', DMMidas.qTotalCobrado.FieldByName('TotalCobrado').asCurrency - (DMMidas.qTaxMunExcempto.FieldByName('TaxMunicipalExcempto').asCurrency + DMMidas.qTarjFamilia.FieldByName('TTarjetaFamilia').asCurrency));
        Memo2 := RptTaxCobrado.FindObject('mVtEstatal') as TfrxMemoView;
        Memo2.Memo.Text := FormatCurr('$#,##0.00', DMMidas.qTotalCobrado.FieldByName('TotalCobrado').asCurrency - (DMMidas.qTaxEstatalExempto.FieldByName('TaxEstatalExcempto').asCurrency  + DMMidas.qTarjFamilia.FieldByName('TTarjetaFamilia').asCurrency));
        Memo3 := RptTaxCobrado.FindObject('mVtPf') as TfrxMemoView;
        Memo3.Memo.Text := FormatCurr('$#,##0.00', DMMidas.qTotalCobrado.FieldByName('TotalCobrado').asCurrency - (DMMidas.FDQuery3.FieldByName('ProcessedFoodExcempto').asCurrency + DMMidas.qTarjFamilia.FieldByName('TTarjetaFamilia').asCurrency));
        //% A pagar//
        Memo1 := RptTaxCobrado.FindObject('mPorcMun') as TfrxMemoView;
        Memo1.Memo.Text := FormatFloat('0.00%', DMMidas.CDSSetupTAX_RATE.Value);
        Memo2 := RptTaxCobrado.FindObject('mPorcEstatal') as TfrxMemoView;
        Memo2.Memo.Text := FormatFloat('0.00%', DMMidas.CDSSetupTAX_RATE_ESTATAL.Value);
        Memo3 := RptTaxCobrado.FindObject('mPorcPf') as TfrxMemoView;
        Memo3.Memo.Text := FormatFloat('0.00%', DMMidas.CDSSetupTAX_PROCESSED_FOOD.AsFloat);
        //Total//
        Memo1 := RptTaxCobrado.FindObject('mTotalMun') as TfrxMemoView;
        Memo1.Memo.Text := FormatCurr('$#,##0.00', (DMMidas.qTotalCobrado.FieldByName('TotalCobrado').AsCurrency - (DMMidas.qTaxMunExcempto.FieldByName('TaxMunicipalExcempto').AsCurrency + DMMidas.qTarjFamilia.FieldByName('TTarjetaFamilia').AsCurrency)) * DMMidas.CDSSetupTAX_RATE.AsCurrency);
        Memo2 := RptTaxCobrado.FindObject('mTotalEstatal') as TfrxMemoView;
        Memo2.Memo.Text := FormatCurr('$#,##0.00', (DMMidas.qTotalCobrado.FieldByName('TotalCobrado').asCurrency - (DMMidas.qTaxEstatalExempto.FieldByName('TaxEstatalExcempto').asCurrency + DMMidas.qTarjFamilia.FieldByName('TTarjetaFamilia').asCurrency)) * DMMidas.CDSSetupTAX_RATE_ESTATAL.asCurrency);
        Memo3 := RptTaxCobrado.FindObject('mTotalPf') as TfrxMemoView;
        Memo3.Memo.Text := FormatCurr('$#,##0.00', (DMMidas.qTotalCobrado.FieldByName('TotalCobrado').asCurrency - (DMMidas.FDQuery3.FieldByName('ProcessedFoodExcempto').asCurrency + DMMidas.qTarjFamilia.FieldByName('TTarjetaFamilia').asCurrency)) * DMMidas.CDSSetupTAX_PROCESSED_FOOD.asCurrency);
        //Totals global//
        Memo1 := RptTaxCobrado.FindObject('mTotalServ') as TfrxMemoView;
        Memo1.Memo.Text := FormatCurr('$#,##0.00', dmmidas.qTaxServicio.FieldByName('TaxServicio').asCurrency * 0.04);


      RptTaxCobrado.ShowReport
      {else
      ExportReportsToPDF(RptTransPorHora, 'RptTransPorHora');}
    end;
  end;
end;

procedure TFrmMain.ClientWndProc(var Message: TMessage);
var
  MyDC: hDC;
  Ro, Co: Word;
  Imagen: TImage;
begin

  if Trim(CommonPOS.Vendor) > '' then
  begin
    if CommonPOS.Vendor = 'Farmatec' then
    begin
     //Imagen := Image1;
    end
    else
    begin
     //Imagen := Image2;
    end;
  end
  else
  begin
    //Imagen := Image1;
  end;


  //Imagen.Visible := True;
  //if not Assigned(FHistorial) and (not Assigned(FAnadirRecetas)) then
  //begin
    {Try
    with Message do
      case Msg of
        WM_ERASEBKGND:
          begin
            MyDC := TWMEraseBkGnd(Message).DC;
            for Ro := 0 to ClientHeight div Imagen.Picture.Height do
              for Co := 0 to ClientWIDTH div Imagen.Picture.Width do
                BitBlt(MyDC, Co * Imagen.Picture.Width, Ro * Imagen.Picture.Height,
                  Imagen.Picture.Width,
                  Imagen.Picture.Height, Imagen.Picture.Bitmap.Canvas.Handle, 0, 0,
                    SRCCOPY);
            Result := 1;
          end;
      else
        Result := CallWindowProc(FPrevClientProc, ClientHandle, Msg, wParam, lParam);
      end;
    Finally
      //
    End;}
  //end;
end;

procedure TFrmMain.CustomerClassification1Click(Sender: TObject);
begin
  frmCustomerClassification := TfrmCustomerClassification.Create(nil);
  With frmCustomerClassification do
  begin
    ShowModal;
    frmCustomerClassification := Nil;
    Free;
  end;
end;

procedure TFrmMain.Customerswithdebt1Click(Sender: TObject);
begin
  FrmEscojaFechas := TFrmEscojaFechas.Create(nil);
  with FrmEscojaFechas do
  begin
    ShowModal;
    if ModalResult = mrOk then
    begin
      with DMMidas do
      begin
        CDSClientes.Close;
        CDSClientes.CommandText := 'select * from pacientes where deuda > 0.00';
        CDSClientes.Open;
        rptDeudas.PrepareReport();
        rptDeudas.ShowReport;
      end;
    end;
  end;
  FrmEscojaFechas := nil;
  FrmEscojaFechas.Free;
end;

{procedure TFrmMain.ClientWndProc(var Message: TMessage);
var
  Dc : hDC;
  Row : Integer;
  Col : Integer;
  Imagen: TImage;
begin

  if Trim(CommonPOS.Vendor) > '' then
  begin
    if CommonPOS.Vendor = 'Farmatec' then
    begin
     Imagen := Image1;
    end
    else
    begin
     Imagen := Image2;
    end;
  end
  else
  begin
    Imagen := Image1;
  end;
  with Message do
    case Msg of
      WM_ERASEBKGND:
      begin
        Dc := TWMEraseBkGnd(Message).Dc;
        // Tile Image on DC
        for Row := 0 to ClientHeight div Image1.Picture.Height do
          for Col := 0 to ClientWidth div Image1.Picture.Width do
            BitBlt(Dc,
               Col * Image1.Picture.Width,
               Row * Image1.Picture.Height,
               Image1.Picture.Width,
               Image1.Picture.Height,
               Image1.Picture.Bitmap.Canvas.Handle,
               0,
               0,
               SRCCOPY);
          Result := 1;
      end;
      else // Pass on other msg's
        Result := CallWindowProc(FPrevClientProc,
                                 ClientHandle,
                                 Msg,
                                 wParam,
                                 lParam);
  end;
end;
}


procedure TFrmMain.cxButton12Click(Sender: TObject);
begin
 Previous;
end;

procedure TFrmMain.cxButton13Click(Sender: TObject);
begin
  Next;
end;

procedure TFrmMain.cxButtonInventoryClick(Sender: TObject);
begin
  //ShowMessage(Format('%.*d',[6, '413']));
  //ShowMessage(Format('%.*d',[3, 7]));
  {begin
    CommonPOS.DisconnectFromDatabase;
    With SIGNATURE_LINK do
    begin
      Prepare;
      ExecProc;
      //SIG_LINK := ParamByName('@SIGNATURE_LINK').Value;
      CommonPOS.SignatureLink := ParamByName('@SIGNATURE_LINK').Value;
      ShowMessage(IntToStr(CommonPOS.SignatureLink));
    end;
  end; }
end;

procedure TFrmMain.DailyTotalByID1Click(Sender: TObject);
begin
  FrmFilters := TFrmFilters.Create(nil);
  with FrmFilters do
  begin
    FrmFilters.PageControl1.ActivePageIndex := 2;
    dateFrom.Date := now - 30;
    dateTo.Date := now;
    with DMMidas do
    begin
      CDSDailyTotals.Close;
      QDailytotalsFD.SQL.Text := 'Select * from dailytotals where Cast(SalesDate AS DATE) between ' + chr(39) + DateToStr(dateFrom.Date) + chr(39) + ' and ' + chr(39) + DateToStr(dateTo.Date) + chr(39);
      CDSDailyTotals.Open;
      while not CDSDailyTotals.Eof do
      begin
        cbId.Items.Add(CDSDailyTotalsID.asString);
        CDSDailyTotals.Next;
      end;
      cbId.ItemIndex := 0;
    end;
    ShowModal;
    if ModalResult = mrOk then
    begin
      with DMMidas do
      begin
        CDSDailyTotals.Close;
        QDailytotalsFD.SQL.Text := 'Select * from DailyTotals Where ID = ' + chr(39) + cbId.Text + chr(39);
        //QDailytotalsFD.SQL.Text := 'Select * from DailyTotals Where Cast(SalesDate AS DATE) between ' + chr(39) + datetostr(desde.Date) + chr(39) + 'and ' +  chr(39) + datetostr(hasta.Date) + chr(39) + 'and register > 0 order by id, salesdate';
        CDSDailyTotals.Open;
        rptCuadrePorCajero.PrepareReport();
        rptCuadrePorCajero.ShowReport;
      end;
    end;
  end;
  FrmFilters := nil;
  FrmFilters.Free;
end;

procedure TFrmMain.DailyTotalsAllusers1Click(Sender: TObject);
begin
  FrmFilters := TFrmFilters.Create(nil);
  with FrmFilters do
  begin
    FrmFilters.PageControl1.ActivePageIndex := 0;
    cbClient.Visible := False;
    EditClientName.Visible := False;
    Desde.Date := now - 30;
    hasta.Date := now;
    ShowModal;
    if ModalResult = mrOk then
    begin
      with DMMidas do
      begin
        CDSDailyTotals.close;
        QDailytotalsFD.SQL.Text := 'Select * from DailyTotals Where Cast(SalesDate AS DATE) between ' + chr(39) + DateToStr(desde.date) + chr(39) + 'and ' +  chr(39) + DateToStr(hasta.Date) + chr(39) + 'and register > 0 order by id, salesdate';
        //QDailytotalsFD.SQL.Text := 'Select * from DailyTotals Where Cast(SalesDate AS DATE) between ' + chr(39) + datetostr(desde.Date) + chr(39) + 'and ' +  chr(39) + datetostr(hasta.Date) + chr(39) + 'and register > 0 order by id, salesdate';
        CDSDailyTotals.Open;
        rptCuadreDeUsuarios.PrepareReport();
        rptCuadreDeUsuarios.ShowReport;
      end;
    end;
  end;
  FrmFilters := nil;
  FrmFilters.Free;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
Var
  MyReg: TRegistry;
begin
  LanguageStr := dmmidas.Language;
  if LanguageStr = 'English' then
  begin
    CommonPOS.LanguageIndex := 0;
    LanguageResOffset := 1000;
  end
  else
  begin
    CommonPOS.LanguageIndex := 1;
    LanguageResOffset := 2000;
  end;

  CommonPOS.WorkingDirectory := extractfilepath(application.exename);
  CommonPOS.DisconnectFromDatabase;
  sbMain.Panels[4].Text := CommonPOS.AppVersion;
  {if VirtualUI.Enabled = true then
  begin
    virtualui.ClientSettings.MouseMoveGestureStyle := 1;
    virtualui.ClientSettings.MouseMoveGestureAction := 1;
  end;}
  With DMMidas do
  begin
    SPNextInstanciaSignature.ExecProc;
    CDSNextRxNumber.Close;
    CDSNextRxNumber.Open;
    FrmMain.Instancia := CDSNextRxNumberINSTANCIA_SIGNATURE.Value;
  end;
  CommonPOS.TaxRate := DMMidas.CDSSetupTAX_RATE.Value;
  MyReg := TRegistry.Create;
  MyReg.RootKey := HKEY_LOCAL_MACHINE;
  With MyReg do
  begin
    OpenKey('\SOFTWARE\WOW6432Node\FarmaTec2000', True); //OpenKey('\FarmaTec2000', True);
    FrmMain.sbMain.Panels.Items[2].Text := 'REGISTER NO: ' + ReadString('Caja#');
    Free;
  end;

  self.Height := 768;
  self.Width := 1280;

  //LanguageStr := 'Spanish';
  Language;
  VersionLocal := Trim(sbMain.Panels[4].Text);
  //Language;
  FrmMain.Caption := DMMidas.SoftwareName +', licensed to: ' + DMMidas.CDSSetupStoreName.Value;

  CommonPOS.recalledTrans := False;
  MyReg := TRegistry.Create;
  MyReg.RootKey := HKEY_LOCAL_MACHINE;
  With MyReg do
  begin
    OpenKey('\SOFTWARE\WOW6432Node\FarmaTec2000', True);
    Try
      CommonPOS.standalone := ReadBool('StandalonePOS');
    Except
      CommonPOS.standalone := False;
    End;
    Try
      CommonPOS.extendedPosForm := ReadBool('ExtendedPosForm');
    Except
      CommonPOS.extendedPosForm := False;
    End;
    Try
      CommonPOS.maxPulloutAmnt := StrToFloat(ReadString('MaxPulloutAmnt'));
    Except
      CommonPOS.maxPulloutAmnt := 0;
    End;
    Try
      CommonPOS.Restaurant := ReadBool('POS_RESTAURANT');
    Except
      CommonPOS.Restaurant := False;
    End;

    Try
      CommonPOS.PrintToScreen := ReadBool('PrintToScreen');
    Except
      CommonPOS.PrintToScreen := False;
    End;

    Try
    begin
      COMmonPOS.RegisterNo := ReadString('Caja#');
      FrmMain.Instancia := StrToInt(IntToStr(FrmMain.Instancia) + CommonPOS.RegisterNo);
    end;
    except
      COMmonPOS.RegisterNo := '0';
    end;
    Try
      COMmonPOS.PoleDisplayType := ReadInteger('Tipo Display');
    Except
      COMmonPOS.PoleDisplayType := 0;
    End;

    TranferenciaDir := ReadString('DirTranferenciaMerc');
    EMDir := ReadString('DirEntradaMerc');
    RepDir := ReadString('DirReportes');
    Try
      CommonPOS.Vendor := ReadString('Vendor');
    except
      CommonPOS.Vendor := 'Farmatec';
    end;
    Try
      CommonPOS.BarcodeNumeroReceta := ReadBool('BarcodeNoReceta');
    except
      CommonPOS.BarcodeNumeroReceta := False;
    End;
    CloseKey;
    OpenKey('\SOFTWARE\WOW6432Node\FarmaTec2000\Opciones', True);
    //OpenKey('\FarmaTec2000\Opciones', True);
    try
      CommonPOS.NO_RECIBOS_CREDIT_CARD := ReadInteger('NUMERO_DE_RECIBOS_CREDITCARD');
    except
      CommonPOS.NO_RECIBOS_CREDIT_CARD := 1;
    end;
    try
      CommonPOS.NO_RECIBOS_DEBIT_CARD := ReadInteger('NUMERO_DE_RECIBOS_DEBITCARD');
    except
      CommonPOS.NO_RECIBOS_DEBIT_CARD := 1;
    end;

    try
      CommonPOS.NO_RECIBOS_CASH := ReadInteger('NUMERO_DE_RECIBOS_CASH');
    except
      CommonPOS.NO_RECIBOS_CASH := 1;
    end;

    try
      CommonPOS.NO_RECIBOS_CREDITSALE := ReadInteger('NUMERO_DE_RECIBOS_CREDIT');
    except
      CommonPOS.NO_RECIBOS_CREDITSALE := 1;
    end;
    try
      CommonPOS.NO_RECIBOS_LAYAWAY := ReadInteger('NUMERO_DE_RECIBOS_LAYAWAY');
    except
      CommonPOS.NO_RECIBOS_LAYAWAY := 1;
    end;
    try
      CommonPOS.NO_RECIBOS_PAYPAL := ReadInteger('NUMERO_DE_RECIBOS_PAYPAL');
    except
      CommonPOS.NO_RECIBOS_PAYPAL := 1;
    end;
    try
      CommonPOS.NO_RECIBOS_CHECK := ReadInteger('NUMERO_DE_RECIBOS_CHECK');
    except
      CommonPOS.NO_RECIBOS_CHECK := 1;
    end;
    try
      CommonPOS.NO_RECIBOS_DELIVERY := ReadInteger('NUMERO_DE_RECIBOS_DELIVERY');
    except
      CommonPOS.NO_RECIBOS_DELIVERY := 1;
    end;
     try
      CommonPOS.NO_RECIBOS_UTILITIES := ReadInteger('NUMERO_DE_RECIBOS_UTILITY');
    except
      CommonPOS.NO_RECIBOS_UTILITIES := 1;
    end;
    try
      CommonPOS.NO_RECIBOS_NOCHARGE := ReadInteger('NUMERO_DE_RECIBOS_NOCHARGE');
    except
      CommonPOS.NO_RECIBOS_UTILITIES := 1;
    end;




    Try
      CommonPOS.PrinterIP := ReadString('PrinterIP');
    Except
      CommonPOS.PrinterIP := '';
    End;
    Try
      CommonPOS.PrinterPort := ReadString('PrinterPort');
    Except
      CommonPOS.PrinterPort := '';
    End;
    try
      CommonPOS.Factura := ReadBool('Factura');
    except
      CommonPOS.Factura := False;
    end;
    
    try
      CommonPOS.ReceiptPrinter := ReadString('Printer Recibo');
    Except
      CommonPOS.ReceiptPrinter := 'Epson';
    end;
    try
      CommonPOS.FoodReceipt := ReadString('Kitchen Printer');
    Except
      CommonPOS.FoodReceipt := 'Epson';
    end;

    try
      WebCredit := ReadBool('CreditoCentralizado');
    except
      WebCredit := False;
    end;
        
    try
      CommonPOS.Screen800x600 := ReadBool('Screen800x600');
    except
      CommonPOS.Screen800x600 := False;
    end;

    Try
      LargeRec[2] := ReadBool('Otros');
    except
      LargeRec[2] := False;
    end;
    Try
      LargeRec[0] := ReadBool('Credito');
    except
      LargeRec[0] := False;
    end;
    Try
      LargeRec[1] := ReadBool('Lay Away');
    except
      LargeRec[1] := False;
    end;
    //CloseKey;
    Try
      PromptDelivery := ReadBool('Entregas');
    except
      PromptDelivery := False;
    end;
    Try
      PrintBalance := ReadBool('Imprimir Balance');
    except
      PrintBalance := False;
    end;
    Try
      RecetasPharmaTech := ReadBool('RecetasPharmaTech');
    except
      RecetasPharmaTech := False;
    end;
    Try
      BalanceOnPayment := ReadBool('Balance en pagos');
    except
      PrintBalance := False;
    end;
    Try
      CommonPOS.PoleDisplayPort := ReadInteger('PoleDisplayPort');
    except
      CommonPOS.PoleDisplayPort := 1;
    end;
    Try
      CommonPOS.ConsiderarQty := ReadBool('ConsiderarQty');
    except
      CommonPOS.ConsiderarQty := False;
    end;
    Try
      CommonPOS.RxRecibo := ReadBool('RxRecibo');
    except
      CommonPOS.RxRecibo := False;
    end;
    Try
      CommonPOS.CheckNoSocio := ReadBool('CheckNoSocio');
    except
      CommonPOS.CheckNoSocio := False;
    end;
    Try
      CommonPOS.MaximosDiasPagoCredito := ReadInteger('MaximosDiasPagoCredito');
    except
      CommonPOS.MaximosDiasPagoCredito := 30;
    end;

    Try
      CommonPOS.ConsiderarCambioPrecio := ReadBool('ConsiderarCambioPrecio');
    except
      CommonPOS.ConsiderarCambioPrecio := False;
    end;

    Try
      CommonPOS.IVULOTO_TERMINALID := ReadString('IVULOTO_TERMINALID');
    except
      CommonPOS.IVULOTO_TERMINALID := '';
    end;

    Try
      CommonPOS.IVULOTO_ACTIVO := ReadBool('IVULOTO_ACTIVO');
    except
      CommonPOS.IVULOTO_ACTIVO := False;
    end;

    Try
      CommonPOS.OpcionBusqueda := ReadInteger('OpciondeBusqueda');
    except
      CommonPOS.OpcionBusqueda := 0;
    end;

    Try
      CommonPOS.txportIP := ReadString('txportIP');
    except
      CommonPOS.txportIP := '';
    end;

    Try
      CommonPOS.FirmaElectronica := ReadBool('FirmaElectronica');
    except
      CommonPOS.FirmaElectronica := False;
    end;
    Try
      PrinterFontSize := StrToInt(ReadString('PrinterFontSize'));
    Except
      PrinterFontSize := 8;
    end;
    If Length(ReadString('Printer Recibo')) > 0 then
      ReceiptPrinter := ReadString('Printer Recibo')
    else
      ReceiptPrinter := '';
    try
      CommonPOS.EnforceSignatureonPickup := ReadBool('EnforceSignatureonPickup');
    Except
      CommonPOS.EnforceSignatureonPickup := false;
    end;
    Try
      CommonPOS.activePin := ReadBool('activePin');
    Except
      CommonPOS.activePin := False;
    End;
    Try
      CommonPOS.SpinPOSactive := ReadBool('SpinPOSactive');
    Except
      CommonPOS.SpinPOSactive := False;
    End;
    Try
      CommonPOS.SpinPOSApiKey := ReadString('SpinPOSApiKey');
    Except
      CommonPOS.SpinPOSApiKey := '';
    end;
    Try
      CommonPOS.SpinPOSTPN := ReadString('SpinPOSTPN');
    Except
      CommonPOS.SpinPOSTPN := '';
    end;
    Try
      CommonPOS.SpinPOSReg := ReadString('SpinPOSReg');
    Except
      CommonPOS.SpinPOSReg := '';
    end;
    Try
      CommonPOS.pinTid := ReadString('pinTid');
    Except
      CommonPOS.pinTid := '';
    End;
    Try
      CommonPOS.pinPortNum := ReadString('pinPortNum');
    Except
      CommonPOS.pinPortNum := '';
    End;
    Try
      CommonPOS.pinIp := ReadString('pinIp');
    Except
      CommonPOS.pinIp := '';
    End;
    Try
      CommonPOS.pinStationNum := ReadString('pinStationNum');
    Except
      CommonPOS.pinIp := '';
    End;
    Try
      CommonPOS.poleDispPort := ReadString('POLE_DISPLAY_PORT');
    Except
      CommonPOS.poleDispPort := '';
    End;
    CloseKey;
  end;

  if CommonPOS.poleDispPort > ''  then
    ZylSerialPort1.Port := ZylSerialPort1.StringToCommPort(CommonPOS.poleDispPort);
  ZylSerialPort1.UnlockKey := '5071-6245-6782-1635-2770-6415*37';


  {if FrmMain.WebCredit = True then
  begin
    with DM do
    begin
      CDSClientes.Open;
      CDSClientTransactions.Open;
    end;
  end;}
{  if CommonPOS.PoleDisplayPort = 1 then  elSerialPort1.Port := spCOM1;
  if CommonPOS.PoleDisplayPort = 2 then  elSerialPort1.Port := spCOM2;
  if CommonPOS.PoleDisplayPort = 3 then  elSerialPort1.Port := spCOM3;
  if CommonPOS.PoleDisplayPort = 4 then  elSerialPort1.Port := spCOM4;
  if CommonPOS.PoleDisplayPort = 5 then  elSerialPort1.Port := spCOM5;
  if CommonPOS.PoleDisplayPort = 6 then  elSerialPort1.Port := spCOM6;
  if CommonPOS.PoleDisplayPort = 7 then  elSerialPort1.Port := spCOM7;
  if CommonPOS.PoleDisplayPort = 8 then  elSerialPort1.Port := spCOM8;
  if CommonPOS.PoleDisplayPort = 9 then  elSerialPort1.Port := spCOM9;
  if CommonPOS.PoleDisplayPort = 10 then  elSerialPort1.Port := spCOM10;
  if CommonPOS.PoleDisplayPort = 11 then  elSerialPort1.Port := spCOM11;
  if CommonPOS.PoleDisplayPort = 12 then  elSerialPort1.Port := spCOM12;
  if CommonPOS.PoleDisplayPort = 13 then  elSerialPort1.Port := spCOM13;
  if CommonPOS.PoleDisplayPort = 14 then  elSerialPort1.Port := spCOM14;
  if CommonPOS.PoleDisplayPort = 15 then  elSerialPort1.Port := spCOM15; }
end;

procedure TFrmMain.dxBarButton5Click(Sender: TObject);
Var
  InDate: String;
  ExStr: Array[0..256] of Char;
begin
  InDate := DateToStr(Date);
  If InputQuery('Cuadre de tienda','Entre la fecha',InDate) then
  begin
    StrPCopy(ExStr,'..\Reports\RptCuadre.exe ' + InDate);
    //WinExec(ExStr,SW_Normal);
  end;
end;

procedure TFrmMain.dxBarButtonDptClick(Sender: TObject);
begin
  if CommonPOS.isAuthorized('',UserRights.MAIN_DEPT, false) then
  begin
    FrmDepartments := TFrmDepartments.Create(self);
    With FrmDepartments do
    begin
      ShowModal;
      If ModalResult = mrOK then
      begin
        DMMidas.CDSDepartamentos.ApplyUpdates(-1);
        DMMidas.CDSDepartamentos.Refresh;
      end
      else
      begin
        DMMidas.CDSDepartamentos.CancelUpdates;
      end;
      Release;
    end;
  end;
end;

procedure TFrmMain.dxBarButtonSetupClick(Sender: TObject);
begin
  if CommonPOS.isAuthorized('',UserRights.MAIN_SETUP, false) then
  begin
    FrmSetup := TFrmSetup.Create(self);
    With FrmSetup do
    begin
      if DMMidas.SoftwareName = 'SalesTech' then
      begin
        DBEdit35.Visible := False;
        DBEdit36.Visible := False;
        DBEdit37.Visible := False;
        DBEdit38.Visible := False;
        DBMemo2.Visible := False;
        DBMemo1.Visible := True;
      end
      else
      begin
        DBEdit35.Visible := True;
        DBEdit36.Visible := True;
        DBEdit37.Visible := True;
        DBEdit38.Visible := True;
        DBMemo2.Visible := True;
        DBMemo1.Visible := False;
      end;
      ShowModal;
      If ModalResult = mrOK then
      begin
        If DMMidas.CDSSetup.ApplyUpdates(-1) <> 0 then
        begin
          if FrmMain.LanguageStr = 'English' then
            ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 318))
          else
          ShowMessage('Hubo un error, la información no fue guardada');
        end;
      end
      else
      begin
        DMMidas.CDSSetup.CancelUpdates;
      end;
      Release;
    end;
  end;
end;

procedure TFrmMain.dxBarButtonClientInfoClick(Sender: TObject);
begin
  if CommonPOS.isAuthorized('',UserRights.MAIN_CUST, False) then
  begin
    If Not Assigned(FrmClientes) then
    begin
      FrmClientes := TFrmClientes.Create(Self);
      With FrmClientes do
      begin
        Show;
      end;
    end
    else
      FrmClientes.BringToFront;
  end;
end;

procedure TFrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
Var
  Cnt: Integer;
begin
  Try
    For Cnt := 0 to MDIChildCount - 1 do
      MDIChildren[Cnt].Close;
  except
  end;
end;


procedure TFrmMain.btnNextWindowClick(Sender: TObject);
begin
  Next;
end;

procedure TFrmMain.btnPreviousWindowClick(Sender: TObject);
begin
  Previous;
end;

procedure TFrmMain.dxBarButtonPasswordsClick(Sender: TObject);
begin
  if CommonPOS.isAuthorized('',UserRights.MAIN_ACCTS, false) then
  begin
    If Not Assigned(FrmPasswords) then
    begin
      FrmPasswords := TFrmPasswords.Create(Self);
      With FrmPasswords do
      begin
        Show;
      end;
    end
    else
      FrmPasswords.BringToFront;
  end;
end;

function TFrmMain.IsAuthorized(Var UserIn: String; Item: Integer): Boolean;
begin
  CommonPOS.Supervisor := '';
  Result := False;
  With DMMidas do
  begin
    if CDSPasswords.RecordCount = 1 then
    begin
      CDSPasswords.Close;
      CDSPasswords.Open;
    end;
  end;
  With DMMidas.CDSPasswords do
  begin
    First;
    Locate('INICIALES', UserIn, [loCaseInsensitive]);
    If Fields[Item+3].AsString = 'T' then
    begin
      Result := True;
    end
    else
    begin
      FrmSecurity := TFrmSecurity.Create(Self);
      With FrmSecurity do
      begin
        ShowModal;
        If ModalResult = mrOK then
        begin
          If Locate('Username', Trim(EditUser.Text),[loCaseInsensitive]) then
          Begin
            If Fields[Item+3].AsString = 'T' then
            begin
              Result := True;
              CommonPOS.Supervisor := Trim(DMMidas.CDSPasswordsINICIALES.Value);
            end
            else
            begin
              if FrmMain.LanguageStr = 'English' then
                ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 273))
              else
              Showmessage('Usuario no autorizado');
            end;
          end
          else
          Begin
            if FrmMain.LanguageStr = 'English' then
              ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 319))
            else
            Showmessage('Usuario no encontrado');
          end;
        end;
        Release;
      end;
    end;
  end;
end;

procedure TFrmMain.dxBarButton28Click(Sender: TObject);
Var
  InDate: String;
  ExStr: Array[0..256] of Char;
begin
  InDate := DateToStr(Date);
  If InputQuery('Ventas por departamento','Entre la fecha',InDate) then
  begin
    StrPCopy(ExStr,'..\Reports\RptVDept.exe ' + InDate);
    //WinExec(ExStr,SW_Normal);
  end;
end;

procedure TFrmMain.dxBarButton22Click(Sender: TObject);
Var
  InDate, InCashier: String;
  ExStr: Array[0..256] of Char;
begin
  InDate := DateToStr(Date);
  If InputQuery('Cuadre de cajero','Entre las iniciales',InCashier) then
  begin
    If InputQuery('Cuadre de cajero','Entre la fecha',InDate) then
    begin
      StrPCopy(ExStr,'..\Reports\RptCuadre.exe ' + InDate + ' ' + InCashier);
      //WinExec(ExStr,SW_Normal);
    end;
  end;
end;

procedure TFrmMain.dxBarButton29Click(Sender: TObject);
Var
  InDate, InDate1: String;
  ExStr: Array[0..256] of Char;
begin
  InDate := DateToStr(Date);
  InDate1 := InDate;
  If InputQuery('Ventas por departamento','Entre la fecha de comienzo',InDate) then
  begin
    If InputQuery('Ventas por departamento','Entre la fecha de final',InDate1) then
    begin
      StrPCopy(ExStr,'..\Reports\RptVDept.exe ' + InDate + ' ' + InDate1);
      //(ExStr,SW_Normal);
    end;
  end;
end;

procedure TFrmMain.dxBarButton26Click(Sender: TObject);
begin
  if CommonPOS.isAuthorized('',UserRights.MAIN_SUPL, false) then
  begin
    FrmSuppliers := TFrmSuppliers.Create(self);
    With FrmSuppliers do
    begin
      ShowModal;
      If ModalResult = mrOK then
      begin
        DMMidas.CDSSuplidores.ApplyUpdates(-1);
        DMMidas.CDSSuplidores.Refresh;
      end
      else
      begin
        DMMidas.CDSSuplidores.CancelUpdates;
      end;
      Release;
    end;
  end;
end;

procedure TFrmMain.dxBarButton15Click(Sender: TObject);
begin
  //If IsAuthorized(CommonPOS.User,29) then
  if CommonPOS.isAuthorized('',UserRights.MAIN_TRANS, false) then
  begin
    if Not Assigned(FrmVerTrans) then
    begin
      FrmVerTrans := TFrmVerTrans.Create(Self);
      Show;
    end
    else
      FrmVerTrans.BringToFront;
  end;     
end;
procedure TFrmMain.dxBarButton35Click(Sender: TObject);
Var
  I: Integer;
  tmpstr: String;
begin
  if CommonPOS.isAuthorized('',UserRights.POS_OPNDRAWR, false) then
  begin
    For I := 0 To Printer.Printers.Count - 1 do
    Begin
      If Pos ('EPSON',Printer.Printers[I]) <> 0 then
      Begin
        Printer.PrinterIndex := I;
      end;
    end;
    With Printer do
    begin
      BeginDoc;
      Canvas.Font.Name := 'Control';
      if Copy(CommonPOS.ReceiptPrinter, 1, 5) = 'RP300' Then
        Canvas.TextOut(0,0,'ESC =')
      else
        Canvas.TextOut(0,0,'A');
      EndDoc;
    end;
  end;
end;

procedure TFrmMain.VerPrecio(InParm: String);
begin
  If InParm > '' then
  begin
    Queries.OpenInventory(InParm, '',false);
    If DMMidas.CDSInventarioPisoDESCRIPCION.Value > '' then
    begin
      FrmPriceCheck := TFrmPriceCheck.Create(self);
      With FrmPriceCheck do
      Begin
        ShowModal;
      end;
    end
    else
    begin
      if FrmMain.LanguageStr = 'English' then
        ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 320))
      else
      ShowMessage('Producto no encontrado');
    end;
  end;
end;

procedure TFrmMain.btnPrintPreviewClick(Sender: TObject);
Var
  OutParm: String;
begin
  OutParm := '';
  If InputQuery('Verificar precio','Entre UPC o descripción',OutParm) then
  begin
    VerPrecio(OutParm);
  end;
end;

procedure TFrmMain.dxBarButton34Click(Sender: TObject);
begin
  shellexecute( handle, 'open', 'Reportes.exe','' ,  PWideChar(extractfilepath(application.exename)) , 1);
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
   FrmMain.sbMain.Panels[5].Text := CommonPOS.WhatDatabseisActive;
   TimerVersion.Enabled := True;
   dxBarButtonLogout.Click;
end;

procedure TFrmMain.dxBarButtonUtilitiesClick(Sender: TObject);
begin
  //If IsAuthorized(CommonPOS.User,5) then
  if CommonPOS.isAuthorized('',UserRights.MAIN_DEPT, false) then
  begin
    FrmUtilities := TFrmUtilities.Create(self);
    With FrmUtilities do
    begin
      ShowModal;
     If ModalResult = mrOK then
      begin
        DMMidas.CDSUtilities.ApplyUpdates(-1);
        DMMidas.CDSUtilities.Refresh;
      end
      else
      begin
        DMMidas.CDSUtilities.CancelUpdates;
      end;
      Release;
    end;
  end;
end;

procedure TFrmMain.Exit1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmMain.dxBarButton39Click(Sender: TObject);
begin
  CommonPos.CancelTrans(0);
end;
{Var
  Year, Month, Day: Word;
  MyStrVal: String;
begin
  if CommonPOS.isAuthorized('POS_CANCEL',UserRights.POS_CANCEL, true) then
  begin
    begin
      if CommonPOS.isAuthorized('POS_DELTRANS', UserRights.POS_DELTRANS, true) then
      begin
        DecodeDate(Date, Year, Month, Day);
        With DMMidas.CDSAdHocPrintList do
        begin
          SQL.Clear;
          SQL.Add('Select MAX(TransactionNumber) as TNum From TransactionHeader Where EmployNumber = ''' +
                          CommonPOS.User + '''');
          Active := True;
          MyStrVal := Fields[0].asString;
          If InputQuery('Borrar transacción','Entre el numero de transacción',MyStrVal) then
          begin
            Try
              With DMMidas.CDSTrHeadAdHoc do
              begin
                SQL.Clear;
                SQL.Add('Delete From TransactionHeader Where TransactionNumber = ' + MyStrVal);
                ExecSQL(True);
              end;
              ShowMessage('Transacción ' + MyStrVal + ' fué borrada');
            Except
              ShowMessage('Transacción ' + MyStrVal + ' no es válida');
            end;
          end;
          Active := False;
        end;
      end;
    end;
  end;
end;}

procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  With DMMidas do
  begin
    CommonPOS.DisconnectFromDatabase;
    With LOGEADOPOS do
    begin
      Prepare;
      ParamByName('@UserNo').Value := UserRights.USERNO;// User;
      ParamByName('@Logeado').Value := false;
      ExecProc;
    end;
  end;
end;

procedure TFrmMain.dxBarButtonSubDptClick(Sender: TObject);
begin
  FrmSubDept := TFrmSubDept.Create(self);
  With FrmSubDept do
  begin
    ShowModal;
    Free;
  end;
end;

procedure TFrmMain.dxBarButton40Click(Sender: TObject);
begin
  if CommonPOS.isAuthorized('',UserRights.MAIN_INV, false) then
  begin
    If Not Assigned(FrmAssembly) then
    begin
      FrmAssembly := TFrmAssembly.Create(Self);
      With FrmAssembly do
      begin
        Show;
      end;
    end
    else
      FrmAssembly.BringToFront;
  end;
end;


procedure TFrmMain.dxBarButton41Click(Sender: TObject);
begin
  FrmThirdParty := TFrmThirdParty.Create(self);
  With FrmThirdParty do
  begin
    Show;
  end;
end;

procedure TFrmMain.dxBarButton42Click(Sender: TObject);
Var
  H: HWnd;
begin
  //If IsAuthorized(CommonPOS.User,41) then
  if CommonPOS.isAuthorized('',UserRights.BACKUP_PERMIT, false) then
  begin
    ShellExecute(Handle, 'open', 'TaskKill',
      ' /F /IM DataBaseBackup.exe /IM DataBaseBackup.exe', '', 1);
    SysUtils.Sleep(2000);
    ShellExecute(Handle, 'open', 'DataBaseBackup.exe', '',
      PWideChar(extractfilepath(Application.ExeName)), 1);
  end;
end;



procedure TFrmMain.Timer1Timer(Sender: TObject);
begin
  if assigned(FrmEvertec) then
  begin
    FrmEvertec.Memo1.Lines.Add('timeout')

  end;
end;

procedure TFrmMain.TimerLogoutTimer(Sender: TObject);
begin
  TimerLogout.Enabled := false;
  FrmMain.dxBarButtonLogout.Click;
end;

procedure TFrmMain.TimerPoleDisplayHeaderTimer(Sender: TObject);
begin
  CommonPOS.SendToPole(CommonPOS.CenterString(DMMidas.CDSSetupSTORENAME.Value,20),CommonPOS.CenterString('SALESTEC EXPRESS',20));
  TimerPoleDisplayHeader.Enabled := False;
end;

procedure TFrmMain.TimerVersionTimer(Sender: TObject);
Var
  Continuar: Boolean;
  version: TextFile;
  Mensage: String;
  Instance: Integer;
  CanUpdate: Boolean;
begin
  TimerVersion.Enabled := False;
{  CanUpdate := True;
  if CanUpdate = True then
  begin
    //if CommonRoutine.InternetAcive = True then
    //if CommonRoutine.IsUserOnline = True then
    //begin
      Try
        FTP.Host := 'ftp.wescomweb2.com';
        FTP.Passive := True;
        FTP.Password := 'mocsewlexa01';
        FTP.Username := 'wescom';
        FTP.Connect;
        FTP.ChangeDir('/Wescom/Ftec2010/latestversion');
        FTP.Get('version_salestec.txt', 'c:\version_salestec.txt', true);
        AssignFile(version, 'c:\version_salestec.txt');
        Reset(version);
        Readln(version,versionWeb);
        CloseFile(version);
        FTP.Disconnect;
      Except
        VersionWeb := VersionLocal;
      End;
      //WebBrowser1.Navigate('http://www.wescomweb.com');

      if Trim(VersionWeb) <> Trim(VersionLocal) then
      begin
        Mensage := TResourceLocalizer.GetString(LanguageResOffset,179);
        Continuar := MessageDlg(Mensage ,mtWarning,[mbYes,mbNo],0) = mrYes;
        if Continuar = True then
        begin
          if CommonPOS.InternetAcive then
          begin
            FrmNewVersion := TFrmNewVersion.Create(Self);
            With FrmNewVersion do
            begin
              ShowModal;
              Free;
            end;
          end;
        end;
      end;
    //end
    //else
    // StatusBar.Panels[2].Text := 'No Internet!';
  end;}
end;

procedure TFrmMain.TotalSalesNoTax(PaymentType, PayAmount, fromDate, toDate,
  graderorequal, Option: String; substract_change: boolean);
Var
  fieldName: Tfield;
  Where: String;
  AddTFAM: String;
  SubstractChangeStr, WhichPaymentType: String;
begin
  WhichPaymentType := PaymentType;
  //PaymentType := 'isNull(' + PaymentType + ',' + chr(39)+ chr(39) + ')';
  Where := ' PAYMENTTYPE1 <> ' + #39 + 'PICK' + #39 +
           ' and PAYMENTTYPE1 <> '+ #39 + 'LWAY' + #39 +
           ' AND PAYMENTTYPE1 <> ' + #39 + 'NCHG' + #39 +
           ' and PAYMENTTYPE1 <> '+ #39 + 'CRED' + #39 +
           ' and PAYMENTTYPE1 <> '+ #39 + 'POUT' + #39 +
           ' and TRANS_TYPE <> '+ #39 + 'UT' + #39;
           if (Option = 'normal') or (Option = 'UT') then
           begin
             Where := Where +' and PAYAMOUNT2 ' + graderorequal + ' 0 ' +
             ' and PAYMENTTYPE1 <> '+ #39 + 'TFAM' + #39;
           end;
           Where := where + ' and TOTAL > 0 ' +
           ' And voided <> 1' +
           ' and TOTAL > 0' +
           ' and convert(varchar, TRANSACTIONDATE, 101) between ' +
           chr(39) + FromDate + chr(39) + ' and ' + chr(39) + ToDate + chr(39);

  With DMmidas do
  begin
     if substract_change = true then
       SubstractChangeStr := '- change'
     else
       SubstractChangeStr := '';
     With FDQuery1 do
     begin
       Close;
       if Option = 'normal' then
       begin
           SQL.Text := 'select ' + PaymentType + ', SUM('+ PayAmount + SubstractChangeStr +
                   ' - (TOTAL_TAX * (('+ PayAmount+ SubstractChangeStr +') / TOTAL))) AS TOTAL_PAYMENT ' +
                   ' from TRANSACTIONHEADER where ' +
                    PaymentType + ' <> ' + chr(39) + 'TFAM' + chr(39) + ' and '
                    + where +
                   ' GROUP BY ' + PaymentType;
       end;
       if Option = 'TFAM' then
       begin
         SQL.Text := 'select ' + PaymentType + ', SUM('+ PayAmount + ')' +
                   ' AS TOTAL_PAYMENT ' +
                   ' from TRANSACTIONHEADER where ' +
                    PaymentType + ' = ' + chr(39) + 'TFAM' + chr(39) + ' and ' +
                    where + ' GROUP BY ' + PaymentType;
       end;
       if Option = 'TFA2' then
       begin
         SQL.Text := 'select ' + PaymentType + ', SUM(('+ PayAmount + SubstractChangeStr + ')' +
                   ' - TOTAL_TAX) AS TOTAL_PAYMENT ' +
                   ' from TRANSACTIONHEADER where PAYMENTTYPE1 =' +
                    chr(39) + 'TFAM' + chr(39) + ' and '
                    + where +
                   ' GROUP BY ' + PaymentType;
       end;

       if Option = 'UT' then
       begin
         SQL.Text := 'select ' + PaymentType + ', SUM(UT_PAYMENT)' +
                   ' AS TOTAL_PAYMENT ' +
                   ' from TRANSACTIONHEADER where ' +
                   ' UT_PAYMENT > 0 and ' +
                   ' convert(varchar, TRANSACTIONDATE, 101) between ' +
                    chr(39) + FromDate + chr(39) + ' and ' + chr(39)
                    + ToDate + chr(39) + ' GROUP BY ' + PaymentType;
       end;
       Open();

       if PaymentType = 'PAYMENTTYPE2' then FieldName := FieldByName('PAYMENTTYPE2');
       if PaymentType = 'PAYMENTTYPE1' then FieldName := FieldByName('PAYMENTTYPE1');
       if PaymentType > '' then
       begin
         //if WhichPaymentType = 'PAYMENTTYPE2' then FieldName := FieldByName('PAYMENTTYPE2');
         //if WhichPaymentType = 'PAYMENTTYPE1' then FieldName := FieldByName('PAYMENTTYPE1');

         while not eof do
         begin
           TotalSale := TotalSale + FieldByName('TOTAL_PAYMENT').Value;
           Case  IndexStr(FieldName.Value, ['CASH', 'ATH', 'ATHM', 'VISA', 'CHK' ,'PPAL', 'TSSS', 'TFAM']) of     //FieldByName('PAYMENTTYPE2').value
             0: TCash := TCash + FieldByName('TOTAL_PAYMENT').Value;
             1: TATH := TATH + FieldByName('TOTAL_PAYMENT').Value;
             2: TATHM := TATHM + FieldByName('TOTAL_PAYMENT').Value;
             3: TCreditCard := TCreditCard + FieldByName('TOTAL_PAYMENT').Value;
             4: TCheck := TCheck + FieldByName('TOTAL_PAYMENT').Value;
             5: TPayPal := TPayPal + FieldByName('TOTAL_PAYMENT').Value;
             6: TSSS := TSSS + FieldByName('TOTAL_PAYMENT').Value;
             7: TFAM := TFAM + FieldByName('TOTAL_PAYMENT').Value;
           end;
           Next;
         end;
       end;
     end;
  end;
end;

procedure TFrmMain.dxBarButton43Click(Sender: TObject);
begin
  if CommonPOS.isAuthorized('',UserRights.LOG_DATA, false) then
  begin
    if not Assigned(FrmLog) then
    Begin
       FrmLog := TFrmLog.Create(Self);
       FrmLog.Show;
    end
    else
      FrmInventory.BringToFront;
  end;
end;

procedure TFrmMain.dxBarButton44Click(Sender: TObject);
begin
  if CommonPOS.isAuthorized('',UserRights.MAIN_INV, false) then
  begin
    FrmCombo := TFrmCombo.Create(Self);
    With FrmCombo do
    begin
      ShowModal;
      Free;
    end;
  end;
end;



procedure TFrmMain.dxBarButton45Click(Sender: TObject);
begin
  if CommonPOS.isAuthorized('', UserRights.POS_BUTTONS, false) then
  begin
    FrmBotones := TFrmBotones.Create(self);
    With FrmBotones do
    begin
      With DMMidas do
      begin
        CDSBotones.Close;
        CDSBotones.CommandText := 'Select * from Botones order by button_number';
        CDSBotones.Open;
      end;
      ShowModal;
      Free;
    end;
  end;
end;

procedure TFrmMain.dxBarButton46Click(Sender: TObject);
Var
  F: TextFile;
  S: String;
begin
  System.AssignFile(F, extractfilepath(application.exename) + 'Inventory.txt');
  Rewrite(F);
  //System.Rewrite(F);
  with DMMidas do
  begin
    CDSInventarioPiso.Close;
    CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) ORDER BY DESCRIPCION';
    CDSInventarioPiso.Open;
    while not CDSInventarioPiso.eof do
    begin
      s := '"'+ Trim(CDSInventarioPisoDESCRIPCION.Value) + '","' + Trim(CDSInventarioPisoCODIGOBARRA.Value) + '","' + Format('%f',[CDSInventarioPisoPRECIO.asFloat]) + '"';
      WriteLn(F, S);
      CDSInventarioPiso.Next;
    end;
    CloseFile(F);
    ShowMessage('Finish exporting!');
  end;
end;

procedure TFrmMain.dxBarButton47Click(Sender: TObject);
begin
  if not Assigned(FrmPOSTS) then
  begin
    if CommonPOS.isAuthorized('',UserRights.MAIN_INV, false) then
    begin
      FrmBarcodePrintQ := TFrmBarcodePrintQ.Create(nil);
      With FrmBarcodePrintQ do
      begin
        ShowModal;
        Free;
      end;
    end;
  end;
end;

procedure TFrmMain.dxBarButton48Click(Sender: TObject);
begin
  if not Assigned(FrmPOSTS) then
  begin
    if CommonPOS.isAuthorized('',UserRights.MAIN_INV, false) then
    begin
      FrmShopper := TFrmShopper.Create(nil);
      With FrmShopper do
      begin
        ShowModal;
        Free;
      end;
    end;
  end;
end;

procedure TFrmMain.dxBarButton49Click(Sender: TObject);
begin
  if not Assigned(FrmPOSTS) then
  begin
    if CommonPOS.isAuthorized('',UserRights.MAIN_INV, false) then
    begin
      FrmShopper2 := TFrmShopper2.Create(nil);
      With FrmShopper2 do
      begin
        ShowModal;
        Free;
      end;
    end;
  end;
end;

procedure TFrmMain.BtnNewClick(Sender: TObject);
Var
  Cnt: Integer;
begin
  Cnt := 0;
  Try
    For Cnt := 0 to MDIChildCount -1 do
      MDIChildren[Cnt].Close;
  except
  end;

  if not Assigned(FrmInventory) then
  begin
    With DMMidas do
    begin
      begin
        ValidPetty := False;
        begin
          if CommonPOS.login = True then
          begin
             if CommonPOS.StartBank then
             begin
               if CommonPOS.activePin = True then
               begin
                 ipe.logon;
               end;
               FrmPOSRest := TFrmPOSRest.Create(nil);
               With FrmPOSRest do
               begin
                 FrmPOSRest.Tag := 1;
                 if CommonPOS.extendedPosForm = True then
                 begin
                   panel2.Width := 677;
                   GridPanel1.width := 151;
                   panel10.width := 338;
                   panel9.Width := 338;
                 end;
                 FrmPOSRest.editForm(DMMidas.SoftwareName);
                 ShowModal;
                 Free;
               end;
             end;
          end
        end
      end;
     // else
     //   ShowMessage('Debe deslogear del otro POS antes de logearse en este, gracias.');
    end;
    //end;
  end
  else
  begin
    if FrmMain.LanguageStr = 'English' then
      ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 321))
    else
    ShowMessage('Debe salir del inventaro para poder continuar!!!!');
  end;
end;

procedure TFrmMain.dxBarButtonLogoutClick(Sender: TObject);
var
  MyReg : TRegistry;
  Cnt: Integer;
begin
  Try
    For Cnt := 0 to MDIChildCount - 1 do
      MDIChildren[Cnt].Close;
  except
  end;
  If MDIChildCount = 0 then
  begin
    CommonPOS.login;
  end;
end;

procedure TFrmMain.BtnPreviewPreviousPageClick(Sender: TObject);
begin
  if CommonPOS.isAuthorized('',UserRights.MAIN_TOTAL, false) then
  begin
    If Not Assigned(FrmDailyTotals) then
    begin
      FrmDailyTotals := TFrmDailyTotals.Create(Self);
      With FrmDailyTotals do
      begin
        Show;
      end;
    end
    else
      FrmDailyTotals.BringToFront;
  end;
end;

procedure TFrmMain.BtnViewDetailsClick(Sender: TObject);
begin
  if not Assigned(FrmPOSTS) then
  begin
    if CommonPOS.isAuthorized('',UserRights.MAIN_INV, false) then
    begin
      If Not Assigned(FrmInventory) then
      begin
        FrmMain.PanelHeading.Visible := False;
        FrmInventory := TFrmInventory.Create(Self);
        With FrmInventory do
        begin
          ToolButton1.Enabled := UserRights.CREATE_INVENTORY;
          ToolButton16.Enabled := UserRights.EDIT_INVENTORY;
          TlBtnCancel.Enabled := UserRights.DELETE_INVENTORY;
          Show;
        end;
      end
      else
        FrmInventory.BringToFront;
    end
    else
      CommonPOS.ShowMessageStr('User not authorized!',12, clRed);
  end
  else
  begin
    if FrmMain.LanguageStr = 'English' then
      ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 322))
    else
    ShowMessage('Debe Salir del POS para editar el inventario!');
  end;
end;

procedure TFrmMain.ButtonModifiers1Click(Sender: TObject);
begin
  FrmModifiers := TFrmModifiers.Create(nil);
  With FrmModifiers do
  begin
    ShowModal;
    FrmModifiers := Nil;
    Free;
  end;
end;

procedure TFrmMain.AccountStatementes1Click(Sender: TObject);
begin
  FrmFilters := TFrmFilters.Create(nil);
  with FrmFilters do
  begin
    FrmFilters.PageControl1.ActivePageIndex := 0;
    ShowModal;
    if ModalResult = mrOk then
    begin
      with DMMidas do
      begin
        CDSClientes.Close;
        if cbClient.Checked = True then
          CDSClientes.CommandText := 'select * from pacientes where deuda > 0.00 and NUMEROCLIENTE = ' + chr(39) + FrmFilters.clientNo + chr(39)
        else
          CDSClientes.CommandText := 'select * from pacientes where deuda > 0.00';
        CDSClientes.Open;
        rptClientAccts.PrepareReport();
        rptClientAccts.ShowReport;
      end;
    end;
  end;
  FrmFilters := nil;
  FrmFilters.Free;
end;

procedure TFrmMain.BalanceTemp1Click(Sender: TObject);
begin
  FrmTempBalance := TFrmTempBalance.Create(nil);
  With FrmTempBalance do
  begin
    ShowModal;
    Free;
  end;
end;

procedure TFrmMain.BtnExit1Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmMain.dxBarButton38Click(Sender: TObject);
begin
  if CommonPOS.isAuthorized('',UserRights.MAIN_INV, false) then
  begin
    FrmBrowseInventory := TFrmBrowseInventory.Create(Application);
    With FrmBrowseInventory do
    begin
      //FormStyle := fsStayOnTop;
      ShowModal;
      Free;
    end;
  end;
end;



Procedure TFrmMain.Language;
begin
  //ToolButton1.Caption := TResourceLocalizer.GetString (LanguageResOffset, 289);
end;

procedure TFrmMain.Pepspraysaleslog1Click(Sender: TObject);
begin
  FrmEscojaFechas := TFrmEscojaFechas.Create(nil);
  with FrmEscojaFechas do
  begin
    ShowModal;
    if ModalResult = mrOk then
    begin
      with DMMidas do
      begin
        cdsProductSignature.Close;
        qProductSignature.SQL.Text := 'Select * from PSEUDO_SALES_LOG where SIGNATURE_DATE between ' + chr(39) + DateToStr(Desde.Date) + chr(39) + ' and ' +
        chr(39) + DateToStr(hasta.Date) + chr(39) + 'and pep_spray = 1';
        cdsProductSignature.Open;
        rptPseudoSales.PrepareReport();
        rptPseudoSales.ShowReport;
      end;
    end;
  end;
  FrmEscojaFechas := nil;
  FrmEscojaFechas.Free;
end;

procedure TFrmMain.Process832files1Click(Sender: TObject);
begin
  if CommonPOS.isAuthorized('',UserRights.MAIN_DEPT, false) then
  begin
    FrmProcess832 := TFrmProcess832.Create(self);
    With FrmProcess832 do
    begin
      ShowModal;
      Release;
    end;
  end;
end;

procedure TFrmMain.ProductList1Click(Sender: TObject);
begin
  FrmFilters := TFrmFilters.Create(nil);
  with FrmFilters do
  begin
    FrmFilters.PageControl1.ActivePageIndex := 1;
    ShowModal;
    if ModalResult = mrOk then
    begin
      with DMMidas do
      begin
        cdsInventarioPiso2.Close;
        if FrmFilters.cbDept.Checked = True then
          QInventarioPiso2.SQL.Text := 'Select * From InventarioPiso Where CMAXINVENTARIO > 0 and DEPARTAMENTO = ' + chr(39) + FrmFilters.NoDept + chr(39) + ' order by Descripcion'
        else if FrmFilters.cbSubDept.Checked = True then
          QInventarioPiso2.SQL.Text := 'Select * From InventarioPiso Where CMAXINVENTARIO > 0 and SUB_DEPARTAMENTO = ' + chr(39) + FrmFilters.NoDept + chr(39) + 'order by Descripcion'
        else if FrmFilters.cbSupplier.Checked = True then
          QInventarioPiso2.SQL.Text := 'Select * From InventarioPiso Where CMAXINVENTARIO > 0 and NUMEROSUPLIDOR = ' + chr(39) + FrmFilters.NoDept + chr(39) + 'order by Descripcion'
        else
          qInventarioPiso2.SQL.Text := 'Select * From InventarioPiso Where CMAXINVENTARIO > 0 order by Descripcion';
        cdsInventarioPiso2.Open;
        rptProdList.PrepareReport();
        rptProdList.ShowReport;
      end;
    end;
  end;
  FrmFilters := nil;
  FrmFilters.Free;
end;

procedure TFrmMain.Pseudosaleslog1Click(Sender: TObject);
begin
  FrmEscojaFechas := TFrmEscojaFechas.Create(nil);
  with FrmEscojaFechas do
  begin
    ShowModal;
    if ModalResult = mrOk then
    begin
      with DMMidas do
      begin
        cdsProductSignature.close;
        qProductSignature.SQL.Text := 'Select * from PSEUDO_SALES_LOG where SIGNATURE_DATE between ' + chr(39) + DateToStr(Desde.Date) + chr(39) + ' and ' +
        chr(39) + DateToStr(hasta.Date) + chr(39) + 'and pseudo = 1';
        cdsProductSignature.Open;
        rptPseudoSales.PrepareReport();
        rptPseudoSales.ShowReport;
      end;
    end;
  end;
  FrmEscojaFechas := nil;
  FrmEscojaFechas.Free;
end;

procedure TFrmMain.QuickEntry1Click(Sender: TObject);
begin
  //If IsAuthorized(CommonPOS.User,38) then
  if CommonPOS.isAuthorized('',UserRights.QUICKENTRY, false) then
  begin
    FrmQuickUpdate := TFrmQuickUpdate.Create(Self);
    With FrmQuickUpdate do
    begin
      ShowModal;
      Release;
    end;
  end;
end;

procedure TFrmMain.Reports1Click(Sender: TObject);
begin
  if CommonPOS.isAuthorized('',UserRights.REPORTS, false) = false then
  begin
    exit
  end;
end;

procedure TFrmMain.ReportsApp1Click(Sender: TObject);
begin
  shellexecute( handle, 'open', 'Reportes.exe','' ,  PWideChar(extractfilepath(application.exename)) , 1);
end;

procedure TFrmMain.RestartPrintServer1Click(Sender: TObject);
var
  H: HWnd;
begin
  ShellExecute(Handle, 'open', 'TaskKill',
    ' /F /IM PrintServer.exe /IM PrintServer.exe', '', 1);
  SysUtils.Sleep(2000);
  ShellExecute(Handle, 'open', 'PrintServer.exe', '',
    PWideChar(extractfilepath(Application.ExeName)), 1);
end;


procedure TFrmMain.ripleSAdvantageReport1Click(Sender: TObject);
begin
  FrmTripleSReport := TFrmTripleSReport.Create(nil);
  with FrmTripleSReport do
  begin
    ShowModal;
    free;
  end;
end;

procedure TFrmMain.RptDeptSalesBeforePrint(Sender: TfrxReportComponent);
begin
  //RptDeptSales.Export(frxExportCSV)
end;

procedure TFrmMain.RptTransPorHoraBeforePrint(Sender: TfrxReportComponent);
Var
  Memo1: TfrxMemoView;
begin
  Memo1 := RptTransPorHora.FindObject('MemoHeading') as TfrxMemoView;
  Memo1.Memo.Text := FrmMain.Heading;
end;

procedure TFrmMain.Salesbydepartments1Click(Sender: TObject);
var
  Usuario: String;
  TotalCobrado, TaxEstatalExento, TaxMunicipalExento, TarjetaFamilia,
  TaxServicioExento, TaxServicio: Double;
  Memo1: TfrxMemoView;
  TribMunic, TribEstatal, TotalaPagarE, TotalaPagarM: String;
begin
  FrmFilters := TFrmFilters.Create(nil);
  with FrmFilters do
  begin
    FrmFilters.PageControl1.ActivePageIndex := 0;
    cbClient.Visible := False;
    EditClientName.Visible := False;
    Desde.Date := now - 30;
    hasta.Date := now;
    ShowModal;
    if ModalResult = mrOk then
    begin
      with dmmidas do
      begin
        CDSVentasDpt.Close;
        {CDSVentasDpt.CommandText := 'Select ProdDepartment, '
        +'Sum(DETAIL_TOTAL) as Precio,'
        +' Sum(Costo * Qty) as TCosto ,'
        +' Sum(DETAIL_TOTAL) - Sum(Costo * Qty) as Ganancia from VerTransacciones '
        + GetWhere(DateToStr(desde.Date), DateToStr(hasta.Date), ' Group by ProdDepartment');
        +'cast(fechaventa as date) between ' + chr(39) +  '03/26/2025' + chr(39) + ' and ' + chr(39) +  '04/26/2025' + chr(39) + 'group by proddepartment';}
        CDSVentasDpt.CommandText := 'Select ProdDepartment, '
        +' cast(Sum(Total) as decimal(18,2)) as Precio,'
        +' Sum(Costo * Qty) as TCosto ,'
        +' Sum(DETAIL_TOTAL) - Sum(Costo * Qty) as Ganancia from VerTransacciones Where '
        + GetWhere(DateToStr(desde.Date), DateToStr(hasta.Date), ' Group by ProdDepartment');
        CDSVentasDpt.Open;

        CalcTaxes(TotalCobrado, TaxEstatalExento, TaxMunicipalExento, TarjetaFamilia,
        TaxServicioExento, TaxServicio, DateToStr(desde.Date), DateToStr(hasta.Date));

        TribEstatal := Format('%m', [TotalCobrado - (TaxEstatalExento  + TarjetaFamilia)]);
        TribMunic := Format('%m', [TotalCobrado - (TaxMunicipalExento + TarjetaFamilia)]);
        TaxMunicipal := (TotalCobrado - (TaxMunicipalExento + TarjetaFamilia)) * DMmidas.CDSSetupTAX_RATE.asFloat;
        TaxEstatal := (TotalCobrado - (TaxEstatalExento + TarjetaFamilia)) * DMmidas.CDSSetupTAX_RATE_ESTATAL.asFloat;
        TotalConTax :=  TotalCobrado + TaxEstatal + TaxMunicipal;
        TotalaPagarE := Format('%m', [(TotalCobrado - (TaxEstatalExento + TarjetaFamilia)) * DMmidas.CDSSetupTAX_RATE_ESTATAL.asFloat]);
        TotalapagarM := Format('%m', [(TotalCobrado - (TaxMunicipalExento + TarjetaFamilia)) * DMmidas.CDSSetupTAX_RATE.asFloat]);
        Memo1 := RptDeptSales.FindObject('MemoTotalCobrado1') as TfrxMemoView;
        Memo1.Memo.Text := Format('%m', [TotalCobrado]);
        Memo1 := RptDeptSales.FindObject('MemoTotalCobrado2') as TfrxMemoView;
        Memo1.Memo.Text := Format('%m', [TotalCobrado]);
        Memo1 := RptDeptSales.FindObject('MemoExentoMunicipal1') as TfrxMemoView;
        Memo1.Memo.Text := Format('%m', [TaxMunicipalExento]);

        Memo1 := RptDeptSales.FindObject('MemoExentoEstatal') as TfrxMemoView;
        Memo1.Memo.Text := Format('%m', [TaxEstatalExento]);

        Memo1 := RptDeptSales.FindObject('MemoTF') as TfrxMemoView;
        Memo1.Memo.Text := Format('%m', [TarjetaFamilia]);

        Memo1 := RptDeptSales.FindObject('MemoTF2') as TfrxMemoView;
        Memo1.Memo.Text := Format('%m', [TarjetaFamilia]);

        Memo1 := RptDeptSales.FindObject('MemoTribMunic') as TfrxMemoView;
        Memo1.Memo.Text := TribMunic;

        Memo1 := RptDeptSales.FindObject('MemoTribEstatal') as TfrxMemoView;
        Memo1.Memo.Text := TribEstatal;

        Memo1 := RptDeptSales.FindObject('MemoTotalaPagerM') as TfrxMemoView;
        Memo1.Memo.Text := TotalapagarM;

        Memo1 := RptDeptSales.FindObject('MemoTotalaPagerE') as TfrxMemoView;
        Memo1.Memo.Text := TotalapagarE;

        Memo1 := RptDeptSales.FindObject('MemoHeading') as TfrxMemoView;
        Memo1.Memo.Text := FrmMain.Heading;

       {if Option = 'email' then
         ExportReportsToPDF(RptDeptSales, 'RptDeptSales')
       else }
         RptDeptSales.ShowReport;
      end;
    end;
 end;
end;

procedure TFrmMain.Salesbyemployees1Click(Sender: TObject);
begin
  FrmFilters := TFrmFilters.Create(nil);
  with FrmFilters do
  begin
    FrmFilters.PageControl1.ActivePageIndex := 0;
    cbClient.Visible := False;
    EditClientName.Visible := False;
    Desde.Date := now - 30;
    hasta.Date := now;
    ShowModal;
    if ModalResult = mrOk then
    begin
      With dmmidas do
      begin

      end;
    end;
  end;
end;

procedure TFrmMain.Salesbyhour1Click(Sender: TObject);
begin
  FrmFilters := TFrmFilters.Create(nil);
  with FrmFilters do
  begin
    FrmFilters.PageControl1.ActivePageIndex := 0;
    cbClient.Visible := False;
    EditClientName.Visible := False;
    Desde.Date := now - 30;
    hasta.Date := now;
    ShowModal;
    if ModalResult = mrOk then
    begin
      With dmmidas do
      begin
        QtransPorHora.Close;
        QtransPorHora.sql.Text := 'Select datepart(hh,TRANSACTIONTIME) as hora, COUNT(distinct TRANSACTIONNUMBER) as TotalTrans, cast(Sum(DETAIL_TOTAL) as decimal(18,2)) as Total from VerTransacciones  Where ' + GetWhere(DateToStr(desde.Date), DateToStr(hasta.Date), ' group by datepart(hh,TRANSACTIONTIME) order by datepart(hh,TRANSACTIONTIME)');
        QtransPorHora.Open;
        Heading := 'Transactions by hours From: ' + DateToStr(desde.Date) + ' To: ' + DateToStr(hasta.Date)  ;
        //if Option = 'Print' then
          RptTransPorHora.ShowReport
        {else
          ExportReportsToPDF(RptTransPorHora, 'RptTransPorHora');}
      end;
    end;
  end;
end;

procedure TFrmMain.SalesPromotionBOGOF1Click(Sender: TObject);
begin
  FrmSalesPromo := TFrmSalesPromo.Create(nil);
  With FrmSalesPromo do
  begin
   ShowModal;
   FrmSalesPromo := Nil;
   Free;
  end;
end;

procedure TFrmMain.Saleswithouttaxbypaymenttype1Click(Sender: TObject);
begin
  FrmFilters := TFrmFilters.Create(nil);
  with FrmFilters do
  begin
    FrmFilters.PageControl1.ActivePageIndex := 0;
    cbClient.Visible := False;
    EditClientName.Visible := False;
    Desde.Date := now - 30;
    hasta.Date := now;
    ShowModal;
    if ModalResult = mrOk then
    begin
      TotalSalesNoTax('PAYMENTTYPE2', 'PAYAMOUNT2', DateToStr(desde.Date), DateToStr(hasta.Date), '>', 'normal', true);
      TotalSalesNoTax('PAYMENTTYPE1', 'PAYAMOUNT1', DateToStr(desde.Date), DateToStr(hasta.Date), '>', 'normal', false);
      TotalSalesNoTax('PAYMENTTYPE1', 'PAYAMOUNT1', DateToStr(desde.Date), DateToStr(hasta.Date), '=', 'normal', true);

      TotalSalesNoTax('PAYMENTTYPE1', 'PAYAMOUNT1', DateToStr(desde.Date), DateToStr(hasta.Date), '=', 'TFAM', false);
      //TotalSalesNoTax('PAYMENTTYPE2', 'PAYAMOUNT2', FromDate, ToDate,'>', 'TFA2', true);
      TotalSalesNoTax('PAYMENTTYPE1', 'PAYAMOUNT1', DateToStr(desde.Date), DateToStr(hasta.Date), '=', 'UT', false);

      Memo1 := frxReportSalesNoTax.FindObject('MemoTCash') as TfrxMemoView;
      Memo1.Text := Format('%m', [TCash]);
      Memo1 := frxReportSalesNoTax.FindObject('MemoTATH') as TfrxMemoView;
      Memo1.Text := Format('%m', [TATH]);
      Memo1 := frxReportSalesNoTax.FindObject('MemoTATHM') as TfrxMemoView;
      Memo1.Text := Format('%m', [TATHM]);
      Memo1 := frxReportSalesNoTax.FindObject('MemoTCC') as TfrxMemoView;
      Memo1.Text := Format('%m', [TCreditCard]);
      Memo1 := frxReportSalesNoTax.FindObject('MemoTCheck') as TfrxMemoView;
      Memo1.Text := Format('%m', [TCheck]);
      Memo1 := frxReportSalesNoTax.FindObject('MemoTPayPal') as TfrxMemoView;
      Memo1.Text := Format('%m', [TPayPal]);
      Memo1 := frxReportSalesNoTax.FindObject('MemoTFam') as TfrxMemoView;
      Memo1.Text := Format('%m', [TFAM]);
      Memo1 := frxReportSalesNoTax.FindObject('MemoTSSS') as TfrxMemoView;
      Memo1.Text := Format('%m', [TSSS]);
      //Memo1 := frxReportSalesNoTax.FindObject('MemoTUtil') as TfrxMemoView;
      //Memo1.Text := Format('%m', [TUTL]);
      Memo1 := frxReportSalesNoTax.FindObject('MemoHeading') as TfrxMemoView;
      Memo1.Text := 'Sales Report/No tax included.  From ' + DateToStr(desde.Date) + ' to ' + DateToStr(hasta.Date);


      Memo1 := frxReportSalesNoTax.FindObject('MemoTotal') as TfrxMemoView;
      Memo1.Text := Format('%m', [TotalSale]);
      frxReportSalesNoTax.ShowReport();
    end;
  end;
end;

procedure TFrmMain.sbTimeCardClick(Sender: TObject);
begin
  FrmPunchInOut := TFrmPunchInOut.Create(nil);
  With FrmPunchInOut do
  begin
    ShowModal;
  end;
end;

procedure TFrmMain.ShopperDailySale1Click(Sender: TObject);
begin
  if not Assigned(FrmPOSTS) then
  begin
    if CommonPOS.isAuthorized('',UserRights.MAIN_INV, false) then
    begin
      FrmShopperDailySale := TFrmShopperDailySale.Create(nil);
      With FrmShopperDailySale do
      begin
        ShowModal;
        Free;
      end;
    end;
  end;
end;

procedure TFrmMain.taxCobrado(desde, hasta: TDate);
var
 Where, where1, GroupByStr, usuario: String;
begin
  Where := 'ProdDepartment <> ' + #39 + 'ABONO' + #39
   + ' and ProdDepartment <> '+ #39 + 'PAGO' + #39
   + ' and ProdDepartment <> ' + #39 + 'Pay Out' + #39
   + ' and ProdDepartment <> ' + #39 + 'Cheque' + #39
   + ' and ProdDepartment <> ' + #39 + 'Cambio Cheque' + #39
   +  ' and ProdDepartment <> ' + #39 + 'PICKUP' + #39
   +  ' and ProdDepartment <> ' + #39 + 'UTILIDAD' + #39
   + ' AND PAYMENTTYPE1 <> ' + #39 + 'NCHG' + #39
   + ' and ProdDepartment <> ' + #39 + 'CASB' + #39
   + ' and ProdDepartment <> ' + #39 + '200' + #39
   + ' and Opened  <> '+ #39 + 'S' + #39
   + ' and Cast(FechaVenta AS DATE) Between '
   + #39 + DateToStr(desde) + #39 + ' and '
   + #39 + DateToStr(hasta) + #39;
   //+ ' Group by ProdDepartment';
  GroupByStr := ' Group by ProdDepartment';
  {if CheckBoxEmployee.Checked then
    Usuario := ' and ID = ' + #39 + ComboBox2.Text + #39
  else   }
    Usuario := '';
  with dmmidas do
  begin
    Where := Where + Usuario + GroupByStr;
    CDSVentasDpt.Close;
    CDSVentasDpt.CommandText := 'Select ProdDepartment, Sum(DETAIL_TOTAL) as Precio, Sum(Costo * Qty) as TCosto ' +
    ' , Sum(DETAIL_TOTAL) - Sum(Costo * Qty) as Ganancia from VERTRANSACCIONES Where ' + Where;
    CDSVentasDpt.Open;
    CDSdepartamentos.Active := True;
    //================================================================================================
    Where := StringReplace(Where, 'Group by ProdDepartment', '', [rfReplaceAll, rfIgnoreCase]);

    cdsTotalCobrado.Close;
    cdsTotalCobrado.CommandText := 'Select Sum(DETAIL_TOTAL) as TotalCobrado from VERTRANSACCIONES  where ' + Where;
    cdsTotalCobrado.open;

    qTotalCobrado.Close;
    qTotalCobrado.SQL.Text := 'Select Sum(DETAIL_TOTAL) as TotalCobrado from VERTRANSACCIONES  where ' + Where;
    qTotalCobrado.open;
    //================
    qTaxEstatalExempto.Close;
    qTaxEstatalExempto.sql.Text := 'Select Sum(DETAIL_TOTAL) as TaxEstatalExcempto from VERTRANSACCIONES where Tax_Estatal <> ' + #39 + 'T' + #39 + ' and ' + Where;
    qTaxEstatalExempto.Open;
    //==================
    qTaxMunExcempto.Close;
    qTaxMunExcempto.SQL.Text := 'Select Sum(DETAIL_TOTAL) as TaxMunicipalExcempto from VERTRANSACCIONES where Tax_Municipal <> ' + #39 + 'T' + #39 + ' and ' + Where;
    qTaxMunExcempto.Open;
    //===================
    qTarjFamilia.Close;
    qTarjFamilia.SQL.Text := 'Select Sum(PayAmount1) as TTarjetaFamilia  from TransactionHeader where Cast(TransactionDate AS DATE) between '  + #39 + DateToStr(desde) + #39 + ' and '  + #39 + DateToStr(hasta) + #39 + ' and PaymentType1 = ' + #39 + 'TFAM' + #39;
    qTarjFamilia.Open;
    //===================
    qTaxServicioExempto.Close;
    qTaxServicioExempto.sql.Text := 'Select Sum(Total) as TaxServicioExcempto from TransactionDetail  where FechaVenta between '  + #39 + DateToStr(desde) + #39 + ' and '  + #39 + DateToStr(hasta) + #39 + ' and ProdDepartment = ' + #39 + '200' + #39 + ' and Tax_Servicio = 0';
    qTaxServicioExempto.Open;
    //===================
    qTaxServicio.Close;
    qTaxServicio.SQL.Text := 'Select Sum(Total) as TaxServicio from TransactionDetail  where FechaVenta between '  + #39 + DateToStr(desde) + #39 + ' and '  + #39 + DateToStr(hasta) + #39 + ' and ProdDepartment = ' + #39 + '200' + #39 + ' and Tax_Servicio = 1';
    qTaxServicio.Open;
    //====================
    FDQuery3.SQL.text := 'Select Sum(DETAIL_TOTAL) as ProcessedFoodExcempto from VERTRANSACCIONES where TAX_PROCESSED_FOOD <> 1 '
    + ' AND PAYMENTTYPE1 <> ' + #39 + 'TFAM' + #39
    + ' and ' + Where;
    FDQuery3.Open;
  end;

end;

function base64encode(const Text : ansiString): ansiString;
begin
  try
    Result :=  EncodeString(Text);
  finally
    //FreeAndNil(Encoder);
  end
end;

procedure TFrmMain.TempClick(Sender: TObject);
Var
  SendStr, GetStr: String;
  lStringList: TStringList;
  NoOf, I: Integer;
begin
{   SendStr := base64encode('939650001885|01352621|1|2234234234|3.0|0|4/6/17|1234234234|1|4|testhost4.dsipscs.com|EMV_VX805_RAPIDCONNECT|VX805XPI|VX805|');
                         //'939650001885|01352621|1|3136446|8.69|0|25/10/17|1234234234|0|4|testhost4.dsipscs.com|EMV_VX805_RAPIDCONNECT|VX805XPI|VX810|'
   XMLDocument1.XML.Text := CommonPOS.CD_PROCESSING(SendStr, extractfilepath(application.exename));
   CommonPOS.DecodeCDPayment(GetStr);  }
        lStringList := TStringList.Create;
        lStringList.StrictDelimiter := True;
        lStringList.delimiter := '|';
        lStringList.DelimitedText := '|MERCHANT ID: 399100|TERMINAL ID: 39910002|CLERK ID: 0040||SALE |'
        +'|VISA ************1347|ENTRY METHOD: SWIPED|DATE: 08/28/2017 TIME: 13:26:31||INVOICE: 004082812619'
        +'|REFERENCE: 004082812619|AUTH CODE: 022640||AMOUNT USD$ 5.00| =========='
        +'|TOTAL USD$ 5.00|| APPROVED - THANK YOU ||I AGREE TO PAY THE ABOVE TOTAL AMOUNT|ACCORDING TO CARD ISSUER AGREEMENT|(MERCHANT AGREEMENT IF CREDIT VOUCHER)||||x_______________________________________|Cardholder Signature ||';
        NoOf := lStringList.Count;
        for I := 0 to NoOf - 1 do
        begin
          ShowMessage(lStringList.Strings[i]);
        end;


end;



procedure TFrmMain.test1Click(Sender: TObject);
begin
CommonPOS.Insert_Print_Jobs(True, false, false, 'receipt', '0', '1519391', '', CommonPOS.email, CommonPOS.mobile_phone, '', '', 1);
end;

function TFrmMain.GetDosOutput(CommandLine: string; Work: string = 'C:\'): string;
var
  SA: TSecurityAttributes;
  SI: TStartupInfo;
  PI: TProcessInformation;
  StdOutPipeRead, StdOutPipeWrite: THandle;
  WasOK: Boolean;
  Buffer: array[0..255] of AnsiChar;
  BytesRead: Cardinal;
  WorkDir: string;
  Handle: Boolean;
begin
  Result := '';
  with SA do begin
    nLength := SizeOf(SA);
    bInheritHandle := True;
    lpSecurityDescriptor := nil;
  end;
  CreatePipe(StdOutPipeRead, StdOutPipeWrite, @SA, 0);
  try
    with SI do
    begin
      FillChar(SI, SizeOf(SI), 0);
      cb := SizeOf(SI);
      dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
      wShowWindow := SW_HIDE;
      hStdInput := GetStdHandle(STD_INPUT_HANDLE); // don't redirect stdin
      hStdOutput := StdOutPipeWrite;
      hStdError := StdOutPipeWrite;
    end;
    WorkDir := Work;
    //Handle := CreateProcess(nil, PChar('cmd.exe /C ' + CommandLine),
    Handle := CreateProcess(nil, PChar('DataCap.exe ' + CommandLine),
                            nil, nil, True, 0, nil,
                            PChar(WorkDir), SI, PI);
    CloseHandle(StdOutPipeWrite);
    if Handle then
      try
        repeat
          WasOK := ReadFile(StdOutPipeRead, Buffer, 255, BytesRead, nil);
          if BytesRead > 0 then
          begin
            Buffer[BytesRead] := #0;
            Result := Result + Buffer;
          end;
        until not WasOK or (BytesRead = 0);
        WaitForSingleObject(PI.hProcess, INFINITE);
      finally
        CloseHandle(PI.hThread);
        CloseHandle(PI.hProcess);
      end;
  finally
    CloseHandle(StdOutPipeRead);
  end;
end;


function TFrmMain.GetWhere(From_, To_, GroupBy: String): String;
begin
  Result := 'ProdDepartment <> ' + #39 + 'ABONO' + #39
     + ' and ProdDepartment <> '
     + #39 + 'PAGO' + #39
     + ' and ProdDepartment <> ' + #39 + 'Pay Out' + #39
     + ' and ProdDepartment <> ' + #39 + 'Cheque' + #39
     + ' and ProdDepartment <> ' + #39 + 'Cambio Cheque' + #39
     +  ' and ProdDepartment <> ' + #39 + 'PICKUP' + #39
     +  ' and ProdDepartment <> ' + #39 + 'UTILIDAD' + #39
     + ' and PAYMENTTYPE1 <> ' + #39 + 'NCHG' + #39
     + ' and ProdDepartment <> ' + #39 + 'CASB' + #39
     + ' and Opened  <> '
     + #39 + 'S' + #39
     +' and Cast(FechaVenta AS DATE) Between '
     + #39 + From_ + #39 + ' and '
     + #39 + To_ + #39
     + GroupBy;
end;

procedure TFrmMain.Handheld1Click(Sender: TObject);
begin
  if CommonPOS.isAuthorized('',UserRights.PROCESS_HANDHELD, false) then
  begin
    FrmHandheld := TFrmHandheld.Create(self);
    With FrmHandheld do
    begin
      ShowModal;
      Release;
    end;
  end;
end;

procedure TFrmMain.Helpform1Click(Sender: TObject);
begin
  CommonPOS.showHelpForm;       //Added to show the help form AGC 032426
end;

procedure TFrmMain.imeCard1Click(Sender: TObject);
begin
  With DMMidas do
  begin
    Queries.OpenPasswordsIniciales(Trim(CommonPOS.User));
    if (CDSPasswordsTIME_CARD.Value = True) or
      (Trim(CommonPOS.User) = 'LEXA') then
    begin
      FrmTimeCard := TFrmTimeCard.Create(Nil);
      with FrmTimeCard do
      begin
        ShowModal;
        FrmTimeCard := nil;
        Free;
      end;
    end
    else
      ShowMessage('User not authorized!');
  end;
end;

end.
