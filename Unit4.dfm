object Form4: TForm4
  Left = 213
  Top = 128
  Width = 952
  Height = 656
  Caption = #1054#1082#1072#1079#1072#1085#1085#1099#1077' '#1091#1089#1083#1091#1075#1080
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
    Left = 16
    Top = 8
    Width = 401
    Height = 169
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 463
    Top = 8
    Width = 113
    Height = 49
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 463
    Top = 64
    Width = 113
    Height = 49
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 463
    Top = 120
    Width = 113
    Height = 49
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 463
    Top = 176
    Width = 113
    Height = 49
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 4
    OnClick = Button4Click
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 48
  end
  object Query1: TQuery
    Active = True
    DatabaseName = 'NK'
    RequestLive = True
    SQL.Strings = (
      'select*from o')
    Left = 424
    Top = 104
  end
  object QueryDel: TQuery
    DatabaseName = 'NK'
    DataSource = DataSource1
    RequestLive = True
    SQL.Strings = (
      'delete from o where id=:n')
    Left = 544
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'n'
        ParamType = ptUnknown
      end>
  end
end
