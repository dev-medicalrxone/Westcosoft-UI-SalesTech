unit UPaidoutsTotal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  TFQRPaidoutsTotal = class(TForm)
    QRPaidouts: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    TitleBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FQRPaidoutsTotal: TFQRPaidoutsTotal;

implementation

uses UDataCuadre;

{$R *.DFM}

end.
