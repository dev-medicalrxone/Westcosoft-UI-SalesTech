unit UntEditarBotones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, Mask, ExtCtrls, db, StdActns, ComCtrls, ToolWin,
  Vcl.Touch.Keyboard, System.ImageList, {iexBitmaps,} jpeg, ResourceLocalizer;

type
  TFrmBotonesEdit = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    DBComboBox1: TDBComboBox;
    Panel2: TPanel;
    Button1: TButton;
    SpeedButton2: TSpeedButton;
    OpenDialog1: TOpenDialog;
    ToolBar1: TToolBar;
    TBPost: TToolButton;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    Label6: TLabel;
    DBImage1: TDBImage;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    TouchKeyboard1: TTouchKeyboard;
    DBCheckBox1: TDBCheckBox;
    SpeedButton3: TSpeedButton;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure TBPostClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure language;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBotonesEdit: TFrmBotonesEdit;

implementation

uses  UntDMMidas, UntSearchInv2, UntQueries, UntCommonPOS, UntAssembly,
  untMain;

{$R *.dfm}

procedure TFrmBotonesEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmBotonesEdit := nil;
  Action := caFree;
end;

procedure TFrmBotonesEdit.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  TBPost.Click;
end;

procedure TFrmBotonesEdit.FormShow(Sender: TObject);
begin
  if FrmMain.LanguageStr = 'English' then
    language;
end;

procedure TFrmBotonesEdit.language;
begin
  DBComboBox1.Items[0] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 215);     //Translations added AGC 032426
  DBComboBox1.Items[8] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 217);
  DBComboBox1.Items[9] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 216);
  DBComboBox1.Items[10] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 380);
  DBComboBox1.Items[12] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 377);
  DBComboBox1.Items[15] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 218);
  DBComboBox1.Items[16] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 219);
  DBComboBox1.Items[18] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 220);
  DBComboBox1.Items[19] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 381);
  DBComboBox1.Items[20] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 221);
  DBComboBox1.Items[22] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 222);
  DBComboBox1.Items[23] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 223);
  DBComboBox1.Items[24] :=  TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 224);

end;

procedure TFrmBotonesEdit.SpeedButton1Click(Sender: TObject);
begin
  FrmSearchInv2 := TFrmSearchInv2.Create(self);
  With FrmSearchInv2 do
  begin
    With DMMidas do
    begin
      if CDSBotonesPRODUCTNO.Value > 0 then
      begin
        Queries.OpenInventory(CDSBotonesPRODUCTNO.asString, 'POS', true);
      end;
      ShowModal;
      if (dsBotones.State <> dsEdit) or (dsBotones.State <> dsInsert) then
      begin
        CDSBotones.Edit;
      end;
      CDSBotonesPRODUCTNO.Value := CDSInventarioPisoProductNo.Value;
      CDSBotonesDESCRIPTION.Value := Copy(CDSInventarioPisoDescripcion.Value,1,15);
      CDSBotonesASSEMBLY_YN.Value := False;
    end;
    FrmSearchInv2 := Nil;
    Free;
  end;
end;

procedure TFrmBotonesEdit.SpeedButton2Click(Sender: TObject);
Var
  Strstream: TMemoryStream;
  ImageStr: string;
begin
  With DMMidas do
  begin
    TBPost.Click;
    If OpenDialog1.Execute then
      ImageStr := (OpenDialog1.FileName);
      CommonPOS.DisconnectFromDatabase;
      with POS_INSERT_BUTTON_IMAGE do
      begin
        Strstream := TMemoryStream.Create;
        Prepare;
        ParamByName('@BUTTON_IMAGE').LoadFromFile(ImageStr, ftBlob);
        ParamByName('@BUTTON_NUMBER').Value := CDSBotonesBUTTON_NUMBER.Value;
        ExecProc;
        Strstream.Destroy;
        CDSBotones.Refresh;
      end;
  end;
