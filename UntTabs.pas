unit UntTabs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, jpeg, pngimage, Data.DB,
  Vcl.ComCtrls, Vcl.Menus, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.DBCGrids, Vcl.ToolWin, ResourceLocalizer;

type
  TFrmOpenTabs = class(TForm)
    Panel1: TPanel;
    sbCatT5: TSpeedButton;
    sbCatT4: TSpeedButton;
    sbCatT3: TSpeedButton;
    sbCatT2: TSpeedButton;
    sbCatT1: TSpeedButton;
    pcMain: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    GridPanel2: TGridPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton26: TSpeedButton;
    SpeedButton27: TSpeedButton;
    SpeedButton28: TSpeedButton;
    SpeedButton29: TSpeedButton;
    SpeedButton30: TSpeedButton;
    SpeedButton31: TSpeedButton;
    SpeedButton32: TSpeedButton;
    SpeedButton33: TSpeedButton;
    SpeedButton34: TSpeedButton;
    SpeedButton35: TSpeedButton;
    SpeedButton36: TSpeedButton;
    SpeedButton37: TSpeedButton;
    SpeedButton38: TSpeedButton;
    SpeedButton40: TSpeedButton;
    SpeedButton39: TSpeedButton;
    MainMenu1: TMainMenu;
    ActivateButtons1: TMenuItem;
    ActivateButtons2: TMenuItem;
    Setbuttonsvisiblefalse1: TMenuItem;
    SpeedButton41: TSpeedButton;
    SpeedButton42: TSpeedButton;
    SpeedButton43: TSpeedButton;
    SpeedButton44: TSpeedButton;
    SpeedButton45: TSpeedButton;
    SpeedButton46: TSpeedButton;
    SpeedButton47: TSpeedButton;
    SpeedButton48: TSpeedButton;
    SpeedButton49: TSpeedButton;
    SpeedButton50: TSpeedButton;
    SpeedButton51: TSpeedButton;
    SpeedButton52: TSpeedButton;
    SpeedButton53: TSpeedButton;
    SpeedButton54: TSpeedButton;
    SpeedButton55: TSpeedButton;
    SpeedButton56: TSpeedButton;
    SpeedButton57: TSpeedButton;
    SpeedButton58: TSpeedButton;
    SpeedButton59: TSpeedButton;
    SpeedButton60: TSpeedButton;
    SpeedButton61: TSpeedButton;
    SpeedButton62: TSpeedButton;
    SpeedButton63: TSpeedButton;
    SpeedButton64: TSpeedButton;
    SpeedButton65: TSpeedButton;
    SpeedButton66: TSpeedButton;
    SpeedButton67: TSpeedButton;
    SpeedButton68: TSpeedButton;
    SpeedButton69: TSpeedButton;
    SpeedButton70: TSpeedButton;
    GridPanel1: TGridPanel;
    SpeedButton71: TSpeedButton;
    SpeedButton72: TSpeedButton;
    SpeedButton73: TSpeedButton;
    SpeedButton74: TSpeedButton;
    SpeedButton75: TSpeedButton;
    SpeedButton76: TSpeedButton;
    SpeedButton77: TSpeedButton;
    SpeedButton78: TSpeedButton;
    SpeedButton79: TSpeedButton;
    SpeedButton80: TSpeedButton;
    SpeedButton81: TSpeedButton;
    SpeedButton82: TSpeedButton;
    SpeedButton83: TSpeedButton;
    SpeedButton84: TSpeedButton;
    SpeedButton85: TSpeedButton;
    SpeedButton86: TSpeedButton;
    SpeedButton87: TSpeedButton;
    SpeedButton88: TSpeedButton;
    SpeedButton89: TSpeedButton;
    SpeedButton90: TSpeedButton;
    SpeedButton91: TSpeedButton;
    SpeedButton92: TSpeedButton;
    SpeedButton93: TSpeedButton;
    SpeedButton94: TSpeedButton;
    SpeedButton95: TSpeedButton;
    SpeedButton96: TSpeedButton;
    SpeedButton97: TSpeedButton;
    SpeedButton98: TSpeedButton;
    SpeedButton99: TSpeedButton;
    SpeedButton100: TSpeedButton;
    SpeedButton101: TSpeedButton;
    SpeedButton102: TSpeedButton;
    SpeedButton103: TSpeedButton;
    SpeedButton104: TSpeedButton;
    SpeedButton105: TSpeedButton;
    SpeedButton106: TSpeedButton;
    SpeedButton107: TSpeedButton;
    SpeedButton108: TSpeedButton;
    SpeedButton109: TSpeedButton;
    SpeedButton110: TSpeedButton;
    SpeedButton111: TSpeedButton;
    SpeedButton112: TSpeedButton;
    SpeedButton113: TSpeedButton;
    SpeedButton114: TSpeedButton;
    SpeedButton115: TSpeedButton;
    SpeedButton116: TSpeedButton;
    SpeedButton117: TSpeedButton;
    SpeedButton118: TSpeedButton;
    SpeedButton119: TSpeedButton;
    SpeedButton120: TSpeedButton;
    SpeedButton121: TSpeedButton;
    SpeedButton122: TSpeedButton;
    SpeedButton123: TSpeedButton;
    SpeedButton124: TSpeedButton;
    SpeedButton125: TSpeedButton;
    SpeedButton126: TSpeedButton;
    SpeedButton127: TSpeedButton;
    SpeedButton128: TSpeedButton;
    SpeedButton129: TSpeedButton;
    SpeedButton130: TSpeedButton;
    SpeedButton131: TSpeedButton;
    SpeedButton132: TSpeedButton;
    SpeedButton133: TSpeedButton;
    SpeedButton134: TSpeedButton;
    SpeedButton135: TSpeedButton;
    SpeedButton136: TSpeedButton;
    SpeedButton137: TSpeedButton;
    SpeedButton138: TSpeedButton;
    SpeedButton139: TSpeedButton;
    SpeedButton140: TSpeedButton;
    GridPanel3: TGridPanel;
    SpeedButton141: TSpeedButton;
    SpeedButton142: TSpeedButton;
    SpeedButton143: TSpeedButton;
    SpeedButton144: TSpeedButton;
    SpeedButton145: TSpeedButton;
    SpeedButton146: TSpeedButton;
    SpeedButton147: TSpeedButton;
    SpeedButton148: TSpeedButton;
    SpeedButton149: TSpeedButton;
    SpeedButton150: TSpeedButton;
    SpeedButton151: TSpeedButton;
    SpeedButton152: TSpeedButton;
    SpeedButton153: TSpeedButton;
    SpeedButton154: TSpeedButton;
    SpeedButton155: TSpeedButton;
    SpeedButton156: TSpeedButton;
    SpeedButton157: TSpeedButton;
    SpeedButton158: TSpeedButton;
    SpeedButton159: TSpeedButton;
    SpeedButton160: TSpeedButton;
    SpeedButton161: TSpeedButton;
    SpeedButton162: TSpeedButton;
    SpeedButton163: TSpeedButton;
    SpeedButton164: TSpeedButton;
    SpeedButton165: TSpeedButton;
    SpeedButton166: TSpeedButton;
    SpeedButton167: TSpeedButton;
    SpeedButton168: TSpeedButton;
    SpeedButton169: TSpeedButton;
    SpeedButton170: TSpeedButton;
    SpeedButton171: TSpeedButton;
    SpeedButton172: TSpeedButton;
    SpeedButton173: TSpeedButton;
    SpeedButton174: TSpeedButton;
    SpeedButton175: TSpeedButton;
    SpeedButton176: TSpeedButton;
    SpeedButton177: TSpeedButton;
    SpeedButton178: TSpeedButton;
    SpeedButton179: TSpeedButton;
    SpeedButton180: TSpeedButton;
    SpeedButton181: TSpeedButton;
    SpeedButton182: TSpeedButton;
    SpeedButton183: TSpeedButton;
    SpeedButton184: TSpeedButton;
    SpeedButton185: TSpeedButton;
    SpeedButton186: TSpeedButton;
    SpeedButton187: TSpeedButton;
    SpeedButton188: TSpeedButton;
    SpeedButton189: TSpeedButton;
    SpeedButton190: TSpeedButton;
    SpeedButton191: TSpeedButton;
    SpeedButton192: TSpeedButton;
    SpeedButton193: TSpeedButton;
    SpeedButton194: TSpeedButton;
    SpeedButton195: TSpeedButton;
    SpeedButton196: TSpeedButton;
    SpeedButton197: TSpeedButton;
    SpeedButton198: TSpeedButton;
    SpeedButton199: TSpeedButton;
    SpeedButton200: TSpeedButton;
    SpeedButton201: TSpeedButton;
    SpeedButton202: TSpeedButton;
    SpeedButton203: TSpeedButton;
    SpeedButton204: TSpeedButton;
    SpeedButton205: TSpeedButton;
    SpeedButton206: TSpeedButton;
    SpeedButton207: TSpeedButton;
    SpeedButton208: TSpeedButton;
    SpeedButton209: TSpeedButton;
    SpeedButton210: TSpeedButton;
    GridPanel4: TGridPanel;
    SpeedButton211: TSpeedButton;
    SpeedButton212: TSpeedButton;
    SpeedButton213: TSpeedButton;
    SpeedButton214: TSpeedButton;
    SpeedButton215: TSpeedButton;
    SpeedButton216: TSpeedButton;
    SpeedButton217: TSpeedButton;
    SpeedButton218: TSpeedButton;
    SpeedButton219: TSpeedButton;
    SpeedButton220: TSpeedButton;
    SpeedButton221: TSpeedButton;
    SpeedButton222: TSpeedButton;
    SpeedButton223: TSpeedButton;
    SpeedButton224: TSpeedButton;
    SpeedButton225: TSpeedButton;
    SpeedButton226: TSpeedButton;
    SpeedButton227: TSpeedButton;
    SpeedButton228: TSpeedButton;
    SpeedButton229: TSpeedButton;
    SpeedButton230: TSpeedButton;
    SpeedButton231: TSpeedButton;
    SpeedButton232: TSpeedButton;
    SpeedButton233: TSpeedButton;
    SpeedButton234: TSpeedButton;
    SpeedButton235: TSpeedButton;
    SpeedButton236: TSpeedButton;
    SpeedButton237: TSpeedButton;
    SpeedButton238: TSpeedButton;
    SpeedButton239: TSpeedButton;
    SpeedButton240: TSpeedButton;
    SpeedButton241: TSpeedButton;
    SpeedButton242: TSpeedButton;
    SpeedButton243: TSpeedButton;
    SpeedButton244: TSpeedButton;
    SpeedButton245: TSpeedButton;
    SpeedButton246: TSpeedButton;
    SpeedButton247: TSpeedButton;
    SpeedButton248: TSpeedButton;
    SpeedButton249: TSpeedButton;
    SpeedButton250: TSpeedButton;
    SpeedButton251: TSpeedButton;
    SpeedButton252: TSpeedButton;
    SpeedButton253: TSpeedButton;
    SpeedButton254: TSpeedButton;
    SpeedButton255: TSpeedButton;
    SpeedButton256: TSpeedButton;
    SpeedButton257: TSpeedButton;
    SpeedButton258: TSpeedButton;
    SpeedButton259: TSpeedButton;
    SpeedButton260: TSpeedButton;
    SpeedButton261: TSpeedButton;
    SpeedButton262: TSpeedButton;
    SpeedButton263: TSpeedButton;
    SpeedButton264: TSpeedButton;
    SpeedButton265: TSpeedButton;
    SpeedButton266: TSpeedButton;
    SpeedButton267: TSpeedButton;
    SpeedButton268: TSpeedButton;
    SpeedButton269: TSpeedButton;
    SpeedButton270: TSpeedButton;
    SpeedButton271: TSpeedButton;
    SpeedButton272: TSpeedButton;
    SpeedButton273: TSpeedButton;
    SpeedButton274: TSpeedButton;
    SpeedButton275: TSpeedButton;
    SpeedButton276: TSpeedButton;
    SpeedButton277: TSpeedButton;
    SpeedButton278: TSpeedButton;
    SpeedButton279: TSpeedButton;
    SpeedButton280: TSpeedButton;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Panel2: TPanel;
    btnBeginTab: TButton;
    Button2: TButton;
    btnSplitTab: TButton;
    btnAddTable: TButton;
    btnMyTabs: TButton;
    DBText6: TDBText;
    btnEditTabs: TButton;
    Button7: TButton;
    DBText7: TDBText;
    DBText8: TDBText;
    btnGroupTabs: TButton;
    btnCancelTab: TButton;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    ToolButton25: TToolButton;
    ToolButton26: TToolButton;
    Button10: TButton;
    Button11: TButton;
    DBText9: TDBText;
    btnDeliver: TButton;
    Panel3: TPanel;
    RichEdit1: TRichEdit;
    btnCotizacion: TButton;
    btnPrint: TButton;
    DBText10: TDBText;
    btnMobile: TButton;
    TabSheet6: TTabSheet;
    GridPanelTables: TGridPanel;
    Edittables1: TMenuItem;
    DBCheckBox1: TDBCheckBox;
    Savetables1: TMenuItem;
    Addtableheader1: TMenuItem;
    Panel4: TPanel;
    Panel5: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure SetButtonsVisibleFalse(FT: Boolean);
    function findButton(BtnName, BtnCaption: String; Balance: double): Boolean;
    procedure LoadButtons;
    procedure sbCatT1Click(Sender: TObject);
    procedure EditButton(BtnName: String);
    procedure sbCatT2Click(Sender: TObject);
    procedure sbCatT3Click(Sender: TObject);
    procedure sbCatT4Click(Sender: TObject);
    procedure sbCatT5Click(Sender: TObject);
    procedure ActivateButtons2Click(Sender: TObject);
    procedure Setbuttonsvisiblefalse1Click(Sender: TObject);
    procedure SpeedButton215Click(Sender: TObject);
    procedure SpeedButton219Click(Sender: TObject);
    procedure SpeedButton216Click(Sender: TObject);
    procedure SpeedButton217Click(Sender: TObject);
    procedure SpeedButton218Click(Sender: TObject);
    procedure SpeedButton220Click(Sender: TObject);
    procedure SpeedButton221Click(Sender: TObject);
    procedure SpeedButton222Click(Sender: TObject);
    procedure SpeedButton223Click(Sender: TObject);
    procedure SpeedButton224Click(Sender: TObject);
    procedure SpeedButton225Click(Sender: TObject);
    procedure SpeedButton226Click(Sender: TObject);
    procedure SpeedButton227Click(Sender: TObject);
    procedure SpeedButton228Click(Sender: TObject);
    procedure SpeedButton229Click(Sender: TObject);
    procedure SpeedButton230Click(Sender: TObject);
    procedure SpeedButton231Click(Sender: TObject);
    procedure SpeedButton232Click(Sender: TObject);
    procedure SpeedButton233Click(Sender: TObject);
    procedure SpeedButton234Click(Sender: TObject);
    procedure SpeedButton211Click(Sender: TObject);
    procedure SpeedButton212Click(Sender: TObject);
    procedure SpeedButton213Click(Sender: TObject);
    procedure SpeedButton214Click(Sender: TObject);
    procedure SpeedButton235Click(Sender: TObject);
    procedure SpeedButton236Click(Sender: TObject);
    procedure SpeedButton237Click(Sender: TObject);
    procedure SpeedButton238Click(Sender: TObject);
    procedure SpeedButton239Click(Sender: TObject);
    procedure SpeedButton240Click(Sender: TObject);
    procedure SpeedButton241Click(Sender: TObject);
    procedure SpeedButton242Click(Sender: TObject);
    procedure SpeedButton243Click(Sender: TObject);
    procedure SpeedButton244Click(Sender: TObject);
    procedure SpeedButton245Click(Sender: TObject);
    procedure SpeedButton246Click(Sender: TObject);
    procedure SpeedButton247Click(Sender: TObject);
    procedure SpeedButton248Click(Sender: TObject);
    procedure SpeedButton250Click(Sender: TObject);
    procedure SpeedButton249Click(Sender: TObject);
    procedure SpeedButton251Click(Sender: TObject);
    procedure SpeedButton252Click(Sender: TObject);
    procedure SpeedButton253Click(Sender: TObject);
    procedure SpeedButton254Click(Sender: TObject);
    procedure SpeedButton255Click(Sender: TObject);
    procedure SpeedButton256Click(Sender: TObject);
    procedure SpeedButton257Click(Sender: TObject);
    procedure SpeedButton258Click(Sender: TObject);
    procedure SpeedButton259Click(Sender: TObject);
    procedure SpeedButton260Click(Sender: TObject);
    procedure SpeedButton261Click(Sender: TObject);
    procedure SpeedButton262Click(Sender: TObject);
    procedure SpeedButton263Click(Sender: TObject);
    procedure SpeedButton264Click(Sender: TObject);
    procedure SpeedButton265Click(Sender: TObject);
    procedure SpeedButton266Click(Sender: TObject);
    procedure SpeedButton267Click(Sender: TObject);
    procedure SpeedButton268Click(Sender: TObject);
    procedure SpeedButton269Click(Sender: TObject);
    procedure SpeedButton270Click(Sender: TObject);
    procedure SpeedButton271Click(Sender: TObject);
    procedure SpeedButton272Click(Sender: TObject);
    procedure SpeedButton273Click(Sender: TObject);
    procedure SpeedButton274Click(Sender: TObject);
    procedure SpeedButton275Click(Sender: TObject);
    procedure SpeedButton276Click(Sender: TObject);
    procedure SpeedButton277Click(Sender: TObject);
    procedure SpeedButton278Click(Sender: TObject);
    procedure SpeedButton279Click(Sender: TObject);
    procedure SpeedButton280Click(Sender: TObject);
    procedure SpeedButton145Click(Sender: TObject);
    procedure SpeedButton146Click(Sender: TObject);
    procedure SpeedButton147Click(Sender: TObject);
    procedure SpeedButton148Click(Sender: TObject);
    procedure SpeedButton149Click(Sender: TObject);
    procedure SpeedButton150Click(Sender: TObject);
    procedure SpeedButton151Click(Sender: TObject);
    procedure SpeedButton152Click(Sender: TObject);
    procedure SpeedButton153Click(Sender: TObject);
    procedure SpeedButton154Click(Sender: TObject);
    procedure SpeedButton155Click(Sender: TObject);
    procedure SpeedButton156Click(Sender: TObject);
    procedure SpeedButton157Click(Sender: TObject);
    procedure SpeedButton158Click(Sender: TObject);
    procedure SpeedButton159Click(Sender: TObject);
    procedure SpeedButton160Click(Sender: TObject);
    procedure SpeedButton161Click(Sender: TObject);
    procedure SpeedButton162Click(Sender: TObject);
    procedure SpeedButton163Click(Sender: TObject);
    procedure SpeedButton164Click(Sender: TObject);
    procedure SpeedButton141Click(Sender: TObject);
    procedure SpeedButton142Click(Sender: TObject);
    procedure SpeedButton143Click(Sender: TObject);
    procedure SpeedButton144Click(Sender: TObject);
    procedure SpeedButton165Click(Sender: TObject);
    procedure SpeedButton166Click(Sender: TObject);
    procedure SpeedButton167Click(Sender: TObject);
    procedure SpeedButton168Click(Sender: TObject);
    procedure SpeedButton169Click(Sender: TObject);
    procedure SpeedButton170Click(Sender: TObject);
    procedure SpeedButton171Click(Sender: TObject);
    procedure SpeedButton172Click(Sender: TObject);
    procedure SpeedButton173Click(Sender: TObject);
    procedure SpeedButton174Click(Sender: TObject);
    procedure SpeedButton175Click(Sender: TObject);
    procedure SpeedButton176Click(Sender: TObject);
    procedure SpeedButton177Click(Sender: TObject);
    procedure SpeedButton178Click(Sender: TObject);
    procedure SpeedButton180Click(Sender: TObject);
    procedure SpeedButton179Click(Sender: TObject);
    procedure SpeedButton181Click(Sender: TObject);
    procedure SpeedButton182Click(Sender: TObject);
    procedure SpeedButton183Click(Sender: TObject);
    procedure SpeedButton184Click(Sender: TObject);
    procedure SpeedButton185Click(Sender: TObject);
    procedure SpeedButton186Click(Sender: TObject);
    procedure SpeedButton187Click(Sender: TObject);
    procedure SpeedButton188Click(Sender: TObject);
    procedure SpeedButton189Click(Sender: TObject);
    procedure SpeedButton190Click(Sender: TObject);
    procedure SpeedButton191Click(Sender: TObject);
    procedure SpeedButton192Click(Sender: TObject);
    procedure SpeedButton193Click(Sender: TObject);
    procedure SpeedButton194Click(Sender: TObject);
    procedure SpeedButton195Click(Sender: TObject);
    procedure SpeedButton196Click(Sender: TObject);
    procedure SpeedButton197Click(Sender: TObject);
    procedure SpeedButton198Click(Sender: TObject);
    procedure SpeedButton199Click(Sender: TObject);
    procedure SpeedButton200Click(Sender: TObject);
    procedure SpeedButton201Click(Sender: TObject);
    procedure SpeedButton202Click(Sender: TObject);
    procedure SpeedButton203Click(Sender: TObject);
    procedure SpeedButton204Click(Sender: TObject);
    procedure SpeedButton205Click(Sender: TObject);
    procedure SpeedButton206Click(Sender: TObject);
    procedure SpeedButton207Click(Sender: TObject);
    procedure SpeedButton208Click(Sender: TObject);
    procedure SpeedButton209Click(Sender: TObject);
    procedure SpeedButton210Click(Sender: TObject);
    procedure SpeedButton75Click(Sender: TObject);
    procedure SpeedButton76Click(Sender: TObject);
    procedure SpeedButton77Click(Sender: TObject);
    procedure SpeedButton78Click(Sender: TObject);
    procedure SpeedButton79Click(Sender: TObject);
    procedure SpeedButton80Click(Sender: TObject);
    procedure SpeedButton81Click(Sender: TObject);
    procedure SpeedButton82Click(Sender: TObject);
    procedure SpeedButton83Click(Sender: TObject);
    procedure SpeedButton84Click(Sender: TObject);
    procedure SpeedButton85Click(Sender: TObject);
    procedure SpeedButton86Click(Sender: TObject);
    procedure SpeedButton87Click(Sender: TObject);
    procedure SpeedButton88Click(Sender: TObject);
    procedure SpeedButton89Click(Sender: TObject);
    procedure SpeedButton90Click(Sender: TObject);
    procedure SpeedButton91Click(Sender: TObject);
    procedure SpeedButton92Click(Sender: TObject);
    procedure SpeedButton93Click(Sender: TObject);
    procedure SpeedButton94Click(Sender: TObject);
    procedure SpeedButton71Click(Sender: TObject);
    procedure SpeedButton72Click(Sender: TObject);
    procedure SpeedButton73Click(Sender: TObject);
    procedure SpeedButton74Click(Sender: TObject);
    procedure SpeedButton95Click(Sender: TObject);
    procedure SpeedButton96Click(Sender: TObject);
    procedure SpeedButton97Click(Sender: TObject);
    procedure SpeedButton98Click(Sender: TObject);
    procedure SpeedButton99Click(Sender: TObject);
    procedure SpeedButton100Click(Sender: TObject);
    procedure SpeedButton101Click(Sender: TObject);
    procedure SpeedButton102Click(Sender: TObject);
    procedure SpeedButton103Click(Sender: TObject);
    procedure SpeedButton104Click(Sender: TObject);
    procedure SpeedButton105Click(Sender: TObject);
    procedure SpeedButton106Click(Sender: TObject);
    procedure SpeedButton107Click(Sender: TObject);
    procedure SpeedButton108Click(Sender: TObject);
    procedure SpeedButton110Click(Sender: TObject);
    procedure SpeedButton109Click(Sender: TObject);
    procedure SpeedButton111Click(Sender: TObject);
    procedure SpeedButton112Click(Sender: TObject);
    procedure SpeedButton113Click(Sender: TObject);
    procedure SpeedButton114Click(Sender: TObject);
    procedure SpeedButton115Click(Sender: TObject);
    procedure SpeedButton116Click(Sender: TObject);
    procedure SpeedButton117Click(Sender: TObject);
    procedure SpeedButton118Click(Sender: TObject);
    procedure SpeedButton119Click(Sender: TObject);
    procedure SpeedButton120Click(Sender: TObject);
    procedure SpeedButton121Click(Sender: TObject);
    procedure SpeedButton122Click(Sender: TObject);
    procedure SpeedButton123Click(Sender: TObject);
    procedure SpeedButton124Click(Sender: TObject);
    procedure SpeedButton125Click(Sender: TObject);
    procedure SpeedButton126Click(Sender: TObject);
    procedure SpeedButton127Click(Sender: TObject);
    procedure SpeedButton128Click(Sender: TObject);
    procedure SpeedButton129Click(Sender: TObject);
    procedure SpeedButton130Click(Sender: TObject);
    procedure SpeedButton131Click(Sender: TObject);
    procedure SpeedButton132Click(Sender: TObject);
    procedure SpeedButton133Click(Sender: TObject);
    procedure SpeedButton134Click(Sender: TObject);
    procedure SpeedButton135Click(Sender: TObject);
    procedure SpeedButton136Click(Sender: TObject);
    procedure SpeedButton137Click(Sender: TObject);
    procedure SpeedButton138Click(Sender: TObject);
    procedure SpeedButton139Click(Sender: TObject);
    procedure SpeedButton140Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure SpeedButton24Click(Sender: TObject);
    procedure SpeedButton25Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton26Click(Sender: TObject);
    procedure SpeedButton27Click(Sender: TObject);
    procedure SpeedButton28Click(Sender: TObject);
    procedure SpeedButton29Click(Sender: TObject);
    procedure SpeedButton30Click(Sender: TObject);
    procedure SpeedButton31Click(Sender: TObject);
    procedure SpeedButton32Click(Sender: TObject);
    procedure SpeedButton33Click(Sender: TObject);
    procedure SpeedButton34Click(Sender: TObject);
    procedure SpeedButton35Click(Sender: TObject);
    procedure SpeedButton36Click(Sender: TObject);
    procedure SpeedButton37Click(Sender: TObject);
    procedure SpeedButton38Click(Sender: TObject);
    procedure SpeedButton39Click(Sender: TObject);
    procedure SpeedButton40Click(Sender: TObject);
    procedure SpeedButton41Click(Sender: TObject);
    procedure SpeedButton42Click(Sender: TObject);
    procedure SpeedButton43Click(Sender: TObject);
    procedure SpeedButton44Click(Sender: TObject);
    procedure SpeedButton45Click(Sender: TObject);
    procedure SpeedButton46Click(Sender: TObject);
    procedure SpeedButton47Click(Sender: TObject);
    procedure SpeedButton48Click(Sender: TObject);
    procedure SpeedButton49Click(Sender: TObject);
    procedure SpeedButton50Click(Sender: TObject);
    procedure SpeedButton51Click(Sender: TObject);
    procedure SpeedButton52Click(Sender: TObject);
    procedure SpeedButton53Click(Sender: TObject);
    procedure SpeedButton54Click(Sender: TObject);
    procedure SpeedButton55Click(Sender: TObject);
    procedure SpeedButton56Click(Sender: TObject);
    procedure SpeedButton57Click(Sender: TObject);
    procedure SpeedButton58Click(Sender: TObject);
    procedure SpeedButton59Click(Sender: TObject);
    procedure SpeedButton60Click(Sender: TObject);
    procedure SpeedButton61Click(Sender: TObject);
    procedure SpeedButton62Click(Sender: TObject);
    procedure SpeedButton63Click(Sender: TObject);
    procedure SpeedButton64Click(Sender: TObject);
    procedure SpeedButton65Click(Sender: TObject);
    procedure SpeedButton66Click(Sender: TObject);
    procedure SpeedButton67Click(Sender: TObject);
    procedure SpeedButton68Click(Sender: TObject);
    procedure SpeedButton69Click(Sender: TObject);
    procedure SpeedButton70Click(Sender: TObject);
    procedure DBCtrlGrid1DblClick(Sender: TObject);
    procedure btnBeginTabClick(Sender: TObject);
    procedure btnMyTabsClick(Sender: TObject);
    procedure btnAddTableClick(Sender: TObject);
    procedure btnEditTabsClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure btnGroupTabsClick(Sender: TObject);
    procedure btnCancelTabClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure LocateTab(Token: String);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
    procedure ToolButton18Click(Sender: TObject);
    procedure ToolButton19Click(Sender: TObject);
    procedure ToolButton20Click(Sender: TObject);
    procedure ToolButton21Click(Sender: TObject);
    procedure ToolButton22Click(Sender: TObject);
    procedure ToolButton23Click(Sender: TObject);
    procedure ToolButton24Click(Sender: TObject);
    procedure ToolButton25Click(Sender: TObject);
    procedure ToolButton26Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure btnDeliverClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCotizacionClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnMobileClick(Sender: TObject);
    procedure BtnHeaderClick(Sender: TObject);
    procedure RenderTableBtns(id, option: Integer);
    procedure ClearGridPanel(panel: TGridPanel);
    procedure tableBtnClicked(Sender: TObject);
    procedure Edittables1Click(Sender: TObject);
    procedure editTableBtn(Sender: Tobject);
    procedure Savetables1Click(Sender: TObject);
    procedure getRowColumn(const aControl: TControl; var aRow, aColumn: Integer);
    procedure Addtableheader1Click(Sender: TObject);
    procedure btnSplitTabClick(Sender: TObject);
  private
   procedure CreateButtons;
    { Private declarations }
  public
  var
    btnHeaderId, roe, col, btnTableId: Integer;

    { Public declarations }
  end;

