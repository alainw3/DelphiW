object Form2: TForm2
  Left = 209
  Top = 148
  Width = 1036
  Height = 588
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 35
    Height = 13
    Caption = 'HELLO'
  end
  object Button1: TButton
    Left = 16
    Top = 40
    Width = 209
    Height = 73
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object MonthCalendar1: TMonthCalendar
    Left = 792
    Top = 32
    Width = 209
    Height = 153
    Date = 45583.287954074080000000
    TabOrder = 1
    OnClick = MonthCalendar1Click
  end
  object Edit1: TEdit
    Left = 320
    Top = 264
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit1h'
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 136
    Width = 569
    Height = 97
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBChart1: TDBChart
    Left = 32
    Top = 336
    Width = 945
    Height = 185
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'TDBChart')
    TabOrder = 4
    object Series1: TBarSeries
      Marks.ArrowLength = 20
      Marks.Visible = True
      DataSource = ADODataSet2
      SeriesColor = clRed
      XLabelsSource = 'Expr1001'
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = 'Expr1001'
    end
  end
  object Button2: TButton
    Left = 704
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Chart'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 472
    Top = 248
    Width = 105
    Height = 41
    Caption = 'Save'
    TabOrder = 6
    OnClick = Button3Click
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Password="";Persist Security Info=True;Data S' +
      'ource=dbtest;Initial Catalog=D:\_WORKBASE\_LEARNING\Delphi\DB\db' +
      'demos'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 108
  end
  object ADOCommand1: TADOCommand
    Connection = ADOConnection1
    Parameters = <>
    Left = 148
  end
  object ADODataSet1: TADODataSet
    Connection = ADOConnection1
    Parameters = <>
    Left = 196
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 244
  end
  object DataSource2: TDataSource
    DataSet = ADODataSet2
    Left = 472
  end
  object ADOCommand2: TADOCommand
    Connection = ADOConnection1
    Parameters = <>
    Left = 392
  end
  object ADODataSet2: TADODataSet
    Connection = ADOConnection1
    CommandText = 'select  Continent, count(*) from country GROUP BY Continent'
    Parameters = <>
    Left = 432
  end
end
