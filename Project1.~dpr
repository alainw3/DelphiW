program Project1;

uses
  Forms,
  Messages,
  TEST in 'TEST.pas' {Form1},
  TEST2 in 'TEST2.pas' {Form2},
  TEST3 in 'TEST3.pas',
  TEST4 in 'TEST4.pas';
var
  MySupport : string;
{$R *.res}

begin
  TEST3.PrintMessage('Bonjour');
  TEST4.TMaClasse.GetInfo('Salut');
  MySupport := TEST4.TMaClasse.Supports('MySup');

  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
