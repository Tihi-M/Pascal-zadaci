program zad14;
var a,b:integer;

function isSimple(numToCheck:integer):boolean;
var i:integer;
begin
i:=2;
  isSimple:=true;
  while(i<=numToCheck div 2) do
  begin
    if (numToCheck mod i = 0) then begin isSimple:=false; break; end;
    i:=i+1;
    end;
end;

procedure findSimpleNums(a,b:integer);
var i:integer;
begin
    for i:=a to b do
      if (isSimple(i)) then writeln(i);
end;

begin
writeln('Unesite granice: ');
readln(a,b);
findSimpleNums(a,b);  
end.