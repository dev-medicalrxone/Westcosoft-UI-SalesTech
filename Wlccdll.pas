
unit Wlccdll;

INTERFACE
uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, Dialogs,
  StdCtrls, Forms, DBCtrls, DB, Grids, DBGrids, Mask, ExtCtrls,
  Buttons, WinTypes;

Const
  No_Parity = 1;
  Odd_Parity = 2;
  Even_Parity = 3;
  Mark_Parity = 4;
  Space_Parity = 5;
  Send = 1;
  Receive = 2;
  Flow_Off = 0;
  Flow_On = 1;

  SZ_Done   : Integer= 10;
  SZ_More   : Integer = 12;
  SZ_Error  : Integer = -1;
  SZ_OK     : Integer = 11;

type
  TComPort = Longint;   {Handle to the Com port}
  COMUSTR = PChar;

  TComAsciiParms = record
    StripLF,
    AddCR,
    CharDelay,
    LineDelay : Integer;
    ShowFunc  : Pointer;
  end;
  PComAsciiParms = ^TComAsciiParms;

  TComKermitParms = record
    Image     : Integer;
    ShowFunc  : Pointer;
    ShowError : Pointer;
  end;
  PComKermitParms = ^TComKermitParms;

  TComModemParms = record
    DialTime  : Integer;
    DialStr   : Array [1..32] of byte;
    DiscStr   : Array [1..32] of byte;
    ResetStr  : Array [1..32] of byte;
    SetAA     : Array [1..32] of byte;
    UnSetAA   : Array [1..32] of byte;
  end;
  PComModemParms = ^TComModemParms;

  TComPortParms = record
    Port       : Integer;
    Name       : Array[1..32] of char;
    BaudRate   : Integer;
    Parity     : Integer;
    Databits   : Integer;
    StopBits   : Integer;
    Xflow      : Integer;
    IntDriven  : Integer;
    InpBufSize : Integer;
    OutBufSize : Integer;
    FlushTime  : Integer;
    BreakTime  : Integer;
    DTRTime    : Integer;
    EscapeFunc : Pointer;
    WriteDelayFunc : Pointer;
  end;
  PComPortParms = ^TComPortParms;

  TComXYMODNTParms = record
    XmodemTime : Integer;
    ShowFunc   : Pointer;
  end;
  PComXYMODNTParms = ^TComXYMODNTParms;


var
  ComAsciiParms  : TComAsciiParms;
  ComKermitParms : TComKermitParms;
  ComModemParms  : TComModemParms;
  ComPortParms   : TComPortParms;
  ComXYMODNTParms   : TComXYMODNTParms;

  lpComShowXY : TFarProc;
  lpComShowA  : TFarProc;
  lpComShowK  : TFarProc;
  lpComShowKError : TFarProc;

Function ComOpen(Dev_Name : PChar;        {'COM'}
                 Port_Number : Integer;   {1=Com1,2=Com3,3=Com3,4=Com4}
                 Baud_Rate : Integer;     {110,150,300,600,1200,2400,4800,9600}
                 Data_Bits : Integer;     {5,6,7,8}
                 Parity : Integer;        {1=No,2=Odd,3=Even,4=Mark,5=Space}
                 Stop_Bits : Integer;     {1,2}
                 In_BufSize : Integer;    {between 1024 and 16384}
                 Out_BufSize : Integer)   {between 1024 and 16384}
                 : TComPort;stdcall;              {Returns an TComPort handle type}

Function  ComPutc(Com_Port : TComPort; ch : char): Integer;stdcall;
Function  ComGetc(Com_Port : TComPort) : integer; stdcall;
Function  ComClose(Com_Port : TComPort) : Integer; stdcall;

Function  ComRead(Com_Port : TComPort;
                  Buffer : COMUSTR;
                  len : integer ) : integer; stdcall;
Function  ComReadTimed(Com_Port : TComPort;
                  Buffer : COMUSTR;
                  len, Timeout : integer ) : integer;stdcall;
Procedure ComTiming;stdcall;
Procedure ComDisc(Com_Port : TComPort);stdcall;
Function  ComDial(Com_Port : TComPort;
                  Phone_Number : PChar) : integer;stdcall;
