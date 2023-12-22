program zadatak1;
var str1,str2:array[0..50] of char;

function strLength(var str:array of char):integer;
begin
  strLength:=0;
  while(ord(str[strLength])<>0) do
    strLength:=strLength+1;
end;
function areEqual(var str1,str2:array of char;length:integer):boolean;
var i:integer;
begin
areEqual:=true;
  for i:=0 to Length do
    begin
      if(str1[i] <> str2[i]) then
        areEqual:=false;
    end;
end;

function areEqual2(var str1, str2:array of char;length1, ind:integer):boolean;
var i,j:integer;
begin
  areEqual2:= true;
  j:=0;
  for i:=ind to ind+length1-1 do
    begin
    if(str1[j] <> str2[i]) then
      areEqual2:=false;
      j:=j+1;
      end;
end;

function repsNum(var str1,str2:array of char):integer;
var i,lengthS1,lengthS2:integer;
begin
repsNum:=0;
lengthS1:=strLength(str1);
lengthS2:=strLength(str2);
  if(lengthS1=lengthS2)then
    begin
      if(areEqual(str1,str2,lengthS1)) then
        repsNum:=1;
    end
    else if(lengthS1<lengthS2)then
      begin
        for i:=0 to lengthS2-lengths1 do
          if(areEqual2(str1,str2,lengthS1,i))then
            repsNum:=repsNum+1;
      end;
end;

begin
  WriteLn('String1:');
  ReadLn(str1);
  WriteLn('String2:');
  ReadLn(str2);
    WriteLn(repsNum(str1,str2));
end.