program zad18;
var k:integer;

procedure deleteMax(var arr:array of integer;len:integer);
var max,i,ind:integer;
begin
  max:=-1;
  for i:=0 to len-1 do
  begin
    if(arr[i]>max) and (arr[i] <> -1) then
    begin
      max:=arr[i];
      ind:=i;
    end;
  end;
  arr[ind]:=-1;
end;

procedure deleteMin(var arr:array of integer;len:integer);
var min,i,ind:integer;
begin
  min:=21;
  for i:=0 to len-1 do
  begin
    if(arr[i]<min) and (arr[i] <> -1) then
    begin
      min:=arr[i];
      ind:=i;
    end;
  end;
  arr[ind]:=-1;
end;

function arraySum(arr:array of integer;len:integer):integer;
var i:integer;
begin
arraySum:=0;
for i:= 0 to len-1 do
   if (arr[i] <> -1 ) then arraySum:=arraySum+ arr[i];
end;

procedure printArr(arr:array of integer;len:integer);
var i:integer;
begin
writeln();
  for i:=0 to len-1 do
  write(arr[i],' ');
end;

procedure takeScores(k:integer);
var sum,i:integer;
scoresList:array of integer;
begin
SetLength(scoresList,k);
    for i:=0 to k-1 do
    readln(scoresList[i]);
    deleteMin(scoresList,k);
    deleteMin(scoresList,k);
    deleteMax(scoresList,k);
    sum:=arraySum(scoresList,k);
    writeln('Ocjena: ',sum / (k-3):0:2);
    printArr(scoresList,k);
    end;

begin
  writeln('Broj sudija');
  readln(k);
  takeScores(k);
end.