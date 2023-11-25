program Razgranati7;// provjerava je li god prestupna
var unesenaGod: integer;

begin
    WriteLn('Unesite zeljenu godinu: ');
    Read(unesenaGod);
    if (unesenaGod mod 4 = 0) and (unesenaGod mod 100 <> 0) then
      WriteLn('Unesena godina je prestupna')
    else if unesenaGod mod 400 = 0 then
        WriteLn('Unesena godina je prestupna')
    else
        WriteLn('Unesena godina nije prestupna');
end.