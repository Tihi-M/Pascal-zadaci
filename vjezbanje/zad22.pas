program zad22;
var hh,mm,ss:integer;

function validHour(h,m,s:integer):boolean;
begin
validHour:=true;
  if(s >59) or (s<0) or (m>59) or (m<0) or (h<0) or (h>23) then
    validHour:=false; 
end;

procedure tillMidnight(h,m,s:integer);
var hx,mx,sx:integer;
begin
  sx:=60-s;
  mx:=59-m;
  hx:=23-h;
  writeln(hx,':',mx,':',sx);
end;

begin
    writeln('Unesite vrijeme');
    readln(hh,mm,ss);
    if validHour(hh,mm,ss) then
    tillMidnight(hh,mm,ss)
    else writeln('Pogresan Unos');
end.