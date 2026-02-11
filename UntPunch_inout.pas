unit UntPunch_inout;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdTime;

type
  TFrmPunchInOut = class(TForm)
    LabelTime: TLabel;
    btnPunchInOut: TButton;
    Panel3: TPanel;
    btnOk: TButton;
    IdTime1: TIdTime;
    procedure FormCreate(Sender: TObject);
    procedure btnPunchInOutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    myDate : TDateTime;
  end;

var
  FrmPunchInOut: TFrmPunchInOut;

implementation

{$R *.dfm}

uses UntQueries, UntCommon, UntDMMidas, UntCommonPOS;

procedure TFrmPunchInOut.btnPunchInOutClick(Sender: TObject);
begin
  Queries.OpenPasswordsIniciales(Trim(CommonPOS.User));
  CommonPOS.DisconnectFromDatabase;
  With DMMIDAS.TIME_STAMP do
  begin
    Prepare;
    paramByName('@EMPLOYEE').Value := DMMidas.CDSPasswordsUSERNO.Value; //DM.CDSPasswordsUSERNO.Value;
    paramByName('@DATETIME').Value := myDate;
    ExecProc;
    ShowMessage(DMMidas.CDSPasswordsUSERNAME.Value + ' ' + ParamByName('@RESULT').Value);
    Self.Close;
  end;
end;

procedure TFrmPunchInOut.FormCreate(Sender: TObject);
begin
  Try
  IdTime1.Host := 'time.nist.gov';
  try
    IdTime1.SyncTime;
    myDate := IdTime1.DateTime;
  finally
    IdTime1.Disconnect;
  end;
  Except
    myDate := Now
  End;
  LabelTime.Caption := DateTimeToStr(myDate);
end;

end.
