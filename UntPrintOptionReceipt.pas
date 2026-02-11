unit UntPrintOptionReceipt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFrmPrintOption = class(TForm)
    rgPrintOption: TRadioGroup;
    GridPanel1: TGridPanel;
    sbCustReceipt: TSpeedButton;
    sbKitchen: TSpeedButton;
    sbCancel: TSpeedButton;
    procedure sbCancelClick(Sender: TObject);
    procedure sbCustReceiptClick(Sender: TObject);
    procedure sbKitchenClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure sbTestClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrintOption: TFrmPrintOption;

implementation

{$R *.dfm}

uses UntCommonPOS, UntDMMidas;

procedure TFrmPrintOption.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmPrintOption := Nil;
  Action := caFree;
end;

procedure TFrmPrintOption.FormCreate(Sender: TObject);
begin
 { if CommonPOS.Restaurant = False then
  begin
    sbKitchen.Visible := False;
    sbTest.Visible := True;
  end
  else
  begin
    sbKitchen.Visible := True;
    sbTest.Visible := False;
  end;  }
end;

procedure TFrmPrintOption.sbKitchenClick(Sender: TObject);
begin
  if CommonPOS.OpenOpenTabs(DMMidas.CDSTransShowTRANSACTIONNUMBER.Value) = True then
    CommonPOS.PrintReceipt(DMMidas.CDSTransShowTRANSACTIONNUMBER.Value, 1, False, 'CASH','0', False, True, False, True, False)
    //CommonPOS.Insert_Print_Jobs(false, false, false, 'FoodReceipt', '0', IntToStr(commonpos.Header), '', CommonPOS.email, CommonPOS.mobile_phone, '', '0', 1)
  else
    ShowMessage('Must open a Tab for this customer!');
  self.Close;
end;

procedure TFrmPrintOption.sbTestClick(Sender: TObject);
begin
  //CommonPOS.PrintReceipt(DMMidas.CDSTransShowTRANSACTIONNUMBER.Value, 1, False, 'CASH', '0', False, False, True, False, False);
end;

procedure TFrmPrintOption.sbCancelClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmPrintOption.sbCustReceiptClick(Sender: TObject);
begin
  //CommonPOS.PrintReceipt(DMMidas.CDSTransShowTRANSACTIONNUMBER.Value, 1, False, 'CASH','0', False, False, False, False, False);
  CommonPOS.Insert_Print_Jobs(false, false, false, 'receipt', '0', IntToStr(commonpos.Header), '', CommonPOS.email, CommonPOS.mobile_phone, '', '0', 1);
  self.Close;
end;

end.
