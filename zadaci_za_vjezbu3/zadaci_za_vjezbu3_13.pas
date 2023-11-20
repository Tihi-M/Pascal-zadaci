program zadaci_za_vjezbu3_13;
var userInputA, userInputB: integer;

function isPrime(numToCheck: Integer):Boolean;
var i:integer;
begin
  i := 2;  
  isPrime :=True;
    while i <= sqrt(numToCheck) do
      begin
        if (numToCheck mod i) = 0 then
          isPrime := False;
        i := i+1; 
      end;
end;

procedure printPrimeNums(fromA, toB: integer);
var i:integer;
begin
  i := fromA; 
  WriteLn('Prosti brojevi izmedju ',fromA,' i ', toB ,' su: ');
  while i <= toB do
  begin
    if isPrime(i) then
    begin
        WriteLn(i, ',');      
    end;
    i := i+1;
  end;
end;
begin
    WriteLn('Unesite granice intervala: ');
    ReadLn(userInputA,userInputB);
    printPrimeNums(userInputA,userInputB);
end.