Function  ComRecvA(Com_Port  : TComPort;
                   FileName  : PChar;
                   Key_Press : Integer;
                   InChar    : Integer;
                   Timeout   : Integer) : integer;stdcall;
Function  ComSendA(Com_Port : TComPort;
                   FileName : PChar) : integer;stdcall;
Function  ComRecvK(Com_Port : TComPort) : integer;stdcall;
Function  ComSendK(Com_Port : TComPort;
                   FileName : PChar) : integer;stdcall;
Function  ComRecvX(Com_Port : TComPort;
                   FileName : PChar) : integer;stdcall;
Function  ComSendX(Com_Port : TComPort;
                   FileName : PChar) : integer;stdcall;
Function  ComSendXC(Com_Port : TComPort;
                   FileName : PChar) : integer;stdcall;

Function  ComRecvY(Com_Port : TComPort;
                   FileName : PChar) : integer;stdcall;
Function  ComSendY(Com_Port : TComPort;
                   FileName : PChar) : integer;stdcall;
Function  ComSetShowXY(Com_Port : TComPort;
                   ShowFunc : TFarProc) : TFarProc;stdcall;
Function  ComSetShowA(Com_Port : TComPort;
                   ShowFunc : TFarProc) : TFarProc;stdcall;
Function  ComSetShowK(Com_Port : TComPort;
                   ShowFunc : TFarProc) : TFarProc;stdcall;
Function  ComSetShowKError(Com_Port : TComPort;
                   ShowFunc : TFarProc) : TFarProc;stdcall;
Function  ComSetFlow(Com_Port : TComPort;Flow : Integer) : Integer;stdcall;



Function  ComSetAns(Com_Port : TComPort;
                    on_off : Integer) : Integer;stdcall;
Procedure ComBreak(Com_Port : TComPort);
Function  ComCarrier(Com_Port : TComPort) : Integer;stdcall;
Procedure ComDTR(Com_Port : TComPort);
Function  ComFlush(Com_Port : TComPort) : Integer;stdcall;
Function  ComGetAsciiParms(Com_Port : TComPort;
                           Parms : PComAsciiParms) : Integer;stdcall;
Function  ComGetKermitParms(Com_Port : TComPort;
                           Parms : PComKermitParms) : Integer;stdcall;
Function  ComGetModemParms(Com_Port : TComPort;
                           Parms : PComModemParms) : Integer;stdcall;
Function  ComGetPortParms(Com_Port : TComPort;
                           Parms : PComPortParms) : Integer;stdcall;
Function  ComGetXYMODNTParms(Com_Port : TComPort;
                           Parms : PComXYMODNTParms) : Integer;stdcall;
Function  ComPuts(Com_Port : TComPort; S : ComUstr): Integer;stdcall;
Function  ComReset(Com_Port : TComPort) : Integer;stdcall;
Function  ComStimulus(Com_Port : TComPort) : Integer;stdcall;
Function  ComSetAsciiParms(Com_Port : TComPort;
                           Parms : PComAsciiParms) : Integer;stdcall;

                           Function  ComSetBaud(Com_Port : TComPort;
                     Baud_Rate : Integer) : Integer;stdcall;
Function  ComSetBits(Com_Port : TComPort;
                     Data_Bit : Integer) : Integer;stdcall;
Function  ComSetKermitParms(Com_Port : TComPort;
                           Parms : PComKermitParms) : Integer;stdcall;
Function  ComRing(Com_Port : TComPort):Integer;stdcall;
Function  ComSetModemParms(Com_Port : TComPort;
                           Parms : PComModemParms) : Integer;stdcall;
Function  ComSetPortParms(Com_Port : TComPort;
                           Parms : PComPortParms) : Integer;stdcall;
Function  ComSetPar(Com_Port : TComPort;
                    Parity : integer) : Integer;stdcall;
Function  ComSetParms(Com_Port : TComPort;
                      Parity,
                      Data_Bits,
                      Stop_Bits : integer) : Integer;stdcall;
