program obrnutaPiramida;
var i,j,n:integer;

begin
ReadLn(n);
  for i:=1 to n do
    begin
      for j:=i to n do
      write(j,' ');
      WriteLn();
    end; 
end.