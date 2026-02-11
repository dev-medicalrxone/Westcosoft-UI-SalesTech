unit untEvertec;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCtrls, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, Vcl.StdCtrls, System.Threading,
  Winapi.WebView2, Winapi.ActiveX, Vcl.Edge, Vcl.OleCtrls, SHDocVw, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TFrmEvertec = class(TForm)
    lblStatus: TLabel;
    tcpClient: TIdTCPClient;
    indicator: TActivityIndicator;
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    btnClose: TButton;
    Button3: TButton;
    Memo2: TMemo;
    function checkLRC(const s: string): Integer;
    function readData(s, token: String): Boolean;
    function showStatus(s: String): String;
    procedure test;
    procedure getLogonValues(s: String);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure logoff;
    procedure executeCommand(s, sCommand: String);
    procedure FormActivate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure mcsValidate;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    sessionID, terminalId, stationNumber, refNo, str, manualTrans : String;
    canCloseForm: Boolean;
  end;

var
  FrmEvertec: TFrmEvertec;

implementation

{$R *.dfm}

uses UntPOSRest, untIpe, UntCommonPOS, UntCheckOut, UntDMMidas,
  untValidateProds, untMain;

procedure TFrmEvertec.btnCloseClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmEvertec.Button1Click(Sender: TObject);
begin
  //webBrowser1.execWB( OLECMDID_PRINTPREVIEW, OLECMDEXECOPT_DODEFAULT );
  //webBrowser1.execWB( OLECMDID_PRINT, OLECMDEXECOPT_DODEFAULT );
end;

procedure TFrmEvertec.Button2Click(Sender: TObject);
var
  s, s2, value, response: String;
  int: Integer;
begin
  ipe.globalIndicator := indicator;
  ipe.printReceipt('SALE', '0');
end;

procedure TFrmEvertec.Button3Click(Sender: TObject);
begin
  ipe.globalIndicator := indicator;
  ipe.printReceipt('SALE', '1');
end;

function TFrmEvertec.checkLRC(const s: string): Integer;
var
   I: Integer;
begin
   Result := 0;
   for I:=1 to Length(s) do
     Result := Result xor Ord(s[I])
end;

procedure TFrmEvertec.executeCommand(s, sCommand: String);
var
  i: Integer;
  response: String;
  flag: Boolean;
begin
try
  begin
    TTask.Run(
    procedure
    begin
      try
        i := checkLRC(s);
        s := sCommand + s + chr(i);
        //s := '5278LOGON.4000013112340001000001';
        //i := checkLRC(s + chr(28) + chr(28));
        //s := 'TRANS\' + s + chr(28) + chr(28) + chr(i);
        tcpClient.Connect;
        tcpClient.IOHandler.Write(s);
        flag := false;
        try
          while flag = False do
          begin
            while tcpClient.IOHandler.CheckForDataOnSource(1000) do
            begin
              If not tcpClient.IOHandler.InputBufferIsEmpty then
              begin
                TThread.Synchronize(TThread.Current,
                procedure
                begin
                  ///update ui
                  response := tcpClient.IOHandler.InputBufferAsString();
                  flag := readData(response, 'APPROVED');
                  lblStatus.Caption := showStatus(response);
                end)
              end;
            end;
          end;
        finally
          tcpClient.Disconnect;
          indicator.Animate := False;
        end;
      except on E: exception do
      begin
        TThread.Synchronize(TThread.Current,
        procedure
        begin
          tcpClient.Disconnect;
          indicator.Animate := False;
          ShowMessage('Error: ' + E.Message);
        end)
      end;
      end;
    end)
  end;
  except on E: exception do
  begin
    tcpClient.Disconnect;
    indicator.Animate := False;
    ShowMessage('An error has occurred. Please try again later.');
  end;
  end;
end;

procedure TFrmEvertec.FormActivate(Sender: TObject);
begin
  canCloseForm := False;
  ipe.globalIndicator := indicator;
  ipe.globalLabel := lblStatus;
  ipe.globalLabel.Visible := True;
  if CommonPOS.TransactionType = 'TSSS' then
  begin
    CommonPOS.TransactionType := 'ATH';
    FrmCheckOut.PayType := 'ATH';
    if CommonPOS.mcsRefund then
      ipe.refundMcs(FrmValidateProds.totalAmnt, FrmValidateProds.upcs)
    else
      ipe.saleMcs(FrmValidateProds.totalAmnt, FrmValidateProds.upcs)
  end
  else if CommonPOS.RefundPOS then
  begin
    if (CommonPOS.TransactionType = 'CASH') then
      ipe.ivuCash('REFUND')
    else if CommonPOS.TransactionType = 'TFAM' then
      ipe.ebtTrans('REFUND')
    else
      ipe.refund(manualTrans)
  end
  else if CommonPOS.TransactionType = 'ATHM' then
    ipe.saleTrans('AM', '000000', '', '0')
  else if CommonPOS.TransactionType = 'journal' then
    ipe.journal(str)
  else if CommonPOS.TransactionType = 'MCSVAl' then
    mcsValidate
  else if CommonPOS.TransactionType = 'ebtBal' then
    ipe.ebtBalance
  else if CommonPOS.TransactionType = 'mcsBal' then
    ipe.mcsBalance
  else if CommonPOS.TransactionType = 'TFAM' then
    ipe.ebtTrans(CommonPOS.ebtType)
  else if CommonPOS.TransactionType = 'POUT' then
    ipe.ebtTrans(CommonPOS.ebtType)
  else if CommonPOS.TransactionType = 'CASH' then
    ipe.ivuCash('CASH')
  else if CommonPOS.ebtType = 'CASHPURCH' then
    ipe.ebtTrans(CommonPOS.ebtType)
  else
    ipe.saleTrans('', '000000', '', manualTrans);