var
  FrmOpenTabs: TFrmOpenTabs;


implementation

{$R *.dfm}

uses UntDMMidas, UntEditarBotones, UntCommonPOS, UntEditTabs, UntCustomerTabs,
  UntPOSRest, UntCommon, untMain, UntEditTab, UntGroupTabs, UntAddEditButtons,
  UntPOSTS, UntSplitTabs, untReceiptView, UntQueries;

procedure TFrmOpenTabs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmOpenTabs := Nil;
end;

procedure TFrmOpenTabs.FormCreate(Sender: TObject);
begin
  CreateButtons;
  SetButtonsVisibleFalse(False);
  LoadButtons;
end;


procedure TFrmOpenTabs.FormShow(Sender: TObject);
begin
  if CommonPOS.Restaurant = False then
  begin
    btnBeginTab.Visible := False;
    btnSplitTab.Visible := False;
    btnAddTable.Visible := False;
    btnEditTabs.Visible := False;
    btnMyTabs.Visible := False;
    btnGroupTabs.Visible := False;
  end;
end;

procedure TFrmOpenTabs.getRowColumn(const aControl: TControl; var aRow,
  aColumn: Integer);
var
  I: Integer;
begin
  if AControl.Parent is TGridPanel then
  begin
    I := TGridPanel(AControl.Parent).ControlCollection.IndexOf(AControl);
    if I > -1 then
    begin
      ARow := TGridPanel(AControl.Parent).ControlCollection[I].Row;
      AColumn := TGridPanel(AControl.Parent).ControlCollection[I].Column;
    end;
  end;
