program zad8;
var xx,nn:integer;

function stepen(num,exp:integer):integer;
var i:integer;
begin
stepen:=1;
  for i:=1 to exp do
    stepen:= stepen*num;
    writeln(stepen)
end;

procedure findSum(x,n:integer);
var i:integer;
suma : Double;
begin
  suma:=0;
  for i:=0 to n do 
  suma := suma + 1 / stepen(x,i);
  writeln('s = ', suma:0:4);
end;

begin
  writeln('Unesite x i n: ');
  readln(xx,nn);
  findSum(xx,nn);
end.