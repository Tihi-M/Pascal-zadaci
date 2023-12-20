program Nizovi16;

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

function najCifra(num:integer):integer;
begin
    najCifra := -10;
    num:=Abs(num);
    while num > 0 do
      begin
        if(num mod 10 > najCifra) then
        najCifra := num mod 10;
        num := num div 10;  
        end;
end;

procedure updateArray(var arr:array of integer;length:integer);
var i:integer;
begin
  for i:=0 to length-1 do
    arr[i] := najCifra(arr[i]);
end;

begin
    writeln('Duzina niza:');
    ReadLn(duzina);
    SetLength(niz,duzina);
    writeln('Elementi niza:');
    takeInput(niz,duzina);
    updateArray(niz,duzina);
    printArr(niz,duzina);
end.