program Nizovi5;

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

function zeroElem(var arr:array of integer;length:integer):integer;
var i:integer;
begin
zeroElem:=0;
  for i:=0 to length-2 do
    begin
      if(arr[i] mod 10 = 0) and (arr[i+1] mod 10 = 0) then
      zeroElem := zeroElem+1;
    end;
end;

begin
    ReadLn(duzina);
    SetLength(niz,duzina);
    takeInput(niz,duzina);
    writeln(zeroElem(niz,duzina));
end.