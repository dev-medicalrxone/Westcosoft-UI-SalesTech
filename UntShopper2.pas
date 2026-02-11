unit UntShopper2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, Mask, ComCtrls,
  DBCtrls, ExtCtrls, DB, Grids, DBGrids, ToolWin, Vcl.Buttons;

type
  TFrmShopper2 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EidtAmount: TMaskEdit;
    cbDiscountAbove: TComboBox;
    cbDiscountBelow: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    Panel2: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    Button1: TButton;
    Button2: TButton;
    Panel3: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    DBGrid1: TDBGrid;
    dtpDesde: TEdit;
    SpeedButton1: TSpeedButton;
    dtpHasta: TEdit;
    SpeedButton2: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmShopper2: TFrmShopper2;

implementation

{$R *.dfm}

uses UntMain, UntDMMidas, UntSelectDateTime;

procedure TFrmShopper2.Button2Click(Sender: TObject);
Var
  SubDept: TStringList;
  I, POSCOMA: Integer;
  SQLStr, dpt: String;
  Fechas: String;
  counter : Integer;

begin
  With DMMidas do
  begin
    counter := 0;
    SQLStr := ' and (';
    CDSSubDept.First;
    if CDSSubDept.RecordCount > 0 then
    begin
      while NOT CDSSubDept.EOF do
      begin
        if CDSSubDeptEXCLUDE.Value = true then
        begin
          if counter = 0  then
            SQLStr := SQLStr + 'SUB_DEPARTAMENTO <> ' + CDSSubDeptDEPARTAMENTO.asString
          else
            SQLStr := SQLStr + ' or SUB_DEPARTAMENTO <> ' + CDSSubDeptDEPARTAMENTO.asString;
          counter := counter + 1;
        end;
        CDSSubDept.Next;
      end;
      if SQLStr <> ' and (' then
        SQLStr := SQLStr + ' or SUB_DEPARTAMENTO is null' + ')'
      else
        SQLStr := SQLStr + ' SUB_DEPARTAMENTO is null' + ')'
    end
    else
      SQLStr := '';

      Fechas := 'COMESPECIAL = ' + chr(39) + dtpDesde.Text + chr(39) + ', TERMINAESPECIAL = '+ chr(39) + dtpHasta.Text + chr(39);
      SQLQuery1.SQL.Text := 'update INVENTARIOPISO set ESPECIAL = PRECIO - (PRECIO * ' + FloatToStr(StrToInt(cbDiscountAbove.Text) / 100) +  '),'+ FECHAS +' WHERE DEPARTAMENTO = ' + CDSDepartamentosDEPARTAMENTO.AsString + ' AND PRECIO >= ' + Trim(EidtAmount.Text) + ' ' + SQLStr;
      SQLQuery1.ExecSQL;
      SQLQuery1.SQL.Text := 'update INVENTARIOPISO set ESPECIAL = PRECIO - (PRECIO * ' + FloatToStr(StrToInt(cbDiscountBelow.Text) / 100) +  '),'+ FECHAS +' WHERE DEPARTAMENTO = ' + CDSDepartamentosDEPARTAMENTO.AsString + ' AND PRECIO < ' + Trim(EidtAmount.Text)  + ' ' + SQLStr;
      SQLQuery1.ExecSQL;
      ShowMessage('Shopper was created!');
  end;
end;

procedure TFrmShopper2.DBGrid1DblClick(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSSubDept.Edit;
    if CDSSubDeptEXCLUDE.Value = True then
      CDSSubDeptEXCLUDE.Value := False
    else
      CDSSubDeptEXCLUDE.Value := True;
    CDSSubDept.Post;
  end;
end;

procedure TFrmShopper2.DBLookupComboBox1Exit(Sender: TObject);
begin
  //Memo1.Clear;
  With DMMidas do
  begin
    CDSSubDept.First;
    while not CDSSubDept.Eof do
    begin
      //Memo1.Lines.Add(CDSSubDeptDEPARTAMENTO.AsString + ',' + CDSSubDeptDESCRIPCION.asString.Trim);
      CDSSubDept.Next;
    end;
  end;
end;

procedure TFrmShopper2.FormCreate(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSDepartamentos.close;
    CDSDepartamentos.CommandText := 'Select * from Departamento order by descripcion';
    CDSDepartamentos.Open;
  end;

  dtpDesde.Text := DateTimeToStr(now);
  dtpHasta.Text := DateTimeToStr(Now);
end;

procedure TFrmShopper2.SpeedButton1Click(Sender: TObject);
begin
  FrmSelectDateTime := TFrmSelectDateTime.Create(nil);
  With FrmSelectDateTime do
  begin
    ShowModal;
    if ModalResult = mrOk then
    begin
      dtpDesde.Text := DateToStr(FrmSelectDateTime.dtpDate.Date) + ' ' +  TimeToStr(FrmSelectDateTime.dtpTime.Time);
    end;
    FrmSelectDateTime := Nil;
    Free;
  end;
end;

procedure TFrmShopper2.SpeedButton2Click(Sender: TObject);
begin
  FrmSelectDateTime := TFrmSelectDateTime.Create(nil);
  With FrmSelectDateTime do
  begin
    ShowModal;
    if ModalResult = mrOk then
    begin
      dtpHasta.Text := DateToStr(FrmSelectDateTime.dtpDate.Date) + ' ' +  TimeToStr(FrmSelectDateTime.dtpTime.Time);
    end;
    FrmSelectDateTime := Nil;
    Free;
  end;
end;

procedure TFrmShopper2.ToolButton1Click(Sender: TObject);
begin
  With DMMidas do
  begin
    SQLQuery1.SQL.Text := 'Update SUB_DEPARTAMENTO set EXCLUDE = 1 where LINK_SUBDPT = ' + CDSDepartamentosDEPARTAMENTO.AsString;
    SQLQuery1.ExecSQL;
    CDSSubDept.Refresh;
  end;
end;

procedure TFrmShopper2.ToolButton2Click(Sender: TObject);
begin
  With DMMidas do
  begin
    SQLQuery1.SQL.Text := 'Update SUB_DEPARTAMENTO set EXCLUDE = 0 where LINK_SUBDPT = ' + CDSDepartamentosDEPARTAMENTO.AsString;
    SQLQuery1.ExecSQL;
    CDSSubDept.Refresh;
  end;
end;

end.
