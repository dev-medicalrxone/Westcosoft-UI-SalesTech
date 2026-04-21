unit UntPOSRest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Buttons, jpeg, pngimage,
  Grids, DBGrids, Vcl.Printers, Vcl.Clipbrd,
  Keyboard, Mask, DBCtrls, DB,
  registry, Vcl.ToolWin, Vcl.Menus, Vcl.WinXCtrls, ResourceLocalizer,
  ZylSerialPort;

type
  TFrmPOSRest = class(TForm)
    GridPanel1: TGridPanel;
    pcMain: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
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
    sbCat1: TSpeedButton;
    sbCat2: TSpeedButton;
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
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    sbCat3: TSpeedButton;
    sbCat4: TSpeedButton;
    sbCat5: TSpeedButton;
    sbCat6: TSpeedButton;
    sbCat7: TSpeedButton;
    sbCat8: TSpeedButton;
    sbCat9: TSpeedButton;
    sbCat10: TSpeedButton;
    sbCat11: TSpeedButton;
    sbCat12: TSpeedButton;
    sbCat13: TSpeedButton;
    sbCat14: TSpeedButton;
    sbCat15: TSpeedButton;
    sbCat16: TSpeedButton;
    sbCat19: TSpeedButton;
    sbCat18: TSpeedButton;
    sbCat17: TSpeedButton;
    sbCat20: TSpeedButton;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    TabSheet13: TTabSheet;
    TabSheet14: TTabSheet;
    TabSheet15: TTabSheet;
    TabSheet16: TTabSheet;
    TabSheet17: TTabSheet;
    TabSheet18: TTabSheet;
    TabSheet19: TTabSheet;
    TabSheet20: TTabSheet;
    Panel1: TPanel;
    EditSearchProd: TEdit;
    SpeedButton39: TSpeedButton;
    GridPanel3: TGridPanel;
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
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    StatusBar1: TStatusBar;
    Panel3: TPanel;
    GridPanel4: TGridPanel;
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
    GridPanel5: TGridPanel;
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
    GridPanel6: TGridPanel;
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
    GridPanel7: TGridPanel;
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
    GridPanel8: TGridPanel;
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
    GridPanel9: TGridPanel;
    SpeedButton281: TSpeedButton;
    SpeedButton282: TSpeedButton;
    SpeedButton283: TSpeedButton;
    SpeedButton284: TSpeedButton;
    SpeedButton285: TSpeedButton;
    SpeedButton286: TSpeedButton;
    SpeedButton287: TSpeedButton;
    SpeedButton288: TSpeedButton;
    SpeedButton289: TSpeedButton;
    SpeedButton290: TSpeedButton;
    SpeedButton291: TSpeedButton;
    SpeedButton292: TSpeedButton;
    SpeedButton293: TSpeedButton;
    SpeedButton294: TSpeedButton;
    SpeedButton295: TSpeedButton;
    SpeedButton296: TSpeedButton;
    SpeedButton297: TSpeedButton;
    SpeedButton298: TSpeedButton;
    SpeedButton299: TSpeedButton;
    SpeedButton300: TSpeedButton;
    SpeedButton301: TSpeedButton;
    SpeedButton302: TSpeedButton;
    SpeedButton303: TSpeedButton;
    SpeedButton304: TSpeedButton;
    SpeedButton305: TSpeedButton;
    SpeedButton306: TSpeedButton;
    SpeedButton307: TSpeedButton;
    SpeedButton308: TSpeedButton;
    SpeedButton309: TSpeedButton;
    SpeedButton310: TSpeedButton;
    SpeedButton311: TSpeedButton;
    SpeedButton312: TSpeedButton;
    SpeedButton313: TSpeedButton;
    SpeedButton314: TSpeedButton;
    SpeedButton315: TSpeedButton;
    SpeedButton316: TSpeedButton;
    SpeedButton317: TSpeedButton;
    SpeedButton318: TSpeedButton;
    SpeedButton319: TSpeedButton;
    SpeedButton320: TSpeedButton;
    GridPanel10: TGridPanel;
    SpeedButton321: TSpeedButton;
    SpeedButton322: TSpeedButton;
    SpeedButton323: TSpeedButton;
    SpeedButton324: TSpeedButton;
    SpeedButton325: TSpeedButton;
    SpeedButton326: TSpeedButton;
    SpeedButton327: TSpeedButton;
    SpeedButton328: TSpeedButton;
    SpeedButton329: TSpeedButton;
    SpeedButton330: TSpeedButton;
    SpeedButton331: TSpeedButton;
    SpeedButton332: TSpeedButton;
    SpeedButton333: TSpeedButton;
    SpeedButton334: TSpeedButton;
    SpeedButton335: TSpeedButton;
    SpeedButton336: TSpeedButton;
    SpeedButton337: TSpeedButton;
    SpeedButton338: TSpeedButton;
    SpeedButton339: TSpeedButton;
    SpeedButton340: TSpeedButton;
    SpeedButton341: TSpeedButton;
    SpeedButton342: TSpeedButton;
    SpeedButton343: TSpeedButton;
    SpeedButton344: TSpeedButton;
    SpeedButton345: TSpeedButton;
    SpeedButton346: TSpeedButton;
    SpeedButton347: TSpeedButton;
    SpeedButton348: TSpeedButton;
    SpeedButton349: TSpeedButton;
    SpeedButton350: TSpeedButton;
    SpeedButton351: TSpeedButton;
    SpeedButton352: TSpeedButton;
    SpeedButton353: TSpeedButton;
    SpeedButton354: TSpeedButton;
    SpeedButton355: TSpeedButton;
    SpeedButton356: TSpeedButton;
    SpeedButton357: TSpeedButton;
    SpeedButton358: TSpeedButton;
    SpeedButton359: TSpeedButton;
    SpeedButton360: TSpeedButton;
    GridPanel11: TGridPanel;
    SpeedButton361: TSpeedButton;
    SpeedButton362: TSpeedButton;
    SpeedButton363: TSpeedButton;
    SpeedButton364: TSpeedButton;
    SpeedButton365: TSpeedButton;
    SpeedButton366: TSpeedButton;
    SpeedButton367: TSpeedButton;
    SpeedButton368: TSpeedButton;
    SpeedButton369: TSpeedButton;
    SpeedButton370: TSpeedButton;
    SpeedButton371: TSpeedButton;
    SpeedButton372: TSpeedButton;
    SpeedButton373: TSpeedButton;
    SpeedButton374: TSpeedButton;
    SpeedButton375: TSpeedButton;
    SpeedButton376: TSpeedButton;
    SpeedButton377: TSpeedButton;
    SpeedButton378: TSpeedButton;
    SpeedButton379: TSpeedButton;
    SpeedButton380: TSpeedButton;
    SpeedButton381: TSpeedButton;
    SpeedButton382: TSpeedButton;
    SpeedButton383: TSpeedButton;
    SpeedButton384: TSpeedButton;
    SpeedButton385: TSpeedButton;
    SpeedButton386: TSpeedButton;
    SpeedButton387: TSpeedButton;
    SpeedButton388: TSpeedButton;
    SpeedButton389: TSpeedButton;
    SpeedButton390: TSpeedButton;
    SpeedButton391: TSpeedButton;
    SpeedButton392: TSpeedButton;
    SpeedButton393: TSpeedButton;
    SpeedButton394: TSpeedButton;
    SpeedButton395: TSpeedButton;
    SpeedButton396: TSpeedButton;
    SpeedButton397: TSpeedButton;
    SpeedButton398: TSpeedButton;
    SpeedButton399: TSpeedButton;
    SpeedButton400: TSpeedButton;
    Button95: TButton;
    cxDBCurrencyEdit1: TDBEdit;
    GridPanel12: TGridPanel;
    BtnOpenTabs: TButton;
    BPrecio: TButton;
    btnStartTab: TButton;
    BBorrar: TButton;
    BQty: TButton;
    btnCombine: TButton;
    BLimpiar: TButton;
    btnDone: TButton;
    btnEditMainCourse: TButton;
    btnLogout: TButton;
    Panel4: TPanel;
    Panel5: TPanel;
    pcOptions: TPageControl;
    TabSheet21: TTabSheet;
    TabSheet22: TTabSheet;
    GridPanel14: TGridPanel;
    SpeedButton401: TSpeedButton;
    SpeedButton402: TSpeedButton;
    SpeedButton403: TSpeedButton;
    SpeedButton404: TSpeedButton;
    SpeedButton405: TSpeedButton;
    SpeedButton406: TSpeedButton;
    SpeedButton407: TSpeedButton;
    SpeedButton408: TSpeedButton;
    SpeedButton409: TSpeedButton;
    SpeedButton410: TSpeedButton;
    SpeedButton411: TSpeedButton;
    SpeedButton412: TSpeedButton;
    SpeedButton413: TSpeedButton;
    SpeedButton414: TSpeedButton;
    SpeedButton415: TSpeedButton;
    SpeedButton416: TSpeedButton;
    SpeedButton417: TSpeedButton;
    SpeedButton418: TSpeedButton;
    SpeedButton419: TSpeedButton;
    SpeedButton420: TSpeedButton;
    SpeedButton421: TSpeedButton;
    SpeedButton422: TSpeedButton;
    SpeedButton423: TSpeedButton;
    SpeedButton424: TSpeedButton;
    SpeedButton425: TSpeedButton;
    SpeedButton426: TSpeedButton;
    SpeedButton427: TSpeedButton;
    SpeedButton428: TSpeedButton;
    SpeedButton429: TSpeedButton;
    SpeedButton430: TSpeedButton;
    SpeedButton431: TSpeedButton;
    SpeedButton432: TSpeedButton;
    SpeedButton433: TSpeedButton;
    SpeedButton434: TSpeedButton;
    SpeedButton435: TSpeedButton;
    SpeedButton436: TSpeedButton;
    SpeedButton437: TSpeedButton;
    SpeedButton438: TSpeedButton;
    SpeedButton439: TSpeedButton;
    SpeedButton440: TSpeedButton;
    GridPanel15: TGridPanel;
    SpeedButton441: TSpeedButton;
    SpeedButton442: TSpeedButton;
    SpeedButton443: TSpeedButton;
    SpeedButton444: TSpeedButton;
    SpeedButton445: TSpeedButton;
    SpeedButton446: TSpeedButton;
    SpeedButton447: TSpeedButton;
    SpeedButton448: TSpeedButton;
    SpeedButton449: TSpeedButton;
    SpeedButton450: TSpeedButton;
    SpeedButton451: TSpeedButton;
    SpeedButton452: TSpeedButton;
    SpeedButton453: TSpeedButton;
    SpeedButton454: TSpeedButton;
    SpeedButton455: TSpeedButton;
    SpeedButton456: TSpeedButton;
    SpeedButton457: TSpeedButton;
    SpeedButton458: TSpeedButton;
    SpeedButton459: TSpeedButton;
    SpeedButton460: TSpeedButton;
    SpeedButton461: TSpeedButton;
    SpeedButton462: TSpeedButton;
    SpeedButton463: TSpeedButton;
    SpeedButton464: TSpeedButton;
    SpeedButton465: TSpeedButton;
    SpeedButton466: TSpeedButton;
    SpeedButton467: TSpeedButton;
    SpeedButton468: TSpeedButton;
    SpeedButton469: TSpeedButton;
    SpeedButton470: TSpeedButton;
    SpeedButton471: TSpeedButton;
    SpeedButton472: TSpeedButton;
    SpeedButton473: TSpeedButton;
    SpeedButton474: TSpeedButton;
    SpeedButton475: TSpeedButton;
    SpeedButton476: TSpeedButton;
    SpeedButton477: TSpeedButton;
    SpeedButton478: TSpeedButton;
    SpeedButton479: TSpeedButton;
    SpeedButton480: TSpeedButton;
    GridPanel16: TGridPanel;
    SpeedButton481: TSpeedButton;
    SpeedButton482: TSpeedButton;
    SpeedButton483: TSpeedButton;
    SpeedButton484: TSpeedButton;
    SpeedButton485: TSpeedButton;
    SpeedButton486: TSpeedButton;
    SpeedButton487: TSpeedButton;
    SpeedButton488: TSpeedButton;
    SpeedButton489: TSpeedButton;
    SpeedButton490: TSpeedButton;
    SpeedButton491: TSpeedButton;
    SpeedButton492: TSpeedButton;
    SpeedButton493: TSpeedButton;
    SpeedButton494: TSpeedButton;
    SpeedButton495: TSpeedButton;
    SpeedButton496: TSpeedButton;
    SpeedButton497: TSpeedButton;
    SpeedButton498: TSpeedButton;
    SpeedButton499: TSpeedButton;
    SpeedButton500: TSpeedButton;
    SpeedButton501: TSpeedButton;
    SpeedButton502: TSpeedButton;
    SpeedButton503: TSpeedButton;
    SpeedButton504: TSpeedButton;
    SpeedButton505: TSpeedButton;
    SpeedButton506: TSpeedButton;
    SpeedButton507: TSpeedButton;
    SpeedButton508: TSpeedButton;
    SpeedButton509: TSpeedButton;
    SpeedButton510: TSpeedButton;
    SpeedButton511: TSpeedButton;
    SpeedButton512: TSpeedButton;
    SpeedButton513: TSpeedButton;
    SpeedButton514: TSpeedButton;
    SpeedButton515: TSpeedButton;
    SpeedButton516: TSpeedButton;
    SpeedButton517: TSpeedButton;
    SpeedButton518: TSpeedButton;
    SpeedButton519: TSpeedButton;
    SpeedButton520: TSpeedButton;
    GridPanel17: TGridPanel;
    SpeedButton521: TSpeedButton;
    SpeedButton522: TSpeedButton;
    SpeedButton523: TSpeedButton;
    SpeedButton524: TSpeedButton;
    SpeedButton525: TSpeedButton;
    SpeedButton526: TSpeedButton;
    SpeedButton527: TSpeedButton;
    SpeedButton528: TSpeedButton;
    SpeedButton529: TSpeedButton;
    SpeedButton530: TSpeedButton;
    SpeedButton531: TSpeedButton;
    SpeedButton532: TSpeedButton;
    SpeedButton533: TSpeedButton;
    SpeedButton534: TSpeedButton;
    SpeedButton535: TSpeedButton;
    SpeedButton536: TSpeedButton;
    SpeedButton537: TSpeedButton;
    SpeedButton538: TSpeedButton;
    SpeedButton539: TSpeedButton;
    SpeedButton540: TSpeedButton;
    SpeedButton541: TSpeedButton;
    SpeedButton542: TSpeedButton;
    SpeedButton543: TSpeedButton;
    SpeedButton544: TSpeedButton;
    SpeedButton545: TSpeedButton;
    SpeedButton546: TSpeedButton;
    SpeedButton547: TSpeedButton;
    SpeedButton548: TSpeedButton;
    SpeedButton549: TSpeedButton;
    SpeedButton550: TSpeedButton;
    SpeedButton551: TSpeedButton;
    SpeedButton552: TSpeedButton;
    SpeedButton553: TSpeedButton;
    SpeedButton554: TSpeedButton;
    SpeedButton555: TSpeedButton;
    SpeedButton556: TSpeedButton;
    SpeedButton557: TSpeedButton;
    SpeedButton558: TSpeedButton;
    SpeedButton559: TSpeedButton;
    SpeedButton560: TSpeedButton;
    GridPanel18: TGridPanel;
    SpeedButton561: TSpeedButton;
    SpeedButton562: TSpeedButton;
    SpeedButton563: TSpeedButton;
    SpeedButton564: TSpeedButton;
    SpeedButton565: TSpeedButton;
    SpeedButton566: TSpeedButton;
    SpeedButton567: TSpeedButton;
    SpeedButton568: TSpeedButton;
    SpeedButton569: TSpeedButton;
    SpeedButton570: TSpeedButton;
    SpeedButton571: TSpeedButton;
    SpeedButton572: TSpeedButton;
    SpeedButton573: TSpeedButton;
    SpeedButton574: TSpeedButton;
    SpeedButton575: TSpeedButton;
    SpeedButton576: TSpeedButton;
    SpeedButton577: TSpeedButton;
    SpeedButton578: TSpeedButton;
    SpeedButton579: TSpeedButton;
    SpeedButton580: TSpeedButton;
    SpeedButton581: TSpeedButton;
    SpeedButton582: TSpeedButton;
    SpeedButton583: TSpeedButton;
    SpeedButton584: TSpeedButton;
    SpeedButton585: TSpeedButton;
    SpeedButton586: TSpeedButton;
    SpeedButton587: TSpeedButton;
    SpeedButton588: TSpeedButton;
    SpeedButton589: TSpeedButton;
    SpeedButton590: TSpeedButton;
    SpeedButton591: TSpeedButton;
    SpeedButton592: TSpeedButton;
    SpeedButton593: TSpeedButton;
    SpeedButton594: TSpeedButton;
    SpeedButton595: TSpeedButton;
    SpeedButton596: TSpeedButton;
    SpeedButton597: TSpeedButton;
    SpeedButton598: TSpeedButton;
    SpeedButton599: TSpeedButton;
    SpeedButton600: TSpeedButton;
    GridPanel19: TGridPanel;
    SpeedButton601: TSpeedButton;
    SpeedButton602: TSpeedButton;
    SpeedButton603: TSpeedButton;
    SpeedButton604: TSpeedButton;
    SpeedButton605: TSpeedButton;
    SpeedButton606: TSpeedButton;
    SpeedButton607: TSpeedButton;
    SpeedButton608: TSpeedButton;
    SpeedButton609: TSpeedButton;
    SpeedButton610: TSpeedButton;
    SpeedButton611: TSpeedButton;
    SpeedButton612: TSpeedButton;
    SpeedButton613: TSpeedButton;
    SpeedButton614: TSpeedButton;
    SpeedButton615: TSpeedButton;
    SpeedButton616: TSpeedButton;
    SpeedButton617: TSpeedButton;
    SpeedButton618: TSpeedButton;
    SpeedButton619: TSpeedButton;
    SpeedButton620: TSpeedButton;
    SpeedButton621: TSpeedButton;
    SpeedButton622: TSpeedButton;
    SpeedButton623: TSpeedButton;
    SpeedButton624: TSpeedButton;
    SpeedButton625: TSpeedButton;
    SpeedButton626: TSpeedButton;
    SpeedButton627: TSpeedButton;
    SpeedButton628: TSpeedButton;
    SpeedButton629: TSpeedButton;
    SpeedButton630: TSpeedButton;
    SpeedButton631: TSpeedButton;
    SpeedButton632: TSpeedButton;
    SpeedButton633: TSpeedButton;
    SpeedButton634: TSpeedButton;
    SpeedButton635: TSpeedButton;
    SpeedButton636: TSpeedButton;
    SpeedButton637: TSpeedButton;
    SpeedButton638: TSpeedButton;
    SpeedButton639: TSpeedButton;
    SpeedButton640: TSpeedButton;
    GridPanel20: TGridPanel;
    SpeedButton641: TSpeedButton;
    SpeedButton642: TSpeedButton;
    SpeedButton643: TSpeedButton;
    SpeedButton644: TSpeedButton;
    SpeedButton645: TSpeedButton;
    SpeedButton646: TSpeedButton;
    SpeedButton647: TSpeedButton;
    SpeedButton648: TSpeedButton;
    SpeedButton649: TSpeedButton;
    SpeedButton650: TSpeedButton;
    SpeedButton651: TSpeedButton;
    SpeedButton652: TSpeedButton;
    SpeedButton653: TSpeedButton;
    SpeedButton654: TSpeedButton;
    SpeedButton655: TSpeedButton;
    SpeedButton656: TSpeedButton;
    SpeedButton657: TSpeedButton;
    SpeedButton658: TSpeedButton;
    SpeedButton659: TSpeedButton;
    SpeedButton660: TSpeedButton;
    SpeedButton661: TSpeedButton;
    SpeedButton662: TSpeedButton;
    SpeedButton663: TSpeedButton;
    SpeedButton664: TSpeedButton;
    SpeedButton665: TSpeedButton;
    SpeedButton666: TSpeedButton;
    SpeedButton667: TSpeedButton;
    SpeedButton668: TSpeedButton;
    SpeedButton669: TSpeedButton;
    SpeedButton670: TSpeedButton;
    SpeedButton671: TSpeedButton;
    SpeedButton672: TSpeedButton;
    SpeedButton673: TSpeedButton;
    SpeedButton674: TSpeedButton;
    SpeedButton675: TSpeedButton;
    SpeedButton676: TSpeedButton;
    SpeedButton677: TSpeedButton;
    SpeedButton678: TSpeedButton;
    SpeedButton679: TSpeedButton;
    SpeedButton680: TSpeedButton;
    GridPanel21: TGridPanel;
    SpeedButton681: TSpeedButton;
    SpeedButton682: TSpeedButton;
    SpeedButton683: TSpeedButton;
    SpeedButton684: TSpeedButton;
    SpeedButton685: TSpeedButton;
    SpeedButton686: TSpeedButton;
    SpeedButton687: TSpeedButton;
    SpeedButton688: TSpeedButton;
    SpeedButton689: TSpeedButton;
    SpeedButton690: TSpeedButton;
    SpeedButton691: TSpeedButton;
    SpeedButton692: TSpeedButton;
    SpeedButton693: TSpeedButton;
    SpeedButton694: TSpeedButton;
    SpeedButton695: TSpeedButton;
    SpeedButton696: TSpeedButton;
    SpeedButton697: TSpeedButton;
    SpeedButton698: TSpeedButton;
    SpeedButton699: TSpeedButton;
    SpeedButton700: TSpeedButton;
    SpeedButton701: TSpeedButton;
    SpeedButton702: TSpeedButton;
    SpeedButton703: TSpeedButton;
    SpeedButton704: TSpeedButton;
    SpeedButton705: TSpeedButton;
    SpeedButton706: TSpeedButton;
    SpeedButton707: TSpeedButton;
    SpeedButton708: TSpeedButton;
    SpeedButton709: TSpeedButton;
    SpeedButton710: TSpeedButton;
    SpeedButton711: TSpeedButton;
    SpeedButton712: TSpeedButton;
    SpeedButton713: TSpeedButton;
    SpeedButton714: TSpeedButton;
    SpeedButton715: TSpeedButton;
    SpeedButton716: TSpeedButton;
    SpeedButton717: TSpeedButton;
    SpeedButton718: TSpeedButton;
    SpeedButton719: TSpeedButton;
    SpeedButton720: TSpeedButton;
    GridPanel22: TGridPanel;
    SpeedButton721: TSpeedButton;
    SpeedButton722: TSpeedButton;
    SpeedButton723: TSpeedButton;
    SpeedButton724: TSpeedButton;
    SpeedButton725: TSpeedButton;
    SpeedButton726: TSpeedButton;
    SpeedButton727: TSpeedButton;
    SpeedButton728: TSpeedButton;
    SpeedButton729: TSpeedButton;
    SpeedButton730: TSpeedButton;
    SpeedButton731: TSpeedButton;
    SpeedButton732: TSpeedButton;
    SpeedButton733: TSpeedButton;
    SpeedButton734: TSpeedButton;
    SpeedButton735: TSpeedButton;
    SpeedButton736: TSpeedButton;
    SpeedButton737: TSpeedButton;
    SpeedButton738: TSpeedButton;
    SpeedButton739: TSpeedButton;
    SpeedButton740: TSpeedButton;
    SpeedButton741: TSpeedButton;
    SpeedButton742: TSpeedButton;
    SpeedButton743: TSpeedButton;
    SpeedButton744: TSpeedButton;
    SpeedButton745: TSpeedButton;
    SpeedButton746: TSpeedButton;
    SpeedButton747: TSpeedButton;
    SpeedButton748: TSpeedButton;
    SpeedButton749: TSpeedButton;
    SpeedButton750: TSpeedButton;
    SpeedButton751: TSpeedButton;
    SpeedButton752: TSpeedButton;
    SpeedButton753: TSpeedButton;
    SpeedButton754: TSpeedButton;
    SpeedButton755: TSpeedButton;
    SpeedButton756: TSpeedButton;
    SpeedButton757: TSpeedButton;
    SpeedButton758: TSpeedButton;
    SpeedButton759: TSpeedButton;
    SpeedButton760: TSpeedButton;
    GridPanel23: TGridPanel;
    SpeedButton761: TSpeedButton;
    SpeedButton762: TSpeedButton;
    SpeedButton763: TSpeedButton;
    SpeedButton764: TSpeedButton;
    SpeedButton765: TSpeedButton;
    SpeedButton766: TSpeedButton;
    SpeedButton767: TSpeedButton;
    SpeedButton768: TSpeedButton;
    SpeedButton769: TSpeedButton;
    SpeedButton770: TSpeedButton;
    SpeedButton771: TSpeedButton;
    SpeedButton772: TSpeedButton;
    SpeedButton773: TSpeedButton;
    SpeedButton774: TSpeedButton;
    SpeedButton775: TSpeedButton;
    SpeedButton776: TSpeedButton;
    SpeedButton777: TSpeedButton;
    SpeedButton778: TSpeedButton;
    SpeedButton779: TSpeedButton;
    SpeedButton780: TSpeedButton;
    SpeedButton781: TSpeedButton;
    SpeedButton782: TSpeedButton;
    SpeedButton783: TSpeedButton;
    SpeedButton784: TSpeedButton;
    SpeedButton785: TSpeedButton;
    SpeedButton786: TSpeedButton;
    SpeedButton787: TSpeedButton;
    SpeedButton788: TSpeedButton;
    SpeedButton789: TSpeedButton;
    SpeedButton790: TSpeedButton;
    SpeedButton791: TSpeedButton;
    SpeedButton792: TSpeedButton;
    SpeedButton793: TSpeedButton;
    SpeedButton794: TSpeedButton;
    SpeedButton795: TSpeedButton;
    SpeedButton796: TSpeedButton;
    SpeedButton797: TSpeedButton;
    SpeedButton798: TSpeedButton;
    SpeedButton799: TSpeedButton;
    SpeedButton800: TSpeedButton;
    cxButton22: TButton;
    LabelCustomer: TLabel;
    Panel8: TPanel;
    Panel7: TPanel;
    GridPanel13: TGridPanel;
    btnPickup: TButton;
    btnCloseRegister: TButton;
    btnRefund: TButton;
    cxButton23: TButton;
    cxButton16: TButton;
    cxButton6: TButton;
    cxButton18: TButton;
    EditProd: TEdit;
    btnEditButtons: TButton;
    popupEditButtons: TPopupMenu;
    EditButtons1: TMenuItem;
    SaveButtons1: TMenuItem;
    btnNoChargeTax: TButton;
    TabSheet23: TTabSheet;
    GridPanel24: TGridPanel;
    btnRecallTrans: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button9: TButton;
    Button11: TButton;
    Button13: TButton;
    Button14: TButton;
    Button8: TButton;
    Button12: TButton;
    Button10: TButton;
    RzBitBtn16: TButton;
    RzBitBtn23: TButton;
    BPrecio1: TButton;
    btnCommission: TButton;
    rgSearchBy: TRadioGroup;
    ZylSerialPort1: TZylSerialPort;
    Label7: TLabel;
    DBText7: TDBText;
    Panel9: TPanel;
    lblTotal: TLabel;
    DBText3: TDBText;
    DBTextRedTax: TDBText;
    lblRedTax: TLabel;
    lblStateTax: TLabel;
    DBTextStateTax: TDBText;
    DBTextMunTax: TDBText;
    lblMunTax: TLabel;
    lblSubTotal: TLabel;
    DBTextSubTotal: TDBText;
    Panel10: TPanel;
    btnPrintReceipt: TButton;
    btnCheckout: TButton;
    Panel11: TPanel;
    LabelRecibido: TLabel;
    LabelCambio: TLabel;
    DBTextDiscount: TDBText;
    lblDiscount: TLabel;
    DBTextFSA: TDBText;
    DBTextOtcCard: TDBText;
    lblFSA: TLabel;
    lblOtcCard: TLabel;
    BalloonHint1: TBalloonHint;
    Panel6: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    TabSheet24: TTabSheet;
    procedure FormShow(Sender: TObject);
    function findButton(BtnName, BtnCaption: String; Tag: integer): Boolean;
    procedure FormCreate(Sender: TObject);
    procedure EditButton(BtnName: String);
    Procedure LoadButtons;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
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
    procedure sbCat1Click(Sender: TObject);
    procedure sbCat2Click(Sender: TObject);
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
    procedure sbCat3Click(Sender: TObject);
    procedure sbCat4Click(Sender: TObject);
    procedure sbCat5Click(Sender: TObject);
    procedure sbCat6Click(Sender: TObject);
    procedure sbCat7Click(Sender: TObject);
    procedure sbCat8Click(Sender: TObject);
    procedure sbCat9Click(Sender: TObject);
    procedure sbCat10Click(Sender: TObject);
    procedure sbCat11Click(Sender: TObject);
    procedure sbCat12Click(Sender: TObject);
    procedure sbCat13Click(Sender: TObject);
    procedure sbCat14Click(Sender: TObject);
    procedure sbCat15Click(Sender: TObject);
    procedure SetButtonsVisibleFalse(FT: Boolean);
    procedure SpeedButton41Click(Sender: TObject);
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
    procedure SpeedButton42Click(Sender: TObject);
    procedure SpeedButton43Click(Sender: TObject);
    procedure SpeedButton44Click(Sender: TObject);
    procedure SpeedButton65Click(Sender: TObject);
    procedure SpeedButton66Click(Sender: TObject);
    procedure SpeedButton67Click(Sender: TObject);
    procedure SpeedButton68Click(Sender: TObject);
    procedure SpeedButton69Click(Sender: TObject);
    procedure SpeedButton70Click(Sender: TObject);
    procedure SpeedButton71Click(Sender: TObject);
    procedure SpeedButton72Click(Sender: TObject);
    procedure SpeedButton73Click(Sender: TObject);
    procedure SpeedButton74Click(Sender: TObject);
    procedure SpeedButton75Click(Sender: TObject);
    procedure SpeedButton76Click(Sender: TObject);
    procedure SpeedButton77Click(Sender: TObject);
    procedure SpeedButton78Click(Sender: TObject);
    procedure SpeedButton80Click(Sender: TObject);
    procedure SpeedButton79Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BLimpiarClick(Sender: TObject);
    procedure cxButton33Click(Sender: TObject);
    procedure RzBitBtn23Click(Sender: TObject);
    procedure BBorrarClick(Sender: TObject);
    procedure BPrecioClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BQtyClick(Sender: TObject);
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
    procedure SpeedButton81Click(Sender: TObject);
    procedure SpeedButton82Click(Sender: TObject);
    procedure SpeedButton83Click(Sender: TObject);
    procedure SpeedButton84Click(Sender: TObject);
    procedure SpeedButton105Click(Sender: TObject);
    procedure SpeedButton106Click(Sender: TObject);
    procedure SpeedButton107Click(Sender: TObject);
    procedure SpeedButton108Click(Sender: TObject);
    procedure SpeedButton109Click(Sender: TObject);
    procedure SpeedButton110Click(Sender: TObject);
    procedure SpeedButton111Click(Sender: TObject);
    procedure SpeedButton112Click(Sender: TObject);
    procedure SpeedButton113Click(Sender: TObject);
    procedure SpeedButton114Click(Sender: TObject);
    procedure SpeedButton115Click(Sender: TObject);
    procedure SpeedButton116Click(Sender: TObject);
    procedure SpeedButton117Click(Sender: TObject);
    procedure SpeedButton118Click(Sender: TObject);
    procedure SpeedButton120Click(Sender: TObject);
    procedure SpeedButton119Click(Sender: TObject);
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
    procedure SpeedButton141Click(Sender: TObject);
    procedure SpeedButton142Click(Sender: TObject);
    procedure SpeedButton143Click(Sender: TObject);
    procedure SpeedButton144Click(Sender: TObject);
    procedure SpeedButton121Click(Sender: TObject);
    procedure SpeedButton122Click(Sender: TObject);
    procedure SpeedButton123Click(Sender: TObject);
    procedure SpeedButton124Click(Sender: TObject);
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
    procedure SpeedButton160Click(Sender: TObject);
    procedure SpeedButton159Click(Sender: TObject);
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
    procedure SpeedButton179Click(Sender: TObject);
    procedure SpeedButton180Click(Sender: TObject);
    procedure SpeedButton181Click(Sender: TObject);
    procedure SpeedButton182Click(Sender: TObject);
    procedure SpeedButton183Click(Sender: TObject);
    procedure SpeedButton184Click(Sender: TObject);
    procedure SpeedButton161Click(Sender: TObject);
    procedure SpeedButton162Click(Sender: TObject);
    procedure SpeedButton163Click(Sender: TObject);
    procedure SpeedButton164Click(Sender: TObject);
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
    procedure SpeedButton200Click(Sender: TObject);
    procedure SpeedButton199Click(Sender: TObject);
    procedure SpeedButton205Click(Sender: TObject);
    procedure SpeedButton206Click(Sender: TObject);
    procedure SpeedButton207Click(Sender: TObject);
    procedure SpeedButton208Click(Sender: TObject);
    procedure SpeedButton209Click(Sender: TObject);
    procedure SpeedButton210Click(Sender: TObject);
    procedure SpeedButton211Click(Sender: TObject);
    procedure SpeedButton212Click(Sender: TObject);
    procedure SpeedButton213Click(Sender: TObject);
    procedure SpeedButton214Click(Sender: TObject);
    procedure SpeedButton215Click(Sender: TObject);
    procedure SpeedButton216Click(Sender: TObject);
    procedure SpeedButton217Click(Sender: TObject);
    procedure SpeedButton218Click(Sender: TObject);
    procedure SpeedButton219Click(Sender: TObject);
    procedure SpeedButton220Click(Sender: TObject);
    procedure SpeedButton221Click(Sender: TObject);
    procedure SpeedButton222Click(Sender: TObject);
    procedure SpeedButton223Click(Sender: TObject);
    procedure SpeedButton224Click(Sender: TObject);
    procedure SpeedButton201Click(Sender: TObject);
    procedure SpeedButton202Click(Sender: TObject);
    procedure SpeedButton203Click(Sender: TObject);
    procedure SpeedButton204Click(Sender: TObject);
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
    procedure SpeedButton235Click(Sender: TObject);
    procedure SpeedButton236Click(Sender: TObject);
    procedure SpeedButton237Click(Sender: TObject);
    procedure SpeedButton238Click(Sender: TObject);
    procedure SpeedButton240Click(Sender: TObject);
    procedure SpeedButton239Click(Sender: TObject);
    procedure SpeedButton245Click(Sender: TObject);
    procedure SpeedButton246Click(Sender: TObject);
    procedure SpeedButton247Click(Sender: TObject);
    procedure SpeedButton248Click(Sender: TObject);
    procedure SpeedButton249Click(Sender: TObject);
    procedure SpeedButton250Click(Sender: TObject);
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
    procedure SpeedButton241Click(Sender: TObject);
    procedure SpeedButton242Click(Sender: TObject);
    procedure SpeedButton243Click(Sender: TObject);
    procedure SpeedButton244Click(Sender: TObject);
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
    procedure SpeedButton280Click(Sender: TObject);
    procedure SpeedButton279Click(Sender: TObject);
    procedure SpeedButton285Click(Sender: TObject);
    procedure SpeedButton286Click(Sender: TObject);
    procedure SpeedButton287Click(Sender: TObject);
    procedure SpeedButton288Click(Sender: TObject);
    procedure SpeedButton289Click(Sender: TObject);
    procedure SpeedButton290Click(Sender: TObject);
    procedure SpeedButton291Click(Sender: TObject);
    procedure SpeedButton292Click(Sender: TObject);
    procedure SpeedButton293Click(Sender: TObject);
    procedure SpeedButton294Click(Sender: TObject);
    procedure SpeedButton295Click(Sender: TObject);
    procedure SpeedButton296Click(Sender: TObject);
    procedure SpeedButton297Click(Sender: TObject);
    procedure SpeedButton298Click(Sender: TObject);
    procedure SpeedButton299Click(Sender: TObject);
    procedure SpeedButton300Click(Sender: TObject);
    procedure SpeedButton301Click(Sender: TObject);
    procedure SpeedButton302Click(Sender: TObject);
    procedure SpeedButton303Click(Sender: TObject);
    procedure SpeedButton304Click(Sender: TObject);
    procedure SpeedButton281Click(Sender: TObject);
    procedure SpeedButton282Click(Sender: TObject);
    procedure SpeedButton283Click(Sender: TObject);
    procedure SpeedButton284Click(Sender: TObject);
    procedure SpeedButton305Click(Sender: TObject);
    procedure SpeedButton306Click(Sender: TObject);
    procedure SpeedButton307Click(Sender: TObject);
    procedure SpeedButton308Click(Sender: TObject);
    procedure SpeedButton309Click(Sender: TObject);
    procedure SpeedButton310Click(Sender: TObject);
    procedure SpeedButton311Click(Sender: TObject);
    procedure SpeedButton312Click(Sender: TObject);
    procedure SpeedButton313Click(Sender: TObject);
    procedure SpeedButton314Click(Sender: TObject);
    procedure SpeedButton315Click(Sender: TObject);
    procedure SpeedButton316Click(Sender: TObject);
    procedure SpeedButton317Click(Sender: TObject);
    procedure SpeedButton318Click(Sender: TObject);
    procedure SpeedButton320Click(Sender: TObject);
    procedure SpeedButton319Click(Sender: TObject);
    procedure SpeedButton325Click(Sender: TObject);
    procedure SpeedButton326Click(Sender: TObject);
    procedure SpeedButton327Click(Sender: TObject);
    procedure SpeedButton328Click(Sender: TObject);
    procedure SpeedButton329Click(Sender: TObject);
    procedure SpeedButton330Click(Sender: TObject);
    procedure SpeedButton331Click(Sender: TObject);
    procedure SpeedButton332Click(Sender: TObject);
    procedure SpeedButton333Click(Sender: TObject);
    procedure SpeedButton334Click(Sender: TObject);
    procedure SpeedButton335Click(Sender: TObject);
    procedure SpeedButton336Click(Sender: TObject);
    procedure SpeedButton337Click(Sender: TObject);
    procedure SpeedButton338Click(Sender: TObject);
    procedure SpeedButton339Click(Sender: TObject);
    procedure SpeedButton340Click(Sender: TObject);
    procedure SpeedButton341Click(Sender: TObject);
    procedure SpeedButton342Click(Sender: TObject);
    procedure SpeedButton343Click(Sender: TObject);
    procedure SpeedButton344Click(Sender: TObject);
    procedure SpeedButton321Click(Sender: TObject);
    procedure SpeedButton322Click(Sender: TObject);
    procedure SpeedButton323Click(Sender: TObject);
    procedure SpeedButton324Click(Sender: TObject);
    procedure SpeedButton345Click(Sender: TObject);
    procedure SpeedButton346Click(Sender: TObject);
    procedure SpeedButton347Click(Sender: TObject);
    procedure SpeedButton348Click(Sender: TObject);
    procedure SpeedButton349Click(Sender: TObject);
    procedure SpeedButton350Click(Sender: TObject);
    procedure SpeedButton351Click(Sender: TObject);
    procedure SpeedButton352Click(Sender: TObject);
    procedure SpeedButton353Click(Sender: TObject);
    procedure SpeedButton354Click(Sender: TObject);
    procedure SpeedButton355Click(Sender: TObject);
    procedure SpeedButton356Click(Sender: TObject);
    procedure SpeedButton357Click(Sender: TObject);
    procedure SpeedButton358Click(Sender: TObject);
    procedure SpeedButton360Click(Sender: TObject);
    procedure SpeedButton359Click(Sender: TObject);
    procedure SpeedButton365Click(Sender: TObject);
    procedure SpeedButton366Click(Sender: TObject);
    procedure SpeedButton367Click(Sender: TObject);
    procedure SpeedButton368Click(Sender: TObject);
    procedure SpeedButton369Click(Sender: TObject);
    procedure SpeedButton370Click(Sender: TObject);
    procedure SpeedButton371Click(Sender: TObject);
    procedure SpeedButton372Click(Sender: TObject);
    procedure SpeedButton373Click(Sender: TObject);
    procedure SpeedButton374Click(Sender: TObject);
    procedure SpeedButton375Click(Sender: TObject);
    procedure SpeedButton376Click(Sender: TObject);
    procedure SpeedButton377Click(Sender: TObject);
    procedure SpeedButton378Click(Sender: TObject);
    procedure SpeedButton379Click(Sender: TObject);
    procedure SpeedButton380Click(Sender: TObject);
    procedure SpeedButton381Click(Sender: TObject);
    procedure SpeedButton382Click(Sender: TObject);
    procedure SpeedButton383Click(Sender: TObject);
    procedure SpeedButton384Click(Sender: TObject);
    procedure SpeedButton361Click(Sender: TObject);
    procedure SpeedButton362Click(Sender: TObject);
    procedure SpeedButton363Click(Sender: TObject);
    procedure SpeedButton364Click(Sender: TObject);
    procedure SpeedButton385Click(Sender: TObject);
    procedure SpeedButton386Click(Sender: TObject);
    procedure SpeedButton387Click(Sender: TObject);
    procedure SpeedButton388Click(Sender: TObject);
    procedure SpeedButton389Click(Sender: TObject);
    procedure SpeedButton390Click(Sender: TObject);
    procedure SpeedButton391Click(Sender: TObject);
    procedure SpeedButton392Click(Sender: TObject);
    procedure SpeedButton393Click(Sender: TObject);
    procedure SpeedButton394Click(Sender: TObject);
    procedure SpeedButton395Click(Sender: TObject);
    procedure SpeedButton396Click(Sender: TObject);
    procedure SpeedButton397Click(Sender: TObject);
    procedure SpeedButton398Click(Sender: TObject);
    procedure SpeedButton400Click(Sender: TObject);
    procedure SpeedButton399Click(Sender: TObject);
    procedure sbCat16Click(Sender: TObject);
    procedure sbCat17Click(Sender: TObject);
    procedure sbCat18Click(Sender: TObject);
    procedure sbCat19Click(Sender: TObject);
    procedure sbCat20Click(Sender: TObject);
    procedure BtnOpenTabsClick(Sender: TObject);
    procedure btnDoneClick(Sender: TObject);
    procedure Setbuttonsvisiblefalse1Click(Sender: TObject);
    procedure btnStartTabClick(Sender: TObject);
    procedure btnCombineClick(Sender: TObject);
    procedure btnCloseRegisterClick(Sender: TObject);
    procedure cxDBCurrencyEdit1Change(Sender: TObject);
    procedure EditSearchProdExit(Sender: TObject);
    procedure Button95Click(Sender: TObject);
    procedure btnEditMainCourseClick(Sender: TObject);
    procedure btnLogoutClick(Sender: TObject);
    procedure btnPrintReceiptClick(Sender: TObject);
    procedure EditSearchProdKeyPress(Sender: TObject; var Key: Char);
    procedure btnCheckoutClick(Sender: TObject);
    procedure btnPickupClick(Sender: TObject);
    procedure cxButton22Click(Sender: TObject);
    procedure SpeedButton405Click(Sender: TObject);
    procedure SpeedButton406Click(Sender: TObject);
    procedure SpeedButton407Click(Sender: TObject);
    procedure SpeedButton408Click(Sender: TObject);
    procedure SpeedButton409Click(Sender: TObject);
    procedure SpeedButton410Click(Sender: TObject);
    procedure SpeedButton411Click(Sender: TObject);
    procedure SpeedButton412Click(Sender: TObject);
    procedure SpeedButton413Click(Sender: TObject);
    procedure SpeedButton414Click(Sender: TObject);
    procedure SpeedButton415Click(Sender: TObject);
    procedure SpeedButton416Click(Sender: TObject);
    procedure SpeedButton417Click(Sender: TObject);
    procedure SpeedButton418Click(Sender: TObject);
    procedure SpeedButton419Click(Sender: TObject);
    procedure SpeedButton420Click(Sender: TObject);
    procedure SpeedButton421Click(Sender: TObject);
    procedure SpeedButton422Click(Sender: TObject);
    procedure SpeedButton423Click(Sender: TObject);
    procedure SpeedButton424Click(Sender: TObject);
    procedure SpeedButton401Click(Sender: TObject);
    procedure SpeedButton402Click(Sender: TObject);
    procedure SpeedButton403Click(Sender: TObject);
    procedure SpeedButton404Click(Sender: TObject);
    procedure SpeedButton425Click(Sender: TObject);
    procedure SpeedButton426Click(Sender: TObject);
    procedure SpeedButton427Click(Sender: TObject);
    procedure SpeedButton428Click(Sender: TObject);
    procedure SpeedButton429Click(Sender: TObject);
    procedure SpeedButton430Click(Sender: TObject);
    procedure SpeedButton431Click(Sender: TObject);
    procedure SpeedButton432Click(Sender: TObject);
    procedure SpeedButton433Click(Sender: TObject);
    procedure SpeedButton434Click(Sender: TObject);
    procedure SpeedButton435Click(Sender: TObject);
    procedure SpeedButton436Click(Sender: TObject);
    procedure SpeedButton437Click(Sender: TObject);
    procedure SpeedButton438Click(Sender: TObject);
    procedure SpeedButton440Click(Sender: TObject);
    procedure SpeedButton439Click(Sender: TObject);
    procedure SpeedButton445Click(Sender: TObject);
    procedure SpeedButton446Click(Sender: TObject);
    procedure SpeedButton447Click(Sender: TObject);
    procedure SpeedButton448Click(Sender: TObject);
    procedure SpeedButton449Click(Sender: TObject);
    procedure SpeedButton450Click(Sender: TObject);
    procedure SpeedButton451Click(Sender: TObject);
    procedure SpeedButton452Click(Sender: TObject);
    procedure SpeedButton453Click(Sender: TObject);
    procedure SpeedButton454Click(Sender: TObject);
    procedure SpeedButton455Click(Sender: TObject);
    procedure SpeedButton456Click(Sender: TObject);
    procedure SpeedButton457Click(Sender: TObject);
    procedure SpeedButton458Click(Sender: TObject);
    procedure SpeedButton459Click(Sender: TObject);
    procedure SpeedButton460Click(Sender: TObject);
    procedure SpeedButton461Click(Sender: TObject);
    procedure SpeedButton462Click(Sender: TObject);
    procedure SpeedButton463Click(Sender: TObject);
    procedure SpeedButton464Click(Sender: TObject);
    procedure SpeedButton441Click(Sender: TObject);
    procedure SpeedButton442Click(Sender: TObject);
    procedure SpeedButton443Click(Sender: TObject);
    procedure SpeedButton444Click(Sender: TObject);
    procedure SpeedButton465Click(Sender: TObject);
    procedure SpeedButton466Click(Sender: TObject);
    procedure SpeedButton467Click(Sender: TObject);
    procedure SpeedButton468Click(Sender: TObject);
    procedure SpeedButton469Click(Sender: TObject);
    procedure SpeedButton470Click(Sender: TObject);
    procedure SpeedButton471Click(Sender: TObject);
    procedure SpeedButton472Click(Sender: TObject);
    procedure SpeedButton473Click(Sender: TObject);
    procedure SpeedButton474Click(Sender: TObject);
    procedure SpeedButton475Click(Sender: TObject);
    procedure SpeedButton476Click(Sender: TObject);
    procedure SpeedButton477Click(Sender: TObject);
    procedure SpeedButton478Click(Sender: TObject);
    procedure SpeedButton480Click(Sender: TObject);
    procedure SpeedButton479Click(Sender: TObject);
    procedure SpeedButton485Click(Sender: TObject);
    procedure SpeedButton486Click(Sender: TObject);
    procedure SpeedButton487Click(Sender: TObject);
    procedure SpeedButton488Click(Sender: TObject);
    procedure SpeedButton489Click(Sender: TObject);
    procedure SpeedButton490Click(Sender: TObject);
    procedure SpeedButton491Click(Sender: TObject);
    procedure SpeedButton492Click(Sender: TObject);
    procedure SpeedButton493Click(Sender: TObject);
    procedure SpeedButton494Click(Sender: TObject);
    procedure SpeedButton495Click(Sender: TObject);
    procedure SpeedButton496Click(Sender: TObject);
    procedure SpeedButton497Click(Sender: TObject);
    procedure SpeedButton498Click(Sender: TObject);
    procedure SpeedButton499Click(Sender: TObject);
    procedure SpeedButton500Click(Sender: TObject);
    procedure SpeedButton501Click(Sender: TObject);
    procedure SpeedButton502Click(Sender: TObject);
    procedure SpeedButton503Click(Sender: TObject);
    procedure SpeedButton504Click(Sender: TObject);
    procedure SpeedButton481Click(Sender: TObject);
    procedure SpeedButton482Click(Sender: TObject);
    procedure SpeedButton483Click(Sender: TObject);
    procedure SpeedButton484Click(Sender: TObject);
    procedure SpeedButton505Click(Sender: TObject);
    procedure SpeedButton506Click(Sender: TObject);
    procedure SpeedButton507Click(Sender: TObject);
    procedure SpeedButton508Click(Sender: TObject);
    procedure SpeedButton509Click(Sender: TObject);
    procedure SpeedButton510Click(Sender: TObject);
    procedure SpeedButton511Click(Sender: TObject);
    procedure SpeedButton512Click(Sender: TObject);
    procedure SpeedButton513Click(Sender: TObject);
    procedure SpeedButton514Click(Sender: TObject);
    procedure SpeedButton515Click(Sender: TObject);
    procedure SpeedButton516Click(Sender: TObject);
    procedure SpeedButton517Click(Sender: TObject);
    procedure SpeedButton518Click(Sender: TObject);
    procedure SpeedButton520Click(Sender: TObject);
    procedure SpeedButton519Click(Sender: TObject);
    procedure SpeedButton525Click(Sender: TObject);
    procedure SpeedButton526Click(Sender: TObject);
    procedure SpeedButton527Click(Sender: TObject);
    procedure SpeedButton528Click(Sender: TObject);
    procedure SpeedButton529Click(Sender: TObject);
    procedure SpeedButton530Click(Sender: TObject);
    procedure SpeedButton531Click(Sender: TObject);
    procedure SpeedButton532Click(Sender: TObject);
    procedure SpeedButton533Click(Sender: TObject);
    procedure SpeedButton534Click(Sender: TObject);
    procedure SpeedButton535Click(Sender: TObject);
    procedure SpeedButton536Click(Sender: TObject);
    procedure SpeedButton537Click(Sender: TObject);
    procedure SpeedButton538Click(Sender: TObject);
    procedure SpeedButton539Click(Sender: TObject);
    procedure SpeedButton540Click(Sender: TObject);
    procedure SpeedButton541Click(Sender: TObject);
    procedure SpeedButton542Click(Sender: TObject);
    procedure SpeedButton543Click(Sender: TObject);
    procedure SpeedButton544Click(Sender: TObject);
    procedure SpeedButton521Click(Sender: TObject);
    procedure SpeedButton522Click(Sender: TObject);
    procedure SpeedButton523Click(Sender: TObject);
    procedure SpeedButton524Click(Sender: TObject);
    procedure SpeedButton545Click(Sender: TObject);
    procedure SpeedButton546Click(Sender: TObject);
    procedure SpeedButton547Click(Sender: TObject);
    procedure SpeedButton548Click(Sender: TObject);
    procedure SpeedButton549Click(Sender: TObject);
    procedure SpeedButton550Click(Sender: TObject);
    procedure SpeedButton551Click(Sender: TObject);
    procedure SpeedButton552Click(Sender: TObject);
    procedure SpeedButton553Click(Sender: TObject);
    procedure SpeedButton554Click(Sender: TObject);
    procedure SpeedButton555Click(Sender: TObject);
    procedure SpeedButton556Click(Sender: TObject);
    procedure SpeedButton557Click(Sender: TObject);
    procedure SpeedButton558Click(Sender: TObject);
    procedure SpeedButton560Click(Sender: TObject);
    procedure SpeedButton559Click(Sender: TObject);
    procedure SpeedButton565Click(Sender: TObject);
    procedure SpeedButton566Click(Sender: TObject);
    procedure SpeedButton567Click(Sender: TObject);
    procedure SpeedButton568Click(Sender: TObject);
    procedure SpeedButton569Click(Sender: TObject);
    procedure SpeedButton570Click(Sender: TObject);
    procedure SpeedButton571Click(Sender: TObject);
    procedure SpeedButton572Click(Sender: TObject);
    procedure SpeedButton573Click(Sender: TObject);
    procedure SpeedButton574Click(Sender: TObject);
    procedure SpeedButton575Click(Sender: TObject);
    procedure SpeedButton576Click(Sender: TObject);
    procedure SpeedButton577Click(Sender: TObject);
    procedure SpeedButton578Click(Sender: TObject);
    procedure SpeedButton579Click(Sender: TObject);
    procedure SpeedButton580Click(Sender: TObject);
    procedure SpeedButton581Click(Sender: TObject);
    procedure SpeedButton582Click(Sender: TObject);
    procedure SpeedButton583Click(Sender: TObject);
    procedure SpeedButton584Click(Sender: TObject);
    procedure SpeedButton561Click(Sender: TObject);
    procedure SpeedButton562Click(Sender: TObject);
    procedure SpeedButton563Click(Sender: TObject);
    procedure SpeedButton564Click(Sender: TObject);
    procedure SpeedButton585Click(Sender: TObject);
    procedure SpeedButton586Click(Sender: TObject);
    procedure SpeedButton587Click(Sender: TObject);
    procedure SpeedButton588Click(Sender: TObject);
    procedure SpeedButton589Click(Sender: TObject);
    procedure SpeedButton590Click(Sender: TObject);
    procedure SpeedButton591Click(Sender: TObject);
    procedure SpeedButton592Click(Sender: TObject);
    procedure SpeedButton593Click(Sender: TObject);
    procedure SpeedButton594Click(Sender: TObject);
    procedure SpeedButton595Click(Sender: TObject);
    procedure SpeedButton596Click(Sender: TObject);
    procedure SpeedButton597Click(Sender: TObject);
    procedure SpeedButton598Click(Sender: TObject);
    procedure SpeedButton600Click(Sender: TObject);
    procedure SpeedButton599Click(Sender: TObject);
    procedure SpeedButton605Click(Sender: TObject);
    procedure SpeedButton606Click(Sender: TObject);
    procedure SpeedButton607Click(Sender: TObject);
    procedure SpeedButton608Click(Sender: TObject);
    procedure SpeedButton609Click(Sender: TObject);
    procedure SpeedButton610Click(Sender: TObject);
    procedure SpeedButton611Click(Sender: TObject);
    procedure SpeedButton612Click(Sender: TObject);
    procedure SpeedButton613Click(Sender: TObject);
    procedure SpeedButton614Click(Sender: TObject);
    procedure SpeedButton615Click(Sender: TObject);
    procedure SpeedButton616Click(Sender: TObject);
    procedure SpeedButton617Click(Sender: TObject);
    procedure SpeedButton618Click(Sender: TObject);
    procedure SpeedButton619Click(Sender: TObject);
    procedure SpeedButton620Click(Sender: TObject);
    procedure SpeedButton621Click(Sender: TObject);
    procedure SpeedButton622Click(Sender: TObject);
    procedure SpeedButton623Click(Sender: TObject);
    procedure SpeedButton624Click(Sender: TObject);
    procedure SpeedButton601Click(Sender: TObject);
    procedure SpeedButton602Click(Sender: TObject);
    procedure SpeedButton603Click(Sender: TObject);
    procedure SpeedButton604Click(Sender: TObject);
    procedure SpeedButton625Click(Sender: TObject);
    procedure SpeedButton626Click(Sender: TObject);
    procedure SpeedButton627Click(Sender: TObject);
    procedure SpeedButton628Click(Sender: TObject);
    procedure SpeedButton629Click(Sender: TObject);
    procedure SpeedButton630Click(Sender: TObject);
    procedure SpeedButton631Click(Sender: TObject);
    procedure SpeedButton632Click(Sender: TObject);
    procedure SpeedButton633Click(Sender: TObject);
    procedure SpeedButton634Click(Sender: TObject);
    procedure SpeedButton635Click(Sender: TObject);
    procedure SpeedButton636Click(Sender: TObject);
    procedure SpeedButton637Click(Sender: TObject);
    procedure SpeedButton638Click(Sender: TObject);
    procedure SpeedButton640Click(Sender: TObject);
    procedure SpeedButton639Click(Sender: TObject);
    procedure SpeedButton645Click(Sender: TObject);
    procedure SpeedButton646Click(Sender: TObject);
    procedure SpeedButton647Click(Sender: TObject);
    procedure SpeedButton648Click(Sender: TObject);
    procedure SpeedButton649Click(Sender: TObject);
    procedure SpeedButton650Click(Sender: TObject);
    procedure SpeedButton651Click(Sender: TObject);
    procedure SpeedButton652Click(Sender: TObject);
    procedure SpeedButton653Click(Sender: TObject);
    procedure SpeedButton654Click(Sender: TObject);
    procedure SpeedButton655Click(Sender: TObject);
    procedure SpeedButton656Click(Sender: TObject);
    procedure SpeedButton657Click(Sender: TObject);
    procedure SpeedButton658Click(Sender: TObject);
    procedure SpeedButton659Click(Sender: TObject);
    procedure SpeedButton660Click(Sender: TObject);
    procedure SpeedButton661Click(Sender: TObject);
    procedure SpeedButton662Click(Sender: TObject);
    procedure SpeedButton663Click(Sender: TObject);
    procedure SpeedButton664Click(Sender: TObject);
    procedure SpeedButton641Click(Sender: TObject);
    procedure SpeedButton642Click(Sender: TObject);
    procedure SpeedButton643Click(Sender: TObject);
    procedure SpeedButton644Click(Sender: TObject);
    procedure SpeedButton665Click(Sender: TObject);
    procedure SpeedButton666Click(Sender: TObject);
    procedure SpeedButton667Click(Sender: TObject);
    procedure SpeedButton668Click(Sender: TObject);
    procedure SpeedButton669Click(Sender: TObject);
    procedure SpeedButton670Click(Sender: TObject);
    procedure SpeedButton671Click(Sender: TObject);
    procedure SpeedButton672Click(Sender: TObject);
    procedure SpeedButton673Click(Sender: TObject);
    procedure SpeedButton674Click(Sender: TObject);
    procedure SpeedButton675Click(Sender: TObject);
    procedure SpeedButton676Click(Sender: TObject);
    procedure SpeedButton677Click(Sender: TObject);
    procedure SpeedButton678Click(Sender: TObject);
    procedure SpeedButton680Click(Sender: TObject);
    procedure SpeedButton679Click(Sender: TObject);
    procedure SpeedButton685Click(Sender: TObject);
    procedure SpeedButton686Click(Sender: TObject);
    procedure SpeedButton687Click(Sender: TObject);
    procedure SpeedButton688Click(Sender: TObject);
    procedure SpeedButton689Click(Sender: TObject);
    procedure SpeedButton690Click(Sender: TObject);
    procedure SpeedButton691Click(Sender: TObject);
    procedure SpeedButton692Click(Sender: TObject);
    procedure SpeedButton693Click(Sender: TObject);
    procedure SpeedButton694Click(Sender: TObject);
    procedure SpeedButton695Click(Sender: TObject);
    procedure SpeedButton696Click(Sender: TObject);
    procedure SpeedButton697Click(Sender: TObject);
    procedure SpeedButton698Click(Sender: TObject);
    procedure SpeedButton699Click(Sender: TObject);
    procedure SpeedButton700Click(Sender: TObject);
    procedure SpeedButton701Click(Sender: TObject);
    procedure SpeedButton702Click(Sender: TObject);
    procedure SpeedButton703Click(Sender: TObject);
    procedure SpeedButton704Click(Sender: TObject);
    procedure SpeedButton681Click(Sender: TObject);
    procedure SpeedButton682Click(Sender: TObject);
    procedure SpeedButton683Click(Sender: TObject);
    procedure SpeedButton684Click(Sender: TObject);
    procedure SpeedButton705Click(Sender: TObject);
    procedure SpeedButton706Click(Sender: TObject);
    procedure SpeedButton707Click(Sender: TObject);
    procedure SpeedButton708Click(Sender: TObject);
    procedure SpeedButton709Click(Sender: TObject);
    procedure SpeedButton710Click(Sender: TObject);
    procedure SpeedButton711Click(Sender: TObject);
    procedure SpeedButton712Click(Sender: TObject);
    procedure SpeedButton713Click(Sender: TObject);
    procedure SpeedButton714Click(Sender: TObject);
    procedure SpeedButton715Click(Sender: TObject);
    procedure SpeedButton716Click(Sender: TObject);
    procedure SpeedButton717Click(Sender: TObject);
    procedure SpeedButton718Click(Sender: TObject);
    procedure SpeedButton720Click(Sender: TObject);
    procedure SpeedButton719Click(Sender: TObject);
    procedure SpeedButton725Click(Sender: TObject);
    procedure SpeedButton726Click(Sender: TObject);
    procedure SpeedButton727Click(Sender: TObject);
    procedure SpeedButton728Click(Sender: TObject);
    procedure SpeedButton729Click(Sender: TObject);
    procedure SpeedButton730Click(Sender: TObject);
    procedure SpeedButton731Click(Sender: TObject);
    procedure SpeedButton732Click(Sender: TObject);
    procedure SpeedButton733Click(Sender: TObject);
    procedure SpeedButton734Click(Sender: TObject);
    procedure SpeedButton735Click(Sender: TObject);
    procedure SpeedButton736Click(Sender: TObject);
    procedure SpeedButton737Click(Sender: TObject);
    procedure SpeedButton738Click(Sender: TObject);
    procedure SpeedButton739Click(Sender: TObject);
    procedure SpeedButton740Click(Sender: TObject);
    procedure SpeedButton741Click(Sender: TObject);
    procedure SpeedButton742Click(Sender: TObject);
    procedure SpeedButton743Click(Sender: TObject);
    procedure SpeedButton744Click(Sender: TObject);
    procedure SpeedButton721Click(Sender: TObject);
    procedure SpeedButton722Click(Sender: TObject);
    procedure SpeedButton723Click(Sender: TObject);
    procedure SpeedButton724Click(Sender: TObject);
    procedure SpeedButton745Click(Sender: TObject);
    procedure SpeedButton746Click(Sender: TObject);
    procedure SpeedButton747Click(Sender: TObject);
    procedure SpeedButton748Click(Sender: TObject);
    procedure SpeedButton749Click(Sender: TObject);
    procedure SpeedButton750Click(Sender: TObject);
    procedure SpeedButton751Click(Sender: TObject);
    procedure SpeedButton752Click(Sender: TObject);
    procedure SpeedButton753Click(Sender: TObject);
    procedure SpeedButton754Click(Sender: TObject);
    procedure SpeedButton755Click(Sender: TObject);
    procedure SpeedButton756Click(Sender: TObject);
    procedure SpeedButton757Click(Sender: TObject);
    procedure SpeedButton758Click(Sender: TObject);
    procedure SpeedButton760Click(Sender: TObject);
    procedure SpeedButton759Click(Sender: TObject);
    procedure SpeedButton765Click(Sender: TObject);
    procedure SpeedButton766Click(Sender: TObject);
    procedure SpeedButton767Click(Sender: TObject);
    procedure SpeedButton768Click(Sender: TObject);
    procedure SpeedButton769Click(Sender: TObject);
    procedure SpeedButton770Click(Sender: TObject);
    procedure SpeedButton771Click(Sender: TObject);
    procedure SpeedButton772Click(Sender: TObject);
    procedure SpeedButton773Click(Sender: TObject);
    procedure SpeedButton774Click(Sender: TObject);
    procedure SpeedButton775Click(Sender: TObject);
    procedure SpeedButton776Click(Sender: TObject);
    procedure SpeedButton777Click(Sender: TObject);
    procedure SpeedButton778Click(Sender: TObject);
    procedure SpeedButton779Click(Sender: TObject);
    procedure SpeedButton780Click(Sender: TObject);
    procedure SpeedButton781Click(Sender: TObject);
    procedure SpeedButton782Click(Sender: TObject);
    procedure SpeedButton783Click(Sender: TObject);
    procedure SpeedButton784Click(Sender: TObject);
    procedure SpeedButton761Click(Sender: TObject);
    procedure SpeedButton762Click(Sender: TObject);
    procedure SpeedButton763Click(Sender: TObject);
    procedure SpeedButton764Click(Sender: TObject);
    procedure SpeedButton785Click(Sender: TObject);
    procedure SpeedButton786Click(Sender: TObject);
    procedure SpeedButton787Click(Sender: TObject);
    procedure SpeedButton788Click(Sender: TObject);
    procedure SpeedButton789Click(Sender: TObject);
    procedure SpeedButton790Click(Sender: TObject);
    procedure SpeedButton791Click(Sender: TObject);
    procedure SpeedButton792Click(Sender: TObject);
    procedure SpeedButton793Click(Sender: TObject);
    procedure SpeedButton794Click(Sender: TObject);
    procedure SpeedButton795Click(Sender: TObject);
    procedure SpeedButton796Click(Sender: TObject);
    procedure SpeedButton797Click(Sender: TObject);
    procedure SpeedButton798Click(Sender: TObject);
    procedure SpeedButton800Click(Sender: TObject);
    procedure SpeedButton799Click(Sender: TObject);
    procedure RzBitBtn16Click(Sender: TObject);
    procedure cxButton34Click(Sender: TObject);
    procedure btnRefundClick(Sender: TObject);
    procedure cxButton23Click(Sender: TObject);
    procedure PayTransaction(PyType: String);
    procedure cxButton16Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton18Click(Sender: TObject);
    procedure EditButtons1Click(Sender: TObject);
    procedure SaveButtons1Click(Sender: TObject);
    procedure btnEditButtonsClick(Sender: TObject);
    procedure EditSearchProdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnNoChargeTaxClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ChangeTabToMain;
    procedure BPrecio1Click(Sender: TObject);
    procedure btnCommissionClick(Sender: TObject);
    procedure LoadModifiers;
    procedure StatusBar1Click(Sender: TObject);
    procedure language;
    procedure editForm(option: String);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBText2Click(Sender: TObject);
    procedure pcOptionsChange(Sender: TObject);
    procedure pcOptionsChanging(Sender: TObject; var AllowChange: Boolean);
  private
    { Private declarations }
    activePage: TTabSheet;
  public
    { Public declarations }

  end;

