program zadaci_za_vjezbu3_17;
var userInput: integer;

function sumOfDivisors(numToCheck:integer):integer;
var i:integer;
begin
  i:=1;
  sumOfDivisors := 0;
  while i <= (numToCheck/2) do 
  begin
    if (numToCheck mod i) = 0 then
      sumOfDivisors := sumOfDivisors + i;  
    i := i+1;
  end;
end;

procedure isPerfect(numToCheck: integer);
begin
  if (sumOfDivisors(numToCheck)) = numToCheck then
  WriteLn('Uneseni broj je savrsen')
  else
  WriteLn('Uneseni broj nije savrsen');
end;

begin
  WriteLn('Unesite neki broj: ');
  read(userInput);
  isPerfect(userInput);
end.