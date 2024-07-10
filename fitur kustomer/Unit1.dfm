object Form1: TForm1
  Left = 192
  Top = 125
  Width = 534
  Height = 500
  Caption = 'KUSTOMER'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 16
    Width = 25
    Height = 18
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 48
    Width = 40
    Height = 18
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 80
    Width = 33
    Height = 18
    Caption = 'TELP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 112
    Width = 42
    Height = 18
    Caption = 'EMAIL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 40
    Top = 144
    Width = 56
    Height = 18
    Caption = 'ALAMAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 40
    Top = 176
    Width = 58
    Height = 18
    Caption = 'MEMBER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 40
    Top = 376
    Width = 112
    Height = 18
    Caption = 'MASUKAN NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblDiskon: TLabel
    Left = 328
    Top = 176
    Width = 64
    Height = 18
    Caption = 'DISKON :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object e1: TEdit
    Left = 176
    Top = 16
    Width = 273
    Height = 21
    TabOrder = 0
  end
  object e2: TEdit
    Left = 176
    Top = 48
    Width = 273
    Height = 21
    TabOrder = 1
  end
  object e3: TEdit
    Left = 176
    Top = 80
    Width = 273
    Height = 21
    TabOrder = 2
  end
  object e4: TEdit
    Left = 176
    Top = 112
    Width = 273
    Height = 21
    TabOrder = 3
  end
  object e5: TEdit
    Left = 176
    Top = 144
    Width = 273
    Height = 21
    TabOrder = 4
  end
  object btn1: TButton
    Left = 64
    Top = 208
    Width = 65
    Height = 33
    Caption = 'BARU'
    TabOrder = 5
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 144
    Top = 208
    Width = 65
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 6
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 224
    Top = 208
    Width = 65
    Height = 33
    Caption = 'EDIT'
    TabOrder = 7
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 304
    Top = 208
    Width = 65
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 384
    Top = 208
    Width = 65
    Height = 33
    Caption = 'BATAL'
    TabOrder = 9
    OnClick = btn5Click
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 248
    Width = 409
    Height = 120
    DataSource = DataModule2.DataSource1
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit5: TEdit
    Left = 176
    Top = 376
    Width = 273
    Height = 21
    TabOrder = 11
    OnChange = Edit5Change
  end
  object Button6: TButton
    Left = 40
    Top = 408
    Width = 105
    Height = 33
    Caption = 'LAPORAN'
    TabOrder = 12
    OnClick = Button6Click
  end
  object cbMember: TComboBox
    Left = 176
    Top = 176
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 13
    OnChange = cbMemberChange
    Items.Strings = (
      'iya'
      'tidak')
  end
  object Button1: TButton
    Left = 336
    Top = 408
    Width = 113
    Height = 33
    Caption = 'CLOSE PROGRAM'
    TabOrder = 14
    OnClick = Button1Click
  end
end