var
  FrmPOSRest: TFrmPOSRest;

implementation

{$R *.dfm}

uses  UntEditarBotones, UntDMMidas, UntCommonPOS, untMain, UntTabs,
  UntSplitTabs, UntPaymentType, UntBotonesModifiers, UntQueries,
  UntPrintOptionReceipt, UntCommon, UntCheckOut, UntSearchInv2, UntVendors,
  UntTripleSCoveredProducts, UntStartNewTab, UntID, UntSignature,
  UntSignatureCapture, untSignatureCapture1x5, untSignatureCapture4x3,
  untClientId, UntAddHelpAddress;

procedure TFrmPOSRest.BBorrarClick(Sender: TObject);
Var
  IDNo, TranNo: Integer;
begin
  With DMMidas do
  begin
    if CDSTransShow.Active then
    begin
      if CDSTransShow.RecordCount > 0 then
      begin
        IDNo := CDSTransShowIDNUMBER.Value;
        TranNo := CDSTransShowTRANSACTIONNUMBER.Value;
        if (CDSTransShowOTC_NUMBER.Value > 0) and
        (Copy(CDSTransShowUPC.Value,1,2) = 'RX') then
        begin
          if CommonPOS.isAuthorized('POS_DELETE_RX', UserRights.POS_DELETE_RX,true) then
          begin
            CommonPOS.BorrarProducto(TranNo, IDNo);
          end;
        end
        else
        begin
          if CommonPOS.isAuthorized('POS_DELPROD', UserRights.POS_DELPROD,true) then
          begin
            CommonPOS.BorrarProducto(TranNo, IDNo);
          end;
        end;
        EditSearchProd.SetFocus;
      end;
    end;
  end;