Function  ComSetStop(Com_Port : TComPort;
                    Stop_Bits : integer) : Integer;stdcall;
Function  ComSetXYMODNTParms(Com_Port : TComPort;
                           Parms : PComXYMODNTParms) : Integer;stdcall;
// New code....
Function  ComSetWriteTimeout(Com_Port : TComPort;
                           Parms : Integer) : Integer;stdcall;

Function  ComSizeX(Filename : ComUstr) : Integer;stdcall;
Function  ComSizeY(Filename : ComUstr) : Integer;stdcall;
Function  ComStatus(Com_Port : TComPort) : Integer;stdcall;
Function  ComWrite(Com_Port : TComPort;
                   Buffer : ComUstr;
                   Len : Integer): Integer; stdcall;
Function  ComOutBufStatus( Com_Port : TComPort ) : Integer;stdcall;
Function  ComSetYield( Com_Port : TComPort; Control : Integer ) : Integer;stdcall;
Function  ComRXY_Start( Com_Port : TComPort; FileName : Pchar; TransType : Pchar ) : Integer;stdcall;
Function  ComRXY_Abort( Com_Port : TComPort ) : Integer;stdcall;
Function  ComRXY_Next( Com_Port : TComPort; TransType : Pchar  ) : Integer;stdcall;
Function  ComSXY_Start( Com_Port : TComPort; FileName : Pchar; TransType : Pchar ) : Integer;stdcall;
Function  ComSXY_Abort( Com_Port : TComPort ) : Integer;stdcall;
Function  ComSXY_Next( Com_Port : TComPort; TransType : Pchar  ) : Integer;stdcall;
Function  ComRz_Start( Com_Port : TComPort; Escape : Integer; TimeOut : Integer ) : Integer;stdcall;
Function  ComRz_Abort( Com_Port : TComPort ) : Integer;stdcall;
Function  ComRz_Next( Com_Port : TComPort ) : Integer;stdcall;
Function  ComSzm_Start( Com_Port : TComPort; FileName : Pchar; TimeOut : Integer ) : Integer;stdcall;
Function  ComSetXYDebugFile( Com_Port : TComPort; FileName : Pchar ) : Integer;stdcall;
Function  ComSz_Start(
            Com_Port : TComPort;
            Manager  : Integer;
            conv     : Integer;
            fn_manag : Integer;
            flags    : Integer;
            splen    : Integer;
            acklen   : Integer;
            wsize    : Integer;
            TimeOut  : Integer;
            argc     : Integer;
            argv     : Pointer ) : Integer;stdcall;
Function  ComSz_Abort( Com_Port : TComPort ) : Integer;stdcall;
Function  ComSz_Next( Com_Port : TComPort ) : Integer;stdcall;
Function  ComSetCarrier( Com_Port : TComPort; State : Integer ) : Integer;stdcall;
Function  CSetPortParmDTRTime( Com_Port : TComPort; Dtr : Integer ) : Integer;stdcall;
Function  CSetPortParmParity( Com_Port : TComPort; Dtr : Integer ) : Integer;stdcall;

Function  ComVISA_Abort(Com_Port: TComPort) : Integer;stdcall;
Function  ComVISA_Start( Com_Port: TComPort; phone: Pchar; host_type: Integer; id: Pchar; message: Pchar; logfile: Pchar; Verbose: Integer; mode: Integer) : Integer;stdcall;
Function  ComVISA_Next( Com_Port: TComPort): Integer; stdcall;
Function  ComVISAShowState( Com_Port: TComPort): Integer; stdcall;
Function  ComVISA_Get_Message( Com_Port: TComPort; message: PChar; max_size: Integer): Integer; stdcall;
Function  ComVisaErrors(ErrorNumber: Integer): String;
Function  ComAddStimList(Com_Port: TComPort): Integer; stdcall;
Function  CSetModemInitStr(Com_Port: TComPort; ComUStr: Pchar): integer; stdcall;
Function  CSetModemParmResetStr(Com_Port: TComPort; ComUStr: Pchar): integer; stdcall;
Function  ComGetErrors(Com_Port : TComPort): Integer; stdcall;
Function  ComGetErrorNo(Com_Port : TComPort): Integer; stdcall;
Procedure ShowComError(ErrorNumber: Integer);

