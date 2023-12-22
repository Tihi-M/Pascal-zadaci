program zadatak4;
var n:integer;
niz:array of integer;

procedure takeInput(var arr:array of integer;length:integer);
var i:integer;
begin
    for i:=0 to length-1 do
      readln(arr[i]);
end;

function findMax(var arr:array of integer;length:integer):integer;
var i,tempMax:integer;
begin
    tempMax:=-1;
    for i:=0 to length-1 do
        begin
        if tempMax<arr[i] then
        begin
          tempMax:=arr[i];
          findMax:=i;
          end;
        end;
end;

function isAscending(ind,maxI:integer;arr:array of integer):Boolean;
var i:integer;
begin
isAscending:=true;
  for i:=ind to maxI-1 do
    if arr[i] > arr[i+1] then
    isAscending:=false;
end;

function isDescending(maxI,lastIndex:integer;arr:array of integer):Boolean;
var i:integer;
begin
  isDescending:=true;
  for i:=lastIndex downto maxI+2 do
  begin
    if arr[i] > arr[i-1] then
      isDescending:=false;
      end;
end;

procedure printResults(var arr:array of integer;length:integer);
var i:Integer;
begin
for i:=0 to length do
  begin
    write(arr[i],' ');
  end;
end;

procedure createArray(var arr:array of integer;start,ending:integer);
var i,length :integer;
zicArr:array of integer;
begin
length:=ending-start+1;
SetLength(zicArr,length);
for i:=0 to length-1 do
    zicArr[i]:=arr[i+start];

printResults(zicArr,length-1);
end;

procedure zicara(var arr:array of integer;length:integer);
var i,maxI,startingIndex,endingIndex:integer;
begin
  startingIndex:=0;
  endingIndex:=0;
  maxI:=findMax(arr,length);
    for i:=0 to maxI do
      begin
        if isAscending(i,maxI,arr) then
        begin
            startingIndex:=i;
            break;
        end;          
      end;
    for i:=maxI to length-1 do
      begin
        if isDescending(i,length-1,arr) then
          begin
          endingIndex:=i;
          break;
          end;
      end;
    createArray(arr,startingIndex,endingIndex);
end;

begin
    writeln('Broj vrhova:');
    ReadLn(n);
    SetLength(niz,n);
    takeInput(niz,n);
    zicara(niz,n);
end.