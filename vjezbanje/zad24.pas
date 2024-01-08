program zad24;
var n:integer;

function haveNoDivisors(n1,n2:integer):boolean;
var i:integer;
begin
haveNoDivisors:=true;
  for i:=2 to n2 do
    if (n2 mod i = 0) and (n1 mod i = 0) then haveNoDivisors:=false;
end;

procedure findSubNums(n:integer);
var numCount,i:integer;
begin
  numCount:=0;
    for i:=1 to n-1 do
    begin
      if(haveNoDivisors(n,i)) then 
      begin
      writeln(i);
      numCount:=numCount+1;
      end;
    end;
    writeln('Broj medjusobno prostih: ',numCount);
end;

begin
  writeln('Unesite broj');
  readln(n);
  findSubNums(n);
end.