IMPLEMENTATION
Procedure ComBreak;          external 'NTLCC.DLL';
Function  ComCarrier;        external 'NTLCC.DLL';
Function ComClose;          external 'NTLCC.DLL';
Function  ComDial;           external 'NTLCC.DLL';
Procedure ComDisc;           external 'NTLCC.DLL';
Procedure ComDTR;            external 'NTLCC.DLL';
Function  ComFlush;          external 'NTLCC.DLL';
Function  ComGetAsciiParms;  external 'NTLCC.DLL';
Function  ComGetc;           external 'NTLCC.DLL';
Function  ComGetKermitParms; external 'NTLCC.DLL';
Function  ComGetModemParms;  external 'NTLCC.DLL';
Function  ComGetPortParms;   external 'NTLCC.DLL';
Function  ComGetXYMODNTParms;external 'NTLCC.DLL';
Function  ComOpen;           external 'NTLCC.DLL';
Function  ComPutc;           external 'NTLCC.DLL';
Function ComPuts;           external 'NTLCC.DLL';
Function  ComRead;           external 'NTLCC.DLL';
Function  ComReadTimed;      external 'NTLCC.DLL';
Function  ComRecvA;          external 'NTLCC.DLL';
Function  ComRecvK;          external 'NTLCC.DLL';
Function  ComRecvX;          external 'NTLCC.DLL';
Function  ComRecvY;          external 'NTLCC.DLL';
Function  ComReset;          external 'NTLCC.DLL';
Function  ComStimulus;       external 'NTLCC.DLL';
Function  ComSendA;          external 'NTLCC.DLL';
Function  ComSendK;          external 'NTLCC.DLL';
Function  ComSendY;          external 'NTLCC.DLL';
Function  ComSetAns;         external 'NTLCC.DLL';
Function  ComSetAsciiParms;  external 'NTLCC.DLL';
Function  ComSetBits;        external 'NTLCC.DLL';
Function  ComSetBaud;        external 'NTLCC.DLL';
Function ComSetFlow;        external 'NTLCC.DLL';
Function  ComSetKermitParms; external 'NTLCC.DLL';
Function  ComSetModemParms;  external 'NTLCC.DLL';
Function  ComSetPar;         external 'NTLCC.DLL';
Function  ComSetParms;       external 'NTLCC.DLL';
Function  ComSetPortParms;   external 'NTLCC.DLL';
Function  ComSetShowA;       external 'NTLCC.DLL';
Function  ComSetShowK;       external 'NTLCC.DLL';
Function  ComSetShowKError;  external 'NTLCC.DLL';
Function  ComSetShowXY;      external 'NTLCC.DLL';
Function  ComSetStop;        external 'NTLCC.DLL';
Function  ComSetXYMODNTParms;external 'NTLCC.DLL';
Function  ComStatus;         external 'NTLCC.DLL';
Procedure ComTiming;         external 'NTLCC.DLL';
Function ComWrite;          external 'NTLCC.DLL';
Function ComRing;           external 'NTLCC.DLL';
Function  ComOutBufStatus;   external 'NTLCC.DLL';
Function  ComSetYield;       external 'NTLCC.DLL';
Function  ComSetCarrier;     external 'NTLCC.DLL';
Function  CSetPortParmDTRTime;     external 'NTLCC.DLL';
Function  CSetPortParmParity;      external 'NTLCC.DLL';
Function CSetModemInitStr;         external 'NTLCC.DLL';
Function ComAddStimList;           external 'NTLCC.DLL';

Function CSetModemParmResetStr;    external 'NTLCC.DLL';

Function  ComSetXYDebugFile(Com_Port : TComPort; FileName : Pchar ) : Integer; external 'XYMODNT.DLL';

Function  ComSizeX;          external 'XYMODNT.DLL';
Function  ComSizeY;          external 'XYMODNT.DLL';

