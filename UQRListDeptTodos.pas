unit UQRListDeptTodos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  TFQRListFormTodos = class(TForm)
    QRListadoDept: TQuickRep;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QListDept: TQuery;
    QListDeptNDC: TStringField;
    QListDeptDescripcion: TStringField;
    QListDeptTipo: TStringField;
    QListDeptFechaExpiracion: TDateField;
    QListDeptPrecio: TFloatField;
    QListDeptCodigo: TStringField;
    QListDeptCosto: TFloatField;
    QListDeptRBP: TFloatField;
    QListDeptNumeroSuplidor: TStringField;
    QListDeptTamano: TSmallintField;
    QListDeptCodigoBarra: TStringField;
    QListDeptDepartamento: TSmallintField;
    QListDeptLote: TStringField;
    QListDeptEspecial: TFloatField;
    QListDeptComEspecial: TDateField;
    QListDeptTerminaEspecial: TDateField;
    QListDeptPorcientoDescuento: TStringField;
    QListDeptUltimoCambio: TStringField;
    QListDeptUltimaVenta: TDateField;
    QListDeptQtyInventario: TFloatField;
    QListDeptCMaxInventario: TFloatField;
    QListDeptCMinInventario: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FQRListFormTodos: TFQRListFormTodos;

implementation

{$R *.DFM}

end.
