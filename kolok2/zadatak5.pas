program zadatak5;
var niz:array of integer;
n:integer;

procedure takeInput(var arr:array of integer;length:integer);
var i:integer;
begin
  for i:=0 to length-1 do
    readln(arr[i]);
end;

procedure printArr(var arr:array of integer;length:integer);
var i:integer;
begin
for i:=0 to length-1 do
  write(arr[i],' ');
  writeln();
end;

procedure invertArr(var arr:array of integer; length:integer);
var l,r,temp:integer;
begin
l:=0;
r:=length-1;
while(l<r)do
  begin
    temp:= arr[l];
    arr[l] := arr[r];
    arr[r]:=temp;
    l:=l+1;
    r:=r-1;
  end;

end;
begin
  readln(n);
  SetLength(niz,n);
  takeInput(niz,n);
  printArr(niz,n);
  invertArr(niz,n);
  printArr(niz,n);
end.