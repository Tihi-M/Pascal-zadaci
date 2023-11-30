program trougaoPostoji;
var a1,a2,b1,b2,c1,c2:integer;

function postojiTrougao(x1,y1,x2,y2,x3,y3:integer):boolean;
begin
    postojiTrougao:=true;
    if ((x1 = x2) and (x2 = x3)) or ((y1 = y2) and (y2 = y3)) then
      postojiTrougao:= false; 
end;

begin
    readln(a1,a2);
    ReadLn(b1,b2);
    readln(c1,c2);
    if postojiTrougao(a1,a2,b1,b2,c1,c2) then
      writeln('Postoji')
      else
      writeln('Ne postoji');
end.