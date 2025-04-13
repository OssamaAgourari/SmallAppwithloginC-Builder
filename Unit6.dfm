object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 201
    Top = 8
    Width = 192
    Height = 45
    Caption = 'Reserve Place'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 240
    Top = 392
    Width = 137
    Height = 41
    Caption = 'Reserver'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    StyleName = 'Glow'
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 144
    Top = 256
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    StyleName = 'Glow'
  end
  object Button2: TButton
    Left = 256
    Top = 209
    Width = 105
    Height = 33
    Caption = 'Refresh'
    TabOrder = 2
    StyleName = 'Glow'
    OnClick = Button2Click
  end
  object DBGrid2: TDBGrid
    Left = 144
    Top = 74
    Width = 320
    Height = 120
    DataSource = DataSource2
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    StyleName = 'Glow'
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSOLEDBSQL.1;Integrated Security=SSPI;Persist Security ' +
      'Info=False;User ID="";Initial Catalog=ParkingDB;Data Source=DESK' +
      'TOP-4UBE3TI\MSSQLSERVER01;Use Procedure for Prepare=1;Auto Trans' +
      'late=True;Packet Size=4096;Workstation ID=DESKTOP-4UBE3TI;Initia' +
      'l File Name="";Use Encryption for Data=False;Tag with column col' +
      'lation when possible=False;MARS Connection=False;DataTypeCompati' +
      'bility=0;Trust Server Certificate=True;Server SPN="";Application' +
      ' Intent=READWRITE;MultiSubnetFailover=False;Use FMTONLY=False;Au' +
      'thentication="";Access Token="";TransparentNetworkIPResolution=T' +
      'rue;Connect Retry Count=1;Connect Retry Interval=10'
    Provider = 'MSOLEDBSQL.1'
    Left = 536
    Top = 296
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT numero  FROM Place WHERE disponibilite = '#39'D'#39)
    Left = 424
    Top = 296
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 328
    Top = 296
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Place WHERE disponibilite = '#39'D'#39)
    Left = 544
    Top = 208
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 544
    Top = 120
  end
end
