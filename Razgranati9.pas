program Razgranati9;{
    Krug i pravougaonik imaju isti centar.
    Da li tacka x,y pripada krugu i pravougaoniku.
 }
var kordX, kordY, kordX0, kordY0: integer;
poluprecnik, duzina, sirina: integer;
dijagonala:Real;

begin 
    WriteLn('Unesite koordinate tacke:');
    Read(kordX, kordY);
    WriteLn('Unesite koordinate centra:');
    Read(kordX0,kordY0);
    WriteLn('Unesite poluprecnik, duzinu i sirinu:');
    read(poluprecnik,duzina,sirina);
    if Sqrt(Sqr(kordX0 - kordX)+sqr(kordY0-kordY))<= poluprecnik then
        WriteLn('Tacka pripada krugu')
        else
        WriteLn('Tacka ne pripada krugu');
    
    dijagonala:=Sqrt(Sqr(duzina)+Sqr(sirina)); 
    if Sqrt(Sqr(kordX0 - kordX)+sqr(kordY0-kordY))<= dijagonala/2 then
        WriteLn('Tacka pripada pravouganiku')
        else
        WriteLn('Tacka ne pripada pravouganiku');
end.