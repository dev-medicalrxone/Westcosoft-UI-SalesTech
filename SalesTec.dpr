program SalesTech;

uses
  Windows,
  Messages,
  SysUtils,
  Forms,
  Dialogs,
  UReversal in 'UReversal.pas' {FCreditReversal},
  UCredAdjTrans in 'UCredAdjTrans.pas' {FCreditAdjustmentTrans},
  UDebitReturn in 'UDebitReturn.pas' {FDebitReturn},
  UDebitVoid in 'UDebitVoid.pas' {FDebitVoid},
  UDebitReversal in 'UDebitReversal.pas' {FDebitReversal},
  UConfirm in 'UConfirm.pas' {FConfirm},
  UntSearchInv in 'UntSearchInv.pas' {FrmSearchInv},
  UntDepartments in 'UntDepartments.pas' {FrmDepartments},
  UntSearchCust in 'UntSearchCust.pas' {FrmSearchCust},
  UAbono in 'UAbono.pas' {FAbono},
  UList in 'UList.pas' {FList},
  UTipoTrans in 'UTipoTrans.pas' {FTransacciones},
  UntManualSale in 'UntManualSale.pas' {FrmManualSale},
  UPaidout in 'UPaidout.pas' {FPaidout},
  UCambioPrecio in 'UCambioPrecio.pas' {FCambioPrecio},
  UBuscarFactura in 'UBuscarFactura.pas' {FBuscarFactura},
  AbonoGlobalCredito in 'AbonoGlobalCredito.pas' {FAbonoGlobalCredito},
  UntCommon in 'UntCommon.pas',
  UNumeroCheque in 'UNumeroCheque.pas' {FNumeroCheque},
  UAdjustmentEntry in 'UAdjustmentEntry.pas' {FAdjustmentEntry},
  UBuscarTransacciones in 'UBuscarTransacciones.pas' {FBuscarTransacciones},
  Usplash2 in 'Usplash2.pas' {FSplash2},
  UForceTransaction in 'UForceTransaction.pas' {FForceTrans},
  UPricing in 'UPricing.pas' {FPricing},
  UAdmTransReq in 'UAdmTransReq.pas' {FAdminTransRequest},
  UCreditCardEdit in 'UCreditCardEdit.pas' {FCreditCardEdit},
  UDebitCardEdit in 'UDebitCardEdit.pas' {FDebitCardEdit},
  UCommonObj in 'UCommonObj.pas',
  UCommonObjDebit in 'UCommonObjDebit.pas',
  UntSetup in 'UntSetup.pas' {FrmSetup},
  Wlccdll in 'Wlccdll.pas',
  UCreditCardReturn in 'UCreditCardReturn.pas' {FCreditCardReturn},
  UntEditPasswords in 'UntEditPasswords.pas' {FrmEditPasswords},
  UntSecurity in 'UntSecurity.pas' {FrmSecurity},
  UAnadirPagosGrupales in 'UAnadirPagosGrupales.pas' {FAnadirPagosGrupales},
  UntDMMidas in 'UntDMMidas.pas' {DMMidas: TDataModule},
  UntQueries in 'UntQueries.pas',
  UntEditCustomer in 'UntEditCustomer.pas' {FrmEditCustomer},
  UntRepConfig in 'UntRepConfig.pas' {FrmRepConfig},
  untMain in 'untMain.pas' {FrmMain},
  UntClientes in 'UntClientes.pas' {FrmClientes},
  UntInventory in 'UntInventory.pas' {FrmInventory},
  UntEditInventory in 'UntEditInventory.pas' {FrmEditInventory},
  UntCustOrdPay in 'UntCustOrdPay.pas' {FrmCustOrdPay},
  RepCuadre in 'RepCuadre.pas' {Form4},
  UntDailyTotals in 'UntDailyTotals.pas' {FrmDailyTotals},
  UntEditDailyTotals in 'UntEditDailyTotals.pas' {FrmEditDailyTotals},
  UntRecapDetail in 'UntRecapDetail.pas' {FrmRecapDetail},
  UntPasswords in 'UntPasswords.pas' {FrmPasswords},
  UntSearchInvoice in 'UntSearchInvoice.pas' {FrmSearchInvoices},
  UntQuickUpdate in 'UntQuickUpdate.pas' {FrmQuickUpdate},
  UntVerTrans in 'UntVerTrans.pas' {FrmVerTrans},
  UntPriceCheck in 'UntPriceCheck.pas' {FrmPriceCheck},
  UntDeliveryInfo in 'UntDeliveryInfo.pas' {FrmDeliveryInfo},
  UntSelectOrder in 'UntSelectOrder.pas' {FrmSelectOrder},
  UntWaitWindow in 'UntWaitWindow.pas' {WaitWindow},
  UntSuppliers in 'UntSuppliers.pas' {FrmSuppliers},
  UntEditPartner in 'UntEditPartner.pas' {FrmEditPartner},
  UntSelAuspicio in 'UntSelAuspicio.pas' {FrmSelAuspicio},
  UntUtilities in 'UntUtilities.pas' {FrmUtilities},
  UntAddUtility in 'UntAddUtility.pas' {FrmAddUtility},
  UntEditarInventario in 'UntEditarInventario.pas' {FrmEditarInventario},
  UntVentasenGrupo in 'UntVentasenGrupo.pas' {FrmGroupSales},
  UntSubDpt in 'UntSubDpt.pas' {FrmSubDept},
  UntAgruparProductos in 'UntAgruparProductos.pas' {FrmGropuProducts},
  UntWebTrans in 'UntWebTrans.pas' {FrmWebTrans},
  UntRptEstadoCuentaWeb in 'UntRptEstadoCuentaWeb.pas' {FrmEstadoCuentaWeb},
  UntBalanceInicial in 'UntBalanceInicial.pas' {FrmBalanceInicial},
  UntAjustes in 'UntAjustes.pas' {FrmAjustes},
  UntRptAjuste in 'UntRptAjuste.pas' {FrmRptAjuste},
  UntCalculateMoney in 'UntCalculateMoney.pas' {FrmCalculateTotals},
  UntAssembly in 'UntAssembly.pas' {FrmAssembly},
  UntCalcularAusp in 'UntCalcularAusp.pas' {FrmCalcularAusp},
  UntPlanesMed in 'UntPlanesMed.pas' {FrmPlanesEdit},
  UntThirdParty in 'UntThirdParty.pas' {FrmThirdParty},
  UntBackup in 'UntBackup.pas' {FrmBackup},
  UntAssemblyEdit in 'UntAssemblyEdit.pas' {FrmAssemblyEdit},
  UntAssemblySelect in 'UntAssemblySelect.pas' {FrmAssemblySelect},
  UntCommonPOS in 'UntCommonPOS.pas',
  UntSearchInv2 in 'UntSearchInv2.pas' {FrmSearchInv2},
  UntEnterNumber in 'UntEnterNumber.pas' {FrmInputNumber},
  UntSearchCust2 in 'UntSearchCust2.pas' {FrmSearchCust2},
  UntCheckDesc in 'UntCheckDesc.pas' {FrmCheckDesc},
  UntRptAuspicio in 'UntRptAuspicio.pas' {FrmRptAuspicio},
  UntRptRecibo in 'UntRptRecibo.pas' {FrmRptRecibo},
  UntLog in 'UntLog.pas' {FrmLog},
  UntFilterLog in 'UntFilterLog.pas' {FrmFilterLog},
  UntDMCentralCredit in 'UntDMCentralCredit.pas' {DM: TDataModule},
  UntRptReciboAssemblies in 'UntRptReciboAssemblies.pas' {FrmRptReciboAssemblies},
  UntViewCreditTrans in 'UntViewCreditTrans.pas' {FrmViewCreditTrans},
  UntBrowseInv in 'UntBrowseInv.pas' {FrmBrowseInventory},
  UntReceipt in 'UntReceipt.pas' {FrmReceipt},
  UntCheckOut in 'UntCheckOut.pas' {FrmCheckOut},
  UPassword2 in 'UPassword2.pas' {FPassword2},
  UntEstadoCuentaCC in 'UntEstadoCuentaCC.pas' {FrmEstadoCuentaCC},
  UntEscojaFecha in 'UntEscojaFecha.pas' {FrmEscojaFechas},
  UntCobroRecetas in 'UntCobroRecetas.pas' {FrmCobroRecetas},
  UntRecallTrans in 'UntRecallTrans.pas' {FrmRecallTrans},
  UntDMFixCredit in 'UntDMFixCredit.pas' {DMFixCredit: TDataModule},
  UntDelivered in 'UntDelivered.pas' {FrmDelivered},
  UntSearchNoSocio in 'UntSearchNoSocio.pas' {FrmSearchNoSocio},
  UntWarning in 'UntWarning.pas' {FrmWarning},
  UntSeleccioneOpcion in 'UntSeleccioneOpcion.pas' {FrmSeleccioneOpcion},
  UntEscoja in 'UntEscoja.pas' {FrmEscoja},
  UntEscojaEC in 'UntEscojaEC.pas' {FrmEscojaEC},
  UntRazonPorDescuento in 'UntRazonPorDescuento.pas' {FrmRazonDescuento},
  UntPOSTS in 'UntPOSTS.pas' {FrmPOSTS},
  Loto2 in 'Loto2.pas',
  UntIVULoto in 'UntIVULoto.pas',
  ResourceLocalizer in 'ResourceLocalizer.pas',
  UntNewVersion in 'UntNewVersion.pas' {FrmNewVersion},
  UntCombo in 'UntCombo.pas' {FrmCombo},
  UntComboDetail in 'UntComboDetail.pas' {Form3},
  UntBotones in 'UntBotones.pas' {FrmBotones},
  UntEnterBarcode in 'UntEnterBarcode.pas' {FrmEnterBarcode},
  UntPickup in 'UntPickup.pas' {FrmPickup},
  UntDMWC in 'UntDMWC.pas' {DMwc: TDataModule},
  UntRxDetail in 'UntRxDetail.pas' {FrmRxDetail},
  UntEditarBotones in 'UntEditarBotones.pas' {FrmBotonesEdit},
  UntWillCallAvailables in 'UntWillCallAvailables.pas' {FrmWillCallAvailables},
  UntSignatureCapture in 'UntSignatureCapture.pas' {FrmeSignatureCapture},
  UntID in 'UntID.pas' {FrmID},
  UntSignature in 'UntSignature.pas' {FrmSignature},
  UntShowSignature in 'UntShowSignature.pas' {FrmShowSignature},
  UntRptHistorial in 'UntRptHistorial.pas' {FRptHistorial},
  UntWillCallStatus in 'UntWillCallStatus.pas' {FrmWillCallStatus},
  UntPrintOption in 'UntPrintOption.pas' {FrmPrintingOption},
  UntServicios in 'UntServicios.pas' {FrmServicios},
  UntUserList in 'UntUserList.pas' {FrmUserList},
  UntBarcodePrintQ in 'UntBarcodePrintQ.pas' {FrmBarcodePrintQ},
  UntEditBarcodePrintQ in 'UntEditBarcodePrintQ.pas' {FrmEditBarcodePrintQ},
  UntShopper in 'UntShopper.pas' {FrmShopper},
  UntEditShopperDetail in 'UntEditShopperDetail.pas' {FrmEditShopperDetail},
  UntShopperEdit in 'UntShopperEdit.pas' {FrmShopperEdit},
  UntShopper2 in 'UntShopper2.pas' {FrmShopper2},
  UntSalesPromotion in 'UntSalesPromotion.pas' {FrmSalesPromo},
  UntCalendar in 'UntCalendar.pas' {FrmCalendar},
  Unit5 in 'Unit5.pas' {Form5},
  UntPOSRest in 'UntPOSRest.pas' {FrmPOSRest},
  UntEditTabs in 'UntEditTabs.pas' {FrmEditTabs},
  UntTabs in 'UntTabs.pas' {FrmTabs},
  UntCustomerTabs in 'UntCustomerTabs.pas' {FrmStartTab},
  UntAddTabToOpenTab in 'UntAddTabToOpenTab.pas' {FrmAddTabToOpenTab},
  UntEditTab in 'UntEditTab.pas' {FrmEditTab},
  UntSplitTabs in 'UntSplitTabs.pas' {FrmSplitTab},
  UntSelectDateTime in 'UntSelectDateTime.pas' {FrmSelectDateTime},
  UntPaymentType in 'UntPaymentType.pas' {FrmPaymentType},
  UntBotonesModifiers in 'UntBotonesModifiers.pas' {FrmModifiers},
  UntEditarBotonesModifier in 'UntEditarBotonesModifier.pas' {FrmBotonesEditModifiers},
  UntRecipe in 'UntRecipe.pas' {FrmRecipe},
  UntPrintOptionReceipt in 'UntPrintOptionReceipt.pas' {FrmPrintOption},
  UntTimeCard in 'UntTimeCard.pas' {FrmTimeCard},
  UntPunch_inout in 'UntPunch_inout.pas' {FrmPunchInOut},
  UntEditTimeCard in 'UntEditTimeCard.pas' {FrmEditTimeCard},
  UntFilterTimeCard in 'UntFilterTimeCard.pas' {FrmFilterTimeCard},
  UntEnterDescription in 'UntEnterDescription.pas' {FrmEnterDescription},
  UntEditInventorySP in 'UntEditInventorySP.pas' {FrmEditInventorySP},
  UntBalanceTemp in 'UntBalanceTemp.pas' {FrmTempBalance},
  UntKitchenExtraInfo in 'UntKitchenExtraInfo.pas' {FrmKitchenExtraInfo},
  untReceiptView in 'untReceiptView.pas' {FrmReceiptView},
  UntShopperDailySale in 'UntShopperDailySale.pas' {FrmShopperDailySale},
  UntShpperDailySaleEdit in 'UntShpperDailySaleEdit.pas' {FrmShopperDailySaleEdit},
  UntShowMessage in 'UntShowMessage.pas' {FrmShowMessage},
  UntEditCars in 'UntEditCars.pas' {FrmEditCars},
  UntCarsTransactions in 'UntCarsTransactions.pas' {FrmCarsTransactions},
  UntExportInventory in 'UntExportInventory.pas' {FrmExportInventory},
  UntlabelBC in 'UntlabelBC.pas' {FrmLabelsBC},
  UntEnterBarcode2 in 'UntEnterBarcode2.pas' {FrmImputBarcode},
  UntVendors in 'UntVendors.pas' {FrmVendors},
  untRptCommission in 'untRptCommission.pas' {frmComReport},
  UntDelInfo in 'UntDelInfo.pas' {frmDelInfo},
  UntPrescriptions in 'UntPrescriptions.pas' {FrmPrescriptions},
  UntCreateNewUser in 'UntCreateNewUser.pas' {FrmCreateNewUser},
  untLogDetail in 'untLogDetail.pas' {FrmLogDetail},
  UntSSSOTC in 'UntSSSOTC.pas' {FrmSSSOTC},
  UntTripleSCoveredProducts in 'UntTripleSCoveredProducts.pas' {FrmTripleSCoveredProducts},
  untTest in 'untTest.pas' {FrmTest},
  UntEnterPO in 'UntEnterPO.pas' {FrmEnter_PO},
  UntTripleSReport in 'UntTripleSReport.pas' {FrmTripleSReport},
  untCustomerClassification in 'untCustomerClassification.pas' {frmCustomerClassification};

