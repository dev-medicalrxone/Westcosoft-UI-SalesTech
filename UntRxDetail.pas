unit UntRxDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, ExtCtrls, Keyboard, Mask, DBCtrls,
  StdCtrls, Buttons, Grids, DBGrids;

type
  TFrmRxDetail = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Bevel1: TBevel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Panel1: TPanel;
    Button1: TButton;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    ComboBox1: TComboBox;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRxDetail: TFrmRxDetail;

implementation

{$R *.dfm}

uses UntDMwc, UntDMMidas;

procedure TFrmRxDetail.ComboBox1Change(Sender: TObject);
begin
  With DMwc do
  begin
    cdsWillCall.Edit;
    cdsWillCallSTATUS.Value := ComboBox1.ItemIndex;
  end;
end;

procedure TFrmRxDetail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmRxDetail := Nil;
  Action := caFree;
end;

procedure TFrmRxDetail.FormShow(Sender: TObject);
begin
  ComboBox1.Text := dmwc.cdsWillCallStatusDefine.Value;
end;

end.
