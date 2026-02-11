unit UntPrintOption;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFrmPrintingOption = class(TForm)
    CBPrint: TCheckBox;
    CBemail: TCheckBox;
    Panel1: TPanel;
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrintingOption: TFrmPrintingOption;

implementation

{$R *.dfm}

end.
