unit UntPlanesMed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, Mask, ExtCtrls;

type
  TFrmPlanesEdit = class(TForm)
    ScrollBox1: TScrollBox;
    Label1: TLabel;
    Label12: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label7: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit1: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit15: TDBEdit;
    DBComboBox5: TDBComboBox;
    DBComboBox1: TDBComboBox;
    DBEdit16: TDBEdit;
    Panel1: TPanel;
    Label16: TLabel;
    BitBtn1: TBitBtn;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    DBComboBox2: TDBComboBox;
    Label17: TLabel;
    Label13: TLabel;
    DBComboBox3: TDBComboBox;
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox5DropDown(Sender: TObject);
    procedure DBComboBox5Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPlanesEdit: TFrmPlanesEdit;

implementation

uses UntThirdParty, UntDMMidas;

{$R *.dfm}

procedure TFrmPlanesEdit.DBEdit1Enter(Sender: TObject);
begin
  With Sender as TDBEdit do
  begin
    If Focused then Color := clYellow else Color := clWhite;
  end;

end;

procedure TFrmPlanesEdit.DBEdit1Exit(Sender: TObject);
begin
  With Sender as TDBEdit do
  begin
    If Focused then Color := clYellow else Color := clWhite;
  end;
end;

procedure TFrmPlanesEdit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmThirdParty.ToolButton5.Click;
end;

procedure TFrmPlanesEdit.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;                                 { eat enter No }
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmPlanesEdit.DBComboBox5DropDown(Sender: TObject);
begin
  DBComboBox5.Width := 230;
end;

procedure TFrmPlanesEdit.DBComboBox5Exit(Sender: TObject);
begin
  DBComboBox5.Width := 109;
end;

end.
