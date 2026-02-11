unit UntPrescriptions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFrmPrescriptions = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    btnOk: TButton;
    procedure ToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    BagNumber: Integer;
  end;

var
  FrmPrescriptions: TFrmPrescriptions;

implementation

{$R *.dfm}

uses UntDMMidas, untMain, UntDMWC, UntCommonPOS;

procedure TFrmPrescriptions.ToolButton1Click(Sender: TObject);
Var
  NOTIFICATION_MODE1, NOTIFICATION_MODE2, Tel: String;
  myDate: TDateTime;
  plan: String;
begin
  With DMwc do
  begin
    qForAll.SQL.Text := 'select count(*) as TCount from WILLCALL where RX_NUMBER = ' + DMMidas.cdsOTCNUMERORECETA.asString;
    qForAll.Open;
    if qForAll.FieldByName('TCount').Value > 0 then
    begin
      CommonPOS.ShowMessageStr('Prescription in bag!', 12, clBlack);
      Exit;
    end;
  end;
  With DMMidas do
  begin
    if DMwc.cdsWillCall.RecordCount = 0 then
    begin
      myDate := Now;
      QBorrarNonMatchedNDC.SQL.Text := 'Update WillCall_Status set Date_Created = ' + chr(39) + DateToStr(Date) + chr(39) + ', TIME_CREATED = ' + CHR(39) + FormatDateTime('c', myDate) + chr(39) + ' where Bag_Number = ' + IntToStr(BagNumber);
      QBorrarNonMatchedNDC.ExecSQL;
    end;
    if DMMidas.CDSOTCPLAN_MEDICO.Value = 'CAS' then
    plan := '1'
    else
    begin
      plan := '2'
    end;
    if DMMidas.CDSOTCPLAN_MEDICO.IsNull then plan := '1';
    DMwc.qForAll.SQL.Text := 'INSERT INTO[dbo].[WILLCALL]'+
           '([BAG_NUMBER]'+
           ',[DRUG_DESCRIPTION]'+
           ',[CUSTOMER_NUMBER]'+
           ',[STATUS]'+
           ',[RX_DATE]'+
           ',[NDC]'+
           ',[PRUDUCT_ID]'+
           ',[RX_NUMBER]'+
           ',[COPAY]'+
           ',[COST]'+
           ',[PRICE]'+
           ',[ATTENDED_BY]'+
           ',[USER_NO]'+
           ',[CASH_PLAN]'+
           ',[QUANTITY]'+
           ',[BATCH_NUMBER]'+
           ',[OTC_NUMBER]' +
           ',[WILLCALL_DATE_ENTERED]'+
           ',[POS_PICKUP])'+
     'VALUES' +
     '('+ IntToStr(BagNumber) +
     ','+chr(39) + Trim(Copy(CDSOTCMEDICAMENTO.Value,1,35)) + chr(39) +
     ','+ IntToStr(CDSOTCNUMEROCLIENTE.Value) +
     ','+ '0' +
     ','+chr(39) + CDSOTCFECHAOTC.asString + chr(39) +
     ','+chr(39) + Trim(Copy(CDSOTCNDC.Value, 1, 11)) + chr(39) +
     ','+chr(39) + IntToStr(CDSOTCPRODUCT_ID.Value) + chr(39) +
     ','+chr(39) + IntToStr(CDSOTCNUMERORECETA.Value) + chr(39) +
     ','+chr(39) + FloatToStr(CDSOTCDEDUCIBLE.asFloat) + chr(39) +
     ','+chr(39) + FloatToStr(CDSOTCCOSTOVENTA.asFloat) + chr(39) +
     ','+chr(39) + FloatToStr(CDSOTCTOTAL.asFloat) + chr(39) +
     ','+chr(39) + Trim(Copy(CDSOTCATENDIDOPOR.Value, 1, 5)) +chr(39) +
     ','+chr(39) + IntToStr(CDSOTCUSUARIO_NO.value) + chr(39) +
     ','+chr(39) + plan + chr(39) +
     ','+chr(39) + FloatToStr(CDSOTCQTY.asFloat) + chr(39) +
     ','+chr(39) + IntToStr(DMwc.cdsWillCall_StatusID.Value) + chr(39) +        //IntToStr(CDSOTCBATCH_NUMBER.Value)
     ','+chr(39) + IntToStr(CDSOTCOTCNUMBER.Value) + Chr(39)+
     ','+chr(39) + DateToStr(Date) + chr(39) +
     ',1'+ ')';
    DMwc.qForAll.ExecSQL;


    DMwc.cdsWillCall.Refresh;

    if CDSSetupMYREFILL_UPDATE_SMARTPICKUP.Value = True then
    begin
      CommonPOS.DisconnectFromDatabase;
      With RX_UPDATE_REFILL_QUERY do
      begin
        Prepare;
        ParamByName('@NORX').Value := CDSOTCNUMERORECETA.Value;
        ExecProc;
      end;
    end;
    CommonPOS.UpdateWorkFlow('S', Trim(CommonPOS.User) + ' ' + DateTimeToStr(Now), CDSOTCOTCNUMBER.Value);
    if (CDSClientesWC_NO_NOTIFICATION.Value = False) or (CDSClientesWC_NO_NOTIFICATION.IsNull = True) then
    begin
      if (CDSClientesNOTIFICATION_MODE_PHONE.Value = 1) or (CDSClientesNOTIFICATION_MODE_CEL.Value = 1) then
      begin
         NOTIFICATION_MODE1 := ',NOTIFICATION_MODE1 = 3';
      end
      else
      begin
        if CDSClientesNOTIFICATION_MODE_SMS.Value = 1 then NOTIFICATION_MODE1 := ',NOTIFICATION_MODE1 = 1' else NOTIFICATION_MODE1 := '';
        if CDSClientesNOTIFICATION_MODE_EMAIL.Value = 1 then NOTIFICATION_MODE2 := ',NOTIFICATION_MODE2 = 2' else NOTIFICATION_MODE2 := '';
      end;
    end
    else
    begin
      NOTIFICATION_MODE1 :=  ',NOTIFICATION_MODE1 = 0';
      NOTIFICATION_MODE2 :=  ',NOTIFICATION_MODE2 = 0';
    end;


    if CDSClientesNOTIFICATION_MODE_PHONE.Value = 1 then
      Tel := CDSClientesTELEFONO.Value
    else
      Tel := CDSClientesCELULAR.Value;


    QBorrarNonMatchedNDC.SQL.Text := 'Update WillCall_Status set NOTIFICATION_MODE1_EMAIL = ' +
    chr(39) + Trim(CDSClientesEMAIL.Text) + chr(39) +
    ', NOTIFICATION_MODE2_TELEPHONE = ' + chr(39) + CommonPOS.TelephoneJustNumbers(Tel) + chr(39) +
    ', CUSTOMER_NUMBER = ' + CDSClientesNUMEROCLIENTE.AsString +
    NOTIFICATION_MODE1 + NOTIFICATION_MODE2 +
    ',ADDRESS1 = ' + CHR(39) + Trim(CDSClientesDIRECCION1.Value) + chr(39) +
    ',ADDRESS2 = ' + CHR(39) + Trim(CDSClientesDIRECCION2.Value) + chr(39) +
    ',NAME = ' + CHR(39) + Trim(CDSClientesNOMBRE.Value) + chr(39) +
    ',LASTNAME = ' + CHR(39) + Trim(CDSClientesAPELLIDOPATERNO.Value) + chr(39) +
    ',MAIDENNAME = ' + CHR(39) + Trim(CDSClientesAPELLIDOMATERNO.Value) + chr(39) +
    ',CITY = ' + CHR(39) + Trim(CDSClientesCIUDAD.Value) + chr(39) +
    ',ZIPCODE = ' + CHR(39) + Trim(CDSClientesCODIGOPOSTAL.Value) + chr(39) +
     ' Where Bag_Number = ' + IntToStr(BagNumber);
    QBorrarNonMatchedNDC.ExecSQL();
    DMwc.cdsWillCall_Status.Refresh;
  end;

end;


end.
