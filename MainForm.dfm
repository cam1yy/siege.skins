object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Tuck Shop Calculator'
  ClientHeight = 680
  ClientWidth = 460
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object lblTitle: TLabel
    Left = 16
    Top = 12
    Width = 217
    Height = 25
    Caption = 'Tuck Shop Calculator'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblSubtitle: TLabel
    Left = 16
    Top = 38
    Width = 212
    Height = 15
    Caption = 'pick your snacks and see the total :)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object lblFooter: TLabel
    Left = 16
    Top = 658
    Width = 178
    Height = 15
    Caption = 'made by cam for tuck shop duty - 2026'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object grpMenu: TGroupBox
    Left = 16
    Top = 64
    Width = 428
    Height = 310
    Caption = ' Menu - prices as of term 3 2026 '
    TabOrder = 0
    object lblPie: TLabel
      Left = 16
      Top = 24
      Width = 49
      Height = 15
      Caption = 'Meat Pie'
    end
    object lblPiePrice: TLabel
      Left = 160
      Top = 24
      Width = 32
      Height = 15
      Caption = '$4.50'
    end
    object lblSausage: TLabel
      Left = 16
      Top = 50
      Width = 73
      Height = 15
      Caption = 'Sausage Roll'
    end
    object lblSausagePrice: TLabel
      Left = 160
      Top = 50
      Width = 32
      Height = 15
      Caption = '$3.50'
    end
    object lblSandwich: TLabel
      Left = 16
      Top = 76
      Width = 118
      Height = 15
      Caption = 'Sandwich (ham/cheese)'
    end
    object lblSandwichPrice: TLabel
      Left = 160
      Top = 76
      Width = 32
      Height = 15
      Caption = '$5.00'
    end
    object lblHotDog: TLabel
      Left = 16
      Top = 102
      Width = 48
      Height = 15
      Caption = 'Hot Dog'
    end
    object lblHotDogPrice: TLabel
      Left = 160
      Top = 102
      Width = 32
      Height = 15
      Caption = '$4.00'
    end
    object lblChips: TLabel
      Left = 16
      Top = 128
      Width = 75
      Height = 15
      Caption = 'Chips (packet)'
    end
    object lblChipsPrice: TLabel
      Left = 160
      Top = 128
      Width = 32
      Height = 15
      Caption = '$2.50'
    end
    object lblJuice: TLabel
      Left = 16
      Top = 154
      Width = 53
      Height = 15
      Caption = 'Juice Box'
    end
    object lblJuicePrice: TLabel
      Left = 160
      Top = 154
      Width = 32
      Height = 15
      Caption = '$3.00'
    end
    object lblWater: TLabel
      Left = 16
      Top = 180
      Width = 34
      Height = 15
      Caption = 'Water'
    end
    object lblWaterPrice: TLabel
      Left = 160
      Top = 180
      Width = 32
      Height = 15
      Caption = '$2.00'
    end
    object lblCookie: TLabel
      Left = 16
      Top = 206
      Width = 39
      Height = 15
      Caption = 'Cookie'
    end
    object lblCookiePrice: TLabel
      Left = 160
      Top = 206
      Width = 32
      Height = 15
      Caption = '$1.50'
    end
    object lblLolly: TLabel
      Left = 16
      Top = 232
      Width = 52
      Height = 15
      Caption = 'Lolly Bag'
    end
    object lblLollyPrice: TLabel
      Left = 160
      Top = 232
      Width = 32
      Height = 15
      Caption = '$2.00'
    end
    object edtPie: TEdit
      Left = 260
      Top = 21
      Width = 60
      Height = 23
      TabOrder = 0
      Text = '0'
    end
    object edtSausage: TEdit
      Left = 260
      Top = 47
      Width = 60
      Height = 23
      TabOrder = 1
      Text = '0'
    end
    object edtSandwich: TEdit
      Left = 260
      Top = 73
      Width = 60
      Height = 23
      TabOrder = 2
      Text = '0'
    end
    object edtHotDog: TEdit
      Left = 260
      Top = 99
      Width = 60
      Height = 23
      TabOrder = 3
      Text = '0'
    end
    object edtChips: TEdit
      Left = 260
      Top = 125
      Width = 60
      Height = 23
      TabOrder = 4
      Text = '0'
    end
    object edtJuice: TEdit
      Left = 260
      Top = 151
      Width = 60
      Height = 23
      TabOrder = 5
      Text = '0'
    end
    object edtWater: TEdit
      Left = 260
      Top = 177
      Width = 60
      Height = 23
      TabOrder = 6
      Text = '0'
    end
    object edtCookie: TEdit
      Left = 260
      Top = 203
      Width = 60
      Height = 23
      TabOrder = 7
      Text = '0'
    end
    object edtLolly: TEdit
      Left = 260
      Top = 229
      Width = 60
      Height = 23
      TabOrder = 8
      Text = '0'
    end
    object btnCalc: TButton
      Left = 16
      Top = 268
      Width = 121
      Height = 30
      Caption = 'Calculate Total'
      TabOrder = 9
      OnClick = btnCalcClick
    end
    object btnClear: TButton
      Left = 148
      Top = 268
      Width = 75
      Height = 30
      Caption = 'Clear'
      TabOrder = 10
      OnClick = btnClearClick
    end
  end
  object pnlTotal: TPanel
    Left = 16
    Top = 384
    Width = 428
    Height = 41
    BevelOuter = bvNone
    Color = 14348012
    ParentBackground = False
    TabOrder = 1
    object lblTotal: TLabel
      Left = 12
      Top = 8
      Width = 95
      Height = 21
      Caption = 'Total: $0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object grpCash: TGroupBox
    Left = 16
    Top = 432
    Width = 428
    Height = 105
    Caption = ' Paying with cash? '
    TabOrder = 2
    object lblCashGiven: TLabel
      Left = 16
      Top = 28
      Width = 79
      Height = 15
      Caption = 'Cash given: $'
    end
    object lblChange: TLabel
      Left = 16
      Top = 64
      Width = 94
      Height = 15
      Caption = 'Change: $0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblMsg: TLabel
      Left = 16
      Top = 84
      Width = 3
      Height = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object edtCash: TEdit
      Left = 101
      Top = 25
      Width = 80
      Height = 23
      TabOrder = 0
      Text = '0'
    end
    object btnChange: TButton
      Left = 200
      Top = 24
      Width = 121
      Height = 25
      Caption = 'Work out change'
      TabOrder = 1
      OnClick = btnChangeClick
    end
  end
  object memoReceipt: TMemo
    Left = 16
    Top = 543
    Width = 428
    Height = 105
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Color = 14737632
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Consolas'
    Font.Style = []
    Lines.Strings = (
      'Receipt:')
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    Visible = False
  end
end
