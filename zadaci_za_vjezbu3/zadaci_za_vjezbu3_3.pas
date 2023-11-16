program zadaci_za_vjezbu3_3;
var userInput, wholePart,decimalPart: Real;
begin
    WriteLn('Unesite realan broj: ');
    ReadLn(userInput);
    decimalPart := userInput - Round(userInput);
    wholePart := userInput - decimalPart;
    Writeln('Cijeli dio broja: ', wholePart:0:0);
    WriteLn('Decimalni dio broja: ', decimalPart);
end.