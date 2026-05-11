unit UntVerTrans;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, ToolWin, ExtCtrls, DBCtrls, DB,
  DBClient, StdCtrls, Provider, SqlExpr, FMTBcd, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, ResourceLocalizer;

type
  TFrmVerTrans = class(TForm)
    ToolBar1: TToolBar;
    dtpTo: TDateTimePicker;
    DBLookupComboBox1: TDBLookupComboBox;
    Splitter1: TSplitter;
    ToolButton1: TToolButton;
    DSTrans: TDataSource;
    Splitter2: TSplitter;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Splitter3: TSplitter;
    Label4: TLabel;
    ComboBox3: TComboBox;
    ToolButton2: TToolButton;
    CDSTransactionDetails: TClientDataSet;
    dspVerTransacciones: TDataSetProvider;
    CDSTransactionDetailsID: TIntegerField;
    CDSTransactionDetailsTRANSACTIONNUMBER: TIntegerField;
    CDSTransactionDetailsTRANSACTIONDATE: TSQLTimeStampField;
    CDSTransactionDetailsNUMBERITEMS: TIntegerField;
    CDSTransactionDetailsPAYMENTTYPE1: TStringField;
    CDSTransactionDetailsCREDITCARD1: TStringField;
    CDSTransactionDetailsOPENED: TStringField;
    CDSTransactionDetailsCUSTOMERID: TIntegerField;
    CDSTransactionDetailsTRANSACTIONTIME: TSQLTimeStampField;
    CDSTransactionDetailsPAID: TStringField;
    CDSTransactionDetailsPAYMENTTYPE2: TStringField;
    CDSTransactionDetailsCREDITCARD2: TStringField;
    CDSTransactionDetailsSHIFT: TSmallintField;
    CDSTransactionDetailsEMPLOYNUMBER: TStringField;
    CDSTransactionDetailsREGISTER: TSmallintField;
    CDSTransactionDetailsIDNUMBER: TIntegerField;
    CDSTransactionDetailsUPC: TStringField;
    CDSTransactionDetailsQTY: TFloatField;
    CDSTransactionDetailsVOIDED: TIntegerField;
    CDSTransactionDetailsSUBDETAIL: TStringField;
    CDSTransactionDetailsPRODDESCRIPTION: TStringField;
    CDSTransactionDetailsPRODDEPARTMENT: TStringField;
    CDSTransactionDetailsFOOD: TStringField;
    CDSTransactionDetailsMODIFIED: TSmallintField;
    CDSTransactionDetailsFECHAVENTA: TSQLTimeStampField;
    CDSTransactionDetailsSUPLIDOR: TIntegerField;
    CDSTransactionDetailsSUPERVISOR: TStringField;
    CDSTransactionDetailsTAX_MUNICIPAL: TStringField;
    CDSTransactionDetailsTAX_ESTATAL: TStringField;
    CDSTransactionDetailsBARCODEALTERNO2: TWideStringField;
    CDSTransactionDetailsBARCODEALTERNO1: TWideStringField;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    CDSTransactionDetailsNOTE: TWideStringField;
    DBGrid1: TDBGrid;
    sqlVerTransaccionesFD: TFDQuery;
    CDSTransactionDetailsSUBDEPARTAMENTO: TSmallintField;
    CDSTransactionDetailsUTILIDAD: TBooleanField;
    ToolButton6: TToolButton;
    CDSTransactionDetailsSUBTOTAL: TFMTBCDField;
    CDSTransactionDetailsTAX: TFMTBCDField;
    CDSTransactionDetailsCHANGE: TFMTBCDField;
    CDSTransactionDetailsPAYAMOUNT1: TFMTBCDField;
    CDSTransactionDetailsPAYAMOUNT2: TFMTBCDField;
    CDSTransactionDetailsREGTOTAL: TFMTBCDField;
    CDSTransactionDetailsFOODTOTAL: TFMTBCDField;
    CDSTransactionDetailsTOTAL: TFMTBCDField;
    CDSTransactionDetailsPRICE: TFMTBCDField;
    CDSTransactionDetailsREGPRICE: TFMTBCDField;
    CDSTransactionDetailsDISCOUNT: TFMTBCDField;
    CDSTransactionDetailsCOSTO: TFMTBCDField;
    CDSTransactionDetailsTIP: TFMTBCDField;
    CDSTransactionDetailsCOMMISSION: TFMTBCDField;
    CDSTransactionDetailsSALESMAN: TWideStringField;
    RichEdit1: TRichEdit;
    cbAllTransactions: TCheckBox;
    dtpFrom: TDateTimePicker;
    Splitter4: TSplitter;
    Label6: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Label7: TLabel;
    EditAmount: TEdit;
    EditLast4: TEdit;
    Label8: TLabel;
    ComboBox2: TComboBox;
    Label5: TLabel;
    CDSTransactionDetailsLAST4: TIntegerField;
    procedure ToolButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure language;
    procedure cbAllTransactionsClick(Sender: TObject);
    procedure ApplyExtraFilters(transType: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVerTrans: TFrmVerTrans;

implementation

uses UntDMMidas, untMain, UntCheckDesc, UntCommonPOS, UntEscojaFecha;

{$R *.dfm}

procedure TFrmVerTrans.ToolButton1Click(Sender: TObject);
Var
  TranType: String;
begin
    With DMMidas do
    begin
      Case ComboBox1.ItemIndex of
        0: TranType := 'CASH';
        1: TranType := 'CRED';
        2: TranType := 'VISA';
        3: TranType := 'CHK';
        4: TranType := 'ATH';
        6: TranType := 'POUT';
        7: TranType := 'TFAM';
        8: TranType := 'WIC';
        9: TranType := 'REF';
        10: TranType := 'NCHG';
        11: TranType := 'ATHM';
        12: TranType := 'PICK';
        14: TranType := 'TSSS';
        15: TranType := 'PPAL';
      end;
      //if (cbAllTransactions.Checked = true) {or (ComboBox1.ItemIndex = 5)} then
      begin
        CDSTransactionDetails.Close;
        CDSTransactionDetails.CommandText := 'Select * from VerTransacciones Where FECHAVENTA between ' + chr(39) + DateToStr(dtpFrom.Date) + chr(39) + ' and ' + chr(39)+ DateToStr(dtpTo.date) + chr(39);
        FrmVerTrans.ApplyExtraFilters(TranType);
        CDSTransactionDetails.CommandText := CDSTransactionDetails.CommandText + 'order by TRANSACTIONNUMBER';
        CDSTransactionDetails.Open;
        exit
      end;

      //if (ComboBox1.Text = 'Todas') or (ComboBox1.Text = 'Todas') then
    {  if ComboBox1.ItemIndex = 5 then
      begin
        CDSTransactionDetails.Close;
        CDSTransactionDetails.CommandText := 'Select * from VerTransacciones where EMPLOYNUMBER = ' + QuotedStr(DMMidas.CDSPasswordsINICIALES.Value);
        ApplyExtraFilters;
        CDSTransactionDetails.Open;
      end;
      if {(ComboBox1.Text <> 'Todas')}//(ComboBox1.ItemIndex <> 5) and (cbAllTransactions.Checked <> true) then

      {begin
        IF Trim(ComboBox3.Text) > '' Then
        begin
          CDSTransactionDetails.Close;
          if TranType = 'REF' then
            CDSTransactionDetails.CommandText := 'Select * from VerTransacciones Where  ID = ' + #39 + ComboBox3.Text + #39 + ' and PayAmount1 < 0'
          else
            CDSTransactionDetails.CommandText := 'Select * from VerTransacciones Where  ID = ' + #39 + ComboBox3.Text + #39 + ' and (PaymentType1 = ' + #39 + TranType + #39 + ' or PaymentType2 = ' + #39 + TranType + #39 + ')';
          ApplyExtraFilters;
          CDSTransactionDetails.Open;
        end
        else
        begin
          if FrmMain.LanguageStr = 'English' then
            ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 329))
          else
          ShowMessage('Escoja el ID primero.');
        end;
    end; }
  end;
