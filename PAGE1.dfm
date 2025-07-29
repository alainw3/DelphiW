object Form1: TForm1
  Left = 91
  Top = 200
  Width = 1032
  Height = 736
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 680
    Top = 488
    Width = 105
    Height = 105
    OnClick = Image1Click
    OnStartDrag = image1StartDrag
  end
  object Image2: TImage
    Left = 808
    Top = 424
    Width = 105
    Height = 105
    OnDragDrop = image2DragDrop
  end
  object BitBtn1: TBitBtn
    Left = 40
    Top = 416
    Width = 177
    Height = 57
    Caption = 'Edit and Chart'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object Button1: TButton
    Left = 680
    Top = 424
    Width = 105
    Height = 41
    Caption = 'Map'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 56
    Width = 913
    Height = 329
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object MainMenu1: TMainMenu
    Top = 16
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Password="";Persist Security Info=True;Data S' +
      'ource=dbtest;Initial Catalog=D:\_WORKBASE\_LEARNING\Delphi\DB\db' +
      'demos'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 56
    Top = 16
  end
  object ADOCommand1: TADOCommand
    Connection = ADOConnection1
    Parameters = <>
    Left = 104
    Top = 16
  end
  object ADODataSet1: TADODataSet
    Connection = ADOConnection1
    Parameters = <>
    Left = 152
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 224
    Top = 16
  end
end