end;

procedure TFrmOpenTabs.SetButtonsVisibleFalse(FT: Boolean);
var
  i: Integer;
  comp: TComponent;
  sb: TSpeedButton;
const
  NamePrefix = 'SpeedButton';
  NamePrefix2 = 'sbCatT';

begin
  for i := 1 to ComponentCount+1 do
  begin
    sb := FindComponent(NamePrefix + IntToStr(i)) as TSpeedButton;
    if sb <> nil then
    begin
      sb.Visible := FT;
    end;
  end;
  i := 0;
  for i := 1 to ComponentCount+1 do
  begin
    sb := FindComponent(NamePrefix2 + IntToStr(i)) as TSpeedButton;
    if sb <> nil then
    begin
      sb.Visible := FT;
    end;
  end;
end;


procedure TFrmOpenTabs.Setbuttonsvisiblefalse1Click(Sender: TObject);
begin
  Self.Tag := 1;
  SetButtonsVisibleFalse(False);
  LoadButtons;
end;

procedure TFrmOpenTabs.SpeedButton100Click(Sender: TObject);
begin
  EditButton(SpeedButton100.Name);
end;

procedure TFrmOpenTabs.SpeedButton101Click(Sender: TObject);
begin
  EditButton(SpeedButton101.Name);
end;

procedure TFrmOpenTabs.SpeedButton102Click(Sender: TObject);
begin
  EditButton(SpeedButton102.Name);
end;

procedure TFrmOpenTabs.SpeedButton103Click(Sender: TObject);
begin
  EditButton(SpeedButton103.Name);
end;

procedure TFrmOpenTabs.SpeedButton104Click(Sender: TObject);
begin
  EditButton(SpeedButton104.Name);
end;

procedure TFrmOpenTabs.SpeedButton105Click(Sender: TObject);
begin
  EditButton(SpeedButton105.Name);
end;

procedure TFrmOpenTabs.SpeedButton106Click(Sender: TObject);
begin
  EditButton(SpeedButton106.Name);
end;

procedure TFrmOpenTabs.SpeedButton107Click(Sender: TObject);
begin
  EditButton(SpeedButton107.Name);
end;

procedure TFrmOpenTabs.SpeedButton108Click(Sender: TObject);
begin
  EditButton(SpeedButton108.Name);
end;

procedure TFrmOpenTabs.SpeedButton109Click(Sender: TObject);
begin
  EditButton(SpeedButton109.Name);
end;

procedure TFrmOpenTabs.SpeedButton10Click(Sender: TObject);
begin
  EditButton(SpeedButton10.Name);
end;

procedure TFrmOpenTabs.SpeedButton110Click(Sender: TObject);
begin
  EditButton(SpeedButton110.Name);
end;

procedure TFrmOpenTabs.SpeedButton111Click(Sender: TObject);
begin
  EditButton(SpeedButton111.Name);
end;

procedure TFrmOpenTabs.SpeedButton112Click(Sender: TObject);
begin
  EditButton(SpeedButton112.Name);
end;

procedure TFrmOpenTabs.SpeedButton113Click(Sender: TObject);
begin
  EditButton(SpeedButton113.Name);
end;

procedure TFrmOpenTabs.SpeedButton114Click(Sender: TObject);
begin
  EditButton(SpeedButton114.Name);
end;

procedure TFrmOpenTabs.SpeedButton115Click(Sender: TObject);
begin
  EditButton(SpeedButton115.Name);
end;

procedure TFrmOpenTabs.SpeedButton116Click(Sender: TObject);
begin
  EditButton(SpeedButton116.Name);
end;

procedure TFrmOpenTabs.SpeedButton117Click(Sender: TObject);
begin
  EditButton(SpeedButton117.Name);
end;

procedure TFrmOpenTabs.SpeedButton118Click(Sender: TObject);
begin
  EditButton(SpeedButton118.Name);
end;

procedure TFrmOpenTabs.SpeedButton119Click(Sender: TObject);
begin
  EditButton(SpeedButton119.Name);
end;

procedure TFrmOpenTabs.SpeedButton11Click(Sender: TObject);
begin
  EditButton(SpeedButton11.Name);
end;

procedure TFrmOpenTabs.SpeedButton120Click(Sender: TObject);
begin
  EditButton(SpeedButton120.Name);
end;

procedure TFrmOpenTabs.SpeedButton121Click(Sender: TObject);
begin
  EditButton(SpeedButton121.Name);
end;

procedure TFrmOpenTabs.SpeedButton122Click(Sender: TObject);
begin
  EditButton(SpeedButton122.Name);
end;

procedure TFrmOpenTabs.SpeedButton123Click(Sender: TObject);
begin
  EditButton(SpeedButton123.Name);
end;

procedure TFrmOpenTabs.SpeedButton124Click(Sender: TObject);
begin
  EditButton(SpeedButton124.Name);
end;

procedure TFrmOpenTabs.SpeedButton125Click(Sender: TObject);
begin
  EditButton(SpeedButton125.Name);
end;

procedure TFrmOpenTabs.SpeedButton126Click(Sender: TObject);
begin
  EditButton(SpeedButton126.Name);
end;

procedure TFrmOpenTabs.SpeedButton127Click(Sender: TObject);
begin
  EditButton(SpeedButton127.Name);
end;

procedure TFrmOpenTabs.SpeedButton128Click(Sender: TObject);
begin
  EditButton(SpeedButton128.Name);
end;

procedure TFrmOpenTabs.SpeedButton129Click(Sender: TObject);
begin
  EditButton(SpeedButton129.Name);
end;

procedure TFrmOpenTabs.SpeedButton12Click(Sender: TObject);
begin
  EditButton(SpeedButton12.Name);
end;

procedure TFrmOpenTabs.SpeedButton130Click(Sender: TObject);
begin
  EditButton(SpeedButton130.Name);
end;

procedure TFrmOpenTabs.SpeedButton131Click(Sender: TObject);
begin
  EditButton(SpeedButton131.Name);
end;

procedure TFrmOpenTabs.SpeedButton132Click(Sender: TObject);
begin
  EditButton(SpeedButton132.Name);
end;

procedure TFrmOpenTabs.SpeedButton133Click(Sender: TObject);
begin
  EditButton(SpeedButton133.Name);
end;

procedure TFrmOpenTabs.SpeedButton134Click(Sender: TObject);
begin
  EditButton(SpeedButton134.Name);
end;

procedure TFrmOpenTabs.SpeedButton135Click(Sender: TObject);
begin
  EditButton(SpeedButton135.Name);
end;

procedure TFrmOpenTabs.SpeedButton136Click(Sender: TObject);
begin
  EditButton(SpeedButton136.Name);
end;

procedure TFrmOpenTabs.SpeedButton137Click(Sender: TObject);
begin
  EditButton(SpeedButton137.Name);
end;

procedure TFrmOpenTabs.SpeedButton138Click(Sender: TObject);
begin
  EditButton(SpeedButton138.Name);
end;

procedure TFrmOpenTabs.SpeedButton139Click(Sender: TObject);
begin
  EditButton(SpeedButton139.Name);
end;

procedure TFrmOpenTabs.SpeedButton13Click(Sender: TObject);
begin
  EditButton(SpeedButton13.Name);
end;

procedure TFrmOpenTabs.SpeedButton140Click(Sender: TObject);
begin
  EditButton(SpeedButton140.Name);
end;

procedure TFrmOpenTabs.SpeedButton141Click(Sender: TObject);
begin
  EditButton(SpeedButton141.Name);
end;

procedure TFrmOpenTabs.SpeedButton142Click(Sender: TObject);
begin
  EditButton(SpeedButton142.Name);
end;

procedure TFrmOpenTabs.SpeedButton143Click(Sender: TObject);
begin
  EditButton(SpeedButton143.Name);
end;

procedure TFrmOpenTabs.SpeedButton144Click(Sender: TObject);
begin
  EditButton(SpeedButton144.Name);
end;

procedure TFrmOpenTabs.SpeedButton145Click(Sender: TObject);
begin
  EditButton(SpeedButton145.Name);
end;

procedure TFrmOpenTabs.SpeedButton146Click(Sender: TObject);
begin
  EditButton(SpeedButton146.Name);
