unit UntDelInfo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmDelInfo = class(TForm)
    Label1: TLabel;
    EditDelName: TEdit;
    EditDelPhone: TEdit;
    Label2: TLabel;
    EditDelAddress1: TEdit;
    Label3: TLabel;
    EditDelAddress2: TEdit;
    Label4: TLabel;
    EditDelCity: TEdit;
    Label5: TLabel;
    EditDelState: TEdit;
    Label6: TLabel;
    EditDelZipCode: TEdit;
    Label7: TLabel;
    EditDelBy: TEdit;
    Label8: TLabel;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDelInfo: TfrmDelInfo;

implementation

{$R *.dfm}

uses UntSearchCust2, UntDMMidas;

procedure TfrmDelInfo.Button3Click(Sender: TObject);
begin
  FrmSearchCust2 := TFrmSearchCust2.Create(nil);
  with FrmSearchCust2 do
  begin
    ShowModal;
    if ModalResult = mrok then
    begin
      with DMMidas do
      begin
        EditDelName.Text := CDSClientesNombreCompleto2.Value;
        EditDelPhone.Text := CDSClientesCELULAR.asString;
        EditDelAddress1.Text := CDSClientesDIRECCION1.Value;
        EditDelAddress2.Text := CDSClientesDIRECCION2.Value;
        EditDelCity.Text := CDSClientesCIUDAD.Value;
        EditDelState.Text := CDSClientesESTADO.Value;
        EditDelZipCode.Text := CDSClientesCODIGOPOSTAL.Value;
      end;
    end;
  end;
end;

end.
