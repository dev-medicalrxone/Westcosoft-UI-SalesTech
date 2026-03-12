unit UntQueries;

interface

Uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, Dialogs,
  StdCtrls, Forms, DBCtrls, DB, Grids, DBGrids, Mask, ExtCtrls,
  Buttons, WinTypes, ComCtrls, Printers, Registry, ResourceLocalizer;


Type

  TQueries = Class(TObject)
    procedure OpenInventory(Token1, Option: String; isButton: Boolean);
    procedure OpenUnionInventory(Token1: String);
    procedure OpenPOS(NoTrans: String);
    procedure NextNumber;
    procedure OpenPrescriptions(SearchByNoRx: Boolean; OTC_NUMBER: Integer);
    procedure OpenOTC(OTCNumber: Integer; filterByChecked: Boolean);
    procedure OpenPasswords(Password: String);
    procedure OpenPasswordsIniciales(Iniciales: String);
    procedure MultiToken(InputString: String; var Token1, Token2, Token3: String);
    procedure OpenPatient(Token1, Token2, Token3: String; NoCliente: Integer);
    function OpenPatientWC(Token: String; NoCliente: Integer): Boolean;
    //procedure InventoryControl(NDC: String; Qty: Double);
    procedure InventoryControl(PRODUCT_ID: Integer; NDC: String; Qty: Double);
    procedure OpenGroup(ProductID: Integer);
    procedure DeleteWebCredit(TransNo: Integer);
    function  InternetAvailable:Boolean;
    function  CalcBalance(SSN: String):Double;
    Procedure OpenPlanesMedicos(Token: String);
    function DeudaCliente(NoCliente: Integer): Double;
    function DeudaClienteLayaway(NoCliente: Integer): Double;
    function OpenTab(TransNo: Integer): Boolean;
    Procedure OpenInventory2(Token1, Option: String);
    procedure OpentTransHeader(TransNo: Integer; history: Boolean);
    procedure OpenWillCall_Status(Bag_Number: String);
    procedure OpenWillCallBag(Bag_Number: String);
    function WillCallOpenRx(OTCNumber, NoRx: String): String;
    procedure OpenPatient_Rx(Token: String; NoCliente: Integer);
    procedure OpenWC_Patient(Token: String);
  private


  end;
Var
  Queries : TQueries;

implementation

uses UntDMMidas, UntDMCentralCredit, untMain, UntCommonPOS, UntDMWC, UntPOSRest,
  UntInventory;


Procedure TQueries.OpenInventory(Token1, Option: String; isButton: Boolean);
Var
  NDCTFC: Char;
  NDCTF: String;
  GPNO: String;
  upcE: String;
  upc: String;
begin
  if Token1 > ' ' then
  begin
    With DMMidas do
    begin
      if isButton = True then
      begin
        CDSInventarioPiso.Close;
        CDSInventarioPiso.CommandText := 'Select * from inventariopiso where productno = ' + chr(39) + token1 + chr(39);
        CDSInventarioPiso.Open;
        exit;
      end;

      if (CDSSetupPOS_UPCSEARCH_ONLY.Value = true) and (Assigned(FrmPOSRest) = true)
      and (isButton = false) then
      begin
        CDSInventarioPiso.Close;
        CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where CodigoBarra = '+ #39 + token1  + #39 + ' and Recetario <> ' + #39 + 'R' + #39 + ' order by DESCRIPCION';
        CDSInventarioPiso.Open;
      end
      else
      begin
        if DMMidas.CDSSetupCOMPLEX_SEARCH.Value = True then
        begin
          if CommonPOS.IsNumber(Token1) then
          begin
            CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where PRODUCTNO = ' + Trim(Token1) + ' order by DESCRIPCION';
          end
          else
          begin
            CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where CodigoBarra Like '+ #39 + '%' + Token1 + '%' + #39 +
            ' or BARCODE2 Like '+ #39 + '%' + Token1 + '%' + #39 +
            ' or Descripcion Like '+ #39 + '%' + Token1 + '%' + #39 +
            ' and Recetario <> ' + #39 + 'R' + #39 +
            ' order by DESCRIPCION';
          end;
          CDSInventarioPiso.Open;
          if CDSInventarioPiso.RecordCount = 0 then
          begin
            CDSInventarioPiso.Close;
            CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where CodigoBarra Like '+ #39 + '%' + Token1 + '%' + #39 +
              ' or BARCODE2 Like '+ #39 + '%' + Token1 + '%' + #39 +
              ' or Descripcion Like '+ #39 + '%' + Token1 + '%' + #39 +
              ' and Recetario <> ' + #39 + 'R' + #39 +
              ' order by DESCRIPCION';
            CDSInventarioPiso.Open;
          end;
        end
        else
        begin
          upcE := '';
          if token1.Length = 8 then
            upcE := token1;
          upc := CommonPOS.translateBarcodes(token1);
          CDSInventarioPiso.Close;
          NDCTF := Copy(Token1, 1, 1);
          NDCTFC := NDCTF[1];
          if (ord(NDCTFC) >= 48) and (ord(NDCTFC) <= 57) then
          begin
            if Option = 'POS' then
            begin
              CDSInventarioPiso.Close;
              CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where CodigoBarra = '+ #39 + upc  + #39 + ' and Recetario <> ' + #39 + 'R' + #39 + ' order by DESCRIPCION';
              CDSInventarioPiso.Open;
              if (Trim(CDSInventarioPisoCodigoBarra.Value) > '') and (CDSInventarioPisoGROUP_PRODUCTNO.Value > 0) then
              begin
                GPNO := CDSInventarioPisoGROUP_PRODUCTNO.asString;
                CDSInventarioPiso.Close;
                CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where GROUP_PRODUCTNO = '+ #39 + GPNO  + #39 +  ' and Recetario <> ' + #39 + 'R' + #39 + ' and MAIN_NDC = 1 order by DESCRIPCION';      //main_ndc added in order to insert product instead of showing all linked products AGC 03/11/26
                CDSInventarioPiso.Open;
              end
              else
              begin
                if (CDSInventarioPiso.RecordCount = 0) and (upcE <> '')then
                begin
                  CDSInventarioPiso.Close;
                  CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where CodigoBarra = '+ #39 + upcE  + #39 + ' and Recetario <> ' + #39 + 'R' + #39 + ' order by DESCRIPCION';
                  CDSInventarioPiso.Open;
                  if CDSInventarioPiso.RecordCount = 0 then
                  begin
                    if token1.Length = 11 then
                    begin
                      upc := upc + IntToStr(CommonPOS.checkDigit(upc));
                    end
                    else
                      upc := Copy(upc, 1, upc.Length - 1);
                      CDSInventarioPiso.Close;
                      CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where CodigoBarra = '+ #39 + upc  + #39 + ' and Recetario <> ' + #39 + 'R' + #39 + ' order by DESCRIPCION';
                      CDSInventarioPiso.Open;
                  end;
                end
                else if cdsInventariopiso.RecordCount = 0 then
                begin
                  if token1.Length = 11 then
                  begin
                    upc := token1 + IntToStr(CommonPOS.checkDigit(token1));
                  end
                  else
                    upc := Copy(token1, 1, Token1.Length - 1);
                  CDSInventarioPiso.Close;
                  CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where CodigoBarra = '+ #39 + upc  + #39 + ' and Recetario <> ' + #39 + 'R' + #39 + ' order by DESCRIPCION';
                  CDSInventarioPiso.Open;
                end;
                if Trim(CDSInventarioPisoCodigoBarra.Value) = '' then
                begin
                  CDSInventarioPiso.Close;
                  CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where NDC = '+ #39 + Token1  + #39 +  ' and Recetario <> ' + #39 + 'R' + #39 + ' order by DESCRIPCION';
                  CDSInventarioPiso.Open;
                  if (Trim(CDSInventarioPisoCodigoBarra.Value) > '') and (CDSInventarioPisoGROUP_PRODUCTNO.Value > 0) then
                  begin
                    GPNO := CDSInventarioPisoGROUP_PRODUCTNO.asString;
                    CDSInventarioPiso.Close;
                    CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where GROUP_PRODUCTNO = '+ #39 + GPNO  + #39 +  ' and Recetario <> ' + #39 + 'R' + #39 + ' order by DESCRIPCION';
                    CDSInventarioPiso.Open;
                  end
                end;
                if CDSInventarioPiso.RecordCount = 0 then
                begin
                  CDSInventarioPiso.Close;
                  CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where PRODUCTNO = '+  Token1  +  ' and Recetario <> ' + #39 + 'R' + #39 + ' order by DESCRIPCION';
                  CDSInventarioPiso.Open;
                end;
              end;
            end
            else
            begin
              CDSInventarioPiso.Close;
              CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where CodigoBarra = '+ #39 + Token1 + chr(39)  + ' and Recetario <> ' + #39 + 'R' + #39 +  ' order by DESCRIPCION';  //'%''' +
              CDSInventarioPiso.Open;
              if (Trim(CDSInventarioPisoCodigoBarra.Value) > '') and (CDSInventarioPisoGROUP_PRODUCTNO.Value > 0) then
              begin
                GPNO := CDSInventarioPisoGROUP_PRODUCTNO.asString;
                CDSInventarioPiso.Close;
                CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where GROUP_PRODUCTNO = '+  GPNO + ' and Recetario <> ' + #39 + 'R' + #39 + ' order by DESCRIPCION';
                CDSInventarioPiso.Open;
              end
              else
              begin
                if Trim(CDSInventarioPisoCodigoBarra.Value) = '' then
                begin
                  CDSInventarioPiso.Close;
                  CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where NDC = '+ #39 + Token1  + #39 +  ' and Recetario <> ' + #39 + 'R' + #39 + ' order by DESCRIPCION';
                  CDSInventarioPiso.Open;
                  if (Trim(CDSInventarioPisoCodigoBarra.Value) > '') and (CDSInventarioPisoGROUP_PRODUCTNO.Value > 0) then
                  begin
                    GPNO := CDSInventarioPisoGROUP_PRODUCTNO.asString;
                    CDSInventarioPiso.Close;
                    CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where GROUP_PRODUCTNO = '+ #39 + GPNO  + #39 +  ' and Recetario <> ' + #39 + 'R' + #39 + ' order by DESCRIPCION';
                    CDSInventarioPiso.Open;
                  end
                end;
              end;
            end;
          end
          else
          begin
            if Assigned(FrmInventory) then
            begin
              with FrmInventory do
              begin
                CDSInventarioPiso.Close;
                if cbFilterByDept.Checked = True then
                  CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where Descripcion like ''' + Token1 + '%''' + ' and Recetario = ' +#39 + 'P'+ #39  + ' and DEPARTAMENTO = ' + chr(39) + CDSDepartamentosDEPARTAMENTO.asString + chr(39) + ' order by Descripcion'
                else
                  CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where Descripcion like ''' + Token1 + '%''' + ' and Recetario = ' +#39 + 'P'+ #39  + ' order by Descripcion';
                CDSInventarioPiso.Open;
              end;
            end
            else
            begin
              CDSInventarioPiso.Close;
              CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where Descripcion like ''' + Token1 + '%''' + ' and Recetario = ' +#39 + 'P'+ #39  + ' order by Descripcion';
              CDSInventarioPiso.Open;
            end;
          end;
        end;
      end;
    end;
  end
  else
  begin
    DMMidas.CDSInventarioPiso.Close;
    DMMidas.CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where Recetario = ' +#39 + 'P'+ #39  + ' order by Descripcion';
    DMMidas.CDSInventarioPiso.Open;
  end;
