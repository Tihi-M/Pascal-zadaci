program zadatak2;
type niz = array of integer;
var n,k:integer;
niz1:niz;

procedure takeInput(var arr:niz;length:integer);
var i:integer;
begin
WriteLn('Unesite clanove niza');
  for i:=0 to length-1 do
    Readln(arr[i]);
end;

procedure checkInput(var l,r:integer);
begin
  while(l>r)do
  begin
    WriteLn('L i R: ');
    ReadLn(l,r);
  end;
end;

function copyArr(var arr:array of integer;length:integer):niz;
var i:integer;
begin
SetLength(copyArr,length);
  for i:=0 to length-1 do
    copyArr[i] := arr[i];
end;
 
procedure printArr(var arr:array of integer;length:integer);
var i:integer;
begin
  for i:=0 to length-1 do
    write(arr[i],' ');
    WriteLn();
end;

procedure invertArr(var arr:array of integer;l,r:integer);
var temp:integer;
begin
    while(l<r) do
      begin
        temp:=arr[l];
        arr[l]:=arr[r];
        arr[r]:=temp;
        l:=l+1;
        r:=r-1;
      end;
end;

procedure startGame(var arr:array of integer;length,k:integer);
var i, l, r:integer;
temp:niz;
begin
  for i:=1 to k do
  begin
    WriteLn('L i R: ');
    ReadLn(l,r);
    checkInput(l,r);
    temp:=copyArr(arr,length);
    invertArr(temp,l,r);
    printArr(arr,length);
    printArr(temp,length);
  end;
end;

begin
  writeln('Duzina niza:');
  readln(n);
  SetLength(niz1,n);
  takeInput(niz1,n);
  writeln('Broj upita:');
  readln(k);
  startGame(niz1,n,k);
end.