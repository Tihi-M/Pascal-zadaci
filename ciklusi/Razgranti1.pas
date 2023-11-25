program Razgranti1;//if naredba primjer
var brJ1, brJ2: integer;
begin
  WriteLn('Broj crvenih jabuka : ');
  ReadLn(brJ1);
  WriteLn('Broj zelenih jabuka : ');
  ReadLn(brJ2);
  if brJ1>brJ2 then
      WriteLn('Vise je crvenih.')
    else
      WriteLn('Vise je zelenih');
end.