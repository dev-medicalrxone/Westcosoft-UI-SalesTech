unit untValidateProds;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.WinXCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Math;
type
  TStringArray = array [0..20] of string;
type
  TFrmValidateProds = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    FDQuery1: TFDQuery;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    LabelTotalSales: TLabel;
    Bevel3: TBevel;
    Label3: TLabel;
    LabelCoverd: TLabel;
    LabelNotCoverd: TLabel;
    Button1: TButton;
    procedure FormActivate(Sender: TObject);
    procedure updateValidProducts(s: String);
    procedure BitBtn1Click(Sender: TObject);

  private
    { Private declarations }
    function getUpcs(str: String): TStringList;
    procedure updateValues;
  public
    { Public declarations }
    var
      totalAmnt, upcs: String;
  end;

var
  FrmValidateProds: TFrmValidateProds;

implementation

{$R *.dfm}

uses UntCommonPOS, untIpe, UntDMMidas, untEvertec, UntPOSRest;

procedure TFrmValidateProds.BitBtn1Click(Sender: TObject);
begin
  if (LabelCoverd.Caption <> '$0.00') then
  begin
    Self.Close;
    CommonPOS.TransactionType := 'TSSS';
    totalAmnt := LabelCoverd.Caption;
    totalAmnt := StringReplace(totalAmnt, '$', '', [rfReplaceAll, rfIgnoreCase]);
    if (BitBtn1.Caption = 'Refund') and (totalAmnt <> '0.00') then
    begin
      totalAmnt := StringReplace(totalAmnt, '(', '', [rfReplaceAll, rfIgnoreCase]);
      totalAmnt := StringReplace(totalAmnt, ')', '', [rfReplaceAll, rfIgnoreCase]);
      totalAmnt := '-' + totalAmnt;
    end;
    CommonPOS.PayTransaction('TSSS');
    {
    FrmEvertec := TFrmEvertec.Create(Nil);
    FrmEvertec.ShowModal;
    FrmEvertec.Free;
    FrmEvertec := nil;}
  end
  else
    showMessage('No products coverd!');
end;

procedure TFrmValidateProds.FormActivate(Sender: TObject);
var
  s, precio, qty: String;
  price: Double;
  i: Integer;
begin
  if CommonPOS.mcsRefund then
    BitBtn1.Caption := 'Refund'
  else
    BitBtn1.Caption := 'Ok' ;
  with DMMidas do
  begin
    CDSTransShow2.Close;
    CDSTransShow2.CommandText := 'Select * from TransactionDetail_temp where TRANSACTIONNUMBER = ' + IntToStr(CommonPOS.TransNo);
    CDSTransShow2.Open;
    CDSTransShow2.First;
    while not CDSTransShow2.eof do
    begin
      if CDSTransShow2UPC.AsString.Length >= 11 then
      begin
        price := CDSTransShow2PRICE.asFloat * CDSTransShow2QTY.Value;
        precio :=  format('%n', [CDSTransShow2PRICE.asFloat]);
        s := s + CDSTransShow2UPC.Value + '@' + precio + ',';

     {   price := CDSTransShow2PRICE.asFloat;
        precio :=  format('%n', [CDSTransShow2PRICE.asFloat]);
        qty := FloatToStr(CDSTransShow2QTY.Value);
        for I := 0 to StrToInt(qty) do
        begin
          s := s + CDSTransShow2UPC.Value + '@' + precio + ',';
        end;   }
      end;
      CDSTransShow2.Next;
    end;
    s := Copy(s, 1, s.Length - 1);
    ipe.prodVerification(s);
  end;
end;

function TFrmValidateProds.getUpcs(str: String): TStringList;
Var
  sl: TStringList;
  i: integer;
  s: String;
  loc: Integer;
  counter: integer;
  UPCs: array [0..20] of string;
  UPCs2: TStringList;
begin
  counter :=0;
  SL := TStringList.Create;
  sl.StrictDelimiter := TRUE;
  sl.Delimiter := chr(28);// chr(28);
  sl.DelimitedText := Trim(str);
  i := sl.Count;
  for I := 0 to i - 1 do
  begin
    counter := counter + 1;
    if i = 18 then
    begin
      s := sl.Strings[I];
    end;
  end;
  sl.Free;
  //=======================================
  SL := TStringList.Create;
  sl.StrictDelimiter := TRUE;
  sl.Delimiter := ',';// chr(28);
  sl.DelimitedText := Trim(s);
  i := sl.Count;
  result := sl;
  {
  for I := 0 to i - 1 do
  begin
    UPCs2[i] := sl.Strings[i];
  end;
  sl.Free;
  result := UPCs2;}
end;

procedure TFrmValidateProds.updateValidProducts(s: String);
var
  i, counter: Integer;
  a: TStringList;
