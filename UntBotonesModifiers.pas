unit UntBotonesModifiers;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Menus, jpeg, pngimage, db,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, System.ImageList,
  Vcl.ImgList;

type
  TFrmModifiers = class(TForm)
    MainMenu1: TMainMenu;
    Buttons1: TMenuItem;
    Setbuttonsvisibletrue1: TMenuItem;
    Setbuttonsvisiblefalse1: TMenuItem;
    Panel1: TPanel;
    btnOk: TButton;
    DBGrid2: TDBGrid;
    GridPanel1: TGridPanel;
    sbCat1: TSpeedButton;
    sbCat2: TSpeedButton;
    sbCat3: TSpeedButton;
    sbCat4: TSpeedButton;
    sbCat5: TSpeedButton;
    sbCat6: TSpeedButton;
    pcMain: TPageControl;
    TabSheet1: TTabSheet;
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
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    BBorrar: TButton;
    GridPanel3: TGridPanel;
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
    SpeedButton39: TSpeedButton;
    SpeedButton40: TSpeedButton;
    SpeedButton41: TSpeedButton;
    SpeedButton42: TSpeedButton;
    SpeedButton43: TSpeedButton;
    SpeedButton44: TSpeedButton;
    SpeedButton45: TSpeedButton;
    SpeedButton46: TSpeedButton;
    SpeedButton47: TSpeedButton;
    SpeedButton48: TSpeedButton;
    ImageListNew: TImageList;
    GridPanel4: TGridPanel;
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
    SpeedButton71: TSpeedButton;
    SpeedButton72: TSpeedButton;
    GridPanel5: TGridPanel;
    SpeedButton73: TSpeedButton;
    SpeedButton74: TSpeedButton;
    SpeedButton75: TSpeedButton;
    SpeedButton76: TSpeedButton;
    SpeedButton77: TSpeedButton;
    SpeedButton78: TSpeedButton;
    SpeedButton79: TSpeedButton;
    SpeedButton80: TSpeedButton;
    SpeedButton81: TSpeedButton;
    SpeedButton82: TSpeedButton;
    SpeedButton83: TSpeedButton;
    SpeedButton84: TSpeedButton;
    SpeedButton85: TSpeedButton;
    SpeedButton86: TSpeedButton;
    SpeedButton87: TSpeedButton;
    SpeedButton88: TSpeedButton;
    SpeedButton89: TSpeedButton;
    SpeedButton90: TSpeedButton;
    SpeedButton91: TSpeedButton;
    SpeedButton92: TSpeedButton;
    SpeedButton93: TSpeedButton;
    SpeedButton94: TSpeedButton;
    SpeedButton95: TSpeedButton;
    SpeedButton96: TSpeedButton;
    GridPanel6: TGridPanel;
    SpeedButton97: TSpeedButton;
    SpeedButton98: TSpeedButton;
    SpeedButton99: TSpeedButton;
    SpeedButton100: TSpeedButton;
    SpeedButton101: TSpeedButton;
    SpeedButton102: TSpeedButton;
    SpeedButton103: TSpeedButton;
    SpeedButton104: TSpeedButton;
    SpeedButton105: TSpeedButton;
    SpeedButton106: TSpeedButton;
    SpeedButton107: TSpeedButton;
    SpeedButton108: TSpeedButton;
    SpeedButton109: TSpeedButton;
    SpeedButton110: TSpeedButton;
    SpeedButton111: TSpeedButton;
    SpeedButton112: TSpeedButton;
    SpeedButton113: TSpeedButton;
    SpeedButton114: TSpeedButton;
    SpeedButton115: TSpeedButton;
    SpeedButton116: TSpeedButton;
    SpeedButton117: TSpeedButton;
    SpeedButton118: TSpeedButton;
    SpeedButton119: TSpeedButton;
    SpeedButton120: TSpeedButton;
    GridPanel7: TGridPanel;
    SpeedButton121: TSpeedButton;
    SpeedButton122: TSpeedButton;
    SpeedButton123: TSpeedButton;
    SpeedButton124: TSpeedButton;
    SpeedButton125: TSpeedButton;
    SpeedButton126: TSpeedButton;
    SpeedButton127: TSpeedButton;
    SpeedButton128: TSpeedButton;
    SpeedButton129: TSpeedButton;
    SpeedButton130: TSpeedButton;
    SpeedButton131: TSpeedButton;
    SpeedButton132: TSpeedButton;
    SpeedButton133: TSpeedButton;
    SpeedButton134: TSpeedButton;
    SpeedButton135: TSpeedButton;
    SpeedButton136: TSpeedButton;
    SpeedButton137: TSpeedButton;
    SpeedButton138: TSpeedButton;
    SpeedButton139: TSpeedButton;
    SpeedButton140: TSpeedButton;
    SpeedButton141: TSpeedButton;
    SpeedButton142: TSpeedButton;
    SpeedButton143: TSpeedButton;
    SpeedButton144: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure Setbuttonsvisibletrue1Click(Sender: TObject);
    procedure Setbuttonsvisiblefalse1Click(Sender: TObject);
    procedure SetButtonsVisibleFalse(FT: Boolean);
    procedure LoadButtons;
    function findButton(BtnName, BtnCaption: String; Tag: integer): Boolean;
    procedure SpeedButton6Click(Sender: TObject);
    procedure EditButton(BtnName: String);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure SpeedButton24Click(Sender: TObject);
    procedure SpeedButton25Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Find_Inset_Product(Token: String);
    procedure sbCat1Click(Sender: TObject);
    procedure sbCat2Click(Sender: TObject);
    procedure sbCat3Click(Sender: TObject);
    procedure sbCat4Click(Sender: TObject);
    procedure sbCat5Click(Sender: TObject);
    procedure sbCat6Click(Sender: TObject);
    procedure BBorrarClick(Sender: TObject);
    procedure RefreshMainCourse;
    procedure SpeedButton29Click(Sender: TObject);
    procedure SpeedButton30Click(Sender: TObject);
    procedure SpeedButton31Click(Sender: TObject);
    procedure SpeedButton32Click(Sender: TObject);
    procedure SpeedButton33Click(Sender: TObject);
    procedure SpeedButton34Click(Sender: TObject);
    procedure SpeedButton35Click(Sender: TObject);
    procedure SpeedButton36Click(Sender: TObject);
    procedure SpeedButton37Click(Sender: TObject);
    procedure SpeedButton38Click(Sender: TObject);
    procedure SpeedButton39Click(Sender: TObject);
    procedure SpeedButton40Click(Sender: TObject);
    procedure SpeedButton41Click(Sender: TObject);
    procedure SpeedButton42Click(Sender: TObject);
    procedure SpeedButton43Click(Sender: TObject);
    procedure SpeedButton44Click(Sender: TObject);
    procedure SpeedButton45Click(Sender: TObject);
    procedure SpeedButton46Click(Sender: TObject);
    procedure SpeedButton47Click(Sender: TObject);
    procedure SpeedButton48Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton26Click(Sender: TObject);
    procedure SpeedButton27Click(Sender: TObject);
    procedure SpeedButton28Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton53Click(Sender: TObject);
    procedure SpeedButton54Click(Sender: TObject);
    procedure SpeedButton55Click(Sender: TObject);
    procedure SpeedButton56Click(Sender: TObject);
    procedure SpeedButton57Click(Sender: TObject);
    procedure SpeedButton58Click(Sender: TObject);
    procedure SpeedButton59Click(Sender: TObject);
    procedure SpeedButton60Click(Sender: TObject);
    procedure SpeedButton61Click(Sender: TObject);
    procedure SpeedButton62Click(Sender: TObject);
    procedure SpeedButton63Click(Sender: TObject);
    procedure SpeedButton64Click(Sender: TObject);
    procedure SpeedButton65Click(Sender: TObject);
    procedure SpeedButton66Click(Sender: TObject);
    procedure SpeedButton67Click(Sender: TObject);
    procedure SpeedButton68Click(Sender: TObject);
    procedure SpeedButton69Click(Sender: TObject);
    procedure SpeedButton70Click(Sender: TObject);
    procedure SpeedButton71Click(Sender: TObject);
    procedure SpeedButton72Click(Sender: TObject);
    procedure SpeedButton49Click(Sender: TObject);
    procedure SpeedButton50Click(Sender: TObject);
    procedure SpeedButton51Click(Sender: TObject);
    procedure SpeedButton52Click(Sender: TObject);
    procedure SpeedButton77Click(Sender: TObject);
    procedure SpeedButton78Click(Sender: TObject);
    procedure SpeedButton79Click(Sender: TObject);
    procedure SpeedButton80Click(Sender: TObject);
    procedure SpeedButton81Click(Sender: TObject);
    procedure SpeedButton82Click(Sender: TObject);
    procedure SpeedButton83Click(Sender: TObject);
    procedure SpeedButton84Click(Sender: TObject);
    procedure SpeedButton85Click(Sender: TObject);
    procedure SpeedButton86Click(Sender: TObject);
    procedure SpeedButton87Click(Sender: TObject);
    procedure SpeedButton88Click(Sender: TObject);
    procedure SpeedButton89Click(Sender: TObject);
    procedure SpeedButton90Click(Sender: TObject);
    procedure SpeedButton91Click(Sender: TObject);
    procedure SpeedButton92Click(Sender: TObject);
    procedure SpeedButton93Click(Sender: TObject);
    procedure SpeedButton94Click(Sender: TObject);
    procedure SpeedButton95Click(Sender: TObject);
    procedure SpeedButton96Click(Sender: TObject);
    procedure SpeedButton73Click(Sender: TObject);
    procedure SpeedButton74Click(Sender: TObject);
    procedure SpeedButton75Click(Sender: TObject);
    procedure SpeedButton76Click(Sender: TObject);
    procedure SpeedButton97Click(Sender: TObject);
    procedure SpeedButton98Click(Sender: TObject);
    procedure SpeedButton99Click(Sender: TObject);
    procedure SpeedButton100Click(Sender: TObject);
    procedure SpeedButton101Click(Sender: TObject);
    procedure SpeedButton102Click(Sender: TObject);
    procedure SpeedButton103Click(Sender: TObject);
    procedure SpeedButton104Click(Sender: TObject);
    procedure SpeedButton105Click(Sender: TObject);
    procedure SpeedButton106Click(Sender: TObject);
    procedure SpeedButton107Click(Sender: TObject);
    procedure SpeedButton108Click(Sender: TObject);
    procedure SpeedButton109Click(Sender: TObject);
    procedure SpeedButton110Click(Sender: TObject);
    procedure SpeedButton111Click(Sender: TObject);
    procedure SpeedButton112Click(Sender: TObject);
    procedure SpeedButton113Click(Sender: TObject);
    procedure SpeedButton114Click(Sender: TObject);
    procedure SpeedButton115Click(Sender: TObject);
    procedure SpeedButton116Click(Sender: TObject);
    procedure SpeedButton117Click(Sender: TObject);
    procedure SpeedButton118Click(Sender: TObject);
    procedure SpeedButton119Click(Sender: TObject);
    procedure SpeedButton120Click(Sender: TObject);
    procedure SpeedButton121Click(Sender: TObject);
    procedure SpeedButton122Click(Sender: TObject);
    procedure SpeedButton123Click(Sender: TObject);
    procedure SpeedButton124Click(Sender: TObject);
    procedure SpeedButton125Click(Sender: TObject);
    procedure SpeedButton126Click(Sender: TObject);
    procedure SpeedButton127Click(Sender: TObject);
    procedure SpeedButton128Click(Sender: TObject);
    procedure SpeedButton129Click(Sender: TObject);
    procedure SpeedButton130Click(Sender: TObject);
    procedure SpeedButton131Click(Sender: TObject);
    procedure SpeedButton132Click(Sender: TObject);
    procedure SpeedButton133Click(Sender: TObject);
    procedure SpeedButton134Click(Sender: TObject);
    procedure SpeedButton135Click(Sender: TObject);
    procedure SpeedButton136Click(Sender: TObject);
    procedure SpeedButton137Click(Sender: TObject);
    procedure SpeedButton138Click(Sender: TObject);
    procedure SpeedButton139Click(Sender: TObject);
    procedure SpeedButton140Click(Sender: TObject);
    procedure SpeedButton141Click(Sender: TObject);
    procedure SpeedButton142Click(Sender: TObject);
    procedure SpeedButton143Click(Sender: TObject);
    procedure SpeedButton144Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Main_Course_Modifiers: Integer;
    Main_Course_ID: Integer;
  end;

