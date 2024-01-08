program zad27;
var obim:integer;

procedure sviCjelobrojni(n:integer);
var i,j:integer;
begin
for i:=1 to n div 2 do
begin
  for j:=1 to n div 2 do
  begin
    if (i>=j) and (j>=n-i-j) and (i>=n-i-j) and (obim > i+j) then
      if(i+j>obim-i-j) and (obim-i> i) and (obim - j > j) then writeln(i,' ',j,' ',obim-i-j);
  end;
end;

end;

begin
writeln('Obim:');
readln(obim);
sviCjelobrojni(obim); 
end.