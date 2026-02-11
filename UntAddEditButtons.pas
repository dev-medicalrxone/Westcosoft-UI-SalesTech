unit UntAddEditButtons;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.ToolWin, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, ResourceLocalizer;

type
  TFrmAddEditButtons = class(TForm)
    Panel1: TPanel;
    btnOk: TButton;
    btnCancel: TButton;
    EditDescription: TEdit;
    Label1: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    EditProductNo: TEdit;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    EditQty: TEdit;
    Label6: TLabel;
    DBImage1: TDBImage;
    SpeedButton2: TSpeedButton;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    TBPost: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    cbRecipe: TCheckBox;
    ADD_EDIT_MOBILE_BUTTONS_DETAIL: TFDStoredProc;
    cbAdd_ons: TComboBox;
    ADD_EDIT_BUTTONS_MOBILE_HEADER: TFDStoredProc;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure language;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    Var
      ID: Integer;
    { Public declarations }
  end;

var
  FrmAddEditButtons: TFrmAddEditButtons;

implementation

{$R *.dfm}

uses UntDMMidas, UntSearchInv2, UntQueries, UntTabs, untMain;

procedure TFrmAddEditButtons.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Self.ModalResult = mrOk then
  begin
      if Self.Tag = 0 then
      begin
        With ADD_EDIT_MOBILE_BUTTONS_DETAIL do
        begin
          Prepare;
          ParamByName('@description').Value := Trim(Copy(EditDescription.text,1,20));
          ParamByName('@product_no').Value := StrToInt(EditProductNo.Text);
          ParamByName('@QTY').Value := StrToFloat(EditQty.Text);
          ParamByName('@modifier').Value := false;
          ParamByName('@category_id').Value := FrmOpenTabs.btnHeaderId;
          ParamByName('@id').Value := ID;
          ParamByName('@row').Value := FrmOpenTabs.roe;
          ParamByName('@col').Value := FrmOpenTabs.col;
          ParamByName('@add_on').Value := Trim(cbAdd_ons.Text);
          ParamByName('@recipe').Value := cbRecipe.Checked;
          ExecProc();
          //ButtonNumber := ParamByName('@id').Value;
        end;
      end;
      if Self.Tag = 1 then
      begin
        With ADD_EDIT_BUTTONS_MOBILE_HEADER do
        begin
          Prepare;
          ParamByName('@description').Value := Trim(Copy(EditDescription.text,1,20));
          ParamByName('@button_category').Value := 2;
          ParamByName('@category_id').Value := StrToInt(EditProductNo.Text);
          ExecProc();
          //ButtonNumber := ParamByName('@category_id').Value;
        end;
      end;

  end;
end;

procedure TFrmAddEditButtons.FormShow(Sender: TObject);
begin
  if FrmMain.LanguageStr = 'English' then
    language;
end;

procedure TFrmAddEditButtons.language;
begin
  cbAdd_ons.Items[0] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 215);
  cbAdd_ons.Items[8] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 217);
  cbAdd_ons.Items[9] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 216);
  cbAdd_ons.Items[15] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 218);
  cbAdd_ons.Items[16] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 219);
  cbAdd_ons.Items[18] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 220);
  cbAdd_ons.Items[20] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 221);
  cbAdd_ons.Items[22] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 222);
  cbAdd_ons.Items[23] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 223);
  cbAdd_ons.Items[24] := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 224);
end;

procedure TFrmAddEditButtons.SpeedButton1Click(Sender: TObject);
begin
  FrmSearchInv2 := TFrmSearchInv2.Create(self);
  With FrmSearchInv2 do
  begin
    With DMMidas do
    begin
      if CDSBotonesPRODUCTNO.Value > 0 then
      begin
        Queries.OpenInventory(CDSBotonesPRODUCTNO.asString, 'POS',false);
      end;
      ShowModal;
      if ModalResult = mrOk then
      begin
        EditProductNo.Text := CDSInventarioPisoProductNo.asString;
        EditDescription.Text := Copy(CDSInventarioPisoDescripcion.Value,1,15);
      end;
    end;
    FrmSearchInv2 := Nil;
    Free;
  end;
end;

procedure TFrmAddEditButtons.SpeedButton2Click(Sender: TObject);
Var
  Strstream: TMemoryStream;
  ImageStr: string;
begin
  With DMMidas do
  begin
    //TBPost.Click;
    {If OpenDialog1.Execute then
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
      end;}
  end;
end;

end.