Function  ComSendX;          external 'XYMODNT.DLL';
Function  ComSendXC;         external 'XYMODNT.DLL';

Function  ComRXY_Start;      external 'XYMODNT.DLL';
Function  ComRXY_Abort;      external 'XYMODNT.DLL';
Function  ComRXY_Next;       external 'XYMODNT.DLL';

Function  ComSXY_Start;      external 'XYMODNT.DLL';
Function  ComSXY_Abort;      external 'XYMODNT.DLL';
Function  ComSXY_Next;       external 'XYMODNT.DLL';

Function  ComRz_Start;       external 'ZMODNT.DLL';
Function  ComRz_Abort;       external 'ZMODNT.DLL';
Function  ComRz_Next;        external 'ZMODNT.DLL';

Function  ComSzm_Start;      external 'ZMODNT.DLL';
Function  ComSz_Start;       external 'ZMODNT.DLL';
Function  ComSz_Abort;       external 'ZMODNT.DLL';
Function  ComSz_Next;        external 'ZMODNT.DLL';

Function ComVISA_Abort;      external 'VISANT.DLL';
Function ComVISA_Start;      external 'VISANT.DLL';
Function ComVISA_Next;       external 'VISANT.DLL';
Function ComVISAShowState;   external 'VISANT.DLL';
Function ComVISA_Get_Message; external 'VISANT.DLL';
Function ComGetErrors;        external 'NTLCC.DLL';
Function ComGetErrorNo;       external 'NTLCC.DLL';
Function ComSetWriteTimeOut;  external 'NTLCC.DLL';


Procedure ShowComError(ErrorNumber: Integer);
Begin
  Case ErrorNumber of
     -1: ShowMessage('Este puerto no existe');
     -2: ShowMessage('Este puerto ya esta abierto');
    -20: ShowMessage('No encuentro memoria');
    -21: ShowMessage('No encuentro memoria adicional');
    -23: ShowMessage('No puedo cerrar memoria');
    -24: ShowMessage('No puedo cerrar memoria adicional');
    -25: ShowMessage('No puedo crear archivo');
    -26: ShowMessage('No puedo obtener propiedades del puerto');
    -27: ShowMessage('No puedo cambiar la mascarilla del puerto');
    -29: ShowMessage('No puedo crear el evento');
    -30: ShowMessage('No puedo cambiar las propiedades del puerto');
    -39: ShowMessage('Se acabo el tiempo de cambiar las propiedades del puerto');
    -32: ShowMessage('Velocidad fuera del rango');
    -33: ShowMessage('Paridad incorrecta');
    -34: ShowMessage('Bits de data incorectos, si usa 8 bits, paridad debe ser N');
    -35: ShowMessage('Bits de detencion incorrectos');
    -36: ShowMessage('No puedo configurar, parametro incorrecto');
    -38: ShowMessage('No puedo crear el thread');
    Else
      ShowMessage('Error desconocido');
  end;
end;

Function ComVisaErrors(ErrorNumber: Integer): String;
Begin
  Case ErrorNumber of
    100: ComVisaErrors := 'Modem no pudo inicializar adecuadamente';
    101: ComVisaErrors := 'Ocupado';
    102: ComVisaErrors := 'Recibí caracter extraño';
    103: ComVisaErrors := 'No recibí ENQ';
    104: ComVisaErrors := 'Timed out';
    105: ComVisaErrors := 'Recibí LRC incorrecto';
    106: ComVisaErrors := 'Timed out esperando por mensaje';
    107: ComVisaErrors := 'Recibí EOT inesperado';
    108: ComVisaErrors := 'Esperaba STX y recibía algo distinto';
    109: ComVisaErrors := 'Timed out esperando por STX';
    110: ComVisaErrors := 'Timed out conectando a SPRINT';
    111: ComVisaErrors := 'Timed out esperando por caracteres de SPRINT';
    112: ComVisaErrors := 'Timed out esperando por caracteres de COMPUSERVE';
    113: ComVisaErrors := 'Time out esperando por COMPUSERVE';
    114: ComVisaErrors := 'Timed out esperando conección';
  end;
end;

end.











