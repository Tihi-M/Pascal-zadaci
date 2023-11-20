{1. Nacrtati algoritam i napisati program pomocu koga
se iz zadatog intervala odredjuje broj sa najvise prostih
djelioca. Ako ih ima vise, uzeti najmanji.}
program kolok1;
var userInputA, userInputB: integer;
minMax :integer;

function isPrime(numToCheck:integer):Boolean;
var i: integer;
begin
  i:=2;
  isPrime:=true;
  while i <= sqrt(numToCheck) do
  begin
    if (numToCheck mod i) = 0 then
    begin
    isPrime := False;
    end;
    i:=i+1;
  end;
end;

function numberOfPrimeDivisors(numToCheck:integer):integer;
var i: integer;
begin
  i:= 1;
  numberOfPrimeDivisors:=0;
  while i <= numToCheck do
    begin
      if (((numToCheck mod i) = 0) and (isPrime(i) = True)) then
        numberOfPrimeDivisors := numberOfPrimeDivisors+1;
      i:=i+1;
    end;
    WriteLn('Broj prostih djelilaca broja ', numToCheck ,':',numberOfPrimeDivisors);
end;

function smallestNumMaxDivisors(fromA, toB:Integer):integer;
var i, maxDivisors,tempNumOfDivisors: integer;
begin
  i:=fromA;
  smallestNumMaxDivisors:= 0;
  maxDivisors:= 0;
  while i <= toB do
    begin
      tempNumOfDivisors :=numberOfPrimeDivisors(i);
      if tempNumOfDivisors > maxDivisors then
      begin 
          maxDivisors := tempNumOfDivisors;
          smallestNumMaxDivisors:=i;
      end;
      i:= i+1;
  end;
end;

begin
    WriteLn('Unesite granice intervala: ');
    Read(userInputA,userInputB);
    minMax := smallestNumMaxDivisors(userInputA,userInputB);
    WriteLn('Najmanji broj sa najvise prostih djelilaca je: ', minMax);
end.
