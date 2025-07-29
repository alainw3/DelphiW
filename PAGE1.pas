unit PAGE1;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask,

  PAGE2, Menus, ExtCtrls, DB, ADODB, Grids, DBGrids ;
type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    MainMenu1: TMainMenu;
    Button1: TButton;
    Image1: TImage;
    Image2: TImage;
    ADOConnection1: TADOConnection;
    ADOCommand1: TADOCommand;
    DBGrid1: TDBGrid;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;

    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure image2DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure image1StartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
     aPicture : TPicture;
     procedure RefreshDBGrid1()  ;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
    MessageBox(Handle,'This page enables to update the database','Page 2',MB_OK);


    Application.CreateForm(TForm2, Form2);
    Form2.Show;
    //Form1.Close;


end;

procedure TForm1.Button1Click(Sender: TObject);
var
      aRect : TRect;


begin
          aRect.Left := 10;
          aRect.Top := 50;
          aRect.Right :=100;
          aRect.Bottom := 200 ;




          Canvas.Pen.Color := clBlue;
          Canvas.MoveTo(10,100);
          //Canvas.Rectangle(50,20,100,200);
          Canvas.Brush.Color := clRed;
          Canvas.Rectangle(aRect);


          aPicture := TPicture.Create();
          aPicture.LoadFromFile('D:\_WORKBASE\_LEARNING\Delphi\ti_keyboard_map.bmp');
          Image1.Picture :=  aPicture;


end;

procedure TForm1.Image1Click(Sender: TObject);
begin
          Image2.Picture :=aPicture;
end;

procedure TForm1.image2DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
           //Image2.Picture :=aPicture;
           //BeginDrag(True);
           if (source       is TImage ) and (sender is TImage) then
           begin
               (sender as TImage).Picture := (sender as TImage).Picture;
               BeginDrag(False);
               //EndDrag();
           end;
end;

procedure TForm1.image1StartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
           if (sender is TImage) then
           begin
            BeginDrag(True);
           end;
end;

procedure TForm1.RefreshDBGrid1();
begin
         ADOCommand1.CommandText:= 'SELECT CustNo,	Company	,Addr1,	Addr2,	City,	State	,Zip  '
                                   + ' FROM customer ' ;
         ADODataSet1.Recordset := ADOCommand1.Execute;
         DataSource1 :=    ADODataSet1.DataSource;
end;
procedure TForm1.FormActivate(Sender: TObject);
begin
          RefreshDBGrid1();
end;

end.
