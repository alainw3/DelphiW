program Home;

uses
  Forms,
  Messages,
  PAGE1 in 'PAGE1.pas' {Form1},
  PAGE2 in 'PAGE2.pas' {Form2},
  PAGE3 in 'PAGE3.pas',
  PAGE4 in 'PAGE4.pas';



var
  MySupport : string;
{$R *.res}

begin
  PAGE3.PrintMessage('Bonjour');
  PAGE4.TMaClasse.GetInfo('Welcome to Country database');
  MySupport := PAGE4.TMaClasse.Supports('MySup');

  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
