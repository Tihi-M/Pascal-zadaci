program istiKvadrant;
var x1,y1,x2,y2:integer;

function isSameQuadrant(x1,y1,x2,y2:integer):boolean;
begin
    isSameQuadrant:=false;
  if ((x1 >= 0) and (x2>=0)) and ((y1>=0) and (y2>=0)) then
    isSameQuadrant := true
   else if ((x1 >= 0) and (x2>=0)) and ((y2<=0) and (y2<=0)) then
    isSameQuadrant := true
  else  if ((x1 <= 0) and (x2<=0)) and ((y1>=0) and (y2>=0)) then
    isSameQuadrant := true
   else if ((x1 <= 0) and (x2<=0)) and ((y1<=0) and (y2<=0)) then
    isSameQuadrant := true;
end;

begin
    readln(x1,y1,x2,y2);
    if isSameQuadrant(x1,y1,x2,y2) then
      WriteLn('Jesu')
      else
      WriteLn('Nisu');
end.