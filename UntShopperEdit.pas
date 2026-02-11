unit UntShopperEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons;

type
  TFrmShopperEdit = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmShopperEdit: TFrmShopperEdit;

implementation

uses UntDMMidas, UntCommon, untMain, UntDepartments, UntCommonPOS,
  UntSelectDateTime;

{$R *.dfm}

procedure TFrmShopperEdit.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  CommonForm.Enter2tab(Self,Key);
end;

procedure TFrmShopperEdit.SpeedButton1Click(Sender: TObject);
Var
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  if CommonPOS.isAuthorized('', UserRights.MAIN_DEPT, false) then
  begin
    FrmDepartments := TFrmDepartments.Create(self);
    With FrmDepartments do
    begin
      ShowModal;
      If ModalResult = mrOK then
      begin
        DMMidas.cdsShopperDEPARTMENT.Value := DMMidas.CDSDepartamentosDEPARTAMENTO.Value;
      end
      else
      begin
        DMMidas.cdsShopperDEPARTMENT.Value := 0;
      end;
      Release;
    end;
  end;
end;

procedure TFrmShopperEdit.SpeedButton2Click(Sender: TObject);
Var
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  if CommonPOS.isAuthorized('', UserRights.MAIN_DEPT, false) then
  begin
    FrmDepartments := TFrmDepartments.Create(self);
    With FrmDepartments do
    begin
      ShowModal;
      If ModalResult = mrOK then
      begin
        DMMidas.cdsShopperSUB_DEPARTMENT.Value  :=  DMMidas.CDSSubDeptDEPARTAMENTO.Value;
      end
      else
      begin
        DMMidas.cdsShopperSUB_DEPARTMENT.Value := 0;
      end;
      Release;
    end;
  end;
end;

procedure TFrmShopperEdit.SpeedButton3Click(Sender: TObject);
begin
  FrmSelectDateTime := TFrmSelectDateTime.Create(nil);
  With FrmSelectDateTime do
  begin
    ShowModal;
    if ModalResult = mrOk then
    begin
      DMMidas.cdsShopperSTART_DATE.asString := DateToStr(FrmSelectDateTime.dtpDate.Date) + ' ' +  TimeToStr(FrmSelectDateTime.dtpTime.Time);
    end;
    FrmSelectDateTime := Nil;
    Free;
  end;
end;

procedure TFrmShopperEdit.SpeedButton4Click(Sender: TObject);
begin
  FrmSelectDateTime := TFrmSelectDateTime.Create(nil);
  With FrmSelectDateTime do
  begin
    ShowModal;
    if ModalResult = mrOk then
    begin
      dMMidas.cdsShopperEND_DATE.asString := DateToStr(FrmSelectDateTime.dtpDate.Date) + ' ' +  TimeToStr(FrmSelectDateTime.dtpTime.Time);
    end;
    FrmSelectDateTime := Nil;
    Free;
  end;
{  With DMMidas do
  begin
    cdsShopperEND_DATE.Value := CommonPOS.GetCalendar;
  end;
  }
end;

end.