end;


Procedure TQueries.OpenInventory2(Token1, Option: String);
Var
  NDCTFC: Char;
  NDCTF: String;
  GPNO: String;
begin
  if Token1 > ' ' then
  begin
    With DMMidas do
    begin
      NDCTF := Copy(Token1, 1, 1);
      NDCTFC := NDCTF[1];
      if (ord(NDCTFC) >= 48) and (ord(NDCTFC) <= 57) then
      begin
        if Option = 'POS' then
        begin
          CDSInventarioPiso2.Close;
          CDSInventarioPiso2.CommandText := 'Select * from InventarioPiso with (NOLOCK) where CodigoBarra = '+ #39 + Token1  + #39 + ' and Recetario <> ' + #39 + 'R' + #39 + ' order by DESCRIPCION';
          CDSInventarioPiso2.Open;
          if (Trim(CDSInventarioPiso2CodigoBarra.Value) > '') and (CDSInventarioPiso2GROUP_PRODUCTNO.Value > 0) then
          begin
            GPNO := CDSInventarioPiso2GROUP_PRODUCTNO.asString;
            CDSInventarioPiso2.Close;
            CDSInventarioPiso2.CommandText := 'Select * from InventarioPiso with (NOLOCK) where GROUP_PRODUCTNO = '+ #39 + GPNO  + #39 +  ' and Recetario <> ' + #39 + 'R' + #39 + ' order by DESCRIPCION';
            CDSInventarioPiso2.Open;
          end
          else
          begin
            if Trim(CDSInventarioPiso2CodigoBarra.Value) = '' then
            begin
              CDSInventarioPiso2.Close;
              CDSInventarioPiso2.CommandText := 'Select * from InventarioPiso with (NOLOCK) where NDC = '+ #39 + Token1  + #39 +  ' and Recetario <> ' + #39 + 'R' + #39 + ' order by DESCRIPCION';
              CDSInventarioPiso2.Open;
              if (Trim(CDSInventarioPiso2CodigoBarra.Value) > '') and (CDSInventarioPiso2GROUP_PRODUCTNO.Value > 0) then
              begin
                GPNO := CDSInventarioPiso2GROUP_PRODUCTNO.asString;
                CDSInventarioPiso2.Close;
                CDSInventarioPiso2.CommandText := 'Select * from InventarioPiso with (NOLOCK) where GROUP_PRODUCTNO = '+ #39 + GPNO  + #39 +  ' and Recetario <> ' + #39 + 'R' + #39 + ' order by DESCRIPCION';
                CDSInventarioPiso2.Open;
              end
            end;
            if CDSInventarioPiso2.RecordCount = 0 then
            begin
              CDSInventarioPiso2.Close;
              CDSInventarioPiso2.CommandText := 'Select * from InventarioPiso with (NOLOCK) where PRODUCTNO = '+  Token1  +  ' and Recetario <> ' + #39 + 'R' + #39 + ' order by DESCRIPCION';
              CDSInventarioPiso2.Open;
            end;
          end;
        end
        else
        begin
          CDSInventarioPiso2.Close;
          CDSInventarioPiso2.CommandText := 'Select * from InventarioPiso with (NOLOCK) where CodigoBarra = '+ #39 + Token1 + chr(39)  + ' and Recetario <> ' + #39 + 'R' + #39 +  ' order by DESCRIPCION';  //'%''' +
          CDSInventarioPiso2.Open;
          if (Trim(CDSInventarioPiso2CodigoBarra.Value) > '') and (CDSInventarioPiso2GROUP_PRODUCTNO.Value > 0) then
          begin
            GPNO := CDSInventarioPiso2GROUP_PRODUCTNO.asString;
            CDSInventarioPiso2.Close;
            CDSInventarioPiso2.CommandText := 'Select * from InventarioPiso with (NOLOCK) where GROUP_PRODUCTNO = '+  GPNO + ' and Recetario <> ' + #39 + 'R' + #39 + ' order by DESCRIPCION';
            CDSInventarioPiso2.Open;
          end
          else
          begin
            if Trim(CDSInventarioPiso2CodigoBarra.Value) = '' then
            begin
              CDSInventarioPiso2.Close;
              CDSInventarioPiso2.CommandText := 'Select * from InventarioPiso with (NOLOCK) where NDC = '+ #39 + Token1  + #39 +  ' and Recetario <> ' + #39 + 'R' + #39 + ' order by DESCRIPCION';
              CDSInventarioPiso2.Open;
              if (Trim(CDSInventarioPiso2CodigoBarra.Value) > '') and (CDSInventarioPiso2GROUP_PRODUCTNO.Value > 0) then
              begin
                GPNO := CDSInventarioPiso2GROUP_PRODUCTNO.asString;
                CDSInventarioPiso2.Close;
                CDSInventarioPiso2.CommandText := 'Select * from InventarioPiso with (NOLOCK) where GROUP_PRODUCTNO = '+ #39 + GPNO  + #39 +  ' and Recetario <> ' + #39 + 'R' + #39 + ' order by DESCRIPCION';
                CDSInventarioPiso2.Open;
              end
            end;
          end;
        end;
      end
      else
      begin
        CDSInventarioPiso2.Close;
        CDSInventarioPiso2.CommandText := 'Select * from InventarioPiso with (NOLOCK) where Descripcion like ''' + Token1 + '%''' + ' and Recetario = ' +#39 + 'P'+ #39  + ' order by Descripcion';
        CDSInventarioPiso2.Open;
      end;
    end;
  end
  else
  begin
    DMMidas.CDSInventarioPiso2.Close;
    DMMidas.CDSInventarioPiso2.CommandText := 'Select * from InventarioPiso with (NOLOCK) where Recetario = ' +#39 + 'P'+ #39  + ' order by Descripcion';
    DMMidas.CDSInventarioPiso2.Open;
  end;
