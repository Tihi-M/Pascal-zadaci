program Nizovi14;

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

function jeProst(num:integer):boolean;
var i:integer;
begin
jeProst:=true;
    for i := 2 to num div 2 do
      if num mod i = 0 then
      jeProst:=false;
end;
function imaProstuCifru(num:integer):boolean;
begin
imaProstuCifru:=false;
  while num > 0 do
    begin
      if jeProst(num mod 10) then
        imaProstuCifru := true;
    num:=num div 10;
    end;
end;
procedure prostiBrojevi(var arr:array of integer;length:integer);
var i:integer;
begin
  for i:=0 to length-1 do
    begin
      if(imaProstuCifru(arr[i]))then
        WriteLn(arr[i],' ');
    end;
end;

begin
    writeln('Duzina niza:');
    ReadLn(duzina);
    SetLength(niz,duzina);
    writeln('Elementi niza:');
    takeInput(niz,duzina);
    prostiBrojevi(niz,duzina);
end.