unit UntVentasenGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,  Grids, DBGrids, Spin, Keyboard, DBCtrls, ExtCtrls,
  Data.DB, ResourceLocalizer;

type
  TFrmGroupSales = class(TForm)
    Panel3: TPanel;
    EditSearch: TEdit;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    Panel1: TPanel;
    RadioButtonGroup: TRadioButton;
    RadioButtonCaja: TRadioButton;
    Bevel1: TBevel;
    Label3: TLabel;
    Bevel2: TBevel;
    GroupBox1: TGroupBox;
    BitBtn1: TButton;
    DBGrid1: TDBGrid;
    TouchKeyboard1: TTouchKeyboard;
    cxSpinEdit1: TSpinEdit;
    cxSpinEditCantTotal: TSpinEdit;
    cxCurrencyEdit1: TEdit;
    procedure EditSearchEnter(Sender: TObject);
    procedure EditSearchKeyPress(Sender: TObject; var Key: Char);
    function  GetHeader(User : String; Shift : Integer) : Integer;
    function  GetNewHeader(User : String; Shift: Integer): Integer;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AddProduct(ProdUPC, ProdDesc, ProdDept, Food, SubDetail, User: String;
                         Price, RegPrice, Disc, costo: Single; ProdQty, Suplidor, Shift: Integer);
    procedure cxSpinEdit1PropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxCurrencyEdit1Change(Sender: TObject);
    procedure EditSearchExit(Sender: TObject);
    procedure language;
    
  private
    { Private declarations }
  public
    Header: Integer;
  end;

var
  FrmGroupSales: TFrmGroupSales;
  Perc: Double;
implementation

uses UntDMMidas, UntSearchInv, untMain, UntQueries, UntSearchInv2,
  UntPOSTS, UntCommon, UntCommonPOS;

{$R *.dfm}

procedure TFrmGroupSales.cxCurrencyEdit1Change(Sender: TObject);
begin
  if CommonPOS.IsNumber(cxCurrencyEdit1.Text) then
    cxCurrencyEdit1.Color := clWhite
  else
    cxCurrencyEdit1.Color := clRed;
end;

procedure TFrmGroupSales.EditSearchEnter(Sender: TObject);
Var
  TaxMunicipal: String;
  TaxEstatal: String;
begin
  With DMMidas do
  begin
    if (CDSInventarioPisoTAXABLE.Value = '1') then TaxMunicipal := 'T' ELSE TaxMunicipal := 'F';
    if (CDSInventarioPisoTAXABLE_ESTATAL.Value = '1') then TaxEstatal := 'T' Else TaxEstatal := 'F';
  end;

  //BitBtn1.Enabled := False;
  if StrToFloat( cxCurrencyEdit1.text) > 0 then
  begin
    CommonPOS.Assemblie := True;
    With DMMidas do
    begin
      if FrmGroupSales.Tag = 0  then
      begin
        if RadioButtonGroup.Checked then
          CommonPOS.AddProduct('T',CDSInventarioPisoCODIGOBARRA.Value,CDSInventarioPisoDESCRIPCION.Value,CDSInventarioPisoDESCDEPT.Value,'F','',
                 CommonPOS.User, TaxMunicipal, TaxEstatal,strToFloat(cxCurrencyEdit1.text),
                 strToFloat(cxCurrencyEdit1.text), Perc, cxSpinEdit1.Value, 0,CDSInventarioPisoGROUP_QTY.Value ,0, CommonPOS.ID, CDSInventarioPisoPRODUCTNO.Value, CDSInventarioPisoSUB_DEPARTAMENTO.Value,0,0,false,false,'', 0,false,0, CDSInventarioPisoPROCESSED_FOOD.Value, false)
        else
          CommonPOS.AddProduct('T',CDSInventarioPisoCODIGOBARRA.Value,CDSInventarioPisoDESCRIPCION.Value,CDSInventarioPisoDESCDEPT.Value,'F','',
                 CommonPOS.User,TaxMunicipal, TaxEstatal, strToFloat(cxCurrencyEdit1.text),
                 strToFloat(cxCurrencyEdit1.text), Perc, 0, 0, CDSInventarioPisoGROUP_QTY.Value, 0, CommonPOS.ID, CDSInventarioPisoPRODUCTNO.Value, CDSInventarioPisoSUB_DEPARTAMENTO.Value,0,0,false,false,'',0,false,0,CDSInventarioPisoPROCESSED_FOOD.Value, false); //Header
     end
     else
     begin
        if RadioButtonCaja.Checked then
          CommonPOS.AddProduct('T',CDSInventarioPisoCODIGOBARRA.Value,CDSInventarioPisoDESCRIPCION.Value,
                   CDSInventarioPisoDESCDEPT.Value,'','',
                   CommonPOS.User, TaxMunicipal, TaxEstatal, strToFloat(cxCurrencyEdit1.text),
                   strToFloat(cxCurrencyEdit1.text), 0.0, CDSInventarioPisoCOSTO.asFloat * cxSpinEdit1.Value, cxSpinEdit1.Value, CDSInventarioPisoNUMEROSUPLIDOR.Value, CommonPOS.Turno, CommonPOS.ID, CDSInventarioPisoPRODUCTNO.Value, CDSInventarioPisoSUB_DEPARTAMENTO.Value,0,0,false,false,'',0,false,0,CDSInventarioPisoPROCESSED_FOOD.Value, false)
        else
          CommonPOS.AddProduct('T',CDSInventarioPisoCODIGOBARRA.Value,CDSInventarioPisoDESCRIPCION.Value,
                   CDSInventarioPisoDESCDEPT.Value,'','',
                   CommonPOS.User, TaxMunicipal, TaxEstatal, strToFloat(cxCurrencyEdit1.text),
                   strToFloat(cxCurrencyEdit1.text), 0.0, CDSInventarioPisoCOSTO.asFloat * cxSpinEdit1.Value, cxSpinEdit1.Value, CDSInventarioPisoNUMEROSUPLIDOR.Value, CommonPOS.Turno, CommonPOS.ID, CDSInventarioPisoPRODUCTNO.Value, CDSInventarioPisoSUB_DEPARTAMENTO.Value,0,0,false,false,'',0,false,0,CDSInventarioPisoPROCESSED_FOOD.Value, false);
     end;
     //cxSpinEdit1.Value := 0;
    end;
  end;
