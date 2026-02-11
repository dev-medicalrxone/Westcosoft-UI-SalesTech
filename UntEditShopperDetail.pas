unit UntEditShopperDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, DBCtrls, Buttons;

type
  TFrmEditShopperDetail = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Bevel1: TBevel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    DBEdit7: TDBEdit;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEditShopperDetail: TFrmEditShopperDetail;

implementation

uses UntDMMidas, UntCommon, UntSalesPromotion;

{$R *.dfm}

procedure TFrmEditShopperDetail.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  CommonForm.Enter2tab(Self,Key);
end;

procedure TFrmEditShopperDetail.SpeedButton1Click(Sender: TObject);
begin
  FrmSalesPromo := TFrmSalesPromo.Create(nil);
  With FrmSalesPromo do
  begin
   ShowModal;
   DMMidas.cdsShopperDetailSALES_PROMOTION_ID.Value := DMMidas.cdsSalesPromoID.Value;
   FrmSalesPromo := Nil;
   Free;
  end;
end;

end.
