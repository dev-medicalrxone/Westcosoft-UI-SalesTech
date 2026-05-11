unit untFilters;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls;

type
  TFrmFilters = class(TForm)
    Panel1: TPanel;
    btnOk: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cbDept: TCheckBox;
    cbSubDept: TCheckBox;
    EditDept: TEdit;
    EditSubDept: TEdit;
    TabSheet3: TTabSheet;
    Label3: TLabel;
    dateFrom: TDateTimePicker;
    dateTo: TDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    cbId: TComboBox;
    cbSupplier: TCheckBox;
    EditSupplier: TEdit;
    cbDate: TCheckBox;
    cbClient: TCheckBox;
    EditClientName: TEdit;
    Desde: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Hasta: TDateTimePicker;
    procedure cbClientClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbDeptClick(Sender: TObject);
    procedure cbSubDeptClick(Sender: TObject);
    procedure dateFromChange(Sender: TObject);
    procedure getId;
    procedure dateToChange(Sender: TObject);
    procedure cbSupplierClick(Sender: TObject);
    procedure cbDateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    clientNo, NoDept: String;
  end;

var
  FrmFilters: TFrmFilters;

implementation

{$R *.dfm}

uses UntSearchCust2, UntDMMidas, UntDepartments, UntSubDpt, UntSuppliers;

procedure TFrmFilters.cbClientClick(Sender: TObject);
begin
  if cbClient.Checked = True then
  begin
    FrmSearchCust2 := TFrmSearchCust2.Create(nil);
    with FrmSearchCust2 do
    begin
      Tag := 1;
      ShowModal;
      if ModalResult = mrOk then
      begin
        clientNo := IntToStr(dmmidas.CDSClientesNUMEROCLIENTE.Value);
        EditClientName.Text := DMMidas.CDSClientesNombreCompleto2.Value;
      end
      else
      begin
        cbClient.Checked := False;
        clientNo := '';
        EditClientName.Text := '';
      end;
    end;
    FrmSearchCust2.Free;;
    FrmSearchCust2 := Nil;
  end;
end;

procedure TFrmFilters.cbDateClick(Sender: TObject);
begin
  Desde.Enabled := cbDate.Checked;        //To enable/disable datepicker AGC042826
  hasta.Enabled := cbDate.Checked;
end;

procedure TFrmFilters.cbDeptClick(Sender: TObject);
begin
  if cbDept.Checked = True then
  begin
    cbSubDept.Checked := False;
    With DMMidas do
    begin
      FrmDepartments := TFrmDepartments.Create(self);
      With FrmDepartments do
      begin
        ShowModal;
        If ModalResult = mrOK then
        begin
          EditDept.Text := CDSDepartamentosDESCRIPCION.Value;
          NoDept := IntToStr(CDSDepartamentosDEPARTAMENTO.Value);
        end
        else
        begin
          EditDept.Text := '';
          NoDept := '';
          cbDept.Checked := False;
        end;
        FrmDepartments := Nil;
        Free;
      end;
    end;
  end;
end;

procedure TFrmFilters.cbSubDeptClick(Sender: TObject);
begin
  if cbSubDept.Checked = True then
  begin
    cbDept.Checked := False;
    With DMMidas do
    begin
      FrmDepartments := TFrmDepartments.Create(self);
      With FrmDepartments do
      begin
        ShowModal;
        If ModalResult = mrOK then
        begin
          EditSubDept.Text := CDSSubDeptDESCRIPCION.Value;
          NoDept := IntToStr(CDSSubDeptDEPARTAMENTO.Value);
        end
        else
        begin
          EditDept.Text := '';
          NoDept := '';
          cbSubDept.Checked := False;
        end;
        FrmDepartments := Nil;
        Free;
      end;
    end;
  end;
end;

procedure TFrmFilters.cbSupplierClick(Sender: TObject);
begin
  if cbSupplier.Checked = True then
  begin
    cbSubDept.Checked := False;
    cbDept.Checked := False;
    With DMMidas do
    begin
      FrmSuppliers := TFrmSuppliers.Create(self);
      With FrmSuppliers do
      begin
        Panel1.Visible := False;
        ShowModal;
        If ModalResult = mrOK then
        begin
          EditSupplier.Text := CDSSuplidoresSUPLIDOR.Value;
          NoDept := IntToStr(CDSSuplidoresNUMEROSUPLIDOR.Value);
        end
        else
        begin
          EditSupplier.Text := '';
          NoDept := '';
          cbSupplier.Checked := False;
        end;
        FrmSuppliers := Nil;
        Free;
      end;
    end;
  end;
end;

procedure TFrmFilters.dateFromChange(Sender: TObject);
begin
  getId;
end;

procedure TFrmFilters.dateToChange(Sender: TObject);
begin
  getId;
end;

procedure TFrmFilters.FormCreate(Sender: TObject);
begin
  Desde.Date := Date-30;
  Hasta.Date := Date;
end;

procedure TFrmFilters.getId;
begin
  cbId.Items.Clear;
  with DMMidas do
  begin
    CDSDailyTotals.Close;
    QDailytotalsFD.SQL.Text := 'Select * from dailytotals where Cast(SalesDate AS DATE) between ' + chr(39) + DateToStr(dateFrom.Date) + chr(39) + ' and ' + chr(39) + DateToStr(dateTo.Date) + chr(39);
    CDSDailyTotals.Open;
    while not CDSDailyTotals.Eof do
    begin
      cbId.Items.Add(CDSDailyTotalsID.asString);
      CDSDailyTotals.Next;
    end;
  end;
    cbId.ItemIndex := 0;
end;

end.
