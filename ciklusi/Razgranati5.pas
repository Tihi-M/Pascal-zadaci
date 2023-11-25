program Razgranati5;//if vjezba, mogu li se izvrsiti radovi u odredjeno vrijeme
var uneseniSat: integer;

begin
    WriteLn('Unesite vrijeme radova: ');
    ReadLn(uneseniSat);
    if (uneseniSat < 6) then
        WriteLn('Radovi se ne mogu izvrsavati u to vrijeme')
    else if ((uneseniSat>=13) and (uneseniSat<=17)) then
        WriteLn('Radovi se ne mogu izvrsavati u to vrijeme') 
    else if (uneseniSat > 22) then
        WriteLn('Radovi se ne mogu izvrsavati u ovo vrijeme')
    else 
        WriteLn('Radovi se mogu izvrsavati u ovo vrijeme');
end.