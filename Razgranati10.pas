program Razgranati10;//stampa agregatno stanje
var unesenaTemp: integer;
begin
    Write('Unesite temperaturu: ');
    Read(unesenaTemp);
    if unesenaTemp <= 0 then
      WriteLn('Agregatno stanje: Cvrsto')
      else if (unesenaTemp > 0) and (unesenaTemp<100) then
        WriteLn('Agregatno stanje: Tecno')
        else
        WriteLn('Agregatno stanje: Gasovito');
end.