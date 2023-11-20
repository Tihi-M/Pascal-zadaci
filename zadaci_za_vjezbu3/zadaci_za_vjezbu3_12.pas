program zadaci_za_vjezbu3_12;
var userInput:integer;

function factorial(num:Integer):integer;
var i: Integer;
begin
    i:=1;
    factorial := 1;
  while i <= num do
    begin
      factorial := factorial * i;
      i := i+1;
    end;
    Writeln('Faktorijel broja ', num, ' je ', factorial);
end;

begin
    WriteLn('Unesite broj n: ');
    Read(userInput);
    factorial(userInput);
end.