end;

procedure TFrmPOSRest.BLimpiarClick(Sender: TObject);
begin
  CommonPOS.CancelTrans(DMMidas.CDSTransHeadTRANSACTIONNUMBER.Value);
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSRest.BPrecio1Click(Sender: TObject);
begin
  FrmSearchInv2 := TFrmSearchInv2.Create(self);
  With FrmSearchInv2 do
  begin
    Tag := 1;
    ShowModal;
    Free;
  end;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSRest.BPrecioClick(Sender: TObject);
begin
  if (DMMidas.CDSTransShowDISCOUNT_PERCENTAGE.Value > 0) or (DMMidas.CDSTransShowSALES_PROMO.Value = true) then
  begin
    if FrmMain.LanguageStr = 'English' then
      CommonPOS.ShowMessageStr('Change price is not allowed on discounted or sales promo products.', 12, clBlack)
    else
      CommonPOS.ShowMessageSTR('Cambio de precio no es permitido en productos con descuentos o promociones.', 12,clBlack);
  end
  else
    CommonPOS.CambioPrecio;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSRest.BQtyClick(Sender: TObject);
begin
  if (DMMidas.CDSTransShowDISCOUNT_PERCENTAGE.Value > 0) or (DMMidas.CDSTransShowSALES_PROMO.Value = true) then
  begin
    if FrmMain.LanguageStr = 'English' then
      CommonPOS.ShowMessageStr('Change quantity is not allowed on discounted or sales promo products.', 12, clBlack)
    else
      CommonPOS.ShowMessageSTR('Cambio de precio no es permitido en productos con descuentos o promociones.', 12,clBlack);
  end
  else
    CommonPOS.CambioQty;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSRest.BtnOpenTabsClick(Sender: TObject);
begin
  If CommonPOS.Header <> 0 then
  begin
    if FrmMain.LanguageStr = 'English' then
      CommonPOS.ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 268), 12, clBlack)
    else
    CommonPOS.ShowMessageSTR('Hay una transacción en proceso, favor terminar', 12,clBlack);
  end
  else
  begin
    FrmOpenTabs := TFrmOpenTabs.Create(nil);
    With FrmOpenTabs do
    begin
      FrmOpenTabs.Tag := 1;
      pcMain.ActivePageIndex := 0;
      DMMidas.cdsOpenTabs.AfterScroll(DMMidas.cdsOpenTabs);
      ShowModal;
    end;
  end;
end;

procedure TFrmPOSRest.btnPickupClick(Sender: TObject);
begin
  CommonPOS.PickUp;
  ChangeTabToMain;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSRest.btnPrintReceiptClick(Sender: TObject);
begin
  if DMMidas.CDSTransShow.Active = True then
  begin
    if (DMMidas.CDSTransShow.RecordCount > 0) then
    begin
      FrmPrintOption := TFrmPrintOption.Create(nil);
      With FrmPrintOption do
      begin
        ShowModal;
      end;
    end;
  end;
end;

procedure TFrmPOSRest.btnStartTabClick(Sender: TObject);
Var
  Message: String;
begin
  try
    if CommonPOS.recalledTrans = True then
    begin
      btnDoneClick(nil);
    end
    else
    begin
      With DMMidas do
      begin
        if CommonPOS.ENFORCE_SIGNATURE_ONCHECKOUT = False then
        begin
          CommonPOS.OpenOTC(CDSOTCNUMEROCLIENTE.Value, False, False);
          CommonPOS.CallSignature(False);
          Exit;
        end;
        if (CommonPOS.Header > 0) then
        begin
          if Queries.OpenTab(CommonPOS.Header) = False then
          begin
            if CommonPOS.Restaurant = false then
            begin
              if CommonPOS.isAuthorized('',UserRights.GUARDAR_TRANSACCIONES, false) then
              begin
                CommonPOS.StartTab(True, CommonPOS.Header, CDSTransHeadTOTAL.asFloat, 'S');
              end;
            end
            else
            begin
              FrmSartNewTab := TFrmSartNewTab.Create(nil);
              With FrmSartNewTab do
              begin
                ShowModal;
                if ModalResult = mrYes then
                begin
                  FrmOpenTabs := TFrmOpenTabs.Create(nil);
                  With FrmOpenTabs do
                  begin
                    FrmOpenTabs.Tag := 1;
                    DMMidas.cdsOpenTabs.AfterScroll(DMMidas.cdsOpenTabs);
                    pcMain.ActivePageIndex := 5;
                    ShowModal;
                  end;
                end;

                if ModalResult = mrOk then
                begin
                  if CommonPOS.Customer > 0 then
                  begin
                    CommonPOS.InsertNewTab(True, Trim(Copy(CDSClientesNombreCompleto2.Value, 1,45)), Trim(Copy(CDSClientesCELULAR.Value, 1,13)), 'S', DMMidas.CDSTransHeadTOTAL.asFloat, CDSClientesNUMEROCLIENTE.Value);
                    btnDone.Click;
                  end
                  else
                  begin
                    CommonPOS.StartTab(True, CommonPOS.Header, CDSTransHeadTOTAL.asFloat, 'S');
                  end;
                end;
                FrmSartNewTab := Nil;
                Free;
              end;
            end;
          end;
        end
        else
        begin
          if CommonPOS.Restaurant = True then
            Message := 'Warning! Must enter at least one item before starting a Tab.'
          else
            Message := 'Warning! Must enter at least one item before saving the transaction.';
          if CDSTransShow.Active = True then
          begin
            if (CDSTransShow.RecordCount > 0)  then
              CommonPOS.StartTab(True, 0, 0, 'S')
            else
              CommonPOS.ShowMessageStr(Message, 12,clBlack);
          end
          else
            CommonPOS.ShowMessageStr(Message, 12,clBlack);
        end;
      end;
    end;
  except on e: Exception do
  begin
    ShowMessage('An error has occurred. Please try again.')
  end;
  end;
end;

procedure TFrmPOSRest.btnCombineClick(Sender: TObject);
begin
  btnDone.Click;
  FrmSplitTab := TFrmSplitTab.Create(nil);
  With FrmSplitTab do
  begin
    ShowModal;
    Free;
  end;
end;

procedure TFrmPOSRest.btnEditButtonsClick(Sender: TObject);
begin
  if CommonPOS.isAuthorized('POS_ADD_BUTTONS',UserRights.POS_ADD_BUTTONS,true) = True then
  begin
    if btnEditButtons.Caption = 'EDIT BUTTONS' then
    begin
      btnEditButtons.Caption := 'SAVE BUTTONS';
      Self.Tag := 0;
      SetButtonsVisibleFalse(True);
      LoadButtons;
    end
    else
    begin
      btnEditButtons.Caption := 'EDIT BUTTONS';
      Self.Tag := 1;
      SetButtonsVisibleFalse(False);
      LoadButtons;
    end;
  end;
end;

procedure TFrmPOSRest.btnCloseRegisterClick(Sender: TObject);
begin
  if CommonPOS.CanClose = true then
  begin
    CommonPOS.SendToPole(CommonPOS.CenterString(DMMidas.CDSSetupSTORENAME.Value,20),CommonPOS.CenterString('SALESTEC EXPRESS',20));
    FrmPOSRest.Close;
  end
  else
  begin
    EditSearchProd.SetFocus;
    ChangeTabToMain;
    EditSearchProd.SetFocus;
  end;
end;

procedure TFrmPOSRest.btnEditMainCourseClick(Sender: TObject);
begin
  With DMMidas do
  begin
    if CDSTransShowMAIN_COURSE_ID.Value > 0 then
    begin
      cdsMainCourse.Close;
      cdsMainCourse.CommandText := 'Select * from TransactionDetail_Temp where Main_course_id = ' + IntToStr(CDSTransShowMAIN_COURSE_ID.Value) + ' and MAIN_COURSE = 1 order by IDNumber';
      cdsMainCourse.Open;
      Queries.OpenInventory(CDSTransShowPRODUCTNO.AsString, 'POS',false);
      cdsMainCourse.Close;
      cdsMainCourse.CommandText := 'Select * from TransactionDetail_Temp where Main_course_id = ' + IntToStr(CDSTransShowMAIN_COURSE_ID.Value) + ' order by IDNumber';
      cdsMainCourse.Open;
      if cdsMainCourse.RecordCount > 0 then
      begin
        FrmModifiers := TFrmModifiers.Create(nil);
        With FrmModifiers do
        begin
          Main_Course_ID := CDSTransShowMAIN_COURSE_ID.Value;
          ShowModal;
          FrmModifiers := nil;
          Free;
        end;
      end;
    end
    else
    begin
      CommonPOS.ShowMessageSTR('Not a main course!', 12,clRed);
    end;
  end;
end;

procedure TFrmPOSRest.btnLogoutClick(Sender: TObject);
begin
  If CommonPOS.Header <> 0 then
  begin
    if FrmMain.LanguageStr = 'English' then
      CommonPOS.ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 268), 12, clBlack)
    else
    CommonPOS.ShowMessageSTR('Hay una transacción en proceso, favor terminar', 12,clBlack);
  end
  else
    Self.Close;
end;

procedure TFrmPOSRest.btnCommissionClick(Sender: TObject);
begin
  FrmVendors := TFrmVendors.Create(self);
  With FrmVendors do
  begin
    ShowModal;
    if ModalResult = mrOk then
    begin
      With DMMidas do
      begin
        FDQuery1.SQL.Text := 'Update TRANSACTIONHEADER_TEMP set SALESMAN = ' + chr(39) + CDSPasswordsINICIALES.Value + chr(39) + ' where TRANSACTIONNUMBER = ' + IntToStr(CommonPOS.TransNo);
        FDQuery1.ExecSQL;
        //LabelCustomer.Caption := 'Commission for: ' + CDSPasswordsUSERNAME.Value;
      end;
    end;
    Free;
    FrmVendors := nil;
  end;
  ChangeTabToMain;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSRest.Button95Click(Sender: TObject);
begin
  CommonPOS.FindProduct('A',1,0,false,false);
  if DMMidas.CDSInventarioPisoDESCRIPCION.Value > '' then
  begin
    EditSearchProd.text := '';
    EditProd.Text := DMMidas.CDSInventarioPisoDESCRIPCION.Value;
  end;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSRest.ChangeTabToMain;
begin
  if CommonPOS.Restaurant = True then
    pcOptions.ActivePageIndex := 0
  else
    pcOptions.ActivePageIndex := 1;
end;

procedure TFrmPOSRest.btnCheckoutClick(Sender: TObject);
Var
   Continue: Boolean;
   requireSignature, cerrar, cerrarSig: Boolean;
begin
  With DMMidas do
  begin
      if CDSTransShowOTC_NUMBER.Value > 0 then
      begin
        //
      end
      else
      begin
        if ((CDSTransShow.RecordCount > 0) and (CDSTransShowPRICE.AsFloat = 0))
        and (CDSSetupPERMIT_ZERO_MANUALSALE.Value = False)
        and (CDSTransShowKITCHEN.Value = false)
        and (CDSTransShowMAIN_COURSE.Value = false)
        and (CDSTransShowDISCOUNT_PERCENTAGE.Value = 0)
        and (CDSSetupPERMIT_ZERO_ANYSALE.Value = False) then
        begin
          if FrmMain.LanguageStr = 'English' then
            CommonPOS.ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 295), 12, clBlack)
          else
          CommonPOS.ShowMessageStr('No puede dejar el precio del ultimo producto en cero!', 12, clBlack);
          EditSearchProd.Text := '';
          EditSearchProd.SetFocus;
          exit;
        end;
      end;
  end;
  //Verify if id and signature is needed (pseudo/pepspray prods)//
  requireSignature := False;
  with DMMidas do
  begin
    CDSTransShow.First;
    while not CDSTransShow.Eof do
    begin
      if (CDSTransShowpseudo.Value = True) or (CDSTransShowpep_spray.Value = True) then
      begin
        requireSignature := true;
      end;
      CDSTransShow.Next;
    end;
    if requireSignature = True then
    begin
      //bring up the forms//
      cerrarSig := False;
      CommonPOS.productSignature := True;
      FrmClientId := TFrmClientId.Create(Self);
      With FrmClientId do
      begin
        ShowModal;
        if ModalResult = mrOK then
        begin
          if UserRights.Pesc_Sig_isIdentity = False then
          begin
            With DMMidas do
            begin
              CommonPOS.DisconnectFromDatabase;
              With SIGNATURE_LINK do
              begin
                Prepare;
                ExecProc;
                CommonPOS.SignatureLink := ParamByName('@SIGNATURE_LINK').Value;
              end;
            end;
          end;
          CommonPOS.SignatureLink := CDSTransShowTRANSACTIONNUMBER.Value;
          if Trim(CDSSetupSIGPLUS.Value) = '1x5' then
          begin
            FrmeSignatureCapture1x5 := TFrmeSignatureCapture1x5.Create(Self);
            With FrmeSignatureCapture1x5 do
            begin
              FrmeSignatureCapture1x5.Tag := 1;
              ShowModal;
              FrmeSignatureCapture1x5 := Nil;
              FrmeSignatureCapture1x5.Free;
            end;
          end
          else if Trim(CDSSetupSIGPLUS.Value) = '4x3' then
          begin
            FrmeSignatureCapture4x3 := TFrmeSignatureCapture4x3.Create(Self);
            with FrmeSignatureCapture4x3 do
            begin
              FrmeSignatureCapture4x3.Tag := 1;
              ShowModal;
              if ModalResult = mrCancel then
              begin
                cerrarSig := True;
              end;
              FrmeSignatureCapture4x3 := Nil;
              FrmeSignatureCapture4x3.Free;
              if cerrarSig = True then
                exit;
            end
          end
          else if Trim(CDSSetupSIGPLUS.Value) = '4x3-Simple' then
          begin
            FrmeSignatureCapture4x3 := TFrmeSignatureCapture4x3.Create(Self);
            With FrmeSignatureCapture4x3 do
            begin
              ShowModal;
              if ModalResult = mrCancel then
              begin
                cerrarSig := True;
              end;
              FrmeSignatureCapture4x3 := Nil;
              FrmeSignatureCapture4x3.Free;
              if cerrarSig = True then
                exit;
            end;
          end;
          CommonPOS.productSignature := False;
          FrmClientId := nil;
          FrmClientId.Free;
        end
        else
        begin
          CommonPOS.productSignature := False;
          FrmClientId := nil;
          FrmClientId.Free;
          exit
        end;
      end;
    end;
  end;

  if (CommonPOS.ENFORCE_SIGNATURE_ONCHECKOUT = true) then
  begin
    if CommonPOS.TripleS_previousBalance > 0 then
    begin
      CommonPOS.TripleS_item_validation;
      if CommonPOS.TripleS_ApprovedAmount <= 0 then
      begin
        CommonPOS.ShowMessageStr('Tiple-S Transaction not approved!', 12,clRed);
        Exit;
      end;
    end;
    if (DMMidas.CDSTransHeadBALANCE.Value = 0) and (CommonPOS.TripleS_ApprovedAmount > 0) then
    begin
      CommonPOS.CheckOut(0, 0, DMMidas.CDSTransHeadTOTAL.AsFloat - (DMMidas.CDSTransHeadTAX.AsFloat + DMMidas.CDSTransHeadTAX_ESTATAL.AsFloat), 'TSSS',
      '0', True, 1, false);    //CommonPOS.TripleS_ApprovedAmount
    end
    else
    begin
      With DMMidas do
      begin
        FrmPaymentType := TFrmPaymentType.Create(FrmPOSRest);
        With FrmPaymentType do
        begin
          if CommonPOS.TripleS_ApprovedAmount > 0 then
          begin
            FrmPaymentType.btnCancel.Enabled := False;
          end;
          if (DMMidas.CDSTransHeadBALANCE.Value <= 0.05) and
          (CommonPOS.TripleS_ApprovedAmount > 0) then
          begin
            sbATH.Enabled := false;
            sbCreditCard.Enabled := false;
            sbMobilePay.Enabled := false;
            sbCheck.Enabled := false;
            sbCreditSale.Enabled := false;
            sbDelivery.Enabled := false;
            sbPayPal.Enabled := false;
            sbOTC.Enabled := false;
          end;
          if (CommonPOS.SpinPOSActive = True) then //disable mobil pay
          begin
            //sbMobilePay.Enabled := false;   //
            sbMobilePay.Caption := 'FSA';     // cambio de boton a fsa  //[2025/12/05 jb] added
            sbMobilePay.Glyph.Assign(nil);    //[2025/12/05 jb] added
            sbOTC.Enabled := false;
          end;
          ShowModal;
        end;
        if CommonPOS.Restaurant = True then
        begin
          if CDSSetupPOS_REST_ALWAYSLOGOUT.Value = True then
          begin
            if DMMidas.CDSTransHeadCHANGE.asFloat >= 0 then FrmPOSRest.btnDone.Click;
          end;
        end;
      end;
    end;
  end;
  CommonPOS.productSignature := False;
