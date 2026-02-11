unit UntDeliveryInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Mask;

type
  TFrmDeliveryInfo = class(TForm)
    ScrollBox1: TScrollBox;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    MaskEdit1: TMaskEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDeliveryInfo: TFrmDeliveryInfo;

implementation

uses UntCommon, UntPOSTS, UntDMMidas;

{$R *.dfm}

procedure TFrmDeliveryInfo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  CommonForm.Enter2tab(Self,Key);
end;

procedure TFrmDeliveryInfo.FormCreate(Sender: TObject);
begin
  With DMMidas.CDSTrHeadAdHoc2 do
    begin
      Active := False;
      CommandText := 'Select DeliveryName, DeliveryAddress1, DeliveryAddress2'
                    + ', DeliveryPhone, PONumber, DeliveredBy'
                    + ' From TransactionHeader '
                    + ' Where TransactionNumber = '
                    + IntToStr(FrmPosTS.Header);
      Active := True;
      Edit1.Text := Fields[0].asString;
      Edit2.Text := Fields[1].asString;
      Edit3.Text := Fields[2].asString;
      MaskEdit1.Text := Fields[3].asString;
      Edit5.Text := Fields[4].asString;
      Edit6.Text := Fields[5].asString;
      Active := False;
    end;
  end;
end.
