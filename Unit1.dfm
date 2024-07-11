object Form1: TForm1
  Left = 206
  Top = 116
  Width = 493
  Height = 347
  Caption = 'SATUAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 31
    Height = 13
    Caption = 'NAMA'
  end
  object Label2: TLabel
    Left = 16
    Top = 40
    Width = 53
    Height = 13
    Caption = 'DISKRIPSI'
  end
  object Label3: TLabel
    Left = 16
    Top = 224
    Width = 94
    Height = 13
    Caption = 'MASUKKAN NAMA'
  end
  object Edit1: TEdit
    Left = 104
    Top = 8
    Width = 313
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 104
    Top = 40
    Width = 313
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 104
    Top = 64
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 184
    Top = 64
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 264
    Top = 64
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 344
    Top = 64
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Edit3: TEdit
    Left = 144
    Top = 224
    Width = 193
    Height = 21
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 96
    Width = 401
    Height = 120
    DataSource = DataSource1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Button5: TButton
    Left = 344
    Top = 224
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 8
    OnClick = Button5Click
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualanuts'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'libmysql.dll'
    Left = 16
    Top = 256
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM satuan')
    Params = <>
    Left = 56
    Top = 256
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 96
    Top = 256
  end
end
