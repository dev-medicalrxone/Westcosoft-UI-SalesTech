unit UntEnterBarcode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFrmEnterBarcode = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    EditBarcode1: TEdit;
    EditBarcode2: TEdit;
    Button1: TButton;
    Button2: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEnterBarcode: TFrmEnterBarcode;

implementation

{$R *.dfm}

end.
