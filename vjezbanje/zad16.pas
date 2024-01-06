program zad16;
var k:integer;

function canBeTokenNum(num:integer):boolean;
var i:integer;
begin
canBeTokenNum:=false;
  if(num = 1)then 
    canBeTokenNum:=true
  else 
  if (num = 4) then canBeTokenNum:=true
  else
  begin 
  for i:=3 to num div 2 do
    begin
        if (2*i + 2*(i-2) = num) then 
        begin
        canBeTokenNum:=true;
        break;
        end;
    end;
end;
end;

begin
  writeln('Unesite broj zetona');
  readln(k);
  if(canBeTokenNum(k)) then writeln('Da') else writeln('Ne');
end.