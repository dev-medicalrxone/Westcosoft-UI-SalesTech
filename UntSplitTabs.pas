unit UntSplitTabs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Touch.Keyboard, Vcl.StdCtrls;

type
  TFrmSplitTab = class(TForm)
    Panel1: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Panel3: TPanel;
    TouchKeyboard1: TTouchKeyboard;
    Panel4: TPanel;
    Panel5: TPanel;
    Button1: TButton;
    Panel6: TPanel;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBGrid1: TDBGrid;
    Button2: TButton;
    Button8: TButton;
    Button5: TButton;
    Label5: TLabel;
    Label1: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label2: TLabel;
    Label6: TLabel;
    DBText6: TDBText;
    Label7: TLabel;
    DBText7: TDBText;
    DBText8: TDBText;
    Label8: TLabel;
    btnOk: TButton;
    btnAllTabs: TButton;
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure RefreshTables(TRANSNO_FROM, TRANSNO_TO: Integer); 
    procedure ImportTAB;
    procedure Button8Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ExportOneToOne(TRANSNO_FROM, TRANSNO_TO, ID: Integer);
    procedure ExportAll(TRANSNO_FROM, TRANSNO_TO: Integer);
    procedure OpenTabs(TransNo: Integer);
    procedure btnAllTabsClick(Sender: TObject);
    procedure CancelTabs(TransNo: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSplitTab: TFrmSplitTab;

implementation

{$R *.dfm}

uses UntDMMidas, UntCommonPOS, UntQueries;

procedure TFrmSplitTab.Button1Click(Sender: TObject);
begin
  CommonPOS.StartTab(True, 0, 0, 'S');
  btnAllTabs.Click;
end;

procedure TFrmSplitTab.Button2Click(Sender: TObject);
begin
  ImportTAB;
end;

procedure TFrmSplitTab.Button5Click(Sender: TObject);
begin
  CommonPOS.ShowMyTabs;
  Self.Caption := 'My open TABS';
end;

procedure TFrmSplitTab.Button8Click(Sender: TObject);
begin
  CommonPOS.GroupTabs(DMMidas.cdsOpenTabsID.Value);
end;

procedure TFrmSplitTab.btnAllTabsClick(Sender: TObject);
Var
  ID: String;
begin
  With DMMidas do
  begin
    ID := cdsOpenTabsID.AsString;
    cdsOpenTabs.Close;
    cdsOpenTabs.CommandText := 'Select * from OPEN_TABS ORDER BY CUSTOMER';
    cdsOpenTabs.Open;
    cdsOpenTabs2.Close;
    cdsOpenTabs2.CommandText := 'Select * from OPEN_TABS ORDER BY CUSTOMER';
    cdsOpenTabs2.Open;    
    Self.Caption := 'All open TABS';
  end;
end;

procedure TFrmSplitTab.CancelTabs(TransNo: Integer);
begin
  With DMMidas do
  begin
    CommonPOS.DisconnectFromDatabase;
    With TRANSACTIONDETAIL_CANCELTRANS do
    begin
      Prepare;
      ParamByName('@TRANNO').Value := TransNo;
      ExecProc;
    end;  
  end;
end;



procedure TFrmSplitTab.DBComboBox1Change(Sender: TObject);
begin
  With DMMidas do
  begin
    CommonPOS.OpenTransDetail(cdsTabsDetailTRANSACTIONNUMBER.Value);
  end;
end;

procedure TFrmSplitTab.DBLookupComboBox1CloseUp(Sender: TObject);
begin
  With DMMidas do
  begin
    CommonPOS.OpenTransDetail(cdsOpenTabsTRANSACTIONNUMBER.Value);
    Queries.OpentTransHeader(cdsOpenTabsTRANSACTIONNUMBER.Value,false);
    {With DMMidas.CDSTransHead do
    begin
      Active := False;
      Params[0].Value := cdsOpenTabsTRANSACTIONNUMBER.Value;
      Active := True;
    end;}
  end;
end;

procedure TFrmSplitTab.DBLookupComboBox2CloseUp(Sender: TObject);
begin
  With DMMidas do
  begin
    CommonPOS.OpenTransDetail2(cdsOpenTabs2TRANSACTIONNUMBER.Value);
    With CDSHead do
    Begin
      Active := False;
      CommandText := 'select * from transactionheader_temp where transactionnumber = ' + IntToStr(cdsOpenTabs2TRANSACTIONNUMBER.Value);
      Active := True;        
    End    
  end;
end;

procedure TFrmSplitTab.ExportAll(TRANSNO_FROM, TRANSNO_TO: Integer);
begin
  With DMMidas do
  begin
    if (cdsOpenTabs.Active = True) and (cdsOpenTabs2.Active = True) then
    begin
      if cdsOpenTabsTRANSACTIONNUMBER.Value <> cdsOpenTabs2TRANSACTIONNUMBER.Value then
      begin
        if (TRANSNO_FROM > 0) and (TRANSNO_TO > 0) then
        begin
          CommonPOS.DisconnectFromDatabase;
          With POS_SPLIT_TAB do
          begin
            Prepare;
            ParamByName('@TRANSNO_FROM').Value := TRANSNO_FROM;
            ParamByName('@TRANSNO_TO').Value := TRANSNO_TO;
            ParamByName('@ID').Value := 0;
            ParamByName('@CANCEL_TRANS').Value := True;
            ExecProc;
          end;
          RefreshTables(TRANSNO_FROM, TRANSNO_TO);
        end;
      end
      else
        ShowMessage('Error, Same customer');
    end;
  end;
end;

procedure TFrmSplitTab.ExportOneToOne(TRANSNO_FROM, TRANSNO_TO, ID: Integer);
begin
  With DMMidas do
  begin
    if cdsOpenTabsTRANSACTIONNUMBER.Value <> cdsOpenTabs2TRANSACTIONNUMBER.Value then
    begin 
      if TRANSNO_TO > 0 then
      begin
        CommonPOS.DisconnectFromDatabase;
        With POS_SPLIT_TAB do
        begin
          Prepare;
          ParamByName('@TRANSNO_FROM').Value := TRANSNO_FROM;
          ParamByName('@TRANSNO_TO').Value := TRANSNO_TO;
          ParamByName('@ID').Value := ID;
          ParamByName('@CANCEL_TRANS').Value := False;
          ExecProc;
        end;
        RefreshTables(TRANSNO_FROM, TRANSNO_TO);
      end;
    end
    else
      ShowMessage('Error, Same customer');
  end;
end;

procedure TFrmSplitTab.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ImportTAB;
end;

procedure TFrmSplitTab.FormCreate(Sender: TObject);
begin
  With DMMidas do
  begin
    cdsTabsDetail.Close;
    cdsTabsDetail.CommandText := 'Select * from TABS_DETAIL ORDER BY CUSTOMER'; //where BALANCE > 0
    cdsTabsDetail.Open;

    cdsTabsDetail2.Close;
    cdsTabsDetail2.CommandText := 'Select * from TABS_DETAIL ORDER BY CUSTOMER'; //where BALANCE > 0
    cdsTabsDetail2.Open;

    cdsOpenTabs.Close;
    cdsOpenTabs.CommandText := 'Select * from OPEN_TABS order by Customer'; //where BALANCE > 0
    cdsOpenTabs.Open;

    cdsOpenTabs2.Close;
    cdsOpenTabs2.CommandText := 'Select * from OPEN_TABS order by Customer'; //where BALANCE > 0
    cdsOpenTabs2.Open;

    CDSTransShow.Close;
    cdsTransDetailTemp.Close;
  end;
end;

procedure TFrmSplitTab.ImportTAB;
begin
  With DMMidas do
  begin
    if (CDSTransShow.Active = True) then
    begin
      if CDSTransShow.RecordCount > 0 then
      begin
        OpenTabs(DMMidas.CDSTransShowTRANSACTIONNUMBER.Value);
        CommonPOS.RecallTransaction(DMMidas.CDSTransShowTRANSACTIONNUMBER.Value);
      end
      else
      begin
        if (cdsTransDetailTemp.Active = True) then
        begin
          if cdsTransDetailTemp.RecordCount > 0 then
          begin
            OpenTabs(DMMidas.cdsTransDetailTempTRANSACTIONNUMBER.Value);
            CommonPOS.RecallTransaction(DMMidas.cdsTransDetailTempTRANSACTIONNUMBER.Value);
          end;
        end;
      end;
    end
    else
    begin
      if (cdsTransDetailTemp.Active = True) then
      begin
        if cdsTransDetailTemp.RecordCount > 0 then
        begin
          OpenTabs(DMMidas.cdsTransDetailTempTRANSACTIONNUMBER.Value);
          CommonPOS.RecallTransaction(DMMidas.cdsTransDetailTempTRANSACTIONNUMBER.Value);
        end;
      end;
    end;
    With CDSHead do
    Begin
      Active := False;    
    End;
  end;
  Self.Close;
end;

procedure TFrmSplitTab.OpenTabs(TransNo: Integer);
begin
  With DMMidas do
  begin
    cdsOpenTabs.Close;
    cdsOpenTabs.CommandText := 'Select * from Open_Tabs where TransactionNumber = ' + IntToStr(TransNo);
    cdsOpenTabs.Open;  
  end;
end;

procedure TFrmSplitTab.RefreshTables(TRANSNO_FROM, TRANSNO_TO: Integer);
begin
  With DMMidas do
  begin
    CommonPOS.DisconnectFromDatabase;
    With CALC_TAB_BALANCE do
    begin
      Prepare;
      ParamByName('@TRANSNO').Value := TRANSNO_FROM;
      ExecProc;
    end;
    CommonPOS.DisconnectFromDatabase;
    With CALC_TAB_BALANCE do
    begin
      Prepare;
      ParamByName('@TRANSNO').Value := TRANSNO_TO;
      ExecProc;
    end;
    CommonPOS.DisconnectFromDatabase;
    With CAL_HEAD_TOTAL do
    begin
      Prepare;
      ParamByName('@INTRANS').Value := cdsOpenTabsTRANSACTIONNUMBER.Value;
      ExecProc;
    end;
    CommonPOS.DisconnectFromDatabase;
    With CAL_HEAD_TOTAL do
    begin
      Prepare;
      ParamByName('@INTRANS').Value := cdsOpenTabs2TRANSACTIONNUMBER.Value;
      ExecProc;
    end;
    CommonPOS.DisconnectFromDatabase;
    With CDSTransShow do
    begin
      Active := False;
      Params[0].Value := cdsOpenTabsTRANSACTIONNUMBER.Value;
      Active := True;
      if CDSTransShow.RecordCount = 0 then
      begin
        CancelTabs(cdsOpenTabsTRANSACTIONNUMBER.Value);
        Active := False;
        CDSTransHead.Close;
      end;
    end;
    With cdsTransDetailTemp do
    Begin
      Active := False;
      CommandText := 'Select * from TransactionDetail_Temp where TransactionNumber = ' +  IntToStr(cdsOpenTabs2TRANSACTIONNUMBER.Value);
      Active := True;
      if cdsTransDetailTemp.RecordCount = 0 then
      begin
        CancelTabs(cdsOpenTabs2TRANSACTIONNUMBER.Value);
        Active := False;
        CDSHead.Close;
      end;
    End;    
    if cdsTransDetailTemp.Active = True then cdsTransDetailTemp.Refresh;
    if CDSTransShow.Active = True then CDSTransShow.Refresh;
    if CDSHead.Active = True then CDSHead.Refresh;
    if CDSTransHead.Active = True then CDSTransHead.Refresh;
  end
end;

procedure TFrmSplitTab.SpeedButton1Click(Sender: TObject);
begin
  With DMMidas do
  begin
    if (cdsOpenTabs.Active = True) and (cdsOpenTabs2.Active = True) then
    begin
      ExportOneToOne(CDSTransShowTRANSACTIONNUMBER.Value, cdsOpenTabs2TRANSACTIONNUMBER.Value, CDSTransShowIDNUMBER.Value); //cdsTransDetailTempTRANSACTIONNUMBER.Value
    end;
  end;
end;

procedure TFrmSplitTab.SpeedButton2Click(Sender: TObject);
begin
  With DMMidas do
  begin
    if (cdsOpenTabs.Active = True) and (cdsOpenTabs2.Active = True) then
    begin
      ExportOneToOne(cdsTransDetailTempTRANSACTIONNUMBER.Value, CDSTransShowTRANSACTIONNUMBER.Value, cdsTransDetailTempIDNUMBER.Value);  
    end;
  end;
end;

procedure TFrmSplitTab.SpeedButton3Click(Sender: TObject);
begin
  With DMMidas do
  begin
    if (cdsOpenTabs.Active = True) and (cdsOpenTabs2.Active = True) then
    begin
      if cdsOpenTabsTRANSACTIONNUMBER.Value <> cdsOpenTabs2TRANSACTIONNUMBER.Value then
      begin
        ExportAll(CDSTransShowTRANSACTIONNUMBER.Value, cdsTransDetailTempTRANSACTIONNUMBER.Value);
        CDSTransHead.Close;
      end;
    end;
  end;
end;

procedure TFrmSplitTab.SpeedButton4Click(Sender: TObject);
begin
  With DMMidas do
  begin
    if (cdsOpenTabs.Active = True) and (cdsOpenTabs2.Active = True) then
    begin
      if cdsOpenTabsTRANSACTIONNUMBER.Value <> cdsOpenTabs2TRANSACTIONNUMBER.Value then
      begin
        ExportAll(cdsTransDetailTempTRANSACTIONNUMBER.Value, CDSTransShowTRANSACTIONNUMBER.Value);
        CDSHead.Close;
      end;
    end;
  end;
end;


end.
