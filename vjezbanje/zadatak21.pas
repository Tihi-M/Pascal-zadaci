program zadatak21;
var n:integer;

function countDigits(n:integer):integer;
begin
countDigits:=0;
  while(n>0) do
    begin
      countDigits:=countDigits+1;
      n:=n div 10;
    end;
end;

function binn(exp:integer):integer;
var stepenDesetke:integer;
begin
  binn:=1;
  stepenDesetke:=1;
  while(exp>1) do
    begin
      binn:=binn+stepenDesetke*10;
      stepenDesetke:=stepenDesetke*10;
      exp:=exp-1;
    end;
end;

function biggestBin(n:integer):integer;
var digitNum:integer;
begin
  biggestBin:=0;
  digitNum:= countDigits(n);
  biggestBin:=binn(digitNum);
  if biggestBin>n then
    biggestBin:=biggestBin-binn(digitNum-1);
end;

procedure findBinary(n:integer);
var binCount,currBin:integer;
begin
writeln();
binCount:=0;
currBin:=biggestBin(n);
    while(n>0) do
      begin
      if n>=currBin then
      begin
      write(currBin);
        binCount:=binCount+1;
        n:= n - currBin;
        currBin:=biggestBin(n);
        end;
      end;
      writeln();
      writeln(binCount);
end;

begin
  writeln('Unesite broj:');
  readln(n);
  findBinary(n);
end.