end;

procedure TFrmGroupSales.EditSearchExit(Sender: TObject);
Var
  NDCTFC: Char;
  NDCTF: String;
  TaxMunicipal: String;
  TaxEstatal: String;
begin
  if EditSearch.Text > '' then
  begin
    RadioButtonCaja.TabStop := False;
    RadioButtonGroup.TabStop := False;
      Queries.OpenInventory(EditSearch.Text, 'POS',false);
      if DMMidas.CDSInventarioPisoDESCRIPCION.Value > '' then
      begin
        if DMMidas.CDSInventarioPisoPRECIO_CAJA.Value > 0 then
        begin
          begin
              if FrmGroupSales.Tag = 0 then
              begin
                FrmSearchInv := TFrmSearchInv.Create(self);
                With FrmSearchInv do
                Begin
                  ShowModal;
                  If ModalResult = mrOK then
                  begin
                    With DMMidas do
                    begin
                      if (CDSInventarioPisoTAXABLE.Value = '1') then TaxMunicipal := 'T' ELSE TaxMunicipal := 'F';
                      if (CDSInventarioPisoTAXABLE_ESTATAL.Value = '1') then TaxEstatal := 'T' Else TaxEstatal := 'F';
                      EditSearch.Text := '';
                      //if RadioButtonGroup.Checked then
                      //begin
                      cxSpinEdit1.text := DMMidas.CDSInventarioPisoQTY_CAJA.asString;
                      cxCurrencyEdit1.text := FloatToStr(DMMidas.CDSInventarioPisoPRECIO_CAJA.asFloat);
                      cxCurrencyEdit1.ReadOnly := True;
                      EditSearch.SetFocus;
                      CommonPOS.AddProduct('T', CDSInventarioPisoCODIGOBARRA.Value,CDSInventarioPisoDESCRIPCION.Value,CDSInventarioPisoDESCDEPT.Value,'F','',
                      CommonPOS.User, TaxMunicipal, TaxEstatal, strToFloat(cxCurrencyEdit1.text),
                      strToFloat(cxCurrencyEdit1.text), Perc, cxSpinEdit1.Value, 0, cxSpinEdit1.Value,0, CommonPOS.ID, CDSInventarioPisoPRODUCTNO.Value, CDSInventarioPisoSUB_DEPARTAMENTO.Value,0,0,false,false,'',0,false,0,CDSInventarioPisoPROCESSED_FOOD.Value, false)
                      {end
                      else
                      begin
                        cxSpinEdit1.Value := DMMidas.CDSInventarioPisoQTY_CAJA.Value;
                        cxSpinEdit1.Enabled := True;
                        cxSpinEdit1.SetFocus;
                        CommonPOS.AddProduct(CDSInventarioPisoCODIGOBARRA.Value,CDSInventarioPisoDESCRIPCION.Value,CDSInventarioPisoDESCDEPT.Value,'F','',
                        CommonPOS.User,TaxMunicipal, TaxEstatal, cxCurrencyEdit1.Value,
                        cxCurrencyEdit1.Value, Perc, 0, 0, CDSInventarioPisoGROUP_QTY.Value, 0, CommonPOS.ID, CDSInventarioPisoPRODUCTNO.Value); //Header
                      end;}
                    end;
                  end;
                end;
              end
              else
              begin
                if DMMidas.CDSInventarioPiso.RecordCount > 1 then
                begin
                  FrmSearchInv2 := TFrmSearchInv2.Create(self);
                  With FrmSearchInv2 do
                  Begin
                    ShowModal;
                  end;
                end;
                With DMMidas do
                begin
                  if (CDSInventarioPisoTAXABLE.Value = '1') then TaxMunicipal := 'T' ELSE TaxMunicipal := 'F';
                  if (CDSInventarioPisoTAXABLE_ESTATAL.Value = '1') then TaxEstatal := 'T' Else TaxEstatal := 'F';
                  EditSearch.Text := '';
                  {cxSpinEdit1.Value := DMMidas.CDSInventarioPisoQTY_CAJA.Value;
                  cxCurrencyEdit1.Value := DMMidas.CDSInventarioPisoPRECIO_CAJA.Value;
                  cxCurrencyEdit1.Properties.ReadOnly := True;
                  EditSearch.SetFocus;
                  CommonPOS.AddProduct(CDSInventarioPisoCODIGOBARRA.Value,CDSInventarioPisoDESCRIPCION.Value,CDSInventarioPisoDESCDEPT.Value,'F','',
                  CommonPOS.User, TaxMunicipal, TaxEstatal,cxCurrencyEdit1.Value,
                  cxCurrencyEdit1.Value, Perc, cxSpinEdit1.Value, 0, cxSpinEdit1.Value,0, CommonPOS.ID, CDSInventarioPisoPRODUCTNO.Value)
                  }

                  cxCurrencyEdit1.text := FloatToStr(CDSInventarioPisoPRECIO_CAJA.asFloat);
                  cxSpinEdit1.text := DMMidas.CDSInventarioPisoQTY_CAJA.asString;
                  cxSpinEdit1.Enabled := True;
                  cxSpinEdit1.SetFocus;
                  CommonPOS.AddProduct('T', CDSInventarioPisoCODIGOBARRA.Value,CDSInventarioPisoDESCRIPCION.Value,
                  CDSInventarioPisoDESCDEPT.Value,'F','',
                  CommonPOS.User, TaxMunicipal, TaxEstatal, CDSInventarioPisoPRECIO_CAJA.asFloat,
                  CDSInventarioPisoPRECIO_CAJA.asFloat, 0.0, CDSInventarioPisoCOSTO.asFloat, cxSpinEdit1.Value, CDSInventarioPisoNUMEROSUPLIDOR.Value, CommonPOS.Turno, CommonPOS.ID, CDSInventarioPisoProductNo.Value, CDSInventarioPisoSUB_DEPARTAMENTO.Value,0,0,false,false,'',0,false,0,CDSInventarioPisoPROCESSED_FOOD.Value, false)

                  {if RadioButtonGroup.Checked then
                  begin
                    cxSpinEdit1.Value := DMMidas.CDSInventarioPisoGROUP_QTY.Value;
                    cxCurrencyEdit1.Properties.ReadOnly := True;
                    EditSearch.SetFocus;
                    CommonPOS.AddProduct(CDSInventarioPisoCODIGOBARRA.Value,CDSInventarioPisoDESCRIPCION.Value,
                    CDSInventarioPisoDESCDEPT.Value,'F','',
                    CommonPOS.User, TaxMunicipal, TaxEstatal, CDSInventarioPisoRBP.Value,
                    CDSInventarioPisoRBP.Value, 0.0, CDSInventarioPisoCOSTO.Value, CDSInventarioPisoGROUP_QTY.Value, CDSInventarioPisoNUMEROSUPLIDOR.Value, CommonPOS.Turno, CommonPOS.ID, CDSInventarioPisoProductNo.Value)
                  end
                  else
                  begin
                    cxCurrencyEdit1.Value := CDSInventarioPisoPRECIO_CAJA.Value;
                    cxSpinEdit1.Value := DMMidas.CDSInventarioPisoQTY_CAJA.Value;
                    cxSpinEdit1.Enabled := True;
                    cxSpinEdit1.SetFocus;
                    CommonPOS.AddProduct(CDSInventarioPisoCODIGOBARRA.Value,CDSInventarioPisoDESCRIPCION.Value,
                     CDSInventarioPisoDESCDEPT.Value,'F','',
                     CommonPOS.User, TaxMunicipal, TaxEstatal, CDSInventarioPisoPRECIO_CAJA.Value,
                     CDSInventarioPisoPRECIO_CAJA.Value, 0.0, CDSInventarioPisoCOSTO.Value, cxSpinEdit1.Value, CDSInventarioPisoNUMEROSUPLIDOR.Value, CommonPOS.Turno, CommonPOS.ID, CDSInventarioPisoProductNo.Value)
                  end;}
                end;
              end;
          end;
        end
        else
        begin
          if FrmMain.LanguageStr = 'English' then
            showMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 341))
          else
          ShowMessage('El precio no esta bien estipulado en el sistema, favor de arreglar');
        end;
      end
      else
      begin
        if FrmMain.LanguageStr = 'English' then
          ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 320))
        else
        ShowMessage('Producto no encontrado');
      end;
     EditSearch.SetFocus;
  end
  else
    BitBtn1.Click;
