unit URepIngGastos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  TFQRIngresosYGastos = class(TForm)
    QRIngresosGastos: TQuickRep;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    TIngresosGastos: TTable;
    QSumaCuentas: TQuery;
    QSumaCuentasTCuenta: TFloatField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    TIngresosGastosNumero: TIntegerField;
    TIngresosGastosIncomeExpense: TStringField;
    TIngresosGastosDescripcion: TStringField;
    TIngresosGastosCantidad: TFloatField;
    QRBand1: TQRBand;
    QTotalExpense: TQuery;
    QTotalIncome: TQuery;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QTotalExpenseTExpense: TFloatField;
    QTotalIncomeTIncome: TFloatField;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRSysData3: TQRSysData;
    TStore: TTable;
    TStoreMessageID: TStringField;
    TStoreVersion: TStringField;
    TStoreRoutingData: TStringField;
    TStoreBankID: TStringField;
    TStoreMerchantID: TStringField;
    TStoreTerminalType: TStringField;
    TStoreModemComPort: TIntegerField;
    TStoreStoreName: TStringField;
    TStoreStoreTelephone: TStringField;
    TStoreStoreAddress: TStringField;
    TStoreFacturaRecibo: TStringField;
    TStoreSettlementBankID: TStringField;
    TStoreCheque: TIntegerField;
    TStoreTelefono: TStringField;
    QRDBText6: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabel9: TQRLabel;
    QRExpr2: TQRExpr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FQRIngresosYGastos: TFQRIngresosYGastos;

implementation

{$R *.DFM}

end.
