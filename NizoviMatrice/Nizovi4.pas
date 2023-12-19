program Nizovi4;
var niz:array of integer;
duzina,a:integer;
procedure printArr(var arr:array of integer;length:integer);
var i:integer;
begin
  for i:=0 to length-1 do 
  write(arr[i],' ');
end;

function divisor1317(num:integer):boolean;
begin
divisor1317 := true;
  if(num mod 13 <> 0) and (num mod 17 <> 0) then divisor1317 := false; 
end;

procedure thrirteenSeventeen(var arr:array of integer;length,a:integer);
var i,j:integer;
begin
    j:=a;
  for i:= 0 to length-1 do
    begin
    while (divisor1317(j) = false) do
        j:=j+1;
    arr[i] := j;
    j:=j+1;
    end;
end;

begin
  readln(duzina);
  SetLength(niz,duzina);
  ReadLn(a);
  thrirteenSeventeen(niz,duzina,a);
  printArr(niz,duzina);
end.