object FAnadirPagosGrupales: TFAnadirPagosGrupales
  Left = 245
  Top = 197
  Caption = 'A'#241'adir Pagos Grupales'
  ClientHeight = 142
  ClientWidth = 265
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 30
    Height = 13
    Caption = 'Fecha'
  end
  object Label2: TLabel
    Left = 16
    Top = 80
    Width = 47
    Height = 13
    Caption = 'Cantidad'
  end
  object Label3: TLabel
    Left = 16
    Top = 48
    Width = 84
    Height = 13
    Caption = 'Numero Cheque'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 160
    Top = 8
    Width = 81
    Height = 21
    Date = 36692.470584953700000000
    Time = 36692.470584953700000000
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 120
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 120
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 105
    Width = 265
    Height = 37
    Align = alBottom
    TabOrder = 3
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 105
      Top = 4
      Width = 75
      Height = 29
      Align = alRight
      Caption = 'OK'
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 1
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 186
      Top = 4
      Width = 75
      Height = 29
      Align = alRight
      Cancel = True
      Caption = 'Cancel'
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 2
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
    end
  end
end
