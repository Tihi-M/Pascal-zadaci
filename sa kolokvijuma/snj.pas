program snj;
var n,i,k:integer;
begin
  ReadLn(k);
  n:= 9;
  for i:=1 to k do
  begin
        if i mod 2 = 0 then
          n:=n
          else
          n:=n+1;    
  end;
  WriteLn(n);
end.