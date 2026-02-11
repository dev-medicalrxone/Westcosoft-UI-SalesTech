unit untWebReceipt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCtrls, Vcl.OleCtrls, SHDocVw, ActiveX, Vcl.Printers,
  Vcl.StdCtrls;

type
  TFrmWebReceipt = class(TForm)
    WebBrowser1: TWebBrowser;
    Button1: TButton;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure WebBrowser1DocumentComplete(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    procedure SelectPrinter(PrnText: String);
    var
      print: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmWebReceipt: TFrmWebReceipt;

implementation

{$R *.dfm}

uses untIpe, UntCommonPOS;

procedure TFrmWebReceipt.Button1Click(Sender: TObject);
var
  r:TRect;
  sh,ph:HDC;
  ht: integer;

begin
  SelectPrinter(CommonPOS.ReceiptPrinter);
  OleInitialize(nil);
  //WebBrowser1.Navigate('file:///F:/Wescom/Salestec/Source/Win32/Debug/custReceipt.html');
  while WebBrowser1.ReadyState<>READYSTATE_COMPLETE do Application.HandleMessage;
  //Printer.PrinterIndex:=//set selected printer here
  Printer.BeginDoc;
  try
    Printer.Canvas.Lock;
    try
      sh:=GetDC(0);
      ph:=Printer.Canvas.Handle;

      //TODO: make rect a bit smaller for a page margin
      //TODO: get page size from printer settings, assume A4 here (210x297mm)
      r.Left:=0;
      r.Top:=0;
      if CommonPOS.receiptType = '1' then
      begin
        r.Right:=1060 * GetDeviceCaps(sh,LOGPIXELSX) div 334;
        r.Bottom:=2900 * GetDeviceCaps(sh,LOGPIXELSY) div 334;
      end
      else if CommonPOS.receiptType = '0' then
      begin
        r.Right:=1060 * GetDeviceCaps(sh,LOGPIXELSX) div 334;
        r.Bottom:=3200 * GetDeviceCaps(sh,LOGPIXELSY) div 334;
      end
      else if CommonPOS.receiptType = 'settle' then
      begin
        r.Right:=1060 * GetDeviceCaps(sh,LOGPIXELSX) div 334;
        r.Bottom:=2900 * GetDeviceCaps(sh,LOGPIXELSY) div 334;
      end
      else if CommonPOS.receiptType = 'ebt' then
      begin
        r.Right:=1060 * GetDeviceCaps(sh,LOGPIXELSX) div 334;
        r.Bottom:=3500 * GetDeviceCaps(sh,LOGPIXELSY) div 334;
      end;
      CommonPOS.receiptType := '';
      WebBrowser1.BoundsRect:=r;

      SetMapMode(ph,MM_ISOTROPIC);
      SetWindowExtEx(ph,r.Right,r.Bottom,nil);
      SetViewportExtEx(ph,r.Right,r.Bottom,nil);
      r.Right:=GetDeviceCaps(ph,HORZRES)-1;
      r.Bottom:=GetDeviceCaps(ph,VERTRES)-1;

      (WebBrowser1.ControlInterface as IViewObject).Draw(
        DVASPECT_CONTENT,
        1,
        nil,nil,0,ph,@r,nil,nil,0);
    finally
      Printer.Canvas.Unlock;
    end;
    Printer.EndDoc;
  except
    Printer.Abort;
    raise;
  end;
  print := False;
end;

procedure TFrmWebReceipt.FormActivate(Sender: TObject);
begin
{  ipe.globalIndicator := Nil;
  if self.Tag = 0 then
  begin
    ipe.settle;
  end;     }
  print := True;
end;

procedure TFrmWebReceipt.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then                   { if it's an enter key }
  Begin
    Self.Close;
  END;
end;

procedure TFrmWebReceipt.SelectPrinter(PrnText: String);
Var
  I: Integer;
Begin
  For I := 0 To Printer.Printers.Count - 1 do
  Begin
    If Pos (PrnText,Printer.Printers[I]) <> 0 then
    Begin
      Printer.PrinterIndex := I;
    end;
  end;
end;

procedure TFrmWebReceipt.WebBrowser1DocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
  if print = True then
    Button1Click(nil)
end;

end.
