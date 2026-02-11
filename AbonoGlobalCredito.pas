unit AbonoGlobalCredito;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TFAbonoGlobalCredito = class(TForm)
    Panel1: TPanel;
    EditCliente: TEdit;
    EditBalance: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAbonoGlobalCredito: TFAbonoGlobalCredito;

implementation

{$R *.DFM}

end.
