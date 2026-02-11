//a complete list of the properties/events/methods available through SigPlus
//is available online at http://www.topazsystems.com/Software/sigplusdocs.zip
//Review either the SigPlus DOC or PDF file
//Topaz tech support: support@topazsystems.com

unit untSignatureCapture1x5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleCtrls, SIGPLUSLib_TLB, Vcl.ExtCtrls, jpeg;

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
    btnDone: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmeSignatureCapture1x5: TFrmeSignatureCapture1x5;

implementation

{$R *.dfm}

uses UntDMMidas, UntCommonPOS, UntID, untMain, UntSignature, UntPickup,
  untClientId;

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
Var
  myStringVar: String;
  stream: TMemoryStream;
  Jpg: TJPEGImage;
begin
//If SigPlus1.NumberOfTabletPoints > 20 then begin

   //turn off tablet!
   SigPlus1.TabletState:=0;
   //The following code encrypts the signature/////
   //this is optional, but recommended for
   //binding, legal esignatures
   //the data passed to AutoKeyData should
   //be appropriate to your application
   //contact Topaz Systems Tech Support for
   //further clarification, as necessary
   SigPlus1.SigCompressionMode:=1;
   SigPlus1.AutoKeyStart;
   if Self.Tag = 0  then //for Prescription signature
     SigPlus1.AutoKeyData := IntToStr(CommonPOS.SignatureLink) //'my sample data used for encryption';
   else
     SigPlus1.AutoKeyData := IntToStr(DMMidas.CDSTransShowTRANSACTIONNUMBER.Value); //for product signature

   SigPlus1.AutoKeyFinish;
   SigPlus1.EncryptionMode:=2;
   myStringVar := SigPlus1.SigString;
   if Self.Tag = 0  then
   begin
     if CommonPOS.Save_eSignature(Trim(myStringVar),Copy(CommonPOS.Capture_Signature_User,1,3),IntToStr(FrmID.RadioGroup1.ItemIndex),
                               Trim(Copy(FrmID.EditPickedupBy.Text,1,45)), Trim(Copy(FrmID.EditID.Text,1,10)),
                               dmmidas.CDSClientesNUMEROCLIENTE.Value) = True then
   end
   else
   begin
     SigPlus1.TabletState:=0; //turn off tablet
     SigPlus1.ImageXSize:=500; //image width in px
     SigPlus1.ImageYSize:=150; //image height in px
     SigPlus1.ImageFileFormat:=4; //0=bmp, 4=jpg, 6=tif
     SigPlus1.ImagePenWidth:=12; //ink width in px
     SigPlus1.JustifyMode:=5; //zoom signature to proportionally fit width/height
     SigPlus1.WriteImageFile(extractfilepath(application.exename) + 'mysigimage.jpeg'); //use proper file extension!
     jpg := TJPEGImage.Create;
     stream := TMemoryStream.Create;
     try
       jpg.LoadFromFile(extractfilepath(application.exename) + 'mysigimage.jpeg');
       jpg.SaveToStream(stream);
     except
        ///
     end;
     CommonPOS.SaveProduct_Signature(stream ,Copy(CommonPOS.User,1,3),
                                     Trim(Copy(FrmClientId.editClientName.Text,1,45)), Trim(Copy(FrmClientId.EditClientId.Text,1,10)),
                                     FrmClientId.EditAddress.Text + ' ' + FrmClientId.EditCity.Text + ' ' + FrmClientId.EditState.Text +
                                     ' ' + FrmClientId.EditZipCode.Text, FrmClientId.RadioGroup1.Items[FrmClientId.RadioGroup1.ItemIndex],
                                     DMMidas.CDSTransShowTRANSACTIONNUMBER.Value);
   end;
   //Self.Close;
//end;

{If SigPlus1.NumberOfTabletPoints < 20 then begin
     MessageDlg('Please sign before creating a SIG file', mtInformation, [mbOK], 0);
end;
 }
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
   //SigPlus1.AutoKeyData:= 'my sample data used for encryption';
   SigPlus1.AutoKeyData:= IntToStr(CommonPOS.SignatureLink);
   SigPlus1.AutoKeyFinish;
   SigPlus1.EncryptionMode:=2;
   //SigPlus1.ImportSigFile('C:\sigplusdelphi.sig');
