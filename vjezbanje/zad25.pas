program zad25;
var d,n:integer;

procedure sirinaLinije(d,n:integer);
begin
  writeln((d mod 2)*100 div (n-1));
end;

begin
  writeln('Unesite d i n: ');
  readln(d,n);
  sirinaLinije(d,n);
end.