end;

procedure TFrmOpenTabs.SpeedButton147Click(Sender: TObject);
begin
  EditButton(SpeedButton147.Name);
end;

procedure TFrmOpenTabs.SpeedButton148Click(Sender: TObject);
begin
  EditButton(SpeedButton148.Name);
end;

procedure TFrmOpenTabs.SpeedButton149Click(Sender: TObject);
begin
  EditButton(SpeedButton149.Name);
end;

procedure TFrmOpenTabs.SpeedButton14Click(Sender: TObject);
begin
  EditButton(SpeedButton14.Name);
end;

procedure TFrmOpenTabs.SpeedButton150Click(Sender: TObject);
begin
  EditButton(SpeedButton150.Name);
end;

procedure TFrmOpenTabs.SpeedButton151Click(Sender: TObject);
begin
  EditButton(SpeedButton151.Name);
end;

procedure TFrmOpenTabs.SpeedButton152Click(Sender: TObject);
begin
  EditButton(SpeedButton152.Name);
end;

procedure TFrmOpenTabs.SpeedButton153Click(Sender: TObject);
begin
  EditButton(SpeedButton153.Name);
end;

procedure TFrmOpenTabs.SpeedButton154Click(Sender: TObject);
begin
  EditButton(SpeedButton154.Name);
end;

procedure TFrmOpenTabs.SpeedButton155Click(Sender: TObject);
begin
  EditButton(SpeedButton155.Name);
end;

procedure TFrmOpenTabs.SpeedButton156Click(Sender: TObject);
begin
  EditButton(SpeedButton156.Name);
end;

procedure TFrmOpenTabs.SpeedButton157Click(Sender: TObject);
begin
  EditButton(SpeedButton157.Name);
end;

procedure TFrmOpenTabs.SpeedButton158Click(Sender: TObject);
begin
  EditButton(SpeedButton158.Name);
end;

procedure TFrmOpenTabs.SpeedButton159Click(Sender: TObject);
begin
  EditButton(SpeedButton159.Name);
end;

procedure TFrmOpenTabs.SpeedButton15Click(Sender: TObject);
begin
  EditButton(SpeedButton15.Name);
end;

procedure TFrmOpenTabs.SpeedButton160Click(Sender: TObject);
begin
  EditButton(SpeedButton160.Name);
end;

procedure TFrmOpenTabs.SpeedButton161Click(Sender: TObject);
begin
  EditButton(SpeedButton161.Name);
end;

procedure TFrmOpenTabs.SpeedButton162Click(Sender: TObject);
begin
  EditButton(SpeedButton162.Name);
end;

procedure TFrmOpenTabs.SpeedButton163Click(Sender: TObject);
begin
  EditButton(SpeedButton163.Name);
end;

procedure TFrmOpenTabs.SpeedButton164Click(Sender: TObject);
begin
  EditButton(SpeedButton164.Name);
end;

procedure TFrmOpenTabs.SpeedButton165Click(Sender: TObject);
begin
  EditButton(SpeedButton165.Name);
end;

procedure TFrmOpenTabs.SpeedButton166Click(Sender: TObject);
begin
  EditButton(SpeedButton166.Name);
end;

procedure TFrmOpenTabs.SpeedButton167Click(Sender: TObject);
begin
  EditButton(SpeedButton167.Name);
end;

procedure TFrmOpenTabs.SpeedButton168Click(Sender: TObject);
begin
  EditButton(SpeedButton168.Name);
end;

procedure TFrmOpenTabs.SpeedButton169Click(Sender: TObject);
begin
  EditButton(SpeedButton169.Name);
end;

procedure TFrmOpenTabs.SpeedButton16Click(Sender: TObject);
begin
  EditButton(SpeedButton16.Name);
end;

procedure TFrmOpenTabs.SpeedButton170Click(Sender: TObject);
begin
  EditButton(SpeedButton170.Name);
end;

procedure TFrmOpenTabs.SpeedButton171Click(Sender: TObject);
begin
  EditButton(SpeedButton171.Name);
end;

procedure TFrmOpenTabs.SpeedButton172Click(Sender: TObject);
begin
  EditButton(SpeedButton172.Name);
end;

procedure TFrmOpenTabs.SpeedButton173Click(Sender: TObject);
begin
  EditButton(SpeedButton173.Name);
end;

procedure TFrmOpenTabs.SpeedButton174Click(Sender: TObject);
begin
  EditButton(SpeedButton174.Name);
end;

procedure TFrmOpenTabs.SpeedButton175Click(Sender: TObject);
begin
  EditButton(SpeedButton175.Name);
end;

procedure TFrmOpenTabs.SpeedButton176Click(Sender: TObject);
begin
  EditButton(SpeedButton176.Name);
end;

procedure TFrmOpenTabs.SpeedButton177Click(Sender: TObject);
begin
  EditButton(SpeedButton177.Name);
end;

procedure TFrmOpenTabs.SpeedButton178Click(Sender: TObject);
begin
  EditButton(SpeedButton178.Name);
end;

procedure TFrmOpenTabs.SpeedButton179Click(Sender: TObject);
begin
  EditButton(SpeedButton179.Name);
end;

procedure TFrmOpenTabs.SpeedButton17Click(Sender: TObject);
begin
  EditButton(SpeedButton17.Name);
end;

procedure TFrmOpenTabs.SpeedButton180Click(Sender: TObject);
begin
  EditButton(SpeedButton180.Name);
end;

procedure TFrmOpenTabs.SpeedButton181Click(Sender: TObject);
begin
  EditButton(SpeedButton181.Name);
end;

procedure TFrmOpenTabs.SpeedButton182Click(Sender: TObject);
begin
  EditButton(SpeedButton182.Name);
end;

procedure TFrmOpenTabs.SpeedButton183Click(Sender: TObject);
begin
  EditButton(SpeedButton183.Name);
end;

procedure TFrmOpenTabs.SpeedButton184Click(Sender: TObject);
begin
  EditButton(SpeedButton184.Name);
end;

procedure TFrmOpenTabs.SpeedButton185Click(Sender: TObject);
begin
  EditButton(SpeedButton185.Name);
end;

procedure TFrmOpenTabs.SpeedButton186Click(Sender: TObject);
begin
  EditButton(SpeedButton186.Name);
end;

procedure TFrmOpenTabs.SpeedButton187Click(Sender: TObject);
begin
  EditButton(SpeedButton187.Name);
end;

procedure TFrmOpenTabs.SpeedButton188Click(Sender: TObject);
begin
  EditButton(SpeedButton188.Name);
end;

procedure TFrmOpenTabs.SpeedButton189Click(Sender: TObject);
begin
  EditButton(SpeedButton189.Name);
end;

procedure TFrmOpenTabs.SpeedButton18Click(Sender: TObject);
begin
  EditButton(SpeedButton18.Name);
end;

procedure TFrmOpenTabs.SpeedButton190Click(Sender: TObject);
begin
  EditButton(SpeedButton190.Name);
end;

procedure TFrmOpenTabs.SpeedButton191Click(Sender: TObject);
begin
  EditButton(SpeedButton191.Name);
end;

procedure TFrmOpenTabs.SpeedButton192Click(Sender: TObject);
begin
  EditButton(SpeedButton192.Name);
end;

procedure TFrmOpenTabs.SpeedButton193Click(Sender: TObject);
begin
  EditButton(SpeedButton193.Name);
end;

procedure TFrmOpenTabs.SpeedButton194Click(Sender: TObject);
begin
  EditButton(SpeedButton194.Name);
end;

procedure TFrmOpenTabs.SpeedButton195Click(Sender: TObject);
begin
  EditButton(SpeedButton195.Name);
end;

procedure TFrmOpenTabs.SpeedButton196Click(Sender: TObject);
begin
  EditButton(SpeedButton196.Name);
end;

procedure TFrmOpenTabs.SpeedButton197Click(Sender: TObject);
begin
  EditButton(SpeedButton197.Name);
end;

procedure TFrmOpenTabs.SpeedButton198Click(Sender: TObject);
begin
  EditButton(SpeedButton198.Name);
end;

procedure TFrmOpenTabs.SpeedButton199Click(Sender: TObject);
begin
  EditButton(SpeedButton199.Name);
end;

procedure TFrmOpenTabs.SpeedButton19Click(Sender: TObject);
begin
  EditButton(SpeedButton19.Name);
end;

procedure TFrmOpenTabs.SpeedButton1Click(Sender: TObject);
begin
  EditButton(SpeedButton1.Name);
end;

procedure TFrmOpenTabs.SpeedButton200Click(Sender: TObject);
begin
  EditButton(SpeedButton200.Name);
end;

procedure TFrmOpenTabs.SpeedButton201Click(Sender: TObject);
begin
  EditButton(SpeedButton201.Name);
end;

procedure TFrmOpenTabs.SpeedButton202Click(Sender: TObject);
begin
  EditButton(SpeedButton202.Name);
end;

procedure TFrmOpenTabs.SpeedButton203Click(Sender: TObject);
begin
  EditButton(SpeedButton203.Name);
end;

procedure TFrmOpenTabs.SpeedButton204Click(Sender: TObject);
begin
  EditButton(SpeedButton204.Name);
end;

procedure TFrmOpenTabs.SpeedButton205Click(Sender: TObject);
begin
  EditButton(SpeedButton205.Name);
end;

procedure TFrmOpenTabs.SpeedButton206Click(Sender: TObject);
begin
  EditButton(SpeedButton206.Name);
end;

procedure TFrmOpenTabs.SpeedButton207Click(Sender: TObject);
begin
  EditButton(SpeedButton207.Name);
end;

procedure TFrmOpenTabs.SpeedButton208Click(Sender: TObject);
begin
  EditButton(SpeedButton208.Name);
end;

procedure TFrmOpenTabs.SpeedButton209Click(Sender: TObject);
begin
  EditButton(SpeedButton209.Name);
end;

procedure TFrmOpenTabs.SpeedButton20Click(Sender: TObject);
begin
  EditButton(SpeedButton20.Name);
end;

procedure TFrmOpenTabs.SpeedButton210Click(Sender: TObject);
begin
  EditButton(SpeedButton210.Name);
end;

procedure TFrmOpenTabs.SpeedButton211Click(Sender: TObject);
begin
  EditButton(SpeedButton211.Name);
end;

procedure TFrmOpenTabs.SpeedButton212Click(Sender: TObject);
begin
  EditButton(SpeedButton212.Name);
end;

procedure TFrmOpenTabs.SpeedButton213Click(Sender: TObject);
begin
  EditButton(SpeedButton213.Name);
end;

procedure TFrmOpenTabs.SpeedButton214Click(Sender: TObject);
begin
  EditButton(SpeedButton214.Name);
end;

procedure TFrmOpenTabs.SpeedButton215Click(Sender: TObject);
begin
  EditButton(SpeedButton215.Name);
end;

procedure TFrmOpenTabs.SpeedButton216Click(Sender: TObject);
begin
  EditButton(SpeedButton216.Name);
end;

procedure TFrmOpenTabs.SpeedButton217Click(Sender: TObject);
begin
  EditButton(SpeedButton217.Name);
end;

procedure TFrmOpenTabs.SpeedButton218Click(Sender: TObject);
begin
  EditButton(SpeedButton218.Name);
end;

procedure TFrmOpenTabs.SpeedButton219Click(Sender: TObject);
begin
  EditButton(SpeedButton219.Name);
end;

procedure TFrmOpenTabs.SpeedButton21Click(Sender: TObject);
begin
  EditButton(SpeedButton21.Name);
end;

procedure TFrmOpenTabs.SpeedButton220Click(Sender: TObject);
begin
  EditButton(SpeedButton220.Name);
end;

procedure TFrmOpenTabs.SpeedButton221Click(Sender: TObject);
begin
  EditButton(SpeedButton221.Name);
end;

procedure TFrmOpenTabs.SpeedButton222Click(Sender: TObject);
begin
  EditButton(SpeedButton222.Name);
end;

procedure TFrmOpenTabs.SpeedButton223Click(Sender: TObject);
begin
  EditButton(SpeedButton223.Name);
end;

procedure TFrmOpenTabs.SpeedButton224Click(Sender: TObject);
begin
  EditButton(SpeedButton224.Name);
end;

procedure TFrmOpenTabs.SpeedButton225Click(Sender: TObject);
begin
  EditButton(SpeedButton225.Name);
end;

procedure TFrmOpenTabs.SpeedButton226Click(Sender: TObject);
begin
  EditButton(SpeedButton226.Name);
end;

procedure TFrmOpenTabs.SpeedButton227Click(Sender: TObject);
begin
  EditButton(SpeedButton227.Name);
end;

procedure TFrmOpenTabs.SpeedButton228Click(Sender: TObject);
begin
  EditButton(SpeedButton228.Name);
end;

procedure TFrmOpenTabs.SpeedButton229Click(Sender: TObject);
begin
  EditButton(SpeedButton229.Name);
end;

procedure TFrmOpenTabs.SpeedButton22Click(Sender: TObject);
begin
  EditButton(SpeedButton22.Name);
end;

procedure TFrmOpenTabs.SpeedButton230Click(Sender: TObject);
begin
  EditButton(SpeedButton230.Name);