end;

procedure TFrmPOSRest.btnDoneClick(Sender: TObject);
begin
  With DMMidas do
  begin
    if CommonPOS.DoneWorkingWithTab = True then
    begin
      CommonPOS.recalledTrans := False;
      if CommonPOS.Restaurant = True then
      begin
        if (CDSSetupPOS_REST_ALWAYSLOGOUT.Value = True) then //and (CDSTransShow.RecordCount = 0) then
        begin
          if DMMidas.CDSTransHeadCHANGE.asFloat >= 0 then
          begin
            CommonPOS.login;
            OnCreate(self);
          end;
        end;
      end;
    end;
  end;
end;

procedure TFrmPOSRest.cxButton16Click(Sender: TObject);
begin
  CommonPOS.ReprintReceipt;
  ChangeTabToMain;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSRest.cxButton18Click(Sender: TObject);
begin
  //if (DMMidas.CDSSetupPOS_APP_OPEN_DRAWER.Value = True) or
  if CommonPOS.isAuthorized('POS_OPNDRAWR',UserRights.POS_OPNDRAWR,true) then
  begin
   //CommonPOS.OpenDrawer;
    If (POS('Epson',CommonPOS.ReceiptPrinter) <> 0) OR
       (POS('EPSON',CommonPOS.ReceiptPrinter) <> 0) then
    begin
      With Printer do
      begin
        BeginDoc;
        Canvas.Font.Name := 'Control';
        if Copy(CommonPOS.ReceiptPrinter, 1, 5) = 'RP300' Then
          Canvas.TextOut(0,0,'ESC =')
        else
          Canvas.TextOut(0,0,'A');
        EndDoc;
      end;
    end
    else
    begin
      CommonPOS.SelectPrinter(CommonPOS.ReceiptPrinter);
      With Printer do
      begin
        BeginDoc;
        Canvas.Font.Name := 'Control';
        if Copy(CommonPOS.ReceiptPrinter, 1, 5) = 'RP300' Then
          Canvas.TextOut(0,0,'ESC =')
        else
          Canvas.TextOut(0,0,'A');
        EndDoc;
      end;
    end;
  end;
  EditSearchProd.SetFocus;
  ChangeTabToMain;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSRest.cxButton22Click(Sender: TObject);
begin
  CommonPos.PayOut(True);
  ChangeTabToMain;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSRest.cxButton23Click(Sender: TObject);
Var
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  //If FrmMain.IsAuthorized(AuthUser,26) then
  if CommonPOS.isAuthorized('',UserRights.POS_NCGH,false) then
    PayTransaction('NCHG');
  ChangeTabToMain;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSRest.cxButton33Click(Sender: TObject);
var
  AuthUser: String;
  PID: Integer;
begin

end;

procedure TFrmPOSRest.cxButton34Click(Sender: TObject);
begin
  With DMMidas do
  begin
    cdsOpenTabs.Close;
    cdsOpenTabs.CommandText := 'select * from OPEN_TABS where TRANSACTIONNUMBER = ' + IntToStr(CommonPOS.TransNo);
    cdsOpenTabs.Open;

    if cdsOpenTabsCUSTOMER_ID.Value > 0  then
      CommonPOS.Patrocinio(cdsOpenTabsCUSTOMER_ID.Value)
    else
      CommonPOS.Patrocinio(0);
  end;
  if DMMidas.CDSClientesINFOADICIONAL.Value > '' then
    CommonPOS.ShowMessageSTR(DMMidas.CDSClientesINFOADICIONAL.Value, 12,clBlack);
  ChangeTabToMain;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSRest.cxButton6Click(Sender: TObject);
Var
AuthUser : String;
begin
  AuthUser := CommonPOS.User;
  if CommonPOS.isAuthorized('VENTA_MANUAL',UserRights.VENTA_MANUAL,true) then
  begin
    CommonPOS.VentaManual(1);
    EditSearchProd.SetFocus;
    ChangeTabToMain;
    EditSearchProd.SetFocus;
  end;
end;

Procedure TFrmPOSRest.cxDBCurrencyEdit1Change(Sender: TObject);
begin
  {With DMMidas do
  begin
    EditSubTotal.Text := Format('%f', [DMMidas.CDSTransHeadTOTAL.asFloat - (CDSTransHeadTAX.asFloat + CDSTransHeadTAX_ESTATAL.asFloat + CDSTransHeadTAX_SERVICIO.asFloat)]);
  end;}
  if Trim(cxDBCurrencyEdit1.Text) = '' then
  begin
    CommonPOS.Supervisor := '';
  end;
end;

procedure TFrmPOSRest.DBGrid2DblClick(Sender: TObject);
var
  control: TControl;
  ScreenPos: TPoint;
  ClientPos: TPoint;
begin
  {ScreenPos := Mouse.CursorPos;
  ClientPos := DBGrid2.ScreenToClient(ScreenPos);
  //ShowMessage(Format('Image Client X: %d, Image Client Y: %d', [ClientPos.X, ClientPos.Y]));
  //control := Sender as TControl;
  panel6.Top := ClientPos.Y + 48;
  panel6.Left := ClientPos.X + 8;
  panel6.Visible := True;     }
end;

Procedure TFrmPOSRest.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  With DMMidas do
  begin
    If (CDSTransShowPRICE.AsFloat <> CDSTransShowREGPRICE.AsFloat) then
    Begin
      with (Sender as TDBGrid) do Canvas.Brush.Color := clYellow;
      with (Sender as TDBGrid) do Canvas.FillRect(Rect);
      With (Sender as TDBGrid) do Canvas.Font.Color := clRed;
    end;
    if CDSTransShowMAIN_COURSE.Value = True then
    begin
      with (Sender as TDBGrid) do Canvas.Brush.Color := clGreen;
      with (Sender as TDBGrid) do Canvas.FillRect(Rect);
      With (Sender as TDBGrid) do Canvas.Font.Color := clYellow;
    end;
    if (gdSelected in State) then
    begin
      with (Sender as TDBGrid) do
      begin
        Canvas.Brush.Color := clNavy;
        Canvas.Font.Color := clWhite;
      end;
    end;
    with (Sender as TDBGrid) do DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TFrmPOSRest.DBText2Click(Sender: TObject);
begin
  CommonPOS.TripleS_item_validation;
end;

procedure TFrmPOSRest.EditButton(BtnName: String);
Var
  INVCONTROL_RECIPE: Boolean;
begin
  With DMMidas do
  begin
    if (Self.Tag = 0) then
    begin
      FrmBotonesEdit := TFrmBotonesEdit.Create(self);
      With FrmBotonesEdit do
      begin
        if CommonPOS.Restaurant = True then
        begin
          CDSBotones.Close;
          CDSBotones.CommandText := 'Select * from BOTONES where Button_Name = ' + chr(39) + BtnName + chr(39) + ' and Retail = 0 order by BUTTON_NUMBER';
          CDSBotones.Open;
        end
        else
        begin
          CDSBotones.Close;
          CDSBotones.CommandText := 'Select * from BOTONES where Button_Name = ' + chr(39) + BtnName + chr(39) + ' and Retail = 1 order by BUTTON_NUMBER';
          CDSBotones.Open;
        end;
        if CDSBotones.RecordCount = 0 then
        begin
          CDSBotones.Append;
          CDSBotonesQTY.asFloat := 1;
          CDSBotonesBUTTON_NAME.Value := BtnName;
          CDSBotonesCATEGORY.Value := pcMain.ActivePageIndex;
        end
        else
         CDSBotones.Edit;
         CDSBotonesCATEGORY.Value := pcMain.ActivePageIndex;
        ShowModal;
      end;
      LoadButtons;
    end
    else
    begin
      if (Copy(BtnName,1,5) <> 'sbCat') then
      begin
        if CommonPOS.Restaurant = True then
        begin
          CDSBotones.Close;
          CDSBotones.CommandText := 'Select * from BOTONES where Button_Name = ' + chr(39) + BtnName + chr(39) + ' and Retail = 0 order by BUTTON_NUMBER';
          CDSBotones.Open;
        end
        else
        begin
          //if CommonPOS.StandalonePOS = True then
            //SQLBotonesFD.Connection := FDConnection2;
          CDSBotones.Close;
          CDSBotones.CommandText := 'Select * from BOTONES where Button_Name = ' + chr(39) + BtnName + chr(39) + ' and Retail = 1 order by BUTTON_NUMBER';
          CDSBotones.Open;
        end;
        INVCONTROL_RECIPE := CDSBotonesRECIPE_PRICE.Value;
        if Trim(CDSBotonesPROCEDURE_ADD_ON.Value) > '' then
        begin
          CommonPOS.Addon;
        end
        else
        begin
          if CDSBotonesASSEMBLY_YN.Value = False then
            CommonPOS.FindProduct(CDSBotonesPRODUCTNO.asString,1, CDSBotonesQTY.asFloat,INVCONTROL_RECIPE,false)
            //CommonPOS.FindProductNew('', CDSBotonesPRODUCTNO.Value)
          else
          begin
            CommonPOS.Assemblies(CDSBotonesPRODUCTNO.Value);
          end;
          if CDSInventarioPisoHAS_MODIFIER.Value = True then
          begin
            LoadModifiers;
          end;
        end;
      end;
    end;
  end;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSRest.EditButtons1Click(Sender: TObject);
begin
  if CommonPOS.isAuthorized('POS_ADD_BUTTONS', UserRights.POS_ADD_BUTTONS,true) = True then
  begin
    Self.Tag := 0;
    SetButtonsVisibleFalse(True);
    LoadButtons;
  end;
end;

procedure TFrmPOSRest.editForm(option: String);
begin
  if option = 'Wescosoft POS System' then
  begin
    lblOtcCard.Visible := True;
    lblFSA.Visible := True;
    DBTextOtcCard.Visible := True;
    DBTextFSA.Visible := True;
    lblMunTax.Visible := False;
    lblRedTax.Visible := False;
    DBTextRedTax.Visible := False;
    DBTextMunTax.Visible := False;
    lblStateTax.Top := 82;
    DBTextStateTax.Top := 82;
    DBTextStateTax.Alignment := taRightJustify;
    lblFSA.Top := 57;
    DBTextFSA.Top := 57;
    lblOtcCard.Top := 31;
    DBTextOtcCard.Top := 31;
    lblFSA.Left := 5;
    lblOtcCard.Left := 5;
    if CommonPOS.extendedPosForm = true then
    begin
      DBTextOtcCard.Left := 194;
      DBTextFSA.Left := 194;
      DBTextStateTax.Left := 194;
    end
    else
    begin
      DBTextOtcCard.Left := 149;
      DBTextFSA.Left := 149;
      DBTextStateTax.Left := 149;
    end;
  end;
  if CommonPOS.Restaurant = False then
    DBGrid2.Columns[1].Visible := False
  else
    DBGrid2.Columns[0].Visible := False
end;

procedure TFrmPOSRest.EditSearchProdExit(Sender: TObject);
begin
  With DMMidas do
  begin
    EditSearchProd.Text := UpperCase(EditSearchProd.Text);
    IF EditSearchProd.Text > '' then
    begin
      if DMMidas.CDSTransShow.Active = True then
      begin
        if (Copy(CDSTransShowUPC.Value, 1,2) <> 'RX') and (CommonPOS.VeteranoActivo = 0) then
        begin
          if CDSTransShowDISCOUNT.asFloat = 0 then
          begin
            if CommonPOS.Restaurant = False then
            begin
              if (CDSTransShow.RecordCount > 0) and (CDSTransShowPRICE.AsFloat = 0)
              and (CDSSetupPERMIT_ZERO_MANUALSALE.Value = False) then
              begin
                if FrmMain.LanguageStr = 'English' then
                  CommonPOS.ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 295), 12, clBlack)
                else
                CommonPOS.ShowMessageSTR('No puede dejar el precio del ultimo producto en cero!', 12,clBlack);
                EditSearchProd.Text := '';
                EditSearchProd.SetFocus;
                exit;
              end;
            end;
          end;
        end;
      end;
      if rgSearchBy.ItemIndex = 0 then
      begin
        FrmMain.SearchByBarcode := True;
      end
      else
      begin
        FrmMain.SearchByBarcode := False;
      end;
      CommonPOS.FindProduct(UpperCase(EditSearchProd.Text),1,0,false, FrmMain.SearchByBarcode);
      if DMMidas.CDSInventarioPisoDESCRIPCION.Value > '' then
      begin
        EditSearchProd.text := '';
        EditProd.Text := Trim(DMMidas.CDSInventarioPisoDESCRIPCION.Value) + '   Qty: ' + DMMidas.CDSTransShowQTY.AsString + '   Price: ' + Format('%m', [DMMidas.CDSTransShowPRICE.AsFloat]);
      end;
      if CDSInventarioPisoHAS_MODIFIER.Value = True then
      begin
        LoadModifiers;
      end;
      EditSearchProd.Text := '';
      EditSearchProd.SetFocus;
    end;
  end;
end;

procedure TFrmPOSRest.EditSearchProdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    //vk_F1: if CommonPOS.ENFORCE_SIGNATURE_ONCHECKOUT = true then PayTransaction('CASH');
    vk_F1: if CommonPOS.ENFORCE_SIGNATURE_ONCHECKOUT = true then CommonPOS.PayTransaction('CASH');
    vk_F2: if CommonPOS.ENFORCE_SIGNATURE_ONCHECKOUT = true then CommonPOS.PayTransaction('CRED');
    vk_F3: if CommonPOS.ENFORCE_SIGNATURE_ONCHECKOUT = true then CommonPOS.PayTransaction('ATH');
    vk_F4: if CommonPOS.ENFORCE_SIGNATURE_ONCHECKOUT = true then CommonPOS.PayTransaction('CHK');
    vk_F5: if CommonPOS.ENFORCE_SIGNATURE_ONCHECKOUT = true then CommonPOS.PayTransaction('VISA');
    vk_F6: if CommonPOS.ENFORCE_SIGNATURE_ONCHECKOUT = true then PayTransaction('LWAY');
    vk_F7: BBorrar.Click;
    vk_F8: BLimpiar.Click;
    vk_F9: BQty.Click;
    vk_F10: BPrecio.Click;
    vk_F12: btnLogout.Click;
    vk_escape:
  end;
end;


procedure TFrmPOSRest.EditSearchProdKeyPress(Sender: TObject; var Key: Char);
begin
  CommonForm.Enter2tab(Self,Key);
end;

function TFrmPOSRest.findButton(BtnName, BtnCaption: String; Tag: integer): Boolean;
Var
  pnl: TComponent;
  BlobStream: TStream;
  Image2: TBitmap;
  SpaceLoc: Integer;
begin
  SpaceLoc := POS(' ',BtnCaption);
  if SpaceLoc > 1 then
  begin
    BtnCaption := Trim(copy(BtnCaption,1,SpaceLoc-1) + chr(13) + copy(BtnCaption,SpaceLoc+1,20));
  end;
  pnl := FindComponent(BtnName);
  if pnl is TSpeedButton then
  begin
    TSpeedButton(pnl).Visible := True;
    TSpeedButton(pnl).Tag := Tag;
    if (not DMMidas.CDSBotonesBUTTON_IMAGE.IsNull) then
    begin
      BlobStream := DMMidas.CDSBotones.CreateBlobStream(DMMidas.CDSBotones.FieldByName('BUTTON_IMAGE'),bmRead);
      Image2 := TBitmap.Create;
      try
        Image2.LoadFromStream(BlobStream);
        TSpeedButton(pnl).Glyph.Assign(Image2);
      finally
        Image2.Free;
        BlobStream.Free;
      end;
      TSpeedButton(pnl).Caption := '';
    end
    else
    begin
      TSpeedButton(pnl).Caption := BtnCaption;
    end;
  end;
end;

procedure TFrmPOSRest.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmPOSRest := NIL;
end;

procedure TFrmPOSRest.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if CommonPOS.Restaurant = False then
  begin
    if CommonPOS.CanClose = true then
    begin
      CommonPOS.SendToPole(CommonPOS.CenterString(DMMidas.CDSSetupSTORENAME.Value,20),CommonPOS.CenterString('SALESTEC EXPRESS',20));
      FrmPOSRest.Close;
    end
    else
    begin
      canClose := False;
      EditSearchProd.SetFocus;
      ChangeTabToMain;
      EditSearchProd.SetFocus;
    end;
  end;
end;

procedure TFrmPOSRest.FormCreate(Sender: TObject);
Var
  MyReg: TRegistry;
  Counter: Integer;
  Image: String;
  PNGImage: TPNGImage;// TJPEGImage;
  Image2: TBitmap;
  BlobStream: TStream;
begin
  self.Height := 768;
  self.Width := 1280;
  //pcMain.ActivePageIndex := 0;
  SetButtonsVisibleFalse(False);
  LoadButtons;
  CommonPOS.VeteranoActivo := 0;
  {Try
    if CommonPOS.PoleDisplayPort > 1 then FrmMain.elSerialPort1.Open
  Except
    //
  End;}
  CommonPOS.Supervisor := '';
  CommonPOS.NoTaxCharge := True;
  With DMMidas do
  begin
    CommonPOS.DisconnectFromDatabase;
    With POS_DELETE_OPEN_TRANSACTIONS do
    begin
      Prepare;
      ParamByName('@REGISTER').Value := StrToInt(CommonPOS.RegisterNo);
      ExecProc;
    end;
    With CDSTrHeadAdHoc2 do
    begin
      Close;
      //if CommonPOS.Restaurant = True then
      if CDSSetupPOS_USER_INDIVIDUAL_BALANCING.Value = False then
      begin
        CommandText := 'Select StartBank, ID, SalesDate from DailyTotals Where Status_Caja = ' +
                    #39 + 'O' + #39 + ' and Register = ' + CommonPOS.RegisterNo;
      end
      else
      begin
        CommandText := 'Select StartBank, ID, SalesDate from DailyTotals Where Status_Caja = ' +
              #39 + 'O' + #39 + ' and Register = ' + CommonPOS.RegisterNo +
              ' and EMPLOYNUMBER = ' + chr(39) + CommonPOS.User + chr(39);
      end;
      Active := True;
    end;
    StatusBar1.Panels[1].Text := 'PETTY CASH: ' + Format('%m',[DMMidas.CDSTrHeadAdHoc2.FieldByName('STARTBANK').asFloat]);
    StatusBar1.Panels[0].Text := FrmMain.sbMain.Panels[0].Text;
    StatusBar1.Panels[2].Text := 'REGISTER NO: ' + CommonPOS.RegisterNo;
    StatusBar1.Panels[3].Text := 'ID NO: ' + DMMidas.CDSTrHeadAdHoc2.fieldbyName('ID').AsString + '       ' + FormatDateTime('mm/dd/yy', DMMidas.CDSTrHeadAdHoc2.fieldbyName('salesdate').Value);
    CommonPOS.ID := DMMidas.CDSTrHeadAdHoc2.fieldbyName('ID').asInteger;
    CommonPOS.RefundPOS := False;
    StatusBar1.Panels[0].Text := Trim(Copy(CommonPOS.UserName,1,35));
  end;
end;


procedure TFrmPOSRest.FormShow(Sender: TObject);
Var
  MyComp: TComponent;
begin
  if FrmMain.LanguageStr = 'English' then
    language;
  ChangeTabToMain;
  With DMMidas do
  begin
    if CDSSetupBTN_PRINT_RECEIPT.Value = false then
    begin
      btnPrintReceipt.Enabled := False;
    end;

    if CommonPOS.Restaurant = True then
    begin
      CDSBotones.Close;
      CDSBotones.CommandText := 'Select * from BOTONES where Retail = 0 order by BUTTON_NUMBER';
      CDSBotones.Open;
      TabSheet23.TabVisible := False;
      TabSheet21.TabVisible := True;
    end
    else
    begin
      CDSBotones.Close;
      CDSBotones.CommandText := 'Select * from BOTONES where Retail = 1 order by BUTTON_NUMBER';
      CDSBotones.Open;
      TabSheet23.TabVisible := True;
      TabSheet21.TabVisible := False;
    end;
    CDSBotones.First;
    while not CDSBotones.Eof do
    begin
      MyComp := FindComponent(DMMidas.CDSBotonesBUTTON_NAME.asString.Trim);
      if Assigned(MyComp) then CommonPOS.ShowMessageSTR('Found', 12,clBlack);
      CDSBotones.Next;
    end;
  end;
  FrmPOSRest.Caption := dmmidas.SoftwareName + ', Licenced to: ' + DMMidas.CDSSetupStoreName.Value;
  FrmPOSRest.Refresh;
  EditSearchProd.SetFocus;
  CommonPOS.LogeadoPOS(True);
  FrmPOSRest.StatusBar1.Panels[0].Text := Trim(Copy(CommonPOS.UserName,1,35));
end;

procedure TFrmPOSRest.language;
begin
  lblMunTax.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 209);
  lblStateTax.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 210);
  LabelRecibido.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 211);
  Button12.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 212);
  Button4.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 213);
  Button10.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 214);
  BPrecio.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 213);
  RzBitBtn16.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 214);
  cxButton6.Caption := TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 212);
end;

procedure TFrmPOSRest.LoadButtons;
begin
  With DMMidas do
  begin
    Try
    if CommonPOS.Restaurant = True then
    begin
      CDSBotones.Close;
      CDSBotones.CommandText := 'Select * from BOTONES where Retail = 0 order by BUTTON_NUMBER';
      CDSBotones.Open;
    end
    else
    begin
      CDSBotones.Close;
      CDSBotones.CommandText := 'Select * from BOTONES where Retail = 1 order by BUTTON_NUMBER';
      CDSBotones.Open;
    end;
    CDSBotones.First;
    while not CDSBotones.Eof do
    begin
      try
        findButton(CDSBotonesBUTTON_NAME.AsString.Trim, CDSBotonesDESCRIPTION.asString.Trim, CDSBotonesPRODUCTNO.Value);
      except
         ShowMessage(CDSBotonesDESCRIPTION.asString.Trim);
      end;
      CDSBotones.Next;
    end;
    Except
          //
    End;
  end;
  TabSheet1.Caption := sbCat1.Caption;
  TabSheet2.Caption := sbCat2.Caption;
  TabSheet3.Caption := sbCat3.Caption;
  TabSheet4.Caption := sbCat4.Caption;
  TabSheet5.Caption := sbCat5.Caption;
  TabSheet6.Caption := sbCat6.Caption;
  TabSheet7.Caption := sbCat7.Caption;
  TabSheet8.Caption := sbCat8.Caption;
  TabSheet9.Caption := sbCat9.Caption;
  TabSheet10.Caption := sbCat10.Caption;
  TabSheet11.Caption := sbCat11.Caption;
  TabSheet12.Caption := sbCat12.Caption;
  TabSheet13.Caption := sbCat13.Caption;
  TabSheet14.Caption := sbCat14.Caption;
  TabSheet15.Caption := sbCat15.Caption;
  TabSheet16.Caption := sbCat16.Caption;
  TabSheet17.Caption := sbCat17.Caption;
  TabSheet18.Caption := sbCat18.Caption;
  TabSheet19.Caption := sbCat19.Caption;
  TabSheet20.Caption := sbCat20.Caption;
end;


procedure TFrmPOSRest.LoadModifiers;
begin
  With DMMidas do
  begin
    FrmModifiers := TFrmModifiers.Create(nil);
    With FrmModifiers do
    begin
      Main_Course_ID := CommonPOS.Main_Course_ID;
      cdsMainCourse.Close;
      cdsMainCourse.CommandText := 'Select * from TransactionDetail_Temp where Main_course_id = ' + IntToStr(CommonPOS.Main_Course_ID) + ' order by IDNumber';
      cdsMainCourse.Open;
      ShowModal;
      FrmModifiers := Nil;
      Free;
    end;
  end;
end;

procedure TFrmPOSRest.RzBitBtn16Click(Sender: TObject);
Var
AuthUser : String;
begin
  AuthUser := CommonPOS.User;
  //If FrmMain.IsAuthorized(AuthUser,42) then
  if CommonPOS.isAuthorized('POS_HOLD', UserRights.POS_HOLD,true) then
  begin
    if StatusBar1.Panels[6].Text = 'HOLD' then StatusBar1.Panels[6].Text := '' else
    begin
      StatusBar1.Panels[6].Text := 'HOLD';
    end;
    CommonPOS.HoldTransaction;
    ChangeTabToMain;
    EditSearchProd.SetFocus;
  end;
end;

procedure TFrmPOSRest.RzBitBtn23Click(Sender: TObject);
begin
  if DBGrid2.FieldCount > 0 then
  begin
    if DMMidas.CDSTransShowALWDISC.Value = True then
    begin
      if StatusBar1.Panels[8].Text = '' then
        CommonPOS.Discount(False)
      else
        CommonPOS.Discount(True);
      EditSearchProd.SetFocus;
    end
    else
      CommonPOS.ShowMessageStr('This product cannot be discounted', 14, clRed);
  end
  else
  begin
    if StatusBar1.Panels[8].Text = '' then
        CommonPOS.Discount(False)
    else
      CommonPOS.Discount(True);
      EditSearchProd.SetFocus;
  end;
end;

procedure TFrmPOSRest.btnNoChargeTaxClick(Sender: TObject);
Var
  IDNo, TranNo: Integer;
  AuthUser: String;
begin
  AuthUser := CommonPOS.User;
  if CommonPOS.isAuthorized('POS_IVU', UserRights.POS_IVU,true) then
  begin
     if CommonPOS.NoTaxCharge = True then
     begin
       CommonPOS.NoTaxCharge := False;
       btnNoChargeTax.Caption := 'DO NOT CHARGE TAX';
     end
     else
     begin
       CommonPOS.NoTaxCharge := True;
       btnNoChargeTax.Caption := 'CHARGE TAX';
     end;
  end
  else
  begin
    if FrmMain.LanguageStr = 'English' then
      CommonPOS.ShowMessageStr(TResourceLocalizer.GetString (FrmMain.LanguageResOffset, 273), 12, clBlack)
    else
      CommonPOS.ShowMessageSTR('Usuario no autorizado...', 12,clRed);
  end;
  ChangeTabToMain;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSRest.btnRefundClick(Sender: TObject);
var
  MyRes: TModalResult;
begin
  if CommonPOS.RefundPOS <> True then
  begin
    if CommonPOS.isAuthorized('POS_REFUND',UserRights.POS_REFUND,true) then
    begin
      if CommonPOS.RefundPOS = False then
      begin
        FrmPOSRest.StatusBar1.Panels[4].Text := 'Refund Active';
        CommonPOS.RefundPOS := True;
      end
      else
      begin
        FrmPOSRest.StatusBar1.Panels[4].Text := 'Refund Inactive';
        CommonPOS.RefundPOS := False;
      end;
    end;
  end
  else
  begin
    FrmPOSRest.StatusBar1.Panels[4].Text := 'Refund Inactive';
    CommonPOS.RefundPOS := False;
  end;
  ChangeTabToMain;
  EditSearchProd.SetFocus;
end;

procedure TFrmPOSRest.SaveButtons1Click(Sender: TObject);
begin
  if CommonPOS.isAuthorized('POS_ADD_BUTTONS',UserRights.POS_ADD_BUTTONS,true) = True then
  begin
    Self.Tag := 1;
    SetButtonsVisibleFalse(False);
    LoadButtons;
  end;
end;

procedure TFrmPOSRest.SetButtonsVisibleFalse(FT: Boolean);
var
  i: Integer;
  comp: TComponent;
  sb: TSpeedButton;
const
  NamePrefix = 'SpeedButton';
  NamePrefix2 = 'sbCat';

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


procedure TFrmPOSRest.Setbuttonsvisiblefalse1Click(Sender: TObject);
begin
  if CommonPOS.isAuthorized('POS_ADD_BUTTONS',UserRights.POS_ADD_BUTTONS,true) = True then
  begin
    Self.Tag := 1;
    SetButtonsVisibleFalse(False);
    LoadButtons;
  end;
end;

procedure TFrmPOSRest.SpeedButton100Click(Sender: TObject);
begin
  EditButton(SpeedButton100.Name);
end;

procedure TFrmPOSRest.SpeedButton101Click(Sender: TObject);
begin
  EditButton(SpeedButton101.Name);
end;

procedure TFrmPOSRest.SpeedButton102Click(Sender: TObject);
begin
  EditButton(SpeedButton102.Name);
end;

