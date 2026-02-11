unit UntTripleSReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass,
  frxDBSet, frCoreClasses;

type
  TFrmTripleSReport = class(TForm)
    dtpFrom: TDateTimePicker;
    dtpTo: TDateTimePicker;
    Show: TButton;
    Panel1: TPanel;
    Button1: TButton;
    From: TLabel;
    Label2: TLabel;
    Button2: TButton;
    RichEdit1: TRichEdit;
    LblDummy: TLabel;
    rgOptions: TRadioGroup;
    qrySSS: TFDQuery;
    dspSSS: TDataSetProvider;
    cdsSSS: TClientDataSet;
    dsSSS: TDataSource;
    cdsSSSTRANSACTIONNUMBER: TIntegerField;
    cdsSSSPAYMENTTYPE1: TStringField;
    cdsSSSPAYAMOUNT1: TFMTBCDField;
    cdsSSSTDATE: TDateField;
    SSSReport: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    Label1: TLabel;
    LabelAmount: TLabel;
    frxDBDataset2: TfrxDBDataset;
    procedure ShowClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SSSReportBeforePrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTripleSReport: TFrmTripleSReport;

implementation

{$R *.dfm}

uses UntDMMidas, untMain, UntCommon, UntCommonPOS;

procedure TFrmTripleSReport.Button2Click(Sender: TObject);
begin
  With DMMidas do
  begin
    With FDQuery1 do
    begin
      if rgOptions.ItemIndex = 0 then
      begin
        Close;
        SQL.Text := 'select SUM(PAYAMOUNT1) as Total from TRANSACTIONHEADER where PAYMENTTYPE1 = ' + chr(39) + 'TSSS' + chr(39) + ' and Cast(TransactionDate AS DATE) BETWEEN '+ chr(39) + DateToStr(dtpFrom.Date) + chr(39) + ' and '+ chr(39) + DateToStr(dtpTo.Date) + chr(39);
        Open();
        Label1.Caption := 'Cantidad aprobada por Triple-S Advantage, entre las Fechas ' + DateToStr(dtpFrom.Date) + ' and '+ DateToStr(dtpTo.Date);
        LabelAmount.Caption := 'Amount: ' + Format('%m', [FieldByName('Total').asFloat]);
        If CommonPOS.ReceiptPrinter <> '' then
          CommonPOS.SelectPrinter(CommonPOS.ReceiptPrinter)
        else
          CommonPOS.SelectPrinter('EPSON');
        With RichEdit1 do
        begin
          Font.Name := 'Lucida Console';
          Font.Size := FrmMain.PrinterFontSize; //6;
          Font.Style := [];
          Lines.Clear;
          Lines.Add('------------------------------------');
          LblDummy.Font.Name := 'Lucida Console';
          LblDummy.Font.Size := FrmMain.PrinterFontSize + 2;//10;
          LblDummy.Font.Style := [fsBold];
          SelAttributes.Assign(LblDummy.Font);
          Lines.Add(CommonPOS.CenterString(Trim(DMMidas.CDSSetupSTORENAME.Value),30));
          LblDummy.Font.Size := FrmMain.PrinterFontSize;//6;
          LblDummy.Font.Style := [fsBold];
          SelAttributes.Assign(LblDummy.Font);
          Lines.Add(CommonPOS.CenterString(Trim(DMMidas.CDSSetupSTOREADDRESS.Value),33));
          LblDummy.Font.Size := FrmMain.PrinterFontSize;//6;
          LblDummy.Font.Style := [fsBold];
          SelAttributes.Assign(LblDummy.Font);
          Lines.Add(CommonPOS.CenterString(DMMidas.CDSSetupSTORETELEPHONE.Value,33));
          Lines.Add('------------------------------------');
          Lines.Add(Label1.Caption);
          Lines.Add(LabelAmount.Caption);
          Lines.Add('------------------------------------');
          if CommonPOS.PrintToScreen = False then
          begin
            Print('');
          end
          else
          begin
            Visible := True;
          end;
        end;
      end
      else
      begin
        cdsSSS.Close;
        cdsSSS.CommandText := 'select TRANSACTIONNUMBER, PAYAMOUNT1, PAYMENTTYPE1, Cast(TransactionDate AS DATE) AS TDATE from TRANSACTIONHEADER where PAYMENTTYPE1 like ' + chr(39)+ 'TS%' + chr(39) +
        ' and Cast(TransactionDate AS DATE) BETWEEN '+ chr(39) + DateToStr(dtpFrom.Date) + chr(39) + ' and '+ chr(39) + DateToStr(dtpTo.Date) + chr(39) +
        ' order by TRANSACTIONDATE ';
        cdsSSS.Open;
        SSSReport.ShowReport;;
      end;
    end;
  end;


end;

procedure TFrmTripleSReport.FormCreate(Sender: TObject);
begin
  dtpFrom.Date := Date;
  dtpTo.Date := Date;
end;

procedure TFrmTripleSReport.SSSReportBeforePrint(Sender: TfrxReportComponent);
Var
  Memo7: TfrxMemoView;
begin
  Memo7 := SSSReport.FindObject('Memo7') as TfrxMemoView;
  Memo7.Text := 'Triple-S Advantage report from: ' + DateToStr(dtpFrom.Date) + ' to ' + DateToStr(dtpTo.Date);
end;

procedure TFrmTripleSReport.ShowClick(Sender: TObject);
begin
  With DMMidas do
  begin
    With FDQuery1 do
    begin
      if rgOptions.ItemIndex = 0 then
      begin
        Close;
        SQL.Text := 'select SUM(PAYAMOUNT1) as Total from TRANSACTIONHEADER where PAYMENTTYPE1 = ' + chr(39) + 'TSSS' + chr(39) + ' and Cast(TransactionDate AS DATE) BETWEEN '+ chr(39) + DateToStr(dtpFrom.Date) + chr(39) + ' and '+ chr(39) + DateToStr(dtpTo.Date) + chr(39);
        Open();
        Label1.Caption := 'Cantidad aprobada por Triple-S Advantage, entre las Fechas ' + DateToStr(dtpFrom.Date) + ' and '+ DateToStr(dtpTo.Date);
        LabelAmount.Caption := 'Amount: ' + Format('%m', [FieldByName('Total').asFloat]);
      end
      else
      begin
        cdsSSS.Close;
        cdsSSS.CommandText := 'select TRANSACTIONNUMBER, PAYAMOUNT1, PAYMENTTYPE1, Cast(TransactionDate AS DATE) AS TDATE from TRANSACTIONHEADER where PAYMENTTYPE1 like ' + chr(39)+ 'TS%' + chr(39) +
        ' and Cast(TransactionDate AS DATE) BETWEEN '+ chr(39) + DateToStr(dtpFrom.Date) + chr(39) + ' and '+ chr(39) + DateToStr(dtpTo.Date) + chr(39) +
        ' order by TRANSACTIONDATE ';
        cdsSSS.Open;
        SSSReport.ShowReport;;
      end;
    end;
  end;
end;

end.
