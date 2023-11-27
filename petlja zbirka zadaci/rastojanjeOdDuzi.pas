program rastojanjeOdDuzi;
var xA1,xA0, xTacke,yTacke:integer;

function  pozicijaTacke(x,xA0,xA1:integer):integer;
begin
    if (x < xA0) then
    pozicijaTacke:=1
    else if((x > xA0) and (x< xA1)) then
    pozicijaTacke:=2
    else 
    pozicijaTacke:=3;
end;

function duzinaDuzi(x,y,x0,x1:integer):real;
var pozicija:integer;
begin
    pozicija := pozicijaTacke(x,x0,x1); 
    case (pozicija) of
        1: duzinaDuzi := sqrt((x-x0)*(x-x0)+y*y);
        2: duzinaDuzi := Abs(y);
        3: duzinaDuzi := sqrt((x1-x)*(x1-x)+y*y);
    end;
end;

begin
  ReadLn(xTacke,yTacke);
  ReadLn(xA0,xA1);
  WriteLn('Rastojanje tacke od duzi: ',duzinaDuzi(xTacke,yTacke,xA0,xA1):0:2);
end.