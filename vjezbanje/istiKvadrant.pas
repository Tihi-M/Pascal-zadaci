program istiKvadrant;
var x1,y1,x2,y2:integer;

function uIstomKvadrantu(x1,y1,x2,y2:integer):Boolean;
begin
    uIstomKvadrantu:=false;
    if (x1 > 0) and (x2 > 0) and (y1 > 0) and (y2 > 0) then
        uIstomKvadrantu:=true;
    if (x1 > 0) and (x2 > 0) and (y1 < 0) and (y2 < 0) then
        uIstomKvadrantu:=true;
    if (x1 < 0) and (x2 < 0) and (y1 > 0) and (y2 > 0) then
        uIstomKvadrantu:=true;
    if (x1 < 0) and (x2 < 0) and (y1 < 0) and (y2 < 0) then
        uIstomKvadrantu:=true;
end;


begin
  ReadLn(x1,y1);
  ReadLn(x2,y2);
  if uIstomKvadrantu(x1,y1,x2,y2) then
    writeln('Da')
    else WriteLn('Ne');
end.