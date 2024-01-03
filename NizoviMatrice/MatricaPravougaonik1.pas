program MatricaPravougaonik1;
type matrix = array of array of integer;
var matrica:matrix;
dimenzija:integer;
procedure takeInput(var matrica:matrix;dimenzija:integer);
var i, j :integer;
begin
  for i:= 0 to dimenzija-1 do
    for j:=0 to dimenzija-1 do
      ReadLn(matrica[i][j]);
end;

procedure printMatrix(matrica:matrix;dimenzija:integer);
var i,j:integer;
begin
for i:=0 to dimenzija-1 do
begin
  for j:=0 to dimenzija-1 do
    write(matrica[i][j],' ');
    writeln();
end;
Writeln();
end;

function countSquares(matrica:matrix;dimenzija:integer):integer;
var i, j:integer;
begin
countSquares:=0;
  for i:=0 to dimenzija-1 do
    for j:=0 to dimenzija-1 do
        if(matrica[i][j]=1) and ((i=0) or (matrica[i-1][j]<>1)) and ((j=0)or(matrica[i][j-1]<>1))then
          countSquares:=countSquares+1
end;

begin
  readln(dimenzija);
  SetLength(matrica,dimenzija,dimenzija);
    takeInput(matrica,dimenzija);
    printMatrix(matrica,dimenzija);
    writeln(countSquares(matrica,dimenzija));
end.