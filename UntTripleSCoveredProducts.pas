unit UntTripleSCoveredProducts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Datasnap.DBClient, Datasnap.Provider,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Math;

type
  TFrmTripleSCoveredProducts = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    PageControl1: TPageControl;
    tsTransaction: TTabSheet;
    ToolBar1: TToolBar;
    tbDelete: TToolButton;
    tbTransaction: TToolButton;
    tbVoid: TToolButton;
    Panel2: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    LabelTotalSales: TLabel;
    Bevel3: TBevel;
    Label3: TLabel;
    LabelCoverd: TLabel;
    lblPatBalance: TLabel;
    DBGrid1: TDBGrid;
    Memo1: TMemo;
    TabSheet2: TTabSheet;
    ToolBar2: TToolBar;
    tbSearchTrans: TToolButton;
    tbVoid2: TToolButton;
    qTransDetail: TFDQuery;
    dspTransDetail: TDataSetProvider;
    dsTransDetail: TDataSource;
    cdsTransDetail: TClientDataSet;
    cdsTransDetailPRODDESCRIPTION: TStringField;
    cdsTransDetailQTY: TFloatField;
    cdsTransDetailTRIPLES_COVERED: TBooleanField;
    cdsTransDetailUPC: TStringField;
    DBGrid2: TDBGrid;
    cdsTransDetailTRANSACTIONNUMBER: TIntegerField;
    cdsTransDetailPRICE: TFMTBCDField;
    DTSTransHead: TDataSource;
    CDSTransHeadOld: TClientDataSet;
    DPTransHead: TDataSetProvider;
    QTransHeadFD: TFDQuery;
    CDSTransHeadOldPAYMENTTYPE1: TStringField;
    CDSTransHeadOldTRANSACTIONDATE: TSQLTimeStampField;
    CDSTransHeadOldNUMBERITEMS: TIntegerField;
    CDSTransHeadOldCREDITCARD1: TStringField;
    CDSTransHeadOldOPENED: TStringField;
    CDSTransHeadOldVOIDED: TIntegerField;
    CDSTransHeadOldCUSTOMERID: TIntegerField;
    CDSTransHeadOldTRANSACTIONTIME: TSQLTimeStampField;
    CDSTransHeadOldPAID: TStringField;
    CDSTransHeadOldPAYMENTTYPE2: TStringField;
    CDSTransHeadOldCREDITCARD2: TStringField;
    CDSTransHeadOldSHIFT: TSmallintField;
    CDSTransHeadOldREGISTER: TSmallintField;
    CDSTransHeadOldEMPLOYNUMBER: TStringField;
    CDSTransHeadOldDELIVERYADDRESS1: TStringField;
    CDSTransHeadOldDELIVERYADDRESS2: TStringField;
    CDSTransHeadOldDELIVERYNAME: TStringField;
    CDSTransHeadOldDELIVEREDBY: TStringField;
    CDSTransHeadOldPONUMBER: TStringField;
    CDSTransHeadOldDELIVERYPHONE: TStringField;
    CDSTransHeadOldID: TIntegerField;
    CDSTransHeadOldTRANSACTIONNUMBER: TAutoIncField;
    CDSTransHeadOldPAYMENTTYPE3: TStringField;
    CDSTransHeadOldPAYMENTTYPE4: TStringField;
    CDSTransHeadOldCREDITCARD3: TStringField;
    CDSTransHeadOldCREDITCARD4: TStringField;
    CDSTransHeadOldDELIVERED: TStringField;
    CDSTransHeadOldSUPERVISOR: TStringField;
    CDSTransHeadOldCUSTOMER: TWideStringField;
    CDSTransHeadOldPAYAMOUNT1: TFMTBCDField;
    CDSTransHeadOldPAYAMOUNT2: TFMTBCDField;
    CDSTransHeadOldTAX: TFMTBCDField;
    CDSTransHeadOldTOTAL_TAX: TFMTBCDField;
    CDSTransHeadOldTAX_ESTATAL: TFMTBCDField;
    CDSTransHeadOldSUBTOTAL: TFMTBCDField;
    CDSTransHeadOldTAX_SERVICIO: TFMTBCDField;
    CDSTransHeadOldPAYAMOUNT3: TFMTBCDField;
    CDSTransHeadOldPAYAMOUNT4: TFMTBCDField;
    CDSTransHeadOldREGTOTAL: TFMTBCDField;
    CDSTransHeadOldTOTAL: TFMTBCDField;
    CDSTransHeadOldCHANGE: TFMTBCDField;
    CDSTransHeadOldFOODTOTAL: TFMTBCDField;
    CDSTransHeadOldTAX_FOOD_MUNICIPAL: TFMTBCDField;
    CDSTransHeadOldTAX_FOOD_ESTATAL: TFMTBCDField;
    CDSTransHeadOldTOTAL_DISCOUNT: TFMTBCDField;
    CDSTransHeadOldTIP: TFMTBCDField;
    CDSTransHeadOldTIP2: TFMTBCDField;
    CDSTransHeadOldTOTAL_TIP: TFMTBCDField;
    CDSTransHeadOldAMOUNT_TENDERED1: TFMTBCDField;
    CDSTransHeadOldAMOUNT_TENDERED2: TFMTBCDField;
    CDSTransHeadOldCASHBACK: TFMTBCDField;
    CDSTransHeadOldSALESMAN: TWideStringField;
    CDSTransHeadOldTAX_PROCESSED_FOOD: TFMTBCDField;
    CDSTransHeadOldDELIVERY_CITY: TWideStringField;
    CDSTransHeadOldDELIVERY_ZIPCODE: TWideStringField;
    CDSTransHeadOldDELIVERY_STATE: TStringField;
    ToolButton1: TToolButton;
    cdsTransDetailPRODUCTNO: TIntegerField;
    cdsTransDetailIDNUMBER: TIntegerField;
    cdsTransDetailTRIPLES_VOID: TBooleanField;
    FDQuery1: TFDQuery;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    Memo2: TMemo;
    LabelNotCoverd: TLabel;
    Label5: TLabel;
    Bevel4: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbDeleteClick(Sender: TObject);
    procedure UpdateValues;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbTransactionClick(Sender: TObject);
    procedure tbVoidClick(Sender: TObject);
    procedure tbSearchTransClick(Sender: TObject);
    procedure tbVoid2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
    TranNo: Integer;
    ClaimApproved: Boolean;
  end;

