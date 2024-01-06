program zad12;
var n:integer;

function findSumOfDivisors(num:integer):integer;
var i:integer;
begin
findSumOfDivisors:=0;
  for i:=1 to num div 2 do
    if(num mod i = 0) then findSumOfDivisors:=findSumOfDivisors+i;
end;

function isFriendly(numToCheck:integer):boolean;
var tempFriend,secondSum:integer;
begin
isFriendly:=false;
  tempFriend := findSumOfDivisors(numToCheck);
  secondSum:=findSumOfDivisors(tempFriend);
  if(tempFriend <> numToCheck) then
    if(secondSum = numToCheck) then isFriendly:=true;
end;

procedure findFirstN(num:integer);
var i:integer;
begin
    for i:= 1 to num do
    if (isFriendly(i)) then (writeln('Prijateljski broj: ', i));
end;


begin
  writeln('Unesite granicu');
  readln(n);
  findFirstN(n);
end.