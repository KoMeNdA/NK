object Form10: TForm10
  Left = 787
  Top = 194
  Width = 385
  Height = 329
  Caption = #1057#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1082#1083#1080#1077#1085#1090#1077
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
    Top = 16
    Width = 27
    Height = 13
    Caption = #1060#1048#1054
  end
  object Label2: TLabel
    Left = 24
    Top = 72
    Width = 79
    Height = 13
    Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
  end
  object Label3: TLabel
    Left = 24
    Top = 104
    Width = 84
    Height = 13
    Caption = #1057#1077#1088#1080#1103' '#1087#1072#1089#1087#1086#1088#1090#1072' '
  end
  object Label4: TLabel
    Left = 24
    Top = 136
    Width = 87
    Height = 13
    Caption = #1053#1086#1084#1077#1088' '#1087#1072#1089#1087#1086#1088#1090#1072' '
  end
  object Label5: TLabel
    Left = 24
    Top = 168
    Width = 85
    Height = 13
    Caption = #1040#1076#1088#1077#1089' '#1087#1088#1086#1087#1080#1089#1082#1080' '
  end
  object Label6: TLabel
    Left = 24
    Top = 216
    Width = 118
    Height = 13
    Caption = #1057#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1089#1091#1076#1080#1084#1086#1089#1090#1080' '
  end
  object Label7: TLabel
    Left = 24
    Top = 40
    Width = 55
    Height = 13
    Caption = 'ID '#1082#1083#1080#1077#1085#1090#1072
  end
  object Edit1: TEdit
    Left = 64
    Top = 8
    Width = 281
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit3: TEdit
    Left = 120
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit3'
  end
  object Edit4: TEdit
    Left = 120
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit4'
  end
  object Edit5: TEdit
    Left = 120
    Top = 168
    Width = 201
    Height = 21
    TabOrder = 3
    Text = 'Edit5'
  end
  object Edit6: TEdit
    Left = 152
    Top = 216
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'Edit6'
  end
  object EditN: TEdit
    Left = 120
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'EditN'
  end
  object Button1: TButton
    Left = 80
    Top = 248
    Width = 97
    Height = 33
    Caption = #1054#1050
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 200
    Top = 248
    Width = 97
    Height = 33
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 7
    OnClick = Button2Click
  end
  object Edit2: TDateTimePicker
    Left = 120
    Top = 72
    Width = 121
    Height = 21
    Date = 42358.000000000000000000
    Time = 42358.000000000000000000
    TabOrder = 8
  end
  object QueryIns: TQuery
    DatabaseName = 'NK'
    DataSource = Form2.DataSource1
    SQL.Strings = (
      'insert into k values (:n,:f,:r,:sp,:np,:p,:s)')
    Left = 256
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'n'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'f'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'r'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'np'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 's'
        ParamType = ptUnknown
      end>
  end
  object QueryUpd: TQuery
    DatabaseName = 'NK'
    DataSource = Form2.DataSource1
    SQL.Strings = (
      
        'update k set fio=:f,data_ro=:r,seriy_p=:sp,nomer_p=:np,propiska=' +
        ':p,sudimost=:s where id=:n')
    Left = 256
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'f'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'r'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'np'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 's'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'n'
        ParamType = ptUnknown
      end>
  end
end
