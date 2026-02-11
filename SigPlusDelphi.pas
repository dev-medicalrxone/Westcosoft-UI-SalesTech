//a complete list of the properties/events/methods available through SigPlus
//is available online at http://www.topazsystems.com/Software/sigplusdocs.zip
//Review either the SigPlus DOC or PDF file
//Topaz tech support: support@topazsystems.com

unit SigPlusDelphi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleCtrls, SIGPLUSLib_TLB;

type
  TFrmeSignatureCapture1x5 = class(TForm)
    SigPlus1: TSigPlus;
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Button3: TButton;
    Button4: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmeSignatureCapture1x5: TFrmeSignatureCapture1x5;

implementation

{$R *.dfm}

uses UntDMMidas;

procedure TFrmeSignatureCapture1x5.Button1Click(Sender: TObject);
begin
SigPlus1.SigCompressionMode:=0;
SigPlus1.EncryptionMode:=0;
SigPlus1.ClearTablet;
SigPlus1.TabletState:= 1;
end;

procedure TFrmeSignatureCapture1x5.Button2Click(Sender: TObject);
begin
SigPlus1.ClearTablet
end;

procedure TFrmeSignatureCapture1x5.Button3Click(Sender: TObject);
begin

If SigPlus1.NumberOfTabletPoints > 20 then begin

   //turn off tablet!
   SigPlus1.TabletState:=0;

   If (RadioButton1.Checked) then begin
      SigPlus1.SigCompressionMode:=0
   end;

   If (RadioButton2.Checked) then begin
      SigPlus1.SigCompressionMode:=1
   end;

   If (RadioButton3.Checked) then begin
      SigPlus1.SigCompressionMode:=2
   end;

   //The following code encrypts the signature/////
   //this is optional, but recommended for
   //binding, legal esignatures
   //the data passed to AutoKeyData should
   //be appropriate to your application
   //contact Topaz Systems Tech Support for
   //further clarification, as necessary
   SigPlus1.AutoKeyStart;
   SigPlus1.AutoKeyData:= 'my sample data used for encryption';
   SigPlus1.AutoKeyFinish;
   SigPlus1.EncryptionMode:=2;
   ///////////////////////////////////////////////


   SigPlus1.ExportSigFile('C:\sigplusdelphi.sig');
   //can also return signature as ASCII hex string instead
   //myStringVar = SigPlus1.SigString;

end;

If SigPlus1.NumberOfTabletPoints < 20 then begin
     MessageDlg('Please sign before creating a SIG file', mtInformation, [mbOK], 0);
end;

SigPlus1.ClearTablet; //clear signature out, if there

end;

procedure TFrmeSignatureCapture1x5.Button4Click(Sender: TObject);
begin
//reset EncryptionMode for bringingback signature
SigPlus1.EncryptionMode:=0;
If (RadioButton1.Checked) then begin
   SigPlus1.SigCompressionMode:=0
end;

If (RadioButton2.Checked) then begin
   SigPlus1.SigCompressionMode:=1
end;

If (RadioButton3.Checked) then begin
   SigPlus1.SigCompressionMode:=2
end;
      
   //The following code decrypts the signature
   //this is optional, but recommended for
   //binding, legal esignatures
   //be sure to match this to the original code
   //used at capture time!!
   SigPlus1.AutoKeyStart;
   SigPlus1.AutoKeyData:= 'my sample data used for encryption';
   SigPlus1.AutoKeyFinish;
   SigPlus1.EncryptionMode:=2;
   SigPlus1.ImportSigFile('C:\sigplusdelphi.sig');
   //can also reset signature as ASCII hex string instead
   //SigPlus1.SigString = myStringVar;

end;

procedure TFrmeSignatureCapture1x5.Button5Click(Sender: TObject);
begin
//the SIG file or SigString stores a biometric signature
//images made from signatures do not contain this data\
//nor can they be encrypted using the AutoKey methods/property

//however, for display. they can be useful
SigPlus1.TabletState:=0; //turn off tablet
SigPlus1.ImageXSize:=500; //image width in px
SigPlus1.ImageYSize:=150; //image height in px
SigPlus1.ImageFileFormat:=4; //0=bmp, 4=jpg, 6=tif
SigPlus1.ImagePenWidth:=7; //ink width in px
SigPlus1.JustifyMode:=5; //zoom signature to proportionally fit width/height
SigPlus1.WriteImageFile('C:\mysigimage.jpg'); //use proper file extension!
end;

procedure TFrmeSignatureCapture1x5.Button6Click(Sender: TObject);
begin
SigPlus1.TabletState:=0;
end;

end.
