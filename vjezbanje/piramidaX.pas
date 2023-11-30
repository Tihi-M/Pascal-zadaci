program piramidaX;
var i,j,n:integer;

begin
    ReadLn(n);
    for i:=0 to n-1 do
      begin
        for j:=1 to n-i-1 do
        write(' ');
        for j:=1 to 2*i+1 do
          write('*');
        writeln();  
      end;
end.