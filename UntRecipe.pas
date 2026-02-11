unit UntRecipe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ToolWin, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TFrmRecipe = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    ToolBar2: TToolBar;
    TBPost: TToolButton;
    tbNewProduct: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton2: TToolButton;
    tbRefresh: TToolButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    DBMemo1: TDBMemo;
    Button2: TButton;
    Button3: TButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure TBPostClick(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure tbRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRecipe: TFrmRecipe;

implementation

{$R *.dfm}

uses UntDMMidas, UntSearchInv2;

procedure TFrmRecipe.Button2Click(Sender: TObject);
begin
  tbNewProduct.Click;
end;

procedure TFrmRecipe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmRecipe.TBPost.Click;
end;

procedure TFrmRecipe.SpeedButton1Click(Sender: TObject);
begin
  TBPost.Click;
  tbRefresh.Click;
  FrmSearchInv2 := TFrmSearchInv2.Create(self);
  With FrmSearchInv2 do
  begin
    Tag := 1;
    FrmSearchInv2.EditSearchProd.Text := '';
    FrmSearchInv2.Tag := 1;
    FrmSearchInv2.DBCtrlGrid1.DataSource := DMMidas.DSInventarioPiso2;
    ShowModal;
    if ModalResult = mrOk then
    begin
      With DMMidas do
      begin
        cdsRecipe.Append;
        cdsRecipePRODUCT_ID.Value := cdsInventarioPiso2PRODUCTNO.Value;
        cdsRecipeDESCRIPCION.Value := cdsInventarioPiso2DESCRIPCION.Value;
        cdsRecipeQTY.Value := 1;
        cdsRecipeMAIN_PRODUCT_ID.Value := CDSInventarioPisoPRODUCTNO.Value;
        cdsRecipeCOST.Value := cdsInventarioPiso2COSTO.Value;
        cdsRecipePRICE.Value := cdsInventarioPiso2PRECIO.Value;
      end;
    end;
    FrmSearchInv2 := Nil;
    Free;
    DBEdit2.SetFocus;
  end;
end;

procedure TFrmRecipe.TBPostClick(Sender: TObject);
begin
  With DMMidas do
  begin
    if (dsRecipe.State = dsEdit) or (dsRecipe.State = dsInsert) then
    begin
      cdsRecipe.Post;
      cdsRecipe.Refresh;
    end;
  end;
end;

procedure TFrmRecipe.ToolButton2Click(Sender: TObject);
begin
  DMMidas.cdsRecipe.Cancel;
end;

procedure TFrmRecipe.tbRefreshClick(Sender: TObject);
begin
  DMMidas.cdsRecipe.Refresh;;
end;

procedure TFrmRecipe.ToolButton5Click(Sender: TObject);
begin
  With DMMidas do
  begin
    if MessageDlg('Do you want to erase thsi item?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      cdsRecipe.Delete;
      cdsRecipe.Refresh;
    end;
  end;
end;

end.
