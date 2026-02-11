unit UntAttribDepartment;

interface

uses    UntDMMidas,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Tabs;

type
  TfrmDepartmentAttributes = class(TForm)
    GroupBox1: TGroupBox;
    chkAlwDisc: TCheckBox;
    chkROUND: TCheckBox;
    chkNLINE: TCheckBox;
    chkNonRefund: TCheckBox;
    chkPepSpray: TCheckBox;
    chkEBT: TCheckBox;
    chkSigis: TCheckBox;
    chkOTCCard: TCheckBox;
    chkPseudo: TCheckBox;
    chkTaxable: TCheckBox;
    chkSkipPriceUpd: TCheckBox;
    chkSkipPriceDistUpd: TCheckBox;
    GroupBox2: TGroupBox;
    chkUpdateAttrib: TCheckBox;
    chkUpdateGM: TCheckBox;
    txtGM: TEdit;
    btnProcess: TButton;
    btnCancel: TButton;
    lblTitle: TLabel;
    Label5: TLabel;
    cboAge: TComboBox;
    procedure btnProcessClick(Sender: TObject);
    procedure chkUpdateAttribClick(Sender: TObject);
    procedure chkUpdateGMClick(Sender: TObject);
  private
    { Private declarations }
    FParametro: string;
    FName: string;
    Ftype: string;
  public
    { Public declarations }
    procedure RecParametros(const pType: string; pName: string; Value: string);
  end;

var
  frmDepartmentAttributes: TfrmDepartmentAttributes;

implementation

{$R *.dfm}
procedure TfrmDepartmentAttributes.chkUpdateAttribClick(Sender: TObject);
begin
      GroupBox1.Enabled:=chkUpdateAttrib.Checked;
end;

procedure TfrmDepartmentAttributes.chkUpdateGMClick(Sender: TObject);
begin
      GroupBox2.Enabled:=chkUpdateGM.Checked;
end;

function IIF(Condition: Boolean; TrueResult, FalseResult: Variant): Variant;
begin
  if Condition then
    Result := TrueResult
  else
    Result := FalseResult;
end;

procedure TfrmDepartmentAttributes.RecParametros(const pType: string; pName: string; Value: string);
var
  i: Integer;
  txtage: String;
begin
    FParametro := Value;
    FName := pName;
    Ftype := pType;
    if pType='D' then
      Self.Caption :='Department Attributes';
    if pType='S' then
      Self.Caption :='SubDepartment Attributes';

    lblTitle.Caption:=pName;
    cboAge.Clear;
    cboAge.Items.Add('NONE');
    for i := 21 downto 10 do
    begin
      cboAge.Items.Add(IntToStr(i));
    end;


    With DMMidas do
    begin
            POS_UPDATE_DEPART_ATTRIB.Unprepare;
            POS_UPDATE_DEPART_ATTRIB.Params.Clear;
            POS_UPDATE_DEPART_ATTRIB.Params.Add('@pOPC',toInteger).AsInteger := 3;
            POS_UPDATE_DEPART_ATTRIB.Params.Add('@pType', toString).AsString := Ftype;
            POS_UPDATE_DEPART_ATTRIB.Params.Add('@DEPARTAMENTO', toString).AsString := FParametro;
            POS_UPDATE_DEPART_ATTRIB.Prepare;
            POS_UPDATE_DEPART_ATTRIB.Open;
            POS_UPDATE_DEPART_ATTRIB.First;
            if not POS_UPDATE_DEPART_ATTRIB.Eof then
            begin
                chkROUND.Checked := POS_UPDATE_DEPART_ATTRIB.FieldByName('ROUND').AsBoolean ;
                chkAlwDisc.Checked := POS_UPDATE_DEPART_ATTRIB.FieldByName('ALWDISC').AsBoolean ;
                chkNLINE.Checked := POS_UPDATE_DEPART_ATTRIB.FieldByName('NLINE').AsBoolean ;
                chkNonRefund.Checked := POS_UPDATE_DEPART_ATTRIB.FieldByName('NonRefund').AsBoolean ;
                chkPepSpray.Checked := POS_UPDATE_DEPART_ATTRIB.FieldByName('PepSpray').AsBoolean ;
                chkEBT.Checked := POS_UPDATE_DEPART_ATTRIB.FieldByName('EBT').AsBoolean ;
                chkSigis.Checked := POS_UPDATE_DEPART_ATTRIB.FieldByName('Sigis').AsBoolean ;
                chkOTCCard.Checked := POS_UPDATE_DEPART_ATTRIB.FieldByName('OTCCard').AsBoolean ;
                chkPseudo.Checked := POS_UPDATE_DEPART_ATTRIB.FieldByName('Pseudo').AsBoolean ;
                chkSkipPriceUpd.Checked := POS_UPDATE_DEPART_ATTRIB.FieldByName('SkipPriceUpd').AsBoolean ;
                chkSkipPriceDistUpd.Checked := POS_UPDATE_DEPART_ATTRIB.FieldByName('SkipPriceDistUpd').AsBoolean ;
                chkTaxable.Checked := POS_UPDATE_DEPART_ATTRIB.FieldByName('Taxable').AsBoolean ;
                txtGM.Text := POS_UPDATE_DEPART_ATTRIB.FieldByName('gm1').AsString ;
                txtage := POS_UPDATE_DEPART_ATTRIB.FieldByName('AskId').AsString;
                cboAge.text := iif(txtage='0','NONE',txtage) ;
            end;
            POS_UPDATE_DEPART_ATTRIB.Close;

    end;

