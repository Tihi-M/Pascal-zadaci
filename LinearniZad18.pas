program LinearniZad18;//Stampa sve domine za n, i zbir tackica;
var maksBrTackica, j, i, zbirTackica: integer;
begin
  Write('Unesite maks broj tackica: ');
  Read(maksBrTackica);
  j:=0;
  i:=0;
  zbirTackica:=0;
  while j<maksBrTackica do
  begin
    j:=j+1;
    i:=0;
    while i<=j do
        begin
        WriteLn('#######');
        WriteLn('#  ',i,'  #');
        WriteLn('#-----#');
        WriteLn('#  ',j,'  #');
        WriteLn('#######');
        WriteLN();
        zbirTackica :=zbirTackica + i+j;
        i:=i+1;
        end;
  end;
  WriteLn('Zbir tackica je: ', zbirTackica);
end.