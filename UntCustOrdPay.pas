unit UntCustOrdPay;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, ExtCtrls, ImgList, ComCtrls, StdCtrls, DBCtrls, jpeg,
  Buttons, System.ImageList;

type
  TFrmCustOrdPay = class(TForm)
    ImageList1: TImageList;
    DtSrcDisplay: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    TreeView1: TTreeView;
    Splitter1: TSplitter;
    Panel4: TPanel;
    Image1: TImage;
    Panel5: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    BitBtn1: TBitBtn;
    procedure TreeView1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCustOrdPay: TFrmCustOrdPay;

implementation

uses UntDMMidas, UntVerTrans, untMain, UntCommon, UntQueries,
  UntDMCentralCredit, UntViewCreditTrans, UntCommonPOS;

{$R *.DFM}

procedure TFrmCustOrdPay.TreeView1Click(Sender: TObject);
begin
  Panel3.Caption := ' ' + TreeView1.Selected.Text;
  Case TreeView1.Selected.AbsoluteIndex of
    1 :
    begin
      With DMMidas do
      begin
        With CDSClientTransactions do
        begin
          Active := False;
          CommandText := 'Select * From ClientTransactions Where Code = ''DB'' and '
                         + 'ClientNo = ' + DMMidas.CDSClientesNUMEROCLIENTE.AsString
                         + ' Order By DateOfTrans Desc';
          Active := True;
        end;
        FDQuery1.SQL.Text := 'Select Sum(Amount) as TDB from ClientTransactions where ClientNo = ' + CDSClientesNUMEROCLIENTE.AsString + ' and Code = ' + chr(39) + 'DB' + chr(39);
        FDQuery1.Open;
        Panel3.Caption := Panel3.Caption + Format(' - Total: %n',[FDQuery1.FieldByName('TDB').asFloat]);
      end;
    end;
    2 :
    begin
      With DMMidas do
      begin
        With CDSClientTransactions do
        begin
          Active := False;
          CommandText := 'Select * From ClientTransactions Where Code = ''CR'' and '
                         + 'ClientNo = ' + DMMidas.CDSClientesNUMEROCLIENTE.AsString
                         + ' Order By DateOfTrans Desc';
          Active := True;
        end;
        FDQuery1.SQL.Text := 'Select Sum(Amount) as TDB from ClientTransactions where ClientNo = ' + CDSClientesNUMEROCLIENTE.AsString + ' and Code = ' + chr(39) + 'CR' + chr(39);
        FDQuery1.Open;
        Panel3.Caption := Panel3.Caption + Format(' - Total: %n',[FDQuery1.FieldByName('TDB').asFloat]);
      end;
    end;
    3 :
    begin
      With DMMidas do
      begin
        With CDSClientTransactions do
        begin
          Active := False;
          CommandText := 'Select * From ClientTransactions Where Code = ''LD'' and '
                         + 'ClientNo = ' + DMMidas.CDSClientesNUMEROCLIENTE.AsString
                         + ' Order By DateOfTrans Desc';
          Active := True;
        end;
        FDQuery1.SQL.Text := 'Select Sum(Amount) as TDB from ClientTransactions where ClientNo = ' + CDSClientesNUMEROCLIENTE.AsString + ' and Code = ' + chr(39) + 'LD' + chr(39);
        FDQuery1.Open;
        Panel3.Caption := Panel3.Caption + Format(' - Total: %n',[FDQuery1.FieldByName('TDB').asFloat]);
      end;
    end;
    4 :
    begin
      With DMMidas do
      begin
        With CDSClientTransactions do
        begin
          Active := False;
          CommandText := 'Select * From ClientTransactions Where Code = ''LC'' and '
                         + 'ClientNo = ' + DMMidas.CDSClientesNUMEROCLIENTE.AsString
                         + ' Order By DateOfTrans Desc';
          Active := True;
        end;
        FDQuery1.SQL.Text := 'Select Sum(Amount) as TDB from ClientTransactions where ClientNo = ' + CDSClientesNUMEROCLIENTE.AsString + ' and Code = ' + chr(39) + 'LC' + chr(39);
        FDQuery1.Open;
        Panel3.Caption := Panel3.Caption + Format(' - Total: %n',[FDQuery1.FieldByName('TDB').asFloat]);
      end;
    end;
    6 :
    begin
      With DMMidas do
      begin
        With CDSClientTransactions do
        begin
          Active := False;
          CommandText := 'Select * From ClientTransactions Where (Code = ' + chr(39) + 'PC' + chr(39) + ' or Code = ' + chr(39) + 'PD' + chr(39) + ') and '
                         + 'ClientNo = ' + DMMidas.CDSClientesNUMEROCLIENTE.AsString
                         + ' Order By DateOfTrans Desc';
          Active := True;
        end;
        FDQuery1.SQL.Text := 'Select Sum(Amount) as TDB from ClientTransactions where ClientNo = ' + CDSClientesNUMEROCLIENTE.AsString + ' and Code = ' + chr(39) + 'PC' + chr(39);
        FDQuery1.Open;
        Panel3.Caption := Panel3.Caption + Format(' - Total: %n',[FDQuery1.FieldByName('TDB').asFloat]);
      end;
    end;

    5 :
    begin
      With DMMidas do
      begin
        With CDSClientTransactions do
        begin
          Active := False;
          CommandText := 'Select * From ClientTransactions Where Code = ''AU'' and '
                         + 'ClientNo = ' + DMMidas.CDSClientesNUMEROCLIENTE.AsString
                         + ' Order By DateOfTrans Desc';
          Active := True;
        end;
        Panel3.Caption := Panel3.Caption + Format(' - Total: %m',[DMMidas.CDSClientesAuspicio.asFloat]);
      end;
    end

    else
    begin
      DtSrcDisplay.DataSet.Close;
    end;

  end;
