program MatricaSimetrija;
type matrix = array of array of integer;
var matrica:matrix;
dimenzijaMatrice:integer;

procedure takeInput(var matrica:matrix;length:integer);
var i,j:integer;
begin
  for i:=0 to length-1 do
    for j:=0 to length-1 do
    readln(matrica[i][j]);
end;
procedure printMatrix(var matrica:matrix;length:integer);
var i,j:integer;
begin
  for i:=0 to length-1 do
  begin
    for j:=0 to length-1 do
    Write(matrica[i][j],' ');
    writeln();
    end;
end;
function isSimetric(var matrica:matrix;length:integer):boolean;
var i, j:integer;
begin
  isSimetric:=true;
    for i:=0 to length-1 do
      begin
        for j:=0 to length-1 do
          if( matrica[i][j] <> matrica[j][i]) then
            begin
            isSimetric:=false;
            break;
        end;
      end;
end;

begin
    writeln('Dimenzija matrice');
    ReadLn(dimenzijaMatrice);
    SetLength(matrica,dimenzijaMatrice,dimenzijaMatrice);
    takeInput(matrica,dimenzijaMatrice);
    printMatrix(matrica,dimenzijaMatrice);
    writeln(isSimetric(matrica,dimenzijaMatrice));
end.