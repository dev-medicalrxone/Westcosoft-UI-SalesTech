unit UntWillCallStatus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, ExtCtrls, Keyboard, Mask, DBCtrls,
  StdCtrls, Buttons, Grids, DBGrids, db;

type
  TFrmWillCallStatus = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    GroupBox1: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmWillCallStatus: TFrmWillCallStatus;

implementation

{$R *.dfm}

uses UntDMwc, UntDMMidas;

procedure TFrmWillCallStatus.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmWillCallStatus := Nil;
  Action := caFree;
end;

end.
