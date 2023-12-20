program Nizovi15;

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

function aritmetickaSr(var arr:array of integer;length:integer):real;
var suma,i:integer;
begin
suma := 0;
  for i:=0 to length-1 do
    suma := suma+arr[i];
    aritmetickaSr:=suma/length;
    Writeln('Aritmeticka sredina: ',aritmetickaSr:0:2);
end;

function najbliziSredini(var arr:array of integer;length:integer):integer;
var i:integer;
razlika,arSr:real;
begin
najbliziSredini:=0;
arSr := aritmetickaSr(arr,length);
razlika:=30000;
  for i:=0 to length-1 do
    begin
      if(Abs(arSr-arr[i]) < razlika)then
        begin
          najbliziSredini:= arr[i];
          razlika := Abs(arr[i]-arSr);
        end;
    end;
end;

begin
    writeln('Duzina niza:');
    ReadLn(duzina);
    SetLength(niz,duzina);
    writeln('Elementi niza:');
    takeInput(niz,duzina);
    writeln(najbliziSredini(niz,duzina));
end.