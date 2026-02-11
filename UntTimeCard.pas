unit UntTimeCard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,
  Vcl.WinXPickers, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmTimeCard = class(TForm)
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    btnOk: TButton;
    dxBarButton2: TToolBar;
    tbEdit: TToolButton;
    ToolButton9: TToolButton;
    ToolButton8: TToolButton;
    Panel1: TPanel;
    dtp: TDatePicker;
    tbFilter: TToolButton;
    ToolButton1: TToolButton;
    qSumTotalTimeCard: TFDQuery;
    StatusBar1: TStatusBar;
    ToolButton2: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure dtpChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbFilterClick(Sender: TObject);
    procedure tbEditClick(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    From, To_: TDate;
    { Public declarations }
  end;

var
  FrmTimeCard: TFrmTimeCard;

implementation

{$R *.dfm}

uses UntDMMidas, UntFilterTimeCard, UntEditTimeCard, UntCommonPOS;

procedure TFrmTimeCard.dtpChange(Sender: TObject);
begin
  With DMMidas do
  begin
    cdsTime_Card.Close;
    cdsTime_Card.CommandText := 'Select * from TIMECARD where CONVERT(VARCHAR, PUNCH_IN_1, 101) = ' + chr(39) + DateToStr(dtp.Date) + chr(39);
    cdsTime_Card.Open;
  end;
end;

procedure TFrmTimeCard.FormCreate(Sender: TObject);
begin
  dtp.Date := Date;
  From := Date;
  To_ := Date;
end;

procedure TFrmTimeCard.FormShow(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSPasswords.Close;
    CDSPasswords.CommandText := 'Select * from Passwords order by UserName';
    CDSPasswords.Open;
    {
    cdsTime_Card.Close;
    cdsTime_Card.CommandText := 'Select * from TIMECARD where CONVERT(VARCHAR, PUNCH_IN_1, 101) = ' + chr(39) + DateToStr(Date) + chr(39);
    cdsTime_Card.Open;
    }
  end;
end;

procedure TFrmTimeCard.tbEditClick(Sender: TObject);
begin
  With DMMidas do
  begin
    FrmEditTimeCard := TFrmEditTimeCard.Create(FrmTimeCard);
    With FrmEditTimeCard do
    begin
      cdsTime_Card.Edit;
      ShowModal;
      if ModalResult = mrOk then cdsTime_Card.Post;
      if ModalResult = mrCancel then cdsTime_Card.Cancel;
      cdsTime_Card.Refresh;
      Free;
    end;
  end;
end;

procedure TFrmTimeCard.tbFilterClick(Sender: TObject);
begin
  FrmFilterTimeCard := TFrmFilterTimeCard.Create(FrmTimeCard);
  With FrmFilterTimeCard do
  begin
    ShowModal;
    With DMMidas do
    begin
      cdsTime_Card.Close;
      if cbFilterByEmp.Checked then
      begin
        cdsTime_Card.CommandText := 'Select * from TIMECARD where CONVERT(VARCHAR, PUNCH_IN_1, 101) between ' + chr(39) + DateToStr(FrmFilterTimeCard.dtpFrom.Date) + chr(39) + ' and ' + chr(39) + DateToStr(FrmFilterTimeCard.dtpTo.Date) + chr(39) + ' and EMPLOYEE = ' + CDSPasswordsUSERNO.AsString;
      end
      else
      begin
        cdsTime_Card.CommandText := 'Select * from TIMECARD where CONVERT(VARCHAR, PUNCH_IN_1, 101) between ' + chr(39) + DateToStr(FrmFilterTimeCard.dtpFrom.Date) + chr(39) + ' and ' + chr(39) + DateToStr(FrmFilterTimeCard.dtpTo.Date) + chr(39);
      end;
      cdsTime_Card.Open;

    end;
    From := FrmFilterTimeCard.dtpFrom.Date;
    To_ := FrmFilterTimeCard.dtpTo.Date;
    FrmFilterTimeCard := Nil;
    Free;
  end;
end;

procedure TFrmTimeCard.ToolButton1Click(Sender: TObject);
begin
  With DMMidas do
  begin
    qSumTotalTimeCard.Close;
    qSumTotalTimeCard.SQL.Text := 'select CONVERT(varchar, DATEADD(second, SUM(SECONDS), 0), 108) as THoursWorked from TIMECARD ' +
                                  ' where CONVERT(VARCHAR, PUNCH_IN_1, 101) between ' + chr(39) + DateToStr(From) + chr(39) + ' and ' + chr(39) + DateToStr(To_) + chr(39) + ' and EMPLOYEE = ' + cdsTime_CardEMPLOYEE.AsString;
    qSumTotalTimeCard.Open;
    ShowMessage(cdsTime_CardEmployee_define.Value + ', Total hours worked from ' + DateToStr(From) + ' To ' + DateToStr(To_) + '  '+ qSumTotalTimeCard.FieldByName('THoursWorked').AsString);
  end;
end;

procedure TFrmTimeCard.ToolButton2Click(Sender: TObject);
begin
  if DMMidas.cdsTime_CardEMPLOYEE.Value > 0 then
  begin
    CommonPOS.DisconnectFromDatabase;
    With DMMidas.TIMECARD_TOTALHOURSWORKED do
    begin
      Prepare;
      ParamByName('@FROM').Value := FrmTimeCard.From;
      ParamByName('@TO').Value := FrmTimeCard.To_;
      ParamByName('@EMPLOEE').Value := DMMidas.cdsTime_CardEMPLOYEE.Value;
      ExecProc;
      FrmTimeCard.StatusBar1.Panels[0].Text := 'Total hours worked for ' + DMMidas.cdsTime_CardEmployee_define.Value + ' from ' + DateToStr(FrmTimeCard.From) + ' and ' + DateToStr(FrmTimeCard.To_) + '   ' + DMMidas.TIMECARD_TOTALHOURSWORKED.ParamByName('@THW').Value;
      //ShowMessage(DMMidas.TIMECARD_TOTALHOURSWORKED.ParamByName('@THW').Value);
    end;
  end;
end;

procedure TFrmTimeCard.ToolButton8Click(Sender: TObject);
begin
  DMMidas.cdsTime_Card.Refresh;
end;

procedure TFrmTimeCard.ToolButton9Click(Sender: TObject);
begin
  with DMMidas do
  begin
    if MessageDlg('Delete Time card?', mtConfirmation, [mbYes, mbNo], 0)
      = mrYes then
    begin
      cdsTime_Card.Delete;
    end;
  end;
end;

end.
