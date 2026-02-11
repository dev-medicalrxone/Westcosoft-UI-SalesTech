unit UQRCompositeRep;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  TFQRCompositeReport = class(TForm)
    CompositeReport: TQuickRep;
    QRCompositeReport1: TQRCompositeReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FQRCompositeReport: TFQRCompositeReport;

implementation

{$R *.DFM}

end.
