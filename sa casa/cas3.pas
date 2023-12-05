program cas3;
var m,suma,stepen,n, fakt:Real;
begin
  ReadLn(m);
  fakt:=1;
  n:=0;
  stepen:=1;
  suma:=0;
  while true do
    begin
    stepen:=stepen*3;
    fakt := fakt*(2*n-1)*(2*n);
    if ((n+1)*stepen)/fakt< m then
      Break;
    suma:=suma+((n+1)*stepen)/fakt;
    
    end;
end.