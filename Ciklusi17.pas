Program Ciklusi17;// stampa da li je broj hemingov
var uneseniBroj: integer;
checker: Boolean;

begin
    WriteLn('Unesite broj za provjeru: ');
    checker := true;
    Read(uneseniBroj);
    while (uneseniBroj <> 1) and (checker) do
        begin
          if uneseniBroj mod 2 = 0 then
            uneseniBroj := uneseniBroj div 2
            else if uneseniBroj mod 3 = 0 then
              uneseniBroj := uneseniBroj div 3
              else if uneseniBroj mod 5 = 0 then
                uneseniBroj:= uneseniBroj div 5
                else 
                checker := false;
        end;
    if (checker) and (uneseniBroj = 1) then
      WriteLn('Jeste Hemingov')
      else
      WriteLn('Nije Hemingov');
end.