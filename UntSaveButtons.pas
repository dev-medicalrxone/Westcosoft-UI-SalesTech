unit UntAddEditButtons;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.ToolWin;

type
  TFrmAddEditButtons = class(TForm)
    Panel1: TPanel;
    btnOk: TButton;
    btnCancel: TButton;
    EditDescription: TEdit;
    Label1: TLabel;
    Label5: TLabel;
    DBComboBox1: TDBComboBox;
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
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAddEditButtons: TFrmAddEditButtons;

implementation

{$R *.dfm}

uses UntDMMidas, UntSearchInv2, UntQueries;

procedure TFrmAddEditButtons.SpeedButton1Click(Sender: TObject);
begin
  FrmSearchInv2 := TFrmSearchInv2.Create(self);
  With FrmSearchInv2 do
  begin
    With DMMidas do
    begin
      if CDSBotonesPRODUCTNO.Value > 0 then
      begin
        Queries.OpenInventory(CDSBotonesPRODUCTNO.asString, 'POS');
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

end.
