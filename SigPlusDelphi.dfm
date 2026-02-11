object FrmeSignatureCapture1x5: TFrmeSignatureCapture1x5
  Left = 242
  Top = 156
  BorderStyle = bsSingle
  Caption = 'PharmaTech eSignatureCapture'
  ClientHeight = 510
  ClientWidth = 393
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 13
  object SigPlus1: TSigPlus
    Left = 0
    Top = 0
    Width = 393
    Height = 209
    TabOrder = 0
    ControlData = {
      180002009E2800009A15000009000000080000FF0F0000FF0000000000000100
      D007BC0290015E0160091A040400000006000100004B00000000010000000100
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000010000000000000000000000000000010000}
  end
  object Button1: TButton
    Left = 16
    Top = 224
    Width = 105
    Height = 41
    Caption = 'S I G N'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 152
    Top = 224
    Width = 105
    Height = 41
    Caption = 'C L E A R'
    TabOrder = 2
    OnClick = Button2Click
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 336
    Width = 201
    Height = 169
    Caption = 'Save and Return SIG File'
    TabOrder = 3
    object Button3: TButton
      Left = 16
      Top = 32
      Width = 105
      Height = 49
      Caption = 'E X P O R T  S I G'
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 16
      Top = 96
      Width = 105
      Height = 49
      Caption = 'I M P O R T  S I G'
      TabOrder = 1
      OnClick = Button4Click
    end
    object RadioButton1: TRadioButton
      Left = 152
      Top = 40
      Width = 33
      Height = 17
      Caption = '0'
      Checked = True
      TabOrder = 2
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 152
      Top = 80
      Width = 33
      Height = 17
      Caption = '1'
      TabOrder = 3
    end
    object RadioButton3: TRadioButton
      Left = 152
      Top = 120
      Width = 33
      Height = 17
      Caption = '2'
      TabOrder = 4
    end
  end
  object Button5: TButton
    Left = 240
    Top = 432
    Width = 105
    Height = 49
    Caption = 'S I G  I M A G E'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 280
    Top = 224
    Width = 105
    Height = 41
    Caption = 'C L O S E  P O R T'
    TabOrder = 5
    OnClick = Button6Click
  end
end
