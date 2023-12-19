program Nizovi2;
var niz:array of integer;
duzina,a:integer;
procedure printArr(var arr:array of integer;length:integer);
var i:integer;
begin
  for i:=0 to length-1 do 
  write(arr[i],' ');
end;
procedure takeInput(var arr:array of integer;length:integer);
var i:integer;
begin
  for i:=0 to length-1 do
    begin
    readln(arr[i]);
    end;
    
end;

function minBiggerA(var arr:array of integer;length,a:integer):integer;
var i:integer;
begin
    minBiggerA:=32767;
  for i:= 0 to length-1 do
    begin
      if arr[i] > a then
        if arr[i]<minBiggerA then
          minBiggerA:=arr[i];
    end;
end;

begin
  readln(duzina);
  SetLength(niz,duzina);
  takeInput(niz,duzina);
  readln(a);
  writeln(minBiggerA(niz,duzina,a));
end.