program zadaci_za_vjezbu3_2;
var i,brojCifara,srednjaCifra:Integer;
userInput, tempInput: LongInt;
begin
    WriteLn('Unesite neki prirodan broj: ');
    ReadLn(userInput);
    tempInput := userInput;
    brojCifara:=0;
    i:=0;
    while tempInput > 0 do
        begin
          brojcifara:=brojcifara+1;
          tempInput := tempInput div 10;
        end;  

    if (brojcifara mod 2) = 0 then
        WriteLn('Broj nema srednju cifru')
        else
        begin
          while i < (brojCifara div 2)do
            begin
              userInput := userInput div 10;
              i := i+1;
            end;
            srednjaCifra := userInput mod 10;
            WriteLn('Srednja cifra je: ', srednjaCifra);
        end;
end.