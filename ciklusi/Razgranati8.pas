program Razgranati8;// da li su dva broja istog znaka
var a, b: integer;
begin
    WriteLn('Unesite brojeve a, b: ');
    Read(a, b);
    if (a div abs(a) = -1)and(b div abs(b) = -1) then
      WriteLn('Brojevi su istog znaka (-)')
      else if (a div abs(a) = 1)and(b div abs(b) = 1) then
        WriteLn('Brojevi su istog znaka(+)')
        else 
        WriteLn('Brojevi su razlicitog znaka');
end.