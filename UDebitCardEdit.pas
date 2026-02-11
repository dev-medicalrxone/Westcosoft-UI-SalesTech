unit UDebitCardEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls,
  ComCtrls;

type
  TFDebitCardEdit = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    DSDebitCardEdit: TDataSource;
    EditTrans: TEdit;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    procedure EditTransExit(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDebitCardEdit: TFDebitCardEdit;

implementation

{$R *.DFM}

procedure TFDebitCardEdit.EditTransExit(Sender: TObject);
begin
 // if TDebitCardEdit.Locate('Transaccion', EditTrans.Text, []) then
 // else
//  ShowMessage('Numero de Transacción no encontrada, trate otra vez...');
end;

procedure TFDebitCardEdit.DateTimePicker1Change(Sender: TObject);
begin
{  DateTimePicker1.date := date;
  TDebitCardEdit.Filtered := True;
  TDebitCardEdit.Filter := 'Fecha = ' + chr(39) + DateToStr(DateTimePicker1.Date)+chr(39);
  }
end;

procedure TFDebitCardEdit.FormCreate(Sender: TObject);
begin
  DateTimePicker1.date := date;
end;

end.
