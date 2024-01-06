program zad10;
var n:LongInt;

function numLength(num:LongInt):LongInt;
begin
numLength:=0;
  while(num > 0)do
  begin
    numLength:=numLength+1;
    num:= num div 10;
  end;
end;

function stepenDesetke(exp:LongInt):LongInt;
begin
stepenDesetke:=1;
exp := exp div 2;
  while(exp>0 ) do
    begin
      stepenDesetke:=stepenDesetke*10;
      exp:=exp-1;
    end;
end;

procedure findMid(num:LongInt);
var srednja,len:integer;
begin
len := numLength(num);
if(len mod 2 = 0) then 
  writeln('Srednja cifra ne postoji')
  else 
  begin
    srednja:=num div stepenDesetke(len) mod 10;
    writeln('Srednja cifra je ', srednja);
    end;
end;

begin
    writeln('Unesite broj: ');
    readln(n);
    findMid(n);
end.