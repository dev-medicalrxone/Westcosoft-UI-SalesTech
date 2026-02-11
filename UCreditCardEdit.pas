unit UCreditCardEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCtrls, Grids, DBGrids, Db, ExtCtrls,
  ComCtrls;

type
  TFCreditCardEdit = class(TForm)
    Panel1: TPanel;
    DSCreditCards: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    EditTrans: TEdit;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    procedure EditTransExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCreditCardEdit: TFCreditCardEdit;

implementation

{$R *.DFM}

procedure TFCreditCardEdit.EditTransExit(Sender: TObject);
begin
  //if TCreditCards.Locate('Transaccion', EditTrans.Text, []) then
  //else
 //ShowMessage('Numero de Transacción no encontrada, trate otra vez...');
end;

procedure TFCreditCardEdit.FormActivate(Sender: TObject);
begin
  //TCreditCards.Filtered := True;
  //TCreditCards.Filter := 'Fecha = ' + chr(39) + DateToStr(DateTimePicker1.Date)+chr(39);
end;

end.
