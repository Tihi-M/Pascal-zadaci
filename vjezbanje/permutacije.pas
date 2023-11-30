program permutacije;
var i,j,k,n:integer;

begin
  ReadLn(n);
  for i:=1 to n do
    begin
    for j:=i to n do
        Write(j,' ');
    for j:=1 to i-1 do
      write(j,' ');
    WriteLn();
    end;
end.