unit UntInventoryHandheld;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, ToolWin, ComCtrls, StdCtrls, Mask,
  Buttons, ExtCtrls, DB, DBCGrids, Vcl.Touch.Keyboard, Vcl.Menus, ResourceLocalizer,
  StrUtils;


type
  TFrmHandheld = class(TForm)
    Panel5: TPanel;
    Label5: TLabel;
    Label11: TLabel;
    cboDevices: TComboBox;
    cboUsers: TComboBox;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    DBGridHandheld: TDBGrid;
    Panel6: TPanel;
    Panel7: TPanel;
    btnCancel: TButton;
    btnProcess: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    chkAllDismiss: TCheckBox;
    chkAllRemove: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure cboControlChange(Sender: TObject);
    procedure rbOnClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnProcessClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure chkAllDismissClick(Sender: TObject);
    procedure chkAllRemoveClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHandheld: TFrmHandheld;
  cboType:  Integer;
  isInitialize: boolean;
  procedure fillcboDevicesUser(pType: Integer;cboControl:TComboBox);
  procedure FillGrid(cboDevices1 , cboUsers1:string);
  function IIF(Condition: Boolean; TrueResult, FalseResult: Variant): Variant;
  procedure fillCounters(cboDevices1 , cboUsers1:string ;Label12_,Label19_,Label20_,Label21_,Label22_ : TLabel);
  procedure DisableAllChk(Sender: TCheckBox; DBGridH: TDBGrid; iOPC: Integer; iwitch: boolean);

implementation

{$R *.dfm}

uses UntDMMidas, UntQueries, UntEditInventory, UntAgruparProductos, untMain,
  UntBrowseInv, UntCommon, UntCommonPOS, UntlabelBC, UntSeleccioneOpcion,
  UntEditInventorySP, UntExportInventory;

procedure fillcboDevicesUser(pType: Integer;cboControl:TComboBox);
begin
  With DMMidas do
    begin
      POS_GET_HANDHELDINFO.Unprepare;
      POS_GET_HANDHELDINFO.Params.Clear;
      POS_GET_HANDHELDINFO.Params.Add('@pType', ftInteger).AsInteger:=pType;
      POS_GET_HANDHELDINFO.Prepare;
      POS_GET_HANDHELDINFO.Open;
      POS_GET_HANDHELDINFO.First;
      cboControl.Clear;
      While not POS_GET_HANDHELDINFO.Eof do
      begin
          cboControl.Items.Add(POS_GET_HANDHELDINFO.FieldByName('DESCRIPTION').AsString);
          POS_GET_HANDHELDINFO.Next;
      end;
      POS_GET_HANDHELDINFO.Close;
    end;
end;
procedure fillCounters(cboDevices1 , cboUsers1:string ;Label12_,Label19_,Label20_,Label21_,Label22_ : TLabel);
begin
  With DMMidas do
    begin
      POS_GET_HANDHELDINFO.Unprepare;
      POS_GET_HANDHELDINFO.Params.Clear;
      POS_GET_HANDHELDINFO.Params.Add('@pType', ftInteger).AsInteger:=3;
      POS_GET_HANDHELDINFO.Params.Add('@pDevices', ftString).AsString:= cboDevices1;
      POS_GET_HANDHELDINFO.Params.Add('@pUsers', ftString).AsString:= cboUsers1;
      POS_GET_HANDHELDINFO.Prepare;
      POS_GET_HANDHELDINFO.Open;
      POS_GET_HANDHELDINFO.First;
      if not POS_GET_HANDHELDINFO.Eof then
      begin
//          POS_GET_HANDHELDINFO.FieldByName('TSTICKERS').AsString + ' Items';
          Label12_.Caption := POS_GET_HANDHELDINFO.FieldByName('TTOTAL').AsString + ' Items';
          Label20_.Caption := POS_GET_HANDHELDINFO.FieldByName('TINVENTORY').AsString + ' Items';
          Label21_.Caption := POS_GET_HANDHELDINFO.FieldByName('TRETURNS').AsString + ' Items';
          Label19_.Caption := POS_GET_HANDHELDINFO.FieldByName('TRECEIVING').AsString + ' Items';
