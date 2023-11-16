program zadaci_za_vjezbu3_8;
{Na¢i sve parove prijateljskih brojeva manjih od 5000. 
Za dva prirodna broja kaºemo da su prijateljski ako 
je jedan broj jednak sumi djelitelja drugog broja. Npr.
}
function findSum(num :integer):integer;
var i,sumOfDivisors: integer;
begin
    sumOfDivisors:=1;
    i:=2;
    while i<=(num div 2) do
      begin
        if (num mod i) = 0 then
        begin
          sumOfDivisors:=sumOfDivisors+i;
          end;
        i:=i+1;  
      end;
    findSum := sumOfDivisors; 
end;

function isFriendly(numToCheck:Integer):Boolean;
var firstSum, secondSum:integer;
begin
    firstSum := findSum(numToCheck);
    secondSum := findSum(firstSum);
    isFriendly := false;  
    if (numToCheck = secondSum) and (firstSum <> numToCheck) then
      isFriendly := True;
end;

procedure checkFirstN(upperLimit:Integer);
var i:integer;
begin
    i:=1;
    while i < upperLimit do
    begin
      if isFriendly(i) then
      begin
        WriteLn('Brojevi: ',i,' i ', findSum(i),' su prijateljski.');
      end;
      i:=i+1;
    end;
end;

begin
    checkFirstN(10000);
end.