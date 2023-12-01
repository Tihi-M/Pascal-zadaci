program pripadajuIstojPravi;
var a1,a2,b1,b2,c1,c2:integer;
function naIstojPravoj(x1,y1,x2,y2,x3,y3:integer):Boolean;
begin
naIstojPravoj := false;
  if ((y1-y2)/(x1-x2)) = ((y1-y3)/(x1-x3)) then
    naIstojPravoj := true;
end;

begin
  ReadLn(a1,a2);
  ReadLn(b1,b2);
  ReadLn(c1,c2);
  if naIstojPravoj(a1,a2,b1,b2,c1,c2) then
    WriteLn('Jesu')
    else WriteLn('Nisu');
end.