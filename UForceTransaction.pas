unit UForceTransaction;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TFForceTrans = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    EditSwipeTrackData: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EditAmount1: TEdit;
    EditAmount2: TEdit;
    Label7: TLabel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    EditAccountNumber: TEdit;
    EditExpirationDate: TEdit;
    ComboBox17: TComboBox;
    EditApprovalCode: TEdit;
    Label3: TLabel;
    Label4: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FForceTrans: TFForceTrans;

implementation

{$R *.DFM}

end.
