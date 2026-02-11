unit UntNewVersion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdFTP, ExtCtrls,
  ComCtrls, StdCtrls, Shellapi;

type
  TFrmNewVersion = class(TForm)
    TimerFileFound: TTimer;
    FTP: TIdFTP;
    TimerStartDownload: TTimer;
    ProgressBar: TProgressBar;
    Label1: TLabel;
    StatusBar: TStatusBar;
    procedure TimerFileFoundTimer(Sender: TObject);
    procedure TimerStartDownloadTimer(Sender: TObject);
    procedure FTPWork(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNewVersion: TFrmNewVersion;

implementation

uses UntCommon, UntMain, UntCommonPOS;

{$R *.dfm}

procedure TFrmNewVersion.FTPWork(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
Var
  SearchRec: TSearchRec;
begin
  FindFirst(extractfilepath(application.exename) + 'Farmatec.rar', faAnyFile, SearchRec);
  //ProgressBar.Position := ProgressBar.Position + 1;
  ProgressBar.Position := AWorkCount;
  //StatusBar.Panels[1].Text := 'Bites: '+IntToStr(AWorkCount);
 //ProgressBar.Position := SearchRec.Size;
end;

procedure TFrmNewVersion.TimerFileFoundTimer(Sender: TObject);
Var
  RecvFile: TextFile;
  Farmacia, ResText: String;
  StringLength: Integer;
  SearchRec: TSearchRec;
  RespFile: String;
begin
  FindFirst(extractfilepath(application.exename) + 'Farmatec.rar', faAnyFile, SearchRec);
  StatusBar.Panels[1].Text := SearchRec.Name + ' is ' + IntToStr(SearchRec.Size) + ' bytes in size';
  StatusBar.Refresh;
  FrmNewVersion.Refresh;
  ProgressBar.Max := 9975000;
end;

procedure TFrmNewVersion.TimerStartDownloadTimer(Sender: TObject);
begin
  TimerStartDownload.Enabled := False;
  DeleteFile(extractfilepath(application.exename) + 'Farmatec.rar');
  if  CommonPOS.InternetAcive then
  begin
    Try
      FTP.Host := 'ftp.wescomweb2.com';
      FTP.Passive := True;
      FTP.Password := 'mocsewlexa01';
      FTP.Username := 'wescom';
      FTP.Connect;
      FTP.ChangeDir('/Wescom/Ftec2010/latestversion');
      ProgressBar.Position := FTP.Size('SalesTec.zip');
      FTP.Get('SalesTec.zip',  extractfilepath(application.exename) + 'SalesTec.zip', true);
      FTP.Disconnect;
      shellexecute( handle, 'open', 'zip.exe','' ,  PWideChar(extractfilepath(application.exename)) , 1);
      FrmMain.cxButton1.Click;
    Except
      //
    End;
    //Prescription.Version := VersionWeb;
  end;
end;

end.