end;

procedure TFrmVerTrans.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmVerTrans := Nil;
end;

procedure TFrmVerTrans.FormCreate(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSPasswords.Close;
    CDSPasswords.CommandText := 'Select * from passwords order by username';
    CDSPasswords.Open;
    dtpFrom.Date := Date;
    dtpTo.Date := Date;
  end;
  ComboBox1.ItemIndex := 5;
end;

procedure TFrmVerTrans.FormShow(Sender: TObject);
begin
  With DMMidas do
  begin
    if CDSSetupSALESTECH_STAND_ALONE.Value = True then
    begin
      //sqlVerTransacciones.SQLConnection := SQLConnectionSA;
    end;
  end;
  if FrmMain.LanguageStr = 'English' then
    language;
end;

procedure TFrmVerTrans.language;
begin
  FrmVerTrans.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 101);         //Translations added AGC 032426
  DBGrid1.Columns[28].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 102);
  DBGrid1.Columns[29].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 003);
  DBGrid1.Columns[31].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 010);
  DBGrid1.Columns[32].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 011);
  DBGrid1.Columns[33].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 106);
  DBGrid1.Columns[34].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 107);
  DBGrid1.Columns[42].Title.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 108);
  ComboBox1.Items[1] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 109);
  ComboBox1.Items[2] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 103);
  ComboBox1.Items[3] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 104);
  ComboBox1.Items[4] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 105);
  ComboBox1.Items[5] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 110);
  ComboBox1.Items[11] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 378);
  ComboBox1.Items[13] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 379);
  ComboBox1.Text := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 110) ;