var
  FrmModifiers: TFrmModifiers;

implementation

{$R *.dfm}

uses UntDMMidas, UntEditarBotones, UntCommonPOS, UntEditarBotonesModifier,
  UntQueries, untMain, UntPOSRest;

function TFrmModifiers.findButton(BtnName, BtnCaption: String; Tag: integer): Boolean;
Var
  pnl: TComponent;
  BlobStream: TStream;
  Image2: TBitmap;
  SpaceLoc: Integer;
begin
  SpaceLoc := POS(' ',BtnCaption);
  if SpaceLoc > 1 then
  begin
    BtnCaption := Trim(copy(BtnCaption,1,SpaceLoc-1) + chr(13) + copy(BtnCaption,SpaceLoc+1,20));
  end;
  pnl := FindComponent(BtnName);
  if pnl is TSpeedButton then
  begin
    TSpeedButton(pnl).Visible := True;
    TSpeedButton(pnl).Tag := Tag;
    {if (not DMMidas.CDSBotonesBUTTON_IMAGE.IsNull) then
    begin
      BlobStream := DMMidas.cdsBotonesModifiers.CreateBlobStream(DMMidas.cdsBotonesModifiers.FieldByName('BUTTON_IMAGE'),bmRead);
      Image2 := TBitmap.Create;
      try
        Image2.LoadFromStream(BlobStream);
        TSpeedButton(pnl).Glyph.Assign(Image2);
      finally
        Image2.Free;
        BlobStream.Free;
      end;
      TSpeedButton(pnl).Caption := '';
    end
    else}
    begin
      TSpeedButton(pnl).Caption := BtnCaption;
    end;
  end;
