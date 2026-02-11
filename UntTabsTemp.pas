unit UntTabsTemp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, jpeg, pngimage, Data.DB,
  Vcl.ComCtrls, Vcl.Menus, Vcl.Grids, Vcl.DBGrids;

type
  TFrmTabs = class(TForm)
    Panel1: TPanel;
    sbCatT5: TSpeedButton;
    sbCatT4: TSpeedButton;
    sbCatT3: TSpeedButton;
    sbCatT2: TSpeedButton;
    sbCatT1: TSpeedButton;
    pcMain: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    GridPanel2: TGridPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton26: TSpeedButton;
    SpeedButton27: TSpeedButton;
    SpeedButton28: TSpeedButton;
    SpeedButton29: TSpeedButton;
    SpeedButton30: TSpeedButton;
    SpeedButton31: TSpeedButton;
    SpeedButton32: TSpeedButton;
    SpeedButton33: TSpeedButton;
    SpeedButton34: TSpeedButton;
    SpeedButton35: TSpeedButton;
    SpeedButton36: TSpeedButton;
    SpeedButton37: TSpeedButton;
    SpeedButton38: TSpeedButton;
    SpeedButton40: TSpeedButton;
    SpeedButton39: TSpeedButton;
    MainMenu1: TMainMenu;
    ActivateButtons1: TMenuItem;
    ActivateButtons2: TMenuItem;
    Setbuttonsvisiblefalse1: TMenuItem;
    SpeedButton41: TSpeedButton;
    SpeedButton42: TSpeedButton;
    SpeedButton43: TSpeedButton;
    SpeedButton44: TSpeedButton;
    SpeedButton45: TSpeedButton;
    SpeedButton46: TSpeedButton;
    SpeedButton47: TSpeedButton;
    SpeedButton48: TSpeedButton;
    SpeedButton49: TSpeedButton;
    SpeedButton50: TSpeedButton;
    SpeedButton51: TSpeedButton;
    SpeedButton52: TSpeedButton;
    SpeedButton53: TSpeedButton;
    SpeedButton54: TSpeedButton;
    SpeedButton55: TSpeedButton;
    SpeedButton56: TSpeedButton;
    SpeedButton57: TSpeedButton;
    SpeedButton58: TSpeedButton;
    SpeedButton59: TSpeedButton;
    SpeedButton60: TSpeedButton;
    SpeedButton61: TSpeedButton;
    SpeedButton62: TSpeedButton;
    SpeedButton63: TSpeedButton;
    SpeedButton64: TSpeedButton;
    SpeedButton65: TSpeedButton;
    SpeedButton66: TSpeedButton;
    SpeedButton67: TSpeedButton;
    SpeedButton68: TSpeedButton;
    SpeedButton69: TSpeedButton;
    SpeedButton70: TSpeedButton;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure SetButtonsVisibleFalse(FT: Boolean);
    function findButton(BtnName, BtnCaption: String; Balance: double): Boolean;
    procedure LoadButtons;
    procedure sbCatT1Click(Sender: TObject);
    procedure EditButton(BtnName: String);
    procedure sbCatT2Click(Sender: TObject);
    procedure sbCatT3Click(Sender: TObject);
    procedure sbCatT4Click(Sender: TObject);
    procedure sbCatT5Click(Sender: TObject);
    procedure ActivateButtons2Click(Sender: TObject);
    procedure Setbuttonsvisiblefalse1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTabs: TFrmTabs;

implementation

{$R *.dfm}

uses UntDMMidas, UntEditarBotones, UntCommonPOS, UntEditTabs;

procedure TFrmTabs.FormCreate(Sender: TObject);
begin
  SetButtonsVisibleFalse(False);
  LoadButtons;
end;

procedure TFrmTabs.SetButtonsVisibleFalse(FT: Boolean);
var
  i: Integer;
  comp: TComponent;
  sb: TSpeedButton;
const
  NamePrefix = 'SpeedButton';
  NamePrefix2 = 'sbCatT';

begin
  for i := 1 to ComponentCount+1 do
  begin
    sb := FindComponent(NamePrefix + IntToStr(i)) as TSpeedButton;
    if sb <> nil then
    begin
      sb.Visible := FT;
    end;
  end;
  i := 0;
  for i := 1 to ComponentCount+1 do
  begin
    sb := FindComponent(NamePrefix2 + IntToStr(i)) as TSpeedButton;
    if sb <> nil then
    begin
      sb.Visible := FT;
    end;
  end;
end;

procedure TFrmTabs.Setbuttonsvisiblefalse1Click(Sender: TObject);
begin
  Self.Tag := 1;
  SetButtonsVisibleFalse(False);
  LoadButtons;