procedure TFrmPOSRest.SpeedButton103Click(Sender: TObject);
begin
  EditButton(SpeedButton103.Name);
end;

procedure TFrmPOSRest.SpeedButton104Click(Sender: TObject);
begin
  EditButton(SpeedButton104.Name);
end;

procedure TFrmPOSRest.SpeedButton105Click(Sender: TObject);
begin
  EditButton(SpeedButton105.Name);
end;

procedure TFrmPOSRest.SpeedButton106Click(Sender: TObject);
begin
  EditButton(SpeedButton106.Name);
end;

procedure TFrmPOSRest.SpeedButton107Click(Sender: TObject);
begin
  EditButton(SpeedButton107.Name);
end;

procedure TFrmPOSRest.SpeedButton108Click(Sender: TObject);
begin
  EditButton(SpeedButton108.Name);
end;

procedure TFrmPOSRest.SpeedButton109Click(Sender: TObject);
begin
  EditButton(SpeedButton109.Name);
end;

procedure TFrmPOSRest.SpeedButton10Click(Sender: TObject);
begin
  EditButton(SpeedButton10.Name);
end;

procedure TFrmPOSRest.SpeedButton110Click(Sender: TObject);
begin
  EditButton(SpeedButton110.Name);
end;

procedure TFrmPOSRest.SpeedButton111Click(Sender: TObject);
begin
  EditButton(SpeedButton111.Name);
end;

procedure TFrmPOSRest.SpeedButton112Click(Sender: TObject);
begin
  EditButton(SpeedButton112.Name);
end;

procedure TFrmPOSRest.SpeedButton113Click(Sender: TObject);
begin
  EditButton(SpeedButton113.Name);
end;

procedure TFrmPOSRest.SpeedButton114Click(Sender: TObject);
begin
  EditButton(SpeedButton114.Name);
end;

procedure TFrmPOSRest.SpeedButton115Click(Sender: TObject);
begin
  EditButton(SpeedButton115.Name);
end;

procedure TFrmPOSRest.SpeedButton116Click(Sender: TObject);
begin
  EditButton(SpeedButton116.Name);
end;

procedure TFrmPOSRest.SpeedButton117Click(Sender: TObject);
begin
  EditButton(SpeedButton117.Name);
end;

procedure TFrmPOSRest.SpeedButton118Click(Sender: TObject);
begin
  EditButton(SpeedButton118.Name);
end;

procedure TFrmPOSRest.SpeedButton119Click(Sender: TObject);
begin
  EditButton(SpeedButton119.Name);
end;

procedure TFrmPOSRest.SpeedButton11Click(Sender: TObject);
begin
  EditButton(SpeedButton11.Name);
end;

procedure TFrmPOSRest.SpeedButton120Click(Sender: TObject);
begin
  EditButton(SpeedButton120.Name);
end;

procedure TFrmPOSRest.SpeedButton121Click(Sender: TObject);
begin
  EditButton(SpeedButton121.Name);
end;

procedure TFrmPOSRest.SpeedButton122Click(Sender: TObject);
begin
  EditButton(SpeedButton122.Name);
end;

procedure TFrmPOSRest.SpeedButton123Click(Sender: TObject);
begin
  EditButton(SpeedButton123.Name);
end;

procedure TFrmPOSRest.SpeedButton124Click(Sender: TObject);
begin
  EditButton(SpeedButton124.Name);
end;

procedure TFrmPOSRest.SpeedButton125Click(Sender: TObject);
begin
  EditButton(SpeedButton125.Name);
end;

procedure TFrmPOSRest.SpeedButton126Click(Sender: TObject);
begin
  EditButton(SpeedButton126.Name);
end;

procedure TFrmPOSRest.SpeedButton127Click(Sender: TObject);
begin
  EditButton(SpeedButton127.Name);
end;

procedure TFrmPOSRest.SpeedButton128Click(Sender: TObject);
begin
  EditButton(SpeedButton128.Name);
end;

procedure TFrmPOSRest.SpeedButton129Click(Sender: TObject);
begin
  EditButton(SpeedButton129.Name);
end;

procedure TFrmPOSRest.SpeedButton12Click(Sender: TObject);
begin
  EditButton(SpeedButton12.Name);
end;

procedure TFrmPOSRest.SpeedButton130Click(Sender: TObject);
begin
 EditButton(SpeedButton130.Name);
end;

procedure TFrmPOSRest.SpeedButton131Click(Sender: TObject);
begin
  EditButton(SpeedButton131.Name);
end;

procedure TFrmPOSRest.SpeedButton132Click(Sender: TObject);
begin
  EditButton(SpeedButton132.Name);
end;

procedure TFrmPOSRest.SpeedButton133Click(Sender: TObject);
begin
  EditButton(SpeedButton133.Name);
end;

procedure TFrmPOSRest.SpeedButton134Click(Sender: TObject);
begin
  EditButton(SpeedButton134.Name);
end;

procedure TFrmPOSRest.SpeedButton135Click(Sender: TObject);
begin
  EditButton(SpeedButton135.Name);
end;

procedure TFrmPOSRest.SpeedButton136Click(Sender: TObject);
begin
  EditButton(SpeedButton136.Name);
end;

procedure TFrmPOSRest.SpeedButton137Click(Sender: TObject);
begin
  EditButton(SpeedButton137.Name);
end;

procedure TFrmPOSRest.SpeedButton138Click(Sender: TObject);
begin
  EditButton(SpeedButton138.Name);
end;

procedure TFrmPOSRest.SpeedButton139Click(Sender: TObject);
begin
  EditButton(SpeedButton139.Name);
end;

procedure TFrmPOSRest.SpeedButton13Click(Sender: TObject);
begin
  EditButton(SpeedButton13.Name);
end;

procedure TFrmPOSRest.SpeedButton140Click(Sender: TObject);
begin
  EditButton(SpeedButton140.Name);
end;

procedure TFrmPOSRest.SpeedButton141Click(Sender: TObject);
begin
  EditButton(SpeedButton141.Name);
end;

procedure TFrmPOSRest.SpeedButton142Click(Sender: TObject);
begin
  EditButton(SpeedButton142.Name);
end;

procedure TFrmPOSRest.SpeedButton143Click(Sender: TObject);
begin
  EditButton(SpeedButton143.Name);
end;

procedure TFrmPOSRest.SpeedButton144Click(Sender: TObject);
begin
  EditButton(SpeedButton144.Name);
end;

procedure TFrmPOSRest.SpeedButton145Click(Sender: TObject);
begin
  EditButton(SpeedButton145.Name);
end;

procedure TFrmPOSRest.SpeedButton146Click(Sender: TObject);
begin
  EditButton(SpeedButton146.Name);
end;

procedure TFrmPOSRest.SpeedButton147Click(Sender: TObject);
begin
  EditButton(SpeedButton147.Name);
end;

procedure TFrmPOSRest.SpeedButton148Click(Sender: TObject);
begin
  EditButton(SpeedButton148.Name);
end;

procedure TFrmPOSRest.SpeedButton149Click(Sender: TObject);
begin
  EditButton(SpeedButton149.Name);
end;

procedure TFrmPOSRest.SpeedButton14Click(Sender: TObject);
begin
  EditButton(SpeedButton14.Name);
end;

procedure TFrmPOSRest.SpeedButton150Click(Sender: TObject);
begin
  EditButton(SpeedButton150.Name);
end;

procedure TFrmPOSRest.SpeedButton151Click(Sender: TObject);
begin
  EditButton(SpeedButton151.Name);
end;

procedure TFrmPOSRest.SpeedButton152Click(Sender: TObject);
begin
  EditButton(SpeedButton152.Name);
end;

procedure TFrmPOSRest.SpeedButton153Click(Sender: TObject);
begin
  EditButton(SpeedButton153.Name);
end;

procedure TFrmPOSRest.SpeedButton154Click(Sender: TObject);
begin
   EditButton(SpeedButton154.Name);
end;

procedure TFrmPOSRest.SpeedButton155Click(Sender: TObject);
begin
  EditButton(SpeedButton155.Name);
end;

procedure TFrmPOSRest.SpeedButton156Click(Sender: TObject);
begin
  EditButton(SpeedButton156.Name);
end;

procedure TFrmPOSRest.SpeedButton157Click(Sender: TObject);
begin
  EditButton(SpeedButton157.Name);
end;

procedure TFrmPOSRest.SpeedButton158Click(Sender: TObject);
begin
  EditButton(SpeedButton158.Name);
end;

procedure TFrmPOSRest.SpeedButton159Click(Sender: TObject);
begin
  EditButton(SpeedButton159.Name);
end;

procedure TFrmPOSRest.SpeedButton15Click(Sender: TObject);
begin
  EditButton(SpeedButton15.Name);
end;

procedure TFrmPOSRest.SpeedButton160Click(Sender: TObject);
begin
  EditButton(SpeedButton160.Name);
end;

procedure TFrmPOSRest.SpeedButton161Click(Sender: TObject);
begin
  EditButton(SpeedButton161.Name);
end;

procedure TFrmPOSRest.SpeedButton162Click(Sender: TObject);
begin
  EditButton(SpeedButton162.Name);
end;

procedure TFrmPOSRest.SpeedButton163Click(Sender: TObject);
begin
  EditButton(SpeedButton163.Name);
end;

procedure TFrmPOSRest.SpeedButton164Click(Sender: TObject);
begin
  EditButton(SpeedButton164.Name);
end;

procedure TFrmPOSRest.SpeedButton165Click(Sender: TObject);
begin
  EditButton(SpeedButton165.Name);
end;

procedure TFrmPOSRest.SpeedButton166Click(Sender: TObject);
begin
  EditButton(SpeedButton166.Name);
end;

procedure TFrmPOSRest.SpeedButton167Click(Sender: TObject);
begin
  EditButton(SpeedButton167.Name);
end;

procedure TFrmPOSRest.SpeedButton168Click(Sender: TObject);
begin
  EditButton(SpeedButton168.Name);
end;

procedure TFrmPOSRest.SpeedButton169Click(Sender: TObject);
begin
  EditButton(SpeedButton169.Name);
end;

procedure TFrmPOSRest.SpeedButton16Click(Sender: TObject);
begin
  EditButton(SpeedButton16.Name);
end;

procedure TFrmPOSRest.SpeedButton170Click(Sender: TObject);
begin
  EditButton(SpeedButton170.Name);
end;

procedure TFrmPOSRest.SpeedButton171Click(Sender: TObject);
begin
  EditButton(SpeedButton171.Name);
end;

procedure TFrmPOSRest.SpeedButton172Click(Sender: TObject);
begin
  EditButton(SpeedButton172.Name);
end;

procedure TFrmPOSRest.SpeedButton173Click(Sender: TObject);
begin
  EditButton(SpeedButton173.Name);
end;

procedure TFrmPOSRest.SpeedButton174Click(Sender: TObject);
begin
  EditButton(SpeedButton174.Name);
end;

procedure TFrmPOSRest.SpeedButton175Click(Sender: TObject);
begin
  EditButton(SpeedButton175.Name);
end;

procedure TFrmPOSRest.SpeedButton176Click(Sender: TObject);
begin
  EditButton(SpeedButton176.Name);
end;

procedure TFrmPOSRest.SpeedButton177Click(Sender: TObject);
begin
  EditButton(SpeedButton177.Name);
end;

procedure TFrmPOSRest.SpeedButton178Click(Sender: TObject);
begin
  EditButton(SpeedButton178.Name);
end;

procedure TFrmPOSRest.SpeedButton179Click(Sender: TObject);
begin
  EditButton(SpeedButton179.Name);
end;

procedure TFrmPOSRest.SpeedButton17Click(Sender: TObject);
begin
  EditButton(SpeedButton17.Name);
end;

procedure TFrmPOSRest.SpeedButton180Click(Sender: TObject);
begin
  EditButton(SpeedButton180.Name);
end;

procedure TFrmPOSRest.SpeedButton181Click(Sender: TObject);
begin
  EditButton(SpeedButton181.Name);
end;

procedure TFrmPOSRest.SpeedButton182Click(Sender: TObject);
begin
  EditButton(SpeedButton182.Name);
end;

procedure TFrmPOSRest.SpeedButton183Click(Sender: TObject);
begin
  EditButton(SpeedButton183.Name);
end;

procedure TFrmPOSRest.SpeedButton184Click(Sender: TObject);
begin
  EditButton(SpeedButton184.Name);
end;

procedure TFrmPOSRest.SpeedButton185Click(Sender: TObject);
begin
  EditButton(SpeedButton185.Name);
end;

procedure TFrmPOSRest.SpeedButton186Click(Sender: TObject);
begin
  EditButton(SpeedButton186.Name);
end;

procedure TFrmPOSRest.SpeedButton187Click(Sender: TObject);
begin
  EditButton(SpeedButton187.Name);
end;

procedure TFrmPOSRest.SpeedButton188Click(Sender: TObject);
begin
  EditButton(SpeedButton188.Name);
end;

procedure TFrmPOSRest.SpeedButton189Click(Sender: TObject);
begin
  EditButton(SpeedButton189.Name);
end;

procedure TFrmPOSRest.SpeedButton18Click(Sender: TObject);
begin
  EditButton(SpeedButton18.Name);
end;

procedure TFrmPOSRest.SpeedButton190Click(Sender: TObject);
begin
  EditButton(SpeedButton190.Name);
end;

procedure TFrmPOSRest.SpeedButton191Click(Sender: TObject);
begin
  EditButton(SpeedButton191.Name);
end;

procedure TFrmPOSRest.SpeedButton192Click(Sender: TObject);
begin
  EditButton(SpeedButton192.Name);
end;

procedure TFrmPOSRest.SpeedButton193Click(Sender: TObject);
begin
  EditButton(SpeedButton193.Name);
end;

procedure TFrmPOSRest.SpeedButton194Click(Sender: TObject);
begin
  EditButton(SpeedButton194.Name);
end;

procedure TFrmPOSRest.SpeedButton195Click(Sender: TObject);
begin
  EditButton(SpeedButton195.Name);
end;

procedure TFrmPOSRest.SpeedButton196Click(Sender: TObject);
begin
  EditButton(SpeedButton196.Name);
end;

procedure TFrmPOSRest.SpeedButton197Click(Sender: TObject);
begin
  EditButton(SpeedButton197.Name);
end;

procedure TFrmPOSRest.SpeedButton198Click(Sender: TObject);
begin
  EditButton(SpeedButton198.Name);
end;

procedure TFrmPOSRest.SpeedButton199Click(Sender: TObject);
begin
  EditButton(SpeedButton199.Name);
end;

procedure TFrmPOSRest.SpeedButton19Click(Sender: TObject);
begin
  EditButton(SpeedButton19.Name);
end;

procedure TFrmPOSRest.SpeedButton1Click(Sender: TObject);
begin
  EditButton(SpeedButton1.Name);
end;

procedure TFrmPOSRest.sbCat20Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 19;
  EditButton(sbCat20.Name);
end;

procedure TFrmPOSRest.sbCat2Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 1;
  EditButton(sbCat2.Name);
end;

procedure TFrmPOSRest.sbCat3Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 2;
  EditButton(sbCat3.Name);
end;

procedure TFrmPOSRest.sbCat4Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 3;
  EditButton(sbCat4.Name);
end;

procedure TFrmPOSRest.sbCat5Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 4;
  EditButton(sbCat5.Name);
end;

procedure TFrmPOSRest.sbCat6Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 5;
  EditButton(sbCat6.Name);
end;

procedure TFrmPOSRest.sbCat7Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 6;
  EditButton(sbCat7.Name);
end;

procedure TFrmPOSRest.sbCat8Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 7;
  EditButton(sbCat8.Name);
end;

procedure TFrmPOSRest.sbCat9Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 8;
  EditButton(sbCat9.Name);
end;

procedure TFrmPOSRest.SpeedButton200Click(Sender: TObject);
begin
  EditButton(SpeedButton200.Name);
end;

procedure TFrmPOSRest.SpeedButton201Click(Sender: TObject);
begin
  EditButton(SpeedButton201.Name);
end;

procedure TFrmPOSRest.SpeedButton202Click(Sender: TObject);
begin
  EditButton(SpeedButton202.Name);
end;

procedure TFrmPOSRest.SpeedButton203Click(Sender: TObject);
begin
  EditButton(SpeedButton203.Name);
end;

procedure TFrmPOSRest.SpeedButton204Click(Sender: TObject);
begin
  EditButton(SpeedButton204.Name);
end;

procedure TFrmPOSRest.SpeedButton205Click(Sender: TObject);
begin
  EditButton(SpeedButton205.Name);
end;

procedure TFrmPOSRest.SpeedButton206Click(Sender: TObject);
begin
  EditButton(SpeedButton206.Name);
end;

procedure TFrmPOSRest.SpeedButton207Click(Sender: TObject);
begin
  EditButton(SpeedButton207.Name);
end;

procedure TFrmPOSRest.SpeedButton208Click(Sender: TObject);
begin
  EditButton(SpeedButton208.Name);
end;

procedure TFrmPOSRest.SpeedButton209Click(Sender: TObject);
begin
  EditButton(SpeedButton209.Name);
end;

procedure TFrmPOSRest.SpeedButton20Click(Sender: TObject);
begin
  EditButton(SpeedButton20.Name);
end;

procedure TFrmPOSRest.SpeedButton210Click(Sender: TObject);
begin
  EditButton(SpeedButton210.Name);
end;

procedure TFrmPOSRest.SpeedButton211Click(Sender: TObject);
begin
  EditButton(SpeedButton211.Name);
end;

procedure TFrmPOSRest.SpeedButton212Click(Sender: TObject);
begin
  EditButton(SpeedButton212.Name);
end;

procedure TFrmPOSRest.SpeedButton213Click(Sender: TObject);
begin
  EditButton(SpeedButton213.Name);
end;

procedure TFrmPOSRest.SpeedButton214Click(Sender: TObject);
begin
  EditButton(SpeedButton214.Name);
end;

procedure TFrmPOSRest.SpeedButton215Click(Sender: TObject);
begin
  EditButton(SpeedButton215.Name);
end;

procedure TFrmPOSRest.SpeedButton216Click(Sender: TObject);
begin
  EditButton(SpeedButton216.Name);
end;

procedure TFrmPOSRest.SpeedButton217Click(Sender: TObject);
begin
  EditButton(SpeedButton217.Name);
end;

procedure TFrmPOSRest.SpeedButton218Click(Sender: TObject);
begin
  EditButton(SpeedButton218.Name);
end;

procedure TFrmPOSRest.SpeedButton219Click(Sender: TObject);
begin
  EditButton(SpeedButton219.Name);
end;

procedure TFrmPOSRest.SpeedButton21Click(Sender: TObject);
begin
  EditButton(SpeedButton21.Name);
end;

procedure TFrmPOSRest.SpeedButton220Click(Sender: TObject);
begin
  EditButton(SpeedButton220.Name);
end;

procedure TFrmPOSRest.SpeedButton221Click(Sender: TObject);
begin
  EditButton(SpeedButton221.Name);
end;

procedure TFrmPOSRest.SpeedButton222Click(Sender: TObject);
begin
  EditButton(SpeedButton222.Name);
end;

procedure TFrmPOSRest.SpeedButton223Click(Sender: TObject);
begin
  EditButton(SpeedButton223.Name);
end;

procedure TFrmPOSRest.SpeedButton224Click(Sender: TObject);
begin
  EditButton(SpeedButton224.Name);
end;

procedure TFrmPOSRest.SpeedButton225Click(Sender: TObject);
begin
  EditButton(SpeedButton225.Name);
end;

procedure TFrmPOSRest.SpeedButton226Click(Sender: TObject);
begin
  EditButton(SpeedButton226.Name);
end;

procedure TFrmPOSRest.SpeedButton227Click(Sender: TObject);
begin
  EditButton(SpeedButton227.Name);
end;

procedure TFrmPOSRest.SpeedButton228Click(Sender: TObject);
begin
  EditButton(SpeedButton228.Name);
end;

procedure TFrmPOSRest.SpeedButton229Click(Sender: TObject);
begin
  EditButton(SpeedButton229.Name);
end;

procedure TFrmPOSRest.SpeedButton22Click(Sender: TObject);
begin
  EditButton(SpeedButton22.Name);
end;

procedure TFrmPOSRest.SpeedButton230Click(Sender: TObject);
begin
  EditButton(SpeedButton230.Name);
end;

procedure TFrmPOSRest.SpeedButton231Click(Sender: TObject);
begin
  EditButton(SpeedButton231.Name);
end;

procedure TFrmPOSRest.SpeedButton232Click(Sender: TObject);
begin
  EditButton(SpeedButton232.Name);
end;

procedure TFrmPOSRest.SpeedButton233Click(Sender: TObject);
begin
  EditButton(SpeedButton233.Name);
end;

procedure TFrmPOSRest.SpeedButton234Click(Sender: TObject);
begin
  EditButton(SpeedButton234.Name);
end;

procedure TFrmPOSRest.SpeedButton235Click(Sender: TObject);
begin
  EditButton(SpeedButton235.Name);
end;

procedure TFrmPOSRest.SpeedButton236Click(Sender: TObject);
begin
  EditButton(SpeedButton236.Name);
end;

procedure TFrmPOSRest.SpeedButton237Click(Sender: TObject);
begin
  EditButton(SpeedButton237.Name);
end;

procedure TFrmPOSRest.SpeedButton238Click(Sender: TObject);
begin
  EditButton(SpeedButton238.Name);
end;

procedure TFrmPOSRest.SpeedButton239Click(Sender: TObject);
begin
  EditButton(SpeedButton239.Name);
end;

procedure TFrmPOSRest.SpeedButton23Click(Sender: TObject);
begin
  EditButton(SpeedButton23.Name);
end;

procedure TFrmPOSRest.SpeedButton240Click(Sender: TObject);
begin
  EditButton(SpeedButton240.Name);
end;

procedure TFrmPOSRest.SpeedButton241Click(Sender: TObject);
begin
  EditButton(SpeedButton241.Name);
end;

procedure TFrmPOSRest.SpeedButton242Click(Sender: TObject);
begin
  EditButton(SpeedButton242.Name);
end;

procedure TFrmPOSRest.SpeedButton243Click(Sender: TObject);
begin
  EditButton(SpeedButton243.Name);
end;

procedure TFrmPOSRest.SpeedButton244Click(Sender: TObject);
begin
  EditButton(SpeedButton244.Name);
end;

procedure TFrmPOSRest.SpeedButton245Click(Sender: TObject);
begin
  EditButton(SpeedButton245.Name);
end;

procedure TFrmPOSRest.SpeedButton246Click(Sender: TObject);
begin
  EditButton(SpeedButton246.Name);
end;

procedure TFrmPOSRest.SpeedButton247Click(Sender: TObject);
begin
  EditButton(SpeedButton247.Name);
end;

procedure TFrmPOSRest.SpeedButton248Click(Sender: TObject);
begin
  EditButton(SpeedButton248.Name);
end;

procedure TFrmPOSRest.SpeedButton249Click(Sender: TObject);
begin
  EditButton(SpeedButton249.Name);
end;

procedure TFrmPOSRest.SpeedButton24Click(Sender: TObject);
begin
 EditButton(SpeedButton24.Name);
end;

procedure TFrmPOSRest.SpeedButton250Click(Sender: TObject);
begin
  EditButton(SpeedButton250.Name);
end;

procedure TFrmPOSRest.SpeedButton251Click(Sender: TObject);
begin
  EditButton(SpeedButton251.Name);
end;

procedure TFrmPOSRest.SpeedButton252Click(Sender: TObject);
begin
  EditButton(SpeedButton252.Name);
end;

procedure TFrmPOSRest.SpeedButton253Click(Sender: TObject);
begin
  EditButton(SpeedButton253.Name);
end;

procedure TFrmPOSRest.SpeedButton254Click(Sender: TObject);
begin
  EditButton(SpeedButton254.Name);
end;

procedure TFrmPOSRest.SpeedButton255Click(Sender: TObject);
begin
  EditButton(SpeedButton255.Name);
end;

procedure TFrmPOSRest.SpeedButton256Click(Sender: TObject);
begin
  EditButton(SpeedButton256.Name);
end;

procedure TFrmPOSRest.SpeedButton257Click(Sender: TObject);
begin
  EditButton(SpeedButton257.Name);
end;

procedure TFrmPOSRest.SpeedButton258Click(Sender: TObject);
begin
  EditButton(SpeedButton258.Name);
end;

procedure TFrmPOSRest.SpeedButton259Click(Sender: TObject);
begin
  EditButton(SpeedButton259.Name);
end;

procedure TFrmPOSRest.SpeedButton25Click(Sender: TObject);
begin
  EditButton(SpeedButton25.Name);
end;

procedure TFrmPOSRest.SpeedButton260Click(Sender: TObject);
begin
  EditButton(SpeedButton260.Name);
end;

procedure TFrmPOSRest.SpeedButton261Click(Sender: TObject);
begin
  EditButton(SpeedButton261.Name);
end;

procedure TFrmPOSRest.SpeedButton262Click(Sender: TObject);
begin
  EditButton(SpeedButton262.Name);
end;

procedure TFrmPOSRest.SpeedButton263Click(Sender: TObject);
begin
  EditButton(SpeedButton263.Name);
end;

procedure TFrmPOSRest.SpeedButton264Click(Sender: TObject);
begin
  EditButton(SpeedButton264.Name);
end;

procedure TFrmPOSRest.SpeedButton265Click(Sender: TObject);
begin
  EditButton(SpeedButton265.Name);
end;

procedure TFrmPOSRest.SpeedButton266Click(Sender: TObject);
begin
  EditButton(SpeedButton266.Name);
end;

procedure TFrmPOSRest.SpeedButton267Click(Sender: TObject);
begin
  EditButton(SpeedButton267.Name);
end;

procedure TFrmPOSRest.SpeedButton268Click(Sender: TObject);
begin
  EditButton(SpeedButton268.Name);
end;

procedure TFrmPOSRest.SpeedButton269Click(Sender: TObject);
begin
  EditButton(SpeedButton269.Name);
end;

procedure TFrmPOSRest.SpeedButton26Click(Sender: TObject);
begin
  EditButton(SpeedButton26.Name);
end;

procedure TFrmPOSRest.SpeedButton270Click(Sender: TObject);
begin
  EditButton(SpeedButton270.Name);
end;

procedure TFrmPOSRest.SpeedButton271Click(Sender: TObject);
begin
  EditButton(SpeedButton271.Name);
end;

procedure TFrmPOSRest.SpeedButton272Click(Sender: TObject);
begin
  EditButton(SpeedButton272.Name);
end;

procedure TFrmPOSRest.SpeedButton273Click(Sender: TObject);
begin
  EditButton(SpeedButton273.Name);
end;

procedure TFrmPOSRest.SpeedButton274Click(Sender: TObject);
begin
  EditButton(SpeedButton274.Name);
end;

procedure TFrmPOSRest.SpeedButton275Click(Sender: TObject);
begin
  EditButton(SpeedButton275.Name);
end;

procedure TFrmPOSRest.SpeedButton276Click(Sender: TObject);
begin
  EditButton(SpeedButton276.Name);
end;

procedure TFrmPOSRest.SpeedButton277Click(Sender: TObject);
begin
  EditButton(SpeedButton277.Name);
end;

procedure TFrmPOSRest.SpeedButton278Click(Sender: TObject);
begin
  EditButton(SpeedButton278.Name);
end;

procedure TFrmPOSRest.SpeedButton279Click(Sender: TObject);
begin
  EditButton(SpeedButton279.Name);
end;

procedure TFrmPOSRest.SpeedButton27Click(Sender: TObject);
begin
  EditButton(SpeedButton27.Name);
end;

procedure TFrmPOSRest.SpeedButton280Click(Sender: TObject);
begin
  EditButton(SpeedButton280.Name);
end;

procedure TFrmPOSRest.SpeedButton281Click(Sender: TObject);
begin
  EditButton(SpeedButton281.Name);
end;

procedure TFrmPOSRest.SpeedButton282Click(Sender: TObject);
begin
  EditButton(SpeedButton282.Name);
end;

procedure TFrmPOSRest.SpeedButton283Click(Sender: TObject);
begin
  EditButton(SpeedButton283.Name);
end;

procedure TFrmPOSRest.SpeedButton284Click(Sender: TObject);
begin
  EditButton(SpeedButton284.Name);
end;

procedure TFrmPOSRest.SpeedButton285Click(Sender: TObject);
begin
  EditButton(SpeedButton285.Name);
