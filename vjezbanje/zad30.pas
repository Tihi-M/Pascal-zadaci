program zad30;
var len:integer;

procedure printPyramid(len:integer);
var i,j:integer;
begin
  for i:=1 to len do
    begin
      for j:=1 to i do
        write(j,' ');
    writeln();
    end;

   for i:=1 to len-1 do
     begin
       for j:=1 to len-i do
         write(j,' ');
         writeln();
     end;   
end;

begin
readln(len);
printPyramid(len);  
end.