//          POS_GET_HANDHELDINFO.FieldByName('TQUICKORDER').AsString + ' Items';
          Label22_.Caption := POS_GET_HANDHELDINFO.FieldByName('TTRANSFER').AsString + ' Items';
//          POS_GET_HANDHELDINFO.FieldByName('TTRASFPHARM').AsString + ' Items';

          POS_GET_HANDHELDINFO.Next;
      end;
      POS_GET_HANDHELDINFO.Close;
    end;
end;
function IIF(Condition: Boolean; TrueResult, FalseResult: Variant): Variant;
begin
  if Condition then
    Result := TrueResult
  else
    Result := FalseResult;
end;

procedure FillGrid(cboDevices1, cboUsers1:string);
var
  sQuery1 : string;
begin
    if (cboDevices1 <>'') and (cboUsers1 <>'') and (cboType >=0) then
    begin
        With DMMidas do
        begin
          CDSRecHandheld.Close;
          sQuery1 := 'SELECT ID,TYPE,IIF(TYPE=1,''INV.MOD'',IIF(TYPE=4,''RECEIV.'',IIF(TYPE=1,''INV.MOD'',IIF(TYPE=3,''RETURN'','''')))) TYPENAME,' +
                    ' DeviceID,HANDHELD.[USERNAME],UPPER(PASSWORDS.USERNAME) USERDETAIL,CONVERT(VARCHAR,DATE,101) as Date,UPC,QSource,QTY,DISMISS,REMOVE,QDest,Processed,Reason,INVENTARIOPISO.DESCRIPCION,INVENTARIOPISO.vendor_ide VENDID ' +
                    ' FROM dbo.HANDHELD ' +
                    ' INNER JOIN PASSWORDS ON HANDHELD.USERNAME=PASSWORDS.INICIALES ' +
                    ' INNER JOIN INVENTARIOPISO ON HANDHELD.UPC=INVENTARIOPISO.CODIGOBARRA WHERE processed=0 ' +
                    IIF(cboDevices1 ='ALL', '', ' and DeviceID = '+ ''''+cboDevices1 + '''') +
                    IIF(cboUsers1 ='ALL', '', ' and PASSWORDS.USERNAME  = '+''''+ cboUsers1 + '''') +
                    IIF(cbotype <> 0, ' and type =' + IntToStr(cboType)  , '');
          CDSRecHandheld.CommandText := StringReplace(sQuery1,'''',Chr(39), [rfReplaceAll]) ;
          CDSRecHandheld.Open;
        end;
    end;

end;
procedure TFrmHandheld.btnCancelClick(Sender: TObject);
begin
    Close;
end;

procedure TFrmHandheld.btnProcessClick(Sender: TObject);
var
    DataSet: TDataSet;
    bStickers: Boolean;
    s: string;
