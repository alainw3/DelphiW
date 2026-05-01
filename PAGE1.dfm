object Form1: TForm1
  Left = 229
  Top = 183
  Width = 786
  Height = 757
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
    Left = 736
    Top = 320
    Width = 105
    Height = 105
    OnClick = Image1Click
    OnStartDrag = image1StartDrag
  end
  object Image2: TImage
    Left = 864
    Top = 256
    Width = 105
    Height = 105
    OnDragDrop = image2DragDrop
  end
  object Label1: TLabel
    Left = 24
    Top = 248
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label2: TLabel
    Left = 24
    Top = 280
    Width = 73
    Height = 13
    Caption = 'Company name'
  end
  object Label3: TLabel
    Left = 40
    Top = 328
    Width = 34
    Height = 13
    Caption = 'Region'
  end
  object Label4: TLabel
    Left = 24
    Top = 384
    Width = 51
    Height = 13
    Caption = 'Employees'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clFuchsia
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 864
    Top = 376
    Width = 137
    Height = 57
    Caption = 'Edit and Chart'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object Button1: TButton
    Left = 736
    Top = 256
    Width = 105
    Height = 41
    Caption = 'Map'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 56
    Width = 977
    Height = 137
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnKeyUp = DBGrid1KeyUp
  end
  object Edit1: TEdit
    Left = 64
    Top = 248
    Width = 49
    Height = 21
    TabOrder = 3
    Text = 'ID'
  end
  object Edit2: TEdit
    Left = 128
    Top = 280
    Width = 449
    Height = 21
    TabOrder = 4
    Text = 'Edit2'
  end
  object CheckBoxArz: TCheckBox
    Left = 16
    Top = 360
    Width = 97
    Height = 17
    Caption = 'ARZ'
    TabOrder = 5
  end
  object Button2: TButton
    Left = 472
    Top = 336
    Width = 105
    Height = 33
    Caption = 'Save'
    TabOrder = 6
    OnClick = Button2Click
  end
  object ComboBox1: TComboBox
    Left = 128
    Top = 320
    Width = 281
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 7
  end
  object DBGrid2: TDBGrid
    Left = 16
    Top = 408
    Width = 625
    Height = 177
    DataSource = DataSource2
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button3: TButton
    Left = 496
    Top = 606
    Width = 147
    Height = 25
    Caption = 'New employer'
    TabOrder = 9
    OnClick = Button3Click
  end
  object Edit3: TEdit
    Left = 104
    Top = 608
    Width = 121
    Height = 21
    TabOrder = 10
    Text = 'IDEmployer'
  end
  object Button4: TButton
    Left = 312
    Top = 608
    Width = 145
    Height = 25
    Caption = 'Delete Employer'
    TabOrder = 11
    OnClick = Button4Click
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
    Left = 8
    Top = 200
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 40
    Top = 200
  end
  object DataSource2: TDataSource
    DataSet = ADODataSet2
    Left = 648
    Top = 448
  end
  object ADODataSet2: TADODataSet
    Parameters = <>
    Left = 648
    Top = 408
  end
  object ADODataSet3: TADODataSet
    Parameters = <>
    Left = 656
    Top = 600
  end
end