end;

Procedure TQueries.OpenUnionInventory(Token1: String);
Var
  NDCTF, SelClause1, SelClause2, WhereClause1, WhereClause2, OrderClause: String;
begin
{
  SelClause1 := 'SELECT ' +
                'CAST(CODIGOBARRA as VARCHAR(14)) AS UPC, ' +
                'CAST(DESCRIPCION as VARCHAR(35)) AS DESCRIPCION, ' +
                'COSTO, ' +
                'QTYINVENTARIO as INV, ' +
                'PRECIO, ' +
                '0 as RECETARIO, ' +
                'Cast(1 as FLOAT) AS TAMANO, ' +
                'CAST(1 as smallint) as PACKAGESIZE, ' +
                'CAST(null as char(25)) as STRENGTH, ' +
                'CAST(null as char(3)) as TIPO ' +
                'FROM INVENTARIOPISO ';

  SelClause2 := 'SELECT ' +
                'CAST(NDC as VARCHAR(14)) AS UPC, ' +
                'CAST(MEDICAMENTO as VARCHAR(35)) AS DESCRIPCION, ' +
                'AWP AS COSTO, ' +
                'CANTIDAD_INVENTARIO as INV, ' +
                'PRECIOVENTA AS PRECIO, ' +
                '1 AS RECETARIO, ' +
                'METRICSIZE AS TAMANO, ' +
                'PACKAGESIZE, ' +
                'STRENGTH, ' +
                'TIPO ' +
                'FROM INVENTARIO ';

  With DMMidas.CDSInventario do
  begin
    If Token1 > ' ' then
    begin
      Close;
      NDCTF := Copy(Token1, 1, 1);
      if (ord(NDCTF[1]) >= 48) and (ord(NDCTF[1]) <= 57) then
      begin
        WhereClause1 := 'WHERE CodigoBarra = '+ #39 + Token1 + #39;
        WhereClause2 := 'WHERE NDC = '+ #39 + Token1 + #39;
        OrderClause := ' ORDER BY 1';
        CommandText := SelClause1 + WhereClause1 + ' UNION ' + SelClause2 + WhereClause2 + OrderClause;
        Open;
      end
      else
      begin
        WhereClause1 := 'WHERE Descripcion like ''' + Token1 + '%''';
        WhereClause2 := 'WHERE Medicamento like ''' + Token1 + '%''';
        OrderClause := ' ORDER BY 2';
        CommandText := SelClause1 + WhereClause1 + ' UNION ' + SelClause2 + WhereClause2 + OrderClause;
        Open;
        if FieldByName('DESCRIPCION').Value = '' then
        begin
          WhereClause1 := 'WHERE CodigoBarra = '+ #39 + Token1 + #39;
          WhereClause2 := 'WHERE NDC = '+ #39 + Token1 + #39;
          OrderClause := ' ORDER BY 2';
          CommandText := SelClause1 + WhereClause1 + ' UNION ' + SelClause2 + WhereClause2 + OrderClause;
          Open;
        end;
      end;
    end
    else
    begin
      WhereClause1 := '';
      WhereClause2 := '';
      OrderClause := ' ORDER BY 2';
      CommandText := SelClause1 + WhereClause1 + ' UNION ' + SelClause2 + WhereClause2 + OrderClause;
      Open;
    end;
  end;}
end;

Procedure TQueries.OpenPOS(NoTrans: String);
begin
  with DMMidas do
  begin
    CDSPOS.Close;
    CDSPOS.CommandText := 'Select * from POS with (NOLOCK) where NumeroTransaccion = ' + NoTrans;
    CDSPOS.Open;
  end;
end;

Procedure TQueries.NextNumber;
begin
end;

procedure TQueries.OpenPrescriptions(SearchByNoRx: Boolean; OTC_NUMBER: Integer);
Var
  BatchNo: Integer;
