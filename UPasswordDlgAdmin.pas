unit UPasswordDlgAdmin;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons;

type
  TFPasswordDlgAdmin = class(TForm)
    Label1: TLabel;
    Password: TEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPasswordDlgAdmin: TFPasswordDlgAdmin;

implementation

{$R *.DFM}

end.
 
