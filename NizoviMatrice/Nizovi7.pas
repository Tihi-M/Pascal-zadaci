program Nizovi7;

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

function oddSegments(var arr:array of integer;length:integer):integer;
var i,temp:integer;
begin
oddSegments:=0;
temp:=0;
  for i:=0 to length-1 do
    begin
      if(arr[i] mod 2 <> 0) then
      temp:=temp+1
      else temp:=0;
      if(oddSegments < temp) then
        oddSegments := temp;
    end;
end;

begin
    ReadLn(duzina);
    SetLength(niz,duzina);
    takeInput(niz,duzina);
    writeln(oddSegments(niz,duzina));
end.