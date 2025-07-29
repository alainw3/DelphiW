unit PAGE2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ComCtrls, Mask, ADODB, Grids, DBGrids, ExtCtrls,
  TeeProcs, TeEngine, Chart, DbChart, Series;



type
  TForm2 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    MonthCalendar1: TMonthCalendar;
    Edit1: TEdit;
    ADOConnection1: TADOConnection;
    ADOCommand1: TADOCommand;
    ADODataSet1: TADODataSet;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;

    DBChart1: TDBChart;
    Button2: TButton;
    Series1: TBarSeries;
    DataSource2: TDataSource;
    ADOCommand2: TADOCommand;
    ADODataSet2: TADODataSet;
    Button3: TButton;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label2: TLabel;
    Edit2: TEdit;

    procedure Button1Click(Sender: TObject);
    procedure MonthCalendar1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1EditButtonClick(Sender: TObject);

  private
    procedure RefreshDBGrid1()  ;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  Form1: TForm;
  Date1:TDate;
  I:Integer;


implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
   Form1.Show;
end;

procedure TForm2.MonthCalendar1Click(Sender: TObject);
begin
         Date1:=MonthCalendar1.Date;

         Edit1.Text:=DateToStr(Date1);
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
         //Form1.Hide ;
         RefreshDBGrid1();

end;

procedure TForm2.Button2Click(Sender: TObject);
begin
         with ADOCommand2 do begin

          CommandText := 'SELECT  continent, count(*) ' +   'FROM country GROUP BY  continent' ;


          ADODataSet2.Recordset := Execute;
          DataSource2 :=    ADODataSet2.DataSource;


          Series1.XLabelsSource:='Continent';

         DBChart1.RefreshData();

         end;



end;

procedure TForm2.Button3Click(Sender: TObject);
begin

         with ADOCommand1 do begin

          CommandText := 'UPDATE country set ' +
                          ' name        =:newCountryName, ' +
                          ' capital     =:newCountryCapital, ' +
                          ' continent   =:newCountryContinent '+
                         '  where name  =:idValue  ' ;

          CommandType := cmdText;

          Parameters.ParamByName('idValue').Value  := Edit2.Text;
          Parameters.ParamByName('NewCountryName').Value  := Edit3.Text;
          Parameters.ParamByName('newCountryCapital').Value   := Edit4.Text;
          Parameters.ParamByName('newCountryContinent').Value  := Edit5.Text;

          Execute;

         end;

         with ADOCommand1 do begin

          CommandText := 'SELECT name, capital, continent ' +   'FROM country ' ;

          //+   'WHERE State = :StateParam';
          //CommandType := cmdText;
          //Parameters.ParamByName('StateParam').Value := 'HI';

          ADODataSet1.Recordset := Execute;
          DataSource1 :=    ADODataSet1.DataSource;
          //DBGrid1.Refresh();

         end;
         RefreshDBGrid1();
end;


procedure TForm2.RefreshDBGrid1();
begin

         with ADOCommand1 do begin

          CommandText := 'SELECT name, capital, continent ' +   'FROM country ' ;

          //+   'WHERE State = :StateParam';
          //CommandType := cmdText;
          //Parameters.ParamByName('StateParam').Value := 'HI';

          ADODataSet1.Recordset := Execute;
          DataSource1 :=    ADODataSet1.DataSource;
          //DBGrid1.Refresh();

         end;
end;


procedure TForm2.DBGrid1CellClick(Column: TColumn);
begin
      I :=    DBGrid1.SelectedIndex ;


      //if DBGrid1.SelectedRows.Count>0 then
      //  Application.MessageBox('hekko','Hello',0);


      DBGrid1.SelectedIndex :=0 ;
      with DBGrid1.SelectedField do
        Edit3.Text :=Text;
        
      Edit2.Text :=Edit3.Text;


      DBGrid1.SelectedIndex :=1;
      with DBGrid1.SelectedField do
        Edit4.Text :=Text;

      DBGrid1.SelectedIndex :=2;
      with DBGrid1.SelectedField do
        Edit5.Text :=Text;

     DBGrid1.SelectedIndex :=I ;

end;

procedure TForm2.DBGrid1EditButtonClick(Sender: TObject);
begin
         Application.MessageBox('hekko','Hello',0);
end;

end.

