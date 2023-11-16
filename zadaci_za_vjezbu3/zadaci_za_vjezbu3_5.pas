program  zadaci_za_vjezbu3_5;
var userInput:integer;

function jesteParan(num: integer): Boolean; 
begin
  if (num mod 2) = 0 then
    jesteParan := true
    else
    jesteParan := false;
end;

begin
    WriteLn('Unesite broj n: ');
    ReadLn(userInput);
    if jesteParan(userInput) then
      WriteLn('Reciprocna vrijednost sljedbenika: ', 1/(userInput+1):0:1)
      else
      WriteLn('Reciprocna vrijednost: ', 1/userInput:0:1);
end.