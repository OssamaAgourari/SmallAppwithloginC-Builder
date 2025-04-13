object Label1: TLabel1
  Left = 0
  Top = 0
  Caption = 'n'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = 32
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 32
  object Label1: TLabel
    Left = 112
    Top = 139
    Width = 91
    Height = 28
    Caption = 'UserName'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 28
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 112
    Top = 211
    Width = 81
    Height = 28
    Caption = 'Password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 28
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 280
    Top = 256
    Width = 7
    Height = 32
  end
  object Label4: TLabel
    Left = 208
    Top = 32
    Width = 209
    Height = 45
    Caption = 'Authentication'
    Color = clHotLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 352
    Top = 136
    Width = 121
    Height = 36
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 28
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 352
    Top = 208
    Width = 121
    Height = 36
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 28
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 224
    Top = 286
    Width = 145
    Height = 44
    Caption = 'Se Connecter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 28
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    StyleName = 'Glow'
    OnClick = Button1Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSOLEDBSQL.1;Integrated Security=SSPI;Persist Security ' +
      'Info=False;User ID="";Initial Catalog=ParkingDB;Data Source=DESK' +
      'TOP-4UBE3TI\MSSQLSERVER01;Initial File Name="";Trust Server Cert' +
      'ificate=True;Server SPN="";Authentication="";Access Token=""'
    Provider = 'MSOLEDBSQL.1'
    Left = 448
    Top = 304
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * frome user ;')
    Left = 544
    Top = 304
  end
end
