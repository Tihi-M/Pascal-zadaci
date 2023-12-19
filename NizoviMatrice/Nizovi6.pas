program Nizovi6;

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

function changeSign(var arr:array of integer;length:integer):integer;
var i:integer;
begin
changeSign:=0;
  for i:=0 to length-2 do
    begin
      if(arr[i]*arr[i+1] < 0) then
      changeSign:= changeSign+1;
    end;
end;

begin
    ReadLn(duzina);
    SetLength(niz,duzina);
    takeInput(niz,duzina);
    writeln(changeSign(niz,duzina));
end.