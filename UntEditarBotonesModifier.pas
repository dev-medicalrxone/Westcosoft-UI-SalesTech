unit UntEditarBotonesModifier;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Touch.Keyboard, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask, Vcl.Buttons, db;

type
  TFrmBotonesEditModifiers = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Panel2: TPanel;
    Button1: TButton;
    ToolBar1: TToolBar;
    TBPost: TToolButton;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    DBImage1: TDBImage;
    DBEdit5: TDBEdit;
    OpenDialog1: TOpenDialog;
    TouchKeyboard1: TTouchKeyboard;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure TBPostClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBotonesEditModifiers: TFrmBotonesEditModifiers;

implementation

{$R *.dfm}

uses UntSearchInv2, UntDMMidas, UntCommonPOS;

procedure TFrmBotonesEditModifiers.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TBPost.Click;
  FrmBotonesEditModifiers := nil;
  Action := caFree;
end;

procedure TFrmBotonesEditModifiers.SpeedButton1Click(Sender: TObject);
begin
  FrmSearchInv2 := TFrmSearchInv2.Create(self);
  With FrmSearchInv2 do
  begin
    With DMMidas do
    begin
      ShowModal;
      cdsBotonesModifiersPRODUCT_NO.Value := CDSInventarioPisoProductNo.Value;
      cdsBotonesModifiersDESCRIPTION.Value := Copy(CDSInventarioPisoDescripcion.Value,1,15);
    end;
    FrmSearchInv2 := Nil;
    Free;
  end;
end;

procedure TFrmBotonesEditModifiers.SpeedButton2Click(Sender: TObject);
var
  ImageStr, dir: string;
  ButtonNumber: String;
begin
  With DMMidas do
  begin
  ButtonNumber := cdsBotonesModifiersBUTTON_NUMBER.AsString;
  TBPost.Click;
  If OpenDialog1.Execute then
    ImageStr := (OpenDialog1.FileName);
  With FDQuery1 do
  begin
    sql.Text := 'UPDATE BOTONES_MIDIFIERS SET BUTTON_IMAGE = ' +
     ' (SELECT BulkColumn FROM OPENROWSET (BULK ' + chr(39) + ImageStr + chr(39) + ', SINGLE_BLOB) a)' +
    ' WHERE BUTTON_NUMBER = ' + ButtonNumber;
    ExecSQL();
  end;
    CDSBotones.Refresh;
  end;
end;

procedure TFrmBotonesEditModifiers.TBPostClick(Sender: TObject);
begin
  With DMMidas do
  begin
    if (dsBotonesModifiers.State = dsEdit) or (dsBotonesModifiers.State = dsInsert) then
    begin
      cdsBotonesModifiers.Post;
      cdsBotonesModifiers.Refresh;
    end;
  end;
end;

procedure TFrmBotonesEditModifiers.ToolButton1Click(Sender: TObject);
begin
  DMMidas.cdsBotonesModifiers.Insert;
end;

procedure TFrmBotonesEditModifiers.ToolButton5Click(Sender: TObject);
begin
  With DMMidas do
  begin
    if MessageDlg('Desea borrar ese boton?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      cdsBotonesModifiers.Delete;
      cdsBotonesModifiers.Refresh;
    end;
  end;
end;

end.
