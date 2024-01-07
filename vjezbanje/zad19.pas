program zad19;
var angle:integer;

procedure angleToHour(n:integer);
var h:integer;
m:real;
begin
  h:=angle div 30;
  m:=(angle mod 30) / 0.5;
  writeln(h,':',m:0:0);
end;

begin
writeln('Unesite ugao:');
readln(angle);
angleToHour(angle);
end.