end;

procedure TFrmEvertec.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then                   { if it's an enter key }
  Begin
    Self.Close;
  END;
end;

procedure TFrmEvertec.getLogonValues(s: String);
var
  loc: Integer;
begin
  loc := Pos('.', s);
  terminalId := Copy(s, loc + 1, 8);
  stationNumber := Copy(s, loc + 9, 4);
  sessionID := Copy(s, loc + 13, 23);
  refNo := Copy(s, loc + 36, 6);
end;

procedure TFrmEvertec.logoff;
var
  s, response: String;
  i: Integer;
  flag: Boolean;
begin
  refNo := IntToStr(StrToInt(refNo) + 1);
  refNo := Format('%.*d',[6, StrToInt(refNo)]);
  s := '5278LOGOFF.' + sessionID + refNo;
  executeCommand(s, 'TRANS\')
end;

procedure TFrmEvertec.mcsValidate;
var
  list: String;
  TransNo: Integer;
begin
  list := '';
  with DMMidas do
  begin
    TransNo := CDSTransShowTRANSACTIONNUMBER.Value;
    CDSTransShow2.Close;
    CDSTransShow2.CommandText := 'Select * from TransactionDetail_temp where TRANSACTIONNUMBER = ' + IntToStr(TransNo);
    CDSTransShow2.Open;
    CDSTransShow2.First;
    while not CDSTransShow2.eof do
    begin
      List := list + Trim(CDSTransShow2UPC.Value) + '@' + Trim(CDSTransShow2PRICE.asString) + ',';
      CDSTransShow2.Next;
    end;
    list := Copy(list, 1, length(list) -1);
    ipe.prodVerification(list);
  end;
end;

function TFrmEvertec.readData(s, token: String): Boolean;
var
  i: Integer;
begin
  i := Pos('ZY', s);    ///Check for errors///
  if i > 0 then
    result := True
  else
  begin
    i := Pos(token, s);
    if i > 0 then
      result := True
    else
      result := False;
  end;
end;

function TFrmEvertec.showStatus(s: String): String;
var
  loc: Integer;
begin
  loc := pos('^', s)+1;
  s := Copy(s, loc, length(s));
  s := Trim(copy(s,32,1000));
  loc := Pos('/', s);
  if loc > 0 then
  begin
    s := copy(s, 1, loc-1);
    result := s;
  end;
end;

procedure TFrmEvertec.test;
var
  s, value, stateTax, munTax, redTax, response: String;
  i, i2: Integer;
  flag: Boolean;
  buffer: RawByteString;
begin
  //indicator.Animate := True;
 { tcpClient.ReadTimeout := -1;
  refNo := IntToStr(StrToInt(refNo) + 1);
  refNo := Format('%.*d',[6, StrToInt(refNo)]);
  value := StringReplace(FrmPOSRest.DBText3.Caption, '.', '', [rfReplaceAll, rfIgnoreCase]);
  value := StringReplace(value, '$', '', [rfReplaceAll, rfIgnoreCase]);
  value := Format('%.*d',[12, StrToInt(value)]);
  s := '5278SALE.' + sessionID + refNo + '000000' + Trim(value) + '0000000000000/////000000000000/000000000032//000000000000/000000000098/////';
  i := checkLRC(s);

  s := 'TRANS\' + s +  chr(i);
  tcpClient.Connect;
  tcpClient.IOHandler.Write(s);
  flag := false;
  try
    while flag = False do
    begin
      while tcpClient.IOHandler.CheckForDataOnSource(1000) do
      begin
        If not tcpClient.IOHandler.InputBufferIsEmpty then
        begin
          response := tcpClient.IOHandler.InputBufferAsString();
          flag := readData(response, 'APPROVED');
          lblStatus.Caption := showStatus(response);
          lblStatus.Refresh;
        end;
      end;
    end;
  finally
    //indicator.Animate := False;
    tcpClient.Disconnect;
  end;           }

end;

end.
