program zad9;
var pocetak, kraj:integer;

function isLeapYear(god:integer):boolean;
begin
isLeapYear:=false;
  if ((god mod 4 = 0) and (god mod 100 <> 0)) or (god mod 400 = 0) then
    isLeapYear:=true;
end;
    
procedure printAllLeapYears(p,k:integer);
var i:integer;
begin
writeln();
for i:=p to k do
  if(isLeapYear(i)) then write(i,' ');
end;

begin
writeln('Unesite pocetnu i krajnju godinu: ');
readln(pocetak,kraj);
printAllLeapYears(pocetak,kraj);  
end.