end;

procedure TFrmPOSRest.SpeedButton286Click(Sender: TObject);
begin
  EditButton(SpeedButton286.Name);
end;

procedure TFrmPOSRest.SpeedButton287Click(Sender: TObject);
begin
  EditButton(SpeedButton287.Name);
end;

procedure TFrmPOSRest.SpeedButton288Click(Sender: TObject);
begin
  EditButton(SpeedButton288.Name);
end;

procedure TFrmPOSRest.SpeedButton289Click(Sender: TObject);
begin
  EditButton(SpeedButton289.Name);
end;

procedure TFrmPOSRest.SpeedButton28Click(Sender: TObject);
begin
  EditButton(SpeedButton28.Name);
end;

procedure TFrmPOSRest.SpeedButton290Click(Sender: TObject);
begin
  EditButton(SpeedButton290.Name);
end;

procedure TFrmPOSRest.SpeedButton291Click(Sender: TObject);
begin
  EditButton(SpeedButton291.Name);
end;

procedure TFrmPOSRest.SpeedButton292Click(Sender: TObject);
begin
  EditButton(SpeedButton292.Name);
end;

procedure TFrmPOSRest.SpeedButton293Click(Sender: TObject);
begin
  EditButton(SpeedButton293.Name);
end;

procedure TFrmPOSRest.SpeedButton294Click(Sender: TObject);
begin
  EditButton(SpeedButton294.Name);
end;

procedure TFrmPOSRest.SpeedButton295Click(Sender: TObject);
begin
  EditButton(SpeedButton295.Name);
end;

procedure TFrmPOSRest.SpeedButton296Click(Sender: TObject);
begin
  EditButton(SpeedButton296.Name);
end;

procedure TFrmPOSRest.SpeedButton297Click(Sender: TObject);
begin
  EditButton(SpeedButton297.Name);
end;

procedure TFrmPOSRest.SpeedButton298Click(Sender: TObject);
begin
  EditButton(SpeedButton298.Name);
end;

procedure TFrmPOSRest.SpeedButton299Click(Sender: TObject);
begin
  EditButton(SpeedButton299.Name);
end;

procedure TFrmPOSRest.SpeedButton29Click(Sender: TObject);
begin
  EditButton(SpeedButton29.Name);
end;

procedure TFrmPOSRest.sbCat10Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 9;
  EditButton(sbCat10.Name);
end;

procedure TFrmPOSRest.sbCat11Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 10;
  EditButton(sbCat11.Name);
end;

procedure TFrmPOSRest.sbCat12Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 11;
  EditButton(sbCat12.Name);
end;

procedure TFrmPOSRest.sbCat13Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 12;
  EditButton(sbCat13.Name);
end;

procedure TFrmPOSRest.sbCat14Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 13;
  EditButton(sbCat14.Name);
end;

procedure TFrmPOSRest.sbCat1Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 0;
  EditButton(sbCat1.Name);
end;

procedure TFrmPOSRest.SpeedButton2Click(Sender: TObject);
begin
  EditButton(SpeedButton2.Name);
end;

procedure TFrmPOSRest.SpeedButton300Click(Sender: TObject);
begin
  EditButton(SpeedButton300.Name);
end;

procedure TFrmPOSRest.SpeedButton301Click(Sender: TObject);
begin
  EditButton(SpeedButton301.Name);
end;

procedure TFrmPOSRest.SpeedButton302Click(Sender: TObject);
begin
  EditButton(SpeedButton302.Name);
end;

procedure TFrmPOSRest.SpeedButton303Click(Sender: TObject);
begin
  EditButton(SpeedButton303.Name);
end;

procedure TFrmPOSRest.SpeedButton304Click(Sender: TObject);
begin
  EditButton(SpeedButton304.Name);
end;

procedure TFrmPOSRest.SpeedButton305Click(Sender: TObject);
begin
  EditButton(SpeedButton305.Name);
end;

procedure TFrmPOSRest.SpeedButton306Click(Sender: TObject);
begin
  EditButton(SpeedButton306.Name);
end;

procedure TFrmPOSRest.SpeedButton307Click(Sender: TObject);
begin
  EditButton(SpeedButton307.Name);
end;

procedure TFrmPOSRest.SpeedButton308Click(Sender: TObject);
begin
  EditButton(SpeedButton308.Name);
end;

procedure TFrmPOSRest.SpeedButton309Click(Sender: TObject);
begin
  EditButton(SpeedButton309.Name);
end;

procedure TFrmPOSRest.SpeedButton30Click(Sender: TObject);
begin
  EditButton(SpeedButton30.Name);
end;

procedure TFrmPOSRest.SpeedButton310Click(Sender: TObject);
begin
  EditButton(SpeedButton310.Name);
end;

procedure TFrmPOSRest.SpeedButton311Click(Sender: TObject);
begin
  EditButton(SpeedButton311.Name);
end;

procedure TFrmPOSRest.SpeedButton312Click(Sender: TObject);
begin
  EditButton(SpeedButton312.Name);
end;

procedure TFrmPOSRest.SpeedButton313Click(Sender: TObject);
begin
  EditButton(SpeedButton313.Name);
end;

procedure TFrmPOSRest.SpeedButton314Click(Sender: TObject);
begin
  EditButton(SpeedButton314.Name);
end;

procedure TFrmPOSRest.SpeedButton315Click(Sender: TObject);
begin
  EditButton(SpeedButton315.Name);
end;

procedure TFrmPOSRest.SpeedButton316Click(Sender: TObject);
begin
  EditButton(SpeedButton316.Name);
end;

procedure TFrmPOSRest.SpeedButton317Click(Sender: TObject);
begin
  EditButton(SpeedButton317.Name);
end;

procedure TFrmPOSRest.SpeedButton318Click(Sender: TObject);
begin
  EditButton(SpeedButton318.Name);
end;

procedure TFrmPOSRest.SpeedButton319Click(Sender: TObject);
begin
  EditButton(SpeedButton319.Name);
end;

procedure TFrmPOSRest.SpeedButton31Click(Sender: TObject);
begin
  EditButton(SpeedButton31.Name);
end;

procedure TFrmPOSRest.SpeedButton320Click(Sender: TObject);
begin
  EditButton(SpeedButton320.Name);
end;

procedure TFrmPOSRest.SpeedButton321Click(Sender: TObject);
begin
  EditButton(SpeedButton321.Name);
end;

procedure TFrmPOSRest.SpeedButton322Click(Sender: TObject);
begin
  EditButton(SpeedButton322.Name);
end;

procedure TFrmPOSRest.SpeedButton323Click(Sender: TObject);
begin
  EditButton(SpeedButton323.Name);
end;

procedure TFrmPOSRest.SpeedButton324Click(Sender: TObject);
begin
  EditButton(SpeedButton324.Name);
end;

procedure TFrmPOSRest.SpeedButton325Click(Sender: TObject);
begin
  EditButton(SpeedButton325.Name);
end;

procedure TFrmPOSRest.SpeedButton326Click(Sender: TObject);
begin
  EditButton(SpeedButton326.Name);
end;

procedure TFrmPOSRest.SpeedButton327Click(Sender: TObject);
begin
  EditButton(SpeedButton327.Name);
end;

procedure TFrmPOSRest.SpeedButton328Click(Sender: TObject);
begin
  EditButton(SpeedButton328.Name);
end;

procedure TFrmPOSRest.SpeedButton329Click(Sender: TObject);
begin
  EditButton(SpeedButton329.Name);
end;

procedure TFrmPOSRest.SpeedButton32Click(Sender: TObject);
begin
  EditButton(SpeedButton32.Name);
end;

procedure TFrmPOSRest.SpeedButton330Click(Sender: TObject);
begin
  EditButton(SpeedButton330.Name);
end;

procedure TFrmPOSRest.SpeedButton331Click(Sender: TObject);
begin
  EditButton(SpeedButton331.Name);
end;

procedure TFrmPOSRest.SpeedButton332Click(Sender: TObject);
begin
  EditButton(SpeedButton332.Name);
end;

procedure TFrmPOSRest.SpeedButton333Click(Sender: TObject);
begin
  EditButton(SpeedButton333.Name);
end;

procedure TFrmPOSRest.SpeedButton334Click(Sender: TObject);
begin
  EditButton(SpeedButton334.Name);
end;

procedure TFrmPOSRest.SpeedButton335Click(Sender: TObject);
begin
  EditButton(SpeedButton335.Name);
end;

procedure TFrmPOSRest.SpeedButton336Click(Sender: TObject);
begin
  EditButton(SpeedButton336.Name);
end;

procedure TFrmPOSRest.SpeedButton337Click(Sender: TObject);
begin
  EditButton(SpeedButton337.Name);
end;

procedure TFrmPOSRest.SpeedButton338Click(Sender: TObject);
begin
  EditButton(SpeedButton338.Name);
end;

procedure TFrmPOSRest.SpeedButton339Click(Sender: TObject);
begin
  EditButton(SpeedButton339.Name);
end;

procedure TFrmPOSRest.SpeedButton33Click(Sender: TObject);
begin
  EditButton(SpeedButton33.Name);
end;

procedure TFrmPOSRest.SpeedButton340Click(Sender: TObject);
begin
  EditButton(SpeedButton340.Name);
end;

procedure TFrmPOSRest.SpeedButton341Click(Sender: TObject);
begin
  EditButton(SpeedButton341.Name);
end;

procedure TFrmPOSRest.SpeedButton342Click(Sender: TObject);
begin
  EditButton(SpeedButton342.Name);
end;

procedure TFrmPOSRest.SpeedButton343Click(Sender: TObject);
begin
  EditButton(SpeedButton343.Name);
end;

procedure TFrmPOSRest.SpeedButton344Click(Sender: TObject);
begin
  EditButton(SpeedButton344.Name);
end;

procedure TFrmPOSRest.SpeedButton345Click(Sender: TObject);
begin
  EditButton(SpeedButton345.Name);
end;

procedure TFrmPOSRest.SpeedButton346Click(Sender: TObject);
begin
  EditButton(SpeedButton346.Name);
end;

procedure TFrmPOSRest.SpeedButton347Click(Sender: TObject);
begin
  EditButton(SpeedButton347.Name);
end;

procedure TFrmPOSRest.SpeedButton348Click(Sender: TObject);
begin
  EditButton(SpeedButton348.Name);
end;

procedure TFrmPOSRest.SpeedButton349Click(Sender: TObject);
begin
  EditButton(SpeedButton349.Name);
end;

procedure TFrmPOSRest.SpeedButton34Click(Sender: TObject);
begin
   EditButton(SpeedButton34.Name);
end;

procedure TFrmPOSRest.SpeedButton350Click(Sender: TObject);
begin
  EditButton(SpeedButton350.Name);
end;

procedure TFrmPOSRest.SpeedButton351Click(Sender: TObject);
begin
  EditButton(SpeedButton351.Name);
end;

procedure TFrmPOSRest.SpeedButton352Click(Sender: TObject);
begin
  EditButton(SpeedButton352.Name);
end;

procedure TFrmPOSRest.SpeedButton353Click(Sender: TObject);
begin
  EditButton(SpeedButton353.Name);
end;

procedure TFrmPOSRest.SpeedButton354Click(Sender: TObject);
begin
  EditButton(SpeedButton354.Name);
end;

procedure TFrmPOSRest.SpeedButton355Click(Sender: TObject);
begin
  EditButton(SpeedButton355.Name);
end;

procedure TFrmPOSRest.SpeedButton356Click(Sender: TObject);
begin
  EditButton(SpeedButton356.Name);
end;

procedure TFrmPOSRest.SpeedButton357Click(Sender: TObject);
begin
  EditButton(SpeedButton357.Name);
end;

procedure TFrmPOSRest.SpeedButton358Click(Sender: TObject);
begin
  EditButton(SpeedButton358.Name);
end;

procedure TFrmPOSRest.SpeedButton359Click(Sender: TObject);
begin
  EditButton(SpeedButton359.Name);
end;

procedure TFrmPOSRest.SpeedButton35Click(Sender: TObject);
begin
   EditButton(SpeedButton35.Name);
end;

procedure TFrmPOSRest.SpeedButton360Click(Sender: TObject);
begin
  EditButton(SpeedButton360.Name);
end;

procedure TFrmPOSRest.SpeedButton361Click(Sender: TObject);
begin
  EditButton(SpeedButton361.Name);
end;

procedure TFrmPOSRest.SpeedButton362Click(Sender: TObject);
begin
  EditButton(SpeedButton362.Name);
end;

procedure TFrmPOSRest.SpeedButton363Click(Sender: TObject);
begin
  EditButton(SpeedButton363.Name);
end;

procedure TFrmPOSRest.SpeedButton364Click(Sender: TObject);
begin
  EditButton(SpeedButton364.Name);
end;

procedure TFrmPOSRest.SpeedButton365Click(Sender: TObject);
begin
  EditButton(SpeedButton365.Name);
end;

procedure TFrmPOSRest.SpeedButton366Click(Sender: TObject);
begin
  EditButton(SpeedButton366.Name);
end;

procedure TFrmPOSRest.SpeedButton367Click(Sender: TObject);
begin
  EditButton(SpeedButton367.Name);
end;

procedure TFrmPOSRest.SpeedButton368Click(Sender: TObject);
begin
  EditButton(SpeedButton368.Name);
end;

procedure TFrmPOSRest.SpeedButton369Click(Sender: TObject);
begin
  EditButton(SpeedButton369.Name);
end;

procedure TFrmPOSRest.SpeedButton36Click(Sender: TObject);
begin
   EditButton(SpeedButton36.Name);
end;

procedure TFrmPOSRest.SpeedButton370Click(Sender: TObject);
begin
  EditButton(SpeedButton370.Name);
end;

procedure TFrmPOSRest.SpeedButton371Click(Sender: TObject);
begin
  EditButton(SpeedButton371.Name);
end;

procedure TFrmPOSRest.SpeedButton372Click(Sender: TObject);
begin
  EditButton(SpeedButton372.Name);
end;

procedure TFrmPOSRest.SpeedButton373Click(Sender: TObject);
begin
  EditButton(SpeedButton373.Name);
end;

procedure TFrmPOSRest.SpeedButton374Click(Sender: TObject);
begin
  EditButton(SpeedButton374.Name);
end;

procedure TFrmPOSRest.SpeedButton375Click(Sender: TObject);
begin
  EditButton(SpeedButton375.Name);
end;

procedure TFrmPOSRest.SpeedButton376Click(Sender: TObject);
begin
  EditButton(SpeedButton376.Name);
end;

procedure TFrmPOSRest.SpeedButton377Click(Sender: TObject);
begin
  EditButton(SpeedButton377.Name);
end;

procedure TFrmPOSRest.SpeedButton378Click(Sender: TObject);
begin
  EditButton(SpeedButton378.Name);
end;

procedure TFrmPOSRest.SpeedButton379Click(Sender: TObject);
begin
  EditButton(SpeedButton379.Name);
end;

procedure TFrmPOSRest.SpeedButton37Click(Sender: TObject);
begin
  EditButton(SpeedButton37.Name);
end;

procedure TFrmPOSRest.SpeedButton380Click(Sender: TObject);
begin
  EditButton(SpeedButton380.Name);
end;

procedure TFrmPOSRest.SpeedButton381Click(Sender: TObject);
begin
  EditButton(SpeedButton381.Name);
end;

procedure TFrmPOSRest.SpeedButton382Click(Sender: TObject);
begin
  EditButton(SpeedButton382.Name);
end;

procedure TFrmPOSRest.SpeedButton383Click(Sender: TObject);
begin
  EditButton(SpeedButton383.Name);
end;

procedure TFrmPOSRest.SpeedButton384Click(Sender: TObject);
begin
  EditButton(SpeedButton384.Name);
end;

procedure TFrmPOSRest.SpeedButton385Click(Sender: TObject);
begin
  EditButton(SpeedButton385.Name);
end;

procedure TFrmPOSRest.SpeedButton386Click(Sender: TObject);
begin
  EditButton(SpeedButton386.Name);
end;

procedure TFrmPOSRest.SpeedButton387Click(Sender: TObject);
begin
  EditButton(SpeedButton387.Name);
end;

procedure TFrmPOSRest.SpeedButton388Click(Sender: TObject);
begin
  EditButton(SpeedButton388.Name);
end;

procedure TFrmPOSRest.SpeedButton389Click(Sender: TObject);
begin
  EditButton(SpeedButton389.Name);
end;

procedure TFrmPOSRest.SpeedButton38Click(Sender: TObject);
begin
  EditButton(SpeedButton38.Name);
end;

procedure TFrmPOSRest.SpeedButton390Click(Sender: TObject);
begin
  EditButton(SpeedButton390.Name);
end;

procedure TFrmPOSRest.SpeedButton391Click(Sender: TObject);
begin
  EditButton(SpeedButton391.Name);
end;

procedure TFrmPOSRest.SpeedButton392Click(Sender: TObject);
begin
  EditButton(SpeedButton392.Name);
end;

procedure TFrmPOSRest.SpeedButton393Click(Sender: TObject);
begin
  EditButton(SpeedButton393.Name);
end;

procedure TFrmPOSRest.SpeedButton394Click(Sender: TObject);
begin
  EditButton(SpeedButton394.Name);
end;

procedure TFrmPOSRest.SpeedButton395Click(Sender: TObject);
begin
  EditButton(SpeedButton395.Name);
end;

procedure TFrmPOSRest.SpeedButton396Click(Sender: TObject);
begin
  EditButton(SpeedButton396.Name);
end;

procedure TFrmPOSRest.SpeedButton397Click(Sender: TObject);
begin
  EditButton(SpeedButton397.Name);
end;

procedure TFrmPOSRest.SpeedButton398Click(Sender: TObject);
begin
  EditButton(SpeedButton398.Name);
end;

procedure TFrmPOSRest.SpeedButton399Click(Sender: TObject);
begin
  EditButton(SpeedButton399.Name);
end;

procedure TFrmPOSRest.SpeedButton39Click(Sender: TObject);
begin
  EditButton(SpeedButton39.Name);
end;

procedure TFrmPOSRest.SpeedButton3Click(Sender: TObject);
begin
  EditButton(SpeedButton3.Name);
end;

procedure TFrmPOSRest.SpeedButton400Click(Sender: TObject);
begin
  EditButton(SpeedButton400.Name);
end;

procedure TFrmPOSRest.SpeedButton401Click(Sender: TObject);
begin
  EditButton(SpeedButton401.Name);
end;

procedure TFrmPOSRest.SpeedButton402Click(Sender: TObject);
begin
  EditButton(SpeedButton402.Name);
end;

procedure TFrmPOSRest.SpeedButton403Click(Sender: TObject);
begin
  EditButton(SpeedButton403.Name);
end;

procedure TFrmPOSRest.SpeedButton404Click(Sender: TObject);
begin
  EditButton(SpeedButton404.Name);
end;

procedure TFrmPOSRest.SpeedButton405Click(Sender: TObject);
begin
  EditButton(SpeedButton405.Name);
end;

procedure TFrmPOSRest.SpeedButton406Click(Sender: TObject);
begin
  EditButton(SpeedButton406.Name);
end;

procedure TFrmPOSRest.SpeedButton407Click(Sender: TObject);
begin
  EditButton(SpeedButton407.Name);
end;

procedure TFrmPOSRest.SpeedButton408Click(Sender: TObject);
begin
  EditButton(SpeedButton408.Name);
end;

procedure TFrmPOSRest.SpeedButton409Click(Sender: TObject);
begin
  EditButton(SpeedButton409.Name);
end;

procedure TFrmPOSRest.SpeedButton40Click(Sender: TObject);
begin
  EditButton(SpeedButton40.Name);
end;

procedure TFrmPOSRest.SpeedButton410Click(Sender: TObject);
begin
  EditButton(SpeedButton410.Name);
end;

procedure TFrmPOSRest.SpeedButton411Click(Sender: TObject);
begin
  EditButton(SpeedButton411.Name);
end;

procedure TFrmPOSRest.SpeedButton412Click(Sender: TObject);
begin
  EditButton(SpeedButton412.Name);
end;

procedure TFrmPOSRest.SpeedButton413Click(Sender: TObject);
begin
  EditButton(SpeedButton413.Name);
end;

procedure TFrmPOSRest.SpeedButton414Click(Sender: TObject);
begin
  EditButton(SpeedButton414.Name);
end;

procedure TFrmPOSRest.SpeedButton415Click(Sender: TObject);
begin
  EditButton(SpeedButton415.Name);
end;

procedure TFrmPOSRest.SpeedButton416Click(Sender: TObject);
begin
  EditButton(SpeedButton416.Name);
end;

procedure TFrmPOSRest.SpeedButton417Click(Sender: TObject);
begin
  EditButton(SpeedButton417.Name);
end;

procedure TFrmPOSRest.SpeedButton418Click(Sender: TObject);
begin
  EditButton(SpeedButton418.Name);
end;

procedure TFrmPOSRest.SpeedButton419Click(Sender: TObject);
begin
  EditButton(SpeedButton419.Name);
end;

procedure TFrmPOSRest.SpeedButton41Click(Sender: TObject);
begin
  EditButton(SpeedButton41.Name);
end;

procedure TFrmPOSRest.SpeedButton420Click(Sender: TObject);
begin
  EditButton(SpeedButton421.Name);
end;

procedure TFrmPOSRest.SpeedButton421Click(Sender: TObject);
begin
  EditButton(SpeedButton421.Name);
end;

procedure TFrmPOSRest.SpeedButton422Click(Sender: TObject);
begin
  EditButton(SpeedButton422.Name);
end;

procedure TFrmPOSRest.SpeedButton423Click(Sender: TObject);
begin
  EditButton(SpeedButton423.Name);
end;

procedure TFrmPOSRest.SpeedButton424Click(Sender: TObject);
begin
  EditButton(SpeedButton424.Name);
end;

procedure TFrmPOSRest.SpeedButton425Click(Sender: TObject);
begin
  EditButton(SpeedButton425.Name);
end;

procedure TFrmPOSRest.SpeedButton426Click(Sender: TObject);
begin
  EditButton(SpeedButton426.Name);
end;

procedure TFrmPOSRest.SpeedButton427Click(Sender: TObject);
begin
  EditButton(SpeedButton427.Name);
end;

procedure TFrmPOSRest.SpeedButton428Click(Sender: TObject);
begin
  EditButton(SpeedButton428.Name);
end;

procedure TFrmPOSRest.SpeedButton429Click(Sender: TObject);
begin
  EditButton(SpeedButton429.Name);
end;

procedure TFrmPOSRest.SpeedButton42Click(Sender: TObject);
begin
  EditButton(SpeedButton42.Name);
end;

procedure TFrmPOSRest.SpeedButton430Click(Sender: TObject);
begin
  EditButton(SpeedButton430.Name);
end;

procedure TFrmPOSRest.SpeedButton431Click(Sender: TObject);
begin
  EditButton(SpeedButton431.Name);
end;

procedure TFrmPOSRest.SpeedButton432Click(Sender: TObject);
begin
  EditButton(SpeedButton432.Name);
end;

procedure TFrmPOSRest.SpeedButton433Click(Sender: TObject);
begin
  EditButton(SpeedButton433.Name);
end;

procedure TFrmPOSRest.SpeedButton434Click(Sender: TObject);
begin
  EditButton(SpeedButton434.Name);
end;

procedure TFrmPOSRest.SpeedButton435Click(Sender: TObject);
begin
  EditButton(SpeedButton435.Name);
end;

procedure TFrmPOSRest.SpeedButton436Click(Sender: TObject);
begin
  EditButton(SpeedButton436.Name);
end;

procedure TFrmPOSRest.SpeedButton437Click(Sender: TObject);
begin
  EditButton(SpeedButton437.Name);
end;

procedure TFrmPOSRest.SpeedButton438Click(Sender: TObject);
begin
  EditButton(SpeedButton438.Name);
end;

procedure TFrmPOSRest.SpeedButton439Click(Sender: TObject);
begin
  EditButton(SpeedButton439.Name);
end;

procedure TFrmPOSRest.SpeedButton43Click(Sender: TObject);
begin
  EditButton(SpeedButton43.Name);
end;

procedure TFrmPOSRest.SpeedButton440Click(Sender: TObject);
begin
  EditButton(SpeedButton440.Name);
end;

procedure TFrmPOSRest.SpeedButton441Click(Sender: TObject);
begin
  EditButton(SpeedButton465.Name);
end;

procedure TFrmPOSRest.SpeedButton442Click(Sender: TObject);
begin
  EditButton(SpeedButton442.Name);
end;

procedure TFrmPOSRest.SpeedButton443Click(Sender: TObject);
begin
  EditButton(SpeedButton443.Name);
end;

procedure TFrmPOSRest.SpeedButton444Click(Sender: TObject);
begin
  EditButton(SpeedButton444.Name);
end;

procedure TFrmPOSRest.SpeedButton445Click(Sender: TObject);
begin
  EditButton(SpeedButton445.Name);
end;

procedure TFrmPOSRest.SpeedButton446Click(Sender: TObject);
begin
  EditButton(SpeedButton446.Name);
end;

procedure TFrmPOSRest.SpeedButton447Click(Sender: TObject);
begin
  EditButton(SpeedButton447.Name);
end;

procedure TFrmPOSRest.SpeedButton448Click(Sender: TObject);
begin
  EditButton(SpeedButton448.Name);
end;

procedure TFrmPOSRest.SpeedButton449Click(Sender: TObject);
begin
  EditButton(SpeedButton449.Name);
end;

procedure TFrmPOSRest.SpeedButton44Click(Sender: TObject);
begin
  EditButton(SpeedButton44.Name);
end;

procedure TFrmPOSRest.SpeedButton450Click(Sender: TObject);
begin
  EditButton(SpeedButton450.Name);
end;

procedure TFrmPOSRest.SpeedButton451Click(Sender: TObject);
begin
  EditButton(SpeedButton451.Name);
end;

procedure TFrmPOSRest.SpeedButton452Click(Sender: TObject);
begin
  EditButton(SpeedButton452.Name);
end;

procedure TFrmPOSRest.SpeedButton453Click(Sender: TObject);
begin
  EditButton(SpeedButton453.Name);
end;

procedure TFrmPOSRest.SpeedButton454Click(Sender: TObject);
begin
  EditButton(SpeedButton454.Name);
end;

procedure TFrmPOSRest.SpeedButton455Click(Sender: TObject);
begin
  EditButton(SpeedButton455.Name);
end;

procedure TFrmPOSRest.SpeedButton456Click(Sender: TObject);
begin
  EditButton(SpeedButton456.Name);
end;

procedure TFrmPOSRest.SpeedButton457Click(Sender: TObject);
begin
  EditButton(SpeedButton457.Name);
end;

procedure TFrmPOSRest.SpeedButton458Click(Sender: TObject);
begin
  EditButton(SpeedButton458.Name);
end;

procedure TFrmPOSRest.SpeedButton459Click(Sender: TObject);
begin
  EditButton(SpeedButton459.Name);
end;

procedure TFrmPOSRest.SpeedButton45Click(Sender: TObject);
begin
  EditButton(SpeedButton45.Name);
end;

procedure TFrmPOSRest.SpeedButton460Click(Sender: TObject);
begin
  EditButton(SpeedButton460.Name);
end;

procedure TFrmPOSRest.SpeedButton461Click(Sender: TObject);
begin
  EditButton(SpeedButton461.Name);
end;

procedure TFrmPOSRest.SpeedButton462Click(Sender: TObject);
begin
  EditButton(SpeedButton462.Name);
end;

procedure TFrmPOSRest.SpeedButton463Click(Sender: TObject);
begin
  EditButton(SpeedButton463.Name);
end;

procedure TFrmPOSRest.SpeedButton464Click(Sender: TObject);
begin
  EditButton(SpeedButton464.Name);
end;

procedure TFrmPOSRest.SpeedButton465Click(Sender: TObject);
begin
  EditButton(SpeedButton465.Name);
end;

procedure TFrmPOSRest.SpeedButton466Click(Sender: TObject);
begin
  EditButton(SpeedButton466.Name);
end;

procedure TFrmPOSRest.SpeedButton467Click(Sender: TObject);
begin
  EditButton(SpeedButton467.Name);
end;

procedure TFrmPOSRest.SpeedButton468Click(Sender: TObject);
begin
  EditButton(SpeedButton468.Name);
end;

