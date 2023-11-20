{3. Nacrtati algoritam i napisati program pomocu koga se	
iz intervala [n,m] odredjuje broj koji se na najvise nacina
moze predstaviti kao zbir kvadrata dva prirodna broja.}
program kolok3;
uses Crt;
type vector = array[1..10] of integer;   
var userInputN, userInputM, max:integer;

function isInArray(numToCheck:integer;arr:vector):Boolean;
var i:integer;
begin
    isInArray:=False;  
  for i in arr do
    if numToCheck = i then
      isInArray := True;
end;

function variationNum(numToCheck:integer):Integer;
var a, b, i:integer;
foundValues: vector;
begin
foundValues[1]:=0;
foundValues[2]:=0;
    variationNum:=0;
    a:=1;
    b:=1;
    i:=1;
    while a*a < numToCheck do
      begin
        while b*b < numToCheck do
        begin
             if ((a*a + b*b) = numToCheck) and ((isInArray(a,foundValues) = false) and (isInArray(b,foundValues) = false)) then
             begin
               variationNum := variationNum + 1;
               foundvalues[i] := a;
               foundValues[i+1] := b;
               i:=i+1;
               WriteLn(a, ' ', b, '  ', variationNum);
            end;
            b:=b+1;
        end;
        b:=1;
        a:=a+1;
      end;
      WriteLn('Broj kom za ',numToCheck,' je ',variationNum);    
delay(500);
end;

function maxVariationNumber(fromN, toM:integer):integer;
var i, maxVariations, tempVar: integer;
begin
    maxVariationNumber:=0;
    maxVariations:=0;
    i:=fromN;
    while i <= toM do
    begin
        tempVar := variationNum(i);
        if tempVar > maxVariations then
        begin
        maxVariations:=tempVar;
        maxVariationNumber := i; 
        end;
        i:=i+1;
    end;
end;

begin
    WriteLn('Unesite granice intervala n, m:');
    read(userInputN,userInputM);
    max := maxVariationNumber(userInputN,userInputM);
    WriteLn('Najveci broj varijacija ima broj: ',max);
end.