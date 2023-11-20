program kolok5;
var userInputN, userinputM:integer;

function isPrime(numToCheck:integer):Boolean;
var i:Integer;
begin
    i:= 2;
    isPrime:=True;
    while i <= sqrt(numToCheck) do
      begin
        if(numToCheck mod i ) = 0 then
          isPrime:=false;
        i:=i+1;
      end;
end;

function sumOfDigits(num:integer):integer;
begin
  sumOfDigits := 0;
    while num > 0 do
    begin
      sumOfDigits := sumOfDigits + (num mod 10);
      num := num div 10;
    end;
end;

function maxNum(fromN,toM:integer):integer;
var i:integer;
begin
  i:=fromN;
  maxNum:=0;
  while i<toM do
    begin
      if (isPrime(i)) and (isPrime(sumOfDigits(i))) and (i>maxNum) then
      maxNum := i;
      i:=i+1;
    end;
end;

begin
  WriteLn('Unesite granice intervala: ');
  Read(userInputN,userinputM);
  writeln('Najveci broj za koji vazi svojstvo je :' ,maxNum(userInputN,userInputM));
end.