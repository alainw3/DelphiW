object Form1: TForm1
  Left = 183
  Top = 158
  Width = 1032
  Height = 726
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
  object Label1: TLabel
    Left = 24
    Top = 408
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label2: TLabel
    Left = 24
    Top = 440
    Width = 73
    Height = 13
    Caption = 'Company name'
  end
  object BitBtn1: TBitBtn
    Left = 800
    Top = 56
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
    Left = 8
    Top = 56
    Width = 737
    Height = 329
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit1: TEdit
    Left = 64
    Top = 408
    Width = 49
    Height = 21
    TabOrder = 3
    Text = 'ID'
  end
  object Edit2: TEdit
    Left = 128
    Top = 440
    Width = 449
    Height = 21
    TabOrder = 4
    Text = 'Edit2'
  end
  object CheckBoxArz: TCheckBox
    Left = 24
    Top = 472
    Width = 97
    Height = 17
    Caption = 'ARZ'
    TabOrder = 5
  end
  object Button2: TButton
    Left = 472
    Top = 496
    Width = 105
    Height = 33
    Caption = 'Save'
    TabOrder = 6
    OnClick = Button2Click
  end
  object MainMenu1: TMainMenu
    Top = 16
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Password="";Persist Security Info=True;Data S' +
      'ource=dbtest;Initial Catalog=D:\_LEARNING\Delphi\DB\dbdemos'
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