end;

procedure TFrmCustOrdPay.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  With DMMidas do
  begin
    CDSClientTransactions.Active := False;
  end;
end;

procedure TFrmCustOrdPay.FormResize(Sender: TObject);
begin
  BitBtn1.Left := Width - 44;
end;

procedure TFrmCustOrdPay.FormCreate(Sender: TObject);
begin
  With DMMidas do
  begin
    CDSClientTransactions.Active := False;
  end;
end;

procedure TFrmCustOrdPay.DBGrid1DblClick(Sender: TObject);
Var
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  if CommonPOS.isAuthorized('',UserRights.MAIN_TRANS, false) then
  begin
    //if FrmMain.WebCredit = False then
    //begin
      if Not Assigned(FrmVerTrans) then
      begin
        FrmVerTrans := TFrmVerTrans.Create(Self);
        FrmVerTrans.FormStyle := fsNormal;
        FrmVerTrans.WindowState := wsNormal;
        FrmVerTrans.CDSTransactionDetails.Close;
        //IF FrmMain.WebCredit = True then
        //  FrmVerTrans.CDSTransactionDetails.CommandText :=  'Select * from VerTransacciones Where TransactionNumber = ' + DM.CDSClientTransactionsViewTRANSNO.AsString
        //else
          FrmVerTrans.CDSTransactionDetails.CommandText :=  'Select * from VerTransacciones Where TransactionNumber = ' + DMMidas.CDSClientTransactionsTRANSNO.AsString;
        FrmVerTrans.CDSTransactionDetails.Open;
        Show;
      end
      else
        FrmVerTrans.BringToFront;
    {end
    else
    begin
      FrmViewCreditTrans := TFrmViewCreditTrans.Create(Self);
      with DM do
      begin
        if DM.CDSClientTransactionsViewNO_FARMACIA.Value <> DMMidas.CDSSetupNO_FARMACIA.Value then
        begin
          DM.CDSTransactionDetails.close;
          DM.CDSTransactionDetails.CommandText := 'Select * from VerTransacciones Where TransactionNumber = ' + DM.CDSClientTransactionsViewTRANSNO.AsString;
          DM.CDSTransactionDetails.Open;
          FrmViewCreditTrans.DBGrid1.DataSource := DM.DSTrans;
        end
        else
        begin
          With FrmViewCreditTrans do
          begin
            CDSTransactionDetails.close;
            CDSTransactionDetails.CommandText :=   'Select * from VerTransacciones Where TransactionNumber = ' + DM.CDSClientTransactionsViewTRANSNO.AsString;
            CDSTransactionDetails.Open;
            DBGrid1.DataSource := DSTrans;
          end;
        end;
      end;
      FrmViewCreditTrans.Show;
    end;}
  end;
end;
end.
