unit UTotalComprado;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls;

type
  TFQRTotalComprado = class(TForm)
    QRTotalComprado: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DataSource1: TDataSource;
    QTotalComprado: TQuery;
    TSuplidores: TTable;
    TSuplidoresNumeroSuplidor: TSmallintField;
    TSuplidoresSuplidor: TStringField;
    TSuplidoresDireccion1: TStringField;
    TSuplidoresDireccion2: TStringField;
    TSuplidoresTelefono: TStringField;
    TSuplidoresFax: TStringField;
    TSuplidoresZipCode: TStringField;
    TSuplidoresPorcientoDescuento: TFloatField;
    TSuplidoresDiasDescuento: TSmallintField;
    TSuplidoresContacto: TStringField;
    TSuplidoresNumeroCuenta: TStringField;
    TSuplidoresTotalComprado: TFloatField;
    QTotalCompradoTComprado: TFloatField;
    QRDBText1: TQRDBText;
    QSTotalComprado: TQuery;
    QSTotalCompradoTComprado: TFloatField;
    QRExpr1: TQRExpr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FQRTotalComprado: TFQRTotalComprado;

implementation

{$R *.DFM}

end.
