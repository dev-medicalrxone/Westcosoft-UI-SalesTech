object FrmAddEditButtons: TFrmAddEditButtons
  Left = 0
  Top = 0
  Caption = 'Add - Edit Buttons'
  ClientHeight = 282
  ClientWidth = 444
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object Label1: TLabel
    Left = 32
    Top = 70
    Width = 60
    Height = 15
    Caption = 'Description'
  end
  object Label5: TLabel
    Left = 32
    Top = 99
    Width = 98
    Height = 15
    Caption = 'Procedure Add-on'
  end
  object Label2: TLabel
    Left = 32
    Top = 41
    Width = 64
    Height = 15
    Caption = 'Product No.'
  end
  object SpeedButton1: TSpeedButton
    Left = 287
    Top = 38
    Width = 86
    Height = 23
    Caption = 'Inventory'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FF4A667C
      BE9596FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF6B9CC31E89E84B7AA3C89693FF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4BB4FE51B5FF
      2089E94B7AA2C69592FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FF51B7FE51B3FF1D87E64E7AA0CA9792FF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      51B7FE4EB2FF1F89E64E7BA2B99497FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF52B8FE4BB1FF2787D95F6A76FF
      00FFB0857FC09F94C09F96BC988EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF55BDFFB5D6EDBF9D92BB9B8CE7DAC2FFFFE3FFFFE5FDFADAD8C3
      B3B58D85FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCEA795FD
      EEBEFFFFD8FFFFDAFFFFDBFFFFE6FFFFFBEADDDCAE837FFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFC1A091FBDCA8FEF7D0FFFFDBFFFFE3FFFFF8FFFF
      FDFFFFFDC6A99CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC1A091FEE3ACF1
      C491FCF2CAFFFFDDFFFFE4FFFFF7FFFFF7FFFFE9EEE5CBB9948CFF00FFFF00FF
      FF00FFFF00FFFF00FFC2A191FFE6AEEEB581F7DCAEFEFDD8FFFFDFFFFFE3FFFF
      E4FFFFE0F3ECD2BB968EFF00FFFF00FFFF00FFFF00FFFF00FFBC978CFBE7B7F4
      C791F2C994F8E5B9FEFCD8FFFFDDFFFFDCFFFFE0E2D2BAB68E86FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFD9C3A9FFFEE5F7DCB8F2C994F5D4A5FAE8BDFDF4
      C9FDFBD6B69089FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB58D85E8
      DEDDFFFEF2F9D8A3F4C48CF9D49FFDEAB8D0B49FB89086FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFAD827FC9AA9EEFE0B7EFDFB2E7CEACB890
      86B89086FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFBA968ABB988CB79188FF00FFFF00FFFF00FFFF00FF}
    OnClick = SpeedButton1Click
  end
  object Label3: TLabel
    Left = 32
    Top = 128
    Width = 46
    Height = 15
    Caption = 'Quantity'
  end
  object Label6: TLabel
    Left = 7
    Top = 156
    Width = 139
    Height = 15
    Caption = 'Image 56 height 116 width'
  end
  object SpeedButton2: TSpeedButton
    Left = 271
    Top = 154
    Width = 29
    Height = 22
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FF4A667C
      BE9596FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF6B9CC31E89E84B7AA3C89693FF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4BB4FE51B5FF
      2089E94B7AA2C69592FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FF51B7FE51B3FF1D87E64E7AA0CA9792FF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      51B7FE4EB2FF1F89E64E7BA2B99497FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF52B8FE4BB1FF2787D95F6A76FF
      00FFB0857FC09F94C09F96BC988EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF55BDFFB5D6EDBF9D92BB9B8CE7DAC2FFFFE3FFFFE5FDFADAD8C3
      B3B58D85FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCEA795FD
      EEBEFFFFD8FFFFDAFFFFDBFFFFE6FFFFFBEADDDCAE837FFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFC1A091FBDCA8FEF7D0FFFFDBFFFFE3FFFFF8FFFF
      FDFFFFFDC6A99CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC1A091FEE3ACF1
      C491FCF2CAFFFFDDFFFFE4FFFFF7FFFFF7FFFFE9EEE5CBB9948CFF00FFFF00FF
      FF00FFFF00FFFF00FFC2A191FFE6AEEEB581F7DCAEFEFDD8FFFFDFFFFFE3FFFF
      E4FFFFE0F3ECD2BB968EFF00FFFF00FFFF00FFFF00FFFF00FFBC978CFBE7B7F4
      C791F2C994F8E5B9FEFCD8FFFFDDFFFFDCFFFFE0E2D2BAB68E86FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFD9C3A9FFFEE5F7DCB8F2C994F5D4A5FAE8BDFDF4
      C9FDFBD6B69089FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB58D85E8
      DEDDFFFEF2F9D8A3F4C48CF9D49FFDEAB8D0B49FB89086FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFAD827FC9AA9EEFE0B7EFDFB2E7CEACB890
      86B89086FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFBA968ABB988CB79188FF00FFFF00FFFF00FFFF00FF}
    OnClick = SpeedButton2Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 241
    Width = 444
    Height = 41
    Align = alBottom
    TabOrder = 4
    object btnOk: TButton
      AlignWithMargins = True
      Left = 284
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
    end
    object btnCancel: TButton
      AlignWithMargins = True
      Left = 365
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object EditDescription: TEdit
    Left = 149
    Top = 67
    Width = 121
    Height = 23
    TabOrder = 0
    TextHint = 'eg. Table 1'
  end
  object EditProductNo: TEdit
    Left = 149
    Top = 38
    Width = 121
    Height = 23
    Enabled = False
    TabOrder = 5
  end
  object EditQty: TEdit
    Left = 149
    Top = 125
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object DBImage1: TDBImage
    Left = 149
    Top = 154
    Width = 116
    Height = 59
    DataField = 'BUTTON_IMAGE'
    DataSource = DMMidas.dsBotones
    TabOrder = 6
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 444
    Height = 25
    ButtonHeight = 25
    ButtonWidth = 32
    Caption = 'ToolBar1'
    Images = FrmMain.ImageListDB
    TabOrder = 7
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 0
    end
    object TBPost: TToolButton
      Left = 32
      Top = 0
      Caption = 'TBPost'
      ImageIndex = 1
    end
    object ToolButton3: TToolButton
      Left = 64
      Top = 0
      Caption = 'ToolButton3'
      ImageIndex = 3
    end
    object ToolButton5: TToolButton
      Left = 96
      Top = 0
      Caption = 'ToolButton5'
      ImageIndex = 4
    end
    object ToolButton2: TToolButton
      Left = 128
      Top = 0
      Caption = 'ToolButton2'
      ImageIndex = 5
    end
    object ToolButton4: TToolButton
      Left = 160
      Top = 0
      Caption = 'ToolButton4'
      ImageIndex = 6
    end
  end
  object cbRecipe: TCheckBox
    Left = 149
    Top = 218
    Width = 97
    Height = 17
    Caption = 'Recipe Price'
    TabOrder = 3
  end
  object cbAdd_ons: TComboBox
    Left = 149
    Top = 96
    Width = 145
    Height = 23
    TabOrder = 1
    Items.Strings = (
      'Recetas'
      'OTC'
      'Bag Pickup'
      'eSignature'
      'Stop Tag'
      'Delivery'
      'Tarj Familia'
      'Layaway'
      'Pago Credito'
      'Venta Credito'
      'Auspicio'
      'Group Sales'
      'Patrocinio'
      'Utility'
      'Combo'
      'Abono Layaway'
      'Comiciones'
      'Assemblies'
      'Cambio Cheques'
      'Redimir Patrocinio'
      'Veterano'
      'Trans WIC'
      'Cobro WIC'
      'Servicio Negocio'
      'Cotizacion'
      'SSS O.T.C.'
      'SSS Void'
      'Customers'
      'View eSignature'
      'Coupon')
  end
  object ADD_EDIT_MOBILE_BUTTONS_DETAIL: TFDStoredProc
    Connection = DMMidas.FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'ADD_EDIT_MOBILE_BUTTONS_DETAIL'
    Left = 408
    Top = 128
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@description'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 3
        Name = '@product_no'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@qty'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@btn_image'
        DataType = ftBlob
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@modifier'
        DataType = ftBoolean
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@category_id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@row'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@col'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@add_on'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 12
        Name = '@recipe'
        DataType = ftBoolean
        ParamType = ptInput
      end>
  end
  object ADD_EDIT_BUTTONS_MOBILE_HEADER: TFDStoredProc
    Connection = DMMidas.FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'ADD_EDIT_BUTTONS_MOBILE_HEADER'
    Left = 400
    Top = 78
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@description'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 3
        Name = '@button_category'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@category_id'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
end
