unit UntProcess832files;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids,  StrUtils;


type
  TMyDBGrid = class(TDBGrid);
  TFrmProcess832 = class(TForm)
    Panel5: TPanel;
    Label5: TLabel;
    Label11: TLabel;
    cboDate: TComboBox;
    cboDpto: TComboBox;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Panel1: TPanel;
    Panel2: TPanel;
    chkAllDismiss: TCheckBox;
    chkAllRemove: TCheckBox;
    Panel6: TPanel;
    Panel7: TPanel;
    btnCancel: TButton;
    btnProcess: TButton;
    DBGridProcess832: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure cboControlChange(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormResize(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure rbOnClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnProcessClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProcess832: TFrmProcess832;
  cboType:  Integer;
  isInitialize: boolean;
  procedure fillcboDevicesUser(pType: Integer;cboControl:TComboBox);
  //procedure FillGrid(cboDevices1 , cboUsers1:string);
  function IIF(Condition: Boolean; TrueResult, FalseResult: Variant): Variant;
  procedure fillCounters(cboDevices1 , cboUsers1:string ;Label12_,Label19_,Label20_ : TLabel);
//  procedure DisableAllChk(Sender: TCheckBox; DBGridH: TDBGrid; iOPC: Integer; iwitch: boolean);

implementation

{$R *.dfm}

uses UntDMMidas, UntQueries, UntEditInventory, UntAgruparProductos, untMain,
  UntBrowseInv, UntCommon, UntCommonPOS, UntlabelBC, UntSeleccioneOpcion,
  UntEditInventorySP, UntExportInventory;

procedure fillcboDevicesUser(pType: Integer;cboControl:TComboBox);
begin
  With DMMidas do
    begin
      POS_GET_PROCESS832.Unprepare;
      POS_GET_PROCESS832.Params.Clear;
      POS_GET_PROCESS832.Params.Add('@pType', ftInteger).AsInteger:=pType;
      POS_GET_PROCESS832.Prepare;
      POS_GET_PROCESS832.Open;
      POS_GET_PROCESS832.First;
      cboControl.Clear;
      if pType=2 then
        cboControl.Items.Add('ALL');

      While not POS_GET_PROCESS832.Eof do
      begin
          cboControl.Items.Add(POS_GET_PROCESS832.FieldByName('DESCRIPCION').AsString);
          POS_GET_PROCESS832.Next;
      end;
      POS_GET_PROCESS832.Close;
    end;
end;
procedure fillCounters(cboDevices1 , cboUsers1:string ;Label12_,Label19_,Label20_ : TLabel);
begin
  With DMMidas do
    begin
      POS_GET_PROCESS832.Unprepare;
      POS_GET_PROCESS832.Params.Clear;
      POS_GET_PROCESS832.Params.Add('@pType', ftInteger).AsInteger:=3;
      POS_GET_PROCESS832.Params.Add('@pDATE', ftString).AsString:= cboDevices1;
      POS_GET_PROCESS832.Params.Add('@pDevices', ftString).AsString:= cboUsers1;
      POS_GET_PROCESS832.Prepare;
      POS_GET_PROCESS832.Open;
      POS_GET_PROCESS832.First;
      if not POS_GET_PROCESS832.Eof then
      begin
//          POS_GET_PROCESS832.FieldByName('TSTICKERS').AsString + ' Items';
          Label12_.Caption := POS_GET_PROCESS832.FieldByName('TTOTAL').AsString + ' Items';
          Label19_.Caption := POS_GET_PROCESS832.FieldByName('tActive').AsString + ' Items';
          Label20_.Caption := POS_GET_PROCESS832.FieldByName('tInactive').AsString + ' Items';

          POS_GET_PROCESS832.Next;
      end;
      POS_GET_PROCESS832.Close;
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
          CDSProcess832.Close;
          sQuery1 := 'SELECT it1.[ID],[DtCreated],it1.[UPC],items.DESCRIPCION,items.vendor_ide,items.[Size_It],it1.[Case_qty],it1.[Case_cost]' +
                     ' ,items.COSTO Unit_costP,items.PRECIO Lp1P,items.Gm1 Gm1P,it1.[Unit_cost],it1.[LP1],iif(it1.[Gm1]>0,it1.[Gm1],items.Gm1) GM1,it1.[VEND_NUM]' +
                     ' ,[UpdateItem],[Process],[WHO_MOD],[DtProcessed],dp2.DESCRIPCION Department,items.inactive ,DISMISS,REMOVE'+
                     ' ,iif(it1.[Gm1]>0,it1.[Gm1],items.Gm1)-items.Gm1 difGM,it1.[LP1]-items.PRECIO difPrice' +
                     ' FROM [dbo].[Items832spool] it1' +
                     ' INNER join INVENTARIOPISO Items on It1.upc=items.CODIGOBARRA' +
                     ' left join DEPARTAMENTO dp2 on items.DEPARTAMENTO=dp2.DEPARTAMENTO' +
                     ' Where Process=0 and DtProcessed is null  ' +
                     ' and DtCreated = '''+cboDevices1 + '''' +
                     IIF(cboUsers1 ='ALL', '', ' and dp2.DESCRIPCION = '+''''+ cboUsers1 + '''') +
                     IIF(cbotype <2, ' and items.INACTIVE =' + IntToStr(cboType)  , '');
          CDSProcess832.CommandText := StringReplace(sQuery1,'''',Chr(39), [rfReplaceAll]) ;
          CDSProcess832.Open;
        end;
    end;

end;
procedure TFrmProcess832.btnCancelClick(Sender: TObject);
begin
    Close;
end;

procedure TFrmProcess832.btnProcessClick(Sender: TObject);
var
    DataSet: TDataSet;
    bStickers: Boolean;
    s: string;
begin
    bStickers := False;
    if (((StrToInt(StringReplace(Label20.Caption,' Items','', [rfReplaceAll, rfIgnoreCase]))>0) OR (StrToInt(StringReplace(Label19.Caption,' Items','', [rfReplaceAll, rfIgnoreCase]))>0)) and RadioButton1.Checked=true)
       or RadioButton2.Checked=true or RadioButton3.Checked=true then
    begin
        if Application.MessageBox('Do you want to create Stickers, for this items?', 'Confirmation', MB_YESNO) = IDYES then
        begin
          bStickers := True;
        end;
    end;
    s := FormatDateTime('mm/dd/yyyy hh:nn:ss', Now);

    DataSet := DBGridProcess832.DataSource.DataSet;
    DataSet.First;
    while not DataSet.Eof do
    begin
      if not DataSet.FieldByName('Dismiss').AsBoolean then
      begin
          With DMMidas do
          begin
            POS_GET_PROCESS832.Unprepare;
            POS_GET_PROCESS832.Params.Clear;
            if DataSet.FieldByName('Remove').AsBoolean then
              POS_GET_PROCESS832.Params.Add('@pType', ftInteger).AsInteger := 4 //remove
            else
              POS_GET_PROCESS832.Params.Add('@pType', ftInteger).AsInteger := 5; //update

            POS_GET_PROCESS832.Params.Add('@pUPC', ftInteger).AsString := DataSet.FieldByName('UPC').AsString;
            POS_GET_PROCESS832.Params.Add('@pID', ftInteger).AsInteger := DataSet.FieldByName('ID').AsInteger;
            POS_GET_PROCESS832.Params.Add('@pStickers',ftInteger).AsBoolean := iif(DataSet.FieldByName('inactive').AsBoolean=True,False, bStickers);
            POS_GET_PROCESS832.Params.Add('@pDATE',ftString).AsString := s;
            POS_GET_PROCESS832.Params.Add('@pVENDID',ftString).AsString := DataSet.FieldByName('vendor_ide').AsString;
            POS_GET_PROCESS832.Params.Add('@pNewCost',ftSingle).AsSingle := DataSet.FieldByName('Unit_cost').AsSingle;
            POS_GET_PROCESS832.Params.Add('@pNewRetail',ftSingle).AsSingle := DataSet.FieldByName('lp1').AsSingle;
            POS_GET_PROCESS832.Params.Add('@pNewGM',ftSingle).AsSingle := iif(DataSet.FieldByName('Gm1').AsSingle=0,DataSet.FieldByName('Gm1P').AsSingle,DataSet.FieldByName('Gm1').AsSingle);
            POS_GET_PROCESS832.Prepare;
            POS_GET_PROCESS832.ExecProc;
            POS_GET_PROCESS832.Close;
          end;
      end;
      DataSet.Next;
    end;
    ShowMessage('Done!');
    FillGrid(cboDate.Text,cbodpto.Text);
    fillCounters(cboDate.Text,cbodpto.Text,Label12,Label19,Label20);
end;

procedure TFrmProcess832.cboControlChange(Sender: TObject);
begin
    fillCounters(cboDate.Text,cboDpto.Text,Label12,Label19,Label20);
    FillGrid(cboDate.Text,cboDpto.Text);
end;
procedure TFrmProcess832.FormCreate(Sender: TObject);
begin
{
  TMyDBGrid(DBGridProcess832).DefaultRowHeight := 36;
    DBGridProcess832.TitleFont.Size := 8;
    DBGridProcess832.Columns[5].Title.Caption := 'CURRENT'#13#10'COST';
    DBGridProcess832.Columns[6].Title.Caption := 'NEW'#13#10'COST';
    DBGridProcess832.Columns[7].Title.Caption := 'CURRENT'#13#10'RETAIL';
    DBGridProcess832.Columns[8].Title.Caption := 'NEW'#13#10'RETAIL';
    DBGridProcess832.Columns[9].Title.Caption := '% Gm'#13#10'Differ';
    DBGridProcess832.Columns[10].Title.Caption := 'Price'#13#10'Difference';
 }
    cboType := 2;
    isInitialize :=false;
    fillcboDevicesUser(1 ,cboDate);
    fillcboDevicesUser(2 ,cboDpto);
    DBGridProcess832.Options := DBGridProcess832.Options - [dgEditing];
    cboDate.ItemIndex :=0;
    cboDpto.ItemIndex :=0;
    fillCounters(cboDate.Text,cboDpto.Text,Label12,Label19,Label20);
    FillGrid(cboDate.Text,cboDpto.Text);
    Self.Position := poScreenCenter;
end;


procedure TFrmProcess832.FormResize(Sender: TObject);
begin
 var
  iWidth: integer;
begin
  iWidth:= (DBGridProcess832.Width-30 ) div 13;
    DBGridProcess832.Columns[0].Width := iWidth;
    DBGridProcess832.Columns[1].Width := 0;
    DBGridProcess832.Columns[2].Width := iWidth;
    DBGridProcess832.Columns[3].Width := iWidth * 2-20;
    DBGridProcess832.Columns[4].Width := iWidth;
    DBGridProcess832.Columns[5].Width := iWidth;
    DBGridProcess832.Columns[6].Width := iWidth;
    DBGridProcess832.Columns[7].Width := iWidth;
    DBGridProcess832.Columns[8].Width := iWidth;
    DBGridProcess832.Columns[9].Width := iWidth;
    DBGridProcess832.Columns[10].Width := iWidth;
    DBGridProcess832.Columns[11].Width := 0;
    DBGridProcess832.Columns[12].Width := 0;
    DBGridProcess832.Columns[13].Width := iWidth;
    DBGridProcess832.Columns[14].Width := iWidth;
    Panel2.Width := iWidth*2 + 40;
    chkAllDismiss.Left := Round(iWidth / 1.5);
    chkAllRemove.Left :=  iWidth + Round(iWidth / 1.5);



end;
end;

procedure TFrmProcess832.rbOnClick(Sender: TObject);
begin
    cboType := IndexStr(TControl(Sender).Name,['RadioButton2','RadioButton3','RadioButton1','']);
    FillGrid(cboDate.Text,cboDpto.Text);
end;

procedure TFrmProcess832.DBGrid1CellClick(Column: TColumn);
begin
   if (Column.FieldName = 'DISMISS') OR (Column.FieldName = 'REMOVE') then
  begin
        isInitialize:=true;
        With DMMidas do
        begin

            if not (CDSProcess832.State in [dsEdit]) then
              CDSProcess832.Edit;

            Column.Field.AsBoolean := not Column.Field.AsBoolean;
            if (Column.FieldName = 'DISMISS') then
            begin
                CDSProcess832.FieldByName('Remove').AsBoolean :=false ;
                chkAllRemove.Checked := false;
            end
            else
            begin
                CDSProcess832.FieldByName('Dismiss').AsBoolean :=false;
                chkAllDismiss.Checked := false;
            end;

            CDSProcess832.Post;

            if CDSProcess832.State in [dsEdit, dsInsert] then
              CDSProcess832.Cancel;
        end;
        isInitialize:=false;
  end;

end;

procedure TFrmProcess832.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  HeaderLines: TStringList;
  LineHeight, i: Integer;
  R: TRect;
begin
  if gdFixed in State then
  begin
    DBGridProcess832.Canvas.Font.Size := 8;
    DBGridProcess832.Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, Column.Title.Caption);

    HeaderLines := TStringList.Create;
    try
      HeaderLines.Text := StringReplace(Column.Title.Caption, '#13#10', #13#10, [rfReplaceAll]);
      LineHeight := DBGridProcess832.Canvas.TextHeight('W');

      R := Rect;
      for i := 0 to HeaderLines.Count - 1 do
      begin
        DBGridProcess832.Canvas.TextRect(R, R.Left + 4, R.Top + (i * LineHeight), HeaderLines[i]);
      end;
    finally
      HeaderLines.Free;
    end;
  end;

  if (Column.FieldName = 'DISMISS') OR (Column.FieldName = 'REMOVE') then
  begin
    with DBGridProcess832.Canvas do
    begin
      FillRect(Rect);
      if Column.Field.AsBoolean then
        DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK or DFCS_CHECKED)
      else
        DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK);
    end;
  end
  else
    DBGridProcess832.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
