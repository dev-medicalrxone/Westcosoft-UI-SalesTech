unit UntShowSignature;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, OleCtrls, SIGPLUSLib_TLB, Menus, Mask,
  DBCtrls;

type
  TFrmShowSignature = class(TForm)
    SigPlus1: TSigPlus;
    Panel1: TPanel;
    Panel2: TPanel;
    SigPlus2: TSigPlus;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Panel4: TPanel;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmShowSignature: TFrmShowSignature;

implementation

uses UntDMMidas, UntCommonPOS;

{$R *.dfm}

procedure TFrmShowSignature.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmShowSignature := Nil;
  Action := caFree;
end;

procedure TFrmShowSignature.FormShow(Sender: TObject);
Var
  MyStringVar: String;
begin
  SigPlus1.EncryptionMode:=2;
  SigPlus1.SigCompressionMode:=1;
  With DMMidas do
  begin
    QOTCFD.Connection := FDConnection2;
    CDSOTC.Close;
    CDSOTC.CommandText := 'select * from otc where SIGNATURE_LINK = '  + IntToStr(CommonPOS.SignatureLink);
    CDSPRESC_ESIGNATURE.Close;
    CDSPRESC_ESIGNATURE.CommandText := 'Select * from PRESCRIPTION_ESIGNATURE with (NOLOCK) WHERE SIGNATURE_LINK = ' + IntToStr(CommonPOS.SignatureLink) ;//CDSOTC2SIGNATURE_LINK.ASSTRING;
    CDSPRESC_ESIGNATURE.Open;
    if CDSPRESC_ESIGNATURE.RecordCount > 0 then
    begin
      SigPlus1.LCDSetFont (20, 10, 1, 0, 0, 0, 'Arial');
      MyStringVar := Trim(CDSPRESC_ESIGNATUREENCRIPPTED_SIGNATURE.AsString);
      SigPlus1.AutoKeyStart;
      try
        SigPlus1.AutoKeyData:= IntToStr(CDSPRESC_ESIGNATUREsIGNATURE_LINK.Value); // .FieldByName('SCANED_RX_LINK').Value);
      except
      end;
      SigPlus1.AutoKeyFinish;
      SigPlus1.EncryptionMode:=2;
      SigPlus1.SigString := myStringVar;
      SigPlus1.TabletState:=0; //turn off tablet
      SigPlus1.ImageXSize:=500; //image width in px
      SigPlus1.ImageYSize:=150; //image height in px
      SigPlus1.ImagePenWidth:=7; //ink width in px
      SigPlus1.JustifyMode:=5; //zoom signature to proportionally fit width/height
      SigPlus1.WriteImageFile(SigPlus1.SigString);
    end
    else
      ShowMessage('No patient signature captured!');
  end;
  With DMMidas do
  begin
    if Trim(CDSOTCPHARMACIST.Value) > '' then
    begin
      CDSPasswords.Close;
      CDSPasswords.CommandText := 'Select * from Passwords where Iniciales = ' + chr(39) + Trim(CDSOTCPHARMACIST.Value) + chr(39);
      CDSPasswords.Open;
      if CDSPasswordsUSERNAME.Value > '' then
      begin
          SigPlus1.LCDSetFont (20, 10, 1, 0, 0, 0, 'Arial');
          MyStringVar := Trim(CDSPasswordsSIGNATURE.AsString);
          SigPlus2.AutoKeyStart;
          try
            SigPlus2.AutoKeyData:= IntToStr(CDSPasswordsUSERNO.Value);// Images.FieldByName('SCANED_RX_LINK').Value);
          except
          end;
          SigPlus2.AutoKeyFinish;
          SigPlus2.EncryptionMode:=2;
          try
            if Trim(myStringVar) > '' then
            begin
              SigPlus2.SigString := myStringVar;
              SigPlus2.WriteImageFile(SigPlus1.SigString);
            end;
          finally
            //
          end;
          SigPlus2.TabletState:= 0;
          SigPlus2.JustifyMode:= 5;
      end
      else
        ShowMessage('No pharmacist signature captured!');
    end;
  end;
end;

procedure TFrmShowSignature.cxButton3Click(Sender: TObject);
begin
  SigPlus1.TabletState:=0; //turn off tablet
  SigPlus1.ImageXSize:=500; //image width in px
  SigPlus1.ImageYSize:=150; //image height in px
  SigPlus1.ImageFileFormat:=4; //0=bmp, 4=jpg, 6=tif
  SigPlus1.ImagePenWidth:=7; //ink width in px
  SigPlus1.JustifyMode:=5; //zoom signature to proportionally fit width/height
  SigPlus1.WriteImageFile('C:\mysigimage.jpg'); //use proper file extension!

  SigPlus2.TabletState:=0; //turn off tablet
  SigPlus2.ImageXSize:=500; //image width in px
  SigPlus2.ImageYSize:=150; //image height in px
  SigPlus2.ImageFileFormat:=4; //0=bmp, 4=jpg, 6=tif
  SigPlus2.ImagePenWidth:=7; //ink width in px
  SigPlus2.JustifyMode:=5; //zoom signature to proportionally fit width/height
  SigPlus2.WriteImageFile('C:\mysigimage2.jpg'); //use proper file extension!


  {With DM do
  begin
     FRptHistorial := TFRptHistorial.Create(Self);
     FRptHistorial.Tag := 1;
     With FRptHistorial do
     begin
       RptSignature.Print;
     end;
  end;
  }
end;

end.
