program cas2;
var i,k,min,max,ocjena:integer;
begin
  readln(k);
min := 25;
max := -1;
for i:=1 to k do
  begin
    ReadLn(ocjena);
    if ocjena < min then
    begin
      min := ocjena;
    end;
    if ocjena > max then
      begin
        max := ocjena;
      end;
    
  end;
end.