procedure TFrmPOSRest.SpeedButton469Click(Sender: TObject);
begin
  EditButton(SpeedButton469.Name);
end;

procedure TFrmPOSRest.SpeedButton46Click(Sender: TObject);
begin
  EditButton(SpeedButton46.Name);
end;

procedure TFrmPOSRest.SpeedButton470Click(Sender: TObject);
begin
  EditButton(SpeedButton470.Name);
end;

procedure TFrmPOSRest.SpeedButton471Click(Sender: TObject);
begin
  EditButton(SpeedButton471.Name);
end;

procedure TFrmPOSRest.SpeedButton472Click(Sender: TObject);
begin
  EditButton(SpeedButton472.Name);
end;

procedure TFrmPOSRest.SpeedButton473Click(Sender: TObject);
begin
  EditButton(SpeedButton473.Name);
end;

procedure TFrmPOSRest.SpeedButton474Click(Sender: TObject);
begin
  EditButton(SpeedButton474.Name);
end;

procedure TFrmPOSRest.SpeedButton475Click(Sender: TObject);
begin
  EditButton(SpeedButton475.Name);
end;

procedure TFrmPOSRest.SpeedButton476Click(Sender: TObject);
begin
  EditButton(SpeedButton476.Name);
end;

procedure TFrmPOSRest.SpeedButton477Click(Sender: TObject);
begin
  EditButton(SpeedButton477.Name);
end;

procedure TFrmPOSRest.SpeedButton478Click(Sender: TObject);
begin
  EditButton(SpeedButton478.Name);
end;

procedure TFrmPOSRest.SpeedButton479Click(Sender: TObject);
begin
  EditButton(SpeedButton479.Name);
end;

procedure TFrmPOSRest.SpeedButton47Click(Sender: TObject);
begin
  EditButton(SpeedButton47.Name);
end;

procedure TFrmPOSRest.SpeedButton480Click(Sender: TObject);
begin
  EditButton(SpeedButton480.Name);
end;

procedure TFrmPOSRest.SpeedButton481Click(Sender: TObject);
begin
  EditButton(SpeedButton481.Name);
end;

procedure TFrmPOSRest.SpeedButton482Click(Sender: TObject);
begin
  EditButton(SpeedButton482.Name);
end;

procedure TFrmPOSRest.SpeedButton483Click(Sender: TObject);
begin
  EditButton(SpeedButton483.Name);
end;

procedure TFrmPOSRest.SpeedButton484Click(Sender: TObject);
begin
  EditButton(SpeedButton484.Name);
end;

procedure TFrmPOSRest.SpeedButton485Click(Sender: TObject);
begin
  EditButton(SpeedButton485.Name);
end;

procedure TFrmPOSRest.SpeedButton486Click(Sender: TObject);
begin
  EditButton(SpeedButton486.Name);
end;

procedure TFrmPOSRest.SpeedButton487Click(Sender: TObject);
begin
  EditButton(SpeedButton487.Name);
end;

procedure TFrmPOSRest.SpeedButton488Click(Sender: TObject);
begin
  EditButton(SpeedButton488.Name);
end;

procedure TFrmPOSRest.SpeedButton489Click(Sender: TObject);
begin
  EditButton(SpeedButton489.Name);
end;

procedure TFrmPOSRest.SpeedButton48Click(Sender: TObject);
begin
  EditButton(SpeedButton48.Name);
end;

procedure TFrmPOSRest.SpeedButton490Click(Sender: TObject);
begin
  EditButton(SpeedButton490.Name);
end;

procedure TFrmPOSRest.SpeedButton491Click(Sender: TObject);
begin
  EditButton(SpeedButton491.Name);
end;

procedure TFrmPOSRest.SpeedButton492Click(Sender: TObject);
begin
  EditButton(SpeedButton492.Name);
end;

procedure TFrmPOSRest.SpeedButton493Click(Sender: TObject);
begin
  EditButton(SpeedButton493.Name);
end;

procedure TFrmPOSRest.SpeedButton494Click(Sender: TObject);
begin
  EditButton(SpeedButton494.Name);
end;

procedure TFrmPOSRest.SpeedButton495Click(Sender: TObject);
begin
  EditButton(SpeedButton495.Name);
end;

procedure TFrmPOSRest.SpeedButton496Click(Sender: TObject);
begin
  EditButton(SpeedButton496.Name);
end;

procedure TFrmPOSRest.SpeedButton497Click(Sender: TObject);
begin
  EditButton(SpeedButton497.Name);
end;

procedure TFrmPOSRest.SpeedButton498Click(Sender: TObject);
begin
  EditButton(SpeedButton498.Name);
end;

procedure TFrmPOSRest.SpeedButton499Click(Sender: TObject);
begin
  EditButton(SpeedButton499.Name);
end;

procedure TFrmPOSRest.SpeedButton49Click(Sender: TObject);
begin
  EditButton(SpeedButton49.Name);
end;

procedure TFrmPOSRest.SpeedButton4Click(Sender: TObject);
begin
  EditButton(SpeedButton4.Name);
end;

procedure TFrmPOSRest.sbCat15Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 14;
  EditButton(sbCat15.Name);
end;

procedure TFrmPOSRest.sbCat16Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 15;
  EditButton(sbCat16.Name);
end;

procedure TFrmPOSRest.sbCat17Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 16;
  EditButton(sbCat17.Name);
end;

procedure TFrmPOSRest.sbCat18Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 17;
  EditButton(sbCat18.Name);
end;

procedure TFrmPOSRest.sbCat19Click(Sender: TObject);
begin
  pcMain.ActivePageIndex := 18;
  EditButton(sbCat19.Name);
end;

procedure TFrmPOSRest.SpeedButton500Click(Sender: TObject);
begin
  EditButton(SpeedButton500.Name);
end;

procedure TFrmPOSRest.SpeedButton501Click(Sender: TObject);
begin
  EditButton(SpeedButton501.Name);
end;

procedure TFrmPOSRest.SpeedButton502Click(Sender: TObject);
begin
  EditButton(SpeedButton502.Name);
end;

procedure TFrmPOSRest.SpeedButton503Click(Sender: TObject);
begin
  EditButton(SpeedButton503.Name);
end;

procedure TFrmPOSRest.SpeedButton504Click(Sender: TObject);
begin
  EditButton(SpeedButton504.Name);
end;

procedure TFrmPOSRest.SpeedButton505Click(Sender: TObject);
begin
  EditButton(SpeedButton505.Name);
end;

procedure TFrmPOSRest.SpeedButton506Click(Sender: TObject);
begin
  EditButton(SpeedButton506.Name);
end;

procedure TFrmPOSRest.SpeedButton507Click(Sender: TObject);
begin
  EditButton(SpeedButton507.Name);
end;

procedure TFrmPOSRest.SpeedButton508Click(Sender: TObject);
begin
  EditButton(SpeedButton508.Name);
end;

procedure TFrmPOSRest.SpeedButton509Click(Sender: TObject);
begin
  EditButton(SpeedButton509.Name);
end;

procedure TFrmPOSRest.SpeedButton50Click(Sender: TObject);
begin
  EditButton(SpeedButton50.Name);
end;

procedure TFrmPOSRest.SpeedButton510Click(Sender: TObject);
begin
  EditButton(SpeedButton510.Name);
end;

procedure TFrmPOSRest.SpeedButton511Click(Sender: TObject);
begin
  EditButton(SpeedButton511.Name);
end;

procedure TFrmPOSRest.SpeedButton512Click(Sender: TObject);
begin
  EditButton(SpeedButton512.Name);
end;

procedure TFrmPOSRest.SpeedButton513Click(Sender: TObject);
begin
  EditButton(SpeedButton513.Name);
end;

procedure TFrmPOSRest.SpeedButton514Click(Sender: TObject);
begin
  EditButton(SpeedButton514.Name);
end;

procedure TFrmPOSRest.SpeedButton515Click(Sender: TObject);
begin
  EditButton(SpeedButton515.Name);
end;

procedure TFrmPOSRest.SpeedButton516Click(Sender: TObject);
begin
  EditButton(SpeedButton516.Name);
end;

procedure TFrmPOSRest.SpeedButton517Click(Sender: TObject);
begin
  EditButton(SpeedButton517.Name);
end;

procedure TFrmPOSRest.SpeedButton518Click(Sender: TObject);
begin
  EditButton(SpeedButton518.Name);
end;

procedure TFrmPOSRest.SpeedButton519Click(Sender: TObject);
begin
  EditButton(SpeedButton519.Name);
end;

procedure TFrmPOSRest.SpeedButton51Click(Sender: TObject);
begin
  EditButton(SpeedButton51.Name);
end;

procedure TFrmPOSRest.SpeedButton520Click(Sender: TObject);
begin
  EditButton(SpeedButton520.Name);
end;

procedure TFrmPOSRest.SpeedButton521Click(Sender: TObject);
begin
  EditButton(SpeedButton521.Name);
end;

procedure TFrmPOSRest.SpeedButton522Click(Sender: TObject);
begin
  EditButton(SpeedButton522.Name);
end;

procedure TFrmPOSRest.SpeedButton523Click(Sender: TObject);
begin
  EditButton(SpeedButton523.Name);
end;

procedure TFrmPOSRest.SpeedButton524Click(Sender: TObject);
begin
  EditButton(SpeedButton524.Name);
end;

procedure TFrmPOSRest.SpeedButton525Click(Sender: TObject);
begin
  EditButton(SpeedButton525.Name);
end;

procedure TFrmPOSRest.SpeedButton526Click(Sender: TObject);
begin
  EditButton(SpeedButton526.Name);
end;

procedure TFrmPOSRest.SpeedButton527Click(Sender: TObject);
begin
  EditButton(SpeedButton527.Name);
end;

procedure TFrmPOSRest.SpeedButton528Click(Sender: TObject);
begin
  EditButton(SpeedButton528.Name);
end;

procedure TFrmPOSRest.SpeedButton529Click(Sender: TObject);
begin
  EditButton(SpeedButton529.Name);
end;

procedure TFrmPOSRest.SpeedButton52Click(Sender: TObject);
begin
  EditButton(SpeedButton52.Name);
end;

procedure TFrmPOSRest.SpeedButton530Click(Sender: TObject);
begin
  EditButton(SpeedButton530.Name);
end;

procedure TFrmPOSRest.SpeedButton531Click(Sender: TObject);
begin
  EditButton(SpeedButton531.Name);
end;

procedure TFrmPOSRest.SpeedButton532Click(Sender: TObject);
begin
  EditButton(SpeedButton532.Name);
end;

procedure TFrmPOSRest.SpeedButton533Click(Sender: TObject);
begin
  EditButton(SpeedButton533.Name);
end;

procedure TFrmPOSRest.SpeedButton534Click(Sender: TObject);
begin
  EditButton(SpeedButton534.Name);
end;

procedure TFrmPOSRest.SpeedButton535Click(Sender: TObject);
begin
  EditButton(SpeedButton535.Name);
end;

procedure TFrmPOSRest.SpeedButton536Click(Sender: TObject);
begin
  EditButton(SpeedButton536.Name);
end;

procedure TFrmPOSRest.SpeedButton537Click(Sender: TObject);
begin
  EditButton(SpeedButton537.Name);
end;

procedure TFrmPOSRest.SpeedButton538Click(Sender: TObject);
begin
  EditButton(SpeedButton538.Name);
end;

procedure TFrmPOSRest.SpeedButton539Click(Sender: TObject);
begin
  EditButton(SpeedButton539.Name);
end;

procedure TFrmPOSRest.SpeedButton53Click(Sender: TObject);
begin
  EditButton(SpeedButton53.Name);
end;

procedure TFrmPOSRest.SpeedButton540Click(Sender: TObject);
begin
  EditButton(SpeedButton540.Name);
end;

procedure TFrmPOSRest.SpeedButton541Click(Sender: TObject);
begin
  EditButton(SpeedButton541.Name);
end;

procedure TFrmPOSRest.SpeedButton542Click(Sender: TObject);
begin
  EditButton(SpeedButton542.Name);
end;

procedure TFrmPOSRest.SpeedButton543Click(Sender: TObject);
begin
  EditButton(SpeedButton543.Name);
end;

procedure TFrmPOSRest.SpeedButton544Click(Sender: TObject);
begin
  EditButton(SpeedButton544.Name);
end;

procedure TFrmPOSRest.SpeedButton545Click(Sender: TObject);
begin
  EditButton(SpeedButton545.Name);
end;

procedure TFrmPOSRest.SpeedButton546Click(Sender: TObject);
begin
  EditButton(SpeedButton546.Name);
end;

procedure TFrmPOSRest.SpeedButton547Click(Sender: TObject);
begin
  EditButton(SpeedButton547.Name);
end;

procedure TFrmPOSRest.SpeedButton548Click(Sender: TObject);
begin
  EditButton(SpeedButton548.Name);
end;

procedure TFrmPOSRest.SpeedButton549Click(Sender: TObject);
begin
  EditButton(SpeedButton549.Name);
end;

procedure TFrmPOSRest.SpeedButton54Click(Sender: TObject);
begin
  EditButton(SpeedButton54.Name);
end;

procedure TFrmPOSRest.SpeedButton550Click(Sender: TObject);
begin
  EditButton(SpeedButton550.Name);
end;

procedure TFrmPOSRest.SpeedButton551Click(Sender: TObject);
begin
  EditButton(SpeedButton551.Name);
end;

procedure TFrmPOSRest.SpeedButton552Click(Sender: TObject);
begin
  EditButton(SpeedButton552.Name);
end;

procedure TFrmPOSRest.SpeedButton553Click(Sender: TObject);
begin
  EditButton(SpeedButton553.Name);
end;

procedure TFrmPOSRest.SpeedButton554Click(Sender: TObject);
begin
  EditButton(SpeedButton554.Name);
end;

procedure TFrmPOSRest.SpeedButton555Click(Sender: TObject);
begin
  EditButton(SpeedButton555.Name);
end;

procedure TFrmPOSRest.SpeedButton556Click(Sender: TObject);
begin
  EditButton(SpeedButton556.Name);
end;

procedure TFrmPOSRest.SpeedButton557Click(Sender: TObject);
begin
  EditButton(SpeedButton557.Name);
end;

procedure TFrmPOSRest.SpeedButton558Click(Sender: TObject);
begin
  EditButton(SpeedButton558.Name);
end;

procedure TFrmPOSRest.SpeedButton559Click(Sender: TObject);
begin
  EditButton(SpeedButton559.Name);
end;

procedure TFrmPOSRest.SpeedButton55Click(Sender: TObject);
begin
  EditButton(SpeedButton55.Name);
end;

procedure TFrmPOSRest.SpeedButton560Click(Sender: TObject);
begin
  EditButton(SpeedButton560.Name);
end;

procedure TFrmPOSRest.SpeedButton561Click(Sender: TObject);
begin
  EditButton(SpeedButton561.Name);
end;

procedure TFrmPOSRest.SpeedButton562Click(Sender: TObject);
begin
  EditButton(SpeedButton562.Name);
end;

procedure TFrmPOSRest.SpeedButton563Click(Sender: TObject);
begin
  EditButton(SpeedButton563.Name);
end;

procedure TFrmPOSRest.SpeedButton564Click(Sender: TObject);
begin
  EditButton(SpeedButton564.Name);
end;

procedure TFrmPOSRest.SpeedButton565Click(Sender: TObject);
begin
  EditButton(SpeedButton565.Name);
end;

procedure TFrmPOSRest.SpeedButton566Click(Sender: TObject);
begin
  EditButton(SpeedButton566.Name);
end;

procedure TFrmPOSRest.SpeedButton567Click(Sender: TObject);
begin
  EditButton(SpeedButton567.Name);
end;

procedure TFrmPOSRest.SpeedButton568Click(Sender: TObject);
begin
  EditButton(SpeedButton568.Name);
end;

procedure TFrmPOSRest.SpeedButton569Click(Sender: TObject);
begin
  EditButton(SpeedButton569.Name);
end;

procedure TFrmPOSRest.SpeedButton56Click(Sender: TObject);
begin
  EditButton(SpeedButton56.Name);
end;

procedure TFrmPOSRest.SpeedButton570Click(Sender: TObject);
begin
  EditButton(SpeedButton570.Name);
end;

procedure TFrmPOSRest.SpeedButton571Click(Sender: TObject);
begin
  EditButton(SpeedButton571.Name);
end;

procedure TFrmPOSRest.SpeedButton572Click(Sender: TObject);
begin
  EditButton(SpeedButton572.Name);
end;

procedure TFrmPOSRest.SpeedButton573Click(Sender: TObject);
begin
  EditButton(SpeedButton573.Name);
end;

procedure TFrmPOSRest.SpeedButton574Click(Sender: TObject);
begin
  EditButton(SpeedButton574.Name);
end;

procedure TFrmPOSRest.SpeedButton575Click(Sender: TObject);
begin
  EditButton(SpeedButton575.Name);
end;

procedure TFrmPOSRest.SpeedButton576Click(Sender: TObject);
begin
  EditButton(SpeedButton576.Name);
end;

procedure TFrmPOSRest.SpeedButton577Click(Sender: TObject);
begin
  EditButton(SpeedButton577.Name);
end;

procedure TFrmPOSRest.SpeedButton578Click(Sender: TObject);
begin
  EditButton(SpeedButton578.Name);
end;

procedure TFrmPOSRest.SpeedButton579Click(Sender: TObject);
begin
  EditButton(SpeedButton579.Name);
end;

procedure TFrmPOSRest.SpeedButton57Click(Sender: TObject);
begin
  EditButton(SpeedButton57.Name);
end;

procedure TFrmPOSRest.SpeedButton580Click(Sender: TObject);
begin
  EditButton(SpeedButton580.Name);
end;

procedure TFrmPOSRest.SpeedButton581Click(Sender: TObject);
begin
  EditButton(SpeedButton581.Name);
end;

procedure TFrmPOSRest.SpeedButton582Click(Sender: TObject);
begin
  EditButton(SpeedButton582.Name);
end;

procedure TFrmPOSRest.SpeedButton583Click(Sender: TObject);
begin
  EditButton(SpeedButton583.Name);
end;

procedure TFrmPOSRest.SpeedButton584Click(Sender: TObject);
begin
  EditButton(SpeedButton584.Name);
end;

procedure TFrmPOSRest.SpeedButton585Click(Sender: TObject);
begin
  EditButton(SpeedButton585.Name);
end;

procedure TFrmPOSRest.SpeedButton586Click(Sender: TObject);
begin
  EditButton(SpeedButton586.Name);
end;

procedure TFrmPOSRest.SpeedButton587Click(Sender: TObject);
begin
  EditButton(SpeedButton587.Name);
end;

procedure TFrmPOSRest.SpeedButton588Click(Sender: TObject);
begin
  EditButton(SpeedButton588.Name);
end;

procedure TFrmPOSRest.SpeedButton589Click(Sender: TObject);
begin
  EditButton(SpeedButton589.Name);
end;

procedure TFrmPOSRest.SpeedButton58Click(Sender: TObject);
begin
  EditButton(SpeedButton58.Name);
end;

procedure TFrmPOSRest.SpeedButton590Click(Sender: TObject);
begin
  EditButton(SpeedButton590.Name);
end;

procedure TFrmPOSRest.SpeedButton591Click(Sender: TObject);
begin
  EditButton(SpeedButton591.Name);
end;

procedure TFrmPOSRest.SpeedButton592Click(Sender: TObject);
begin
  EditButton(SpeedButton592.Name);
end;

procedure TFrmPOSRest.SpeedButton593Click(Sender: TObject);
begin
  EditButton(SpeedButton593.Name);
end;

procedure TFrmPOSRest.SpeedButton594Click(Sender: TObject);
begin
  EditButton(SpeedButton594.Name);
end;

procedure TFrmPOSRest.SpeedButton595Click(Sender: TObject);
begin
  EditButton(SpeedButton595.Name);
end;

procedure TFrmPOSRest.SpeedButton596Click(Sender: TObject);
begin
  EditButton(SpeedButton596.Name);
end;

procedure TFrmPOSRest.SpeedButton597Click(Sender: TObject);
begin
  EditButton(SpeedButton597.Name);
end;

procedure TFrmPOSRest.SpeedButton598Click(Sender: TObject);
begin
  EditButton(SpeedButton598.Name);
end;

procedure TFrmPOSRest.SpeedButton599Click(Sender: TObject);
begin
  EditButton(SpeedButton599.Name);
end;

procedure TFrmPOSRest.SpeedButton59Click(Sender: TObject);
begin
  EditButton(SpeedButton59.Name);
end;

procedure TFrmPOSRest.SpeedButton5Click(Sender: TObject);
begin
  EditButton(SpeedButton5.Name);
end;

procedure TFrmPOSRest.SpeedButton600Click(Sender: TObject);
begin
  EditButton(SpeedButton600.Name);
end;

procedure TFrmPOSRest.SpeedButton601Click(Sender: TObject);
begin
  EditButton(SpeedButton601.Name);
end;

procedure TFrmPOSRest.SpeedButton602Click(Sender: TObject);
begin
  EditButton(SpeedButton602.Name);
end;

procedure TFrmPOSRest.SpeedButton603Click(Sender: TObject);
begin
  EditButton(SpeedButton603.Name);
end;

procedure TFrmPOSRest.SpeedButton604Click(Sender: TObject);
begin
  EditButton(SpeedButton604.Name);
end;

procedure TFrmPOSRest.SpeedButton605Click(Sender: TObject);
begin
  EditButton(SpeedButton605.Name);
end;

procedure TFrmPOSRest.SpeedButton606Click(Sender: TObject);
begin
  EditButton(SpeedButton606.Name);
end;

procedure TFrmPOSRest.SpeedButton607Click(Sender: TObject);
begin
  EditButton(SpeedButton607.Name);
end;

procedure TFrmPOSRest.SpeedButton608Click(Sender: TObject);
begin
  EditButton(SpeedButton608.Name);
end;

procedure TFrmPOSRest.SpeedButton609Click(Sender: TObject);
begin
  EditButton(SpeedButton609.Name);
end;

procedure TFrmPOSRest.SpeedButton60Click(Sender: TObject);
begin
  EditButton(SpeedButton60.Name);
end;

procedure TFrmPOSRest.SpeedButton610Click(Sender: TObject);
begin
  EditButton(SpeedButton610.Name);
end;

procedure TFrmPOSRest.SpeedButton611Click(Sender: TObject);
begin
  EditButton(SpeedButton611.Name);
end;

procedure TFrmPOSRest.SpeedButton612Click(Sender: TObject);
begin
  EditButton(SpeedButton612.Name);
end;

procedure TFrmPOSRest.SpeedButton613Click(Sender: TObject);
begin
  EditButton(SpeedButton613.Name);
end;

procedure TFrmPOSRest.SpeedButton614Click(Sender: TObject);
begin
  EditButton(SpeedButton614.Name);
end;

procedure TFrmPOSRest.SpeedButton615Click(Sender: TObject);
begin
  EditButton(SpeedButton615.Name);
end;

procedure TFrmPOSRest.SpeedButton616Click(Sender: TObject);
begin
  EditButton(SpeedButton616.Name);
end;

procedure TFrmPOSRest.SpeedButton617Click(Sender: TObject);
begin
  EditButton(SpeedButton617.Name);
end;

procedure TFrmPOSRest.SpeedButton618Click(Sender: TObject);
begin
  EditButton(SpeedButton618.Name);
end;

procedure TFrmPOSRest.SpeedButton619Click(Sender: TObject);
begin
  EditButton(SpeedButton619.Name);
end;

procedure TFrmPOSRest.SpeedButton61Click(Sender: TObject);
begin
  EditButton(SpeedButton61.Name);
end;

procedure TFrmPOSRest.SpeedButton620Click(Sender: TObject);
begin
  EditButton(SpeedButton620.Name);
end;

procedure TFrmPOSRest.SpeedButton621Click(Sender: TObject);
begin
  EditButton(SpeedButton621.Name);
end;

procedure TFrmPOSRest.SpeedButton622Click(Sender: TObject);
begin
  EditButton(SpeedButton622.Name);
end;

procedure TFrmPOSRest.SpeedButton623Click(Sender: TObject);
begin
  EditButton(SpeedButton623.Name);
end;

procedure TFrmPOSRest.SpeedButton624Click(Sender: TObject);
begin
  EditButton(SpeedButton624.Name);
end;

procedure TFrmPOSRest.SpeedButton625Click(Sender: TObject);
begin
  EditButton(SpeedButton625.Name);
end;

procedure TFrmPOSRest.SpeedButton626Click(Sender: TObject);
begin
  EditButton(SpeedButton626.Name);
end;

procedure TFrmPOSRest.SpeedButton627Click(Sender: TObject);
begin
  EditButton(SpeedButton627.Name);
end;

procedure TFrmPOSRest.SpeedButton628Click(Sender: TObject);
begin
  EditButton(SpeedButton628.Name);
end;

procedure TFrmPOSRest.SpeedButton629Click(Sender: TObject);
begin
  EditButton(SpeedButton629.Name);
end;

procedure TFrmPOSRest.SpeedButton62Click(Sender: TObject);
begin
  EditButton(SpeedButton62.Name);
end;

procedure TFrmPOSRest.SpeedButton630Click(Sender: TObject);
begin
  EditButton(SpeedButton630.Name);
end;

procedure TFrmPOSRest.SpeedButton631Click(Sender: TObject);
begin
  EditButton(SpeedButton631.Name);
end;

procedure TFrmPOSRest.SpeedButton632Click(Sender: TObject);
begin
  EditButton(SpeedButton632.Name);
end;

procedure TFrmPOSRest.SpeedButton633Click(Sender: TObject);
begin
  EditButton(SpeedButton633.Name);
end;

procedure TFrmPOSRest.SpeedButton634Click(Sender: TObject);
begin
  EditButton(SpeedButton634.Name);
end;

procedure TFrmPOSRest.SpeedButton635Click(Sender: TObject);
begin
  EditButton(SpeedButton635.Name);
end;

procedure TFrmPOSRest.SpeedButton636Click(Sender: TObject);
begin
  EditButton(SpeedButton636.Name);
end;

procedure TFrmPOSRest.SpeedButton637Click(Sender: TObject);
begin
  EditButton(SpeedButton637.Name);
end;

procedure TFrmPOSRest.SpeedButton638Click(Sender: TObject);
begin
  EditButton(SpeedButton638.Name);
end;

procedure TFrmPOSRest.SpeedButton639Click(Sender: TObject);
begin
  EditButton(SpeedButton639.Name);
end;

procedure TFrmPOSRest.SpeedButton63Click(Sender: TObject);
begin
  EditButton(SpeedButton63.Name);
end;

procedure TFrmPOSRest.SpeedButton640Click(Sender: TObject);
begin
  EditButton(SpeedButton640.Name);
end;

procedure TFrmPOSRest.SpeedButton641Click(Sender: TObject);
begin
  EditButton(SpeedButton641.Name);
end;

procedure TFrmPOSRest.SpeedButton642Click(Sender: TObject);
begin
  EditButton(SpeedButton642.Name);
end;

procedure TFrmPOSRest.SpeedButton643Click(Sender: TObject);
begin
  EditButton(SpeedButton643.Name);
end;

procedure TFrmPOSRest.SpeedButton644Click(Sender: TObject);
begin
  EditButton(SpeedButton644.Name);
end;

procedure TFrmPOSRest.SpeedButton645Click(Sender: TObject);
begin
  EditButton(SpeedButton645.Name);
end;

procedure TFrmPOSRest.SpeedButton646Click(Sender: TObject);
begin
  EditButton(SpeedButton646.Name);
end;

procedure TFrmPOSRest.SpeedButton647Click(Sender: TObject);
begin
  EditButton(SpeedButton647.Name);
end;

procedure TFrmPOSRest.SpeedButton648Click(Sender: TObject);
begin
  EditButton(SpeedButton648.Name);
end;

procedure TFrmPOSRest.SpeedButton649Click(Sender: TObject);
begin
  EditButton(SpeedButton649.Name);
end;

procedure TFrmPOSRest.SpeedButton64Click(Sender: TObject);
begin
  EditButton(SpeedButton64.Name);
end;

procedure TFrmPOSRest.SpeedButton650Click(Sender: TObject);
begin
  EditButton(SpeedButton650.Name);
end;

procedure TFrmPOSRest.SpeedButton651Click(Sender: TObject);
begin
  EditButton(SpeedButton651.Name);
end;

