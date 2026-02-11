unit UntZipAndStore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ImgList, ExtCtrls, Registry,
  System.ImageList;

type
  TFrmZipAndStore = class(TForm)
    OpenDialog1: TOpenDialog;
    ImageList2: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BtnExitClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmZipAndStore: TFrmZipAndStore;

implementation

uses UntCommon, UntDMMidas, UntCommonPOS;

{$R *.dfm}

procedure TFrmZipAndStore.FormCreate(Sender: TObject);
Var
  Registro: TRegistry;
begin
{  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_LOCAL_MACHINE;
  Registro.OpenKey('\SOFTWARE\WOW6432Node\FarmaTec2000', True);
  try
    EditDestDir.Text := Registro.ReadString('ZipAndStore');
    EditFilesLIst.Text := CommonPOS.DataBaseName;
  except
    EditDestDir.Text := 'C:\DATA\BACKUP\';
    EditFilesLIst.Text := CommonPOS.DataBaseName;
  end;
  Registro.Free;
  if Trim(EditDestDir.Text) = '' then EditDestDir.Text := 'C:\DATA\BACKUP\';
  if Trim(EditFilesLIst.Text) = '' then EditDestDir.Text := Registro.readString('DataBaseName');
  }
end;

procedure TFrmZipAndStore.BitBtn1Click(Sender: TObject);
var
  NumberZipped: Integer;
  Counter :Integer;
  SearchRec: TSearchRec;
begin
{  StatusBar1.Panels[0].Text := 'Backing Up...';
  StatusBar1.Refresh;
  Counter := 0;
  While FindFirst(EditDestDir.Text + '\'+ CommonPOS.DataBaseName + IntToStr(Counter) + '.bak', faAnyFile, SearchRec) = 0 do
  begin
     Counter := Counter + 1;
  end;
  with DMMidas do
  begin
    SPDatabaseBackup.ParamByName('@backupDir').AsString := EditDestDir.Text;
    SPDatabaseBackup.ParamByName('@database').AsString :=  CommonPOS.DataBaseName;//  'Farmatec' + IntToStr(Counter);
    SPDatabaseBackup.ParamByName('@backupDate').AsString := Trim(Copy(DateToStr(date), 1, 2) + Copy(DateToStr(date), 4, 2) + Copy(DateToStr(date), 9, 2));
    SPDatabaseBackup.ExecProc;
  end;
  Counter := 0;
  StatusBar1.Panels[0].Text := 'Finish Backup...';
  StatusBar1.Refresh;
        //Farmacia := SearchRec.Name + ' is ' + IntToStr(SearchRec.Size) + ' bytes in size';

  ProgressBar1.Visible := True;
  {
  With VCLZip1 do
  begin
    DestDir := EditDestDir.Text;
    ZipName := EditDestDir.Text + '\Farmatec' + IntToStr(Counter)+ '.zip';
    FilesList.Add(EditFilesLIst.Text);
    Recurse := True;	//* Recurse directories */
    StorePaths := True;	//* Keep path information */
    PackLevel := 9;	//* Highest level of compression */
    NumberZipped := Zip;	//* Return value of Zip is the actual number of files zipped */
  end;
  RzStatusPane1.Caption := 'Finish backup...';
  RzStatusPane1.refresh;

  RzStatusPane1.Caption := 'Finished zipping file: ' + IntToStr(NumberZipped);
  ProgressBar1.Visible := False;
  DeleteFile(EditDestDir.Text+'\Farmatec' + Trim(Copy(DateToStr(date), 1, 2) + Copy(DateToStr(date), 4, 2) + Copy(DateToStr(date), 9, 2) +'.bak'));
  }
end;

{procedure TFrmZipAndStore.VCLZip1TotalPercentDone(Sender: TObject;
  Percent: Integer);
begin
  ProgressBar1.Percent := Percent;
  //ProgressBar1.Refresh;
end; }

procedure TFrmZipAndStore.BtnSaveClick(Sender: TObject);
Var
  Registro: TRegistry;
begin
 { Registro := TRegistry.Create;
  Registro.RootKey := HKEY_LOCAL_MACHINE;
  Registro.OpenKey('\SOFTWARE\WOW6432Node\FarmaTec2000', True);
  Registro.WriteString('ZipAndStore', EditDestDir.Text);
  Registro.WriteString('DataBaseAddress', EditFilesLIst.Text);
  Registro.Free;}
end;

procedure TFrmZipAndStore.SpeedButton10Click(Sender: TObject);
begin
///  If OpenDialog1.Execute then
//    EditDestDir.Text := (OpenDialog1.FileName);
end;

procedure TFrmZipAndStore.SpeedButton1Click(Sender: TObject);
begin
//  If OpenDialog1.Execute then
 //   EditFilesLIst.Text := (OpenDialog1.FileName);
end;

procedure TFrmZipAndStore.BtnExitClick(Sender: TObject);
begin
  self.Close;
end;

procedure TFrmZipAndStore.ToolButton1Click(Sender: TObject);
begin
// cxButton1.Click;
end;

procedure TFrmZipAndStore.ToolButton2Click(Sender: TObject);
var
  NumberZipped: Integer;
  Counter :Integer;
  SearchRec: TSearchRec;
begin
{  StatusBar1.Panels[0].Text :=  'Backing Up...';
  StatusBar1.Refresh;
  with DMMidas do
  begin
    SPDatabaseBackup.ParamByName('@backupDir').AsString := EditDestDir.Text;
    SPDatabaseBackup.ParamByName('@database').AsString := 'Farmatec';                                                                // 01/01/2005
    SPDatabaseBackup.ParamByName('@backupDate').AsString := Trim(Copy(DateToStr(date), 1, 2) + Copy(DateToStr(date), 4, 2) + Copy(DateToStr(date), 9, 2));
    SPDatabaseBackup.ExecProc;
  end;
  Counter := 0;
  While FindFirst(EditDestDir.Text + '\Farmatec' + IntToStr(Counter) + '.zip', faAnyFile, SearchRec) = 0 do
  begin
     Counter := Counter + 1;
     //if Counter > 100 then FindFirst(EditDestDir.Text + '\Farmatec.zip', faAnyFile, SearchRec) := 0;
  end;
        //Farmacia := SearchRec.Name + ' is ' + IntToStr(SearchRec.Size) + ' bytes in size';

  ProgressBar1.Visible := True;
  {With VCLZip1 do
  begin
    DestDir := EditDestDir.Text;
    ZipName := EditDestDir.Text + '\Farmatec' + IntToStr(Counter)+ '.zip';
    FilesList.Add(EditFilesLIst.Text);
    Recurse := True;	//* Recurse directories */
    StorePaths := True;	//* Keep path information */
    PackLevel := 9;	//* Highest level of compression */
    NumberZipped := Zip;	//* Return value of Zip is the actual number of files zipped */
  end;}
{  StatusBar1.Panels[0].Text := 'Finish backup...';
  StatusBar1.refresh;

  StatusBar1.Panels[0].Text := 'Finished zipping file: ' + IntToStr(NumberZipped);
  ProgressBar1.Visible := False;
  DeleteFile(EditDestDir.Text+'\Farmatec' + Trim(Copy(DateToStr(date), 1, 2) + Copy(DateToStr(date), 4, 2) + Copy(DateToStr(date), 9, 2) +'.bak'));
  }
  end;

end.
