program varijacijeJabuka;
var i,j,k,max:integer;
begin
  readln(max);
  for i:=0 to max do
    begin
      for j:=0 to max do
      begin
        if (i<>j)then
          begin
            for k:=0 to max do 
            begin
              if((k<>j)and(k<>i)) then
                writeln(i,', ',j,', ',k);
            end;
          end;
      end;
    end;
end.