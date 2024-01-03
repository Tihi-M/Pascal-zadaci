program zad2;
var num,length:integer;
numToArr:array of integer;

procedure printArr(var arr:array of integer;length:integer);
var i:integer;
begin
  for i:=0 to length-1 do 
  write(arr[i]);
end;

procedure invertNum(var arr:array of integer; length:integer);
var temp,i:integer;
begin
    for i:=0 to length-1 do
      begin
        temp:=arr[i];
        arr[i]:= arr[length-i-1];
        arr[length-i-1]:=temp;
      end;
end;

procedure convertNum(num:integer;var arr:array of integer;length:integer);
var i:integer;
begin
  for i:=0 to length-1 do
  begin
    arr[i] := num mod 10;
    num:= num div 10;
    end;
end;

function numLength(num:integer):integer;
begin
numLength:=0;
  while(num > 0) do
  begin
    numLength:=numLength+1;
    num:= num div 10;
    end;
end;

begin
writeln('Unesite broj: ');
ReadLn(num);
  length:=numLength(num);
  SetLength(numToArr,length);
  convertNum(num,numToArr,length);
  invertNum(numToArr,length);
  printArr(numToArr,length);
end.