end;

procedure TFrmeSignatureCapture1x5.Button5Click(Sender: TObject);
var
  Stream: TMemoryStream;
  Jpg: TJPEGImage;
  Jpg2: TJPEGImage;
begin
  //the SIG file or SigString stores a biometric signature
  //images made from signatures do not contain this data\
  //nor can they be encrypted using the AutoKey methods/property

  //however, for display. they can be useful
  SigPlus1.TabletState:=0; //turn off tablet
  SigPlus1.ImageXSize:=500; //image width in px
  SigPlus1.ImageYSize:=150; //image height in px
  SigPlus1.ImageFileFormat:=4; //0=bmp, 4=jpg, 6=tif
  SigPlus1.ImagePenWidth:=12; //ink width in px
  SigPlus1.JustifyMode:=5; //zoom signature to proportionally fit width/height
  SigPlus1.WriteImageFile('F:\Wescom\Salestech\bin\mysigimage.jpg'); //use proper file extension!
  jpg := TJPEGImage.Create;
  stream := TMemoryStream.Create;
  try
    jpg.LoadFromFile('F:\Wescom\Salestech\bin\mysigimage.jpg');
    jpg.SaveToStream(stream);
  except
    ///
  end;
  CommonPOS.SaveProduct_Signature(stream ,Copy(CommonPOS.User,1,3),
                                     Trim(Copy(FrmClientId.editClientName.Text,1,45)), Trim(Copy(FrmClientId.EditClientId.Text,1,10)),
                                     FrmClientId.EditAddress.Text + ' ' + FrmClientId.EditCity.Text + ' ' + FrmClientId.EditState.Text +
                                     ' ' + FrmClientId.EditZipCode.Text, FrmClientId.RadioGroup1.Items[FrmClientId.RadioGroup1.ItemIndex],
                                     DMMidas.CDSTransShowTRANSACTIONNUMBER.Value);
  //Image1.Picture.LoadFromFile('F:\Wescom\Salestech\Bin\mysigimage.jpg');
end;

procedure TFrmeSignatureCapture1x5.Button6Click(Sender: TObject);
begin
SigPlus1.TabletState:=0;
end;

procedure TFrmeSignatureCapture1x5.FormCreate(Sender: TObject);
begin
  SigPlus1.SigCompressionMode:=0;
  SigPlus1.EncryptionMode:=0;
  SigPlus1.ClearTablet;
  SigPlus1.TabletState:= 1;
  With DMMidas do
  begin
    //if UserRights.Pesc_Sig_isIdentity = True then
    begin
      if CommonPOS.productSignature <> True then
      begin
        CommonPOS.DisconnectFromDatabase;
        if CommonPOS.standalone = true then
          INSERT_ESIGNATURE_AI.Connection := FDConnection2
        else
          INSERT_ESIGNATURE_AI.Connection := FDConnection1;
        With INSERT_ESIGNATURE_AI do
        begin
          Prepare;
          ParamByName('@ENCRIPPTED_SIGNATURE').Value := Trim('');
          ParamByName('@SIGNATURE_DATE').Value := Date;
          ParamByName('@SIGNATURE_USER').Value := CommonPOS.Capture_Signature_User;
          ParamByName('@PICKEDUP_BY_RELATION').Value := IntToStr(FrmID.RadioGroup1.ItemIndex);
          ParamByName('@PICKEDUP_BY').Value := Trim(Copy(FrmID.EditPickedupBy.Text,1,45));
          ParamByName('@PICKEDUP_ID').Value := Trim(Copy(FrmID.EditID.Text,1,10));
          ParamByName('@NUMEROCLIENTE').Value := CDSClientesNUMEROCLIENTE.Value;
          ParamByName('@SAVE_PAT_SIGNATURE').Value := 0;// CapturePatSignature;
          ParamByName('@INSTANCIA').Value := FrmMain.Instancia;
          ParamByName('@SIGNATURE_LINK2').Value := 0;
          ExecProc;
          CommonPOS.SignatureLink := ParamByName('@SIGNATURE_LINK').Value;
          Self.Caption := IntToStr(CommonPOS.SignatureLink);
        end;
      end;
    end;
  end;
end;

end.
