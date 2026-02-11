unit UOrdenes;

interface                                           

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, DBCtrls, ExtCtrls, jpeg, Db, Mask, Buttons,
  DBTables, ImgList, ComCtrls, ToolWin;

type
  TFEntradaMercancia = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Bevel1: TBevel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    ImageList1: TImageList;
    Label22: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    TlBarDetail: TToolBar;
    ToolButton31: TToolButton;
    LabelSuplidor: TLabel;
    LabelNoSup: TLabel;
    CoolBar1: TCoolBar;
    ToolBar5: TToolBar;
    ToolButton2: TToolButton;
    ToolButton1: TToolButton;
    ToolBar2: TToolBar;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton9: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton11: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton23: TToolButton;
    TlBtnReceive: TToolButton;
    ToolButton30: TToolButton;
    TlBtnRefresh: TToolButton;
    TlBtninvRefresh: TToolButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit16Change(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure TlBtnRefreshClick(Sender: TObject);
    procedure ToolButton31Click(Sender: TObject);
    procedure TlBtninvRefreshClick(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
    procedure ToolButton18Click(Sender: TObject);
    procedure TlBtnReceiveClick(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEntradaMercancia: TFEntradaMercancia;

implementation

uses UntDMMidas, UntSearchInvoice, untMain,
  UntSuppliers, UntCommon, UntQueries, UntSearchInv, UntEditInvoice,
  UntInvAddProduct, UntRptInvoice;

{$R *.DFM}

procedure TFEntradaMercancia.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Begin
    Key := #0;                                 { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFEntradaMercancia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FEntradaMercancia := NIL;
end;

procedure TFEntradaMercancia.FormCreate(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSInventarioPiso.Active := True;
    CDSSuplidores.Active := True;
    CDSOrderHeader.Active := True;
    CDSOrderDetail.Active := True;
    LabelSuplidor.Caption := CDSSuplidoresSUPLIDOR.Value;
    LabelNoSup.Caption := CDSSuplidoresNUMEROSUPLIDOR.AsString;
    TlBtnReceive.Enabled := NOT (CDSOrderHeaderSTATUS.Value <> 'O');
    TlBarDetail.Enabled := TlBtnReceive.Enabled;
  end;
end;

procedure TFEntradaMercancia.DBEdit16Change(Sender: TObject);
begin
  with DMMidas do
  begin
    CDSOrderHeader.Close;
    CDSOrderHeader.CommandText := 'Select * from OrderHeader where Suplidor = ' + IntToStr(CDSSuplidoresNUMEROSUPLIDOR.Value) + ' order by No_Trans';
    CDSOrderHeader.Open;
  end;
end;

procedure TFEntradaMercancia.ToolButton3Click(Sender: TObject);
begin
  With DMMidas do
  begin
    If Not CDSOrderHeader.Bof then
    begin
      CDSOrderHeader.Prior;
      TlBtnReceive.Enabled := NOT (CDSOrderHeaderSTATUS.Value <> 'O');
      TlBarDetail.Enabled := TlBtnReceive.Enabled;
      CDSOrderDetail.Close;
      CDSOrderDetail.Filtered := True;
      CDSOrderDetail.filter := 'OrderID = ' + CDSOrderHeaderORDERID.AsString;
      CDSOrderDetail.Open;
    end;
  end;
end;

procedure TFEntradaMercancia.ToolButton4Click(Sender: TObject);
begin
  With DMMidas do
  begin
    If Not DMMidas.CDSOrderHeader.Eof then
    begin
      CDSOrderHeader.Next;
      TlBtnReceive.Enabled := NOT (CDSOrderHeaderSTATUS.Value <> 'O');
      TlBarDetail.Enabled := TlBtnReceive.Enabled;
      CDSOrderDetail.Close;
      CDSOrderDetail.Filtered := True;
      CDSOrderDetail.filter := 'OrderID = ' + CDSOrderHeaderORDERID.AsString;
      CDSOrderDetail.Open;
    end;
  end;
end;

procedure TFEntradaMercancia.ToolButton11Click(Sender: TObject);
begin
  FrmSearchInvoices := TFrmSearchInvoices.Create(self);
  With FrmSearchInvoices do
  begin
    ShowModal;
    Release;
  end;
end;

procedure TFEntradaMercancia.ToolButton5Click(Sender: TObject);
begin
  FrmEditInvoice := TFrmEditInvoice.Create(Self);
  With DMMidas.CDSOrderHeader, FrmEditInvoice do
  begin
    Caption := 'Añadir factura';
    Append;
    ShowModal;
    If ModalResult = mrOK then
    begin
      Try
        Post;
        Last;
        With DMMidas.CDSOrderDetail do
        begin
          Close;
          Filtered := True;
          filter := 'OrderID = ' + DMMidas.CDSOrderHeaderORDERID.AsString;
          Open;
        end;
      Except
        Cancel;
        ShowMessage('No puedo añadir la factura');
      end;
    end
    else
    begin
      Cancel;
    end;
    Release;
  end;
end;

procedure TFEntradaMercancia.ToolButton7Click(Sender: TObject);
begin
  If MessageDlg('¿Realmente quiere borrar esta factura?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    DMMidas.CDSOrderHeader.Delete;
  end;
end;

procedure TFEntradaMercancia.ToolButton6Click(Sender: TObject);
begin
  FrmEditInvoice := TFrmEditInvoice.Create(Self);
  With DMMidas.CDSOrderHeader, FrmEditInvoice do
  begin
    Edit;
    ShowModal;
    If ModalResult = mrOK then
    begin
      Try
        Post;
      Except
        Cancel;
        ShowMessage('No puedo editar la factura');
      end;
    end
    else
    begin
      Cancel;
    end;
    Release;
  end;
end;

procedure TFEntradaMercancia.TlBtnRefreshClick(Sender: TObject);
begin
  DMMidas.CDSOrderHeader.Refresh;
end;

procedure TFEntradaMercancia.ToolButton31Click(Sender: TObject);
begin
  FrmInvAddProduct := TFrmInvAddProduct.Create(Self);
  With DMMidas.CDSOrderDetail, FrmInvAddProduct do
  begin
    Caption := 'Añadir producto';
    BtBtnNext.Enabled := True;
    Append;
    ShowModal;
    Release;
  end;
  DMMidas.CDSOrderHeader.RefreshRecord;
end;

procedure TFEntradaMercancia.TlBtninvRefreshClick(Sender: TObject);
begin
  DMMidas.CDSOrderDetail.Refresh;
end;

procedure TFEntradaMercancia.ToolButton17Click(Sender: TObject);
begin
  FrmInvAddProduct := TFrmInvAddProduct.Create(Self);
  With DMMidas.CDSOrderDetail, FrmInvAddProduct do
  begin
    Edit;
    ShowModal;
    If ModalResult = mrOK then
    begin
      Try
        Post;
      Except
        Cancel;
        ShowMessage('No puedo editar el producto');
      end;
    end
    else
    begin
      Cancel;
    end;
    Release;
  end;
  DMMidas.CDSOrderHeader.RefreshRecord;
end;

procedure TFEntradaMercancia.ToolButton18Click(Sender: TObject);
begin
  If MessageDlg('¿Realmente quiere borrar esta información?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    DMMidas.CDSOrderDetail.Delete;
  end;
end;

procedure TFEntradaMercancia.TlBtnReceiveClick(Sender: TObject);
begin
  If MessageDlg('¿Realmente desea cerrar esta factura?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    With DMMidas.CDSTrHeadAdHoc do
    begin
      SQL.Clear;
      SQL.Add('Execute Procedure RECEIVE_ORDER ' + IntToStr(DMMidas.CDSOrderHeaderORDERID.Value));
      ExecSQL(True);
    end;
    TlBtnReceive.Enabled := False;
    TlBarDetail.Enabled := TlBtnReceive.Enabled;
    DMMidas.CDSOrderHeader.Refresh;
  end;
end;

procedure TFEntradaMercancia.ToolButton8Click(Sender: TObject);
begin
  RptInvoice := TRptInvoice.Create(Self);
  With RptInvoice do
  begin
    CDSOrderHeader.Params[0].AsInteger := DMMidas.CDSOrderHeaderORDERID.AsInteger;
    CDSOrderHeader.Open;
    CDSOrderDetail.Params[0].AsInteger := DMMidas.CDSOrderHeaderORDERID.AsInteger;
    CDSOrderDetail.Open;
    QRLabel1.Caption := 'Factura: ' + DMMidas.CDSOrderHeaderORDERID.AsString;
    QRLabel2.Caption := DMMidas.CDSSuplidoresNUMEROSUPLIDOR.AsString;
    QRLabel3.Caption := DMMidas.CDSSuplidoresSUPLIDOR.AsString;
    QuickRep1.PreviewModal;
    Release;
  end;
end;

end.
