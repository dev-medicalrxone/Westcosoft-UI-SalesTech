unit UDebitTrans;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, DBTables, ExtCtrls;

type
  TFDebitTrans = class(TForm)
    ControlBar1: TControlBar;
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Panel1: TPanel;
    GroupBox4: TGroupBox;
    ComboBox1: TComboBox;
    ComboBox4: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    GroupBox5: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label10: TLabel;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    ComboBox9: TComboBox;
    ComboBox10: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDebitTrans: TFDebitTrans;

implementation

uses UCreditDebitSetup, UData;

{$R *.DFM}

end.
