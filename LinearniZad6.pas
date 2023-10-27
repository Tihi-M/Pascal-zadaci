program LinearniZad6;//Stampa broj metara za unesenih x cm
var rastojanjeCm, rastojanjeM:integer;

begin
    WriteLn('Unesite broj cm: ');
    ReadLn(rastojanjeCm);
    rastojanjeM:=rastojanjeCm div 100;
    WriteLn('Broj metara je: ', rastojanjeM);
end.