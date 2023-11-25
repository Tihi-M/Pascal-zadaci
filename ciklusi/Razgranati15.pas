program Razgranati15;//odredjivanje pobjednika na osnovu broja poena
var matm1, matm2, code1, code2: integer;
begin
    WriteLn('Unesite poene oba takmicara iz matematike: ');
    Read(matm1, matm2);
    WriteLn('Unesite poene oba takmicara iz programiranja: ');
    Read(code1, code2);
    if matm1 + code1 = matm2 + code2 then
      if code1 >= code2 then
        WriteLn('Pobjednik je takmicar broj 1')
        else
        WriteLn('Pobjednik je takmicar broj 2')
    else if matm1 + code1 > matm2 + code2 then
      WriteLn('Pobjednik je takmicar broj 1')
      else
      WriteLn('Pobjednik je takmicar broj 2');
end.