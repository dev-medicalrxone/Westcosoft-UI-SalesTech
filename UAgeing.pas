unit UAgeing;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TFAgeing = class(TForm)
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAgeing: TFAgeing;

implementation

uses UAgeingReport;

{$R *.DFM}

procedure TFAgeing.BitBtn1Click(Sender: TObject);
begin
     Case RadioGroup1.ItemIndex of
     0: Begin
          FQRAgeingRep := TFQRAgeingRep.Create(self);
          FQRAgeingRep.QUltimaTrans.Close;
          FQRAgeingRep.QUltimaTrans.ParamByName('Date1').AsDate := Date;
          FQRAgeingRep.QUltimaTrans.ParamByName('Date2').AsDate := Date - 30;
          FQRAgeingRep.QUltimaTrans.Open;
          FQRAgeingRep.QRLabel6.Caption := '30 dias o menos';
          FQRAgeingRep.QRAgeingRep.Preview;
          FQRAgeingRep.Free;
        end;
     1: Begin
          FQRAgeingRep := TFQRAgeingRep.Create(self);
          FQRAgeingRep.QUltimaTrans.Close;
          FQRAgeingRep.QUltimaTrans.ParamByName('Date1').AsDate := Date - 30;
          FQRAgeingRep.QUltimaTrans.ParamByName('Date2').AsDate := Date - 60;
          FQRAgeingRep.QRLabel6.Caption := '30 a 60 dias';
          FQRAgeingRep.QUltimaTrans.Open;
          FQRAgeingRep.QRAgeingRep.Preview;
          FQRAgeingRep.Free;
        end;
    2: Begin
          FQRAgeingRep := TFQRAgeingRep.Create(self);
          FQRAgeingRep.QUltimaTrans.Close;
          FQRAgeingRep.QUltimaTrans.ParamByName('Date1').AsDate := Date - 60;
          FQRAgeingRep.QUltimaTrans.ParamByName('Date2').AsDate := Date - 90;
          FQRAgeingRep.QRLabel6.Caption := '60 a 90 dias';
          FQRAgeingRep.QUltimaTrans.Open;
          FQRAgeingRep.QRAgeingRep.Preview;
          FQRAgeingRep.Free;
        end;
    3: Begin
          FQRAgeingRep := TFQRAgeingRep.Create(self);
          FQRAgeingRep.QUltimaTrans.Close;
          FQRAgeingRep.QUltimaTrans.ParamByName('Date1').AsDate := Date - 90;
          FQRAgeingRep.QUltimaTrans.ParamByName('Date2').AsDate := Date - 360000;
          FQRAgeingRep.QRLabel6.Caption := '90 dias o más';
          FQRAgeingRep.QUltimaTrans.Open;
          FQRAgeingRep.QRAgeingRep.Preview;
          FQRAgeingRep.Free;
        end;
   4: Begin
          FQRAgeingRep := TFQRAgeingRep.Create(self);
          FQRAgeingRep.QUltimaTrans.Close;
          FQRAgeingRep.QUltimaTrans.ParamByName('Date1').AsDate := Date;
          FQRAgeingRep.QUltimaTrans.ParamByName('Date2').AsDate := Date - 360000;
          FQRAgeingRep.QRLabel6.Caption := '';
          FQRAgeingRep.QUltimaTrans.Open;
          FQRAgeingRep.QRAgeingRep.Preview;
          FQRAgeingRep.Free;
        end;

     end;
end;

end.
