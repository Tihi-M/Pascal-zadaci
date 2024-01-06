program zad13;
var n:integer;

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

procedure findFirstSimple(num:integer);
var i:integer;
begin
    for i:=1 to num do
      if (isSimple(i)) then writeln(i);
end;

begin
    writeln('Unesite granicu: ');
    readln(n);
    findFirstSimple(n);
end.