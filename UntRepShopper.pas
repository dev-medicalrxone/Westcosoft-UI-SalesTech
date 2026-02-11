unit UntRepShopper;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, QuickRpt, Qrctrls, ExtCtrls;

type
  TRepShopper = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRImage1: TQRImage;
    QRImage2: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    procedure Table1CalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepShopper: TRepShopper;

implementation

uses UntMain, UntDMRegister, UntCommon;

{$R *.DFM}

procedure TRepShopper.Table1CalcFields(DataSet: TDataSet);
Var
  StrCost: String;
  I: Integer;
begin
end;

procedure TRepShopper.FormCreate(Sender: TObject);
begin
  QRImage2.Picture.LoadFromFile(FrmMain.DataDir + 'Logo.bmp');
  QRLabel1.Caption := FrmMain.BusName;
  QRLabel3.Caption := FrmMain.BusAddr[0];
  If Common.AcceptCards then
  begin
    QRLabel4.Caption := 'Aceptamos las principales tarjetas de crédito'
  end;
  If Common.AcceptFAM then
  begin
    QRLabel5.Caption := 'Aceptamos las tarjeta de la familia'
  end;
  If Common.AcceptWIC then
  begin
    QRLabel6.Caption := 'Participante del plan W.I.C.'
  end;
{  QRDBText2.Font.Color := FrmMain.SignColor[0,0];
  QRDBText5.Font.Color := FrmMain.SignColor[0,1];
  QRDBText3.Font.Color := FrmMain.SignColor[0,2];
  QRDBText1.Font.Color := FrmMain.SignColor[0,3];
  QRDBText4.Font.Color := FrmMain.SignColor[0,4];}
end;

procedure TRepShopper.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRImage1.Picture := NIL;
  If DMRegister.QryLabels.FieldByName('Photo').asString <> '' then
  begin
    Try
      QRImage1.Picture.LoadFromFile(DMRegister.QryLabels.FieldByName('Photo').asString);
    except
    end;
  end;
end;

end.
