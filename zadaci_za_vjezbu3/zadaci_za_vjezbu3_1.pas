program zadaci_za_vjezbu3_1;//obim i povrsina kruga
var poluprecnik: integer;
obim, povrsina: Real;
begin
    WriteLn('Unesite poluprecnik: ');
    ReadLn(poluprecnik);
    obim := 2*poluprecnik*Pi;
    povrsina := poluprecnik*poluprecnik*Pi;
    WriteLn('Obim je: ', obim);
    WriteLn('Poluprecnik je: ', povrsina);
end.