end;

procedure TFrmModifiers.Find_Inset_Product(Token: String);
var
  Flag: Boolean;
begin
  With DMMidas do
  begin
    CDSTransShow2.Close;
    CDSTransShow2.CommandText := 'Select * from TransactionDetail_Temp where Main_course_id = ' + IntToStr(Main_Course_ID) + ' and Total = 0';
    CDSTransShow2.Open;
    Queries.OpenInventory(Token, 'POS',false);
    if CDSTransShow2QTY.Value > 1 then
    begin
      if CDSTransShow2QTY.Value < Main_Course_Modifiers then
        flag := true
      else
        flag := false;
    end
    else
    begin
      if CDSTransShow2.RecordCount < Main_Course_Modifiers then
        flag := True
      else
        flag := False;
    end;
    if (flag = True) and (CDSInventarioPiso.RecordCount > 0) then
    begin
      CommonPOS.AddProduct('F',CDSInventarioPisoCODIGOBARRA.Value,CDSInventarioPisoDESCRIPCION.Value,
                       CDSInventarioPisoDESCDEPT.Value,'F','',
                       CommonPOS.User, 'T', 'T', 0,
                       0, 0, 0, 1, CDSInventarioPisoNUMEROSUPLIDOR.Value, CommonPOS.Turno, CommonPOS.ID, CDSInventarioPisoProductNo.Value, CDSInventarioPisoSUB_DEPARTAMENTO.Value,0,0,false,false,'', Main_Course_ID, false,0,CDSInventarioPisoPROCESSED_FOOD.Value, false);
    end
    else
    begin
      CommonPOS.AddProduct('F',CDSInventarioPisoCODIGOBARRA.Value,CDSInventarioPisoDESCRIPCION.Value,
                     CDSInventarioPisoDESCDEPT.Value,'','',
                     CommonPOS.User, 'T', 'T', CDSInventarioPisoPRECIO.asFloat,
                     CDSInventarioPisoPRECIO.asFloat,  (CDSInventarioPisoPRECIO.asFloat * 1), CDSInventarioPisoCOSTO.asFloat, cdsBotonesModifiersQTY.Value, CDSInventarioPisoNUMEROSUPLIDOR.Value, CommonPOS.Turno, CommonPOS.ID, CDSInventarioPisoPRODUCTNO.Value, CDSInventarioPisoSUB_DEPARTAMENTO.Value,0,0,false,false,'', Main_Course_ID,false,0,CDSInventarioPisoPROCESSED_FOOD.Value, false);

    end;
    RefreshMainCourse;
  end;
