program Razgranati2;//Da li unijeti broj moze biti zbir god. trojica brace imaju isto god a sestra 3 god manje
var zbirGodina, godina1: integer;
begin
    WriteLn('Unesite zbir godina: ');
    ReadLn(zbirGodina);
    if (zbirGodina mod 4 - 3) = 0 then
    begin  
      WriteLn('Uneseni broj moze biti zbir njihovih godina');
      godina1 := (zbirGodina-3) div 3;
      WriteLn('Trojica brace imaju po: ',godina1,', a sestra:', godina1-3);
      end
    else
      WriteLn('Uneseni broj ne moze biti zbir njihovih godina');
end.