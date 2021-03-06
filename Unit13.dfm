object Form13: TForm13
  Left = 400
  Top = 165
  Width = 425
  Height = 318
  Caption = #1057#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1089#1095#1077#1090#1077
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
    Left = 32
    Top = 16
    Width = 47
    Height = 13
    Caption = 'ID '#1091#1089#1083#1091#1075#1080
  end
  object Label2: TLabel
    Left = 32
    Top = 48
    Width = 36
    Height = 13
    Caption = #1050#1083#1080#1077#1085#1090
  end
  object Label3: TLabel
    Left = 32
    Top = 80
    Width = 36
    Height = 13
    Caption = #1059#1089#1083#1091#1075#1072
  end
  object Label4: TLabel
    Left = 32
    Top = 112
    Width = 65
    Height = 13
    Caption = #1053#1086#1084#1077#1088' '#1089#1095#1077#1090#1072
  end
  object Label5: TLabel
    Left = 32
    Top = 144
    Width = 26
    Height = 13
    Caption = #1044#1072#1090#1072
  end
  object EditN: TEdit
    Left = 88
    Top = 16
    Width = 89
    Height = 21
    TabOrder = 0
    Text = 'EditN'
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 88
    Top = 48
    Width = 145
    Height = 21
    KeyField = 'ID'
    ListField = 'FIO'
    ListSource = DataSource1
    TabOrder = 1
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 88
    Top = 80
    Width = 145
    Height = 21
    KeyField = 'ID'
    ListField = 'NAZVANIE'
    ListSource = DataSource2
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 104
    Top = 112
    Width = 113
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 64
    Top = 144
    Width = 89
    Height = 21
    Date = 42361.059766446760000000
    Time = 42361.059766446760000000
    TabOrder = 4
  end
  object Button1: TButton
    Left = 144
    Top = 184
    Width = 81
    Height = 25
    Caption = #1054#1050
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 40
    Top = 184
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 6
    OnClick = Button2Click
  end
  object Query1: TQuery
    Active = True
    DatabaseName = 'NK'
    SQL.Strings = (
      'select * from k')
    Left = 248
    Top = 40
  end
  object Query2: TQuery
    Active = True
    DatabaseName = 'NK'
    SQL.Strings = (
      'select*from u')
    Left = 248
    Top = 80
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 288
    Top = 40
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 288
    Top = 80
  end
  object QueryIns: TQuery
    DatabaseName = 'NK'
    SQL.Strings = (
      
        'insert into sh (id,id_c,id_u,nomer,data) values (:id,:id_c,:id_u' +
        ',:nom,:data)')
    Left = 168
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'ID_C'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'ID_U'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftString
        Name = 'nom'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'data'
        ParamType = ptUnknown
      end>
  end
  object QueryUpd: TQuery
    DatabaseName = 'NK'
    SQL.Strings = (
      
        'update sh set id_c=:id_c,id_u=:id_u,nomer=:nom,data=:data where ' +
        'id=:id')
    Left = 216
    Top = 152
    ParamData = <
      item
        DataType = ftString
        Name = 'id_c'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'id_u'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'nom'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
end
