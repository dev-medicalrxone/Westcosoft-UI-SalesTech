unit UEstadoCuentas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, QuickRpt, Qrctrls, ExtCtrls;

type
  TForm2 = class(TForm)
    QRFactPend: TQuickRep;
    QRGroup1: TQRGroup;
    QRExpr3: TQRExpr;
    QRGroup2: TQRGroup;
    QRLabel1: TQRLabel;
    QRBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QEstadoCuenta: TQuery;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    TClientTrans: TTable;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.DFM}

end.