end;

procedure TFrmVerTrans.ToolButton2Click(Sender: TObject);
begin
  FrmCheckDesc := TFrmCheckDesc.Create(self);
  With FrmCheckDesc do
  begin
    {with DMMidas do
    begin
      CDSCHKDescription.Close;
      CDSCHKDescription.CommandText := 'Select * from CHK_DESCRIPTON where Notrans = ' + FrmVerTrans.CDSTransactionDetailsTRANSACTIONNUMBER.AsString;
      CDSCHKDescription.Open;
    end;}
    ShowModal;
    Free;
  end;
end;

procedure TFrmVerTrans.ToolButton3Click(Sender: TObject);
begin
  CommonPOS.SelectSalesTechMobile(CommonPOS.ServerNameSalesTech);
end;

procedure TFrmVerTrans.ToolButton4Click(Sender: TObject);
begin
  CommonPOS.SelectSalesTechLocal;
end;

procedure TFrmVerTrans.ToolButton6Click(Sender: TObject);
begin
  CommonPOS.PrintTransactions(ComboBox1.Text);
   { If CommonPOS.ReceiptPrinter <> '' then
      CommonPos.SelectPrinter(CommonPOS.ReceiptPrinter)
    else
      CommonPos.SelectPrinter('EPSON');
    With RichEdit1 do
    begin
      Lines.Clear;
      Font.Name := 'Lucida Console';
      Font.Size := 10;
      Font.Style := [fsBold];
      Lines.Add(CommonPOS.CenterString(DMMidas.CDSSetupSTORENAME.Value,36));
      Font.Name := 'Lucida Console';
      Font.Style := [];
      Lines.Add(CommonPOS.CenterString(DMMidas.CDSSetupSTOREADDRESS.Value,36));
      Lines.Add(CommonPOS.CenterString('CUADRE DE CAJERO',36));
      if CommonPOS.Restaurant = False then
      begin
        Lines.Add('CAJERO: ' + DMMidas.CDSPasswordsUSERNAME.Value);
      end;
      Lines.Add('Cuadre #: ' + ComboBox3.Text);
      Lines.Add('Fecha: ' + DateToStr(Date));
      Lines.Add('Hora: ' + TimeToStr(Time));
      Lines.Add('Transaction Type: ' + ComboBox1.Text);
      Lines.Add('---------------------------------');
      begin
         CDSTransHead.First;
         while not CDSTransHead.Eof do
         begin
           if CommonPOS.Restaurant = True then
           begin
             Lines.Add(Format('%0s %18s',   ['Employee    : ', CDSTransHeadEmploynumber.Value]));
           end;
           Lines.Add(Format('%0s %18s',     ['Trans No.   : ' , CDSTransHeadTRANSACTIONNUMBER.AsString]));
           Lines.Add(Format('%0s %5s %12s', ['Pay Amount 1: ' , cdsTransHeadPAYMENTTYPE1.Value, Format('%6.2f', [CDSTransHeadPAYAMOUNT1.value])]));
           Lines.Add(Format('%0s %5s %12s', ['Pay Amount 2: ' , cdsTransHeadPAYMENTTYPE2.Value, Format('%6.2f', [CDSTransHeadPAYAMOUNT2.value])]));
           Lines.Add(Format('%0s %18s',     ['Gratuity    : ',  Format('%6.2f', [CDSTransHeadTip.value])]));
           Lines.Add('---------------------------------');
           CDSTransHead.Next;
         end;
      end;
      Print('');
    end;
     }
