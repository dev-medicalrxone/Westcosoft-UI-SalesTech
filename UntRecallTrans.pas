unit UntRecallTrans;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ComCtrls, Data.DB,
  Vcl.Touch.Keyboard, Vcl.ExtCtrls;

type
  TFrmRecallTrans = class(TForm)
    Panel3: TPanel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    CheckBox1: TCheckBox;
    DBGrid1: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    TouchKeyboard1: TTouchKeyboard;
    EditNumber: TEdit;
    cxDateEdit1: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure cxDateEdit1PropertiesChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure EditNumberChange(Sender: TObject);
    procedure EditNumberExit(Sender: TObject);
    procedure cxDateEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRecallTrans: TFrmRecallTrans;

implementation

uses UntDMMidas, untMain, UntCommon, UntCommonPOS,
  UntPOSTS, DBClient;

{$R *.dfm}

procedure TFrmRecallTrans.FormCreate(Sender: TObject);
begin
  cxDateEdit1.Date := Date;
  With DMMidas do
  begin
      With DMMidas.CDSRecallTrans do
      begin
        Active := False;
        CommandText := 'Select * from TransactionHeader_Temp where Opened = ' + #39 + 'S' + #39 + ' and CONVERT(VARCHAR(101), TransactionDate, 101) = ' + #39 + DateToStr(cxDateEdit1.Date) + #39 +  ' Order by TransactionNumber';
        Active := True;
      end;
  end;
end;

procedure TFrmRecallTrans.cxDateEdit1Change(Sender: TObject);
begin
  With DMMidas do
  begin
      With DMMidas.CDSRecallTrans do
      begin
        Active := False;
        CommandText := 'Select * from TransactionHeader_Temp where Opened = ' + #39 + 'S' + #39 + ' and CONVERT(VARCHAR(101), TransactionDate, 101) = ' + #39 + DateToStr(cxDateEdit1.Date) + #39 +  ' Order by TransactionNumber';
        Active := True;
      end;
  end;
end;

procedure TFrmRecallTrans.cxDateEdit1PropertiesChange(Sender: TObject);
begin
  With DMMidas do
  begin
      With DMMidas.CDSRecallTrans do
      begin
        Active := False;
        CommandText := 'Select * from TransactionHeader_Temp where Opened = ' + #39 + 'S' + #39 + ' and CONVERT(VARCHAR(101), TransactionDate, 101) = ' + #39 + DateToStr(cxDateEdit1.Date) + #39 +  ' Order by TransactionNumber';
        Active := True;
      end;
  end;
end;

procedure TFrmRecallTrans.EditNumberChange(Sender: TObject);
begin
  if CommonPOS.IsNumber(EditNumber.Text) then
     EditNumber.Color := clWhite
  else
     EditNumber.Color := clred;
end;

procedure TFrmRecallTrans.EditNumberExit(Sender: TObject);
begin
  With DMMidas do
  begin
    if (Trim(EditNumber.Text) > '') and (Trim(EditNumber.Text) <> '0') then
    begin
      With DMMidas.CDSRecallTrans do
      begin
        Active := False;
        CommandText := 'Select * from TransactionHeader_Temp where TransactionNumber = ' + EditNumber.Text  + ' Order by TransactionNumber';
        Active := True;
      end;
    end;
  end;
end;

procedure TFrmRecallTrans.Button2Click(Sender: TObject);
begin
  With DMMidas do
  begin
      With DMMidas.CDSRecallTrans do
      begin
        Active := False;
        CommandText := 'Select * from TransactionHeader_Temp where Opened = ' + #39 + 'S' + #39 + ' Order by TransactionNumber';
        Active := True;
      end;
  end;
end;

procedure TFrmRecallTrans.Button3Click(Sender: TObject);
begin
  With DMMidas do
  begin
      With DMMidas.CDSRecallTrans do
      begin
        Active := False;
        CommandText := 'Select * from TransactionHeader_Temp where Delivered = ' + #39 + 'T' + #39 + ' Order by TransactionNumber';
        Active := True;
      end;
  end;
end;

end.
{
procedure TFrmRecallTrans.Button1Click(Sender: TObject);
begin
  With DMMidas do
  begin
      With DMMidas.CDSRecallTrans do
      begin
        Active := False;
        CommandText := 'Select * from TransactionHeader_TEMP where TransactionNumber = ' + EditNumber.Text  + ' Order by TransactionNumber';
        Active := True;
      end;
  end;
end;

procedure TFrmRecallTrans.FormCreate(Sender: TObject);
begin
  cxDateEdit1.Date := Date;
  With DMMidas do
  begin
      With DMMidas.CDSRecallTrans do
      begin
        Active := False;
        CommandText := 'Select * from TransactionHeader_TEMP where Opened = ' + #39 + 'H' + #39 + ' and TransactionDate = ' + #39 + cxDateEdit1.Text + #39 +  ' Order by TransactionNumber';
        Active := True;
      end;
  end;
end;

procedure TFrmRecallTrans.cxDateEdit1PropertiesChange(Sender: TObject);
begin
  With DMMidas do
  begin
      With DMMidas.CDSRecallTrans do
      begin
        Active := False;
        CommandText := 'Select * from TransactionHeader_TEMP where Opened = ' + #39 + 'H' + #39 + ' and TransactionDate = ' + #39 + cxDateEdit1.Text + #39 +  ' Order by TransactionNumber';
        Active := True;
      end;
  end;
end;

procedure TFrmRecallTrans.Button2Click(Sender: TObject);
begin
  With DMMidas do
  begin
      With DMMidas.CDSRecallTrans do
      begin
        Active := False;
        CommandText := 'Select * from TransactionHeader_TEMP where Opened = ' + #39 + 'H' + #39 + ' Order by TransactionNumber';
        Active := True;
      end;
  end;
end;

procedure TFrmRecallTrans.Button3Click(Sender: TObject);
begin
  With DMMidas do
  begin
      With DMMidas.CDSRecallTrans do
      begin
        Active := False;
        CommandText := 'Select * from TransactionHeader_TEMP where Opened = ' + #39 + 'H' + #39 + ' and Delivered = ' + #39 + 'T' + #39 + ' Order by TransactionNumber';
        Active := True;
      end;
  end;
end;

end.}
