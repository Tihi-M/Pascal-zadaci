program zadatak6;
uses Math;
type matrix = array of array of integer;
var matrica:matrix;
n:integer;

procedure takeInput(var matrica:matrix; n:integer);
var i,j:integer;
begin
  for i:=0 to n-1 do
    for j:= 0 to n-1 do
    ReadLn(matrica[i][j]);
end;

procedure printMatrix(matrica:matrix; n:integer);
var i,j:integer;
begin
for i:= 0 to n-1 do
  begin
  for j:=0 to n-1 do 
    write(matrica[i][j],' ');
    writeln();
    end;
    writeln();
end;

function twoInRow(matrica:matrix;n,ind:integer):boolean;
var sum,i,j:integer;
begin
sum:=0;
i:=ind;
  twoInRow:=false;
  for j:=0 to n-1 do
    sum:= sum + matrica[i][j];
    if(sum>1)then
        twoInRow:=true;
end;

function twoInColl(matrica:matrix;n,ind:integer):boolean;
var sum,i,j:integer;
begin
  sum:=0;
  j:=ind;
  twoInColl:=false;
  for i:=0 to n-1 do
    sum:= sum+matrica[i][j];
    if(sum>1)then
      twoInColl:=true;
end;

function twoInMainDiagonal(matrica:matrix;n:integer):boolean;
var i,d,sum:integer;
begin
twoInMainDiagonal:=false;
for d:=(-1)*(n-1) to n-1 do
  begin
    sum:=0;
    for i:= Max(0,(-1)*d) to Min(n,n-d) do
     sum:=matrica[i][i+d]; 
  end;  
  if(sum>1) then twoInMainDiagonal:=true;
end;


function napadajuSe(var matrica:matrix;n:integer):boolean;
var i,j:Integer;
begin
napadajuSe:=false;
    for i:=0 to n-1 do
    begin
      if(twoInRow(matrica,n,i))then
        begin
        napadajuSe:= true;
        break;
        end;
    if(twoInColl(matrica,n,i))then
      begin
        napadajuSe:=true;
        break;
      end;
      end;
    if(twoInMainDiagonal(matrica,n))then
        napadajuSe:=true;
    //if(twoInSecDiagonal(matrica,n))then
      //napadajuSe:=true;
end;
begin
  readln(n);
  SetLength(matrica,n,n);
  takeInput(matrica,n);
  printMatrix(matrica,n);
  if(napadajuSe(matrica,n)) then writeln('Da')
  else writeln('ne');
end.
