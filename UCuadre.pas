unit UCuadre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls, StdCtrls;

type
  TQRCuadre = class(TForm)
    QRCuadreRep: TQuickRep;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    Departamentos: TTable;
    DepartamentosDepartamento: TIntegerField;
    DepartamentosDescripcion: TStringField;
    DepartamentosCuadre: TFloatField;
    DepartamentosGanancia: TFloatField;
    QCuadre: TQuery;
    QRDBTextDept: TQRDBText;
    QRDBTextGanan: TQRDBText;
    QCuadreDepartamento: TSmallintField;
    QCuadresumPrecioVenta: TFloatField;
    QCuadreSumGanancia: TFloatField;
    QCuadreDescrip: TStringField;
    QRDBTextDescrip: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBTextPrecio: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRSysData1: TQRSysData;
    QRLabelHeading: TQRLabel;
    QRBand1: TQRBand;
    QRLabel6: TQRLabel;
    QDebito: TQuery;
    QDebitosumPrecioVenta: TFloatField;
    QRDBTextDebito: TQRDBText;
    QRShape5: TQRShape;
    QPaidout: TQuery;
    QRShape6: TQRShape;
    QSumaCuadre: TQuery;
    QSumaCuadresumPrecioVenta: TFloatField;
    QSumaCuadreSumGanancia: TFloatField;
    QRShape7: TQRShape;
    QRDBTextGanancia: TQRDBText;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel7: TQRLabel;
    QRDBTextPaidout: TQRDBText;
    QRLabelTotal: TQRLabel;
    QPaidoutsumPrecioVenta: TFloatField;
    QDevolucion: TQuery;
    QDevolucionsumPrecioVenta: TFloatField;
    QRShape10: TQRShape;
    QRLabel8: TQRLabel;
    QRDBTextDevo: TQRDBText;
    QAbonos: TQuery;
    QAbonossumPrecioVenta: TFloatField;
    QRLabel9: TQRLabel;
    QRDBTextAbono: TQRDBText;
    QCuadreTC: TQuery;
    SmallintField1: TSmallintField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField1: TStringField;
    QSumaCuadreTC: TQuery;
    QPaidoutTC: TQuery;
    QDevolucionTC: TQuery;
    QAbonosTC: TQuery;
    QDebitoTC: TQuery;
    QSumaCuadreTCsumPrecioVenta: TFloatField;
    QSumaCuadreTCSumGanancia: TFloatField;
    QDevolucionTCsumPrecioVenta: TFloatField;
    QAbonosTCsumPrecioVenta: TFloatField;
    QDebitoTCsumPrecioVenta: TFloatField;
    QPaidoutTCsumPrecioVenta: TFloatField;
    QCuadreT: TQuery;
    SmallintField2: TSmallintField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField2: TStringField;
    QSumaCuadreT: TQuery;
    QPaidOutT: TQuery;
    QDevolucionT: TQuery;
    QAbonosT: TQuery;
    QDebitoT: TQuery;
    QSumaCuadreTsumPrecioVenta: TFloatField;
    QSumaCuadreTSumGanancia: TFloatField;
    QPaidOutTsumPrecioVenta: TFloatField;
    QDevolucionTsumPrecioVenta: TFloatField;
    QAbonosTsumPrecioVenta: TFloatField;
    QDebitoTsumPrecioVenta: TFloatField;
    QRDBTextTotalVentas: TQRDBText;
    QRLabel10: TQRLabel;
    QCuadreCaja: TQuery;
    SmallintField3: TSmallintField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    StringField3: TStringField;
    QSumaCuadreCaja: TQuery;
    QPaidoutCaja: TQuery;
    QDevolucionCaja: TQuery;
    QAbonosCaja: TQuery;
    QDebitoCaja: TQuery;
    QPaidoutCajasumPrecioVenta: TFloatField;
    QDevolucionCajasumPrecioVenta: TFloatField;
    QAbonosCajasumPrecioVenta: TFloatField;
    QDebitoCajasumPrecioVenta: TFloatField;
    QSumaCuadreCajasumPrecioVenta: TFloatField;
    QSumaCuadreCajaSumGanancia: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRCuadre: TQRCuadre;

implementation

{$R *.DFM}

end.
