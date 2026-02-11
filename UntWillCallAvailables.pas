unit UntWillCallAvailables;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, ExtCtrls, Keyboard, Mask, DBCtrls,
  StdCtrls, Buttons, Grids, DBGrids, db;

type
  TFrmWillCallAvailables = class(TForm)
    Panel1: TPanel;
    btnOK: TButton;
    Panel2: TPanel;
    EditSearch: TEdit;
    DBGrid2: TDBGrid;
    procedure EditSearchKeyPress(Sender: TObject; var Key: Char);
    procedure EditSearchExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmWillCallAvailables: TFrmWillCallAvailables;

implementation

{$R *.dfm}

uses  UntDMWC, UntDMCentralCredit, UntCommon, UntCommonPOS, UntQueries,
  UntDMMidas;

procedure TFrmWillCallAvailables.DBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = CHR(13) then  btnOK.Click;
end;

procedure TFrmWillCallAvailables.EditSearchExit(Sender: TObject);
begin
  Queries.OpenPatientWC(Trim(EditSearch.Text), 0);
end;

procedure TFrmWillCallAvailables.EditSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    CommonForm.Enter2Tab(FrmWillCallAvailables, Key);
  end;
end;

procedure TFrmWillCallAvailables.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //Queries.OpenPatient('','','',DMwc.cdsWC_PATIENTSNUMEROCLIENTE.Value);
  if DMwc.cdsWC_PATIENTS.RecordCount > 0 then
  begin
    Queries.OpenWillCall_Status(IntToStr(DMwc.cdsWC_PATIENTSBAG_NUMBER.Value));
    //Queries.OpenPatient('','','',DMwc.cdsWC_PATIENTSNUMEROCLIENTE.Value);
    With DMMidas do
    begin
      //QClientesFD.Connection := FDConnection2;
      {CommonPOS.SetConnection(QClientesFD);
      CDSPacientes.Close;
      CDSPacientes.CommandText := 'Select * from Pacientes with (NOLOCK) where NumeroCliente = ' + IntToStr(DMwc.cdsWC_PATIENTSNUMEROCLIENTE.Value);
      CDSPacientes.Open;}
    end;
  end;
end;

end.
