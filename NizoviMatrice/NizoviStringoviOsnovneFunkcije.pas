program NizoviStringoviOsnovneFunkcije;
var str1,str2: array[0..50] of char;


function strLength(str:array of char):integer;
begin
strLength:=0;
  while(ord(str[strLength])<>0) do
    strLength:=strLength+1;
end;

function areEqual(str1,str2:array of char):boolean;
var i,length1,length2:integer;
begin
length1:=strLength(str1);
length2:=strLength(str2);
areEqual:=true;
if(length1 = length2) then
begin
  for i:=0 to length1-1 do
    if (str1[i] <> str2[i]) then
      areEqual:=false;
      end
else
    areEqual:=false;
end;

procedure uppercase(var str:array of char);
var i:integer;
begin
i:=0;
  while(ord(str[i]) <> 0) do
  begin
    if('a'<= str[i]) and (str[i]<='z') then
        str[i] := chr(ord(str[i])-ord('a')+ord('A'));
        i:=i+1;
        end;
end;
function palindrom(str:array of char):boolean;
var i,length:integer;
begin
length := strLength(str);
palindrom:=true;
  for i:=0 to length div 2 do
    if (str[i] <> str[length-i-1])then
    palindrom:=false;
end;

function areEqual2(str1,str2:array of char; length,ind:integer):boolean;
var i,j:integer;
begin
j:=0;
areEqual2:=true;
  for i:= ind to ind + length-1 do
    begin
    if (str1[j] <> str2[i]) then
      areEqual2:=false;
    j:=j+1;
    end;
end;

function isSubString(str1,str2:array of char):Boolean;
var i,lng1,lng2:integer;
begin
isSubString:=true;
lng1:=strLength(str1);
lng2:=strLength(str2);
if(lng1>lng2)then
  isSubString:=false
  else
  begin
    for i:=0 to lng2-lng1+i do
        begin
        if(areEqual2(str1,str2,lng1,i))then
          break;
  end;
end;
end;
function countSubstring(str1,str2:array of char):integer;
var i:integer;
begin
countSubstring:=0;
  if(isSubString(str1,str2))then
    if(strLength(str1) = strLength(str2))then
      countSubstring:=1
    else
    begin
      for i:=0 to strLength(str2)-strLength(str1) do
        if(areEqual2(str1,str2,strLength(str1),i))then
          countSubstring:=countSubstring+1;
    end;
end;
begin
  ReadLn(str1);
  ReadLn(str2);
  //writeln(areEqual(str1,str2));
  //uppercase(str1);
  //writeln(str1);
  //writeln(palindrom(str2));
writeln(isSubString(str1,str2));
writeln(countSubstring(str1,str2));
end.