program zad17;
var x,y,r,p:integer;

procedure daLiPripada(x,y,r,p:integer);
begin
  if((x*x + y*y - r*r < 0) and (y*y - 2*p*x<0)) then writeln('Pripada')
  else writeln('Ne pripada');
end;

begin
  writeln('Unesite koordinate tacke');
  readln(x,y);
  writeln('Unesite r i p');
  readln(r,p);
  daLiPripada(x,y,r,p);
end.