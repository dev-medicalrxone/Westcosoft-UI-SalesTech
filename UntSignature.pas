unit UntSignature;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, ComCtrls, Db, Menus, ImgList, Mask, DBCtrls,
  StdCtrls, Buttons, ToolWin,  OleCtrls,
  SIGPLUSLib_TLB;


type
  TFrmSignature = class(TForm)
    Prescriptions: TImage;
    CheckBoxes: TImage;
    Next_Clear: TImage;
    Image3: TImage;
    Image1: TImage;
    SigPlus1: TSigPlus;
    Image2: TImage;
    Panel2: TPanel;
    BtnCancel: TButton;
    BtnStart: TButton;
    BtnOK: TButton;
    Label1: TLabel;
    Image4: TImage;
    procedure SigPlus1PenDown(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnStartClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ShowRxInPad;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    DatabasePointer: Integer;
    CapturePatSignature: Boolean;
    //SIG_LINK: Integer;
    { Public declarations }
  end;

var
  FrmSignature: TFrmSignature;
  OTCNUMBER: Integer;

implementation

uses UntDMMidas, UntMain, UntID, Math, UntSignatureCapture, UntCommonPOS,
  UntPickup;

{$R *.dfm}

procedure TFrmSignature.SigPlus1PenDown(Sender: TObject);
Var
  UserSinging, sqlstr, myStringVar: String;
  Counter: Integer;
  I: TObject;

begin
begin
 UserSinging := '';
 if (SigPlus1.KeyPadQueryHotSpot(0) > 0) then begin
   SigPlus1.ClearSigWindow(1);
   SigPlus1.ClearTablet;
   SigPlus1.LCDWriteBitmap( 0, 3, 12, 65, 14, 13, Image2.Picture.Bitmap.Handle );
 end;
 if (SigPlus1.KeyPadQueryHotSpot(1) > 0) then begin
   SigPlus1.ClearSigWindow(1);
   SigPlus1.ClearTablet;
   SigPlus1.LCDWriteBitmap( 0, 3, 12, 88, 14, 13, Image2.Picture.Bitmap.Handle );
 end;
 if ((SigPlus1.KeyPadQueryHotSpot(2) > 0)) then begin  //or not stop to show rx
   SigPlus1.ClearTablet;
   SigPlus1.ClearSigWindow(1);

   SigPlus1.KeyPadClearHotSpotList; //clears current hotspots
   //add next page hot spots
   SigPlus1.KeyPadAddHotSpot (4, 1, 17, 53, 60, 15);
   SigPlus1.KeyPadAddHotSpot (5, 1, 106, 51, 36, 16);
   SigPlus1.KeyPadAddHotSpot (6, 1, 187, 52, 30, 15);

   SigPlus1.LCDRefresh( 1, 70, 110, 30, 15 );
   SigPlus1.LCDRefresh( 2, 0, 0, 240, 128 );
   SigPlus1.LCDSetWindow (0, 74, 240, 54); //Permits only the section
   SigPlus1.SetSigWindow (1, 0, 68, 240, 60);
   //SigPlus1.LCDWriteBitmap( 1, 2, 0, 0, 240, 128, Image3.Picture.Bitmap.Handle );
 end;
 if (SigPlus1.KeyPadQueryHotSpot(3) > 0) or (SigPlus1.KeyPadQueryHotSpot(4) > 0)  then begin   //button Clear  or (DMMidas.CDSSetupPOS_SHOW_RX_SIGNATURE.Value = True)
   SigPlus1.ClearTablet;
   SigPlus1.ClearSigWindow(1);

   SigPlus1.KeyPadClearHotSpotList; //clear current page 2 hot spots

   //Add page 1 hotspots
   SigPlus1.KeyPadAddHotSpot (0, 1, 11, 55, 15, 25); //set up hot spots for page 1
   SigPlus1.KeyPadAddHotSpot (1, 1, 11, 75, 15, 25);
   SigPlus1.KeyPadAddHotSpot (2, 1, 70, 95, 30, 30);
   SigPlus1.KeyPadAddHotSpot (3, 1, 132, 95, 40, 30);

   SigPlus1.LCDRefresh( 1, 18, 53, 58, 15 );
   SigPlus1.LCDRefresh( 0, 0, 0, 240, 128 );
   SigPlus1.LCDWriteBitmap( 0, 2, 70, 110, 100, 10, Next_Clear.Picture.Bitmap.Handle );
   SigPlus1.LCDSetWindow( 0, 0, 0, 0 );
   ShowRxInPad;

 end;


 if (SigPlus1.KeyPadQueryHotSpot(5) > 0) then begin
   SigPlus1.ClearTablet;
   SigPlus1.ClearSigWindow(1);
   SigPlus1.LCDRefresh (1, 106, 52, 40, 16);
   SigPlus1.LCDRefresh (2, 0, 0, 240, 128);
 end;
 if (SigPlus1.KeyPadQueryHotSpot(6) > 0) then begin

    SigPlus1.ClearSigWindow(1);
    SigPlus1.LCDRefresh (1, 186, 53, 35, 15);
    Sleep (500);
    SigPlus1.LCDRefresh (0, 0, 0, 240, 128);

    if( SigPlus1.NumberOfTabletPoints > 0) then
    begin
       SigPlus1.TabletState:= 0;
       SigPlus1.JustifyMode:= 5;



        SigPlus1.SigCompressionMode:=1;
        SigPlus1.AutoKeyStart;
        SigPlus1.AutoKeyData := IntToStr(CommonPOS.SignatureLink);//'my sample data used for encryption';
        SigPlus1.AutoKeyFinish;
        SigPlus1.EncryptionMode:=2;
        myStringVar := SigPlus1.SigString;
        if CommonPOS.Save_eSignature(Trim(myStringVar),Copy(CommonPOS.Capture_Signature_User,1,3),IntToStr(FrmID.RadioGroup1.ItemIndex),
                               Trim(Copy(FrmID.EditPickedupBy.Text,1,45)), Trim(Copy(FrmID.EditID.Text,1,10)),
                               dmmidas.CDSClientesNUMEROCLIENTE.Value) = True then
        begin
          //the SIG file or SigString stores a biometric signature
          //images made from signatures do not contain this data\
          //nor can they be encrypted using the AutoKey methods/property

          //however, for display. they can be useful
          {SigPlus1.TabletState:=0; //turn off tablet
          SigPlus1.ImageXSize:=500; //image width in px
          SigPlus1.ImageYSize:=150; //image height in px
          SigPlus1.ImageFileFormat:=0; //0=bmp, 4=jpg, 6=tif
          SigPlus1.ImagePenWidth:=7; //ink width in px
          SigPlus1.JustifyMode:=5; //zoom signature to proportionally fit width/height
          SigPlus1.WriteImageFile('C:\mysigimage.bmp'); //use proper file extension!
          //ShowMessage(IntToStr(SCANED_RX_LINK));}
          {try
            With DMMidas do
            begin
              try
                CommonPOS.DisconnectFromDatabase;
                //ShowMessage('Preparing to sign!');
                if UserRights.Pesc_Sig_isIdentity = False then
                begin
                  With INSERT_ESIGNATURE do
                  begin
                    Prepare;
                    ParamByName('@ENCRIPPTED_SIGNATURE').Value := Trim(myStringVar);
                    ParamByName('@SIGNATURE_DATE').Value := Date;
                    ParamByName('@SIGNATURE_USER').Value := Copy(CommonPOS.Capture_Signature_User,1,3);
                    ParamByName('@SIGNATURE_LINK').Value := CommonPOS.SignatureLink;// SIG_LINK;
                    ParamByName('@PICKEDUP_BY_RELATION').Value := IntToStr(FrmID.RadioGroup1.ItemIndex);
                    ParamByName('@PICKEDUP_BY').Value := Trim(Copy(FrmID.EditPickedupBy.Text,1,45));
                    ParamByName('@PICKEDUP_ID').Value := Trim(Copy(FrmID.EditID.Text,1,10));
                    ParamByName('@NUMEROCLIENTE').Value := CDSClientesNUMEROCLIENTE.Value;
                    ParamByName('@SAVE_PAT_SIGNATURE').Value := 0;// CapturePatSignature;
                    ParamByName('@INSTANCIA').Value := FrmMain.Instancia;
                    ExecProc;
                  end;
                end
                else
                begin
                  With INSERT_ESIGNATURE_AI do
                  begin
                    Prepare;
                    ParamByName('@ENCRIPPTED_SIGNATURE').Value := Trim(myStringVar);
                    ParamByName('@SIGNATURE_DATE').Value := Date;
                    ParamByName('@SIGNATURE_USER').Value := Copy(CommonPOS.Capture_Signature_User,1,3);
                    ParamByName('@PICKEDUP_BY_RELATION').Value := IntToStr(FrmID.RadioGroup1.ItemIndex);
                    ParamByName('@PICKEDUP_BY').Value := Trim(Copy(FrmID.EditPickedupBy.Text,1,45));
                    ParamByName('@PICKEDUP_ID').Value := Trim(Copy(FrmID.EditID.Text,1,10));
                    ParamByName('@NUMEROCLIENTE').Value := CDSClientesNUMEROCLIENTE.Value;
                    ParamByName('@SAVE_PAT_SIGNATURE').Value := 0;// CapturePatSignature;
                    ParamByName('@INSTANCIA').Value := FrmMain.Instancia;
                    ParamByName('@SIGNATURE_LINK2').Value := CommonPOS.SignatureLink;// SIG_LINK;
                    ExecProc;
                  end;
                end;
                sleep(1000);
                Application.ProcessMessages;
                //ShowMessage('Signed!');
              finally
                if NOT Assigned(FrmPickup) then
                begin
                  //ShowMessage('Adding signed prescriptions to POS!');
                  CDSPickUp.First;
                  while Not CDSPickUp.eof do
                  begin
                    CommonPOS.FindRx(CDSPickUpOTCNUMBER.AsString, False, False, 'OTCNUMBER', False);
                    CDSPickUp.Next;
                  end;
                end;
              end;
              if CDSPickUp.Active = True then CDSPickUp.Refresh;
            end;
          except
            begin
              ShowMessage('Could not save the image!');
              With DMMidas do
              begin
                CDSPickUp.First;
                With CDSPickUp do
                begin
                  CommonPOS.InsertLog('Electronic signature failure!', 'M', '',
                    Copy(CommonPOS.User,1,3), '',
                    CDSPickUpNUMERORECETA.Value, CDSPickUpOTCNUMBER.Value, 0, dmmidas.CDSClientesNUMEROCLIENTE.Value,
                    0, 0, 0, 0, 'Error, unabled to capture electronic signature.' ,false,false);
                  CDSPickUp.Next;
                end;
              end;
            end;
          end;
          }

         ///////////////////////////////////////////////////////////////////
         //extract the signature as a long ascii hex string
         //see the delphi basic example for compression.encryption options
         //strSignature = SigPlus1.SigString; //assign signature to string var
         //////////////////////////////////////////////////////////////////
         //FrmSignature.Close;
         SigPlus1.LCDSetFont (18, 8, 1, 0, 0, 0, 'Arial');
         SigPlus1.LCDWriteString (0, 2, 23, 49, 0, 0, 0, 'Gracias por firmar!');
         //SigPlus1.LCDWriteBitmap (0, 2, 58, 90, 105, 30, topLogo.Picture.Handle);
         Sleep (2000);
         SigPlus1.ClearTablet;
         ////SigPlus1.LCDRefresh 1, 186, 53, 35, 15
         SigPlus1.TabletState:= 1;
         SigPlus1.LCDRefresh (0, 0, 0, 240, 128); //Clears entire LCD screen
         SigPlus1.LCDCaptureMode:= 1; //Resets regular auto-clear inking
         SigPlus1.TabletState:= 0;
         BtnOK.Click;
         system.Exit;
         //Self.Close;
        end;
    end;
    if( SigPlus1.NumberOfTabletPoints = 0) then begin //no signature!
       SigPlus1.LCDSetFont (16, 9, 1, 0, 0, 0, 'Arial');
       SigPlus1.LCDWriteString (0, 2, 65, 38, 0, 0, 0, 'Please Sign');
       SigPlus1.LCDWriteString (0, 2, 40, 63, 0, 0, 0, 'Before Continuing...');
       Sleep (2500);
       SigPlus1.ClearTablet;
       SigPlus1.LCDRefresh (2, 0, 0, 240, 128);
    end;

    //Form1.FormShow(Self);
 end;
 SigPlus1.ClearSigWindow(1);
 SigPlus1.SetEventEnableMask(1);
end;

end;

procedure TFrmSignature.FormShow(Sender: TObject);
begin
 //ShowMessage(IntToStr(FrmMain.Instancia));
 //ShowMessage('Signature Link: ' +IntToStr(CommonPOS.SignatureLink ));
 if (DMMidas.CDSClientesSIGNATURE_RX_LINK.IsNull) or
 (DMMidas.CDSClientesSIGNATURE_RX_LINK.Value = 0) then
  Label1.Visible := True;
 SigPlus1.LCDSetTabletMap( 0, 240, 128, 200, 250, 2000, 1300 );
 SigPlus1.TabletXStart := 500;
 SigPlus1.TabletXStop := 2650;
 SigPlus1.TabletYStart := 400;
 SigPlus1.TabletYStop := 2100;
 SigPlus1.TabletLogicalXSize := 2150;
 SigPlus1.TabletLogicalYSize := 1700;
 SigPlus1.LCDSetWindow( 0, 0, 0, 0 );
 SigPlus1.LCDRefresh( 0, 0, 0, 240, 128 );
 SigPlus1.LCDCaptureMode := 2;
 BtnStart.Click;
end;

procedure TFrmSignature.BtnStartClick(Sender: TObject);
Var
  Counter: Integer;
begin
 //ShowMessage('signature Link: '+ IntToStr(CommonPOS.SignatureLink));
 SigPlus1.TabletState := 1;
 SigPlus1.ClearTablet;

 SigPlus1.KeyPadAddHotSpot( 0, 1, 11, 55, 15, 25 ); //55 ypos
 SigPlus1.KeyPadAddHotSpot( 1, 1, 11, 75, 15, 25 );
 SigPlus1.KeyPadAddHotSpot( 2, 1, 70, 95, 30, 30 );
 SigPlus1.KeyPadAddHotSpot( 3, 1, 100, 95, 40, 30 ); //xpos 132

 //if DMMidas.CDSSetupPOS_SHOW_RX_SIGNATURE.Value = False then
 begin
  if (DMMidas.CDSClientesSIGNATURE_RX_LINK.Value > 0) then
    SigPlus1.LCDWriteBitmap( 1, 2, 0, 0, 240, 128, Image4.Picture.Bitmap.Handle )
  else
    SigPlus1.LCDWriteBitmap( 1, 2, 0, 0, 240, 128, Image3.Picture.Bitmap.Handle )
  //SigPlus1.KeyPadQueryHotSpot(2);
 // SigPlus1PenDown(nil);
 end;

 //if DMMidas.CDSSetupPOS_SHOW_RX_SIGNATURE.Value = True then
 begin
   SigPlus1.LCDWriteBitmap( 0, 2, 70, 110, 100, 10, Next_Clear.Picture.Bitmap.Handle );    //70
   ShowRxInPad;
 end;

 SigPlus1.SetEventEnableMask(1);
end;

procedure TFrmSignature.ShowRxInPad;
Var
  DatabasePointer, Counter: Integer;
begin
   Counter := 1;
   with DMMidas do
   begin
     if CDSPickUp.Eof then CDSPickUp.First;
     DatabasePointer := 1;
     SigPlus1.LCDSetFont (13, 7, 1, 0, 0, 0, 'Arial');
     while DatabasePointer < 9 do
     begin
       if not CDSPickUp.EOF then
       begin
         if Trim(CDSPickUpNumeroAutorizacion.Value) > '' then
           SigPlus1.LCDWriteString (0, 3, 1, Counter, 5, 50, 5, Copy(CDSPickUpMEDICAMENTO.AsString,1, 20) + ' ' + Format('%m', [CDSPickUpDeducible.Value]))   //50
         else
           SigPlus1.LCDWriteString (0, 3, 1, Counter, 5, 50, 5, Copy(CDSPickUpMEDICAMENTO.AsString,1, 20) + ' ' + Format('%m', [CDSPickUpPrecioVenta.Value]));
       end;
       Counter := Counter + 13;
       DatabasePointer := DatabasePointer + 1;
       CDSPickUp.Next;
     end;
     DatabasePointer := 1;
   end;
end;

procedure TFrmSignature.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SigPlus1.TabletState:=1;
  SigPlus1.LCDCaptureMode:=1;
  SigPlus1.LCDRefresh( 0, 0, 0, 240, 128 );
  SigPlus1.TabletState := 0;
  FrmeSignatureCapture.BtnOk.Enabled := True;
  FrmeSignatureCapture.BtnCancel.Enabled := False;
end;

procedure TFrmSignature.FormCreate(Sender: TObject);
begin
  with DMMidas do
  begin
    //if UserRights.Pesc_Sig_isIdentity = True then
    begin
      CommonPOS.DisconnectFromDatabase;
      if CommonPOS.standalone = true then
        INSERT_ESIGNATURE_AI.Connection := FDConnection2
      else
        INSERT_ESIGNATURE_AI.Connection := FDConnection1;
      if CommonPOS.productSignature <> True then
      begin
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
          FrmSignature.Caption := IntToStr(CommonPOS.SignatureLink);
        end;
      end;
    end;
  end;
end;

end.