begin
    bStickers := False;
    if (((StrToInt(StringReplace(Label20.Caption,' Items','', [rfReplaceAll, rfIgnoreCase]))>0) OR (StrToInt(StringReplace(Label19.Caption,' Items','', [rfReplaceAll, rfIgnoreCase]))>0)) and RadioButton1.Checked=true)
       or RadioButton2.Checked=true or RadioButton3.Checked=true then
    begin
        if Application.MessageBox('Do you want to create Stickers, for this items?', 'Confirmación', MB_YESNO) = IDYES then
        begin
          bStickers := True;
        end;
    end;
    s := FormatDateTime('mm/dd/yyyy hh:nn:ss', Now);

    DataSet := DBGridHandheld.DataSource.DataSet;
    DataSet.First;
    while not DataSet.Eof do
    begin
      if not DataSet.FieldByName('Dismiss').AsBoolean then
      begin
          With DMMidas do
          begin
            POS_GET_HANDHELDINFO.Unprepare;
            POS_GET_HANDHELDINFO.Params.Clear;
            if DataSet.FieldByName('Remove').AsBoolean then
              POS_GET_HANDHELDINFO.Params.Add('@pType', ftInteger).AsInteger := 4 //remove
            else
              POS_GET_HANDHELDINFO.Params.Add('@pType', ftInteger).AsInteger := 5; //update

            POS_GET_HANDHELDINFO.Params.Add('@pUPC', ftInteger).AsString := DataSet.FieldByName('UPC').AsString;
            POS_GET_HANDHELDINFO.Params.Add('@pID', ftInteger).AsInteger := DataSet.FieldByName('ID').AsInteger;
            POS_GET_HANDHELDINFO.Params.Add('@pTypeProcess', ftInteger).AsInteger := DataSet.FieldByName('TYPE').AsInteger;
            POS_GET_HANDHELDINFO.Params.Add('@pQtyInv',ftInteger).AsInteger  := DataSet.FieldByName('QTY').AsInteger ;
            POS_GET_HANDHELDINFO.Params.Add('@pStickers',ftInteger).AsBoolean := bStickers;
            POS_GET_HANDHELDINFO.Params.Add('@pDATE',ftString).AsString := s;
            POS_GET_HANDHELDINFO.Params.Add('@pVENDID',ftString).AsString := DataSet.FieldByName('VENDID').AsString;;
            POS_GET_HANDHELDINFO.Prepare;
            POS_GET_HANDHELDINFO.ExecProc;
            POS_GET_HANDHELDINFO.Close;
          end;
      end;
      DataSet.Next;
    end;
    ShowMessage('Done!');
    FillGrid(cboDevices.Text,cbousers.Text);
    fillCounters(cboDevices.Text,cbousers.Text,Label12,Label19,Label20,Label21,Label22);
end;

procedure TFrmHandheld.cboControlChange(Sender: TObject);
begin
          fillCounters(cboDevices.Text,cbousers.Text,Label12,Label19,Label20,Label21,Label22);
          FillGrid(cboDevices.Text,cbousers.Text);
end;

procedure TFrmHandheld.chkAllDismissClick(Sender: TObject);
begin
  if not isInitialize then
    DisableAllChk(chkAllRemove,DBGridHandheld,1,chkAllDismiss.checked);
end;

procedure TFrmHandheld.chkAllRemoveClick(Sender: TObject);
begin
  if not isInitialize then
    DisableAllChk(chkAllDismiss, DBGridHandheld,2,chkAllRemove.checked);
end;
procedure DisableAllChk(Sender: TCheckBox; DBGridH: TDBGrid;iOPC: Integer;iwitch: boolean);
var
    DataSet: TDataSet;
begin

    DataSet := DBGridH.DataSource.DataSet;

    DataSet.First;
    while not DataSet.Eof do
    begin
      if not (DataSet.State in [dsEdit]) then
          DataSet.Edit;

      if not iwitch then
          DataSet.FieldByName(iif(iOPC=1,'Dismiss','Remove')).AsBoolean := false
      else
      begin
            DataSet.FieldByName(iif(iOPC=1,'Dismiss','Remove')).AsBoolean :=true;
            DataSet.FieldByName(iif(iOPC=1,'Remove','Dismiss')).AsBoolean :=false;
      end;
                  DataSet.Post;

      if DataSet.State in [dsEdit, dsInsert] then
        DataSet.Cancel;

      DataSet.Next;
    end;
    isInitialize:=true;

    Sender.Checked := false;

    isInitialize:=false;
{
        With DMMidas do
        begin

            if not (CDSRecHandheld.State in [dsEdit]) then
              CDSRecHandheld.Edit;
            if not iwitch then
                CDSRecHandheld.FieldByName(iif(iOPC=1,'Dismiss','Remove')).AsBoolean := false
            else
            begin
                  CDSRecHandheld.FieldByName(iif(iOPC=1,'Dismiss','Remove')).AsBoolean :=true;
                  CDSRecHandheld.FieldByName(iif(iOPC=1,'Remove','Dismiss')).AsBoolean :=false;
            end;
            CDSRecHandheld.Post;

            if CDSRecHandheld.State in [dsEdit, dsInsert] then
              CDSRecHandheld.Cancel;
            CDSRecHandheld.Next;
        end;
 }
