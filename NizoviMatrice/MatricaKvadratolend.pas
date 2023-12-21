program MatricaKvadratolend;
type matrix = array of array of integer;
var matrica:matrix;
dimenzijaMatrice:integer;

procedure takeInput(var matrica:matrix;length:integer);
var i,j:integer;
begin
writeLn('Unosenje broja vojnika:');
  for i:=0 to length-1 do
    for j:=0 to length -1 do
      readln(matrica[i][j]);
end;

procedure printMatrix(var matrica:matrix;length:integer);
var i, j :integer;
begin
  for i:=0 to length-1 do
    begin
    for j:=0 to length-1 do
     write(matrica[i][j],' ');
     writeln();
     end;
end;

function brojVojnika(var matrica:matrix;length:integer):integer;
var i,j:integer;
begin
  brojVojnika:=0;
  for i:=0 to length-1 do
    begin
    if(i <> 0) and (i<>length-1) then
        begin
            brojVojnika:= brojVojnika+matrica[i][0] + matrica[i][length-1];
        end
        else    
            for j:=0 to length-1 do
                brojVojnika:=brojVojnika+matrica[i][j];
    end;    
end;


begin
  Writeln('Velicina kravljevstva: ');
  readln(dimenzijaMatrice);
  SetLength(matrica,dimenzijaMatrice,dimenzijaMatrice);
  takeInput(matrica,dimenzijaMatrice);
  printMatrix(matrica,dimenzijaMatrice);
  writeln('Broj vojnika koji cuva kravljevstvo: ', brojVojnika(matrica,dimenzijaMatrice));
end.