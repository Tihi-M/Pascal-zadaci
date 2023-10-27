program Razgranati3;
var xA, yA, xB, yB, xC, yC, xD, yD: integer;
begin
    WriteLn('Unesite koordinate tacke A: ');
    ReadLn(xA, yA);
    WriteLn('Unesite koordinate tacke B: ');
    ReadLn(xB, yB);
    WriteLn('Unesite koordinate tacke C: ');
    ReadLn(xC, yC);
    xD:= (xA + xC) - xB;
    yD:= (yA + yC) - yB;
    WriteLn('Koordinate tacke D su: ', xD, ' ',yD);
end.