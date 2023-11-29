program triTackePravougaonika;
var x1,y1,x2,y2,x3,y3,x,y:Integer;
{
function koeficijentPravca(x1,y1,x2,y2:integer):real;
begin
  koeficijentPravca:=(y2 - y1)/(x2 - x1);
end;
}
{
function jestePravougaonik(x1,y1,x2,y2,x3,y3,x4,y4:integer):Boolean;
var k1,k2,k3,k4:real;
begin
  k1 := koeficijentPravca(x1,y1,x2,y2);
  k2 := koeficijentPravca(x3,y3,x4,y4);
  k3 := koeficijentPravca(x1,y1,x4,y4);
  k4 := koeficijentPravca(x2,y2,x3,y3);
  WriteLn(k1:0:2,' ',k2:0:2,' ',k3:0:2,' ',k4:0:2);
  jestePravougaonik:=false;
    if ((k1 = k2) and  (k3 = k4)) then
      jestePravougaonik:=true;
end;
}
function xKoordinata(x1,x2,x3:integer):integer;
begin
    if (x1 = x2) then
      xKoordinata := x3;
    if (x2 = x3) then
    xKoordinata:=x1;
    if (x3 = x1) then
      xKoordinata := x2;
      end;

function yKoordinata(y1,y2,y3:integer):integer;
begin
  if(y1=y2)then
    yKoordinata :=y3;
    if (y2 = y3) then
      yKoordinata := y1;
      if(y3 = y1) then
        yKoordinata := y2;
end;

begin
  ReadLn(x1,y1);
  readln(x2,y2);
  readln(x3,y3);
    x:=xKoordinata(x1,x2,x3);
    y:=yKoordinata(y1,y2,y3); 
writeln('x: ',x ,' y: ',y);
end.