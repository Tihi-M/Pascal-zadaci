program Nizovi8;

var niz:array of integer;
duzina:integer;
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

procedure shiftLeft(var arr:array of integer;length:integer);
var i,firstEl:integer;
begin
firstEl := arr[0];
    for i:=0 to length-2 do
      arr[i] := arr[i+1];
      arr[length-1] := firstEl;
end;

begin
    ReadLn(duzina);
    SetLength(niz,duzina);
    takeInput(niz,duzina);
    shiftLeft(niz,duzina);
    printArr(niz,duzina);
end.