end;

procedure TFrmModifiers.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  With DMMidas do
  begin
    if CDSTransShow.Active = True then CDSTransShow.Refresh;
  end;
end;

procedure TFrmModifiers.FormCreate(Sender: TObject);
begin
  Main_Course_Modifiers  := DMMidas.CDSInventarioPisoMODIFIER_QTY.Value;
  Self.Tag := 1;
  SetButtonsVisibleFalse(False);
  LoadButtons;
  pcMain.ActivePageIndex := 0;
end;

procedure TFrmModifiers.FormShow(Sender: TObject);
Var
  MyComp: TComponent;
begin
  With DMMidas do
  begin
    cdsBotonesModifiers.Close;
    cdsBotonesModifiers.Open;
    cdsBotonesModifiers.First;
    while not cdsBotonesModifiers.Eof do
    begin
      MyComp := FindComponent(cdsBotonesModifiersBUTTON_NAME.asString.Trim);
      if Assigned(MyComp) then showMessage('Found');
      cdsBotonesModifiers.Next;
    end;
  end;
  pcMain.ActivePageIndex := 0;
end;

procedure TFrmModifiers.Setbuttonsvisiblefalse1Click(Sender: TObject);
begin
  if CommonPOS.isAuthorized('POS_ADD_BUTTONS', UserRights.POS_ADD_BUTTONS,true) = True then
  begin
    Self.Tag := 1;
    SetButtonsVisibleFalse(False);
    LoadButtons;
  end;
end;

procedure TFrmModifiers.Setbuttonsvisibletrue1Click(Sender: TObject);
begin
  if CommonPOS.isAuthorized('POS_ADD_BUTTONS', UserRights.POS_ADD_BUTTONS,true) = True then
  begin
    Self.Tag := 0;
    SetButtonsVisibleFalse(True);
    LoadButtons;
  end;
end;

procedure TFrmModifiers.SpeedButton100Click(Sender: TObject);
begin
  EditButton(SpeedButton100.Name);
end;

procedure TFrmModifiers.SpeedButton101Click(Sender: TObject);
begin
  EditButton(SpeedButton101.Name);
end;

procedure TFrmModifiers.SpeedButton102Click(Sender: TObject);
begin
  EditButton(SpeedButton102.Name);
end;

procedure TFrmModifiers.SpeedButton103Click(Sender: TObject);
begin
  EditButton(SpeedButton103.Name);
end;

procedure TFrmModifiers.SpeedButton104Click(Sender: TObject);
begin
  EditButton(SpeedButton104.Name);
end;

procedure TFrmModifiers.SpeedButton105Click(Sender: TObject);
begin
  EditButton(SpeedButton105.Name);
end;

procedure TFrmModifiers.SpeedButton106Click(Sender: TObject);
begin
  EditButton(SpeedButton106.Name);
end;

procedure TFrmModifiers.SpeedButton107Click(Sender: TObject);
begin
  EditButton(SpeedButton107.Name);
end;

procedure TFrmModifiers.SpeedButton108Click(Sender: TObject);
begin
  EditButton(SpeedButton108.Name);
end;

procedure TFrmModifiers.SpeedButton109Click(Sender: TObject);
begin
  EditButton(SpeedButton109.Name);
end;

procedure TFrmModifiers.SpeedButton10Click(Sender: TObject);
begin
  EditButton(SpeedButton10.Name);
end;

procedure TFrmModifiers.SpeedButton110Click(Sender: TObject);
begin
  EditButton(SpeedButton110.Name);
end;

procedure TFrmModifiers.SpeedButton111Click(Sender: TObject);
begin
  EditButton(SpeedButton111.Name);
end;

procedure TFrmModifiers.SpeedButton112Click(Sender: TObject);
begin
  EditButton(SpeedButton112.Name);
end;

procedure TFrmModifiers.SpeedButton113Click(Sender: TObject);
begin
  EditButton(SpeedButton113.Name);
end;

procedure TFrmModifiers.SpeedButton114Click(Sender: TObject);
begin
  EditButton(SpeedButton114.Name);
end;

procedure TFrmModifiers.SpeedButton115Click(Sender: TObject);
begin
  EditButton(SpeedButton115.Name);
end;

procedure TFrmModifiers.SpeedButton116Click(Sender: TObject);
begin
  EditButton(SpeedButton116.Name);
end;

procedure TFrmModifiers.SpeedButton117Click(Sender: TObject);
begin
  EditButton(SpeedButton117.Name);
end;

procedure TFrmModifiers.SpeedButton118Click(Sender: TObject);
begin
  EditButton(SpeedButton118.Name);
end;

procedure TFrmModifiers.SpeedButton119Click(Sender: TObject);
begin
  EditButton(SpeedButton119.Name);
end;

procedure TFrmModifiers.SpeedButton11Click(Sender: TObject);
begin
  EditButton(SpeedButton11.Name);
