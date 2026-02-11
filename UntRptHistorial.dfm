object FRptHistorial: TFRptHistorial
  Left = 497
  Top = 152
  ClientHeight = 295
  ClientWidth = 367
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DSPrescriptionsView: TDataSource
    Left = 168
    Top = 56
  end
  object PrescriptionsView2: TDataSource
    Left = 168
    Top = 96
  end
  object DSPacientes: TDataSource
    OnDataChange = DSPacientesDataChange
    Left = 168
    Top = 16
  end
end
