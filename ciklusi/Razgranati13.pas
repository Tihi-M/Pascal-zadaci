program Razgranati13;// Stampa broj dana u mjesecu
var unesenaGod, uneseniMjesec: integer;
jestePrestupna: Boolean;

begin
    WriteLn('Unesite zeljenu godinu: ');
    Read(unesenaGod);
    WriteLn('Unesite zeljeni mjesec');
    read(uneseniMjesec);
    while(uneseniMjesec<1)or(uneseniMjesec>12) do
        begin
        WriteLn('Pogresan unos. Unesite mjesec ponovo 1-12');
        read(uneseniMjesec);
        end;
    jestePrestupna :=False;
    if (unesenaGod mod 4 = 0) and (unesenaGod mod 100 <> 0) then
      jestePrestupna :=True
    else if unesenaGod mod 400 = 0 then
        jestePrestupna := True;
    
    case (uneseniMjesec)of
        1: WriteLn('Broj dana u ', uneseniMjesec,'. je: ', '31');
        2: if jestePrestupna then
            WriteLn('Broj dana u ', uneseniMjesec,'. je: ', '29')
            else                
                Writeln('Broj dana u ', uneseniMjesec,'. je: ', '28');
        3: WriteLn('Broj dana u ', uneseniMjesec,'. je: ', '31');
        4: WriteLn('Broj dana u ', uneseniMjesec,'. je: ', '30');
        5: WriteLn('Broj dana u ', uneseniMjesec,'. je: ', '31');
        6: WriteLn('Broj dana u ', uneseniMjesec,'. je: ', '30');
        7: WriteLn('Broj dana u ', uneseniMjesec,'. je: ', '31');
        8: WriteLn('Broj dana u ', uneseniMjesec,'. je: ', '31');
        9: WriteLn('Broj dana u ', uneseniMjesec,'. je: ', '30');
        10: WriteLn('Broj dana u ', uneseniMjesec,'. je: ', '31');
        11: WriteLn('Broj dana u ', uneseniMjesec,'. je: ', '30');
        12: WriteLn('Broj dana u ', uneseniMjesec,'. je: ', '31');
        else
            WriteLn('Ovo se nikad ne stampa:D');
        end;
end.