end;

procedure TFrmOpenTabs.SpeedButton231Click(Sender: TObject);
begin
  EditButton(SpeedButton231.Name);
end;

procedure TFrmOpenTabs.SpeedButton232Click(Sender: TObject);
begin
  EditButton(SpeedButton232.Name);
end;

procedure TFrmOpenTabs.SpeedButton233Click(Sender: TObject);
begin
  EditButton(SpeedButton233.Name);
end;

procedure TFrmOpenTabs.SpeedButton234Click(Sender: TObject);
begin
  EditButton(SpeedButton234.Name);
end;

procedure TFrmOpenTabs.SpeedButton235Click(Sender: TObject);
begin
  EditButton(SpeedButton235.Name);
end;

procedure TFrmOpenTabs.SpeedButton236Click(Sender: TObject);
begin
  EditButton(SpeedButton236.Name);
end;

procedure TFrmOpenTabs.SpeedButton237Click(Sender: TObject);
begin
  EditButton(SpeedButton237.Name);
end;

procedure TFrmOpenTabs.SpeedButton238Click(Sender: TObject);
begin
  EditButton(SpeedButton238.Name);
end;

procedure TFrmOpenTabs.SpeedButton239Click(Sender: TObject);
begin
  EditButton(SpeedButton239.Name);
end;

procedure TFrmOpenTabs.SpeedButton23Click(Sender: TObject);
begin
  EditButton(SpeedButton23.Name);
end;

procedure TFrmOpenTabs.SpeedButton240Click(Sender: TObject);
begin
  EditButton(SpeedButton240.Name);
end;

procedure TFrmOpenTabs.SpeedButton241Click(Sender: TObject);
begin
  EditButton(SpeedButton241.Name);
end;

procedure TFrmOpenTabs.SpeedButton242Click(Sender: TObject);
begin
  EditButton(SpeedButton242.Name);
end;

procedure TFrmOpenTabs.SpeedButton243Click(Sender: TObject);
begin
  EditButton(SpeedButton243.Name);
end;

procedure TFrmOpenTabs.SpeedButton244Click(Sender: TObject);
begin
  EditButton(SpeedButton244.Name);
end;

procedure TFrmOpenTabs.SpeedButton245Click(Sender: TObject);
begin
  EditButton(SpeedButton245.Name);
end;

procedure TFrmOpenTabs.SpeedButton246Click(Sender: TObject);
begin
  EditButton(SpeedButton246.Name);
end;

procedure TFrmOpenTabs.SpeedButton247Click(Sender: TObject);
begin
  EditButton(SpeedButton247.Name);
end;

procedure TFrmOpenTabs.SpeedButton248Click(Sender: TObject);
begin
  EditButton(SpeedButton248.Name);
end;

procedure TFrmOpenTabs.SpeedButton249Click(Sender: TObject);
begin
  EditButton(SpeedButton249.Name);
end;

procedure TFrmOpenTabs.SpeedButton24Click(Sender: TObject);
begin
  EditButton(SpeedButton24.Name);
end;

procedure TFrmOpenTabs.SpeedButton250Click(Sender: TObject);
begin
  EditButton(SpeedButton250.Name);
end;

procedure TFrmOpenTabs.SpeedButton251Click(Sender: TObject);
begin
  EditButton(SpeedButton251.Name);
end;

procedure TFrmOpenTabs.SpeedButton252Click(Sender: TObject);
begin
  EditButton(SpeedButton252.Name);
end;

procedure TFrmOpenTabs.SpeedButton253Click(Sender: TObject);
begin
  EditButton(SpeedButton253.Name);
end;

procedure TFrmOpenTabs.SpeedButton254Click(Sender: TObject);
begin
  EditButton(SpeedButton254.Name);
end;

procedure TFrmOpenTabs.SpeedButton255Click(Sender: TObject);
begin
  EditButton(SpeedButton255.Name);
end;

procedure TFrmOpenTabs.SpeedButton256Click(Sender: TObject);
begin
  EditButton(SpeedButton256.Name);
end;

procedure TFrmOpenTabs.SpeedButton257Click(Sender: TObject);
begin
  EditButton(SpeedButton257.Name);
end;

procedure TFrmOpenTabs.SpeedButton258Click(Sender: TObject);
begin
  EditButton(SpeedButton258.Name);
end;

procedure TFrmOpenTabs.SpeedButton259Click(Sender: TObject);
begin
  EditButton(SpeedButton259.Name);
end;

procedure TFrmOpenTabs.SpeedButton25Click(Sender: TObject);
begin
  EditButton(SpeedButton25.Name);
end;

procedure TFrmOpenTabs.SpeedButton260Click(Sender: TObject);
begin
  EditButton(SpeedButton260.Name);
end;

procedure TFrmOpenTabs.SpeedButton261Click(Sender: TObject);
begin
  EditButton(SpeedButton261.Name);
end;

procedure TFrmOpenTabs.SpeedButton262Click(Sender: TObject);
begin
  EditButton(SpeedButton262.Name);
end;

procedure TFrmOpenTabs.SpeedButton263Click(Sender: TObject);
begin
  EditButton(SpeedButton263.Name);
end;

procedure TFrmOpenTabs.SpeedButton264Click(Sender: TObject);
begin
  EditButton(SpeedButton264.Name);
end;

procedure TFrmOpenTabs.SpeedButton265Click(Sender: TObject);
begin
  EditButton(SpeedButton265.Name);
end;

procedure TFrmOpenTabs.SpeedButton266Click(Sender: TObject);
begin
  EditButton(SpeedButton266.Name);
end;

procedure TFrmOpenTabs.SpeedButton267Click(Sender: TObject);
begin
  EditButton(SpeedButton267.Name);
end;

procedure TFrmOpenTabs.SpeedButton268Click(Sender: TObject);
begin
  EditButton(SpeedButton268.Name);
end;

procedure TFrmOpenTabs.SpeedButton269Click(Sender: TObject);
begin
  EditButton(SpeedButton269.Name);
end;

procedure TFrmOpenTabs.SpeedButton26Click(Sender: TObject);
begin
  EditButton(SpeedButton26.Name);
end;

procedure TFrmOpenTabs.SpeedButton270Click(Sender: TObject);
begin
  EditButton(SpeedButton270.Name);
end;

procedure TFrmOpenTabs.SpeedButton271Click(Sender: TObject);
begin
  EditButton(SpeedButton271.Name);
end;

procedure TFrmOpenTabs.SpeedButton272Click(Sender: TObject);
begin
  EditButton(SpeedButton272.Name);
end;

procedure TFrmOpenTabs.SpeedButton273Click(Sender: TObject);
begin
  EditButton(SpeedButton273.Name);
end;

procedure TFrmOpenTabs.SpeedButton274Click(Sender: TObject);
begin
  EditButton(SpeedButton274.Name);
end;

procedure TFrmOpenTabs.SpeedButton275Click(Sender: TObject);
begin
  EditButton(SpeedButton275.Name);
end;

procedure TFrmOpenTabs.SpeedButton276Click(Sender: TObject);
begin
  EditButton(SpeedButton276.Name);
end;

procedure TFrmOpenTabs.SpeedButton277Click(Sender: TObject);
begin
  EditButton(SpeedButton277.Name);
end;

procedure TFrmOpenTabs.SpeedButton278Click(Sender: TObject);
begin
  EditButton(SpeedButton278.Name);
end;

procedure TFrmOpenTabs.SpeedButton279Click(Sender: TObject);
begin
  EditButton(SpeedButton279.Name);
end;

procedure TFrmOpenTabs.SpeedButton27Click(Sender: TObject);
begin
  EditButton(SpeedButton27.Name);
end;

procedure TFrmOpenTabs.SpeedButton280Click(Sender: TObject);
begin
  EditButton(SpeedButton280.Name);
end;

procedure TFrmOpenTabs.SpeedButton28Click(Sender: TObject);
begin
  EditButton(SpeedButton28.Name);
end;

procedure TFrmOpenTabs.SpeedButton29Click(Sender: TObject);
begin
  EditButton(SpeedButton29.Name);
end;

procedure TFrmOpenTabs.SpeedButton2Click(Sender: TObject);
begin
  EditButton(SpeedButton2.Name);
end;

procedure TFrmOpenTabs.SpeedButton30Click(Sender: TObject);
begin
  EditButton(SpeedButton30.Name);
end;

procedure TFrmOpenTabs.SpeedButton31Click(Sender: TObject);
begin
  EditButton(SpeedButton31.Name);
end;

procedure TFrmOpenTabs.SpeedButton32Click(Sender: TObject);
begin
  EditButton(SpeedButton32.Name);
end;

procedure TFrmOpenTabs.SpeedButton33Click(Sender: TObject);
begin
  EditButton(SpeedButton33.Name);
end;

procedure TFrmOpenTabs.SpeedButton34Click(Sender: TObject);
begin
  EditButton(SpeedButton34.Name);
end;

procedure TFrmOpenTabs.SpeedButton35Click(Sender: TObject);
begin
  EditButton(SpeedButton35.Name);
end;

procedure TFrmOpenTabs.SpeedButton36Click(Sender: TObject);
begin
  EditButton(SpeedButton36.Name);
end;

procedure TFrmOpenTabs.SpeedButton37Click(Sender: TObject);
begin
  EditButton(SpeedButton37.Name);
end;

procedure TFrmOpenTabs.SpeedButton38Click(Sender: TObject);
begin
  EditButton(SpeedButton38.Name);
end;

procedure TFrmOpenTabs.SpeedButton39Click(Sender: TObject);
begin
  EditButton(SpeedButton39.Name);
end;

procedure TFrmOpenTabs.SpeedButton3Click(Sender: TObject);
begin
  EditButton(SpeedButton3.Name);
end;

procedure TFrmOpenTabs.SpeedButton40Click(Sender: TObject);
begin
  EditButton(SpeedButton40.Name);
end;

procedure TFrmOpenTabs.SpeedButton41Click(Sender: TObject);
begin
  EditButton(SpeedButton41.Name);
end;

procedure TFrmOpenTabs.SpeedButton42Click(Sender: TObject);
begin
  EditButton(SpeedButton42.Name);
end;

procedure TFrmOpenTabs.SpeedButton43Click(Sender: TObject);
begin
  EditButton(SpeedButton43.Name);
end;

procedure TFrmOpenTabs.SpeedButton44Click(Sender: TObject);
begin
  EditButton(SpeedButton44.Name);
end;

procedure TFrmOpenTabs.SpeedButton45Click(Sender: TObject);
begin
  EditButton(SpeedButton45.Name);
end;

procedure TFrmOpenTabs.SpeedButton46Click(Sender: TObject);
begin
  EditButton(SpeedButton46.Name);
end;

procedure TFrmOpenTabs.SpeedButton47Click(Sender: TObject);
begin
  EditButton(SpeedButton47.Name);
end;

procedure TFrmOpenTabs.SpeedButton48Click(Sender: TObject);
begin
  EditButton(SpeedButton48.Name);
end;

procedure TFrmOpenTabs.SpeedButton49Click(Sender: TObject);
begin
  EditButton(SpeedButton49.Name);
end;

procedure TFrmOpenTabs.SpeedButton4Click(Sender: TObject);
begin
  EditButton(SpeedButton4.Name);
end;

procedure TFrmOpenTabs.SpeedButton50Click(Sender: TObject);
begin
  EditButton(SpeedButton50.Name);
end;

procedure TFrmOpenTabs.SpeedButton51Click(Sender: TObject);
begin
  EditButton(SpeedButton51.Name);
end;

procedure TFrmOpenTabs.SpeedButton52Click(Sender: TObject);
begin
  EditButton(SpeedButton52.Name);
end;

procedure TFrmOpenTabs.SpeedButton53Click(Sender: TObject);
begin
  EditButton(SpeedButton53.Name);
end;

procedure TFrmOpenTabs.SpeedButton54Click(Sender: TObject);
begin
  EditButton(SpeedButton54.Name);
end;

procedure TFrmOpenTabs.SpeedButton55Click(Sender: TObject);
begin
  EditButton(SpeedButton55.Name);
end;

procedure TFrmOpenTabs.SpeedButton56Click(Sender: TObject);
begin
  EditButton(SpeedButton56.Name);
end;

procedure TFrmOpenTabs.SpeedButton57Click(Sender: TObject);
begin
  EditButton(SpeedButton57.Name);
end;

procedure TFrmOpenTabs.SpeedButton58Click(Sender: TObject);
begin
  EditButton(SpeedButton58.Name);
end;

procedure TFrmOpenTabs.SpeedButton59Click(Sender: TObject);
begin
  EditButton(SpeedButton59.Name);
end;

procedure TFrmOpenTabs.SpeedButton5Click(Sender: TObject);
begin
  EditButton(SpeedButton5.Name);
end;

procedure TFrmOpenTabs.SpeedButton60Click(Sender: TObject);
begin
  EditButton(SpeedButton60.Name);
end;

procedure TFrmOpenTabs.SpeedButton61Click(Sender: TObject);
begin
  EditButton(SpeedButton61.Name);
end;

procedure TFrmOpenTabs.SpeedButton62Click(Sender: TObject);
begin
  EditButton(SpeedButton62.Name);
