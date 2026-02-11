unit UntAgruparProductos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls, ToolWin,
  Data.DB;

type
  TFrmGropuProducts = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    LabelMedicamento: TLabel;
    LabelBarcode: TLabel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnInsertRecordClick(Sender: TObject);
    procedure BtnDeleteRecordClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGropuProducts: TFrmGropuProducts;

implementation

uses untMain, UntDMMidas, UntSearchInv, UntQueries;

{$R *.dfm}

procedure TFrmGropuProducts.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmGropuProducts.BtnInsertRecordClick(Sender: TObject);
Var
  Precio, Costo: Double;
  GPNO, Dept, SubDpt: Integer;
begin
  With DMMidas do
  begin
    FrmSearchInv := TFrmSearchInv.Create(Self);
    With FrmSearchInv do
    Begin
      if CDSInventarioPisoPRECIO.asFloat > 0 then Precio := CDSInventarioPisoPRECIO.asFloat else Precio := 0;
      if CDSInventarioPisoCOSTO.asFloat > 0 then Costo := CDSInventarioPisoCOSTO.asFloat else Costo := 0;
      if CDSInventarioPisoDEPARTAMENTO.Value > 0 then Dept := CDSInventarioPisoDEPARTAMENTO.Value else Dept := 0;
      if CDSInventarioPisoSUB_DEPARTAMENTO.Value > 0 then SubDpt := CDSInventarioPisoSUB_DEPARTAMENTO.Value else SubDpt := 0;
      GPNO := CDSInventarioPisoGROUP_PRODUCTNO.Value;
      ShowModal;
      If FrmSearchInv.ModalResult = mrOK then
      Begin
        if MessageDlg('Desea agrupar ' + Trim(CDSInventarioPisoDESCRIPCION.Value) + ' este producto con ' + LabelMedicamento.Caption , mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          CDSInventarioPiso.Edit;
          CDSInventarioPisoGROUP_PRODUCTNO.Value := StrToInt(LabelBarcode.Caption);
          CDSInventarioPiso.Post;
          CDSInventarioPiso.ApplyUpdates(-1);
          {SPGROUP_PROD_POS.Close;
          SPGROUP_PROD_POS.ParamByName('PrecioPar').AsFloat := Precio;
          SPGROUP_PROD_POS.ParamByName('CostoPar').AsFloat := Costo;
          SPGROUP_PROD_POS.ParamByName('DeptPar').AsInteger := Dept;
          SPGROUP_PROD_POS.ParamByName('SUBDPT').AsInteger := SubDpt;
          SPGROUP_PROD_POS.ParamByName('GPNO').AsInteger := GPNO;
          SPGROUP_PROD_POS.ExecProc;}
          Queries.OpenGroup(StrToInt(LabelBarcode.Caption));
        end;
      end;
    end;
  FrmSearchInv.Release;
  end;
end;

procedure TFrmGropuProducts.BtnDeleteRecordClick(Sender: TObject);
Var
  PNo: Integer;
begin
  With DMMidas do
  begin
    PNo := CDSGroupPRODUCTNO.Value;
    if MessageDlg('Desea separar ' + Trim(CDSGroupDESCRIPCION.Value) + ' de este grupo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      CDSGroup.Edit;
      CDSGroupGROUP_PRODUCTNO.Value := PNo;
      CDSGroup.Post;
      Queries.OpenGroup(StrToInt(LabelBarcode.Caption));
      CDSInventarioPiso.Refresh;
    end;
  end;
end;

end.
