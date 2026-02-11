object FrmSelectDateTime: TFrmSelectDateTime
  Left = 0
  Top = 0
  Caption = 'Select Date Time'
  ClientHeight = 145
  ClientWidth = 201
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dtpTime: TTimePicker
    Left = 21
    Top = 57
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    TabOrder = 0
    Time = 43423.476328101850000000
    TimeFormat = 'hh:mm AMPM'
  end
  object dtpDate: TDatePicker
    Left = 21
    Top = 19
    Date = 43339.000000000000000000
    DateFormat = 'MM/dd/yyyy'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 104
    Width = 201
    Height = 41
    Align = alBottom
    TabOrder = 2
    object Button1: TButton
      AlignWithMargins = True
      Left = 122
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 0
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 1
    end
  end
end