begin
  With DMMidas do
  begin
   { if CDSSetupWC_INTERFACE.Value = 'SmartPickup'  then
    begin
      SQLQuery1.Connection := FDConnection2;
      QOTCFD.Connection := FDConnection1;
    end; }
    if CommonPOS.standalone = True then
    begin
      SQLQuery1.Connection := FDConnection2;
      QOTCFD.Connection := FDConnection2;
    end
    else
    begin
      SQLQuery1.Connection := FDConnection1;
      QOTCFD.Connection := FDConnection1;
    end;
    if SearchByNoRx = True then
    begin
      SQLQuery1.Close;
      SQLQuery1.sql.Text := 'select MAX(OTCNUMBER) as OTCNo from OTC where NumeroReceta = ' +  IntToStr(OTC_NUMBER);
      SQLQuery1.Open;
      if SQLQuery1.FieldByName('OTCNo').asString > '' then
      begin
        CDSOTC.Close;
        CDSOTC.CommandText := 'Select * from OTC with (NOLOCK)  where OTCNumber = ' + SQLQuery1.FieldByName('OTCNo').asString; //IntToStr(NoTrans);
        CDSOTC.Open;
        BatchNo := CDSOTCBATCH_NUMBER.Value;
      end;
    end
    else
    begin
      CDSOTC.Close;
      CDSOTC.CommandText := 'Select * from OTC with (NOLOCK)  where OTCNumber = ' + IntToStr(OTC_NUMBER);
      CDSOTC.Open;
      BatchNo := CDSOTCBATCH_NUMBER.Value;
    end;
  end;
end;

function TQueries.OpenTab(TransNo: Integer): Boolean;
begin
  With DMMidas do
  begin
    cdsOpenTabs.Close;
    cdsOpenTabs.CommandText := 'Select * from OPEN_TABS where TransactionNumber = ' + IntToStr(TransNo);
    cdsOpenTabs.Open;
    if cdsOpenTabs.RecordCount > 0 then Result := True else Result := False;
  end;
end;

procedure TQueries.OpentTransHeader(TransNo: Integer; history: Boolean);
begin
  With DMMidas do
  begin
    CDSTransHead.Close;
    if history = false then
      CDSTransHead.CommandText := 'Select * from TransactionHeader_TEMP where TransactionNumber = ' +  IntToStr(TransNo)
    else
        CDSTransHead.CommandText := 'Select * from TransactionHeader where TransactionNumber = ' +  IntToStr(TransNo);
    CDSTransHead.Open;
  end;
end;

procedure TQueries.OpenOTC(OTCNumber: Integer; filterByChecked: Boolean);
var
  filterCheck: String;
begin
  with DMMidas do
  begin
    if filterByChecked = True then
    begin
      filterCheck := 'and wf_checked > ' + chr(39) + chr(39);
    end
    else
    begin
      filterCheck := ''
    end;
    CommonPOS.SetConnection(QOTCFD);
    CDSOTC.Close;
    CDSOTC.CommandText := 'Select * from OTC with (NOLOCK)  where OTCNumber = ' + IntToStr(OTCNumber) + filterCheck;
    CDSOTC.Open;
  end;
end;

procedure TQueries.OpenPasswords(Password: String);
begin
  With DMMidas do
  begin
    CDSPasswords.Close;
    if password = '' then
      CDSPasswords.CommandText := 'Select * from passwords'
    else
      CDSPasswords.CommandText := 'Select * from passwords where password_col = ' + #39 + Password + #39;
    CDSPasswords.Open;
  end;
end;
procedure TQueries.OpenPasswordsIniciales(Iniciales: String);
begin
  With DMMidas do
  begin
    CDSPasswords.Close;
    CDSPasswords.CommandText := 'Select * from passwords where Iniciales = ' + #39 + Iniciales + #39;
    CDSPasswords.Open;
  end;
end;
procedure TQueries.MultiToken(InputString: String; var Token1, Token2, Token3: String);
Var
  TmpString: String;
Begin
  Token1 := '';
  Token2 := '';
  Token3 := '';
  TmpString := Trim(InputString);
  If Length(TmpString) <> 0 then
  Begin
    If Pos(' ',TmpString) <> 0 then
    Begin
      Token1 := Trim(Copy(TmpString,1,Pos(' ',TmpString)));
      TmpString := Trim(Copy(TmpString,Pos(' ',TmpString),Length(TmpString)));
      If Length(TmpString) <> 0 then
      Begin
        If Pos(' ',TmpString) <> 0 then
        Begin
          Token2 := Trim(Copy(TmpString,1,Pos(' ',TmpString)));
          TmpString := Trim(Copy(TmpString,Pos(' ',TmpString),Length(TmpString)));
          If Length(TmpString) <> 0 then
          Begin
            If Pos(' ',TmpString) <> 0 then
            Begin
              Token3 := Trim(Copy(TmpString,1,Pos(' ',TmpString)));
            end
            Else
            Begin
              Token3 := TmpString;
            end;
          end;
        end
        Else
        Begin
          Token2 := TmpString;
        end;
      end;
    end
    Else
    Begin
      Token1 := TmpString;
    end;
  end;
end;

function TQueries.OpenPatientWC(Token: String; NoCliente: Integer): Boolean;
Var
  Token1, Token2, Token3: String;
  Searched: Boolean;
