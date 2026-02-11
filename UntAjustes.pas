unit UntAjustes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,StdCtrls,
  Grids, DBGrids, Buttons, ImgList, ComCtrls, ToolWin, Data.DB, System.ImageList;

type
  TFrmAjustes = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    Label1: TLabel;
    Label2: TLabel;
    ToolButton5: TToolButton;
    cxDateDesde: TDateTimePicker;
    cxDateHasta: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure BtnExecuteClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAjustes: TFrmAjustes;

implementation

uses untMain, UntDMMidas, UntRptAjuste;

{$R *.dfm}

procedure TFrmAjustes.FormCreate(Sender: TObject);
begin
  cxDateDesde.Date := Date - 30;
  cxDateHasta.Date := Date;
end;

procedure TFrmAjustes.BtnExecuteClick(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSBalanceInicial.Close;
    CDSBalanceInicial.CommandText := 'Select * from BalanceInicial where Fecha between ' + #39 +  DateToStr(cxDateDesde.Date) + #39 +  ' and ' + #39 + DateToStr(cxDateHasta.Date) + #39;
    CDSBalanceInicial.Open;
    CDSBalanceInicial.Last;
  end;
end;

procedure TFrmAjustes.BtnPrintClick(Sender: TObject);
begin
  FrmRptAjuste := TFrmRptAjuste.Create(Self);
  With FrmRptAjuste do
  begin
    //RptAjuste.Print;
  end;
end;

end.
