program zad6;
var num:integer;
function isSum(arr:array of integer;ind:integer):boolean;
begin
isSum:=false;
  if(arr[ind] = arr[ind+1]+arr[ind-1]) then isSum:=true;
end;

function numLength(n:integer):integer;
begin
numLength:=0;
  while(n>0) do
    begin
      numLength:=numLength+1;
      n:=n div 10;
    end;
end;

procedure convertNumToArr(var arr:array of integer;length,num:integer);
var i:integer;
begin
  for i:=0 to length-1 do
  begin
  arr[i]:=num mod 10;
  num:=num div 10;
  end; 
end;

procedure updateArr(var arr:array of integer;var len:integer;ind:integer);
var i:integer;
begin
  for i:=0 to len-1 do
      if(i <> ind) then arr[i] := arr[i]
      else arr[i] := -1;
end;

procedure printArr(arr:array of integer;len:integer);
var i:integer;
begin
writeln();
    for i:= len-1 downto 0 do 
     if (arr[i] <>-1) then write(arr[i]);
end;

procedure findNewNum(n:integer);
var numArr:array of integer;
len,i:integer;
begin
len:=numLength(n);
SetLength(numArr,len);
convertNumToArr(numArr,len,n);
for i:=1 to len-2 do 
begin
  if isSum(numArr,i) then
    updateArr(numArr,len,i);
end;
printArr(numArr,len);
end;

begin
  writeln('Unesite broj');
  readln(num);
  findNewNum(num);
end.