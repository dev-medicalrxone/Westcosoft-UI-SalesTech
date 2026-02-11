unit untCustomerClassification;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin;

type
  TfrmCustomerClassification = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    ToolButton5: TToolButton;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCustomerClassification: TfrmCustomerClassification;

implementation

{$R *.dfm}

uses UntDMMidas, untMain;

procedure TfrmCustomerClassification.FormCreate(Sender: TObject);
begin
  With DMMidas do
  begin
    if cdsCUSTOMER_CLASSIFICATION.Active = False then
    begin
      cdsCUSTOMER_CLASSIFICATION.CommandText := 'Select * from CUSTOMER_CLASSIFICATION order by CLIENT_CASSIFICATION';
      cdsCUSTOMER_CLASSIFICATION.Open;
    end;
  end;
end;

procedure TfrmCustomerClassification.ToolButton1Click(Sender: TObject);
begin
  DMMidas.cdsCUSTOMER_CLASSIFICATION.Insert;
end;

procedure TfrmCustomerClassification.ToolButton2Click(Sender: TObject);
begin
  DMMidas.cdsCUSTOMER_CLASSIFICATION.Post;
  DMMidas.cdsCUSTOMER_CLASSIFICATION.Refresh;
end;

procedure TfrmCustomerClassification.ToolButton3Click(Sender: TObject);
begin
  DMMidas.cdsCUSTOMER_CLASSIFICATION.Refresh;
end;

procedure TfrmCustomerClassification.ToolButton4Click(Sender: TObject);
begin
  DMMidas.cdsCUSTOMER_CLASSIFICATION.Edit;
  DMMidas.cdsCUSTOMER_CLASSIFICATION.Refresh;
end;

procedure TfrmCustomerClassification.ToolButton5Click(Sender: TObject);
begin
   DMMidas.cdsCUSTOMER_CLASSIFICATION.Cancel;
end;

end.
