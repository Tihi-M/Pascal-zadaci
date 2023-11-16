program zadaci_za_vjezbu3_4;
var x1, x2, y1, y2, n, k: real;// y = kx + n
begin
    WriteLn('Unesite koordinate prve tacke: ');
    ReadLn(x1, y1);
    WriteLn('Unesite koordinate druge tacke: ');
    ReadLn(x2, y2);
    k := (y2 - y1)/(x2 - x1);
    n := y1 - k*x1;
    WriteLn('Jednacina prave je ', 'y = ',k:0:1,'*x + ',n:0:1);
end.