program poeniKosarka;
var i,j,k,brojPoena:integer;
begin
  readln(brojPoena);
  for i:=0 to (brojPoena div 3) do
    begin
      for j:=0 to (brojPoena div 2) do
        begin
          for k:=0 to brojPoena do
            if (i*3+j*2+k = brojPoena) then
              writeln(i ,' ', j, ' ',k);
        end;
    end;
end.