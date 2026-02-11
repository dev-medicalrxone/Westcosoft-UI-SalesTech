object FOrdenes: TFOrdenes
  Left = 153
  Top = 128
  Width = 497
  Height = 271
  Caption = 'Ordenes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 203
    Width = 489
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 400
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 296
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 489
    Height = 203
    Align = alClient
    DataSource = Data.DSOrderHeader
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'OrderNumber'
        Title.Caption = 'Numero Orden'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OrderDescription'
        Title.Caption = 'Descripcion'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalInvoiced'
        Title.Caption = 'Total'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OrderDate'
        Title.Caption = 'Fecha'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NumeroSuplidor'
        Title.Caption = 'No. Suplidor'
        Visible = True
      end>
  end
end