end;

procedure TFrmModifiers.SpeedButton120Click(Sender: TObject);
begin
  EditButton(SpeedButton120.Name);
end;

procedure TFrmModifiers.SpeedButton121Click(Sender: TObject);
begin
  EditButton(SpeedButton121.Name);
end;

procedure TFrmModifiers.SpeedButton122Click(Sender: TObject);
begin
  EditButton(SpeedButton122.Name);
end;

procedure TFrmModifiers.SpeedButton123Click(Sender: TObject);
begin
  EditButton(SpeedButton123.Name);
end;

procedure TFrmModifiers.SpeedButton124Click(Sender: TObject);
begin
  EditButton(SpeedButton124.Name);
end;

procedure TFrmModifiers.SpeedButton125Click(Sender: TObject);
begin
  EditButton(SpeedButton125.Name);
end;

procedure TFrmModifiers.SpeedButton126Click(Sender: TObject);
begin
  EditButton(SpeedButton126.Name);
end;

procedure TFrmModifiers.SpeedButton127Click(Sender: TObject);
begin
  EditButton(SpeedButton127.Name);
end;

procedure TFrmModifiers.SpeedButton128Click(Sender: TObject);
begin
  EditButton(SpeedButton128.Name);
end;

procedure TFrmModifiers.SpeedButton129Click(Sender: TObject);
begin
  EditButton(SpeedButton129.Name);
end;

procedure TFrmModifiers.SpeedButton12Click(Sender: TObject);
begin
  EditButton(SpeedButton12.Name);
end;

procedure TFrmModifiers.SpeedButton130Click(Sender: TObject);
begin
  EditButton(SpeedButton130.Name);
end;

procedure TFrmModifiers.SpeedButton131Click(Sender: TObject);
begin
  EditButton(SpeedButton130.Name);
end;

procedure TFrmModifiers.SpeedButton132Click(Sender: TObject);
begin
  EditButton(SpeedButton132.Name);
end;

procedure TFrmModifiers.SpeedButton133Click(Sender: TObject);
begin
  EditButton(SpeedButton133.Name);
end;

procedure TFrmModifiers.SpeedButton134Click(Sender: TObject);
begin
  EditButton(SpeedButton134.Name);
end;

procedure TFrmModifiers.SpeedButton135Click(Sender: TObject);
begin
  EditButton(SpeedButton135.Name);
end;

procedure TFrmModifiers.SpeedButton136Click(Sender: TObject);
begin
  EditButton(SpeedButton136.Name);
end;

procedure TFrmModifiers.SpeedButton137Click(Sender: TObject);
begin
  EditButton(SpeedButton137.Name);
end;

procedure TFrmModifiers.SpeedButton138Click(Sender: TObject);
begin
  EditButton(SpeedButton138.Name);
end;

procedure TFrmModifiers.SpeedButton139Click(Sender: TObject);
begin
  EditButton(SpeedButton139.Name);
end;

procedure TFrmModifiers.SpeedButton13Click(Sender: TObject);
begin
  EditButton(SpeedButton13.Name);
end;

procedure TFrmModifiers.SpeedButton140Click(Sender: TObject);
begin
  EditButton(SpeedButton140.Name);
end;

procedure TFrmModifiers.SpeedButton141Click(Sender: TObject);
begin
  EditButton(SpeedButton141.Name);
end;

procedure TFrmModifiers.SpeedButton142Click(Sender: TObject);
begin
  EditButton(SpeedButton142.Name);
end;

procedure TFrmModifiers.SpeedButton143Click(Sender: TObject);
begin
  EditButton(SpeedButton143.Name);
end;

procedure TFrmModifiers.SpeedButton144Click(Sender: TObject);
begin
  EditButton(SpeedButton144.Name);
end;

procedure TFrmModifiers.SpeedButton14Click(Sender: TObject);
begin
  EditButton(SpeedButton14.Name);
end;

procedure TFrmModifiers.SpeedButton15Click(Sender: TObject);
begin
  EditButton(SpeedButton15.Name);
end;

procedure TFrmModifiers.SpeedButton16Click(Sender: TObject);
begin
  EditButton(SpeedButton16.Name);
end;

procedure TFrmModifiers.SpeedButton17Click(Sender: TObject);
begin
  EditButton(SpeedButton17.Name);
end;

procedure TFrmModifiers.SpeedButton18Click(Sender: TObject);
begin
  EditButton(SpeedButton18.Name);
end;

procedure TFrmModifiers.SpeedButton19Click(Sender: TObject);
begin
  EditButton(SpeedButton19.Name);
end;

procedure TFrmModifiers.SpeedButton1Click(Sender: TObject);
begin
  EditButton(SpeedButton1.Name);
end;

procedure TFrmModifiers.SpeedButton20Click(Sender: TObject);
begin
  EditButton(SpeedButton20.Name);
end;

procedure TFrmModifiers.SpeedButton21Click(Sender: TObject);
begin
  EditButton(SpeedButton21.Name);
end;

procedure TFrmModifiers.SpeedButton22Click(Sender: TObject);
begin
  EditButton(SpeedButton22.Name);
end;

procedure TFrmModifiers.SpeedButton23Click(Sender: TObject);
begin
  EditButton(SpeedButton23.Name);
end;

procedure TFrmModifiers.SpeedButton24Click(Sender: TObject);
begin
  EditButton(SpeedButton24.Name);
end;

