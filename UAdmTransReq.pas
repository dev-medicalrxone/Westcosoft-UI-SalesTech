unit UAdmTransReq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TFAdminTransRequest = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    ComboBox2: TComboBox;
    Label2: TLabel;
    ComboBox3: TComboBox;
    Label3: TLabel;
    ComboBox4: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    EditItemNumber: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ComboBox5: TComboBox;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    EditNoTrans: TEdit;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    Label9: TLabel;
    procedure ComboBox5Exit(Sender: TObject);
    procedure ComboBox6Exit(Sender: TObject);
    procedure ComboBox7Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAdminTransRequest: TFAdminTransRequest;

implementation

{$R *.DFM}

procedure TFAdminTransRequest.ComboBox5Exit(Sender: TObject);
begin
  Case ComboBox5.ItemIndex of
    3: BitBtn1.Enabled := False; 
  end;
end;

procedure TFAdminTransRequest.ComboBox6Exit(Sender: TObject);
begin
  Case (ComboBox7.ItemIndex) or (ComboBox6.ItemIndex) of
    0: BitBtn1.Enabled := True;
    1: BitBtn1.Enabled := True;
  end;
end;

procedure TFAdminTransRequest.ComboBox7Exit(Sender: TObject);
begin
  Case (ComboBox7.ItemIndex) or (ComboBox6.ItemIndex) of
    0: BitBtn1.Enabled := True;
    1: BitBtn1.Enabled := True;
  end;
end;

end.
