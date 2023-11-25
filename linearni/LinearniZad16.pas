program LinearniZad16;
var zbirN, i, brojG :integer;
begin
  Write('Zbir stanja na semaforu: ');
  Read(zbirN);
  i:= 0;
  brojG:=0;
  while brojG <> zbirN do
    begin
      i:=i+1;
      brojG := brojG+i;
    end;
  WriteLn('Broj golova je: ', i);
end.