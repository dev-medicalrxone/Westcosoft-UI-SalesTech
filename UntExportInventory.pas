unit UntExportInventory;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.Buttons, Vcl.ExtCtrls, frxClass,
  frxDBSet, frCoreClasses, ResourceLocalizer;

type
  TFrmExportInventory = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton5: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    ToolButton6: TToolButton;
    ImageList1: TImageList;
    Memo1: TMemo;
    Panel1: TPanel;
    EditDirectory: TEdit;
    SpeedButton1: TSpeedButton;
    OpenDialog1: TOpenDialog;
    ToolButton3: TToolButton;
    ExportData: TfrxReport;
    InventarioPiso: TfrxDBDataset;
    procedure ToolButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmExportInventory: TFrmExportInventory;

implementation

{$R *.dfm}

uses UntDMMidas, untMain;

procedure TFrmExportInventory.SpeedButton1Click(Sender: TObject);
begin
  If OpenDialog1.Execute then
    EditDirectory.Text := (OpenDialog1.FileName);
end;

procedure TFrmExportInventory.ToolButton1Click(Sender: TObject);
Var
 InvTxt: Textfile;
 BarCode, LN: String;
 Qty: Double;
begin
  if FrmMain.LanguageStr = 'English' then
    FrmMain.msgD := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 304)
  else
    FrmMain.msgD := '¿Desea actualizar el inventario?';
  if MessageDlg('¿Desea actualizar el inventario?',mtConfirmation,[mbNo,mbYes],0) = mrYes then
  begin
    AssignFile(InvTxt, Trim(EditDirectory.Text));
    Reset(InvTxt);
    With DMMidas do
    begin
      while not Eof(InvTxt) do
      begin
        ReadLn(InvTxt, LN);

        BarCode := '';
        Qty := 0;

        FDQuery1.SQL.Text := 'Update InventarioPiso set QTYINVENTARIO = ' + FloatToStr(Qty) + ' where CODIGOBARRA = ' + chr(39) + BarCode + chr(39);
        FDQuery1.ExecSQL;
        BarCode := '';
        Qty := 0;
      end;
    end;
    CloseFile(InvTxt);
  end;
end;

procedure TFrmExportInventory.ToolButton2Click(Sender: TObject);
Var
 InvTxt: Textfile;
begin
  Memo1.Clear;
  With DMMidas do
  begin
    CDSInventarioPiso.Close;
    CDSInventarioPiso.CommandText := 'Select * from InventarioPiso where Recetario = '+ chr(39) + 'P' + chr(39) +
                                     ' and CMAXINVENTARIO > 0 and DESCRIPCION is not null order by DESCRIPCION';
    CDSInventarioPiso.Open;
    CDSInventarioPiso.First;
    AssignFile(InvTxt, Trim(EditDirectory.Text));
    Rewrite(InvTxt);
    while not CDSInventarioPiso.Eof do
    begin
      Memo1.Lines.Add('"' + CDSInventarioPisoCODIGOBARRA.Value + '"' + '"' + CDSInventarioPisoDESCRIPCION.AsString.Trim + '"' + '"' + Format('%n', [CDSInventarioPisoPRECIO.asFloat]) + '"');
      Writeln(InvTxt, '"' + CDSInventarioPisoCODIGOBARRA.Value + '"' + '"' + CDSInventarioPisoDESCRIPCION.AsString.Trim + '"' + '"' + Format('%n', [CDSInventarioPisoPRECIO.asFloat]) + '"');
      CDSInventarioPiso.Next;
    end;
    CloseFile(InvTxt);
  end;
end;

procedure TFrmExportInventory.ToolButton3Click(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSInventarioPiso.First;
    ExportData.ShowReport;
  end;
end;

end.


