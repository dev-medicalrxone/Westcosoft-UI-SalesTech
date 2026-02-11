object frmSpinPOS: TfrmSpinPOS
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 217
  ClientWidth = 884
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 868
    Height = 33
    ActivePage = tabSale
    TabOrder = 0
    Visible = False
    OnChange = PageControl1Change
    object tabSale: TTabSheet
      Caption = 'Sale'
      object lblInvoiceNumber: TLabel
        Left = 16
        Top = 16
        Width = 79
        Height = 13
        Caption = 'Invoice Number:'
      end
      object lblCustomerName: TLabel
        Left = 16
        Top = 39
        Width = 80
        Height = 13
        Caption = 'Customer Name:'
      end
      object lblCustomerId: TLabel
        Left = 16
        Top = 62
        Width = 64
        Height = 13
        Caption = 'Customer ID:'
      end
      object lblAmount: TLabel
        Left = 16
        Top = 85
        Width = 41
        Height = 13
        Caption = 'Amount:'
      end
      object lblTax: TLabel
        Left = 16
        Top = 108
        Width = 22
        Height = 13
        Caption = 'Tax:'
      end
      object lblTotal: TLabel
        Left = 16
        Top = 131
        Width = 28
        Height = 13
        Caption = 'Total:'
      end
      object Label5: TLabel
        Left = 16
        Top = 154
        Width = 73
        Height = 13
        Caption = 'Type Payment:'
      end
      object Label6: TLabel
        Left = 17
        Top = 177
        Width = 24
        Height = 13
        Caption = 'TCN:'
      end
      object edtInvoiceNumber: TEdit
        Left = 112
        Top = 13
        Width = 289
        Height = 21
        TabOrder = 0
      end
      object edtCustomerName: TEdit
        Left = 112
        Top = 36
        Width = 729
        Height = 21
        TabOrder = 1
        TextHint = 'Customer name (optional)'
      end
      object edtCustomerId: TEdit
        Left = 112
        Top = 59
        Width = 289
        Height = 21
        TabOrder = 2
        TextHint = 'Customer ID (optional)'
      end
      object edtAmount: TEdit
        Left = 112
        Top = 82
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object edtTax: TEdit
        Left = 112
        Top = 105
        Width = 121
        Height = 21
        TabOrder = 4
      end
      object edtTotal: TEdit
        Left = 112
        Top = 128
        Width = 121
        Height = 21
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object btnCalculateTotal: TButton
        Left = 239
        Top = 126
        Width = 82
        Height = 25
        Caption = 'Calculate'
        TabOrder = 6
        OnClick = btnCalculateTotalClick
      end
      object cbTypePaymentSale: TComboBox
        Left = 112
        Top = 151
        Width = 121
        Height = 21
        TabOrder = 7
        Items.Strings = (
          'Credit'
          'Debit'
          'EBT_Food'
          'EBT_Cash'
          'Card'
          'Cash'
          'Check'
          'Gift')
      end
      object edtSaleTCN: TEdit
        Left = 112
        Top = 174
        Width = 121
        Height = 21
        TabOrder = 8
        TextHint = 'reference number'
      end
    end
    object tabReturn: TTabSheet
      Caption = 'Return'
      ImageIndex = 1
      object lblReturnTxnId: TLabel
        Left = 16
        Top = 16
        Width = 113
        Height = 13
        Caption = 'Original Transaction ID:'
      end
      object lblReturnAmount: TLabel
        Left = 16
        Top = 43
        Width = 77
        Height = 13
        Caption = 'Return Amount:'
      end
      object lblReturnReason: TLabel
        Left = 16
        Top = 70
        Width = 40
        Height = 13
        Caption = 'Reason:'
      end
      object Label1: TLabel
        Left = 16
        Top = 97
        Width = 24
        Height = 13
        Caption = 'TCN:'
      end
      object Label2: TLabel
        Left = 16
        Top = 124
        Width = 73
        Height = 13
        Caption = 'Type Payment:'
      end
      object edtReturnTxnId: TEdit
        Left = 152
        Top = 13
        Width = 329
        Height = 21
        TabOrder = 0
        TextHint = 'Enter original transaction ID to return'
      end
      object edtReturnAmount: TEdit
        Left = 152
        Top = 40
        Width = 121
        Height = 21
        TabOrder = 1
        TextHint = 'Amount to return'
      end
      object edtReturnReason: TEdit
        Left = 152
        Top = 67
        Width = 689
        Height = 21
        TabOrder = 2
        TextHint = 'Reason for return (optional)'
      end
      object edtReturnTCN: TEdit
        Left = 152
        Top = 94
        Width = 121
        Height = 21
        TabOrder = 3
        TextHint = 'Reference ID'
      end
      object cbTypePayment: TComboBox
        Left = 152
        Top = 121
        Width = 121
        Height = 21
        TabOrder = 4
        Items.Strings = (
          'Credit'
          'Debit'
          'EBT_Food'
          'EBT_Cash'
          'Card'
          'Cash'
          'Check'
          'Gift')
      end
    end
    object tabVoid: TTabSheet
      Caption = 'Void'
      ImageIndex = 2
    end
    object tabAuth: TTabSheet
      Caption = 'Authorization'
      ImageIndex = 3
    end
    object tabPaymentInvoice: TTabSheet
      Caption = 'Payment Invoice'
      ImageIndex = 4
    end
    object tabGetCard: TTabSheet
      Caption = 'Get Card'
      ImageIndex = 5
    end
    object tabTipAdjust: TTabSheet
      Caption = 'Tip Adjust'
      ImageIndex = 6
    end
    object tabCapture: TTabSheet
      Caption = 'Capture'
      ImageIndex = 7
      object lblCaptureTxnId: TLabel
        Left = 16
        Top = 16
        Width = 113
        Height = 13
        Caption = 'Original Transaction ID:'
      end
      object lblCaptureAmount: TLabel
        Left = 16
        Top = 43
        Width = 41
        Height = 13
        Caption = 'Amount:'
      end
      object Label12: TLabel
        Left = 16
        Top = 70
        Width = 24
        Height = 13
        Caption = 'TCN:'
      end
      object Label13: TLabel
        Left = 16
        Top = 97
        Width = 73
        Height = 13
        Caption = 'Type Payment:'
      end
      object edtCaptureTxnId: TEdit
        Left = 144
        Top = 13
        Width = 289
        Height = 21
        TabOrder = 0
        TextHint = 'Transaction ID'
      end
      object edtCaptureAmount: TEdit
        Left = 144
        Top = 40
        Width = 121
        Height = 21
        TabOrder = 1
        Text = '100.00'
      end
      object edtCaptureTCN: TEdit
        Left = 144
        Top = 67
        Width = 121
        Height = 21
        TabOrder = 2
        TextHint = 'Reference ID'
      end
      object cbTypePaymentCapture: TComboBox
        Left = 144
        Top = 94
        Width = 121
        Height = 21
        TabOrder = 3
        Items.Strings = (
          'Credit'
          'Debit'
          'EBT_Food'
          'EBT_Cash'
          'Card'
          'Cash'
          'Check'
          'Gift')
      end
    end
    object tabSettle: TTabSheet
      Caption = 'Settle'
      ImageIndex = 8
    end
    object tabAbortTransaction: TTabSheet
      Caption = 'Abort Transaction'
      ImageIndex = 9
      object lblAbortTxnId: TLabel
        Left = 16
        Top = 16
        Width = 74
        Height = 13
        Caption = 'Transaction ID:'
      end
      object lblAbortReason: TLabel
        Left = 16
        Top = 43
        Width = 40
        Height = 13
        Caption = 'Reason:'
      end
      object edtAbortTxnId: TEdit
        Left = 112
        Top = 13
        Width = 289
        Height = 21
        TabOrder = 0
        TextHint = 'Transaction ID'
      end
      object edtAbortReason: TEdit
        Left = 112
        Top = 40
        Width = 729
        Height = 21
        TabOrder = 1
        TextHint = 'Reason for aborting (optional)'
      end
    end
    object tabGetSignature: TTabSheet
      Caption = 'Get Signature'
      ImageIndex = 10
      object Label7: TLabel
        Left = 24
        Top = 24
        Width = 74
        Height = 13
        Caption = 'Transaction ID:'
      end
      object edtSignatureTxnId: TEdit
        Left = 120
        Top = 21
        Width = 289
        Height = 21
        TabOrder = 0
        TextHint = 'Transaction ID'
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Status Transaction'
      ImageIndex = 11
      object Label15: TLabel
        Left = 24
        Top = 24
        Width = 113
        Height = 13
        Caption = 'Original Transaction ID:'
      end
      object Label16: TLabel
        Left = 24
        Top = 51
        Width = 24
        Height = 13
        Caption = 'TCN:'
      end
      object Label17: TLabel
        Left = 24
        Top = 78
        Width = 73
        Height = 13
        Caption = 'Type Payment:'
      end
      object edtStatusTxnId: TEdit
        Left = 152
        Top = 21
        Width = 289
        Height = 21
        TabOrder = 0
        TextHint = 'Transaction ID'
      end
      object edtStatusTCN: TEdit
        Left = 152
        Top = 48
        Width = 121
        Height = 21
        TabOrder = 1
        TextHint = 'Reference ID'
      end
      object cbTypePaymentStatus: TComboBox
        Left = 152
        Top = 75
        Width = 121
        Height = 21
        TabOrder = 2
        Items.Strings = (
          'Credit'
          'Debit'
          'EBT_Food'
          'EBT_Cash'
          'Card'
          'Cash'
          'Check'
          'Gift')
      end
    end
  end
  object grpResponse: TGroupBox
    Left = 8
    Top = 259
    Width = 868
    Height = 126
    Caption = ' API Response '
    TabOrder = 1
    object memoResponse: TMemo
      Left = 2
      Top = 15
      Width = 864
      Height = 109
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 168
    Width = 884
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object btnProcessOperation: TButton
      Left = 16
      Top = 8
      Width = 177
      Height = 33
      Caption = 'Process Sale'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnClick = btnProcessOperationClick
    end
    object btnClose: TButton
      Left = 391
      Top = 6
      Width = 90
      Height = 33
      Caption = 'Close'
      TabOrder = 1
      OnClick = btnCloseClick
    end
  end
  object Memo1: TMemo
    Left = 40
    Top = 52
    Width = 785
    Height = 98
    TabStop = False
    Alignment = taCenter
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
end
