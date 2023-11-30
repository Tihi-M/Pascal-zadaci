program brojeviUOsnovi;
var i,j,k,osnova:integer;

begin
  ReadLn(osnova);
  for i:=0 to osnova-1 do
    begin
      for j:=0 to osnova-1 do
        begin
          for k:=0 to osnova-1 do
            writeln(i,j,k);
        end;
    end;
end.