end;
procedure TFrmHandheld.DBGrid1CellClick(Column: TColumn);
begin
  if (Column.FieldName = 'DISMISS') OR (Column.FieldName = 'REMOVE') then
  begin
        isInitialize:=true;
        With DMMidas do
        begin

            if not (CDSRecHandheld.State in [dsEdit]) then
              CDSRecHandheld.Edit;

            Column.Field.AsBoolean := not Column.Field.AsBoolean;
            if (Column.FieldName = 'DISMISS') then
            begin
                CDSRecHandheld.FieldByName('Remove').AsBoolean :=false ;
                chkAllRemove.Checked := false;
            end
            else
            begin
                CDSRecHandheld.FieldByName('Dismiss').AsBoolean :=false;
                chkAllDismiss.Checked := false;
            end;

            CDSRecHandheld.Post;

            if CDSRecHandheld.State in [dsEdit, dsInsert] then
              CDSRecHandheld.Cancel;
        end;
        isInitialize:=false;
  end;

end;

procedure TFrmHandheld.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (Column.FieldName = 'DISMISS') OR (Column.FieldName = 'REMOVE') then
  begin
    with DBGridHandheld.Canvas do
    begin
      FillRect(Rect);
      if Column.Field.AsBoolean then
        DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK or DFCS_CHECKED)
      else
        DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK);
    end;
  end
  else
    DBGridHandheld.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrmHandheld.FormCreate(Sender: TObject);
begin
    cboType := 0;
    isInitialize :=false;
    fillcboDevicesUser(1 ,cboDevices);
    fillcboDevicesUser(2 ,cboUsers);
    DBGridHandheld.Options := DBGridHandheld.Options - [dgEditing];
    cboDevices.ItemIndex :=0;
    cboUsers.ItemIndex :=0;
    fillCounters(cboDevices.Text,cbousers.Text,Label12,Label19,Label20,Label21,Label22);
    FillGrid(cboDevices.Text,cbousers.Text);
    Self.Position := poScreenCenter;
end;

procedure TFrmHandheld.FormResize(Sender: TObject);
var
  iWidth: integer;
begin
  iWidth:= (DBGridHandheld.Width-30 ) div 11;
    DBGridHandheld.Columns[0].Width := iWidth;
    DBGridHandheld.Columns[1].Width := iWidth;
//    DBGridHandheld.Columns[2].Width := 0;
    DBGridHandheld.Columns[3].Width := iWidth;
    DBGridHandheld.Columns[4].Width := iWidth;
    DBGridHandheld.Columns[5].Width := iWidth;
    DBGridHandheld.Columns[6].Width := iWidth * 2;
    DBGridHandheld.Columns[7].Width := iWidth;
    DBGridHandheld.Columns[8].Width := iWidth;
    DBGridHandheld.Columns[9].Width := iWidth;
    DBGridHandheld.Columns[10].Width := iWidth;
    DBGridHandheld.Columns[11].Width := 0;
    Panel2.Width := iWidth*2 + 40;
    chkAllDismiss.Left := Round(iWidth / 1.5);
    chkAllRemove.Left :=  iWidth + Round(iWidth / 1.5);
end;

procedure TFrmHandheld.rbOnClick(Sender: TObject);
begin

         //cboType := StrToInt( RightStr(TControl(Sender).Name,1)) -1;
         cboType := IndexStr(TControl(Sender).Name,['RadioButton1','RadioButton3','','RadioButton4','RadioButton2','','RadioButton6','']);
         FillGrid(cboDevices.Text,cbousers.Text);
end;

end.

