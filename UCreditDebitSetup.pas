unit UCreditDebitSetup;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, DBTables, Mask, ExtCtrls, Buttons,
  Registry;

type
  TFCreditDebitSetup = class(TForm)
    ScrollBox: TScrollBox;
    DBNavigator: TDBNavigator;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Label7: TLabel;
    Label15: TLabel;
    DBEdit16: TDBEdit;
    Label16: TLabel;
    DBEdit17: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    ComboBox1: TComboBox;
    Label22: TLabel;
    CheckBox1: TCheckBox;
    ComboBox2: TComboBox;
    Label23: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FCreditDebitSetup: TFCreditDebitSetup;

implementation

uses UPOS, UntDMMidas;

{$R *.DFM}

procedure TFCreditDebitSetup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMMidas.CDSSetupFarmacia.Value = 'T' then
  begin
    FPOS.Button18.Visible := True;
    FPOS.Button19.Visible := True;
    FPOS.Button18.Enabled := True;
    FPOS.Button19.Enabled := True;
  end
  else
  begin
    FPOS.Button18.Visible := False;
    FPOS.Button19.Visible := False;
    FPOS.Button18.Enabled := False;
    FPOS.Button19.Enabled := False;
  end;
end;

procedure TFCreditDebitSetup.FormCreate(Sender: TObject);
Var
 Registro : TRegistry;
 NoCaja: TRegistry;
begin
   registro := TRegistry.create;
   registro.OpenKey('\AxelPuntoVenta', true);
   try
     ComboBox1.ItemIndex := StrToInt(registro.ReadString('ComPort'));
   except
   end;
   registro.Free;
   NoCaja := TRegistry.Create;
   NoCaja.OpenKey('\FarmaTec2000', True);
   try
//     NoCaja.WriteString('Caja#', IntToStr(ComboBox2.ItemIndex));
     ComboBox2.ItemIndex := StrToInt(NoCaja.ReadString('Caja#'));
   except
   end;
   NoCaja.Free;
end;

procedure TFCreditDebitSetup.ComboBox1Change(Sender: TObject);
Var
 Registro : TRegistry;
begin
   registro := TRegistry.create;
   registro.OpenKey('\AxelPuntoVenta', true);
   try
     registro.WriteString('ComPort', IntToStr(ComboBox1.ItemIndex));
   except
   end;
   registro.Free;
end;

procedure TFCreditDebitSetup.ComboBox2Change(Sender: TObject);
Var
  NoCaja: TRegistry;
begin
  NoCaja := TRegistry.Create;
  NoCaja.OpenKey('\FarmaTec2000', True);
  try
    NoCaja.WriteString('Caja#', IntToStr(ComboBox2.ItemIndex));
  except
  end;
  NoCaja.Free;
end;

end.
