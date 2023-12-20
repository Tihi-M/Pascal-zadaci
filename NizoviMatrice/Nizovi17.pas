program Nizovi17;

var niz:array of real;
duzina:integer;

procedure printArr(var arr:array of real;length:integer);
var i:integer;
begin
  for i:=0 to length-1 do 
  write(arr[i],' ');
end;

procedure takeInput(var arr:array of real;length:integer);
var i:integer;
begin
  for i:=0 to length-1 do
    begin
    readln(arr[i]);
    end;
end;

function aritmetickaSr(var arr:array of real;length:integer):real;
var i:integer;
suma:real;
begin
suma := 0;
  for i:=0 to length-1 do
    suma := suma+arr[i];
    aritmetickaSr:=suma/length;
    Writeln('Aritmeticka sredina: ',aritmetickaSr:0:2);
end;

procedure updateArray(var arr:array of Real;length:integer);
var i:integer;
arSr:real;
begin
arSr := aritmetickaSr(arr,length);
  for i:=0 to length-1 do
      arr[i]:=Abs(arr[i]-arSr);
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