procedure TFrmModifiers.SpeedButton25Click(Sender: TObject);
begin
  EditButton(SpeedButton25.Name);
end;

procedure TFrmModifiers.SpeedButton26Click(Sender: TObject);
begin
  EditButton(SpeedButton26.Name);
end;

procedure TFrmModifiers.SpeedButton27Click(Sender: TObject);
begin
  EditButton(SpeedButton27.Name);
end;

procedure TFrmModifiers.SpeedButton28Click(Sender: TObject);
begin
  EditButton(SpeedButton28.Name);
end;

procedure TFrmModifiers.SpeedButton29Click(Sender: TObject);
begin
  EditButton(SpeedButton29.Name);
end;

procedure TFrmModifiers.SpeedButton2Click(Sender: TObject);
begin
  EditButton(SpeedButton2.Name);
end;

procedure TFrmModifiers.SpeedButton30Click(Sender: TObject);
begin
  EditButton(SpeedButton30.Name);
end;

procedure TFrmModifiers.SpeedButton31Click(Sender: TObject);
begin
  EditButton(SpeedButton31.Name);
end;

procedure TFrmModifiers.SpeedButton32Click(Sender: TObject);
begin
  EditButton(SpeedButton32.Name);
end;

procedure TFrmModifiers.SpeedButton33Click(Sender: TObject);
begin
  EditButton(SpeedButton33.Name);
end;

procedure TFrmModifiers.SpeedButton34Click(Sender: TObject);
begin
  EditButton(SpeedButton34.Name);
end;

procedure TFrmModifiers.SpeedButton35Click(Sender: TObject);
begin
  EditButton(SpeedButton35.Name);
end;

procedure TFrmModifiers.SpeedButton36Click(Sender: TObject);
begin
  EditButton(SpeedButton36.Name);
end;

procedure TFrmModifiers.SpeedButton37Click(Sender: TObject);
begin
  EditButton(SpeedButton37.Name);
end;

procedure TFrmModifiers.SpeedButton38Click(Sender: TObject);
begin
  EditButton(SpeedButton38.Name);
end;

procedure TFrmModifiers.SpeedButton39Click(Sender: TObject);
begin
  EditButton(SpeedButton39.Name);
end;

procedure TFrmModifiers.SpeedButton3Click(Sender: TObject);
begin
  EditButton(SpeedButton3.Name);
end;

procedure TFrmModifiers.SpeedButton40Click(Sender: TObject);
begin
  EditButton(SpeedButton40.Name);
end;

procedure TFrmModifiers.SpeedButton41Click(Sender: TObject);
begin
  EditButton(SpeedButton41.Name);
end;

procedure TFrmModifiers.SpeedButton42Click(Sender: TObject);
begin
  EditButton(SpeedButton42.Name);
end;

procedure TFrmModifiers.SpeedButton43Click(Sender: TObject);
begin
  EditButton(SpeedButton43.Name);
end;

procedure TFrmModifiers.SpeedButton44Click(Sender: TObject);
begin
  EditButton(SpeedButton44.Name);
end;

procedure TFrmModifiers.SpeedButton45Click(Sender: TObject);
begin
  EditButton(SpeedButton45.Name);
end;

procedure TFrmModifiers.SpeedButton46Click(Sender: TObject);
begin
  EditButton(SpeedButton46.Name);
end;

procedure TFrmModifiers.SpeedButton47Click(Sender: TObject);
begin
  EditButton(SpeedButton47.Name);
end;

procedure TFrmModifiers.SpeedButton48Click(Sender: TObject);
begin
  EditButton(SpeedButton48.Name);
end;

procedure TFrmModifiers.SpeedButton49Click(Sender: TObject);
begin
  EditButton(SpeedButton49.Name);
end;

procedure TFrmModifiers.SpeedButton4Click(Sender: TObject);
begin
  EditButton(SpeedButton4.Name);
end;

procedure TFrmModifiers.SpeedButton50Click(Sender: TObject);
begin
  EditButton(SpeedButton50.Name);
end;

procedure TFrmModifiers.SpeedButton51Click(Sender: TObject);
begin
  EditButton(SpeedButton51.Name);
end;

procedure TFrmModifiers.SpeedButton52Click(Sender: TObject);
begin
  EditButton(SpeedButton52.Name);
end;

procedure TFrmModifiers.SpeedButton53Click(Sender: TObject);
begin
  EditButton(SpeedButton53.Name);
end;

procedure TFrmModifiers.SpeedButton54Click(Sender: TObject);
begin
EditButton(SpeedButton54.Name);
end;

procedure TFrmModifiers.SpeedButton55Click(Sender: TObject);
begin
  EditButton(SpeedButton55.Name);
end;

procedure TFrmModifiers.SpeedButton56Click(Sender: TObject);
begin
  EditButton(SpeedButton56.Name);
end;

procedure TFrmModifiers.SpeedButton57Click(Sender: TObject);
begin
  EditButton(SpeedButton57.Name);
end;

procedure TFrmModifiers.SpeedButton58Click(Sender: TObject);
begin
  EditButton(SpeedButton58.Name);
end;

procedure TFrmModifiers.SpeedButton59Click(Sender: TObject);
begin
  EditButton(SpeedButton59.Name);
end;

procedure TFrmModifiers.SpeedButton5Click(Sender: TObject);
begin
  EditButton(SpeedButton5.Name);
end;

procedure TFrmModifiers.SpeedButton60Click(Sender: TObject);
begin
  EditButton(SpeedButton60.Name);