end;

procedure TFrmOpenTabs.SpeedButton63Click(Sender: TObject);
begin
  EditButton(SpeedButton63.Name);
end;

procedure TFrmOpenTabs.SpeedButton64Click(Sender: TObject);
begin
  EditButton(SpeedButton64.Name);
end;

procedure TFrmOpenTabs.SpeedButton65Click(Sender: TObject);
begin
  EditButton(SpeedButton65.Name);
end;

procedure TFrmOpenTabs.SpeedButton66Click(Sender: TObject);
begin
  EditButton(SpeedButton66.Name);
end;

procedure TFrmOpenTabs.SpeedButton67Click(Sender: TObject);
begin
  EditButton(SpeedButton67.Name);
end;

procedure TFrmOpenTabs.SpeedButton68Click(Sender: TObject);
begin
  EditButton(SpeedButton68.Name);
end;

procedure TFrmOpenTabs.SpeedButton69Click(Sender: TObject);
begin
  EditButton(SpeedButton69.Name);
end;

procedure TFrmOpenTabs.SpeedButton6Click(Sender: TObject);
begin
  EditButton(SpeedButton6.Name);
end;

procedure TFrmOpenTabs.SpeedButton70Click(Sender: TObject);
begin
  EditButton(SpeedButton70.Name);
end;

procedure TFrmOpenTabs.SpeedButton71Click(Sender: TObject);
begin
  EditButton(SpeedButton71.Name);
end;

procedure TFrmOpenTabs.SpeedButton72Click(Sender: TObject);
begin
  EditButton(SpeedButton72.Name);
end;

procedure TFrmOpenTabs.SpeedButton73Click(Sender: TObject);
begin
  EditButton(SpeedButton73.Name);
end;

procedure TFrmOpenTabs.SpeedButton74Click(Sender: TObject);
begin
  EditButton(SpeedButton74.Name);
end;

procedure TFrmOpenTabs.SpeedButton75Click(Sender: TObject);
begin
  EditButton(SpeedButton75.Name);
end;

procedure TFrmOpenTabs.SpeedButton76Click(Sender: TObject);
begin
  EditButton(SpeedButton74.Name);
end;

procedure TFrmOpenTabs.SpeedButton77Click(Sender: TObject);
begin
  EditButton(SpeedButton77.Name);
end;

procedure TFrmOpenTabs.SpeedButton78Click(Sender: TObject);
begin
  EditButton(SpeedButton78.Name);
end;

procedure TFrmOpenTabs.SpeedButton79Click(Sender: TObject);
begin
  EditButton(SpeedButton79.Name);
end;

procedure TFrmOpenTabs.SpeedButton7Click(Sender: TObject);
begin
  EditButton(SpeedButton7.Name);
end;

procedure TFrmOpenTabs.SpeedButton80Click(Sender: TObject);
begin
  EditButton(SpeedButton80.Name);
end;

procedure TFrmOpenTabs.SpeedButton81Click(Sender: TObject);
begin
  EditButton(SpeedButton81.Name);
end;

procedure TFrmOpenTabs.SpeedButton82Click(Sender: TObject);
begin
  EditButton(SpeedButton82.Name);
end;

procedure TFrmOpenTabs.SpeedButton83Click(Sender: TObject);
begin
  EditButton(SpeedButton83.Name);
end;

procedure TFrmOpenTabs.SpeedButton84Click(Sender: TObject);
begin
  EditButton(SpeedButton84.Name);
end;

procedure TFrmOpenTabs.SpeedButton85Click(Sender: TObject);
begin
  EditButton(SpeedButton85.Name);
end;

procedure TFrmOpenTabs.SpeedButton86Click(Sender: TObject);
begin
  EditButton(SpeedButton86.Name);
end;

procedure TFrmOpenTabs.SpeedButton87Click(Sender: TObject);
begin
  EditButton(SpeedButton87.Name);
end;

procedure TFrmOpenTabs.SpeedButton88Click(Sender: TObject);
begin
  EditButton(SpeedButton88.Name);
end;

procedure TFrmOpenTabs.SpeedButton89Click(Sender: TObject);
begin
  EditButton(SpeedButton89.Name);
end;

procedure TFrmOpenTabs.SpeedButton8Click(Sender: TObject);
begin
  EditButton(SpeedButton8.Name);
end;

procedure TFrmOpenTabs.SpeedButton90Click(Sender: TObject);
begin
  EditButton(SpeedButton90.Name);
end;

procedure TFrmOpenTabs.SpeedButton91Click(Sender: TObject);
begin
  EditButton(SpeedButton91.Name);
end;

procedure TFrmOpenTabs.SpeedButton92Click(Sender: TObject);
begin
  EditButton(SpeedButton92.Name);
end;

procedure TFrmOpenTabs.SpeedButton93Click(Sender: TObject);
begin
  EditButton(SpeedButton93.Name);
end;

procedure TFrmOpenTabs.SpeedButton94Click(Sender: TObject);
begin
  EditButton(SpeedButton94.Name);
end;

procedure TFrmOpenTabs.SpeedButton95Click(Sender: TObject);
begin
  EditButton(SpeedButton95.Name);
end;

procedure TFrmOpenTabs.SpeedButton96Click(Sender: TObject);
begin
  EditButton(SpeedButton96.Name);
end;

procedure TFrmOpenTabs.SpeedButton97Click(Sender: TObject);
begin
  EditButton(SpeedButton97.Name);
end;

procedure TFrmOpenTabs.SpeedButton98Click(Sender: TObject);
begin
  EditButton(SpeedButton98.Name);
end;

procedure TFrmOpenTabs.SpeedButton99Click(Sender: TObject);
begin
  EditButton(SpeedButton99.Name);
end;

procedure TFrmOpenTabs.SpeedButton9Click(Sender: TObject);
begin
  EditButton(SpeedButton9.Name);
end;

procedure TFrmOpenTabs.tableBtnClicked(Sender: TObject);
var
  tabID: Integer;
begin
  if Sender.ClassType = TSpeedButton then
  begin
    tabId := TSpeedButton(Sender).Tag;
    With DMMidas do
    begin
      SQLQuery.Close;
      SQLQuery.sql.Text := 'Select tab_id from BUTTONS_MOBILE_DETAIL where ID = ' + IntToStr(tabId);
      SQLQuery.Open;
      if SQLQuery.FieldByName('tab_id').Value = 0 then
      begin
        With INSERT_NEWTAB do
        begin
          CommonPOS.DisconnectFromDatabase;
          if CDSTransHeadTOTAL.Value > 0 then
          begin
            Prepare;
            ParamByName('@SERVER').Value := UserRights.UserNO;
            ParamByName('@TRANNO').Value := CommonPOS.Header;
            ParamByName('@CUSTOMER').Value := Trim(Copy(TSpeedButton(Sender).Caption, 1,45));
            ParamByName('@TELEPHONE').Value := '';
            ParamByName('@CREDITCARD').Value := '';
            ParamByName('@BALANCE').Value := CDSTransHeadTOTAL.asFloat;
            ParamByName('@BUTTON_ID').Value := tabId;
            ParamByName('@TRANS_TYPE').Value := 'S';
            ParamByName('@ISTABLE').Value := 1;
            ExecProc;
            TSpeedButton(Sender).Tag := ParamByName('@LASTIDENTITY').Value;
            cdsTabsHeader.Close;
            cdsTabsHeader.CommandText := 'Select * from TABS_HEADER where ID = ' + chr(39) + IntToStr(tabID) + chr(39);
            cdsTabsHeader.Open;
            if cdsTabsDetailTRANSACTIONNUMBER.Value > 0 then
            begin
              Queries.OpentTransHeader(cdsTabsDetailTRANSACTIONNUMBER.Value,false);
              {With DMMidas.CDSTransHead do
              begin
                Active := False;
                Params[0].Value := cdsTabsDetailTRANSACTIONNUMBER.Value;
                Active := True;
              end;}
              //CommonPOS.TAB_EditName(cdsTabsDetailCUSTOMER.AsString, cdsTabsDetailTELEPHONE.AsString, cdsTabsDetailTRANSACTIONNUMBER.AsString, BtnName);
            end;
            //LoadButtons;
          end;
        end;
        FrmPOSRest.btnPrintReceipt.Click;
        FrmPOSRest.btnDone.Click;
        FrmOpenTabs.Close;
      end
      else
      begin
        if CDSTransShow.Active then
        begin
          if (CDSTransShow.RecordCount > 0) then
          begin
            CommonPOS.ShowMessageStr('Please select an empty table!',12, clRed);
            Exit;
          end;
        end;
        cdsOpenTabs.Close;
        cdsOpenTabs.CommandText := 'Select * from OPEN_TABS where GROUP_BY_ID = ' + SQLQuery.FieldByName('tab_id').asString; //cdsOpenTabsGROUP_BY_ID.AsString;
        cdsOpenTabs.Open;
        if cdsOpenTabs.RecordCount > 1 then
        begin
          pcMain.ActivePageIndex := 0;
        end
        else
        begin
          CommonPOS.RecallTransaction(cdsTabsDetailTRANSACTIONNUMBER.Value);
          Self.Close;
        end;
      end;
    end;
  end;
end;

procedure TFrmOpenTabs.ToolButton10Click(Sender: TObject);
begin
  LocateTab('J');
end;

procedure TFrmOpenTabs.ToolButton11Click(Sender: TObject);
begin
  LocateTab('K');
end;

procedure TFrmOpenTabs.ToolButton12Click(Sender: TObject);
begin
  LocateTab('L');
end;

procedure TFrmOpenTabs.ToolButton13Click(Sender: TObject);
begin
  LocateTab('M');
end;

procedure TFrmOpenTabs.ToolButton14Click(Sender: TObject);
begin
  LocateTab('N');
end;

procedure TFrmOpenTabs.ToolButton15Click(Sender: TObject);
begin
  LocateTab('O');
end;

procedure TFrmOpenTabs.ToolButton16Click(Sender: TObject);
begin
  LocateTab('P');
end;

procedure TFrmOpenTabs.ToolButton17Click(Sender: TObject);
begin
  LocateTab('Q');
end;

procedure TFrmOpenTabs.ToolButton18Click(Sender: TObject);
begin
  LocateTab('R');
end;

procedure TFrmOpenTabs.ToolButton19Click(Sender: TObject);
begin
  LocateTab('S');
end;

procedure TFrmOpenTabs.ToolButton1Click(Sender: TObject);
begin
  LocateTab('A');
end;

procedure TFrmOpenTabs.ToolButton20Click(Sender: TObject);
begin
  LocateTab('T');
end;

procedure TFrmOpenTabs.ToolButton21Click(Sender: TObject);
begin
  LocateTab('U');
end;

procedure TFrmOpenTabs.ToolButton22Click(Sender: TObject);
begin
  LocateTab('V');
end;

procedure TFrmOpenTabs.ToolButton23Click(Sender: TObject);
begin
  LocateTab('W');
end;

procedure TFrmOpenTabs.ToolButton24Click(Sender: TObject);
begin
  LocateTab('X');
end;

procedure TFrmOpenTabs.ToolButton25Click(Sender: TObject);
begin
  LocateTab('Y');
end;

procedure TFrmOpenTabs.ToolButton26Click(Sender: TObject);
begin
  LocateTab('Z');
end;

procedure TFrmOpenTabs.ToolButton2Click(Sender: TObject);
begin
  LocateTab('B');
end;

procedure TFrmOpenTabs.ToolButton3Click(Sender: TObject);
begin
  LocateTab('C');
end;

procedure TFrmOpenTabs.ToolButton4Click(Sender: TObject);
begin
  LocateTab('D');
end;

procedure TFrmOpenTabs.ToolButton5Click(Sender: TObject);
begin
  LocateTab('E');
end;

procedure TFrmOpenTabs.ToolButton6Click(Sender: TObject);
begin
  LocateTab('F');
end;

procedure TFrmOpenTabs.ToolButton7Click(Sender: TObject);
begin
  LocateTab('G');
end;

procedure TFrmOpenTabs.ToolButton8Click(Sender: TObject);
begin
  LocateTab('H');
end;

procedure TFrmOpenTabs.ToolButton9Click(Sender: TObject);
begin
  LocateTab('I');
end;

function TFrmOpenTabs.findButton(BtnName, BtnCaption: String; Balance: double): Boolean;
Var
  pnl: TComponent;
  BlobStream: TStream;
  Image2: TBitmap;
  SpaceLoc: Integer;
begin
  if Copy(BtnName,1,5) <> 'sbCat' then
  begin
    SpaceLoc := POS(' ',BtnCaption);
    if SpaceLoc > 1 then
    begin
      BtnCaption := Trim(copy(BtnCaption,1,SpaceLoc-1) + chr(13) + copy(BtnCaption,SpaceLoc+1,20));
    end;
  end
  else
    BtnCaption := BtnCaption;
  pnl := FindComponent(BtnName);
  if pnl is TSpeedButton then
  begin
    TSpeedButton(pnl).Visible := True;
    TSpeedButton(pnl).Tag := Tag;
    TSpeedButton(pnl).Font.Size := 10;
    TSpeedButton(pnl).Font.Style := [fsBold];
    if Balance > 0 then
      TSpeedButton(pnl).Caption := BtnCaption + CHR(13) + Format('%m', [Balance])
    else
      TSpeedButton(pnl).Caption := BtnCaption;
  end;
