object FrmTabs: TFrmTabs
  Left = 0
  Top = 0
  Caption = 'Open Tabs'
  ClientHeight = 656
  ClientWidth = 898
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 898
    Height = 65
    Align = alTop
    TabOrder = 0
    object sbCatT5: TSpeedButton
      AlignWithMargins = True
      Left = 720
      Top = 4
      Width = 173
      Height = 57
      Align = alLeft
      OnClick = sbCatT5Click
      ExplicitLeft = 4
    end
    object sbCatT4: TSpeedButton
      AlignWithMargins = True
      Left = 541
      Top = 4
      Width = 173
      Height = 57
      Align = alLeft
      OnClick = sbCatT4Click
      ExplicitTop = 2
    end
    object sbCatT3: TSpeedButton
      AlignWithMargins = True
      Left = 362
      Top = 4
      Width = 173
      Height = 57
      Align = alLeft
      OnClick = sbCatT3Click
      ExplicitTop = 6
    end
    object sbCatT2: TSpeedButton
      AlignWithMargins = True
      Left = 183
      Top = 4
      Width = 173
      Height = 57
      Align = alLeft
      OnClick = sbCatT2Click
      ExplicitTop = 6
    end
    object sbCatT1: TSpeedButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 173
      Height = 57
      Align = alLeft
      OnClick = sbCatT1Click
    end
  end
  object pcMain: TPageControl
    Left = 0
    Top = 65
    Width = 898
    Height = 591
    ActivePage = TabSheet1
    Align = alClient
    MultiLine = True
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 890
        Height = 563
        Align = alClient
        DataSource = DMMidas.dsTabs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'SERVER'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUSTOMER'
            Width = 319
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TELEPHONE'
            Width = 155
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOCATION'
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GROUP_BALANCE'
            Title.Caption = 'BALANCE'
            Width = 149
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object GridPanel2: TGridPanel
        Left = 0
        Top = 0
        Width = 890
        Height = 563
        Align = alClient
        ColumnCollection = <
          item
            Value = 15.810645969091030000
          end
          item
            Value = 15.387160356851140000
          end
          item
            Value = 14.912916082165310000
          end
          item
            Value = 14.395748556899890000
          end
          item
            Value = 13.818310265960750000
          end
          item
            Value = 13.179593987792810000
          end
          item
            Value = 12.495624781239060000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = SpeedButton2
            Row = 5
          end
          item
            Column = 1
            Control = SpeedButton3
            Row = 5
          end
          item
            Column = 2
            Control = SpeedButton4
            Row = 5
          end
          item
            Column = 3
            Control = SpeedButton5
            Row = 5
          end
          item
            Column = 0
            Control = SpeedButton6
            Row = 0
          end
          item
            Column = 1
            Control = SpeedButton7
            Row = 0
          end
          item
            Column = 2
            Control = SpeedButton8
            Row = 0
          end
          item
            Column = 3
            Control = SpeedButton9
            Row = 0
          end
          item
            Column = 0
            Control = SpeedButton10
            Row = 1
          end
          item
            Column = 1
            Control = SpeedButton11
            Row = 1
          end
          item
            Column = 2
            Control = SpeedButton12
            Row = 1
          end
          item
            Column = 3
            Control = SpeedButton13
            Row = 1
          end
          item
            Column = 0
            Control = SpeedButton14
            Row = 2
          end
          item
            Column = 1
            Control = SpeedButton15
            Row = 2
          end
          item
            Column = 2
            Control = SpeedButton16
            Row = 2
          end
          item
            Column = 3
            Control = SpeedButton17
            Row = 2
          end
          item
            Column = 0
            Control = SpeedButton18
            Row = 3
          end
          item
            Column = 1
            Control = SpeedButton19
            Row = 3
          end
          item
            Column = 2
            Control = SpeedButton20
            Row = 3
          end
          item
            Column = 3
            Control = SpeedButton21
            Row = 3
          end
          item
            Column = 0
            Control = SpeedButton22
            Row = 4
          end
          item
            Column = 1
            Control = SpeedButton23
            Row = 4
          end
          item
            Column = 2
            Control = SpeedButton24
            Row = 4
          end
          item
            Column = 3
            Control = SpeedButton25
            Row = 4
          end
          item
            Column = 0
            Control = SpeedButton1
            Row = 6
          end
          item
            Column = 1
            Control = SpeedButton26
            Row = 6
          end
          item
            Column = 2
            Control = SpeedButton27
            Row = 6
          end
          item
            Column = 3
            Control = SpeedButton28
            Row = 6
          end
          item
            Column = 0
            Control = SpeedButton29
            Row = 7
          end
          item
            Column = 1
            Control = SpeedButton30
            Row = 7
          end
          item
            Column = 2
            Control = SpeedButton31
            Row = 7
          end
          item
            Column = 3
            Control = SpeedButton32
            Row = 7
          end
          item
            Column = 0
            Control = SpeedButton33
            Row = 8
          end
          item
            Column = 1
            Control = SpeedButton34
            Row = 8
          end
          item
            Column = 2
            Control = SpeedButton35
            Row = 8
          end
          item
            Column = 3
            Control = SpeedButton36
            Row = 8
          end
          item
            Column = 0
            Control = SpeedButton37
            Row = 9
          end
          item
            Column = 1
            Control = SpeedButton38
            Row = 9
          end
          item
            Column = 3
            Control = SpeedButton40
            Row = 9
          end
          item
            Column = 2
            Control = SpeedButton39
            Row = 9
          end
          item
            Column = 4
            Control = SpeedButton41
            Row = 0
          end
          item
            Column = 5
            Control = SpeedButton42
            Row = 0
          end
          item
            Column = 6
            Control = SpeedButton43
            Row = 0
          end
          item
            Column = 4
            Control = SpeedButton44
            Row = 1
          end
          item
            Column = 5
            Control = SpeedButton45
            Row = 1
          end
          item
            Column = 6
            Control = SpeedButton46
            Row = 1
          end
          item
            Column = 4
            Control = SpeedButton47
            Row = 2
          end
          item
            Column = 5
            Control = SpeedButton48
            Row = 2
          end
          item
            Column = 6
            Control = SpeedButton49
            Row = 2
          end
          item
            Column = 4
            Control = SpeedButton50
            Row = 3
          end
          item
            Column = 5
            Control = SpeedButton51
            Row = 3
          end
          item
            Column = 6
            Control = SpeedButton52
            Row = 3
          end
          item
            Column = 4
            Control = SpeedButton53
            Row = 4
          end
          item
            Column = 5
            Control = SpeedButton54
            Row = 4
          end
          item
            Column = 6
            Control = SpeedButton55
            Row = 4
          end
          item
            Column = 4
            Control = SpeedButton56
            Row = 5
          end
          item
            Column = 5
            Control = SpeedButton57
            Row = 5
          end
          item
            Column = 6
            Control = SpeedButton58
            Row = 5
          end
          item
            Column = 4
            Control = SpeedButton59
            Row = 6
          end
          item
            Column = 5
            Control = SpeedButton60
            Row = 6
          end
          item
            Column = 6
            Control = SpeedButton61
            Row = 6
          end
          item
            Column = 4
            Control = SpeedButton62
            Row = 7
          end
          item
            Column = 5
            Control = SpeedButton63
            Row = 7
          end
          item
            Column = 6
            Control = SpeedButton64
            Row = 7
          end
          item
            Column = 4
            Control = SpeedButton65
            Row = 8
          end
          item
            Column = 5
            Control = SpeedButton66
            Row = 8
          end
          item
            Column = 6
            Control = SpeedButton67
            Row = 8
          end
          item
            Column = 4
            Control = SpeedButton68
            Row = 9
          end
          item
            Column = 5
            Control = SpeedButton69
            Row = 9
          end
          item
            Column = 6
            Control = SpeedButton70
            Row = 9
          end>
        RowCollection = <
          item
            Value = 10.196228078695800000
          end
          item
            Value = 10.196228078695800000
          end
          item
            Value = 10.196228078695800000
          end
          item
            Value = 10.170737508499060000
          end
          item
            Value = 10.189855436146610000
          end
          item
            Value = 9.552989471387448000
          end
          item
            Value = 10.113322934728520000
          end
          item
            Value = 10.150260173542300000
          end
          item
            Value = 9.449785131950891000
          end
          item
            Value = 9.784365107657766000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 0
        DesignSize = (
          890
          563)
        object SpeedButton2: TSpeedButton
          Left = 25
          Top = 290
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 26
          ExplicitTop = 286
        end
        object SpeedButton3: TSpeedButton
          Left = 163
          Top = 290
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 167
          ExplicitTop = 286
        end
        object SpeedButton4: TSpeedButton
          Left = 297
          Top = 290
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 304
          ExplicitTop = 286
        end
        object SpeedButton5: TSpeedButton
          Left = 426
          Top = 290
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 437
          ExplicitTop = 286
        end
        object SpeedButton6: TSpeedButton
          Left = 25
          Top = 7
          Width = 92
          Height = 45
          Anchors = []
          OnClick = SpeedButton6Click
          ExplicitLeft = 26
          ExplicitTop = 13
        end
        object SpeedButton7: TSpeedButton
          Left = 163
          Top = 7
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 167
          ExplicitTop = 1
        end
        object SpeedButton8: TSpeedButton
          Left = 297
          Top = 7
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 304
          ExplicitTop = 1
        end
        object SpeedButton9: TSpeedButton
          Left = 426
          Top = 7
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 437
          ExplicitTop = 1
        end
        object SpeedButton10: TSpeedButton
          Left = 25
          Top = 64
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 26
          ExplicitTop = 58
        end
        object SpeedButton11: TSpeedButton
          Left = 163
          Top = 64
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 167
          ExplicitTop = 58
        end
        object SpeedButton12: TSpeedButton
          Left = 297
          Top = 64
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 304
          ExplicitTop = 58
        end
        object SpeedButton13: TSpeedButton
          Left = 426
          Top = 64
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 437
          ExplicitTop = 58
        end
        object SpeedButton14: TSpeedButton
          Left = 25
          Top = 121
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 26
          ExplicitTop = 115
        end
        object SpeedButton15: TSpeedButton
          Left = 163
          Top = 121
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 167
          ExplicitTop = 115
        end
        object SpeedButton16: TSpeedButton
          Left = 297
          Top = 121
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 304
          ExplicitTop = 115
        end
        object SpeedButton17: TSpeedButton
          Left = 426
          Top = 121
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 437
          ExplicitTop = 115
        end
        object SpeedButton18: TSpeedButton
          Left = 25
          Top = 178
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 26
          ExplicitTop = 172
        end
        object SpeedButton19: TSpeedButton
          Left = 163
          Top = 178
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 167
          ExplicitTop = 172
        end
        object SpeedButton20: TSpeedButton
          Left = 297
          Top = 178
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 304
          ExplicitTop = 172
        end
        object SpeedButton21: TSpeedButton
          Left = 426
          Top = 178
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 437
          ExplicitTop = 172
        end
        object SpeedButton22: TSpeedButton
          Left = 25
          Top = 235
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 26
          ExplicitTop = 229
        end
        object SpeedButton23: TSpeedButton
          Left = 163
          Top = 235
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 167
          ExplicitTop = 229
        end
        object SpeedButton24: TSpeedButton
          Left = 297
          Top = 235
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 304
          ExplicitTop = 229
        end
        object SpeedButton25: TSpeedButton
          Left = 426
          Top = 235
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 437
          ExplicitTop = 229
        end
        object SpeedButton1: TSpeedButton
          Left = 25
          Top = 344
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 26
          ExplicitTop = 339
        end
        object SpeedButton26: TSpeedButton
          Left = 163
          Top = 344
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 167
          ExplicitTop = 339
        end
        object SpeedButton27: TSpeedButton
          Left = 297
          Top = 344
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 304
          ExplicitTop = 339
        end
        object SpeedButton28: TSpeedButton
          Left = 426
          Top = 344
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 437
          ExplicitTop = 339
        end
        object SpeedButton29: TSpeedButton
          Left = 25
          Top = 400
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 26
          ExplicitTop = 395
        end
        object SpeedButton30: TSpeedButton
          Left = 163
          Top = 400
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 167
          ExplicitTop = 395
        end
        object SpeedButton31: TSpeedButton
          Left = 297
          Top = 400
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 304
          ExplicitTop = 395
        end
        object SpeedButton32: TSpeedButton
          Left = 426
          Top = 400
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 437
          ExplicitTop = 395
        end
        object SpeedButton33: TSpeedButton
          Left = 25
          Top = 455
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 26
          ExplicitTop = 451
        end
        object SpeedButton34: TSpeedButton
          Left = 163
          Top = 455
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 167
          ExplicitTop = 451
        end
        object SpeedButton35: TSpeedButton
          Left = 297
          Top = 455
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 304
          ExplicitTop = 451
        end
        object SpeedButton36: TSpeedButton
          Left = 426
          Top = 455
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 437
          ExplicitTop = 451
        end
        object SpeedButton37: TSpeedButton
          Left = 25
          Top = 508
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 26
          ExplicitTop = 504
        end
        object SpeedButton38: TSpeedButton
          Left = 163
          Top = 508
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 167
          ExplicitTop = 504
        end
        object SpeedButton40: TSpeedButton
          Left = 426
          Top = 508
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 437
          ExplicitTop = 504
        end
        object SpeedButton39: TSpeedButton
          Left = 297
          Top = 508
          Width = 92
          Height = 45
          Anchors = []
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 304
          ExplicitTop = 504
        end
        object SpeedButton41: TSpeedButton
          Left = 551
          Top = 5
          Width = 92
          Height = 49
          Anchors = []
          ExplicitLeft = 599
          ExplicitTop = 1
        end
        object SpeedButton42: TSpeedButton
          Left = 670
          Top = 5
          Width = 92
          Height = 49
          Anchors = []
          ExplicitLeft = 721
          ExplicitTop = 1
        end
        object SpeedButton43: TSpeedButton
          Left = 786
          Top = 5
          Width = 92
          Height = 49
          Anchors = []
          ExplicitLeft = 839
          ExplicitTop = 1
        end
        object SpeedButton44: TSpeedButton
          Left = 551
          Top = 62
          Width = 92
          Height = 49
          Anchors = []
          ExplicitLeft = 599
          ExplicitTop = 50
        end
        object SpeedButton45: TSpeedButton
          Left = 670
          Top = 62
          Width = 92
          Height = 49
          Anchors = []
          ExplicitLeft = 721
          ExplicitTop = 50
        end
        object SpeedButton46: TSpeedButton
          Left = 786
          Top = 62
          Width = 92
          Height = 49
          Anchors = []
          ExplicitLeft = 839
          ExplicitTop = 50
        end
        object SpeedButton47: TSpeedButton
          Left = 551
          Top = 119
          Width = 92
          Height = 49
          Anchors = []
          ExplicitLeft = 599
          ExplicitTop = 99
        end
        object SpeedButton48: TSpeedButton
          Left = 670
          Top = 119
          Width = 92
          Height = 49
          Anchors = []
          ExplicitLeft = 721
          ExplicitTop = 99
        end
        object SpeedButton49: TSpeedButton
          Left = 786
          Top = 119
          Width = 92
          Height = 49
          Anchors = []
          ExplicitLeft = 839
          ExplicitTop = 99
        end
        object SpeedButton50: TSpeedButton
          Left = 551
          Top = 176
          Width = 92
          Height = 49
          Anchors = []
          ExplicitLeft = 599
          ExplicitTop = 148
        end
        object SpeedButton51: TSpeedButton
          Left = 670
          Top = 176
          Width = 92
          Height = 49
          Anchors = []
          ExplicitLeft = 721
          ExplicitTop = 148
        end
        object SpeedButton52: TSpeedButton
          Left = 786
          Top = 176
          Width = 92
          Height = 49
          Anchors = []
          ExplicitLeft = 839
          ExplicitTop = 148
        end
        object SpeedButton53: TSpeedButton
          Left = 551
          Top = 233
          Width = 92
          Height = 49
          Anchors = []
          ExplicitLeft = 599
          ExplicitTop = 197
        end
        object SpeedButton54: TSpeedButton
          Left = 670
          Top = 233
          Width = 92
          Height = 49
          Anchors = []
          ExplicitLeft = 721
          ExplicitTop = 197
        end
        object SpeedButton55: TSpeedButton
          Left = 786
          Top = 233
          Width = 92
          Height = 49
          Anchors = []
          ExplicitLeft = 839
          ExplicitTop = 197
        end
        object SpeedButton56: TSpeedButton
          Left = 551
          Top = 289
          Width = 92
          Height = 46
          Anchors = []
          ExplicitLeft = 599
          ExplicitTop = 246
        end
        object SpeedButton57: TSpeedButton
          Left = 670
          Top = 289
          Width = 92
          Height = 46
          Anchors = []
          ExplicitLeft = 721
          ExplicitTop = 246
        end
        object SpeedButton58: TSpeedButton
          Left = 786
          Top = 289
          Width = 92
          Height = 46
          Anchors = []
          ExplicitLeft = 839
          ExplicitTop = 246
        end
        object SpeedButton59: TSpeedButton
          Left = 551
          Top = 343
          Width = 92
          Height = 48
          Anchors = []
          ExplicitLeft = 599
          ExplicitTop = 292
        end
        object SpeedButton60: TSpeedButton
          Left = 670
          Top = 343
          Width = 92
          Height = 48
          Anchors = []
          ExplicitLeft = 721
          ExplicitTop = 292
        end
        object SpeedButton61: TSpeedButton
          Left = 786
          Top = 343
          Width = 92
          Height = 48
          Anchors = []
          ExplicitLeft = 839
          ExplicitTop = 292
        end
        object SpeedButton62: TSpeedButton
          Left = 551
          Top = 398
          Width = 92
          Height = 49
          Anchors = []
          ExplicitLeft = 599
          ExplicitTop = 340
        end
        object SpeedButton63: TSpeedButton
          Left = 670
          Top = 398
          Width = 92
          Height = 49
          Anchors = []
          ExplicitLeft = 721
          ExplicitTop = 340
        end
        object SpeedButton64: TSpeedButton
          Left = 786
          Top = 398
          Width = 92
          Height = 49
          Anchors = []
          ExplicitLeft = 839
          ExplicitTop = 340
        end
        object SpeedButton65: TSpeedButton
          Left = 551
          Top = 455
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 599
          ExplicitTop = 389
        end
        object SpeedButton66: TSpeedButton
          Left = 670
          Top = 455
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 721
          ExplicitTop = 389
        end
        object SpeedButton67: TSpeedButton
          Left = 786
          Top = 455
          Width = 92
          Height = 45
          Anchors = []
          ExplicitLeft = 839
          ExplicitTop = 389
        end
        object SpeedButton68: TSpeedButton
          Left = 551
          Top = 507
          Width = 92
          Height = 47
          Anchors = []
          ExplicitLeft = 599
          ExplicitTop = 434
        end
        object SpeedButton69: TSpeedButton
          Left = 670
          Top = 507
          Width = 92
          Height = 47
          Anchors = []
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 721
          ExplicitTop = 434
        end
        object SpeedButton70: TSpeedButton
          Left = 786
          Top = 507
          Width = 92
          Height = 47
          Anchors = []
          ExplicitLeft = 839
          ExplicitTop = 434
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
    end
    object TabSheet4: TTabSheet
      Caption = 'TabSheet4'
      ImageIndex = 3
    end
    object TabSheet5: TTabSheet
      Caption = 'TabSheet5'
      ImageIndex = 4
    end
  end
  object MainMenu1: TMainMenu
    Left = 508
    Top = 233
    object ActivateButtons1: TMenuItem
      Caption = 'Buttons'
      object ActivateButtons2: TMenuItem
        Caption = 'Set buttons visible true'
        OnClick = ActivateButtons2Click
      end
      object Setbuttonsvisiblefalse1: TMenuItem
        Caption = 'Set buttons visible false'
        OnClick = Setbuttonsvisiblefalse1Click
      end
    end
  end
end
