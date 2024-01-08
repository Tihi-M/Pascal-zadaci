program zad23;
var x1,y1,x2,y2:real;

procedure povrsinaPresjeka(x1,y1,x2,y2:real);
var a,b:real;
begin
a:=0;
b:=0;
if(x1<0) and (y1<0) and (x2>0) and (y2>0) then
  begin
    a:=x2;
    b:=y2;
  end
  else if (x1<0) and (y1>0) and (x2>0) and (y2>0) then
    begin
      a:=x2;
      b:=y2-y1;
    end
    else if (x1>0) and (y1<0) and (x2>0) and (y2>0) then
    begin
      a:=x2-x1;
      b:=y2;
    end;
    writeln('Povrsina: ',a*b:0:1);
end;

begin
 writeln('Unesite koordinate: ');
 readln(x1,y1,x2,y2);
 povrsinaPresjeka(x1,y1,x2,y2);
end.