end;

procedure TFrmOpenTabs.LoadButtons;
Var
  ID: String;
begin
  With DMMidas do
  begin
    cdsTabsHeader.Close;
    cdsTabsHeader.CommandText := 'Select * from Tabs_Header order by ID';
    cdsTabsHeader.Open;
    cdsTabsHeader.First;
    while not cdsTabsHeader.Eof do
    begin
      findButton( cdsTabsHeaderBUTTON_NAME.AsString.Trim , cdsTabsHeaderBUTTON_CAPTION.AsString.Trim, cdsTabsHeaderGROUP_BALANCE.asfloat);
      cdsTabsHeader.Next;
    end;
    cdsTabsDetail.Close;
    cdsTabsDetail.CommandText := 'Select * from TABS_DETAIL ORDER BY CUSTOMER'; //where BALANCE > 0
    cdsTabsDetail.Open;

    TabSheet1.Caption := sbCatT1.Caption;
    TabSheet2.Caption := sbCatT2.Caption;
    TabSheet3.Caption := sbCatT3.Caption;
    TabSheet4.Caption := sbCatT4.Caption;
    TabSheet5.Caption := sbCatT5.Caption;

    if CDSTransHeadTRANSACTIONNUMBER.Value > 0 then
    begin
      cdsOpenTabs.Close;
      cdsOpenTabs.CommandText := 'Select * from OPEN_TABS where TransactionNumber = ' + CDSTransHeadTRANSACTIONNUMBER.AsString +  ' order by Customer'; //BALANCE > 0 and
      cdsOpenTabs.Open;
      if cdsOpenTabs.RecordCount >= 1 then
      begin
        ID := cdsOpenTabsID.AsString;
        cdsOpenTabs.Close;
        cdsOpenTabs.CommandText := 'Select * from OPEN_TABS where ID = ' + ID + ' order by Customer';
        cdsOpenTabs.Open;
        Self.Caption := 'All group TABS';
        if cdsOpenTabs.RecordCount = 1 then
        begin
          cdsOpenTabs.Close;
          cdsOpenTabs.CommandText := 'Select * from OPEN_TABS order by Customer'; //where BALANCE > 0
          cdsOpenTabs.Open;
          Self.Caption := 'All open TABS';
        end;
      end
      else
      begin
        cdsOpenTabs.Close;
        cdsOpenTabs.CommandText := 'Select * from OPEN_TABS order by Customer'; //where BALANCE > 0
        cdsOpenTabs.Open;
        Self.Caption := 'All open TABS';
      end;
    end
    else
    begin
      cdsOpenTabs.Close;
      cdsOpenTabs.CommandText := 'Select * from OPEN_TABS order by Customer'; //where BALANCE > 0
      cdsOpenTabs.Open;
    end;
  end;
end;

procedure TFrmOpenTabs.LocateTab(Token: String);
begin
  With DMMidas do
  begin
    cdsOpenTabs.First;
    cdsOpenTabs.Locate('CUSTOMER', Token, [loPartialkey, loCaseInsensitive]);
  end;
end;

procedure TFrmOpenTabs.RenderTableBtns(id, option: Integer);
var
  btn: TSpeedButton;
  i: Integer;
begin
  ClearGridPanel(GridPanelTables);
  if option = 0 then
  begin
    with DMMidas do
    begin
      cdsBUTTONS_MOBILE_DETAIL.Close;
      cdsBUTTONS_MOBILE_DETAIL.CommandText := 'select * from  BUTTONS_MOBILE_DETAIL where category_id = ' + IntToStr(id) + ' order by category_id';
      cdsBUTTONS_MOBILE_DETAIL.Open;

      while not cdsBUTTONS_MOBILE_DETAIL.Eof do
      begin
        btn := TSpeedButton.Create(Self);
        btn.Align := TAlign.alClient;
        btn.AlignWithMargins := True;
        btn.Margins.Top := 5;
        btn.Margins.Right := 20;
        btn.Margins.Left := 20;
        btn.Margins.Bottom := 5;
        btn.Font.Height := 25;
        btn.Caption := cdsBUTTONS_MOBILE_DETAILdescription.Value + ' '+ chr(13) + Format('%m', [cdsBUTTONS_MOBILE_DETAILBalance.AsFloat]);
        btn.Tag := cdsBUTTONS_MOBILE_DETAILid.Value;
        btn.OnClick := tableBtnClicked;
        GridPanelTables.ControlCollection.AddControl(btn, cdsBUTTONS_MOBILE_DETAILcol.Value, cdsBUTTONS_MOBILE_DETAILrow.Value);
        btn.Parent := GridPanelTables;

        cdsBUTTONS_MOBILE_DETAIL.Next;
      end;
    end;
  end
  else if option = 1  then
  begin
    with DMMidas do
    begin
      cdsBUTTONS_MOBILE_DETAIL.Close;
      cdsBUTTONS_MOBILE_DETAIL.CommandText := 'select * from  BUTTONS_MOBILE_DETAIL where category_id = ' + IntToStr(id) + ' order by category_id';
      cdsBUTTONS_MOBILE_DETAIL.Open;

      while not cdsBUTTONS_MOBILE_DETAIL.Eof do
      begin
        btn := TSpeedButton.Create(Self);
        btn.Align := TAlign.alClient;
        btn.AlignWithMargins := True;
        btn.Margins.Top := 5;
        btn.Margins.Right := 20;
        btn.Margins.Left := 20;
        btn.Margins.Bottom := 5;
        btn.Font.Height := 25;
        btn.Caption := cdsBUTTONS_MOBILE_DETAILdescription.Value + ' '+ chr(13) + Format('%m', [cdsBUTTONS_MOBILE_DETAILBalance.AsFloat]);
        btn.Tag := cdsBUTTONS_MOBILE_DETAILid.Value;
        btn.OnClick := editTableBtn;
        GridPanelTables.ControlCollection.AddControl(btn, cdsBUTTONS_MOBILE_DETAILcol.Value, cdsBUTTONS_MOBILE_DETAILrow.Value);
        btn.Parent := GridPanelTables;

        cdsBUTTONS_MOBILE_DETAIL.Next;
      end;
      for I := 0 to 24 - cdsBUTTONS_MOBILE_DETAIL.RecordCount do
      begin
        btn := TSpeedButton.Create(nil);
        btn.Align := TAlign.alClient;
        btn.AlignWithMargins := True;
        btn.Margins.Top := 5;
        btn.Margins.right := 20;
        btn.Margins.left := 20;
        btn.Margins.bottom := 5;
        btn.Font.Height := 25;
        btn.Font.Color := clInactiveCaption;
        btn.Caption := 'empty';
        btn.Visible := True;
        btn.Parent := GridPanelTables;
        btn.Tag := 0;
        btn.OnClick := editTableBtn;
        GridPanelTables.ControlCollection.AddControl(btn);
      end;

    end;
  end;
end;

procedure TFrmOpenTabs.Savetables1Click(Sender: TObject);
begin
  GridPanelTables.Tag := 0;
  CreateButtons;
  RenderTableBtns(btnHeaderId, 0);
  self.Close;
end;

procedure TFrmOpenTabs.sbCatT1Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 0;
  EditButton(sbCatT1.Name);
end;

procedure TFrmOpenTabs.sbCatT2Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 1;
  EditButton(sbCatT2.Name);
end;

procedure TFrmOpenTabs.sbCatT3Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 2;
  EditButton(sbCatT3.Name);
end;

procedure TFrmOpenTabs.sbCatT4Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 3;
  EditButton(sbCatT4.Name);
end;

procedure TFrmOpenTabs.sbCatT5Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 4;
  EditButton(sbCatT5.Name);
end;

procedure TFrmOpenTabs.ActivateButtons2Click(Sender: TObject);
begin
  Self.Tag := 0;
  SetButtonsVisibleFalse(True);
  LoadButtons;
end;

procedure TFrmOpenTabs.btnCancelTabClick(Sender: TObject);
begin
  CommonPOS.CancelTrans(DMMidas.cdsOpenTabsTRANSACTIONNUMBER.Value);
  DMMidas.cdsOpenTabs.Refresh;
  //FrmPOSRest.StatusBar2.Panels[1].Text := '';
end;

procedure TFrmOpenTabs.btnCotizacionClick(Sender: TObject);
var
  ID: String;
begin
  With DMMidas do
  begin
    ID := cdsOpenTabsID.AsString;
    cdsOpenTabs.Close;
    cdsOpenTabs.CommandText := 'Select * from OPEN_TABS WHERE TRANS_TYPE =' + CHR(39) + 'I' + CHR(39) +' ORDER BY CUSTOMER';
    cdsOpenTabs.Open;
    Self.Caption := 'Cotizaciones';
  end;
end;

procedure TFrmOpenTabs.btnDeliverClick(Sender: TObject);
Var
  ID: String;
begin
  With DMMidas do
  begin
    ID := cdsOpenTabsID.AsString;
    cdsOpenTabs.Close;
    cdsOpenTabs.CommandText := 'Select * from OPEN_TABS WHERE TRANS_TYPE =' + CHR(39) + 'D' + CHR(39) +' ORDER BY CUSTOMER';
    cdsOpenTabs.Open;
    Self.Caption := 'All Delivery';
  end;
end;


procedure TFrmOpenTabs.Button10Click(Sender: TObject);
Var
  I: Integer;
begin
  for I := 1 to 6 do
    DMMidas.cdsOpenTabs.Next;
end;

procedure TFrmOpenTabs.Button11Click(Sender: TObject);
Var
  I: Integer;
begin
  for I := 1 to 6 do
    DMMidas.cdsOpenTabs.Prior;
end;

procedure TFrmOpenTabs.btnBeginTabClick(Sender: TObject);
begin
  With DMMidas do
  begin
    if CDSTransHeadTOTAL.Value > 0 then
    begin
      if CommonPOS.StartTab(True, 0, CDSTransHeadTOTAL.asFloat, 'S') = True then Self.Close;
    end
    else
    begin
      if CommonPOS.StartTab(True, 0, 0, 'S') = True then Self.Close;
    end;
  end;
end;

function isButton(tab_id: Integer): Boolean;
var
  category_id: String;
begin
  Result := false;
  With DMMidas do
  begin
    FDQuery1.SQL.Text := 'Select * from BUTTONS_MOBILE_DETAIL where tab_id = ' + IntToStr(tab_id);
    FDQuery1.Open;
    category_id := FDQuery1.FieldByName('category_id').AsString;
    if Trim(category_id) > '' then
    begin
      FDQuery1.Close;
      FDQuery1.SQL.Text := 'Select * from BUTTONS_MOBILE_HEADER where category_id = ' + category_id;
      FDQuery1.Open;
      if FDQuery1.FieldByName('button_category').Value = 2 then Result := true;
    end;
  end;
end;

procedure TFrmOpenTabs.Addtableheader1Click(Sender: TObject);
begin
  FrmAddEditButtons := TFrmAddEditButtons.Create(self);
  With FrmAddEditButtons do
  begin
    EditProductNo.Enabled := false;
    cbAdd_ons.Enabled := false;
    SpeedButton1.Enabled := false;
    EditQty.Enabled := false;
    EditProductNo.Text := '0';
    EditQty.Text := '0';
    cbRecipe.Checked := False;
    EditDescription.Text := '';
    FrmAddEditButtons.tag := 1;
    ShowModal;
    FrmAddEditButtons := nil;
    Free;
  end;

end;

procedure TFrmOpenTabs.btnAddTableClick(Sender: TObject);
Var
  Customers, ID: String;