procedure TFrmPOSRest.SpeedButton652Click(Sender: TObject);
begin
  EditButton(SpeedButton652.Name);
end;

procedure TFrmPOSRest.SpeedButton653Click(Sender: TObject);
begin
  EditButton(SpeedButton653.Name);
end;

procedure TFrmPOSRest.SpeedButton654Click(Sender: TObject);
begin
  EditButton(SpeedButton654.Name);
end;

procedure TFrmPOSRest.SpeedButton655Click(Sender: TObject);
begin
  EditButton(SpeedButton655.Name);
end;

procedure TFrmPOSRest.SpeedButton656Click(Sender: TObject);
begin
  EditButton(SpeedButton656.Name);
end;

procedure TFrmPOSRest.SpeedButton657Click(Sender: TObject);
begin
  EditButton(SpeedButton657.Name);
end;

procedure TFrmPOSRest.SpeedButton658Click(Sender: TObject);
begin
  EditButton(SpeedButton658.Name);
end;

procedure TFrmPOSRest.SpeedButton659Click(Sender: TObject);
begin
  EditButton(SpeedButton659.Name);
end;

procedure TFrmPOSRest.SpeedButton65Click(Sender: TObject);
begin
  EditButton(SpeedButton65.Name);
end;

procedure TFrmPOSRest.SpeedButton660Click(Sender: TObject);
begin
  EditButton(SpeedButton660.Name);
end;

procedure TFrmPOSRest.SpeedButton661Click(Sender: TObject);
begin
  EditButton(SpeedButton661.Name);
end;

procedure TFrmPOSRest.SpeedButton662Click(Sender: TObject);
begin
  EditButton(SpeedButton662.Name);
end;

procedure TFrmPOSRest.SpeedButton663Click(Sender: TObject);
begin
  EditButton(SpeedButton663.Name);
end;

procedure TFrmPOSRest.SpeedButton664Click(Sender: TObject);
begin
  EditButton(SpeedButton664.Name);
end;

procedure TFrmPOSRest.SpeedButton665Click(Sender: TObject);
begin
  EditButton(SpeedButton665.Name);
end;

procedure TFrmPOSRest.SpeedButton666Click(Sender: TObject);
begin
  EditButton(SpeedButton666.Name);
end;

procedure TFrmPOSRest.SpeedButton667Click(Sender: TObject);
begin
  EditButton(SpeedButton667.Name);
end;

procedure TFrmPOSRest.SpeedButton668Click(Sender: TObject);
begin
  EditButton(SpeedButton668.Name);
end;

procedure TFrmPOSRest.SpeedButton669Click(Sender: TObject);
begin
  EditButton(SpeedButton669.Name);
end;

procedure TFrmPOSRest.SpeedButton66Click(Sender: TObject);
begin
  EditButton(SpeedButton66.Name);
end;

procedure TFrmPOSRest.SpeedButton670Click(Sender: TObject);
begin
  EditButton(SpeedButton670.Name);
end;

procedure TFrmPOSRest.SpeedButton671Click(Sender: TObject);
begin
  EditButton(SpeedButton671.Name);
end;

procedure TFrmPOSRest.SpeedButton672Click(Sender: TObject);
begin
  EditButton(SpeedButton672.Name);
end;

procedure TFrmPOSRest.SpeedButton673Click(Sender: TObject);
begin
  EditButton(SpeedButton673.Name);
end;

procedure TFrmPOSRest.SpeedButton674Click(Sender: TObject);
begin
  EditButton(SpeedButton674.Name);
end;

procedure TFrmPOSRest.SpeedButton675Click(Sender: TObject);
begin
  EditButton(SpeedButton675.Name);
end;

procedure TFrmPOSRest.SpeedButton676Click(Sender: TObject);
begin
  EditButton(SpeedButton676.Name);
end;

procedure TFrmPOSRest.SpeedButton677Click(Sender: TObject);
begin
  EditButton(SpeedButton677.Name);
end;

procedure TFrmPOSRest.SpeedButton678Click(Sender: TObject);
begin
  EditButton(SpeedButton678.Name);
end;

procedure TFrmPOSRest.SpeedButton679Click(Sender: TObject);
begin
  EditButton(SpeedButton679.Name);
end;

procedure TFrmPOSRest.SpeedButton67Click(Sender: TObject);
begin
  EditButton(SpeedButton67.Name);
end;

procedure TFrmPOSRest.SpeedButton680Click(Sender: TObject);
begin
  EditButton(SpeedButton680.Name);
end;

procedure TFrmPOSRest.SpeedButton681Click(Sender: TObject);
begin
  EditButton(SpeedButton681.Name);
end;

procedure TFrmPOSRest.SpeedButton682Click(Sender: TObject);
begin
  EditButton(SpeedButton682.Name);
end;

procedure TFrmPOSRest.SpeedButton683Click(Sender: TObject);
begin
  EditButton(SpeedButton683.Name);
end;

procedure TFrmPOSRest.SpeedButton684Click(Sender: TObject);
begin
  EditButton(SpeedButton684.Name);
end;

procedure TFrmPOSRest.SpeedButton685Click(Sender: TObject);
begin
  EditButton(SpeedButton685.Name);
end;

procedure TFrmPOSRest.SpeedButton686Click(Sender: TObject);
begin
  EditButton(SpeedButton686.Name);
end;

procedure TFrmPOSRest.SpeedButton687Click(Sender: TObject);
begin
  EditButton(SpeedButton687.Name);
end;

procedure TFrmPOSRest.SpeedButton688Click(Sender: TObject);
begin
  EditButton(SpeedButton688.Name);
end;

procedure TFrmPOSRest.SpeedButton689Click(Sender: TObject);
begin
  EditButton(SpeedButton689.Name);
end;

procedure TFrmPOSRest.SpeedButton68Click(Sender: TObject);
begin
  EditButton(SpeedButton68.Name);
end;

procedure TFrmPOSRest.SpeedButton690Click(Sender: TObject);
begin
  EditButton(SpeedButton690.Name);
end;

procedure TFrmPOSRest.SpeedButton691Click(Sender: TObject);
begin
  EditButton(SpeedButton691.Name);
end;

procedure TFrmPOSRest.SpeedButton692Click(Sender: TObject);
begin
  EditButton(SpeedButton692.Name);
end;

procedure TFrmPOSRest.SpeedButton693Click(Sender: TObject);
begin
  EditButton(SpeedButton693.Name);
end;

procedure TFrmPOSRest.SpeedButton694Click(Sender: TObject);
begin
  EditButton(SpeedButton694.Name);
end;

procedure TFrmPOSRest.SpeedButton695Click(Sender: TObject);
begin
  EditButton(SpeedButton695.Name);
end;

procedure TFrmPOSRest.SpeedButton696Click(Sender: TObject);
begin
  EditButton(SpeedButton696.Name);
end;

procedure TFrmPOSRest.SpeedButton697Click(Sender: TObject);
begin
  EditButton(SpeedButton697.Name);
end;

procedure TFrmPOSRest.SpeedButton698Click(Sender: TObject);
begin
  EditButton(SpeedButton698.Name);
end;

procedure TFrmPOSRest.SpeedButton699Click(Sender: TObject);
begin
  EditButton(SpeedButton699.Name);
end;

procedure TFrmPOSRest.SpeedButton69Click(Sender: TObject);
begin
  EditButton(SpeedButton69.Name);
end;

procedure TFrmPOSRest.SpeedButton6Click(Sender: TObject);
begin
  EditButton(SpeedButton6.Name);
end;

procedure TFrmPOSRest.SpeedButton700Click(Sender: TObject);
begin
  EditButton(SpeedButton700.Name);
end;

procedure TFrmPOSRest.SpeedButton701Click(Sender: TObject);
begin
  EditButton(SpeedButton701.Name);
end;

procedure TFrmPOSRest.SpeedButton702Click(Sender: TObject);
begin
  EditButton(SpeedButton702.Name);
end;

procedure TFrmPOSRest.SpeedButton703Click(Sender: TObject);
begin
  EditButton(SpeedButton703.Name);
end;

procedure TFrmPOSRest.SpeedButton704Click(Sender: TObject);
begin
  EditButton(SpeedButton704.Name);
end;

procedure TFrmPOSRest.SpeedButton705Click(Sender: TObject);
begin
  EditButton(SpeedButton705.Name);
end;

procedure TFrmPOSRest.SpeedButton706Click(Sender: TObject);
begin
  EditButton(SpeedButton706.Name);
end;

procedure TFrmPOSRest.SpeedButton707Click(Sender: TObject);
begin
  EditButton(SpeedButton707.Name);
end;

procedure TFrmPOSRest.SpeedButton708Click(Sender: TObject);
begin
  EditButton(SpeedButton708.Name);
end;

procedure TFrmPOSRest.SpeedButton709Click(Sender: TObject);
begin
  EditButton(SpeedButton709.Name);
end;

procedure TFrmPOSRest.SpeedButton70Click(Sender: TObject);
begin
  EditButton(SpeedButton70.Name);
end;

procedure TFrmPOSRest.SpeedButton710Click(Sender: TObject);
begin
  EditButton(SpeedButton710.Name);
end;

procedure TFrmPOSRest.SpeedButton711Click(Sender: TObject);
begin
  EditButton(SpeedButton711.Name);
end;

procedure TFrmPOSRest.SpeedButton712Click(Sender: TObject);
begin
  EditButton(SpeedButton712.Name);
end;

procedure TFrmPOSRest.SpeedButton713Click(Sender: TObject);
begin
  EditButton(SpeedButton713.Name);
end;

procedure TFrmPOSRest.SpeedButton714Click(Sender: TObject);
begin
  EditButton(SpeedButton714.Name);
end;

procedure TFrmPOSRest.SpeedButton715Click(Sender: TObject);
begin
  EditButton(SpeedButton715.Name);
end;

procedure TFrmPOSRest.SpeedButton716Click(Sender: TObject);
begin
  EditButton(SpeedButton716.Name);
end;

procedure TFrmPOSRest.SpeedButton717Click(Sender: TObject);
begin
  EditButton(SpeedButton717.Name);
end;

procedure TFrmPOSRest.SpeedButton718Click(Sender: TObject);
begin
  EditButton(SpeedButton718.Name);
end;

procedure TFrmPOSRest.SpeedButton719Click(Sender: TObject);
begin
  EditButton(SpeedButton719.Name);
end;

procedure TFrmPOSRest.SpeedButton71Click(Sender: TObject);
begin
  EditButton(SpeedButton71.Name);
end;

procedure TFrmPOSRest.SpeedButton720Click(Sender: TObject);
begin
  EditButton(SpeedButton720.Name);
end;

procedure TFrmPOSRest.SpeedButton721Click(Sender: TObject);
begin
  EditButton(SpeedButton721.Name);
end;

procedure TFrmPOSRest.SpeedButton722Click(Sender: TObject);
begin
  EditButton(SpeedButton722.Name);
end;

procedure TFrmPOSRest.SpeedButton723Click(Sender: TObject);
begin
  EditButton(SpeedButton723.Name);
end;

procedure TFrmPOSRest.SpeedButton724Click(Sender: TObject);
begin
  EditButton(SpeedButton724.Name);
end;

procedure TFrmPOSRest.SpeedButton725Click(Sender: TObject);
begin
  EditButton(SpeedButton725.Name);
end;

procedure TFrmPOSRest.SpeedButton726Click(Sender: TObject);
begin
  EditButton(SpeedButton726.Name);
end;

procedure TFrmPOSRest.SpeedButton727Click(Sender: TObject);
begin
  EditButton(SpeedButton727.Name);
end;

procedure TFrmPOSRest.SpeedButton728Click(Sender: TObject);
begin
  EditButton(SpeedButton728.Name);
end;

procedure TFrmPOSRest.SpeedButton729Click(Sender: TObject);
begin
  EditButton(SpeedButton729.Name);
end;

procedure TFrmPOSRest.SpeedButton72Click(Sender: TObject);
begin
  EditButton(SpeedButton72.Name);
end;

procedure TFrmPOSRest.SpeedButton730Click(Sender: TObject);
begin
  EditButton(SpeedButton730.Name);
end;

procedure TFrmPOSRest.SpeedButton731Click(Sender: TObject);
begin
  EditButton(SpeedButton731.Name);
end;

procedure TFrmPOSRest.SpeedButton732Click(Sender: TObject);
begin
  EditButton(SpeedButton732.Name);
end;

procedure TFrmPOSRest.SpeedButton733Click(Sender: TObject);
begin
  EditButton(SpeedButton733.Name);
end;

procedure TFrmPOSRest.SpeedButton734Click(Sender: TObject);
begin
  EditButton(SpeedButton734.Name);
end;

procedure TFrmPOSRest.SpeedButton735Click(Sender: TObject);
begin
  EditButton(SpeedButton735.Name);
end;

procedure TFrmPOSRest.SpeedButton736Click(Sender: TObject);
begin
  EditButton(SpeedButton736.Name);
end;

procedure TFrmPOSRest.SpeedButton737Click(Sender: TObject);
begin
  EditButton(SpeedButton737.Name);
end;

procedure TFrmPOSRest.SpeedButton738Click(Sender: TObject);
begin
  EditButton(SpeedButton738.Name);
end;

procedure TFrmPOSRest.SpeedButton739Click(Sender: TObject);
begin
  EditButton(SpeedButton739.Name);
end;

procedure TFrmPOSRest.SpeedButton73Click(Sender: TObject);
begin
  EditButton(SpeedButton73.Name);
end;

procedure TFrmPOSRest.SpeedButton740Click(Sender: TObject);
begin
  EditButton(SpeedButton740.Name);
end;

procedure TFrmPOSRest.SpeedButton741Click(Sender: TObject);
begin
  EditButton(SpeedButton741.Name);
end;

procedure TFrmPOSRest.SpeedButton742Click(Sender: TObject);
begin
  EditButton(SpeedButton742.Name);
end;

procedure TFrmPOSRest.SpeedButton743Click(Sender: TObject);
begin
  EditButton(SpeedButton743.Name);
end;

procedure TFrmPOSRest.SpeedButton744Click(Sender: TObject);
begin
  EditButton(SpeedButton744.Name);
end;

procedure TFrmPOSRest.SpeedButton745Click(Sender: TObject);
begin
  EditButton(SpeedButton745.Name);
end;

procedure TFrmPOSRest.SpeedButton746Click(Sender: TObject);
begin
  EditButton(SpeedButton746.Name);
end;

procedure TFrmPOSRest.SpeedButton747Click(Sender: TObject);
begin
  EditButton(SpeedButton747.Name);
end;

procedure TFrmPOSRest.SpeedButton748Click(Sender: TObject);
begin
  EditButton(SpeedButton748.Name);
end;

procedure TFrmPOSRest.SpeedButton749Click(Sender: TObject);
begin
  EditButton(SpeedButton749.Name);
end;

procedure TFrmPOSRest.SpeedButton74Click(Sender: TObject);
begin
  EditButton(SpeedButton74.Name);
end;

procedure TFrmPOSRest.SpeedButton750Click(Sender: TObject);
begin
  EditButton(SpeedButton750.Name);
end;

procedure TFrmPOSRest.SpeedButton751Click(Sender: TObject);
begin
  EditButton(SpeedButton751.Name);
end;

procedure TFrmPOSRest.SpeedButton752Click(Sender: TObject);
begin
  EditButton(SpeedButton752.Name);
end;

procedure TFrmPOSRest.SpeedButton753Click(Sender: TObject);
begin
  EditButton(SpeedButton753.Name);
end;

procedure TFrmPOSRest.SpeedButton754Click(Sender: TObject);
begin
  EditButton(SpeedButton754.Name);
end;

procedure TFrmPOSRest.SpeedButton755Click(Sender: TObject);
begin
  EditButton(SpeedButton755.Name);
end;

procedure TFrmPOSRest.SpeedButton756Click(Sender: TObject);
begin
  EditButton(SpeedButton756.Name);
end;

procedure TFrmPOSRest.SpeedButton757Click(Sender: TObject);
begin
  EditButton(SpeedButton757.Name);
end;

procedure TFrmPOSRest.SpeedButton758Click(Sender: TObject);
begin
  EditButton(SpeedButton758.Name);
end;

procedure TFrmPOSRest.SpeedButton759Click(Sender: TObject);
begin
  EditButton(SpeedButton759.Name);
end;

procedure TFrmPOSRest.SpeedButton75Click(Sender: TObject);
begin
  EditButton(SpeedButton75.Name);
end;

procedure TFrmPOSRest.SpeedButton760Click(Sender: TObject);
begin
  EditButton(SpeedButton760.Name);
end;

procedure TFrmPOSRest.SpeedButton761Click(Sender: TObject);
begin
  EditButton(SpeedButton761.Name);
end;

procedure TFrmPOSRest.SpeedButton762Click(Sender: TObject);
begin
  EditButton(SpeedButton762.Name);
end;

procedure TFrmPOSRest.SpeedButton763Click(Sender: TObject);
begin
  EditButton(SpeedButton763.Name);
end;

procedure TFrmPOSRest.SpeedButton764Click(Sender: TObject);
begin
  EditButton(SpeedButton764.Name);
end;

procedure TFrmPOSRest.SpeedButton765Click(Sender: TObject);
begin
  EditButton(SpeedButton765.Name);
end;

procedure TFrmPOSRest.SpeedButton766Click(Sender: TObject);
begin
  EditButton(SpeedButton766.Name);
end;

procedure TFrmPOSRest.SpeedButton767Click(Sender: TObject);
begin
  EditButton(SpeedButton767.Name);
end;

procedure TFrmPOSRest.SpeedButton768Click(Sender: TObject);
begin
  EditButton(SpeedButton768.Name);
end;

procedure TFrmPOSRest.SpeedButton769Click(Sender: TObject);
begin
  EditButton(SpeedButton769.Name);
end;

procedure TFrmPOSRest.SpeedButton76Click(Sender: TObject);
begin
  EditButton(SpeedButton76.Name);
end;

procedure TFrmPOSRest.SpeedButton770Click(Sender: TObject);
begin
  EditButton(SpeedButton770.Name);
end;

procedure TFrmPOSRest.SpeedButton771Click(Sender: TObject);
begin
  EditButton(SpeedButton771.Name);
end;

procedure TFrmPOSRest.SpeedButton772Click(Sender: TObject);
begin
  EditButton(SpeedButton772.Name);
end;

procedure TFrmPOSRest.SpeedButton773Click(Sender: TObject);
begin
  EditButton(SpeedButton773.Name);
end;

procedure TFrmPOSRest.SpeedButton774Click(Sender: TObject);
begin
  EditButton(SpeedButton774.Name);
end;

procedure TFrmPOSRest.SpeedButton775Click(Sender: TObject);
begin
  EditButton(SpeedButton775.Name);
end;

procedure TFrmPOSRest.SpeedButton776Click(Sender: TObject);
begin
  EditButton(SpeedButton776.Name);
end;

procedure TFrmPOSRest.SpeedButton777Click(Sender: TObject);
begin
  EditButton(SpeedButton777.Name);
end;

procedure TFrmPOSRest.SpeedButton778Click(Sender: TObject);
begin
  EditButton(SpeedButton778.Name);
end;

procedure TFrmPOSRest.SpeedButton779Click(Sender: TObject);
begin
  EditButton(SpeedButton779.Name);
end;

procedure TFrmPOSRest.SpeedButton77Click(Sender: TObject);
begin
  EditButton(SpeedButton77.Name);
end;

procedure TFrmPOSRest.SpeedButton780Click(Sender: TObject);
begin
  EditButton(SpeedButton780.Name);
end;

procedure TFrmPOSRest.SpeedButton781Click(Sender: TObject);
begin
  EditButton(SpeedButton781.Name);
end;

procedure TFrmPOSRest.SpeedButton782Click(Sender: TObject);
begin
  EditButton(SpeedButton782.Name);
end;

procedure TFrmPOSRest.SpeedButton783Click(Sender: TObject);
begin
  EditButton(SpeedButton783.Name);
end;

procedure TFrmPOSRest.SpeedButton784Click(Sender: TObject);
begin
  EditButton(SpeedButton784.Name);
end;

procedure TFrmPOSRest.SpeedButton785Click(Sender: TObject);
begin
  EditButton(SpeedButton785.Name);
end;

procedure TFrmPOSRest.SpeedButton786Click(Sender: TObject);
begin
  EditButton(SpeedButton786.Name);
end;

procedure TFrmPOSRest.SpeedButton787Click(Sender: TObject);
begin
  EditButton(SpeedButton787.Name);
end;

procedure TFrmPOSRest.SpeedButton788Click(Sender: TObject);
begin
  EditButton(SpeedButton788.Name);
end;

procedure TFrmPOSRest.SpeedButton789Click(Sender: TObject);
begin
  EditButton(SpeedButton789.Name);
end;

procedure TFrmPOSRest.SpeedButton78Click(Sender: TObject);
begin
  EditButton(SpeedButton78.Name);
end;

procedure TFrmPOSRest.SpeedButton790Click(Sender: TObject);
begin
  EditButton(SpeedButton790.Name);
end;

procedure TFrmPOSRest.SpeedButton791Click(Sender: TObject);
begin
  EditButton(SpeedButton791.Name);
end;

procedure TFrmPOSRest.SpeedButton792Click(Sender: TObject);
begin
  EditButton(SpeedButton792.Name);
end;

procedure TFrmPOSRest.SpeedButton793Click(Sender: TObject);
begin
  EditButton(SpeedButton793.Name);
end;

procedure TFrmPOSRest.SpeedButton794Click(Sender: TObject);
begin
  EditButton(SpeedButton794.Name);
end;

procedure TFrmPOSRest.SpeedButton795Click(Sender: TObject);
begin
  EditButton(SpeedButton795.Name);
end;

procedure TFrmPOSRest.SpeedButton796Click(Sender: TObject);
begin
  EditButton(SpeedButton796.Name);
end;

procedure TFrmPOSRest.SpeedButton797Click(Sender: TObject);
begin
  EditButton(SpeedButton797.Name);
end;

procedure TFrmPOSRest.SpeedButton798Click(Sender: TObject);
begin
  EditButton(SpeedButton798.Name);
end;

procedure TFrmPOSRest.SpeedButton799Click(Sender: TObject);
begin
  EditButton(SpeedButton799.Name);
end;

procedure TFrmPOSRest.SpeedButton79Click(Sender: TObject);
begin
  EditButton(SpeedButton79.Name);
end;

procedure TFrmPOSRest.SpeedButton7Click(Sender: TObject);
begin
  EditButton(SpeedButton7.Name);
end;

procedure TFrmPOSRest.SpeedButton800Click(Sender: TObject);
begin
  EditButton(SpeedButton800.Name);
end;

procedure TFrmPOSRest.SpeedButton80Click(Sender: TObject);
begin
  EditButton(SpeedButton80.Name);
end;

procedure TFrmPOSRest.SpeedButton81Click(Sender: TObject);
begin
  EditButton(SpeedButton81.Name);
end;

procedure TFrmPOSRest.SpeedButton82Click(Sender: TObject);
begin
  EditButton(SpeedButton82.Name);
end;

procedure TFrmPOSRest.SpeedButton83Click(Sender: TObject);
begin
  EditButton(SpeedButton83.Name);
end;

procedure TFrmPOSRest.SpeedButton84Click(Sender: TObject);
begin
  EditButton(SpeedButton84.Name);
end;

procedure TFrmPOSRest.SpeedButton85Click(Sender: TObject);
begin
  EditButton(SpeedButton85.Name);
end;

procedure TFrmPOSRest.SpeedButton86Click(Sender: TObject);
begin
  EditButton(SpeedButton86.Name);
end;

procedure TFrmPOSRest.SpeedButton87Click(Sender: TObject);
begin
  EditButton(SpeedButton87.Name);
end;

procedure TFrmPOSRest.SpeedButton88Click(Sender: TObject);
begin
  EditButton(SpeedButton88.Name);
end;

procedure TFrmPOSRest.SpeedButton89Click(Sender: TObject);
begin
  EditButton(SpeedButton89.Name);
end;

procedure TFrmPOSRest.SpeedButton8Click(Sender: TObject);
begin
    EditButton(SpeedButton8.Name);
end;

procedure TFrmPOSRest.SpeedButton90Click(Sender: TObject);
begin
  EditButton(SpeedButton90.Name);
end;

procedure TFrmPOSRest.SpeedButton91Click(Sender: TObject);
begin
  EditButton(SpeedButton91.Name);
end;

procedure TFrmPOSRest.SpeedButton92Click(Sender: TObject);
begin
  EditButton(SpeedButton92.Name);
end;

procedure TFrmPOSRest.SpeedButton93Click(Sender: TObject);
begin
  EditButton(SpeedButton93.Name);
end;

procedure TFrmPOSRest.SpeedButton94Click(Sender: TObject);
begin
  EditButton(SpeedButton94.Name);
end;

procedure TFrmPOSRest.SpeedButton95Click(Sender: TObject);
begin
  EditButton(SpeedButton95.Name);
end;

procedure TFrmPOSRest.SpeedButton96Click(Sender: TObject);
begin
  EditButton(SpeedButton96.Name);
end;

procedure TFrmPOSRest.SpeedButton97Click(Sender: TObject);
begin
  EditButton(SpeedButton97.Name);
end;

procedure TFrmPOSRest.SpeedButton98Click(Sender: TObject);
begin
  EditButton(SpeedButton98.Name);
end;

procedure TFrmPOSRest.SpeedButton99Click(Sender: TObject);
begin
  EditButton(SpeedButton99.Name);
end;

procedure TFrmPOSRest.SpeedButton9Click(Sender: TObject);
begin
  EditButton(SpeedButton9.Name);
end;

procedure TFrmPOSRest.StatusBar1Click(Sender: TObject);
//Var
//  TransNo: String;
begin
  Clipboard.AsText := DMMidas.CDSTransShowTRANSACTIONNUMBER.asString;

  {if DMMidas.CDSTransShow.Active then
  begin
    With FrmMain.RichEdit1 do
    begin
      Clear;
      Lines.Add(DMMidas.CDSTransShowTRANSACTIONNUMBER.asString);
      SelectAll;
      CopyToClipboard;
      Clear;
    end;
  end;}
end;

procedure TFrmPOSRest.PayTransaction(PyType: String);
Var
  TTaxMunicipal, NTotal: Double;
  TranNo: String;
begin
  With DMMidas do
  begin
    TranNo := CDSTransHeadTRANSACTIONNUMBER.asString;
    if (CDSTransShowPRODDESCRIPTION.Value > '') then
    begin
     StatusBar1.Panels[4].Text := PyType;
     FrmCheckOut := TFrmCheckOut.Create(Self);
     With FrmCheckOut do
     begin
       Edit4.Visible := True;
       Edit4.TabStop := True;
       if PyType = 'TFAM' then
       begin
         QCalcTarjetaFamilia.Close;
         QCalcTarjetaFamilia.ParamByName('TN').AsInteger := CDSTransHeadTRANSACTIONNUMBER.Value;
         QCalcTarjetaFamilia.Open;
         if QCalcTarjetaFamilia.FieldByName('Total').asFloat < 999.99 then
           Edit4.Text := Format('%.2f', [QCalcTarjetaFamilia.FieldByName('Total').asFloat])
         else
           Edit4.Text := FloatToStr(QCalcTarjetaFamilia.FieldByName('Total').asFloat);
         PayType := 'TFAM';
       end
       else
       begin
         if CDSTransHeadBalance.Value < 999.99 then
           Edit4.Text := Format('%.2f', [CDSTransHeadBalance.Value])
         else
           Edit4.Text := FloatToStr(CDSTransHeadBalance.Value);
           PayType := '';
       end;
       CommonPOS.SendToPole('Total: ' + Format('%m',[StrToFloat(Edit4.Text)]), 'GRACIAS             ');
       FrmCheckOut.PayType := PyType;
       ShowModal;
       Free;
     end;
     EditSearchProd.SetFocus;
    end;
  end;
end;

procedure TFrmPOSRest.pcOptionsChange(Sender: TObject);
begin
  if pcOptions.ActivePageIndex = 3 then         //Shows the help form and returns to the prev active page 032426
  begin
    pcOptions.ActivePage := activePage;
    CommonPOS.showHelpForm;
  end;
end;

procedure TFrmPOSRest.pcOptionsChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  activePage := pcOptions.ActivePage;      //Stores the previous active page AGC 032426
end;

end.
