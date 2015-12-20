object Form12: TForm12
  Left = 371
  Top = 212
  Width = 302
  Height = 331
  Caption = #1054#1082#1072#1079#1072#1085#1085#1072#1103' '#1091#1089#1083#1091#1075#1072
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
    Left = 24
    Top = 32
    Width = 77
    Height = 13
    Caption = 'ID '#1086#1082#1072#1079'. '#1091#1089#1083#1091#1075#1080
  end
  object Label2: TLabel
    Left = 24
    Top = 72
    Width = 42
    Height = 13
    Caption = 'ID '#1089#1095#1105#1090#1072
  end
  object Label3: TLabel
    Left = 24
    Top = 112
    Width = 47
    Height = 13
    Caption = 'ID '#1091#1089#1083#1091#1075#1080
  end
  object Label4: TLabel
    Left = 24
    Top = 152
    Width = 93
    Height = 13
    Caption = #1050#1088#1072#1090#1082#1086#1077' '#1086#1087#1080#1089#1072#1085#1080#1077
  end
  object EditN: TEdit
    Left = 112
    Top = 32
    Width = 89
    Height = 21
    TabOrder = 0
    Text = 'EditN'
  end
  object Edit1: TEdit
    Left = 128
    Top = 152
    Width = 129
    Height = 81
    TabOrder = 1
    Text = 'Edit1'
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 80
    Top = 72
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 80
    Top = 112
    Width = 145
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 40
    Top = 248
    Width = 97
    Height = 33
    Caption = #1054#1050
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 248
    Width = 97
    Height = 33
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 5
  end
  object DataSource1: TDataSource
    Left = 240
    Top = 72
  end
  object DataSource2: TDataSource
    Left = 240
    Top = 112
  end
  object Query1: TQuery
    DataSource = DataSource1
    SQL.Strings = (
      'select*from s')
    Left = 280
    Top = 72
  end
  object Query2: TQuery
    DataSource = DataSource2
    SQL.Strings = (
      'select*from u')
    Left = 280
    Top = 112
  end
  object QueryIns: TQuery
    SQL.Strings = (
      'insert into o values (:n,:n_s,:n_u,:o)')
    Left = 272
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'n'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'n_s'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'n_u'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'o'
        ParamType = ptUnknown
      end>
  end
  object QueryUpd: TQuery
    SQL.Strings = (
      'update sp set opis=:o,id_s=:n_s,id_u=:n_u where id=:n')
    Left = 272
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'o'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'n_s'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'n_u'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'n'
        ParamType = ptUnknown
      end>
  end
end