var
  FrmTripleSCoveredProducts: TFrmTripleSCoveredProducts;

implementation

{$R *.dfm}

uses UntDMMidas, UntCommon, UntCommonPOS, untMain, UntEnterNumber, UntPOSRest;

procedure TFrmTripleSCoveredProducts.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CommonPOS.OpenTransDetail(TranNo);
  FrmPOSRest.btnRefund.Click;
end;

procedure TFrmTripleSCoveredProducts.FormCreate(Sender: TObject);
begin
  FrmPOSRest.btnRefund.Click;
  CommonPOS.TripleS_ApprovedAmount := 0;
  ClaimApproved := False;
  TranNo := DMMidas.CDSTransShow2TRANSACTIONNUMBER.Value;
end;

procedure TFrmTripleSCoveredProducts.FormShow(Sender: TObject);
begin
  UpdateValues;
end;

procedure TFrmTripleSCoveredProducts.tbDeleteClick(Sender: TObject);
Var
  IDNo, TranNo: Integer;
begin
  IDNo := DMMidas.CDSTransShow2IDNUMBER.Value;
  TranNo := DMMidas.CDSTransShow2TRANSACTIONNUMBER.Value;
  if CommonPOS.isAuthorized('POS_DELPROD',UserRights.POS_DELPROD,true) then
  begin
    CommonPOS.BorrarProducto(TranNo, IDNo);
  end;
  UpdateValues;
  DMMidas.CDSTransShow2.Refresh;
end;

procedure TFrmTripleSCoveredProducts.tbSearchTransClick(Sender: TObject);
Var
  TransNo: Integer;
