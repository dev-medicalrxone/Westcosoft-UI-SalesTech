unit UConnectSettlementRequ;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons;

type
  TFDialingSettlementRequest = class(TForm)
    ButtonConnect: TButton;
    BAbort: TBitBtn;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    Timer2: TTimer;
    Timer1: TTimer;
    BClose: TBitBtn;
    procedure ButtonConnectClick(Sender: TObject);
    procedure BAbortClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDialingSettlementRequest: TFDialingSettlementRequest;
  Abort, NoPuerto: Integer;
  Succesfull: Boolean;

implementation

uses Wlccdll, UData;

{$R *.DFM}

procedure TFDialingSettlementRequest.ButtonConnectClick(Sender: TObject);
Var
  ComPort,ComResult, Counter, ShowState: Integer;
  ErrorCount, ErrorNo, LErrorNo: Integer;
  SendText: PChar;
  SendTxt, ResText: String;
  RecvFile, SendFile: TextFile;
  MyArray: array[0..1800] of Char;
  ResMessage: PChar;
  Telefono: array[0..12] of Char;
begin
ResText := '';
Succesfull := False;
Abort := 0;
Label2.Caption := 'Initializig...';
Timer1.Enabled := False;
AssignFile(RecvFile, '..\Data\RECVFILE.PCA');
Rewrite(RecvFile);
Append(RecvFile);
Write(RecvFile, '');
CloseFile(RecvFile);
Memo1.Lines.Clear;
ButtonConnect.Enabled := False;
NoPuerto :=  Data.TCreditDebitSetupModemComPort.Value;
Counter := 0;
ErrorNo := 0;
ResMessage := MyArray;
ComClose(NoPuerto);
  ComPort := ComOpen('Com', NoPuerto, 1200, 7, 3, 1, 16384, 16384);
  ComSetWriteTimeout(ComPort, 10000);
  if ComPort = NoPuerto then
  begin
      Memo1.Lines.Add('Com Port ' +InttoStr(ComPort)+ ' open');
      CSetModemInitStr(ComPort, 'AT&F1E1Q0V1&C1&D2&K0&M0&H1&R2&I0|');
      LErrorNo := CSetModemInitStr(ComPort, 'AT&F1E1Q0V1&C1&D2&K0&M0&H1&R2&I0|');
      If LErrorNo <> 1 then
          LErrorNo := CSetModemParmResetStr(ComPort, 'ATZ|');
        If LErrorNo <> 1 then
          Begin
            Memo1.Lines.Add('Error Initializing Port')
          end
        else
          Memo1.Lines.Add('Port initialized - AT&C1&D2S25=9X4S2=43S12=50EV1QH');
          ComSetParms(ComPort, 3,7,1);
          ComSetFlow(ComPort,2);
          //Telefono := PChar('18005543363');
          //Telefono := PChar('14043274142');  //certification number
          StrpCopy(Telefono, Data.TCreditDebitSetupTelefono.Value);
          Memo1.Lines.Add('Dialing ' + Telefono);

          AssignFile(SendFile, '..\Data\Sendfile.pca');
          Reset(SendFile);
          Readln(SendFile,SendTxt);
          SendText := PChar(SendTxt);
          CloseFile(SendFile);
          //===============================================
          //Se ejecuta la llamada a NDC, con convisa_start
          //===============================================
            ComResult := ComVisa_Start(ComPort, Telefono, 1, '', SendText, '..\Data\Logfile.txt', 1, 1);
            While (ComResult = 5) and (ErrorNo <> 102) and (Abort <> 1) do
               begin
                  ShowState := ComVisaShowState(ComPort);
                  if ShowState = 101 then Label2.Caption := 'Initializig port...';
                  if ShowState = 102 then Label2.Caption := 'Ok to start Dialing...';
                  if ShowState = 103 then Label2.Caption := 'Dialing' + Telefono+ '...';
                  if ShowState = 111 then
                  begin
                    Label2.Caption := 'Wating for connection...';
                    BAbort.Enabled := True;
                  end;
                  if ShowState = 112 then Label2.Caption := 'Wating for message response...';
                  if ShowState = 113 then
                  begin
                    Label2.Caption := 'Sending out the message...';
                    BAbort.Enabled := False;
                  end;
                  if ShowState = 117 then Label2.Caption := 'Termination prosses...';
                  if ShowState = 151 then Label2.Caption := 'Hang-up string...';
                  if ShowState = 152 then Label2.Caption := 'Dropping DTR...';
                  if ShowState = 153 then Label2.Caption := 'Closing port...';
                  if Counter = 0 then
                    begin
                      If ComCarrier(3) = 1 then
                        begin
                          Memo1.Lines.Add('Conect...');
                          Memo1.Lines.Add('Flow Control: ' + IntToStr(ComSetFlow(ComPort,2)));
                          Memo1.Lines.Add('Sending...' + SendTxt);
                          Counter := 1;
                        end;
                    end;
                  ComResult := ComVisa_Next(ComPort);
                  ErrorCount := ComGetErrors(ComPort);
                  ErrorNo := ComGetErrorNo(ComPort);
                  If (ErrorNo > 0) or (ErrorCount > 0) then
                    Begin
                      ComVisaErrors(ErrorNo);
                    end;
                  If ComResult = 6 then
                    Begin
                      ComVisa_Get_Message(ComPort, ResMessage, 1714);
                      ResText := StrPas(ResMessage);
                      Memo1.Lines.Add('Reciving...');
                      Memo1.Lines.Add(ResText);
                      AssignFile(RecvFile, '..\Data\RECVFILE.PCA');
                      Rewrite(RecvFile);
                      Append(RecvFile);
                      Write(RecvFile, ResText+ #28);
                      CloseFile(RecvFile);
                    end;
                  end;
                  if ErrorNo = 102 then
                      begin
                        ComVisa_Abort(ComPort);
                        Memo1.Lines.Add('Transaction aborted... ');
                        Memo1.Lines.Add('No Dial Tone... ');
                        Label2.Caption := ('No Dial Tone...');
                        Timer1.Enabled := True;
                      end;
               end
   else
      Begin
        ShowComError(ComPort);
        Memo1.Lines.Add('Error connecting');
      end;
        Memo1.Lines.Add('Disconnecting... ');
        ComClose(ComPort);
        Memo1.Lines.Add('Disconnected');
        if Abort = 1 then
        begin
          Label2.Caption := 'Transaction Aborted...';
          BAbort.Enabled := False;
        end
        else
        Begin
          Label2.Caption := 'Transaction completed...';
          Succesfull := True;
          if ResText > '' then BClose.Click
          else
          begin
            ButtonConnect.Enabled := True;
            BAbort.Enabled := True;
            Timer1.Enabled := True;
            Memo1.Lines.Add('Error, hubo problemas con la comunicación favor de transmitir nuevamente');
          end;
        end;
        ButtonConnect.Enabled := True;
        //BAbort.Enabled := True;
end;

procedure TFDialingSettlementRequest.BAbortClick(Sender: TObject);
Var
  NoPuerto: Integer;
begin
  NoPuerto := Data.TCreditDebitSetupModemComPort.Value;
  Abort := ComVisa_Abort(NoPuerto);
end;

end.
