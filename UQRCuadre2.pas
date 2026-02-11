unit UQRCuadre2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  TFQRCuadre = class(TForm)
    QRCuadre: TQuickRep;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRSysData3: TQRSysData;
    QRDBText4: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel6: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel9: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape1: TQRShape;
    QRLabel11: TQRLabel;
    QRDBText10: TQRDBText;
    QRShape2: TQRShape;
    QRLabel10: TQRLabel;
    QRDBText6: TQRDBText;
    QRExpr1: TQRExpr;
    QRDBText3: TQRDBText;
    QRExpr2: TQRExpr;
    QRLabel12: TQRLabel;
    QRDBText11: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FQRCuadre: TFQRCuadre;

implementation

uses UDMSuplidores, UDataCuadre;

{$R *.DFM}

end.