begin
  TransNo := 0;
  With DMMidas do
  begin
      FrmInputNumber :=  TFrmInputNumber.Create(Application);
      With FrmInputNumber do
      begin
        Caption := 'Enter Transaction Number: ';
        FrmInputNumber.EditNumber.Text := '';
        FrmInputNumber.ShowModal;
        if Trim(FrmInputNumber.EditNumber.Text) > '' then
        begin
          TransNo := StrToInt(FrmInputNumber.EditNumber.Text);
          Free;
        end;
      end;
      if TransNo > 0 then
      begin
        cdsTransDetail.close;
        cdsTransDetail.CommandText := 'select * from TRANSACTIONDETAIL WHERE TRANSACTIONNUMBER = ' + IntToStr(TransNo) + ' AND TRIPLES_COVERED = 1';
        cdsTransDetail.Open;
        if cdsTransDetail.RecordCount = 0  then
        begin
          ShowMessage('Transaction not found!');
        end
        else
        begin
          FrmTripleSCoveredProducts.Caption := 'Triple-S void transaction: ' + IntToStr(TransNo);
        end;
      end;
  end;
end;

procedure TFrmTripleSCoveredProducts.tbTransactionClick(Sender: TObject);
begin
  //CommonPOS.TripleS_claimTransactionView; //
  tbTransaction.Enabled := false;
  ClaimApproved := CommonPOS.TripleS_claimTransaction('Claim');
  UpdateValues;
  if CommonPOS.TripleS_ApprovedAmount > 0 then
  begin
    tbTransaction.Enabled := False;
    self.Close;
  end;
end;