end;

procedure TFrmTabs.SpeedButton6Click(Sender: TObject);
begin
  EditButton(SpeedButton6.Name);
end;

function TFrmTabs.findButton(BtnName, BtnCaption: String; Balance: double): Boolean;
Var
  pnl: TComponent;
  BlobStream: TStream;
  Image2: TBitmap;
  SpaceLoc: Integer;
begin
  if Copy(BtnName,1,5) <> 'sbCat' then
  begin
    SpaceLoc := POS(' ',BtnCaption);
    if SpaceLoc > 1 then
    begin
      BtnCaption := Trim(copy(BtnCaption,1,SpaceLoc-1) + chr(13) + copy(BtnCaption,SpaceLoc+1,20));
    end;
  end
  else
    BtnCaption := BtnCaption;
  pnl := FindComponent(BtnName);
  if pnl is TSpeedButton then
  begin
    TSpeedButton(pnl).Visible := True;
    TSpeedButton(pnl).Tag := Tag;
    if Balance > 0 then
      TSpeedButton(pnl).Caption := FloatToStr(Balance)
    else
      TSpeedButton(pnl).Caption := BtnCaption;
  end;
end;

procedure TFrmTabs.LoadButtons;
begin
  With DMMidas do
  begin
    cdsTabs.Close;
    cdsTabs.CommandText := 'Select * from Tabs order by LOCATION_NAME';
    cdsTabs.Open;
    cdsTabs.First;
    while not cdsTabs.Eof do
    begin
      findButton(cdsTabsLOCATION_NAME.AsString.Trim, cdsTabsCUSTOMER.asString.Trim, cdsTabsGROUP_BALANCE.Value);
      cdsTabs.Next;
    end;
  end;
  TabSheet1.Caption := sbCatT1.Caption;
  TabSheet2.Caption := sbCatT2.Caption;
  TabSheet3.Caption := sbCatT3.Caption;
  TabSheet4.Caption := sbCatT4.Caption;
  TabSheet5.Caption := sbCatT5.Caption;
end;

procedure TFrmTabs.sbCatT1Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 0;
  EditButton(sbCatT1.Name);
end;

procedure TFrmTabs.sbCatT2Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 1;
  EditButton(sbCatT2.Name);
end;

procedure TFrmTabs.sbCatT3Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 2;
  EditButton(sbCatT3.Name);
end;

procedure TFrmTabs.sbCatT4Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 3;
  EditButton(sbCatT4.Name);
end;

procedure TFrmTabs.sbCatT5Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 4;
  EditButton(sbCatT5.Name);
end;

procedure TFrmTabs.ActivateButtons2Click(Sender: TObject);
begin
  Self.Tag := 0;
  SetButtonsVisibleFalse(True);
  LoadButtons;
end;

procedure TFrmTabs.EditButton(BtnName: String);
begin
  With DMMidas do
  begin
    if (Self.Tag = 0) then
    begin
      FrmEditTabs := TFrmEditTabs.Create(self);
      With FrmEditTabs do
      begin
        cdsTabs.Close;
        cdsTabs.CommandText := 'Select * from TABS where LOCATION_NAME = ' + chr(39) + BtnName + chr(39);
        cdsTabs.Open;
        if cdsTabs.RecordCount = 0 then
        begin
          cdsTabs.Append;
          cdsTabsLOCATION_NAME.Value := BtnName;
        end
        else
         cdsTabs.Edit;
        ShowModal;
      end;
      LoadButtons;
    end
    else
    begin
      if (Copy(BtnName,1,5) <> 'sbCat') then
      begin
        cdsTabs.Close;
        cdsTabs.CommandText := 'Select * from TABS where LOCATION_NAME = ' + chr(39) + BtnName + chr(39);
        cdsTabs.Open;
        if (cdsTabsGROUP_BALANCE.Value = 0) or (cdsTabsGROUP_BALANCE.Value = Null) then
        begin
          FDQuery1.SQL.Text := 'Update Tabs set POS_BALANCE_ID = ' + CDSTransHeadTRANSACTIONNUMBER.AsString + ',GROUP_BALANCE = ' + CDSTransHeadTOTAL.AsString + ' where ID = ' + cdsTabsID.asString;
          FDQuery1.ExecSQL;
          LoadButtons;
          With DMMidas.CDSTransHead do
          begin
            Active := False;
            Params[0].Value := cdsTabsPOS_BALANCE_ID.Value;
            Active := True;
          end;
        end
        else
        begin
          CommonPOS.RecallTransaction(cdsTabsPOS_BALANCE_ID.Value);
        end;
      end;
    end;
  end;
end;

end.