end;

procedure TFrmModifiers.SpeedButton61Click(Sender: TObject);
begin
  EditButton(SpeedButton61.Name);
end;

procedure TFrmModifiers.SpeedButton62Click(Sender: TObject);
begin
  EditButton(SpeedButton62.Name);
end;

procedure TFrmModifiers.SpeedButton63Click(Sender: TObject);
begin
  EditButton(SpeedButton63.Name);
end;

procedure TFrmModifiers.SpeedButton64Click(Sender: TObject);
begin
  EditButton(SpeedButton64.Name);
end;

procedure TFrmModifiers.SpeedButton65Click(Sender: TObject);
begin
  EditButton(SpeedButton65.Name);
end;

procedure TFrmModifiers.SpeedButton66Click(Sender: TObject);
begin
  EditButton(SpeedButton66.Name);
end;

procedure TFrmModifiers.SpeedButton67Click(Sender: TObject);
begin
  EditButton(SpeedButton67.Name);
end;

procedure TFrmModifiers.SpeedButton68Click(Sender: TObject);
begin
  EditButton(SpeedButton68.Name);
end;

procedure TFrmModifiers.SpeedButton69Click(Sender: TObject);
begin
  EditButton(SpeedButton69.Name);
end;

procedure TFrmModifiers.SpeedButton6Click(Sender: TObject);
begin
  EditButton(SpeedButton6.Name);
end;

procedure TFrmModifiers.SpeedButton70Click(Sender: TObject);
begin
  EditButton(SpeedButton70.Name);
end;

procedure TFrmModifiers.SpeedButton71Click(Sender: TObject);
begin
  EditButton(SpeedButton71.Name);
end;

procedure TFrmModifiers.SpeedButton72Click(Sender: TObject);
begin
  EditButton(SpeedButton72.Name);
end;

procedure TFrmModifiers.SpeedButton73Click(Sender: TObject);
begin
  EditButton(SpeedButton73.Name);
end;

procedure TFrmModifiers.SpeedButton74Click(Sender: TObject);
begin
  EditButton(SpeedButton74.Name);
end;

procedure TFrmModifiers.SpeedButton75Click(Sender: TObject);
begin
  EditButton(SpeedButton75.Name);
end;

procedure TFrmModifiers.SpeedButton76Click(Sender: TObject);
begin
  EditButton(SpeedButton76.Name);
end;

procedure TFrmModifiers.SpeedButton77Click(Sender: TObject);
begin
  EditButton(SpeedButton77.Name);
end;

procedure TFrmModifiers.SpeedButton78Click(Sender: TObject);
begin
  EditButton(SpeedButton78.Name);
end;

procedure TFrmModifiers.SpeedButton79Click(Sender: TObject);
begin
  EditButton(SpeedButton79.Name);
end;

procedure TFrmModifiers.SpeedButton7Click(Sender: TObject);
begin
  EditButton(SpeedButton7.Name);
end;

procedure TFrmModifiers.SpeedButton80Click(Sender: TObject);
begin
  EditButton(SpeedButton80.Name);
end;

procedure TFrmModifiers.SpeedButton81Click(Sender: TObject);
begin
  EditButton(SpeedButton81.Name);
end;

procedure TFrmModifiers.SpeedButton82Click(Sender: TObject);
begin
  EditButton(SpeedButton82.Name);
end;

procedure TFrmModifiers.SpeedButton83Click(Sender: TObject);
begin
  EditButton(SpeedButton83.Name);
end;

procedure TFrmModifiers.SpeedButton84Click(Sender: TObject);
begin
  EditButton(SpeedButton84.Name);
end;

procedure TFrmModifiers.SpeedButton85Click(Sender: TObject);
begin
  EditButton(SpeedButton85.Name);
end;

procedure TFrmModifiers.SpeedButton86Click(Sender: TObject);
begin
  EditButton(SpeedButton86.Name);
end;

procedure TFrmModifiers.SpeedButton87Click(Sender: TObject);
begin
  EditButton(SpeedButton87.Name);
end;

procedure TFrmModifiers.SpeedButton88Click(Sender: TObject);
begin
  EditButton(SpeedButton88.Name);
end;

procedure TFrmModifiers.SpeedButton89Click(Sender: TObject);
begin
  EditButton(SpeedButton89.Name);
end;

procedure TFrmModifiers.SpeedButton8Click(Sender: TObject);
begin
  EditButton(SpeedButton8.Name);
end;

procedure TFrmModifiers.SpeedButton90Click(Sender: TObject);
begin
  EditButton(SpeedButton90.Name);
end;

procedure TFrmModifiers.SpeedButton91Click(Sender: TObject);
begin
  EditButton(SpeedButton91.Name);
end;

procedure TFrmModifiers.SpeedButton92Click(Sender: TObject);
begin
  EditButton(SpeedButton92.Name);
end;

procedure TFrmModifiers.SpeedButton93Click(Sender: TObject);
begin
  EditButton(SpeedButton93.Name);
end;

procedure TFrmModifiers.SpeedButton94Click(Sender: TObject);
begin
  EditButton(SpeedButton94.Name);
end;

procedure TFrmModifiers.SpeedButton95Click(Sender: TObject);
begin
  EditButton(SpeedButton95.Name);
end;

procedure TFrmModifiers.SpeedButton96Click(Sender: TObject);
begin
  EditButton(SpeedButton96.Name);
end;

