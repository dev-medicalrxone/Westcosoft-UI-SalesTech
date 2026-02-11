unit UntShpperDailySaleEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.Buttons;

type
  TFrmShopperDailySaleEdit = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmShopperDailySaleEdit: TFrmShopperDailySaleEdit;

implementation

{$R *.dfm}

uses UntSelectDateTime, UntDMMidas;

procedure TFrmShopperDailySaleEdit.SpeedButton3Click(Sender: TObject);
begin
  FrmSelectDateTime := TFrmSelectDateTime.Create(nil);
  With FrmSelectDateTime do
  begin
    ShowModal;
    if ModalResult = mrOk then
    begin
      DMMidas.cdsShopperDAILY_SALE_START_TIME.asString := TimeToStr(FrmSelectDateTime.dtpTime.Time);
    end;
    FrmSelectDateTime := Nil;
    Free;
  end;
end;

procedure TFrmShopperDailySaleEdit.SpeedButton4Click(Sender: TObject);
begin
  FrmSelectDateTime := TFrmSelectDateTime.Create(nil);
  With FrmSelectDateTime do
  begin
    ShowModal;
    if ModalResult = mrOk then
    begin
      DMMidas.cdsShopperDAILY_SALE_END_TIME.asString := TimeToStr(FrmSelectDateTime.dtpTime.Time);
    end;
    FrmSelectDateTime := Nil;
    Free;
  end;
end;

end.
