program pravougaonikZvezdica;
uses Crt;
var sirina,duzina:integer;

procedure printRectangle(a,b:integer);
var i,j:integer;

begin
  for i:=1 to a do
    begin
      for j:=1 to b do
        begin
        write('# ');
        delay(10);
        end;
        WriteLn();
    end;
end;



begin
  readln(sirina,duzina);
  printRectangle(sirina,duzina);
end.