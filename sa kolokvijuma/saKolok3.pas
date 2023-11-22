{
    cjelobrojni trougao - duzine str cijeli brojevi
    6  - 2 2 2
    10 - 2 4 4
    11 - 3 4 5
}
program saKolok3;
var userInput:integer;
type matrix = array[1..100,1..3] of integer;

//provjerava da li duzine stranice mogu biti stranice trougla
function sidesAreValid(sideA,sideB,sideC:Integer):Boolean;
begin
  sidesAreValid := false;
  if (sideA < sideB+sideC) and (sideB < sideA+sideC) and (sideC < sideA + sideB) then
    sidesAreValid := true;
end;

//provjerava da li su date stranice vec pronadjene
function notFoundCombination(sideA,sideB,sideC:integer;combs:matrix;matrixLength:integer):Boolean;
var i:integer;
begin
notFoundCombination:=true;
  for i:=1 to matrixLength do
      if(combs[i,1] = sideA) or (combs[i,1] = sideB) or (combs[i,1]=sideC) then 
      begin
        if(combs[i,2] = sideA) or (combs[i,2] = sideB) or (combs[i,2]=sideC) then
        begin
            if(combs[i,3] = sideA) or (combs[i,3] = sideB) or (combs[i,3]=sideC) then
              notFoundCombination :=False;
        end;
    end;
end;

//trazi kombinacije stranica
procedure findCombinations(numToCheck:integer);
var i,j,k,sidesSum,combsNum:integer;
foundCombinations: matrix;
begin
   // foundCombinations[1,1]:=0; 
  i:=1;
  j:=1;
  k:=1;
  combsNum:=1;
  while i<= (numToCheck div 2) do
    begin
      while j <= (numToCheck div 2) do
        begin
          while k <= (numToCheck div 2) do
          begin
            sidesSum := k+j+i;
            if (sidesSum = userInput) and sidesAreValid(i,j,k) and 
                notFoundCombination(i,j,k,foundCombinations,combsNum) then
                begin
                
                foundCombinations[combsNum, 1] := i;
                foundCombinations[combsNum, 2] := j;
                foundCombinations[combsNum, 3] := k;
                writeln(i,' ',j, ' ',k);
                combsNum := combsNum+1;
              end;
            k:=k+1;
          end;
            k:=1;
            j:=j+1;
        end;
        j:=1;
        i:=i+1;
    end;
end;

begin
    WriteLn('Unesite broj m: ');
    Read(userInput);
    findCombinations(userInput)
end.