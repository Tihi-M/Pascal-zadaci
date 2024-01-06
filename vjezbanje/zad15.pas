program zad15;
var n:integer;

function sumOfDivisors(num:integer):integer;
var i:integer;
begin
i:=1;
sumOfDivisors:=0;
while i <= (num div 2) do
begin
  if(num mod i = 0) then sumOfDivisors:=sumOfDivisors+i;
  i:=i+1;
  end;
end;

procedure isPerfect(numToCheck:integer);
begin
  if(numToCheck=sumOfDivisors(numToCheck))then writeln('Savrsen')
  else writeln('Nije savrsen');
end;

begin
writeln('Unesite broj');
readln(n);  
isPerfect(n);
end.