begin
  a := getUpcs(s);
  counter := a.count;  ////Count the approved UPCs sent in the s parameter////
  for i := 0 to a.Count - 1 do
  begin
    FDQuery1.SQL.Text := 'Update TRANSACTIONDETAIL_TEMP set ' +
    ' TRIPLES_COVERED = 1 where TRANSACTIONNUMBER = ' + IntToStr(CommonPOS.TransNo) + ' and  UPC like ' + chr(39) + '%' + Trim(a.strings[i]) + '%' + chr(39);
    FDQuery1.ExecSQL;
  end;
  /////create the upc strings with their price to process the transaction later////
  with DMMidas do
  begin
    CDSTransShow2.Close;
    CDSTransShow2.CommandText := 'Select * from TransactionDetail_temp where TRIPLES_COVERED = 1 and TRANSACTIONNUMBER = ' + IntToStr(CommonPOS.TransNo);
    CDSTransShow2.Open;
    CDSTransShow2.First;
    while not CDSTransShow2.eof do
    begin
      upcs := upcs + CDSTransShow2UPC.Value + '@' + format('%n', [CDSTransShow2PRICE.asFloat]) + ',';
      CDSTransShow2.Next;
    end;
    upcs := Copy(upcs, 1, upcs.Length - 1);
  end;
  updateValues;
  DMMidas.CDSTransShow2.Close;
  DMMidas.CDSTransShow2.CommandText := 'Select * from TransactionDetail_temp where TRANSACTIONNUMBER = ' + IntToStr(CommonPOS.TransNo);
  DMMidas.CDSTransShow2.Open;
  DMMidas.CDSTransShow2.First;
end;

procedure TFrmValidateProds.updateValues;
Var
  TotalPlusTax: Double;
  SalesTax, tst: double;// Extended;// Double;
  s: String;
  allProdCovered: boolean;
begin
  SetRoundMode(rmUp);
  SalesTax := 0;
  LabelTotalSales.Caption := Format('%m', [DMMidas.CDSTransHeadTOTAL.asFloat]);
  LabelCoverd.Caption := Format('%m', [CommonPOS.TripleS_ApprovedAmount]);
  LabelNotCoverd.Caption := Format('%m', [DMMidas.CDSTransHeadTOTAL.asFloat - CommonPOS.TripleS_ApprovedAmount]);
  if DMMidas.CDSTransShow.Active = True then
  begin
    if DMMidas.CDSTransShowTRANSACTIONNUMBER.Value > 0 then
    begin
      FDQuery1.SQL.Text := 'Select count(*) as notCovered from TRANSACTIONDETAIL_TEMP where TransactionNumber = '+ DMMidas.CDSTransShowTRANSACTIONNUMBER.AsString +' and TRIPLES_COVERED = 0';
      FDQuery1.Open;
      if FDQuery1.FieldByName('notCovered').value = 0 then
      begin
        LabelCoverd.Caption := FrmPOSRest.DBText3.Caption;
        LabelNotCoverd.Caption := '$0.00';
      end
      else
      begin

        FDQuery1.SQL.Text := 'Select Price, TAX_ESTATAL, TAX_MUNICIPAL, PRODUCTNO, Qty from TRANSACTIONDETAIL_TEMP where TransactionNumber = '+ DMMidas.CDSTransShowTRANSACTIONNUMBER.AsString +' and TRIPLES_COVERED = 1';
        FDQuery1.Active := True;
        //while not FDQuery1.EOF do
        //begin
        //  allProdCovered := FDQuery1.FieldByName()
        //end;
        while not FDQuery1.EOF do
        begin

          With DMMidas.CALC_PRODUCT_TAX do
          begin
            Prepare;
            ParambyName('@PRODUCTNO').Value := FDQuery1.FieldByName('PRODUCTNO').Value;
            ParambyName('@QTY').Value := FDQuery1.FieldByName('QTY').Value;
            ParamByName('@PRICE').Value := FDQuery1.FieldByName('Price').Value;
            ExecProc;
            tst := ParamByName('@TOTAL_TAX').Value;
            //showMessage(abs(ParamByName('@TOTAL_TAX').Value));
            SalesTax := FDQuery1.FieldByName('Price').Value + SalesTax + ParamByName('@TOTAL_TAX').Value;
          end;
          FDQuery1.Next;
        end;
        if SalesTax > 0 then
        begin
          LabelCoverd.Caption := Format('%m', [SalesTax]);
          LabelNotCoverd.Caption := Format('%m', [abs(DMMidas.CDSTransHeadTOTAL.asFloat) - SalesTax]);
        end
        else
        begin
          LabelCoverd.Caption := '$0.00';
        end;
      end;
    end;
  end;
end;

end.
