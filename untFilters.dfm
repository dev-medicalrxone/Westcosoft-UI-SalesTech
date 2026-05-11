object FrmFilters: TFrmFilters
  Left = 0
  Top = 0
  Caption = 'Filter'
  ClientHeight = 162
  ClientWidth = 453
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 453
    Height = 162
    ActivePage = TabSheet1
    TabOrder = 1
    TabPosition = tpBottom
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object Label1: TLabel
        Left = 16
        Top = 54
        Width = 28
        Height = 15
        Caption = 'From'
      end
      object Label2: TLabel
        Left = 16
        Top = 80
        Width = 13
        Height = 15
        Caption = 'To'
      end
      object cbDate: TCheckBox
        Left = 16
        Top = 14
        Width = 113
        Height = 17
        Caption = 'Filter by date'
        TabOrder = 0
        OnClick = cbDateClick
      end
      object cbClient: TCheckBox
        Left = 224
        Top = 14
        Width = 113
        Height = 17
        Caption = 'Filter by client'
        TabOrder = 1
        OnClick = cbClientClick
      end
      object EditClientName: TEdit
        Left = 224
        Top = 48
        Width = 209
        Height = 23
        Enabled = False
        TabOrder = 2
        TextHint = 'Client name'
      end
      object Desde: TDateTimePicker
        Left = 64
        Top = 48
        Width = 105
        Height = 23
        Date = 43326.000000000000000000
        Time = 0.489538101850485000
        TabOrder = 3
      end
      object Hasta: TDateTimePicker
        Left = 64
        Top = 77
        Width = 105
        Height = 23
        Date = 43326.000000000000000000
        Time = 0.489589282413362500
        TabOrder = 4
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object cbDept: TCheckBox
        Left = 16
        Top = 17
        Width = 153
        Height = 17
        Caption = 'Filter by department'
        TabOrder = 0
        OnClick = cbDeptClick
      end
      object cbSubDept: TCheckBox
        Left = 256
        Top = 17
        Width = 177
        Height = 17
        Caption = 'Filter by sub department'
        TabOrder = 1
        OnClick = cbSubDeptClick
      end
      object EditDept: TEdit
        Left = 16
        Top = 40
        Width = 177
        Height = 23
        TabOrder = 2
        TextHint = 'Department'
      end
      object EditSubDept: TEdit
        Left = 256
        Top = 40
        Width = 177
        Height = 23
        TabOrder = 3
        TextHint = 'Sub Department'
      end
      object cbSupplier: TCheckBox
        Left = 16
        Top = 72
        Width = 153
        Height = 17
        Caption = 'Filter by supplier'
        TabOrder = 4
        OnClick = cbSupplierClick
      end
      object EditSupplier: TEdit
        Left = 16
        Top = 95
        Width = 177
        Height = 23
        TabOrder = 5
        TextHint = 'Supplier'
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      object Label3: TLabel
        Left = 32
        Top = 38
        Width = 28
        Height = 15
        Caption = 'From'
      end
      object Label4: TLabel
        Left = 32
        Top = 75
        Width = 13
        Height = 15
        Caption = 'To'
      end
      object Label5: TLabel
        Left = 256
        Top = 38
        Width = 11
        Height = 15
        Caption = 'ID'
      end
      object dateFrom: TDateTimePicker
        Left = 80
        Top = 32
        Width = 105
        Height = 23
        Date = 43326.000000000000000000
        Time = 0.489538101850485000
        TabOrder = 0
        OnChange = dateFromChange
      end
      object dateTo: TDateTimePicker
        Left = 80
        Top = 72
        Width = 105
        Height = 23
        Date = 43326.000000000000000000
        Time = 0.489589282413362500
        TabOrder = 1
        OnChange = dateToChange
      end
      object cbId: TComboBox
        Left = 273
        Top = 35
        Width = 145
        Height = 23
        TabOrder = 2
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 128
    Width = 453
    Height = 34
    Align = alBottom
    TabOrder = 0
    object btnOk: TButton
      AlignWithMargins = True
      Left = 374
      Top = 4
      Width = 75
      Height = 26
      Align = alRight
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
    end
  end
end