begin
  result := false;
  Searched := false;
  if (Trim(Token) > '') then
  begin
    With DMwc do
    begin
      Queries.MultiToken(Trim(Token), Token1, Token2, Token3);
      if (NoCliente >= 0) and (Trim(Token1) = '') then
      begin
        OpenWC_Patient('where NumeroCliente = ' + IntToStr(NoCliente));
        Searched := true;
      end
      else
      begin
        if (Length(Token) >= 10) then //and (isNumber(Copy(Token,1,5)) = true) then
        begin
          if (Copy(Token1, 1, 1) = '(') or (CommonPOS.isNumber(Copy(Token1, 2, 1))) then
          begin
            Searched := true;
            if (Copy(Token1, 1, 1) = '(') then
            begin
              OpenWC_Patient('where telefono Like ' + '%' + chr(39) + Token1 + chr(39) + '%'
              + ' or CELULAR like ' + '%' + chr(39) + Token1 + chr(39) + '%')
            end
            else
            begin
              OpenWC_Patient('where telefono = ' + chr(39) + '(' + Copy(Token1,1,3) + ')' + Copy(Token1,4,3) + '-' + Copy(Token1,7,4) + chr(39)
              + ' or CELULAR = '  + chr(39) + '(' + Copy(Token1,1,3) + ')' + Copy(Token1,4,3) + '-' + Copy(Token1,7,4) + chr(39));
            end;
          end;
        end;

        if Searched = false then
        begin
          if (Token1 > '') and (Token2 > '') and (Token3 > '') then
          begin
            OpenWC_Patient('where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' and ApellidoMaterno Like ' + chr(39) + Token2 + '%' + chr(39) + ' and Nombre Like ' + chr(39) + Token3 + '%' + chr(39));
          end;
          if (Token1 > '') and (Token3 > '') and (Token2 = '') then
          begin
            OpenWC_Patient('where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' and Nombre Like ' + chr(39) + Token3 + '%' + chr(39));
          end;
          if (Token1 > '') and (Token2 > '') and (Token3 = '') then
          begin
            OpenWC_Patient('where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' and ApellidoMaterno Like ' + chr(39) + Token2 + '%' + chr(39));
            if cdsWC_PATIENTSNOMBRE.Value = '' then
            begin
              OpenWC_Patient('where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' and Nombre Like ' + chr(39) + Token2 + '%' + chr(39));
            end;
          end;
          if (Token1 > '') and (Token3 = '') and (Token2 = '') then
          begin
            OpenWC_Patient('where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39));
          end;
        end;
      end;
    end;
    {if (OpenForm = true) and (DM.cdsWC_PATIENTS.RecordCount > 0) then
    begin
      DoneWithBag;
      result := CommonRoutine.WC_Availables(false);
    end;}
  end;
end;

{Procedure TQueries.OpenPatientWC(Token1, Token2, Token3: String; NoCliente: Integer);
Var
  NDCTFC: Char;
  NDCTF: String;
begin
  With DMwc do
  begin
    cdsWillCall_STATUS.Close;
    cdsWillCall.Close;
    begin
      if NoCliente > 0 then
      begin
        cdsWillCall_Status.Close;
        cdsWillCall_Status.CommandText := 'Select * from WILLCALL_STATUS where CUSTOMER_NUMBER = ' + IntToStr(NoCliente);
        cdsWillCall_Status.Open;
      end
      else
      begin
        if Token1 > ' ' then
        begin
          if CommonPOS.IsNumber(Trim(Token1)) OR (Copy(Token1, 1, 1) = '(') then
          begin
            if (Copy(Token1, 1, 1) = '(') or (CommonPOS.isNumber(Copy(Token1, 2, 1))) then
            begin
              if (Copy(Token1, 1, 1) = '(') then
              begin
                cdsWC_PATIENTS.Close;
                cdsWC_PATIENTS.CommandText := 'Select * from WC_PATIENTS with (NOLOCK) where Telefono = ' + chr(39) + Token1 + chr(39)
                + ' or CELULAR = ' + chr(39) + Token1 + chr(39)
                + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
                cdsWC_PATIENTS.Open;
              end
              else
              begin
                //ShowMessage('(' + Copy(Token1,1,3) + ')' + Copy(Token1,4,3) + '-' + Copy(Token1,7,4));
                cdsWC_PATIENTS.Close;
                cdsWC_PATIENTS.CommandText := 'Select * from WC_PATIENTS with (NOLOCK) where Telefono = ' + chr(39) + '(' + Copy(Token1,1,3) + ')' + Copy(Token1,4,3) + '-' + Copy(Token1,7,4) + chr(39)
                + ' or CELULAR = '  + chr(39) + '(' + Copy(Token1,1,3) + ')' + Copy(Token1,4,3) + '-' + Copy(Token1,7,4) + chr(39)
                + ' or Telefono = ' + chr(39) + Token1 + chr(39) + ' or CELULAR = '  + chr(39) + Token1 + chr(39)
                + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
                cdsWC_PATIENTS.Open;
              end;
            end;
          end
          else
          begin
            if (Token1 > '') and (Token2 > '') and (Token3 > '') then
            begin
              cdsWC_PATIENTS.Close;
              cdsWC_PATIENTS.CommandText := 'Select * from WC_PATIENTS with (NOLOCK) where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' and ApellidoMaterno Like ' + chr(39) + Token2 + '%' + chr(39) + ' and Nombre Like ' + chr(39) + Token3 + '%' + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
              cdsWC_PATIENTS.Open;
            end;
            if (Token1 > '') and (Token3 > '') and (Token2 = '') then
            begin
              cdsWC_PATIENTS.Close;
              cdsWC_PATIENTS.CommandText := 'Select * from WC_PATIENTS with (NOLOCK) where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' and Nombre Like ' + chr(39) + Token3 + '%' + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
              cdsWC_PATIENTS.Open;
            end;
            if (Token1 > '') and (Token2 > '') and (Token3 = '') then
            begin
              cdsWC_PATIENTS.Close;
              cdsWC_PATIENTS.CommandText := 'Select * from WC_PATIENTS with (NOLOCK) where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' and ApellidoMaterno Like ' + chr(39) + Token2 + '%' + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
              cdsWC_PATIENTS.Open;
              if cdsWC_PATIENTSNOMBRE.Value = '' then
              begin
                cdsWC_PATIENTS.Close;
                cdsWC_PATIENTS.CommandText := 'Select * from WC_PATIENTS with (NOLOCK) where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' and Nombre Like ' + chr(39) + Token2 + '%' + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
                cdsWC_PATIENTS.Open;
              end;
            end;
            if (Token1 > '') and (Token3 = '') and (Token2 = '') then
            begin
              cdsWC_PATIENTS.Close;
              cdsWC_PATIENTS.CommandText := 'Select * from WC_PATIENTS with (NOLOCK) where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
              cdsWC_PATIENTS.Open;
            end;
          end;
        end;
      end;
    end;
  end;
end;
}

Procedure TQueries.OpenPatient(Token1, Token2, Token3: String; NoCliente: Integer);
Var
  NDCTFC: Char;
  NDCTF: String;
begin
  With DMMidas do
  begin
    try
      //CommonPOS.SetConnection(QClientesFD);
      if NoCliente > 0 then
      begin
        CDSClientes.Close;
        CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where NumeroCliente = ' + IntToStr(NoCliente);
        CDSClientes.Open;
      end
      else
      begin
        begin
          if Token1 > ' ' then
          begin
            if CommonPOS.IsNumber(Trim(Token1)) OR (Copy(Token1, 1, 1) = '(') then
            begin
              if (Copy(Token1, 1, 1) = '(') or (CommonPOS.isNumber(Copy(Token1, 2, 1))) then
              begin
                if (Copy(Token1, 1, 1) = '(') then
                begin
                  CDSClientes.Close;
                  CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where Telefono = ' + chr(39) + Token1 + chr(39)
                  + ' or CELULAR = ' + chr(39) + Token1 + chr(39)
                  + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
                  CDSClientes.Open;
                end
                else
                begin
                  //ShowMessage('(' + Copy(Token1,1,3) + ')' + Copy(Token1,4,3) + '-' + Copy(Token1,7,4));
                  CDSClientes.Close;
                  CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where Telefono = ' + chr(39) + '(' + Copy(Token1,1,3) + ')' + Copy(Token1,4,3) + '-' + Copy(Token1,7,4) + chr(39)
                  + ' or CELULAR = '  + chr(39) + '(' + Copy(Token1,1,3) + ')' + Copy(Token1,4,3) + '-' + Copy(Token1,7,4) + chr(39)
                  + ' or Telefono = ' + chr(39) + Token1 + chr(39) + ' or CELULAR = '  + chr(39) + Token1 + chr(39)
                  + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
                  CDSClientes.Open;
                end;
                if Trim(CDSClientesNOMBRE.Value) = '' then
                begin
                  CDSClientes.Close;
                  CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where CardholderID = ' + chr(39) + Token1 + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
                  CDSClientes.Open;
                end;
                if Trim(CDSClientesNOMBRE.Value) = '' then
                begin
                  CDSClientes.Close;
                  CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where Identificacion = ' + chr(39) + Token1 + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
                  CDSClientes.Open;
                end;
                if Trim(CDSClientesNOMBRE.Value) = '' then
                begin
                  CDSClientes.Close;
                  CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where Socio = ' + #39 +  Token1 + #39;
                  CDSClientes.Open;
                end;
                if (Trim(CDSClientesNOMBRE.Value) = '') and (Length(Token1) < 10)  then
                begin
                  CDSClientes.Close;
                  CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where NumeroCliente = ' + #39 +  Token1 + #39;
                  CDSClientes.Open;
                end;
              end;
            end
            else
            begin
              if (Token1 > '') and (Token2 > '') and (Token3 > '') then
              begin
                CDSClientes.Close;
                CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' and ApellidoMaterno Like ' + chr(39) + Token2 + '%' + chr(39) + ' and Nombre Like ' + chr(39) + Token3 + '%' + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
                CDSClientes.Open;
              end;
              if (Token1 > '') and (Token3 > '') and (Token2 = '') then
              begin
                CDSClientes.Close;
                CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' and Nombre Like ' + chr(39) + Token3 + '%' + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
                CDSClientes.Open;
              end;
              if (Token1 > '') and (Token2 > '') and (Token3 = '') then
              begin
                CDSClientes.Close;
                CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' and ApellidoMaterno Like ' + chr(39) + Token2 + '%' + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
                CDSClientes.Open;
                if CDSClientesNOMBRE.Value = '' then
                begin
                  CDSClientes.Close;
                  CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' and Nombre Like ' + chr(39) + Token2 + '%' + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
                  CDSClientes.Open;
                end;
              end;
              if (Token1 > '') and (Token3 = '') and (Token2 = '') then
              begin
                CDSClientes.Close;
                CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
                CDSClientes.Open;
              end;
              if Trim(CDSClientesNOMBRE.Value) = '' then
              begin
                CDSClientes.Close;
                CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where Socio = ' + #39 +  Token1 + #39;
                CDSClientes.Open;
              end;
            end;
          end;
        end;
      end;
    except
      CommonPOS.ShowMessageStr('Error on open patient', 14, clRed)
    end;
  end;
end;

Procedure TQueries.OpenPatient_Rx(Token: String; NoCliente: Integer);
Var
  Token1, Token2, Token3: String;
begin
  With DMMidas do
  begin
    if CDSSetupNON_WESCOM_STORE.Value = True then
    begin
      qPacientes.Connection := FDConnection1;
    end
    else if CommonPOS.StandalonePOS = true then
    begin
      qPacientes.Connection := FDConnection2;
    end;
    if NoCliente > 0 then
    begin
      CDSPacientes.Close;
      CDSPacientes.CommandText := 'Select * from Pacientes with (NOLOCK) where NumeroCliente = ' + IntToStr(NoCliente);
      CDSPacientes.Open;
    end
    else
    begin
      Queries.MultiToken(Trim(Token), Token1, Token2, Token3);
      if Token1 > ' ' then
      begin
        if CommonPOS.IsNumber(Trim(Token1)) OR (Copy(Token1, 1, 1) = '(') then
        begin
          if (Copy(Token1, 1, 1) = '(') or (CommonPOS.isNumber(Copy(Token1, 2, 1))) then
          begin
            if (Copy(Token1, 1, 1) = '(') then
            begin
              CDSPacientes.Close;
              CDSPacientes.CommandText := 'Select * from Pacientes with (NOLOCK) where Telefono = ' + chr(39) + Token1 + chr(39)
              + ' or CELULAR = ' + chr(39) + Token1 + chr(39)
              + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
              CDSPacientes.Open;
            end
            else
            begin
              //ShowMessage('(' + Copy(Token1,1,3) + ')' + Copy(Token1,4,3) + '-' + Copy(Token1,7,4));
              CDSPacientes.Close;
              CDSPacientes.CommandText := 'Select * from Pacientes with (NOLOCK) where Telefono = ' + chr(39) + '(' + Copy(Token1,1,3) + ')' + Copy(Token1,4,3) + '-' + Copy(Token1,7,4) + chr(39)
              + ' or CELULAR = '  + chr(39) + '(' + Copy(Token1,1,3) + ')' + Copy(Token1,4,3) + '-' + Copy(Token1,7,4) + chr(39)
              + ' or Telefono = ' + chr(39) + Token1 + chr(39) + ' or CELULAR = '  + chr(39) + Token1 + chr(39)
              + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
              CDSPacientes.Open;
            end;
            if Trim(CDSPacientesNOMBRE.Value) = '' then
            begin
              CDSPacientes.Close;
              CDSPacientes.CommandText := 'Select * from Pacientes with (NOLOCK) where CardholderID = ' + chr(39) + Token1 + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
              CDSPacientes.Open;
            end;
            if Trim(CDSPacientesNOMBRE.Value) = '' then
            begin
              CDSPacientes.Close;
              CDSPacientes.CommandText := 'Select * from Pacientes with (NOLOCK) where Identificacion = ' + chr(39) + Token1 + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
              CDSPacientes.Open;
            end;
            if Trim(CDSPacientesNOMBRE.Value) = '' then
            begin
              CDSPacientes.Close;
              CDSPacientes.CommandText := 'Select * from Pacientes with (NOLOCK) where Socio = ' + #39 +  Token1 + #39;
              CDSPacientes.Open;
            end;
            if (Trim(CDSPacientesNOMBRE.Value) = '') and (Length(Token1) < 10)  then
            begin
              CDSPacientes.Close;
              CDSPacientes.CommandText := 'Select * from Pacientes with (NOLOCK) where NumeroCliente = ' + #39 +  Token1 + #39;
              CDSPacientes.Open;
            end;
          end;
        end
        else
        begin
          if (Token1 > '') and (Token2 > '') and (Token3 > '') then
          begin
            CDSPacientes.Close;
            CDSPacientes.CommandText := 'Select * from Pacientes with (NOLOCK) where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' and ApellidoMaterno Like ' + chr(39) + Token2 + '%' + chr(39) + ' and Nombre Like ' + chr(39) + Token3 + '%' + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
            CDSPacientes.Open;
          end;
          if (Token1 > '') and (Token3 > '') and (Token2 = '') then
          begin
            CDSPacientes.Close;
            CDSPacientes.CommandText := 'Select * from Pacientes with (NOLOCK) where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' and Nombre Like ' + chr(39) + Token3 + '%' + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
            CDSPacientes.Open;
          end;
          if (Token1 > '') and (Token2 > '') and (Token3 = '') then
          begin
            CDSPacientes.Close;
            CDSPacientes.CommandText := 'Select * from Pacientes with (NOLOCK) where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' and ApellidoMaterno Like ' + chr(39) + Token2 + '%' + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
            CDSPacientes.Open;
            if CDSPacientesNOMBRE.Value = '' then
            begin
              CDSPacientes.Close;
              CDSPacientes.CommandText := 'Select * from Pacientes with (NOLOCK) where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' and Nombre Like ' + chr(39) + Token2 + '%' + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
              CDSPacientes.Open;
            end;
          end;
          if (Token1 > '') and (Token3 = '') and (Token2 = '') then
          begin
            CDSPacientes.Close;
            CDSPacientes.CommandText := 'Select * from Pacientes with (NOLOCK) where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
            CDSPacientes.Open;
          end;
          if Trim(CDSPacientesNOMBRE.Value) = '' then
          begin
            CDSPacientes.Close;
            CDSPacientes.CommandText := 'Select * from Pacientes with (NOLOCK) where Socio = ' + #39 +  Token1 + #39;
            CDSPacientes.Open;
          end;
        end;
      end;
    end;
  end;
end;



{Procedure TQueries.OpenPatient(Token1, Token2, Token3: String; NoCliente: Integer);
Var
  NDCTFC: Char;
  NDCTF: String;
begin
  With DMMidas do
  begin
    if NoCliente > 0 then
    begin
      CDSClientes.Close;
      CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where NumeroCliente = ' + IntToStr(NoCliente);
      CDSClientes.Open;
    end
    else
    begin
      if (Copy(Token1, 1, 1) = '(') or (CommonPOS.IsNumber(Copy(Token1, 2, 1))) then
      begin
        if (Copy(Token1, 1, 1) = '(') then
        begin
          CDSClientes.Close;
          CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where Telefono = ' + chr(39) + Token1 + chr(39)
          + ' or CELULAR = ' + chr(39) + Token1 + chr(39)
          + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
          CDSClientes.Open;
        end
        else
        begin
          //ShowMessage('(' + Copy(Token1,1,3) + ')' + Copy(Token1,4,3) + '-' + Copy(Token1,7,4));
          CDSClientes.Close;
          CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where Telefono = ' + chr(39) + '(' + Copy(Token1,1,3) + ')' + Copy(Token1,4,3) + '-' + Copy(Token1,7,4) + chr(39)
          + ' or CELULAR = '  + chr(39) + '(' + Copy(Token1,1,3) + ')' + Copy(Token1,4,3) + '-' + Copy(Token1,7,4) + chr(39)
          + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
          CDSClientes.Open;
        end;
        Exit;
      end;

      if Token1 > ' ' then
      begin
        if CommonPOS.IsNumber(Trim(Token1)) then
        begin
          CDSClientes.Close;
          CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where CardholderID = ' + chr(39) + Token1 + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
          CDSClientes.Open;
          if CDSClientesNOMBRE.Value = '' then
          begin
            CDSClientes.Close;
            CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where Identificacion = ' + chr(39) + Token1 + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
            CDSClientes.Open;
          end;
          if CDSClientesNOMBRE.Value = '' then
          begin
            CDSClientes.Close;
            CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where Socio = ' + #39 +  Token1 + #39;
            CDSClientes.Open;
          end;
        end
        else
        begin
          if (Token1 > '') and (Token2 > '') and (Token3 > '') then
          begin
            CDSClientes.Close;
            CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' and ApellidoMaterno Like ' + chr(39) + Token2 + '%' + chr(39) + ' and Nombre Like ' + chr(39) + Token3 + '%' + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
            CDSClientes.Open;
          end;
          if (Token1 > '') and (Token3 > '') and (Token2 = '') then
          begin
            CDSClientes.Close;
            CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' and Nombre Like ' + chr(39) + Token3 + '%' + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
            CDSClientes.Open;
          end;
          if (Token1 > '') and (Token2 > '') and (Token3 = '') then
          begin
            CDSClientes.Close;
            CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' and ApellidoMaterno Like ' + chr(39) + Token2 + '%' + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
            CDSClientes.Open;
            //ShowMessage(CDSClientes.CommandText);
            if CDSClientesNOMBRE.Value = '' then
            begin
              CDSClientes.Close;
              CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' and Nombre Like ' + chr(39) + Token2 + '%' + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
              CDSClientes.Open;
            end;
          end;
          if (Token1 > '') and (Token3 = '') and (Token2 = '') then
          begin
            CDSClientes.Close;
            CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
            CDSClientes.Open;
          end;

        end;
      end;
    end;
  end;
end;}



{Var
  NDCTFC: Char;
  NDCTF: String;
begin
  {if FrmMain.WebCredit = True then
  begin
    With DM do
    begin
      CDSClientes.Close;
      CDSClientes.Open;
      CDSClientTransactions.Close;
      CDSClientTransactions.Open;
    end;
  end;}
{  With DMMidas do
  begin
    if NoCliente > 0 then
    begin
      CDSClientes.Close;
      CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where Socio Like ' + chr(39) + IntToStr(NoCliente) + '%' + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
      CDSClientes.Open;
    end
    else
    begin
      if Copy(Token1, 1, 1) = '(' then
      begin
        CDSClientes.Close;
        CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where Telefono = ' + chr(39) + Token1 + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
        CDSClientes.Open;
        Exit;
      end;
      if Token1 > ' ' then
      begin
        NDCTF := Copy(Token1, 1, 1);
        NDCTFC := NDCTF[1];
        if (ord(NDCTFC) >= 48) and (ord(NDCTFC) <= 57) then
        begin
          CDSClientes.Close;
          CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where CardholderID = ' + chr(39) + Token1 + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
          CDSClientes.Open;
          if CDSClientesNOMBRE.Value = '' then
          begin
            CDSClientes.Close;
            CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where Identificacion = ' + chr(39) + Token1 + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
            CDSClientes.Open;
          end;
        end
        else
        begin
          if (Token1 > '') and (Token2 > '') and (Token3 > '') then
          begin
            CDSClientes.Close;
            CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' and ApellidoMaterno Like ' + chr(39) + Token2 + '%' + chr(39) + ' and Nombre Like ' + chr(39) + Token3 + '%' + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
            CDSClientes.Open;
          end;
          if (Token1 > '') and (Token3 > '') and (Token2 = '') then
          begin
            CDSClientes.Close;
            CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' and Nombre Like ' + chr(39) + Token3 + '%' + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
            CDSClientes.Open;
          end;
          if (Token1 > '') and (Token2 > '') and (Token3 = '') then
          begin
            CDSClientes.Close;
            CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' and ApellidoMaterno Like ' + chr(39) + Token2 + '%' + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
            CDSClientes.Open;
            if CDSClientesNOMBRE.Value = '' then
            begin
              CDSClientes.Close;
              CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' and Nombre Like ' + chr(39) + Token2 + '%' + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
              CDSClientes.Open;
            end;
          end;
          if (Token1 > '') and (Token3 = '') and (Token2 = '') then
          begin
            CDSClientes.Close;
            CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where ApellidoPaterno Like ' + chr(39) + Token1 + '%' + chr(39) + ' OR Socio Like ' + chr(39) + Token1 + '%' + chr(39) + ' order by ApellidoPaterno, ApellidoMaterno, Nombre';
            CDSClientes.Open;
          end;

        end;
      end;
    end;
  end;
end;
}
procedure TQueries.InventoryControl(PRODUCT_ID: Integer; NDC: String; Qty: Double);
begin
  With DMMidas do
  begin
    CommonPOS.DisconnectFromDatabase;
    With UPDATE_INVENTORY do
    begin
      Prepare;
      ParamByName('@PRODUCTID').Value := PRODUCT_ID;
      ParamByName('@NDC_SEARCH').Value := '11111111111';
      ParamByName('@QTY').Value := Qty;
      ParamByName('@RECETARIO').Value := 'P';
      ExecProc;
    end;
    CDSInventarioPiso.Close;
    CDSInventarioPiso.CommandText := 'Select * from InventarioPiso with (NOLOCK) where Recetario = ' +#39+ 'P' +#39 + ' and PRODUCTNO = ' + IntToStr(PRODUCT_ID) + ' order by Descripcion';
    CDSInventarioPiso.Open;
    //CDSInventario2.Refresh;
  end;
end;

Procedure TQueries.OpenGroup(ProductID: Integer);
begin
  With DMMidas do
  begin
    CDSGroup.Close;
    CDSGroup.CommandText := 'Select * from InventarioPiso with (NOLOCK) where Group_ProductNO = ' + IntToStr(ProductID)  + ' and Recetario = ' +#39+ 'P' +#39 + ' Order by Descripcion';
    CDSGroup.Open;
  end;
end;

function TQueries.CalcBalance(SSN: String): Double;
Var
  TDebito, TCredito: Double;
begin
{  With DMMidas do
  begin
    if Queries.InternetAvailable = True then
    begin
      Try
      {tcpc.Host := '63.245.104.121';
      tcpc.Port := 8090;
        with DACDSDataTable do begin
          Close;
          DataRequestCall.MethodName := 'GetData_Farmacia_UnknowUser';
          DataRequestCall.ParamByName('UserName').asstring := 'wescom';
          DataRequestCall.ParamByName('Password').asstring := 'wescom';
          DataRequestCall.ParamByName('SQL').AsString := 'Select sum(amount) as TDebit from ClientTransactions where code = ' + #39 + 'DB' + #39 + ' and No_Seguro_social = ' + #39 + Trim(CDSClientesCARDHOLDERID.Value) + #39;
          DataRequestCall.ParamByName('MaxRows').AsInteger := -1;
          DataRequestCall.ParamByName('FarmaciaID').asstring := 'Feliciano2';
          Open;
          TDebito := DACDSDataTable.fieldbyName('TDebit').AsFloat;
          Close;
          DataRequestCall.MethodName := 'GetData_Farmacia_UnknowUser';
          DataRequestCall.ParamByName('UserName').asstring := 'wescom';
          DataRequestCall.ParamByName('Password').asstring := 'wescom';
          DataRequestCall.ParamByName('SQL').AsString := 'Select sum(amount) as TCredit from ClientTransactions where code = ' + #39 + 'CR' + #39 + ' and No_Seguro_social = ' + #39 + Trim(CDSClientesCARDHOLDERID.Value) + #39;
          DataRequestCall.ParamByName('MaxRows').AsInteger := -1;
          DataRequestCall.ParamByName('FarmaciaID').asstring := 'Feliciano2';
          Open;
          //CDSClientesDEUDA_WEB.Value := TDebito - TCredito;
          TCredito := DACDSDataTable.fieldbyName('TCredit').AsFloat;
          Result := TDebito - TCredito;;
        end;
        //Statusbar1.simpletext := ('Done in  : ' + timetostr(now) + '-'+ timetostr(st) +' seconds');
      Except
        //Statusbar1.simpletext := ('Last command was not executed.');
      end;
    end;
  end;}
end;

Function TQueries.InternetAvailable: Boolean;
begin
  With DMMidas do
  begin
    Try
    TCPClient.Host := '63.245.104.121';
    TCPClient.Port := 8091;
    TCPClient.Connect;
    Result := True;
    TCPClient.Disconnect;
    except
      begin
        if FrmMain.LanguageStr = 'English' then
          ShowMessage(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 316))
        else
        ShowMessage('No hay conexion al internet, trate más tarde');
        Result := False;
      end;
    end;
  end;
end;

Procedure TQueries.DeleteWebCredit(TransNo: Integer);
Var DeudaWeb: Double;
begin
  With DMMidas do
  begin
    if CDSWebCredRep.Active = False then CDSWebCredRep.Active := True;
    CDSWebCredRep.Append;
    CDSWebCredRepSQL_COMMAND.Value := 'Delete from ClientTransactions where TransNo = ' + IntToStr(TransNo);
    CDSWebCredRep.Post;
  end;
end;

function TQueries.DeudaCliente(NoCliente: Integer): Double;
begin
  With DMMidas do
  begin
    CDSClientes.Close;
    CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where NumeroCliente = ' + IntToStr(NoCliente);
    CDSClientes.Open;
    Result := CDSClientesDEUDA.asFloat;
  end;
end;

function TQueries.DeudaClienteLayaway(NoCliente: Integer): Double;
begin
  With DMMidas do
  begin
    CDSClientes.Close;
    CDSClientes.CommandText := 'Select * from Pacientes with (NOLOCK) where NumeroCliente = ' + IntToStr(NoCliente);
    CDSClientes.Open;
    Result := CDSClientesLAWAY.asFloat;
  end;
end;


Procedure TQueries.OpenPlanesMedicos(Token: String);
begin
  with DMMidas do
  begin
    if Token > '' then
    begin
      CDSPlanesMedicos.Close;
      CDSPlanesMedicos.CommandText :=  'Select * from PlanesMedicos Where Abreviatura = '+  #39 + Trim(Token) + #39;
      CDSPlanesMedicos.Open;
    end
    else
    begin
      CDSPlanesMedicos.Close;
      CDSPlanesMedicos.CommandText :=  'Select * from PlanesMedicos order by Nombre';
      CDSPlanesMedicos.Open;
    end;
  end;
end;

procedure TQueries.OpenWillCall_Status(Bag_Number: String);
begin
  With DMwc do
  begin
    cdsWillCall_Status.Close;
    cdsWillCall_Status.CommandText := 'Select * from WillCall_Status with (NOLOCK) where bag_number = ' + chr(39) + Bag_Number + chr(39);
    cdsWillCall_Status.Open;
  end;
end;

procedure TQueries.OpenWillCallBag(Bag_Number: String);
begin
  With DMwc do
  begin
    cdsWillCall.Close;
    cdsWillCall.CommandText := 'Select * from WillCall with (NOLOCK) where Bag_Number = ' + Bag_Number + ' order by Rx_Number';
    cdsWillCall.Open;
  end;
end;

function TQueries.WillCallOpenRx(OTCNumber, NoRx: String): String;
begin
  With DMwc do
  begin
    cdsWillCall.Close;
    if Trim(OTCNumber) > '' then
      cdsWillCall.CommandText := 'Select * from WillCall with (NOLOCK) where OTC_NUMBER = ' + chr(39) + OTCNumber + chr(39)
    else
      cdsWillCall.CommandText := 'Select * from WillCall with (NOLOCK) where RX_NUMBER = ' + chr(39) + NoRx + chr(39);
    cdsWillCall.Open;
    if cdsWillCall.RecordCount > 0 then
      Result := cdsWillCallBAG_NUMBER.Value
    else
      Result := '0';
  end;
end;

Procedure TQueries.OpenWC_Patient(Token: String);
begin
  With DMwc do
  begin
    cdsWC_PATIENTS.Close;
    cdsWC_PATIENTS.CommandText := DMwc.getWC_PATIENTS(CommonPOS.DataBaseNamePOS, CommonPOS.DataBaseNameRx) +
    ' ' + Token + ' order by APELLIDOPATERNO, APELLIDOMATERNO, NOMBRE';
    cdsWC_PATIENTS.Open;
  end;
end;


end.