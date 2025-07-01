unit TEST2;

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

    procedure Button1Click(Sender: TObject);
    procedure MonthCalendar1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  Form1: TForm;
  Date1:TDate;


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

          CommandText := 'UPDATE country set capital=:NewValueParam2 where name=:NewValueParam  ' ;

          CommandType := cmdText;

          Parameters.ParamByName('NewValueParam').Value   := 'Brazil';
          Parameters.ParamByName('NewValueParam2').Value  := 'Brazil11';

          Execute;
          DBGrid1.UpdateAction();

         end;
end;

end.