begin
  With DMMidas do
  begin
    if cdsOpenTabsISTABLE.Value = true then
    begin
      CommonPOS.ShowMessageStr('Please select a customer not a table!',12, clRed);
    end
    else
    begin
      if Trim(cdsOpenTabsCUSTOMER.Value) <> Trim(cdsOpenTabsGROUP_BY_NAME.Value) then
      begin
        CommonPOS.ShowMessageStr('Customer is in a group: ' + cdsOpenTabsGROUP_BY_NAME.Value ,12, clRed);
        exit;
      end;
      ID := cdsOpenTabsGROUP_BY_ID.AsString;
      cdsOpenTabs.Close;
      cdsOpenTabs.CommandText := 'Select * from OPEN_TABS where GROUP_BY_ID = ' + ID;
      cdsOpenTabs.Open;
      cdsOpenTabs.First;
      while not cdsOpenTabs.eof do
      begin
        Customers := Customers + cdsOpenTabsCUSTOMER.Value + ', ';
        cdsOpenTabs.Next;
      end;
      if MessageDlg('Do you wish to add a TAB to Group: ' + Customers,
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        {FrmGroupTabs := TFrmGroupTabs.Create(self);
        With FrmGroupTabs do
        begin
          cdsOpenTabs2.Close;
          cdsOpenTabs2.CommandText := 'Select * from OPEN_TABS where ID <> ' + ID  + ' order by ID';
          cdsOpenTabs2.Open;

          ShowModal;
          FrmGroupTabs := nil;
          Free;
        end;}


        if CommonPOS.StartTab(False, StrToInt(ID), 0, 'S') = True then Self.Close; //DMMidas.cdsOpenTabsID.Value
      end;
    end;
  end;
end;

procedure TFrmOpenTabs.btnMobileClick(Sender: TObject);
begin
  With DMMidas do
  begin
    cdsOpenTabs.Close;
    cdsOpenTabs.CommandText := 'Select * from OPEN_TABS WHERE TRANS_TYPE =' + CHR(39) + 'M' + CHR(39) +' ORDER BY CUSTOMER';
    cdsOpenTabs.Open;
    Self.Caption := 'E-Commerce';
  end;
end;

procedure TFrmOpenTabs.btnMyTabsClick(Sender: TObject);
begin
  CommonPOS.ShowMyTabs;
  Self.Caption := 'My open TABS';
end;

procedure TFrmOpenTabs.btnPrintClick(Sender: TObject);
Var
  Cred, LWay: Boolean;
  Factura: Boolean;
  Mensage, sendByemail: String;
begin
  With DMmidas do
  begin
    if CDSSetupFACTURARECIBO.Value = 'F' then
    Factura := true
      else
    Factura := false;
    if cdsOpenTabsCUSTOMER_ID.Value > 0  then
    begin
      Queries.OpenPatient('','','',cdsOpenTabsCUSTOMER_ID.Value);
      CommonPos.Customer := cdsOpenTabsCUSTOMER_ID.Value;
    end;
    if UpperCase(cdsOpenTabsTRANS_TYPE.Value) = 'I' then CommonPOS.cotizacion := true else CommonPOS.cotizacion := false;
    if UpperCase(cdsOpenTabsTRANS_TYPE.Value) = 'D' then CommonPOS.delivery := true else CommonPOS.delivery := false;
    if Trim(CDSClientesEMAIL.Value) > '' then
    begin
      if FrmMain.LanguageStr = 'English' then
        FrmMain.msgD := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 305)
      else
        FrmMain.msgD := 'Desea enviar por email?';
      if MessageDlg(FrmMain.msgD,
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          SendByeMail := '1'
        else
          SendByeMail := '0';
    end;
    //CommonPOS.PrintReceipt(DMMidas.cdsOpenTabsTRANSACTIONNUMBER.Value , 1, False, 'CASH', SendByeMail, False, False, Factura, False, False);
    Self.Close;
  end;
end;

procedure TFrmOpenTabs.btnSplitTabClick(Sender: TObject);
begin
  FrmPOSRest.btnDone.Click;
  FrmSplitTab := TFrmSplitTab.Create(nil);
  With FrmSplitTab do
  begin
    ShowModal;
    Free;
  end;
end;

procedure TFrmOpenTabs.btnEditTabsClick(Sender: TObject);
begin
  With DMMidas do
  begin
    CommonPOS.TAB_EditName(cdsOpenTabsCUSTOMER.AsString, cdsOpenTabsTELEPHONE.AsString, cdsOpenTabsTRANSACTIONNUMBER.AsString, '');
  end;
end;

procedure TFrmOpenTabs.Button7Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmOpenTabs.ClearGridPanel(panel: TGridPanel);
var
  I: Integer;
  btn: TSpeedButton;
begin
  for I := panel.ControlCollection.count  - 1 downto 0 do
  begin
    btn := panel.ControlCollection[i].Control as TSpeedButton;
    panel.ControlCollection.RemoveControl(btn);
    FreeAndNil(btn);
  end;
end;

procedure TFrmOpenTabs.btnGroupTabsClick(Sender: TObject);
Var
  ID: String;
begin
  if (btnGroupTabs.Caption = 'GROUP TABS') then
  begin
    CommonPOS.GroupTabs(DMMidas.cdsOpenTabsGROUP_BY_ID.Value);
    btnGroupTabs.Caption := 'All TABS';
  end
  else
  begin
    btnGroupTabs.Caption := 'GROUP TABS';
    With DMMidas do
    begin
      ID := cdsOpenTabsID.AsString;
      cdsOpenTabs.Close;
      cdsOpenTabs.CommandText := 'Select * from OPEN_TABS ORDER BY CUSTOMER';
      cdsOpenTabs.Open;
    end;
  end;
end;

procedure TFrmOpenTabs.BtnHeaderClick(Sender: TObject);
begin
  if GridPanelTables.Tag = 0 then  // para cambiar de un header a otro
  begin
    if Sender.ClassType = TButton then
    begin
      btnHeaderId := TButton(Sender).Tag;
      RenderTableBtns(btnHeaderId, 0);
      pcMain.ActivePage := TabSheet6;
    end;
  end
  else if GridPanelTables.Tag = 1 then
  begin
    FrmAddEditButtons := TFrmAddEditButtons.Create(self);  //Editar header button
    With FrmAddEditButtons do
    begin
      EditProductNo.Enabled := false;
      cbAdd_ons.Enabled := false;
      SpeedButton1.Enabled := false;
      EditQty.Enabled := false;
      EditProductNo.Text := '0';
      EditQty.Text := '0';
      cbRecipe.Checked := False;
      EditDescription.Text := TButton(Sender).Caption;
      EditProductNo.Text := IntToStr(TButton(Sender).Tag);
      FrmAddEditButtons.Tag := 1;
      ShowModal;
      FrmAddEditButtons := nil;
      Free;
    end;
  end;
end;

procedure TFrmOpenTabs.DBCtrlGrid1DblClick(Sender: TObject);
begin
  if CommonPOS.RecallTransaction(DMMidas.cdsOpenTabsTRANSACTIONNUMBER.Value) = False then
  begin
    CommonPOS.ShowMessageStr('You must start a new Tab for the started transaction', 12,clBlack);
  end;
  Self.Close;

end;

procedure TFrmOpenTabs.EditButton(BtnName: String);
begin
  With DMMidas do
  begin
    if (Self.Tag = 0) then
    begin
      FrmEditTabs := TFrmEditTabs.Create(NIL);
      With FrmEditTabs do
      begin
        cdsTabsHeader.Close;
        cdsTabsHeader.CommandText := 'Select * from TABS_HEADER where BUTTON_NAME = ' + chr(39) + BtnName + chr(39);
        cdsTabsHeader.Open;
        if cdsTabsHeader.RecordCount = 0 then
        begin
          cdsTabsHeader.Append;
          cdsTabsHeaderBUTTON_NAME.Value := BtnName;
        end
        else
        begin
         cdsTabsHeader.Edit;
        end;
        ShowModal;

      end;
      LoadButtons;
    end
    else
    begin
      if (Copy(BtnName,1,5) <> 'sbCat') then
      begin
        begin
          cdsTabsHeader.Close;
          cdsTabsHeader.CommandText := 'Select * from TABS_HEADER where BUTTON_NAME = ' + chr(39) + BtnName + chr(39);
          cdsTabsHeader.Open;
          if (cdsTabsHeaderGROUP_BALANCE.asFloat = 0) or (cdsTabsHeaderGROUP_BALANCE.asFloat = Null) then
          begin
            if cdsTabsDetail.RecordCount = 0 then
            begin
              With INSERT_NEWTAB do
              begin
                CommonPOS.DisconnectFromDatabase;
                if CDSTransHeadTOTAL.Value > 0 then
                begin
                  Prepare;
                  ParamByName('@SERVER').Value := UserRights.UserNO;
                  ParamByName('@TRANNO').Value := CommonPOS.Header;
                  ParamByName('@CUSTOMER').Value := Trim(Copy(cdsTabsHeaderBUTTON_CAPTION.Value, 1,45));
                  ParamByName('@TELEPHONE').Value := '';
                  ParamByName('@CREDITCARD').Value := '';
                  ParamByName('@ID').Value := cdsTabsHeaderID.Value;
                  ParamByName('@BALANCE').Value := CDSTransHeadTOTAL.asFloat;
                  ParamByName('@BUTTON_ID').Value := 0;
                  ParamByName('@TRANS_TYPE').Value := 'S';
                  ParamByName('@ISTABLE').Value := 0;
                  ExecProc;
                end;
              end;
            end;

            cdsTabsHeader.Close;
            cdsTabsHeader.CommandText := 'Select * from TABS_HEADER where BUTTON_NAME = ' + chr(39) + BtnName + chr(39);
            cdsTabsHeader.Open;
            if cdsTabsDetailTRANSACTIONNUMBER.Value > 0 then
            begin
              Queries.OpentTransHeader(cdsTabsDetailTRANSACTIONNUMBER.Value,false);
              {With DMMidas.CDSTransHead do
              begin
                Active := False;
                Params[0].Value := cdsTabsDetailTRANSACTIONNUMBER.Value;
                Active := True;
              end;}
              CommonPOS.TAB_EditName(cdsTabsDetailCUSTOMER.AsString, cdsTabsDetailTELEPHONE.AsString, cdsTabsDetailTRANSACTIONNUMBER.AsString, BtnName);
            end;
            LoadButtons;
            FrmPOSRest.btnDone.Click;
            FrmOpenTabs.Close;
          end
          else
          begin
            cdsOpenTabs.Close;
            cdsOpenTabs.CommandText := 'Select * from OPEN_TABS where GROUP_BY_ID = ' + cdsTabsHeaderGROUP_BY_ID.AsString; //cdsOpenTabsGROUP_BY_ID.AsString;
            cdsOpenTabs.Open;
            if cdsOpenTabs.RecordCount > 1 then
            begin
              pcMain.ActivePageIndex := 0;
            end
            else
            begin
              CommonPOS.RecallTransaction(cdsTabsDetailTRANSACTIONNUMBER.Value);
              Self.Close;
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TFrmOpenTabs.editTableBtn(Sender: Tobject);
var
  Row, Column : Integer;
begin
  if Sender.ClassType = TSpeedButton then
  begin
    FrmAddEditButtons := TFrmAddEditButtons.Create(self);
    With FrmAddEditButtons do
    begin
      EditProductNo.Enabled := false;
      cbAdd_ons.Enabled := false;
      SpeedButton1.Enabled := false;
      EditQty.Enabled := false;

      if TSpeedButton(Sender).Tag = 0 then           ///New table button
      begin
        //Gets row and column of the button and stores them in global
        //variables in order to post them to the database
        GetRowColumn(Sender as TControl, Row, Column);
        roe := Row;
        col := Column;
        ///bring form to add new button///
        EditProductNo.Text := '0';
        EditQty.Text := '0';
        cbRecipe.Checked := False;
        ShowModal;
      end
      else                                          ///Edit Table button
      begin
        btnTableId := TSpeedButton(Sender).Tag;
        ///bring form to edit button///
        With DMMidas do
        begin
          cdsBUTTONS_MOBILE_DETAIL.Close;
          cdsBUTTONS_MOBILE_DETAIL.CommandText := 'Select * from BUTTONS_MOBILE_DETAIL where ID = ' + IntToStr(TSpeedButton(Sender).Tag);
          cdsBUTTONS_MOBILE_DETAIL.Open;
          if cdsBUTTONS_MOBILE_DETAIL.RecordCount > 0 then
          begin
            EditProductNo.Text := cdsBUTTONS_MOBILE_DETAILproduct_no.AsString;
            EditQty.Text := cdsBUTTONS_MOBILE_DETAILqty.asString;
            EditDescription.Text := cdsBUTTONS_MOBILE_DETAILdescription.Value;
            cbAdd_ons.Text := cdsBUTTONS_MOBILE_DETAILadd_on.Value;
            cbRecipe.Checked := cdsBUTTONS_MOBILE_DETAILrecipe.Value;
          end;
        end;
        FrmAddEditButtons.ID := TSpeedButton(Sender).Tag;
        FrmAddEditButtons.Tag := 0;
        ShowModal;
      end;
      FrmAddEditButtons := nil;
      Free;
    end;
  end;
end;

procedure TFrmOpenTabs.Edittables1Click(Sender: TObject);
var
  btn: TSpeedButton;
begin
  GridPanelTables.Tag := 1;
  RenderTableBtns(btnHeaderId, 1);
end;

procedure TFrmOpenTabs.CreateButtons;
var
  btn: TButton;
  click: Boolean;
begin
  click := True;
  pcMain.ActivePage := TabSheet6;
  with DMMidas do
  begin
    cdsBUTTONS_MOBILE_HEADER.Close;
    cdsBUTTONS_MOBILE_HEADER.CommandText := 'select * from  BUTTONS_MOBILE_HEADER where button_category = 2 order by category_id';
    cdsBUTTONS_MOBILE_HEADER.Open;
    while not cdsBUTTONS_MOBILE_HEADER.Eof do
    begin
      btn := TButton.Create(Self);
      btn.Align := TAlign.alLeft;
      btn.Parent := Panel1;
      btn.Margins.Top := 3;
      btn.Margins.Right := 3;
      btn.Margins.Left := 3;
      btn.Margins.Bottom := 3;
      btn.Width := 173;
      btn.Caption := cdsBUTTONS_MOBILE_HEADERdescription.Value;
      btn.Tag := cdsBUTTONS_MOBILE_HEADERcategory_id.Value;
      btn.OnClick := BtnHeaderClick;
      if click = True then
      begin
        btn.Click;
        click := False;
      end;
      cdsBUTTONS_MOBILE_HEADER.Next;
    end;
  end;
end;

end.
