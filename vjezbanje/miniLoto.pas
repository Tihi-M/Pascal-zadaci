program miniLoto;
var i,j,k,max:integer;
begin
ReadLn(max);
  for i:=1 to max do
    begin
      for j:=i+1 to max do
        begin
        for k:=j+1 to max do
          writeln(i,' ',j,' ',k);
        
        end;
    end; 
end.