{$R *.RES}

const  AllowedInstances = 0;

var
  MyAppName   : Array[0..255] of Char;
  MyClassName : Array[0..255] of Char;
  NumFound    : Integer;
  LastFound   : HWnd;
  MyPopup     : HWnd;


procedure RestoreWindow(aFormName : string);
var
   Wnd,
   App : HWND;

begin
     Wnd := FindWindow(PChar(aFormName), nil);
     if (Wnd <> 0)
        then begin // Set Window to foreground
             App := GetWindowLong(Wnd, GWL_HWNDPARENT);
             if IsIconic(App)
                then ShowWindow(App, SW_RESTORE);

             SetForegroundwindow(App);
             end;
end;
var
   Semafor     : THandle;

begin
     Application.Title := 'SalesTech';
     // Don't start twice ... if already running bring this instance to front
     Semafor := CreateSemaphore(nil, 0, 1, 'MY_APPLICATION_IS_RUNNING');
     if ((Semafor <> 0) and // application is already running
         (GetLastError = ERROR_ALREADY_EXISTS))
        then begin
             RestoreWindow('TMyApplication');
             CloseHandle(Semafor);
             Halt;
             end;
    //====================================================================}
    FSplash2 := TFSplash2.Create(Application);
    FSplash2.Show;
    FSplash2.Refresh;
    Application.CreateForm(TDMMidas, DMMidas);
    Application.CreateForm(TDM, DM);
    Application.CreateForm(TDMwc, DMwc);
    FSplash2.Hide;
    FSplash2.Free;
    Application.CreateForm(TFrmMain, FrmMain);
    Application.Run;
  //end;
end.
