program piramidaAliSaFor;
var i, j, n:integer;
begin
    ReadLn(n);
    i:=0;
    j:=1;
    for i:=0 to n do 
    begin
      for j:=1 to i do
          write(j);
        writeln();
    end;

    for i:=n-1 downto 0 do
      begin
        for j:=1 to i do
          write(j);
        writeln();
      end;
end.