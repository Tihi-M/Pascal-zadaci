program NizoviCiklus;
type sstring = array of char;
var str:array[0..50] of char;

function strLength(str:array of char):integer;
begin
strLength:=0;
  while(ord(str[strLength]) <> 0) do
    strLength:=strLength+1;
end;

function copyOff(str:array of char;ind:integer):sstring;
var i:integer;
begin
SetLength(copyOff,ind+1);
  for i:=0 to ind do
    copyOff[i] := str[i];
end;

procedure findCycle(str:array of char);
var i,j,reps,length:integer;
subString :array of char;
begin
length:= strLength(str);
for i:= length div 2 downto 1 do
begin
  if(length mod i = 0) then
    begin
        reps:= length div i;
        SetLength(subString,i);
        subString:= copyOff(str,i);
        for j:=0 to reps-1 do

end;

begin
ReadLn(str);
findCycle(str);  
end.