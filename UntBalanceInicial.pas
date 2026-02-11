unit UntBalanceInicial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons;

type
  TFrmBalanceInicial = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ComboBox1: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    procedure ComboBox1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBalanceInicial: TFrmBalanceInicial;

implementation

uses UntDMMidas;

{$R *.dfm}

procedure TFrmBalanceInicial.ComboBox1Exit(Sender: TObject);
begin
  IF ComboBox1.Text = '' Then
  begin
    ShowMessage('Debe selectionar una opción');
  end;
end;

procedure TFrmBalanceInicial.FormCreate(Sender: TObject);
begin
  if DMMidas.CDSBalanceInicial.Active = False then DMMidas.CDSBalanceInicial.Active := True;
end;

end.