procedure TFrmTripleSCoveredProducts.tbVoid2Click(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSTransShow2.close;
    CDSTransShow2.CommandText := 'select * from TRANSACTIONDETAIL WHERE TRANSACTIONNUMBER = ' + IntToStr(cdsTransDetailTRANSACTIONNUMBER.Value) + ' AND TRIPLES_COVERED = 1 and TRIPLES_VOID = 1';
    CDSTransShow2.Open;
    if CDSTransShow2.RecordCount > 0 then
    begin
      FDQuery1.SQL.Text := 'SELECT TRIPLES_CUSTOMERID, UNIQUE_ID, TRANSACTIONNUMBER FROM TRIPLE_S WHERE TRANSACTIONNUMBER = ' + IntToStr(cdsTransDetailTRANSACTIONNUMBER.Value);
      FDQuery1.Active := True;
      CDSTransHeadOld.Close;
      CDSTransHeadOld.Close;
      CDSTransHeadOld.CommandText := 'select * from TRANSACTIONHEADER where TRANSACTIONNUMBER = ' + cdsTransDetailTRANSACTIONNUMBER.AsString;
      CDSTransHeadOld.Open;
      CommonPOS.TripleS_VoidTransaction(True);
      if CommonPOS.TripleS_ApprovedAmount < 0 then
      begin
        //FrmPOSRest.btnRefund.Click;
        CDSTransShow2.close;
        CDSTransShow2.CommandText := 'select * from TRANSACTIONDETAIL WHERE TRANSACTIONNUMBER = ' + IntToStr(cdsTransDetailTRANSACTIONNUMBER.Value) + ' AND TRIPLES_COVERED = 0 and TRIPLES_VOID = 1';
        CDSTransShow2.Open;
        CDSTransShow2.first;
        while not CDSTransShow2.eof do
        begin
          CommonPOS.FindProduct( CDSTransShow2PRODUCTNO.asString ,CDSTransShow2QTY.Value, 0, false,false);
          CDSTransShow2.Next;
        end;
        CommonPOS.CheckOut(0, CommonPOS.TripleS_ApprovedAmount, DMMidas.CDSTransHeadTOTAL.AsFloat - (DMMidas.CDSTransHeadTAX.AsFloat + DMMidas.CDSTransHeadTAX_ESTATAL.AsFloat), 'TSSS',
        '0',True, 1, false);
      end;
      //FrmPOSRest.btnRefund.Click;
      Self.Close;
    end;
  end;
end;

procedure TFrmTripleSCoveredProducts.tbVoidClick(Sender: TObject);
begin
  tbTransaction.Enabled := false;
  With DMMidas do
  begin
    CDSTransShow2.close;
    CDSTransShow2.CommandText := 'select * from TRANSACTIONDETAIL_TEMP WHERE TRANSACTIONNUMBER = ' + IntToStr(CommonPOS.TransNo) + ' AND TRIPLES_COVERED = 1';
    CDSTransShow2.Open;
    if CDSTransShow2.RecordCount > 0 then
    begin
      CommonPOS.TripleS_VoidTransaction(False);
    end;
  end;
end;

procedure TFrmTripleSCoveredProducts.ToolButton1Click(Sender: TObject);
begin
  if cdsTransDetailTRIPLES_VOID.Value = False then
    FDQuery1.SQL.Text := 'Update TRANSACTIONDETAIL set TRIPLES_VOID = 1 where IDNUMBER = ' + cdsTransDetailIDNUMBER.AsString
  else
    FDQuery1.SQL.Text := 'Update TRANSACTIONDETAIL set TRIPLES_VOID = 0 where IDNUMBER = ' + cdsTransDetailIDNUMBER.AsString;
  FDQuery1.ExecSQL;
  cdsTransDetail.Refresh;
end;

procedure TFrmTripleSCoveredProducts.ToolButton2Click(Sender: TObject);
begin
  if cdsTransDetailTRIPLES_VOID.Value = False then
    FDQuery1.SQL.Text := 'Update TRANSACTIONDETAIL set TRIPLES_VOID = 1 where TRANSACTIONNUMBER = ' + IntToStr(cdsTransDetailTRANSACTIONNUMBER.Value) + ' AND TRIPLES_COVERED = 1'
  else
    FDQuery1.SQL.Text := 'Update TRANSACTIONDETAIL set TRIPLES_VOID = 0 where TRANSACTIONNUMBER = ' + IntToStr(cdsTransDetailTRANSACTIONNUMBER.Value) + ' AND TRIPLES_COVERED = 1';
  FDQuery1.ExecSQL;
  cdsTransDetail.Refresh;
end;

{function RoundTo2dp(Value: Currency): Currency;
begin
  Result := Trunc(Value*100+IfThen(Value>0, 0.5, -0.5))/100;
end;}

procedure TFrmTripleSCoveredProducts.UpdateValues;
Var
  TotalPlusTax: Double;
  SalesTax: Extended;// Double;
  s: String;
begin
  SetRoundMode(rmUp);
  SalesTax := 0;
  LabelTotalSales.Caption := Format('%m', [DMMidas.CDSTransHeadTOTAL.asFloat]);
  LabelCoverd.Caption := Format('%m', [CommonPOS.TripleS_ApprovedAmount]);
  LabelNotCoverd.Caption := Format('%m', [DMMidas.CDSTransHeadTOTAL.asFloat - CommonPOS.TripleS_ApprovedAmount]);
  lblPatBalance.Caption := format('%m', [CommonPOS.TripleS_previousBalance]);
  if DMMidas.CDSTransShow.Active = True then
  begin
    if DMMidas.CDSTransShowTRANSACTIONNUMBER.Value > 0 then
    begin
      FDQuery1.SQL.Text := 'Select Price, TAX_ESTATAL, TAX_MUNICIPAL, PRODUCTNO, Qty from TRANSACTIONDETAIL_TEMP where TransactionNumber = '+ DMMidas.CDSTransShowTRANSACTIONNUMBER.AsString +' and TRIPLES_COVERED = 1';
      FDQuery1.Active := True;
      while not FDQuery1.EOF do
      begin
        With DMMidas.CALC_PRODUCT_TAX do
        begin
          Prepare;
          ParambyName('@PRODUCTNO').Value := FDQuery1.FieldByName('PRODUCTNO').Value;
          ParambyName('@QTY').Value := FDQuery1.FieldByName('QTY').Value;
          ParamByName('@PRICE').Value := FDQuery1.FieldByName('Price').Value;
          ExecProc;
          SalesTax := FDQuery1.FieldByName('Price').Value + SalesTax + ParamByName('@TOTAL_TAX').Value;
        end;
        FDQuery1.Next;
      end;
      if SalesTax > 0 then
      begin
        LabelCoverd.Caption := Format('%m', [SalesTax]);
        LabelNotCoverd.Caption := Format('%m', [DMMidas.CDSTransHeadTOTAL.asFloat-SalesTax]);
      end
      else
      begin
        LabelCoverd.Caption := '$0.00';
      end;
    end;
  end;
end;

end.