procedure TFrmModifiers.SpeedButton97Click(Sender: TObject);
begin
  EditButton(SpeedButton97.Name);
end;

procedure TFrmModifiers.SpeedButton98Click(Sender: TObject);
begin
  EditButton(SpeedButton98.Name);
end;

procedure TFrmModifiers.SpeedButton99Click(Sender: TObject);
begin
  EditButton(SpeedButton99.Name);
end;

procedure TFrmModifiers.SpeedButton9Click(Sender: TObject);
begin
  EditButton(SpeedButton9.Name);
end;

procedure TFrmModifiers.SetButtonsVisibleFalse(FT: Boolean);
var
  i: Integer;
  comp: TComponent;
  sb: TSpeedButton;
const
  NamePrefix = 'SpeedButton';
  NamePrefix2 = 'sbCat';

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



procedure TFrmModifiers.LoadButtons;
begin
  With DMMidas do
  begin
    cdsBotonesModifiers.Close;
    cdsBotonesModifiers.CommandText := 'Select * from BOTONES_MIDIFIERS order by BUTTON_NUMBER';
    cdsBotonesModifiers.Open;
    cdsBotonesModifiers.First;
    while not cdsBotonesModifiers.Eof do
    begin
      findButton(cdsBotonesModifiersBUTTON_NAME.AsString.Trim, cdsBotonesModifiersDESCRIPTION.asString.Trim, cdsBotonesModifiersPRODUCT_NO.Value);
      cdsBotonesModifiers.Next;
    end;
  end;
  TabSheet1.Caption := sbCat1.Caption;
  TabSheet2.Caption := sbCat2.Caption;
  TabSheet3.Caption := sbCat3.Caption;
  TabSheet4.Caption := sbCat4.Caption;
  TabSheet5.Caption := sbCat5.Caption;
  TabSheet6.Caption := sbCat6.Caption;
end;

procedure TFrmModifiers.RefreshMainCourse;
begin
  With DMMidas do
  begin
    cdsMainCourse.Close;
    cdsMainCourse.CommandText := 'Select * from TransactionDetail_Temp where Main_course_id = ' + IntToStr(Main_Course_ID) + ' order by IDNumber';
    cdsMainCourse.Open;
  end;
end;

procedure TFrmModifiers.sbCat6Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 5;
  EditButton(sbCat6.Name);
end;

procedure TFrmModifiers.sbCat1Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 0;
  EditButton(sbCat1.Name);
end;

procedure TFrmModifiers.sbCat2Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 1;
  EditButton(sbCat2.Name);
end;

procedure TFrmModifiers.sbCat3Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 2;
  EditButton(sbCat3.Name);
end;

procedure TFrmModifiers.sbCat4Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 3;
  EditButton(sbCat4.Name);
end;

procedure TFrmModifiers.sbCat5Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 4;
  EditButton(sbCat5.Name);
end;

procedure TFrmModifiers.BBorrarClick(Sender: TObject);
Var
  IDNo, TranNo: Integer;
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  IDNo := DMMidas.cdsMainCourseIDNUMBER.Value;
  TranNo := DMMidas.cdsMainCourseTRANSACTIONNUMBER.Value;
  //If (FrmMain.IsAuthorized(AuthUser,12)) and (IDNo > 0) then
  If ( CommonPOS.isAuthorized('POS_DELPROD', UserRights.POS_DELPROD,true) ) and (IDNo > 0) then
  begin
    CommonPOS.BorrarProducto(TranNo, IDNo);
    RefreshMainCourse;
  end;
end;


procedure TFrmModifiers.EditButton(BtnName: String);
begin
  With DMMidas do
  begin
    if (Self.Tag = 0) then
    begin
      FrmBotonesEditModifiers := TFrmBotonesEditModifiers.Create(self);
      With FrmBotonesEditModifiers do
      begin
        cdsBotonesModifiers.Close;
        cdsBotonesModifiers.CommandText := 'Select * from BOTONES_MIDIFIERS where Button_Name = ' + chr(39) + BtnName + chr(39);
        cdsBotonesModifiers.Open;
        if cdsBotonesModifiers.RecordCount = 0 then
        begin
          cdsBotonesModifiers.Append;
          cdsBotonesModifiersQTY.Value := 1;
          cdsBotonesModifiersBUTTON_NAME.Value := BtnName;
        end
        else
         cdsBotonesModifiers.Edit;
        ShowModal;
      end;
      LoadButtons;
    end
    else
    begin
      if (Copy(BtnName,1,5) <> 'sbCat') and (Assigned(FrmPOSRest)) then
      begin
        cdsBotonesModifiers.Close;
        cdsBotonesModifiers.CommandText := 'Select * from BOTONES_MIDIFIERS where Button_Name = ' + chr(39) + BtnName + chr(39);
        cdsBotonesModifiers.Open;
        if cdsBotonesModifiersPRODUCT_NO.Value <> 0 then
          Find_Inset_Product(cdsBotonesModifiersPRODUCT_NO.asString)
        else
        begin
          FDQuery1.SQL.Text := 'Update TRANSACTIONDETAIL_TEMP set Termino = ' + chr(39) + Trim(Copy(cdsBotonesModifiersDESCRIPTION.Value,1,15)) + chr(39) + ' where MAIN_COURSE = 1 and Main_Course_ID = ' + IntToStr(Main_Course_ID);
          FDQuery1.ExecSQL;
          RefreshMainCourse;
        end;
      end;
    end;
  end;
end;




end.
