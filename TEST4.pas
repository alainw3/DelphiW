unit TEST4;

interface
uses

  Windows, Messages, Forms;
type
  TMaClasse = class  public
    class function Supports(Operation: string): string; virtual;
    class procedure GetInfo(Operation: string); virtual;
    //...
  end;
  implementation
  class function TMaClasse.Supports( Operation:string):string ;
  begin
         Supports:=Operation;
  end;
  class procedure TMaClasse.GetInfo(Operation:string) ;
  begin
                 Application.MessageBox(PChar(Operation),'HELLO',0);
  end;


end.
