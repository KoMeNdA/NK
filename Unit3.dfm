object Form3: TForm3
  Left = 251
  Top = 204
  Width = 1037
  Height = 258
  Caption = #1059#1089#1083#1091#1075#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 0
    Width = 897
    Height = 225
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Caption = 'ID '#1091#1089#1083#1091#1075#1080
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAZVANIE'
        Title.Caption = #1042#1080#1076' '#1091#1089#1083#1091#1075#1080
        Width = 731
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STOIMOST'
        Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
        Width = 65
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 912
    Top = 0
    Width = 113
    Height = 49
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 912
    Top = 56
    Width = 113
    Height = 49
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 912
    Top = 112
    Width = 113
    Height = 49
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 912
    Top = 168
    Width = 113
    Height = 49
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 4
    OnClick = Button4Click
  end
  object Query1: TQuery
    Active = True
    DatabaseName = 'NK'
    RequestLive = True
    SQL.Strings = (
      'SELECT* FROM U')
    Left = 848
    Top = 112
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 856
    Top = 80
  end
  object QueryDel: TQuery
    DatabaseName = 'NK'
    SQL.Strings = (
      'delete from u where id=:n')
    Left = 992
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'n'
        ParamType = ptUnknown
      end>
  end
end
