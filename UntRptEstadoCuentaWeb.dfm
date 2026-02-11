object FrmEstadoCuentaWeb: TFrmEstadoCuentaWeb
  Left = 480
  Top = 291
  Caption = 'FrmEstadoCuentaWeb'
  ClientHeight = 151
  ClientWidth = 143
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DSClientes: TDataSource
    DataSet = DMMidas.CDSClientes
    OnDataChange = DSClientesDataChange
    Left = 24
    Top = 96
  end
end
