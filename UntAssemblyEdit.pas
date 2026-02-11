unit UntAssemblyEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, Mask, ExtCtrls;

type
  TFrmAssemblyEdit = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBEdit1: TDBEdit;
    DBText1: TDBText;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAssemblyEdit: TFrmAssemblyEdit;

implementation

uses UntDMMidas;

{$R *.dfm}

procedure TFrmAssemblyEdit.DBEdit1Exit(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSAssembly_DetailPRECIO.Value :=  CDSAssembly_DetailPRECIO.Value * StrToInt(DBEdit1.Text);
    CDSAssembly_DetailCosto.Value :=  CDSAssembly_DetailCosto.Value * StrToInt(DBEdit1.Text);
  end;
end;

procedure TFrmAssemblyEdit.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;                                 { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
  end;
end;

end.
