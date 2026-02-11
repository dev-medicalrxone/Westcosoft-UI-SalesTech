unit untReceiptView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TFrmReceiptView = class(TForm)
    RichEdit1: TRichEdit;
    Panel1: TPanel;
    btnOk: TButton;
    LblDummy: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReceiptView: TFrmReceiptView;

implementation

{$R *.dfm}

uses UntTabs;

procedure TFrmReceiptView.FormClose(Sender: TObject; var Action: TCloseAction);
Var
  aStream : tMemoryStream;
begin
  if Assigned(frmOpenTabs) then
  begin
    try
        aStream := TMemoryStream.Create;
        RichEdit1.Lines.SaveToStream (aStream);
        aStream.Position := 0;
        frmOpenTabs.RichEdit1.Plaintext := false;
        frmOpenTabs.RichEdit1.Lines.LoadFromStream (aStream);
    finally
        aStream.Free;
    end;
  end;
end;


end.
