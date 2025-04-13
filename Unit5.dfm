object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
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
    Left = 200
    Top = 8
    Width = 188
    Height = 45
    Caption = 'Ajouter Place'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 104
    Top = 107
    Width = 145
    Height = 25
    Caption = 'Nombre de Place'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 104
    Top = 173
    Width = 68
    Height = 25
    Caption = 'etage id'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 104
    Top = 240
    Width = 115
    Height = 25
    Caption = 'Type de Place'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 344
    Top = 104
    Width = 121
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 344
    Top = 170
    Width = 121
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 232
    Top = 312
    Width = 121
    Height = 41
    Caption = 'Ajouter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    StyleName = 'Glow'
    OnClick = Button1Click
  end
  object Edit3: TEdit
    Left = 344
    Top = 232
    Width = 121
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSOLEDBSQL.1;Integrated Security=SSPI;Persist Security ' +
      'Info=False;User ID="";Initial Catalog=ParkingDB;Data Source=DESK' +
      'TOP-4UBE3TI\MSSQLSERVER01;Initial File Name="";Trust Server Cert' +
      'ificate=True;Server SPN="";Authentication="";Access Token=""'
    Provider = 'MSOLEDBSQL.1'
    Left = 528
    Top = 344
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <
      item
        Name = 'numero'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'etage_id'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'type'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'INSERT INTO Place (numero, etage_id, type, disponibilite) VALUES' +
        ' (:numero, :etage_id, :type, '#39'D'#39')')
    Left = 448
    Top = 344
  end
end
