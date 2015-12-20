object Form11: TForm11
  Left = 872
  Top = 171
  Width = 347
  Height = 212
  Caption = #1057#1074#1077#1076#1077#1085#1080#1103' '#1086#1073' '#1091#1089#1083#1091#1075#1077
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
    Top = 16
    Width = 11
    Height = 13
    Caption = #8470
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 55
    Height = 13
    Caption = #1042#1080#1076' '#1091#1089#1083#1091#1075#1080
  end
  object Label3: TLabel
    Left = 16
    Top = 80
    Width = 55
    Height = 13
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
  end
  object Button1: TButton
    Left = 32
    Top = 120
    Width = 73
    Height = 33
    Caption = #1054#1082
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 120
    Top = 120
    Width = 73
    Height = 33
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 1
    OnClick = Button2Click
  end
  object EditN: TEdit
    Left = 96
    Top = 16
    Width = 113
    Height = 21
    TabOrder = 2
    Text = 'EditN'
  end
  object Edit1: TEdit
    Left = 96
    Top = 48
    Width = 113
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 96
    Top = 80
    Width = 113
    Height = 21
    TabOrder = 4
    Text = 'Edit2'
  end
  object QueryUpd: TQuery
    DatabaseName = 'NK'
    DataSource = Form3.DataSource1
    RequestLive = True
    SQL.Strings = (
      'update u set nazvanie=:u,stoimost=:st where id=:n')
    Left = 208
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'u'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'st'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'n'
        ParamType = ptUnknown
      end>
  end
  object QueryIns: TQuery
    DatabaseName = 'NK'
    DataSource = Form3.DataSource1
    RequestLive = True
    SQL.Strings = (
      'insert into u values (:n,:u,:st)')
    Left = 208
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'n'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'u'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'st'
        ParamType = ptUnknown
      end>
  end
end