end;

procedure TFrmVerTrans.ApplyExtraFilters(transtype: String);
var
  LAmountText: string;
  LLast4: string;
  employee: string;
  registerId: string;
begin
  LAmountText := Trim(EditAmount.Text);
  LLast4      := Trim(EditLast4.Text);
  employee := DMMidas.CDSPasswordsINICIALES.Value;
  if ComboBox3.Text <> '0' then
    registerId := ComboBox3.Text;

  // Filter by amount (PAYAMOUNT1)
  if LAmountText <> '' then
  begin
    // normalize decimal separator for SQL Server (expects dot)
    LAmountText := StringReplace(LAmountText, ',', '.', [rfReplaceAll]);
    CDSTransactionDetails.CommandText :=
      CDSTransactionDetails.CommandText +
      ' AND PAYAMOUNT1 = ' + LAmountText;
  end;

  // Filter by last 4 digits of card (CREDITCARD1 or CREDITCARD2)
  if LLast4 <> '' then
  begin
    CDSTransactionDetails.CommandText :=
      CDSTransactionDetails.CommandText +
      ' AND LAST4 = ' + QuotedStr(LLast4);
  end;
  if (registerId <> '') and (ComboBox3.Visible = true)  then
  begin
    CDSTransactionDetails.CommandText :=
      CDSTransactionDetails.CommandText +
      ' AND ID = ' + QuotedStr(registerID)
  end;
  if (DBLookupComboBox1.Visible = True) and (DBLookupComboBox1.Text > '') then
  begin
    CDSTransactionDetails.CommandText :=
      CDSTransactionDetails.CommandText +
      ' AND EMPLOYNUMBER = ' + QuotedStr(employee)
  end;
  if transType > '' then
  begin
    if TransType = 'REF' then
      CDSTransactionDetails.CommandText :=
      CDSTransactionDetails.CommandText +
      ' and PayAmount1 < 0'
    else
      CDSTransactionDetails.CommandText :=
      CDSTransactionDetails.CommandText +
      ' and (PaymentType1 = ' + #39 + TransType + #39 + ' or PaymentType2 = ' + #39 + TransType + #39 + ')';
  end;
end;

procedure TFrmVerTrans.cbAllTransactionsClick(Sender: TObject);
begin
  ComboBox3.visible := not(cbAllTransactions.Checked);
  label4.visible := not(cbAllTransactions.Checked);
  ComboBox1.visible := not(cbAllTransactions.Checked);
  Label1.visible := not(cbAllTransactions.Checked);
  DBLookupComboBox1.visible := not(cbAllTransactions.Checked);
  label2.visible := not(cbAllTransactions.Checked);
end;

procedure TFrmVerTrans.DBLookupComboBox1CloseUp(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSDailyTotals.Close;
    //DateSeparator := '/';
    CDSDailyTotals.CommandText := 'Select * from DAILYTOTALS where CONVERT(VARCHAR(10),SalesDate,101)  = ' + chr(39) + dateToStr(dtpFrom.Date) + chr(39) + ' and EMPLOYNUMBER = '  + chr(39) + CDSPasswordsINICIALES.Value + Chr(39) + ' order by ID';
    CDSDailyTotals.Open;
    ///DateSeparator := '/';
    CDSDailyTotals.First;
    ComboBox3.Clear;
    while not CDSDailyTotals.Eof do
    begin
      ComboBox3.Items.Add(CDSDailyTotalsID.AsString);
      CDSDailyTotals.Next;
    end;
    ComboBox3.ItemIndex := 0;
  end;
  if ComboBox1.ItemIndex = -1 then
    ComboBox1.ItemIndex := 5
end;

end.
