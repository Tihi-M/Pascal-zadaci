program Nizovi12;

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

function brJed(num:integer):integer;
begin
  brJed:=0;
  while num > 0 do
  begin
    if(num mod 10 = 1) then
      brJed:=brJed+1;
    num := num div 10;
  end;
end;

procedure jedinice(var arr:array of integer;length,n:integer);
var i:integer;
begin
  for i:=0 to length-1 do
    begin
      if(brJed(arr[i]) >= n)then
        WriteLn(arr[i],' ');
    end;
end;

begin
    writeln('Duzina niza:');
    ReadLn(duzina);
    SetLength(niz,duzina);
    writeln('Elementi niza:');
    takeInput(niz,duzina);
    writeln('Min jedinica:');
    ReadLn(a);
    jedinice(niz,duzina,a);
end.