end;

procedure TFrmGroupSales.EditSearchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;                                 { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
  end;
end;

Function TFrmGroupSales.GetHeader(User: String; Shift : Integer) : Integer;
Begin
  With DMMidas.CDSTrHeadAdHoc2 do
  Begin
    Active := False;
    CommandText := 'Select * From TransactionHeader Where Opened = ''T'' And '
                   + 'EmployNumber = ''' + User + ''' And '
                   + 'Shift = ' + IntToStr(Shift);
    Active := True;;
    IF Not EOF Then
    Begin
      Result := FieldByName('TransactionNumber').asInteger;
    end
    else
    Begin
      Result := GetNewHeader(User, Shift);
    end;
  end;
  Queries.OpentTransHeader(Result,false);
  { With DMMidas.CDSTransHead do
  begin
    Active := False;
    Params[0].Value := Result;
    Active := True;
  end;}
end;

function TFrmGroupSales.GetNewHeader(User: String; Shift : Integer): Integer;
Var
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
  NoRegister: String;
Begin
  DecodeTime(Time, Hour, Min, Sec, MSec);
  DecodeDate(Date, Year, Month, Day);
  if FrmGroupSales.Tag = 0 then
    NoRegister := ''
  else
    NoRegister := Copy(CommonPOS.RegisterNo, 10, 4);

  With DMMidas do
  Begin
    With CDSTrHeadAdHoc do
      Begin
        SQL.Clear;
        SQL.Add('Insert Into TransactionHeader (TransactionDate, '
                        + 'EmployNumber, TransactionTime, Shift, Register) Values ('''
                        + DateToStr(Date) + ''', ''' + User + ''', '''
                        + Format('%.4d-%.2d-%.2d %.2d:%.2d:%.2d',[Year,Month,Day,Hour,Min,Sec]) + ''', ' + IntToStr(Shift) + ',' + NoRegister + ')');
        ExecSQL(True);
      end;
    With CDSTrHeadAdHoc2 do
    Begin
      Active := False;
      CommandText := 'Select * From TransactionHeader Where Opened = ''T'' And '
                     + 'EmployNumber = ''' + User + ''' And '
                     + 'Shift = ' + IntToStr(Shift) + ' and Register = ' + NoRegister;
      Active := True;;
      Result := FieldByName('TransactionNumber').asInteger;
    end;
  end;
end;

procedure TFrmGroupSales.language;
begin
  FrmGroupSales.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 337);
  RadioButtonGroup.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 338);
  RadioButtonCaja.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 339);
  label1.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 335);
  label2.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 132);
  label3.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 340);
  end;

procedure TFrmGroupSales.FormCreate(Sender: TObject);
begin
  Perc := 0;
end;

procedure TFrmGroupSales.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if FrmGroupSales.Tag = 0 then
    FrmPOSTS.Header := Header
  else
    FrmPOSTS.Header := Header
end;

procedure TFrmGroupSales.AddProduct (ProdUPC, ProdDesc, ProdDept, Food, SubDetail, User: String;
                  Price, RegPrice, Disc, costo: Single; ProdQty, Suplidor, Shift: Integer);
Var
  SrcQty: Integer;
Begin
  If Header = 0 Then
    Header := GetHeader(User, Shift);
  With DMMidas do
  Begin
    With CDSTransShow do
    begin
      Active := False;
      Params[0].asInteger := Header;
      Active := True;
    end;
    SrcQty := ProdQty;
    If (NOT(CDSTransShow.Eof AND CDSTransShow.Bof)) AND
       (CDSTransShow.Locate('UPC;Price',VarArrayof([ProdUPC, Price]),[])) AND
       (ProdUPC <> '99999999999') Then
    begin
      With CDSTransShow do
      Begin
        Edit;
        FieldByName('QTY').Value := FieldByName('QTY').Value + SrcQty;
        if RadioButtonGroup.Checked then
        begin
          FieldByName('TOTAL').Value := CDSInventarioPisoRBP.asFloat * FieldByName('QTY').Value;//+ FieldByName('TOTAL').Value;
          FieldByName('REGTOTAL').Value := StrToFloat(cxCurrencyEdit1.text) * FieldByName('QTY').asFloat;//+ FieldByName('REGPRICE').Value;
          FieldByName('COSTO').Value := CDSInventarioPisoCOSTO.asFloat * FieldByName('QTY').Value;
        end
        else
        begin
          FieldByName('TOTAL').Value := CDSInventarioPisoPRECIO_CAJA.asFloat + FieldByName('TOTAL').asFloat;
          FieldByName('REGTOTAL').Value := StrToFloat(cxCurrencyEdit1.text) + FieldByName('REGPRICE').asFloat;
          FieldByName('COSTO').Value := CDSInventarioPisoCOSTO.asFloat * FieldByName('QTY').Value;
        end;
        Post;
      end;
    end
    else
    begin
      if SubDetail = '' then SubDetail := 'N';
      if ProdDept = '' then ProdDept := '0';
      if Food = '' then Food := 'N';

      With CDSTransShow do
      Begin
        Append;
        Fields[0].Value := 0;
        Fields[1].Value := Header;
        Fields[2].Value := ProdUPC;
        Fields[3].Value := SrcQty;
        Fields[5].Value := 0;
        Fields[6].Value := SubDetail;
        Fields[7].Value := ProdDesc;
        Fields[8].Value := ProdDept;
        Fields[10].Value := Food;
        Fields[12].Value := StrToFloat(cxCurrencyEdit1.Text);
        Fields[4].Value := StrToFloat(cxCurrencyEdit1.text);
        Fields[9].Value := StrToFloat(cxCurrencyEdit1.text);
        Fields[13].Value := 0;
        Fields[14].Value := Disc;
        if RadioButtonGroup.Checked then
        begin
          Fields[15].Value := CDSInventarioPisoCOSTO.asFloat * cxSpinEdit1.Value;//Costo;
          Fields[11].Value := CDSInventarioPisoRBP.asFloat;
        end
        else
        begin
          Fields[15].Value := CDSInventarioPisoCOSTO.asFloat * cxSpinEditCantTotal.Value; //Costo;
          Fields[11].Value := CDSInventarioPisoPRECIO_CAJA.asFloat / CDSInventarioPisoQTY_CAJA.asFloat;
        end;
        Fields[17].Value := Suplidor;
        Post;
      end;
    end;
  end;
end;


procedure TFrmGroupSales.cxSpinEdit1PropertiesChange(Sender: TObject);
begin
{  if RadioButtonGroup.Checked then
    cxCurrencyEdit1.Value := DMMidas.CDSInventarioPisoRBP.Value//* cxSpinEdit1.Value
  else
  begin
    cxCurrencyEdit1.Value := DMMidas.CDSInventarioPisoPRECIO_CAJA.Value * cxSpinEdit1.Value;
    cxSpinEditCantTotal.Value := DMMidas.CDSInventarioPisoQTY_CAJA.Value * cxSpinEdit1.Value;
  end;}
end;

procedure TFrmGroupSales.FormShow(Sender: TObject);
begin
{  if FrmGroupSales.Tag = 0 then
    FrmGroupSales.Height := 272
  else
    FrmGroupSales.Height := 500; }
  if FrmMain.LanguageStr = 'English' then
    language;
end;

end.
