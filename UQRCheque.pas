unit UQRCheque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, QuickRpt, Qrctrls, ExtCtrls;

type
  TQRFCheque = class(TForm)
    QRFactPend: TQuickRep;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRExpr3: TQRExpr;
    QRGroup2: TQRGroup;
    QRLabel1: TQRLabel;
    QRBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand2: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel2: TQRLabel;
    QFacturasPend: TQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRFCheque: TQRFCheque;

implementation

uses UData;

{$R *.DFM}

end.
