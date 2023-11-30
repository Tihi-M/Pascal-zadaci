program jambKockice;
var i,j,k,trazeniZbir:integer;
begin
  ReadLn(trazeniZbir);
  for i:=1 to 6 do
  begin
    for j:=1 to 6 do
    begin
      for k:=1 to 6 do
      begin
        if((i+k+j) = trazeniZbir) then
          writeln(i,' ',j,' ',k);
      end;
    end;
  end;
end.