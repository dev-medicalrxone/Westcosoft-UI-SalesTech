unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ImgList, Buttons, Mask, DBCtrls, Keyboard, ExtCtrls, Grids,
  DBGrids, StdCtrls;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    LabelHeading: TLabel;
    EditSearchProd: TEdit;
    Button95: TButton;
    StatusBar2: TStatusBar;
    EditProd: TEdit;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    LabelRecibido: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    LabelCambio: TLabel;
    Bevel3: TBevel;
    Label2: TLabel;
    TouchKeyboard1: TTouchKeyboard;
    EditSubTotal: TEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    cxDBCurrencyEdit1: TDBEdit;
    cxPageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Button34: TSpeedButton;
    Button33: TSpeedButton;
    Button32: TSpeedButton;
    Button31: TSpeedButton;
    Button30: TSpeedButton;
    Button29: TSpeedButton;
    Button28: TSpeedButton;
    Button27: TSpeedButton;
    Button26: TSpeedButton;
    Button25: TSpeedButton;
    Button24: TSpeedButton;
    Button23: TSpeedButton;
    Button22: TSpeedButton;
    Button21: TSpeedButton;
    TabSheet3: TTabSheet;
    Button35: TSpeedButton;
    Button50: TSpeedButton;
    Button65: TSpeedButton;
    Button80: TSpeedButton;
    Button36: TSpeedButton;
    Button51: TSpeedButton;
    Button66: TSpeedButton;
    Button81: TSpeedButton;
    Button37: TSpeedButton;
    Button52: TSpeedButton;
    Button67: TSpeedButton;
    Button82: TSpeedButton;
    Button38: TSpeedButton;
    Button53: TSpeedButton;
    Button68: TSpeedButton;
    Button83: TSpeedButton;
    Button39: TSpeedButton;
    Button54: TSpeedButton;
    Button69: TSpeedButton;
    Button84: TSpeedButton;
    Button40: TSpeedButton;
    Button55: TSpeedButton;
    Button70: TSpeedButton;
    Button85: TSpeedButton;
    Button41: TSpeedButton;
    Button56: TSpeedButton;
    Button71: TSpeedButton;
    Button86: TSpeedButton;
    Button42: TSpeedButton;
    Button57: TSpeedButton;
    Button72: TSpeedButton;
    Button87: TSpeedButton;
    Button43: TSpeedButton;
    Button58: TSpeedButton;
    Button73: TSpeedButton;
    Button88: TSpeedButton;
    Button44: TSpeedButton;
    Button59: TSpeedButton;
    Button74: TSpeedButton;
    Button89: TSpeedButton;
    Button45: TSpeedButton;
    Button60: TSpeedButton;
    Button75: TSpeedButton;
    Button90: TSpeedButton;
    Button46: TSpeedButton;
    Button61: TSpeedButton;
    Button76: TSpeedButton;
    Button91: TSpeedButton;
    Button47: TSpeedButton;
    Button62: TSpeedButton;
    Button77: TSpeedButton;
    Button92: TSpeedButton;
    Button48: TSpeedButton;
    Button63: TSpeedButton;
    Button78: TSpeedButton;
    Button93: TSpeedButton;
    Button49: TSpeedButton;
    Button64: TSpeedButton;
    Button79: TSpeedButton;
    Button94: TSpeedButton;
    ImageListBotones: TImageList;
    ImageList1: TImageList;
    ImageList2: TImageList;
    ListView1: TListView;
    BtnCash: TButton;
    RzBitBtn16: TButton;
    cxButton24: TButton;
    Button6: TSpeedButton;
    Button7: TSpeedButton;
    cxButton25: TButton;
    RzBitBtn7: TButton;
    BtnATH: TButton;
    BtnVisa: TButton;
    BtnAuspicio: TButton;
    cxButton26: TButton;
    Button8: TSpeedButton;
    Button9: TSpeedButton;
    cxButton27: TButton;
    cxButton31: TButton;
    BtnCheck: TButton;
    BtnCredit: TButton;
    RzBitBtn3: TButton;
    Button10: TSpeedButton;
    Button11: TSpeedButton;
    cxButton29: TButton;
    cxButton28: TButton;
    cxButton33: TButton;
    BtnTarjetaFam: TButton;
    BtnLayAway: TButton;
    cxButton34: TButton;
    cxButton2: TButton;
    Button12: TSpeedButton;
    Button13: TSpeedButton;
    cxButton3: TButton;
    cxButton35: TButton;
    BLimpiar: TButton;
    BBorrar: TButton;
    BPrecio1: TButton;
    cxButton4: TButton;
    Button14: TSpeedButton;
    Button15: TSpeedButton;
    cxButton5: TButton;
    cxButton18: TButton;
    cxButton6: TButton;
    BPrecio: TButton;
    Button96: TButton;
    Button1: TSpeedButton;
    Button16: TSpeedButton;
    Button17: TSpeedButton;
    Button2: TSpeedButton;
    cxButton1: TButton;
    cxButton16: TButton;
    RzBitBtn23: TButton;
    cxButton21: TButton;
    Button3: TSpeedButton;
    Button18: TSpeedButton;
    Button19: TSpeedButton;
    Button4: TSpeedButton;
    cxButton22: TButton;
    BQty: TButton;
    BSalir: TButton;
    cxButton23: TButton;
    Button5: TSpeedButton;
    Button20: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

end.