end;
{var
  ImageStr, dir: string;
  ButtonNumber: String;
begin
  With DMMidas do
  begin
  ButtonNumber := CDSBotonesBUTTON_NUMBER.AsString;
  TBPost.Click;
  If OpenDialog1.Execute then
    ImageStr := (OpenDialog1.FileName);
  With FDQuery1 do
  begin
    sql.Text := 'UPDATE Botones SET BUTTON_IMAGE = ' +
     ' (SELECT BulkColumn FROM OPENROWSET (BULK ' + chr(39) + ImageStr + chr(39) + ', SINGLE_BLOB) a)' +
    ' WHERE BUTTON_NUMBER = ' + ButtonNumber;
    ExecSQL();
  end;
    CDSBotones.Refresh;
  end;
end;
}

procedure TFrmBotonesEdit.SpeedButton3Click(Sender: TObject);
begin
  With DMMidas do
  begin
    //if CDSAssembly_Header.Active = False then CDSAssembly_Header.Active := True;
    if (CDSBotonesPRODUCTNO.Value > 0) and (CDSBotonesASSEMBLY_YN.Value = True) then
    begin
      CDSAssembly_Header.Close;
      CDSAssembly_Header.CommandText := 'Select * from ASSEMBLY_HEADER where NO_TRANS = ' + CDSBotonesPRODUCTNO.asString;
      CDSAssembly_Header.Open;
    end
    else
    begin
      CDSAssembly_Header.Close;
      CDSAssembly_Header.CommandText := 'Select * from ASSEMBLY_HEADER order by DESCRIPTION';
      CDSAssembly_Header.Open;
    end;
    FrmAssembly := TFrmAssembly.Create(self);
    With FrmAssembly do
    begin
      ShowModal;
      if ModalResult = mrOk then
      begin
          CDSBotonesPRODUCTNO.Value := CDSAssembly_HeaderNO_TRANS.Value;
          CDSBotonesDESCRIPTION.Value := Copy(CDSAssembly_HeaderDESCRIPTION.Value,1,15);
          CDSBotonesASSEMBLY_YN.Value := True;
        end;
      FrmAssembly := Nil;
      Free;
    end;
  end;
end;

procedure TFrmBotonesEdit.TBPostClick(Sender: TObject);
begin
  With DMMidas do
  begin
    if (dsBotones.State = dsEdit) or (dsBotones.State = dsInsert) then
    begin
      CDSBotones.Post;
      CDSBotones.Refresh;
    end;
  end;
end;

procedure TFrmBotonesEdit.ToolButton1Click(Sender: TObject);
begin
  FrmBotonesEdit := TFrmBotonesEdit.Create(nil);
  With FrmBotonesEdit do
  begin
    DMMidas.CDSBotones.Insert;
    ShowModal;
    Free;
    TBPost.Click;
  end;
end;

procedure TFrmBotonesEdit.ToolButton2Click(Sender: TObject);
begin
  DMMidas.CDSBotones.Cancel;
end;

procedure TFrmBotonesEdit.ToolButton3Click(Sender: TObject);
begin
  FrmBotonesEdit := TFrmBotonesEdit.Create(nil);
  With FrmBotonesEdit do
  begin
    DMMidas.CDSBotones.Edit;
    ShowModal;
    Free;
    TBPost.Click;
  end;
end;

procedure TFrmBotonesEdit.ToolButton4Click(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSBotones.Edit;
    TBlobField(CDSBotones.FieldByName('BUTTON_IMAGE')).LoadFromFile('C:\Wescom\SalesTech2012\Images\' +'bag.png');
    CDSBotones.Post;
  end;
end;

procedure TFrmBotonesEdit.ToolButton5Click(Sender: TObject);
begin
  With DMMidas do
  begin
    if FrmMain.LanguageStr = 'English' then
      FrmMain.msgD := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 296)
    else
      FrmMain.msgD := 'Desea borrar ese boton?';
    if MessageDlg(FrmMain.msgD, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      CDSBotones.Delete;
      CDSBotones.Refresh;
    end;
  end;
end;

end.
