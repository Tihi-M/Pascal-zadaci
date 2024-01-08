program zad29;
var n:integer;

procedure daLiJeHemingov(n:integer);
begin
  while(n mod 2 = 0) do
    n:=n div 2;
    while (n mod 3 = 0) do
      n:=n div 3;
      while(n mod 5 = 0) do 
      n:=n div 5;
    
    if(n=1) then writeln('Jeste hemingov')
    else writeln('Nije hemingov');
    end;

begin
  writeln('Unesite broj n');
  readln(n);
  daLiJeHemingov(n);
end.