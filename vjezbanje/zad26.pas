program zad26;
var a,x,y:real;

procedure findShortestDistance(x,y,a:real);
begin
if(a > 0) then
begin
  if (x > a) then writeln('Rastojanje: ', sqrt((x-a)*(x-a)+y*y):0:3)
  else if(x<0) then writeln('Rastojanje: ', sqrt(x*x+y*y):0:3)
  else writeln('Rastojanje ', Abs(y):0:3);
  end
  else 
  begin
    if (x < a) then writeln('Rastojanje: ', sqrt((a-x)*(a-x)+y*y):0:3)
  else if(x>0) then writeln('Rastojanje: ', sqrt(x*x+y*y):0:3)
  else writeln('Rastojanje ', Abs(y):0:3);
  end;
end;

begin
  writeln('Unesite x,y,a:');
  readln(a,x,y);
  findShortestDistance(x,y,a);
end.