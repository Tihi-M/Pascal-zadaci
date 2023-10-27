program LinearniZad7;//za realni br r se stampa O i P kruga
var poluprecnik,obim,povrsina:real;

begin
    Write('Unesite poluprecnik: ');
    Read(poluprecnik);
    obim := 2*poluprecnik*Pi;
    povrsina := poluprecnik*poluprecnik*Pi;
    WriteLn('Obim je: ',obim:0:2);
    WriteLn('Povrsina je: ',povrsina:0:2);
end.