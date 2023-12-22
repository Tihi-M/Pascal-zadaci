program MatricaOsnovneFunkcije;
type 
matrix = array of array of integer;
var
dimenzijaMatrice:integer;
matrica:matrix;
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
    write(matrica[i][j],' ');
    writeln();
  end;  
end;

function glavnaDijagonala(var matrica:matrix; length:integer):integer;
var i :integer;
begin
glavnaDijagonala:=0;
  for i:=0 to length-1 do
    begin
      glavnaDijagonala:=glavnaDijagonala+matrica[i][i];
    end;
end;

function iznadGlavneDijagonale(var matrica:matrix; length:integer):integer;
var i,j:integer;
begin
iznadGlavneDijagonale:=0;
  for i:=0 to length-1 do
    begin
    for j:=0 to length-1 do
      if(j>i) then
        iznadGlavneDijagonale:=iznadGlavneDijagonale+ matrica[i][j];
    end;
end;

function sporednaDijagonala(var matrica:matrix;length:integer):integer;
var i,j:integer;
begin
sporednaDijagonala:=0;
for i:= 0 to length-1 do
  begin
    for j:=0 to length-1 do
      if(j+i = length-1)then
        sporednaDijagonala:=sporednaDijagonala+matrica[i][j];
  end;
end;

procedure zbirMatrica(var matrica1,matrica2:matrix;length:integer);
var i,j:integer;
begin
  for i:= 0 to length-1 do
    begin
    for j:=0 to length - 1 do 
    write(matrica1[i][j] + matrica2[i][j],' ');
    writeln();
    end;
end;

procedure proizvodMatrica(var matrica1,matrica2:matrix;length:integer);
var i,j,z,element:integer;
begin
    for i:= 0 to length-1 do
      begin
      writeln();
      for j:=0 to length - 1 do
        begin
        element:=0;
          for z:=0 to length - 1 do
          element := element+matrica1[i][z]*matrica2[z][j];
          write(element,' ')
          end;
    end;
end;


begin
    writeln('Dimenzija matrice: ');
    readln(dimenzijaMatrice);
    SetLength(matrica,dimenzijaMatrice,dimenzijaMatrice);
    writeln('Unos elemenata: ');
    takeInput(matrica,dimenzijaMatrice);
    printMatrix(matrica, dimenzijaMatrice);
    WriteLn(glavnaDijagonala(matrica,dimenzijaMatrice));
    WriteLn(iznadGlavneDijagonale(matrica,dimenzijaMatrice));
    WriteLn(sporednaDijagonala(matrica,dimenzijaMatrice));
    zbirMatrica(matrica,matrica,dimenzijaMatrice);
    proizvodMatrica(matrica,matrica,dimenzijaMatrice);
end.