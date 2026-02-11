unit UntUsuario;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls;

type
  TFUsuarioDlg = class(TForm)
    Label1: TLabel;
    EditUsuario: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUsuarioDlg: TFUsuarioDlg;

implementation

uses  
 UData;
{$R *.DFM}

procedure TFUsuarioDlg.Timer1Timer(Sender: TObject);
begin
{  DataModuleRecetas.QBuscarPaciente.Close;
  DataModuleRecetas.QBuscarPaciente.Open;
  DtMdlData.QFindMedication.Close;
  DtMdlData.QFindMedication.Open;
 }
end;

end.
 