end;

procedure TfrmDepartmentAttributes.btnProcessClick(Sender: TObject);
begin
    if (chkUpdateAttrib.Checked=true) then
    begin
        With DMMidas do
        begin
                  POS_UPDATE_DEPART_ATTRIB.Unprepare;
                  POS_UPDATE_DEPART_ATTRIB.Params.Clear;
                  POS_UPDATE_DEPART_ATTRIB.Params.Add('@pOPC',toInteger).AsInteger := 1;
                  POS_UPDATE_DEPART_ATTRIB.Params.Add('@pType', toString).AsString := Ftype;
                  POS_UPDATE_DEPART_ATTRIB.Params.Add('@DEPARTAMENTO', toString).AsString := FParametro;
                  POS_UPDATE_DEPART_ATTRIB.Params.Add('@ALWDISC', toInteger).AsBoolean := chkAlwDisc.Checked;
                  POS_UPDATE_DEPART_ATTRIB.Params.Add('@ROUND', toInteger).AsBoolean := chkROUND.Checked;
                  POS_UPDATE_DEPART_ATTRIB.Params.Add('@NLINE', toInteger).AsBoolean := chkNLINE.Checked;
                  POS_UPDATE_DEPART_ATTRIB.Params.Add('@NonRefund', toInteger).AsBoolean := chkNonRefund.Checked;
                  POS_UPDATE_DEPART_ATTRIB.Params.Add('@PepSpray', toInteger).AsBoolean := chkPepSpray.Checked;
                  POS_UPDATE_DEPART_ATTRIB.Params.Add('@EBT', toInteger).AsBoolean := chkEBT.Checked;
                  POS_UPDATE_DEPART_ATTRIB.Params.Add('@Sigis', toInteger).AsBoolean := chkSigis.Checked;
                  POS_UPDATE_DEPART_ATTRIB.Params.Add('@OTCCard', toInteger).AsBoolean := chkOTCCard.Checked;
                  POS_UPDATE_DEPART_ATTRIB.Params.Add('@Pseudo', toInteger).AsBoolean := chkPseudo.Checked;
                  POS_UPDATE_DEPART_ATTRIB.Params.Add('@SkipPriceUpd', toInteger).AsBoolean := chkSkipPriceUpd.Checked;
                  POS_UPDATE_DEPART_ATTRIB.Params.Add('@SkipPriceDistUpd', toInteger).AsBoolean := chkSkipPriceDistUpd.Checked;
                  POS_UPDATE_DEPART_ATTRIB.Params.Add('@Taxable', toInteger).AsBoolean := chkTaxable.Checked;
                  POS_UPDATE_DEPART_ATTRIB.Params.Add('@AskId', toInteger).AsInteger := iif(cboage.Text='NONE',0,cboage.Text);

                  POS_UPDATE_DEPART_ATTRIB.Prepare;
                  POS_UPDATE_DEPART_ATTRIB.ExecProc;
                  POS_UPDATE_DEPART_ATTRIB.Close;
        end;
    end;
    if (chkUpdateGM.Checked=true) then
    begin
        if StrToFloat(txtGM.Text)>0 then
        begin
            With DMMidas do
            begin
                      POS_UPDATE_DEPART_ATTRIB.Unprepare;
                      POS_UPDATE_DEPART_ATTRIB.Params.Clear;
                      POS_UPDATE_DEPART_ATTRIB.Params.Add('@pOPC',toInteger).AsInteger := 2;
                      POS_UPDATE_DEPART_ATTRIB.Params.Add('@pType', toString).AsString := Ftype;
                      POS_UPDATE_DEPART_ATTRIB.Params.Add('@DEPARTAMENTO', toString).AsString := FParametro;
                      POS_UPDATE_DEPART_ATTRIB.Params.Add('@txtgm', toFloat).AsFloat:= StrToFloat(txtGM.Text);
                      POS_UPDATE_DEPART_ATTRIB.Params.Add('@userini', toString).AsString := '';

                      POS_UPDATE_DEPART_ATTRIB.Prepare;
                      POS_UPDATE_DEPART_ATTRIB.ExecProc;
                      POS_UPDATE_DEPART_ATTRIB.Close;
            end;
          end;
    end;
    if (chkUpdateAttrib.Checked or (chkUpdateGM.Checked and (StrToFloat(txtGM.Text)>0))) then
      Application.MessageBox('Done!',  '', MB_OK);

end;

end.
