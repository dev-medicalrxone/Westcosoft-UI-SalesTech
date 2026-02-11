unit UntRptHistorial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, Data.DB;

type
  TFRptHistorial = class(TForm)
    DSPrescriptionsView: TDataSource;
    PrescriptionsView2: TDataSource;
    DSPacientes: TDataSource;
    procedure DSPacientesDataChange(Sender: TObject; Field: TField);
    procedure RptSignatureBeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRptHistorial: TFRptHistorial;

implementation

uses UntDMMidas;

{$R *.dfm}




procedure TFRptHistorial.DSPacientesDataChange(Sender: TObject;
  Field: TField);
begin
{ With DM do
  begin
    CDSPrescriptionsView.Close;
    CDSPrescriptionsView.CommandText := 'Select * from Rx_procesadas where FechaOTC Between '  + #39 + Prescription.Desde +  #39 + ' and ' + #39 + Prescription.Hasta + #39 + ' and NUMEROCLIENTE = ' + IntToStr(CDSPacientesNUMEROCLIENTE.Value) + ' AND PLANMEDICO <> ' + #39 + 'CAS' + #39 +  ' order by NUMERORECETA, FechaOTC'; //
    CDSPrescriptionsView.Open;
    if CDSPrescriptionsViewMEDICAMENTO.Value = '' then
    RptHistorial.DataPipeline := ppBDEPipelinePrescriptionsView2;
    CDSPrescriptionsView2.Close;
    CDSPrescriptionsView2.CommandText := 'Select * from Rx_procesadas where FechaOTC Between '  + #39 + Prescription.Desde +  #39 + ' and ' + #39 + Prescription.Hasta + #39 + ' and NUMEROCLIENTE = ' + IntToStr(CDSPacientesNUMEROCLIENTE.Value) + ' AND PLANMEDICO = ' + #39 + 'CAS' + #39 + ' order by NUMERORECETA, FechaOTC';
    CDSPrescriptionsView2.Open;
  end;}
end;

procedure TFRptHistorial.RptSignatureBeforePrint(Sender: TObject);
begin
   //ppImage1.Picture.LoadFromFile('C:\mysigimage.jpg');
end;

end.
