program zad7;
var n:integer;

procedure sumOfCubes(n:integer);
var i,suma:integer;
begin
suma:=0;
  for i:= 1 to n do
  begin
    suma:=suma + i*i*i;
    writeln('i = ',i,' s = ',suma);
  end;
end;

begin
  writeln('Unesi n: ');
  readln(n);
    sumOfCubes(n);

end.